#!/bin/bash
KSRC=kernel.s
KOBJ=kernel.o
KOUT=kernel.co
SRC=test03.cpp
TARGET=test
CXXFLAGS=`/opt/rocm/bin/hipconfig --cpp_config`" -Wall   -pedantic -g -O2 -std=c++11  -I include/"
LDFLAGS=" -L/opt/rocm/hcc/lib -L/opt/rocm/lib -L/opt/rocm/lib64"\
" -Wl,--rpath=/opt/rocm/hcc/lib -ldl -lm -lpthread -lhc_am "\
" -Wl,--whole-archive -lmcwamp -lhip_hcc -lhsa-runtime64 -lhsakmt -Wl,--no-whole-archive"

#rm -rf $KOBJ $KOUT
#llvm-mc -arch=amdgcn -mcpu=gfx908 $KSRC -filetype=obj -o $KOBJ || exit 1
#ld.lld -shared $KOBJ -o $KOUT || exit 1


#rm -rf $TARGET
#g++ $CXXFLAGS $SRC $LDFLAGS -o $TARGET

#/usr/bin/g++ -Wall -pedantic -g -O2 -I include/ -o test test03.cpp

/opt/rocm/hcc/bin/clang -x assembler -target amdgcn--amdhsa -mcpu=gfx908 -mcode-object-v3  0525.s  -o xx.co
g++ $CXXFLAGS $SRC $LDFLAGS -o $TARGET
