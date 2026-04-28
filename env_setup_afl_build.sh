#!/usr/bin/env bash
# AFL++ 경로 설정 fuzzing build (linux)
export AFL_PATH=${AFL_PATH:-/home/$USER/automotive-r155/test_coverage/cov_impl}
export PATH=$AFL_PATH:$PATH

# LLVM 및 컴파일러 설정
export LLVM_CONFIG=/home/$USER/llvm-project/build/bin/llvm-config
export CC=$AFL_PATH/afl-clang-fast
export CXX=$AFL_PATH/afl-clang-fast++

echo "✅ AFL++ 및 LLVM 환경 설정 완료!"
echo "AFL_PATH: $AFL_PATH"
echo "Compiler: $CC"
echo "[AFL] readdy"
