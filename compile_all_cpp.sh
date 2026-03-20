#!/bin/bash
# compile_cpp.sh

# 1. 환경 설정 (xPack 경로 지정)
XPACK_BIN="$HOME/xpack-riscv-none-elf-gcc-13.2.0-2/bin"
RISCV_GPP="$XPACK_BIN/riscv-none-elf-g++"
RISCV_GCC="$XPACK_BIN/riscv-none-elf-gcc"

# 2. 대상 소스 파일들
SOURCES=("call_by_reference.c" "study_class.cpp")

echo "==========================================="
echo " Starting Multi-Architecture Compilation"
echo "==========================================="

for SRC in "${SOURCES[@]}"; do
    # 확장자에 따라 컴파일러 선택 (C++는 g++, C는 gcc)
    if [[ $SRC == *.cpp ]]; then
        CC_X86="g++"
        CC_RV="$RISCV_GPP"
    else
        CC_X86="gcc"
        CC_RV="$RISCV_GCC"
    fi

    # 파일명만 추출 (확장자 제거)
    BASE="${SRC%.*}"

    declare -a TARGETS=(
        "x86_64:O0:${BASE}_x86_64_O0.out"
        "x86_64:O3:${BASE}_x86_64_O3.out"
        "rv32:O0:${BASE}_rv32_O0.out"
        "rv32:O3:${BASE}_rv32_O3.out"
    )

    for target in "${TARGETS[@]}"; do
        ARCH=$(echo $target | cut -d: -f1)
        OPT=$(echo $target  | cut -d: -f2)
        OUT=$(echo $target  | cut -d: -f3)

        if [ "$ARCH" == "x86_64" ]; then
            CMD="$CC_X86 -$OPT -o $OUT $SRC -Wall"
        elif [ "$ARCH" == "rv32" ]; then
            # xPack 사용 시 nosys.specs 적용
            CMD="$CC_RV -march=rv32imac -mabi=ilp32 --specs=nosys.specs -$OPT -o $OUT $SRC -Wall"
        fi

        echo "[*] Compiling $SRC -> $OUT"
        # 경고 메시지가 너무 많으므로 링크 경고는 숨기고 에러만 확인
        $CMD 2>&1 | grep -v "warning:" | grep -v "^$" 

        if [ $? -eq 0 ] || [ -f "$OUT" ]; then
            echo "    => OK"
            # 어셈블리 파일도 함께 생성 (-S)
            ASM_OUT="${OUT%.out}.s"
            if [ "$ARCH" == "x86_64" ]; then
                $CC_X86 -$OPT -S -o $ASM_OUT $SRC
            else
                $CC_RV -march=rv32imac -mabi=ilp32 --specs=nosys.specs -$OPT -S -o $ASM_OUT $SRC
            fi
        else
            echo "    => FAILED"
        fi
    done
done

echo ""
echo "==========================================="
echo " Final Results (Bins & Assembly):"
ls -lh *.out *.s 2>/dev/null
echo "==========================================="