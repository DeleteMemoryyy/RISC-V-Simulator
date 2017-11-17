#/bin/bash

for i in $(seq 1 10)
do
    riscv64-unknown-elf-gcc $i.cpp -o ../../$i -Wa,-march=rv64g
done