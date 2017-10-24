#ifndef SIMULATION_H_
#define SIMULATION_H_

#include "Read_Elf.h"
#include "Reg_Def.h"
#include <io.h>
#include <iostream>
#include <math.h>
#include <process.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MEM_SIZE 1 << 28
#define MEM_ST 1 << 21
#define MEM_ED 0xfe00000

#define V_TO_P(add) ((add) + MEM_ST - cvadr)
#define P_TO_V(add) ((add) + cvadr - MEM_ST)
#define V_TO_I(add) (V_TO_P(add) >> 3)
#define P_TO_I(add) ((add) >> 3)
#define GET_BITS(i,s,e) ((((unsigned int)i) << (31 - (s))) >> (31 - (s) + (e)))
#define GET_BIT(i,b) ((i) & (1<<(b)))
#define EXT_SIGNED_WORD(src,bit) ((((int)(src)) << (31 - (bit))) >> (31 - (bit)))
#define EXT_SIGNED_DWORD(src,bit) ((((long long int)(src)) << (63 - (bit))) >> (63 - (bit)))
#define READ_BYTE(idx) (*((unsigned char *)((ULL)memory + (idx))))
#define READ_HWORD(idx) (*((unsigned short *)((ULL)memory + (idx))))
#define READ_WORD(idx) (*((unsigned int *)((ULL)memory + (idx))))
#define READ_DWORD(idx) (*((ULL *)((ULL)memory + (idx))))

char R_NAME[32][5] = {"zero", "ra", "sp", "gp", "tp",  "t0",  "t1",  "t2", "s0", "s1", "a0",
"a1",   "a2", "a3", "a4", "a5",  "a6",  "a7,", "s2", "s3", "s4", "s5",
"s6",   "s7", "s8", "s9", "s10", "s11", "t3",  "t4", "t5", "t6"};

//主存
unsigned char memory[MEM_SIZE] = {0};
//寄存器堆
REG reg[32] = {0};
// PC
ULL PC = 0;


//各个指令解析段
unsigned int opcode = 0;
unsigned int funct3 = 0, funct7 = 0;
unsigned int shamt = 0;
unsigned int rs1 = 0, rs2 = 0, rd = 0;
unsigned int imm0_11 = 0;
unsigned int imm12_31 = 0;
unsigned int imm6_11 = 0;
unsigned int imm5_11 = 0;
unsigned int imm0_5 = 0;
unsigned int imm0_4 = 0;


//加载内存
void load_memory();

void simulate();

void ERROR();

void IF();

void ID();

void EX();

void MEM();

void WB();


// //获取指定位
// inline unsigned int getbit(unsigned int inst, int s, int e)
// {
//     return ((inst << (32 - s)) >> (32 - s + e));
// }

// //符号扩展
// inline int ext_signed(unsigned int src, int bit)
// {
//     return ((((int)src) << (32 - bit)) >> (32 - bit));
// }

// inline unsigned char get_byte(ULL idx)
// {
//     return memory[idx];
// }

// inline unsigned short get_hword(ULL idx)
// {
//     return *((unsigned short *)((ULL)memory + idx));
// }

// inline unsigned int get_word(ULL idx)
// {
//     return *((unsigned int *)((ULL)memory + idx));
// }

// inline ULL get_dworld(ULL idx)
// {
//     return *((ULL *)((ULL)memory + idx));
// }

#endif