#!/bin/bash
# 매개변수가 2개 모두 없는 경우
if [ $# -ne 2 ]; then
    echo "Invalid Input"
# 매개 변수가 음수이거나 0인 경우
elif [ $1 -lt 1 ] || [ $2 -lt 1 ]; then
    echo "Input must be greater than 0"
# 매개변수가 2개 있고 양수인 경우
else
    for i in $(seq 1 $1); do
        for j in $(seq 1 $2); do
            printf "%d*%d=%-3d " $i $j $((i * j))
        done
        echo ""
    done
fi