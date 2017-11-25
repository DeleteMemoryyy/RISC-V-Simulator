#include "Storage.h"

Memory::Memory(int _hit_latency, int _bus_latency)
{
    hit_latency = _hit_latency;
    bus_latency = _bus_latency;
    size = CACHED_MEM_SIZE;
    data = new char[CACHED_MEM_SIZE];
    access_count = 0;
    access_time = 0;
}

Memory::~Memory()
{
    if (data != NULL)
        delete[] data;
}

void Memory::Print()
{
    printf("Memory status:\n");
    printf("    e_size: %d\t size: 0x%x\n", (int)log2(size), size);
    printf("    hit_latency: %d\t bus_latency: %d\n", hit_latency, bus_latency);
    printf("    access_count: %d\n", access_count);
    printf("    access_time %d\n", access_time);
    printf("\n");
}

void Memory::Clear()
{
    if (data != NULL)
        memset(data, 0, size);
    access_count = 0;
    access_time = 0;
}

void Memory::Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time)
{
    int t_time = bus_latency + hit_latency;
    // assert((addr >= 0) && (addr < CACHED_MEM_SIZE) && (addr + bytes >= 0) &&
    //        (addr + bytes < CACHED_MEM_SIZE));
    switch (op)
        {
            case STORAGEOP_READ:
                {
                    // memcpy(content, data + addr, bytes);
                }
                break;
            case STORAGEOP_WRITE:
                {
                    // memcpy(data + addr, content, bytes);
                }
                break;
        }
    access_count += 1;
    access_time += t_time;

    time += t_time;
}

Cache::Cache(int _e_set_num, int _associativity, int _e_block_size,
             HIT_WRITTING_POLICY _hit_writting_policy, MISS_WRITTING_POLICH _miss_writting_policy,
             int _hit_latency, int _bus_latency)
    : associativity(_associativity), e_set_num(_e_set_num), e_block_size(_e_block_size),
      hit_writting_policy(_hit_writting_policy), miss_writting_policy(_miss_writting_policy)
{
    hit_latency = _hit_latency;
    bus_latency = _bus_latency;
    set_num = pow(2, e_set_num);
    block_size = pow(2, e_block_size);
    int lines = set_num * associativity;
    size = lines * block_size;
    valid = new bool[lines];
    dirty = new bool[lines];
    tag = new int[lines];
    lastUsedTime = new int[lines];
    data = new char[size];
    timeStamp = 0;
    next_level = NULL;
    hit_count = 0;
    miss_count = 0;
    replace_count = 0;
    access_count = 0;
    access_time = 0;
}

Cache::~Cache()
{
    // if (next_level != NULL)
    //     delete next_level;
    if (valid != NULL)
        delete[] valid;
    if (dirty != NULL)
        delete[] dirty;
    if (tag != NULL)
        delete[] tag;
    if (lastUsedTime != NULL)
        delete[] lastUsedTime;
    if (data != NULL)
        delete[] data;
}

void Cache::Clear()
{
    if (next_level != NULL)
        next_level->Clear();
    int lines = set_num * associativity;
    if (valid != NULL)
        memset(valid, 0, sizeof(bool) * lines);
    if (dirty != NULL)
        memset(dirty, 0, sizeof(bool) * lines);
    if (tag != NULL)
        memset(tag, 0, sizeof(int) * lines);
    if (lastUsedTime != NULL)
        memset(lastUsedTime, 0, sizeof(int) * lines);
    if (data != NULL)
        memset(data, 0, lines * block_size);
    timeStamp = 0;
    hit_count = 0;
    miss_count = 0;
    replace_count = 0;
    access_count = 0;
    access_time = 0;
}

void Cache::Print()
{
    printf("Cache status:\n");
    printf("    e_set_num: %d\t associativity: %d\t e_block_size: %d\n", e_set_num, associativity,
           e_block_size);
    printf("    hit_latency: %d\t bus_latency: %d\n", hit_latency, bus_latency);
    printf("    hit_writting_policy: %s\t miss_writting_policy: %s\n",
           HWP_NAME[hit_writting_policy], MWP_NAME[miss_writting_policy]);
    printf("    access_count: %d\t hit_count: %d\t miss_count: %d\t replace_count: %d\n",
           access_count, hit_count, miss_count, replace_count);
    printf("    miss_rate: %.3f\n", GetMissRate());
    printf("    access_time %d\n", access_time);
}

void Cache::Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time)
{
    timeStamp += 1;
    // int offset = GET_BITS(addr, 0, e_block_size - 1);
    // if (offset + bytes > block_size)
    //     {
    //         printf("align error!\t offset: %d\t bytes: %d\t block_size: %d\n", offset, bytes,
    //                block_size);
    //     }
    // assert(offset + bytes <= block_size);
    int set_idx = GET_BITS(addr, e_block_size, e_block_size + e_set_num - 1);
    int request_tag = GET_BITS(addr, e_block_size + e_set_num, 31);
    int hit_line = -1;
    int t_time = bus_latency;
    for (int i = set_idx * associativity; i < (set_idx + 1) * associativity; ++i)
        if (valid[i] && request_tag == tag[i])
            {
                hit_line = i;
                break;
            }
    if (hit_line != -1)  // hit
        {
            switch (op)
                {
                    case STORAGEOP_READ:
                        {
                            // memcpy(content, data + hit_line * block_size + offset, bytes);
                        }
                        break;
                    case STORAGEOP_WRITE:
                        {
                            // memcpy(data + hit_line * block_size + offset, content, bytes);
                            dirty[hit_line] = true;
                            if (next_level != NULL && hit_writting_policy == WRITE_THROUGH)
                                next_level->Handler(addr, bytes, data + hit_line * block_size,
                                                    STORAGEOP_WRITE, t_time);
                        }
                        break;
                }
            hit_count += 1;
            t_time += hit_latency;
            lastUsedTime[hit_line] = timeStamp;
        }
    else
        {
            if (op == STORAGEOP_WRITE && miss_writting_policy == NO_WRITE_ALLOCATE)
                {
                    next_level->Handler(addr, bytes, content, STORAGEOP_WRITE, t_time);
                }
            else
                {
                    for (int i = set_idx * associativity; i < (set_idx + 1) * associativity; ++i)
                        if (!valid[i])
                            {
                                hit_line = i;
                                break;
                            }
                    if (hit_line == -1)  // no invalid line
                        {
                            hit_line = set_idx * associativity;
                            int earliestTime = (1 << 30);
                            for (int i = set_idx * associativity; i < (set_idx + 1) * associativity;
                                 ++i)
                                if (lastUsedTime[i] < earliestTime)
                                    {
                                        earliestTime = lastUsedTime[i];
                                        hit_line = i;
                                    }
                            assert(hit_line != -1);
                            if (hit_writting_policy == WRITE_BACK && dirty[hit_line])  // write back
                                {
                                    next_level->Handler(
                                        ((tag[hit_line] << (e_block_size + e_set_num)) |
                                         (set_idx << e_block_size)),
                                        block_size, data + hit_line * block_size, STORAGEOP_WRITE,
                                        t_time);
                                }
                            replace_count += 1;
                        }
                    valid[hit_line] = true;
                    dirty[hit_line] = false;
                    tag[hit_line] = request_tag;
                    next_level->Handler(addr, block_size, data + hit_line * block_size,
                                        STORAGEOP_READ, t_time);
                    switch (op)
                        {
                            case STORAGEOP_READ:
                                {
                                    // memcpy(content, data + hit_line * block_size offset, bytes);
                                }
                                break;
                            case STORAGEOP_WRITE:
                                {
                                    // memcpy(data + hit_line * block_size, content + offset, bytes);
                                    dirty[hit_line] = true;
                                    if (next_level != NULL && hit_writting_policy == WRITE_THROUGH)
                                        next_level->Handler(addr, bytes,
                                                            data + hit_line * block_size,
                                                            STORAGEOP_WRITE, t_time);
                                }
                                break;
                        }
                    t_time += bus_latency + hit_latency;
                    lastUsedTime[hit_line] = timeStamp;
                }
            miss_count += 1;
        }
    access_count += 1;
    access_time += t_time;

    time += t_time;
}
