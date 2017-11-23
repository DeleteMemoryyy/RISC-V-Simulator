#ifndef STORAGE_H_
#define STORAGE_H_

#include "Def.h"
#include <stido.h>

#define MEM_SIZE 1 << 24
#define MEM_ST 1 << 17
#define MEM_ED 0xfe0000

#define V_TO_P(add) ((add) + (MEM_ST) - (cVadr))
#define P_TO_V(add) ((add) + (cVadr) - (MEM_ST))


typedef unsigned int TYPEADDR;
typedef enum { WRITE_THROUGH, WRITE_BACK } HIT_WRITTING_POLICY;
typedef enum { WRITE_ALLOCATE, NO_WRITE_ALLOCATE } MISS_WRITTING_POLICH;
typedef enum { STORAGEOP_READ, STORAGEOP_WRITE } STORAGE_OP;

class Storage
{
  public:
    virtual void Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time) = 0;

  private:
    char *data;

    // settings
    int size;
    int hit_latency;
    int bus_latency;

    // statistics
    int access_count;
    int access_time;
};

class Memory : public Storage
{
  public:
    void Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time);
};

class Cache : public Storage
{
  public:
    void Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time);

  private:
    bool *valid;
    bool *dirty;
    int *tag;
    int *lastUsedTime;
    int timeStamp;
    Storage *next_level;

    // settings
    int set_num;
    int associativity;
    int block_size;
    int e_set_num;
    int e_block_size;
    HIT_WRITTING_POLICY hit_writting_policy;
    MISS_WRITTING_POLICH miss_writting_policy;

    // statistics
    int hit_count;
    int miss_count;
};


#endif