// test - Test application for half-precision floating point functionality.
//
// Copyright (c) 2012-2013 Christian Rau <rauy@users.sourceforge.net>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation 
// files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, 
// modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
// WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR 
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#include <iostream>
#include "half.hpp"
#include <stdio.h>
#include <hip/hip_runtime.h>

using half_float::half;
using half_float::half_cast;

constexpr unsigned x = 16;
#define HIP_ASSERT(x) (assert((x)==hipSuccess))

static inline size_t conv_out_size(size_t in_size, size_t pad, size_t dilation, size_t ksize, size_t stride)
{
     return 17;//(in_size + 2*pad- dilation*(ksize-1) -1)/stride + 1;
}

static inline void cpu_conv_fwd_nchw(const half *src, const half *filter, half *dst,
    size_t n, size_t w, size_t h, size_t c, size_t k, size_t fx, size_t fy, size_t px, size_t py, size_t sx, size_t sy, size_t dx, size_t dy)
{
    size_t in,ik,ioh,iow,ic,is,ir;
    size_t cur_h, cur_w, o_idx, i_idx, f_idx;
    size_t oh = conv_out_size(h, py, dy, fy, sy);
    size_t ow = conv_out_size(w, px, dx, fx, sx);
    for(in=0;in<n;in++){
        for(ik=0;ik<k;ik++){
            for(ioh=0;ioh<oh;ioh++){
                for(iow=0;iow<ow;iow++){
                    // sliding window for this filter
                    float value =0.0f;
                    o_idx = in*k*oh*ow+ik*oh*ow+ioh*ow+iow;
                    if (o_idx>1000) continue;
                    
                    for(ic=0;ic<c;ic++){
                        for(ir=0;ir<fy;ir++){
                            cur_h = sy*ioh-py+dy*ir;
                            if(cur_h<0 || cur_h>=h) continue;
                            for(is=0;is<fx;is++){
                                cur_w = sx*iow-px+dx*is;
                                if(cur_w<0 || cur_w>=w) continue;
                                i_idx = in*c*h*w+ic*h*w+cur_h*w+cur_w;
                                f_idx = ik*c*fy*fx+ic*fy*fx+ir*fx+is;
                                value += half_cast<float>(src[i_idx])*half_cast<float>(filter[f_idx]);
                            }
                        }
                    }
                    dst[o_idx] = half_cast<half>(value);
                }
            }
        }
    }
}

#define HSACO "xx.co"
#define HSA_KERNEL "gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw"//"gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw"
int main(int argc, char *argv[])
{
	//half a(3.14159), b(-7), c = sin(a+b);
    unsigned int N = 256;
    unsigned int K = 2048;
    unsigned int C = 288;
    unsigned int H = 35;
    unsigned int W = 35;
    unsigned int R = 3;
    unsigned int S = 3;
    unsigned int Oh = conv_out_size(size_t(H), size_t(0), size_t(0), size_t(R), size_t(2));
    unsigned int Ow = conv_out_size(size_t(W), size_t(0), size_t(0), size_t(S), size_t(2));


    unsigned int inSize = N * C* H* W* sizeof(half);
    unsigned int weiSize = K * C* R* S* sizeof(half);
    unsigned int outSize = N * K* Oh* Ow* sizeof(half);
    half *in = (half *)malloc(inSize);
    half *wei = (half *)malloc(weiSize);
    half *out = (half *)malloc(outSize);
    half *cpu_out = (half *)malloc(outSize);

    HIP_ASSERT(hipSetDevice(0));
    hipInit(0);


    half *dev_in, *dev_wei, *dev_out;
    HIP_ASSERT(hipMalloc(&dev_in, inSize));
    HIP_ASSERT(hipMalloc(&dev_wei, weiSize));
    HIP_ASSERT(hipMalloc(&dev_out, outSize));

    for (int i =0;i< N * C* H* W;i++)
    {
        half tmp(1.0);
        half tmp2(0.0);
        //half min is 0.00006,so use 0.0001*constant,due to C*R*S=2880,if diff <0.001,it's ok
        in[i] =  half_cast<half>(0.0001f*(i%10));
    }

    for (int i =0;i< K * C* R* S;i++)
    {
        half tmp(1.0);
        wei[i] = half_cast<half>(1.0f);
    }

    for (int i =0;i< N * K* Oh* Ow;i++)
    {
        out[i] = half_cast<half>(0.0f);
        cpu_out[i] =  half_cast<half>(0.0f);
    }

    cpu_conv_fwd_nchw(in, wei,cpu_out, N, W, H, C, K, R, S , 0 ,0 , 2, 2, 1, 1);
    HIP_ASSERT(hipMemcpy(dev_in, in, inSize, hipMemcpyHostToDevice));
    HIP_ASSERT(hipMemcpy(dev_wei, wei, weiSize, hipMemcpyHostToDevice));
    HIP_ASSERT(hipMemcpy(dev_out, out, outSize, hipMemcpyHostToDevice));



    hipDevice_t device;
    hipCtx_t context;
    hipDeviceGet(&device, 0);
    hipCtxCreate(&context, 0, device);
    hipModule_t Module;
    hipFunction_t Function;


    HIP_ASSERT(hipModuleLoad(&Module, HSACO));

    HIP_ASSERT(hipModuleGetFunction(&Function, Module, HSA_KERNEL));

    unsigned int * host_int_test = (unsigned int *)malloc(256*4);
    for (int i =0;i<256;i++)
    {
         host_int_test[0]=0;
    }
    unsigned int * kevin_int_test;

    HIP_ASSERT(hipMalloc(&kevin_int_test, 256*4));

    struct {
        half * p_in_global;
        half * p_wei_global;
        half * p_out_global;
        unsigned int  * kevin_int_test;
    } args;

    args.p_in_global = dev_in;
    args.p_wei_global = dev_wei;
    args.p_out_global = dev_out;
    args.kevin_int_test = kevin_int_test;

    size_t arg_size = sizeof(args);
    void* config[] = {HIP_LAUNCH_PARAM_BUFFER_POINTER, &args, HIP_LAUNCH_PARAM_BUFFER_SIZE,
                            &arg_size, HIP_LAUNCH_PARAM_END};

    printf("======gpu start=======\n");
    //(2048/256)*(256*17*17/128)=4624

    float eventMs = 0.0f;
    hipEvent_t start, stop;
    hipEventCreate(&start);
    hipEventCreate(&stop);
    hipEventRecord(start, NULL);

    HIP_ASSERT(hipModuleLaunchKernel(Function, 4624,1,1, 256,1,1,  0, 0, NULL, (void**)&config ));


    hipEventRecord(stop, NULL);
    hipEventSynchronize(stop);
    hipEventElapsedTime(&eventMs, start, stop);
    printf("hip kernel profiler computation time taken  = %6.3fms\n", eventMs);



    HIP_ASSERT(hipMemcpy(out, dev_out, outSize, hipMemcpyDeviceToHost));

    for (int i = 0;i< N * K* Oh* Ow;i++ )
    {
        if ( i<1000)
        {
            printf("======verify %d gpu %f  cpu %f=======\n",i,half_cast<float>(out[i]), half_cast<float>(cpu_out[i]));
        }

        if (half_cast<float>(out[i])-half_cast<float>(cpu_out[i]) >=0.01f)
        {
            //printf("==========error index i %d gpu %f  cpu %f==========\n",i,half_cast<float>(out[i]), half_cast<float>(cpu_out[i]));
            break;
        }
        

    }



    HIP_ASSERT(hipMemcpy(host_int_test, kevin_int_test, 256*4, hipMemcpyDeviceToHost));
    printf("======after test %u %u=====\n",host_int_test[0],host_int_test[1]);


    HIP_ASSERT(hipFree(dev_in));
    HIP_ASSERT(hipFree(dev_wei));
    HIP_ASSERT(hipFree(dev_out));
    HIP_ASSERT(hipFree(kevin_int_test));
    return 0;
}
