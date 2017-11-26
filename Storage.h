#ifndef STORAGE_H_
#define STORAGE_H_

#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

#define MEM_SIZE (1 << 24)
#define MEM_ST (1 << 17)
#define MEM_ED (MEM_SIZE - MEM_ST)
#define CACHED_MEM_SIZE (1 << 30)

#define GET_BITS(i, s, e) ((((unsigned int)i) << (31 - (e))) >> (31 - (e) + (s)))
#define GET_BIT(i, b) (((i) & (1 << (b))) >> (b))

typedef unsigned int TYPEADDR;
typedef enum { WRITE_THROUGH, WRITE_BACK } HIT_WRITING_POLICY;
typedef enum { WRITE_ALLOCATE, NO_WRITE_ALLOCATE } MISS_WRITING_POLICH;
typedef enum { STORAGEOP_READ, STORAGEOP_WRITE } STORAGE_OP;

const char HWP_NAME[2][50] = {"WRITE THROUGH", "WRITE BACK"};
const char MWP_NAME[2][50] = {"WRITE ALLOCATE", "NO WRITE ALLOCATE"};

class Storage
{
  protected:
    char *data;

    // settings
    int size;
    int hit_latency;
    int bus_latency;

  public:
    // statistics
    int access_count;
    int access_time;

    Storage(){};
    virtual ~Storage(){};
    virtual void Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time) = 0;
    virtual Storage *GetNextLevel()
    {
        return NULL;
    }
    virtual void Clear() = 0;
};

class Memory : public Storage
{
  public:
    Memory(int _hit_latency, int _bus_latency);
    ~Memory();
    Storage *GetNextLevel() const
    {
        return NULL;
    }
    void Clear();
    void Print();
    void Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time);
};

class Cache : public Storage
{
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
    HIT_WRITING_POLICY hit_writing_policy;
    MISS_WRITING_POLICH miss_writing_policy;

  public:
    // statistics
    int hit_count;
    int miss_count;
    int replace_count;

    Cache(int _e_set_num, int _associativity, int _e_block_size,
          HIT_WRITING_POLICY _hit_writing_policy, MISS_WRITING_POLICH _miss_writing_policy,
          int _hit_latency, int _bus_latency);
    ~Cache();
    void SetNextLevel(Storage *_next_level)
    {
        next_level = _next_level;
    }
    Storage *GetNextLevel() const
    {
        return next_level;
    }
    void Clear();
    void Print();
    float GetMissRate()
    {
        return (float)miss_count / (float)access_count;
    }
    void Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time);
};

#endif