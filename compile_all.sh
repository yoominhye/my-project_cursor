#!/bin/bash
# compile_all.sh

SOURCE="example.c"

# 컴파일 옵션 조합 정의
# [아키텍처] [최적화] [출력파일명]
declare -a TARGETS=(
    # x86-64
    "x86_64:O0:example_x86_64_O0.out"
    "x86_64:O1:example_x86_64_O1.out"
    "x86_64:O2:example_x86_64_O2.out"
    "x86_64:O3:example_x86_64_O3.out"

    # RISC-V 32bit
    "rv32:O0:example_rv32_O0.out"
    "rv32:O1:example_rv32_O1.out"
    "rv32:O2:example_rv32_O2.out"
    "rv32:O3:example_rv32_O3.out"
)

echo "=============================="
echo " Compiling: $SOURCE"
echo "=============================="

for target in "${TARGETS[@]}"; do
    ARCH=$(echo $target | cut -d: -f1)
    OPT=$(echo $target  | cut -d: -f2)
    OUT=$(echo $target  | cut -d: -f3)

    if [ "$ARCH" == "x86_64" ]; then
        CMD="gcc -$OPT -o $OUT $SOURCE -Wall -S"
    elif [ "$ARCH" == "rv32" ]; then
        CMD="riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -specs=picolibc.specs -$OPT -o $OUT $SOURCE -Wall -S"
    fi

    echo ""
    echo "[*] $OUT"
    echo "    CMD: $CMD"
    $CMD 2>&1 | grep -v "^$"  # 빈 줄 제거하고 출력

    if [ $? -eq 0 ] || [ -f "$OUT" ]; then
        echo "    => OK"
    else
        echo "    => FAILED"
    fi
done

echo ""
echo "=============================="
echo " Results:"
ls -lh *.out 2>/dev/null
echo "=============================="