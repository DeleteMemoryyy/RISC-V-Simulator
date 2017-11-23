#ifdef DEF_H_
#define DEF_H_

typedef unsigned long long REG;

typedef unsigned char STAGEMODE;

typedef unsigned long long ULL;

#define GET_BITS(i, s, e) ((((unsigned int)i) << (31 - (e))) >> (31 - (e) + (s)))
#define GET_BIT(i, b) (((i) & (1 << (b))) >> (b))

#endif