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


constexpr unsigned x = 16;
#define HIP_ASSERT(x) (assert((x)==hipSuccess))

static inline size_t conv_out_size(size_t in_size, size_t pad, size_t dilation, size_t ksize, size_t stride)
{
     return (in_size + 2*pad- dilation*(ksize-1) -1)/stride + 1;
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
                    half value(0.0);
                    o_idx = in*k*oh*ow+ik*oh*ow+ioh*ow+iow;
                    for(ic=0;ic<c;ic++){
                        for(ir=0;ir<fy;ir++){
                            cur_h = sy*ioh-py+dy*ir;
                            if(cur_h<0 || cur_h>=h) continue;
                            for(is=0;is<fx;is++){
                                cur_w = sx*iow-px+dx*is;
                                if(cur_w<0 || cur_w>=w) continue;
                                i_idx = in*c*h*w+ic*h*w+cur_h*w+cur_w;
                                f_idx = ik*c*fy*fx+ic*fy*fx+ir*fx+is;
                                value += src[i_idx]*filter[f_idx];
                            }
                        }
                    }
                    dst[o_idx] = value;
                }
            }
        }
    }
}

#define HSACO "xx.co"
#define HSA_KERNEL "gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw"
int main(int argc, char *argv[])
{
	//half a(3.14159), b(-7), c = sin(a+b);
    unsigned int N = 4;
    unsigned int K = 64;
    unsigned int C = 64;
    unsigned int H = 14;
    unsigned int W = 14;
    unsigned int R = 1;
    unsigned int S = 1;
    unsigned int Oh = conv_out_size(size_t(H), size_t(0), size_t(0), size_t(R), size_t(1));
    unsigned int Ow = conv_out_size(size_t(W), size_t(0), size_t(0), size_t(S), size_t(1));


    unsigned int inSize = N * C* H* W* sizeof(half);
    unsigned int weiSize = K * C* R* S* sizeof(half);
    unsigned int outSize = N * K* Oh* Ow* sizeof(half);
    half *in = (half *)malloc(inSize);
    half *wei = (half *)malloc(weiSize);
    half *out = (half *)malloc(outSize);

    half *dev_in, *dev_wei, *dev_out;
    HIP_ASSERT(hipMalloc(&dev_in, inSize));
    HIP_ASSERT(hipMalloc(&dev_wei, weiSize));
    HIP_ASSERT(hipMalloc(&dev_out, outSize));


    for (int i =0;i< N * C* H* W;i++)
    {
        in[i]= i ;
    }

    for (int i =0;i< K * C* R* S;i++)
    {
        wei[i]= i ;
    }

    for (int i =0;i< N * K* Oh* Ow;i++)
    {
        out[i]= 0 ;
    }

    HIP_ASSERT(hipMemcpy(dev_in, in, inSize, hipMemcpyHostToDevice));
    HIP_ASSERT(hipMemcpy(dev_wei, wei, weiSize, hipMemcpyHostToDevice));
    HIP_ASSERT(hipMemcpy(dev_out, out, outSize, hipMemcpyHostToDevice));

    cpu_conv_fwd_nchw(in, wei,out, N, H, W, C, K, S, R , 0 ,0 , 1, 1, 1, 1);


    HIP_ASSERT(hipSetDevice(0));
    hipInit(0);
    hipDevice_t device;
    hipCtx_t context;
    hipDeviceGet(&device, 0);
    hipCtxCreate(&context, 0, device);
    hipModule_t Module;
    hipFunction_t Function;


    HIP_ASSERT(hipModuleLoad(&Module, HSACO));
/*
    HIP_ASSERT(hipModuleGetFunction(&Function, Module, HSA_KERNEL));



    struct {
        half * in;
        half * wei;
        half *out;
    } args;

    args.in = dev_in;
    args.wei = dev_wei;
    args.out = out;

    size_t arg_size = sizeof(args);
    void* config[] = {HIP_LAUNCH_PARAM_BUFFER_POINTER, &args, HIP_LAUNCH_PARAM_BUFFER_SIZE,
                            &arg_size, HIP_LAUNCH_PARAM_END};


    HIP_ASSERT(hipModuleLaunchKernel(Function, 1,1,1, 64,1,1,  0, 0, NULL, (void**)&config ));
*/

    return 0;
}
