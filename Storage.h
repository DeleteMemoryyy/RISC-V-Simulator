#ifndef STORAGE_H_
#define STORAGE_H_

#include <stido.h>

#define MEM_SIZE 1 << 24
#define MEM_ST 1 << 17
#define MEM_ED 0xfe0000

#define V_TO_P(add) ((add) + (MEM_ST) - (cVadr))
#define P_TO_V(add) ((add) + (cVadr) - (MEM_ST))


typedef unsigned long long TYPEADDR;
typedef enum { WRITE_THROUGH, WRITE_BACK } HIT_WRITTING_POLICY;
typedef enum { WRITE_ALLOCATE, NO_WRITE_ALLOCATE } MISS_WRITTING_POLICH;
typedef enum { STORAGEOP_READ, STORAGEOP_WRITE } STORAGE_OP;




class Line
{
    int tag;
    char *data;
    Line(int block_size)
    {
        data = new char[block_size];
    }
    ~Line()
    {
        if (data != NULL)
            delete[] data;
    }
};
class Set
{
    Line *lines;
    int line_num;
    Set(int _line_num, int block_size) : _line_num(line_num)
    {
        lines = new (Line(block_size))[line_num];
    }
    ~Set()
    {
        if (lines != NULL)
            delete[] lines;
    }
};

class Storage
{
  public:
    virtual void Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, bool &hit,
                         int &time) = 0;

  private:
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
    void Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &hit, int &time);

  private:
    char *data;
};

class Cache : public Storage
{
  public:
    void Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &hit, int &time);

  private:
    Set *sets;
    Storage *next_level;

    // settings
    int set_num;
    int associativity;
    HIT_WRITTING_POLICY hit_writting_policy;
    MISS_WRITTING_POLICH miss_writting_policy;

    // statistics
    int hit_count;
    int miss_count;
};


#endif