#include "Storage.h"

#if defined(CACHE_L1)

#elif defined(CACHE_L2)

#else

#endif

void Memory::Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time)
{
    int t_time = bus_latency + hit_latency;
    ASSERT((addr >= MEM_ST) && (addr < MEM_ED) && (addr + bytes >= MEM_ST) &&
           (addr + bytes < MEM_ED));
    switch (op)
        {
            case STORAGEOP_READ:
                {
                    memcpy(content, data + addr, bytes);
                }
                break;
            case STORAGEOP_WRITE:
                {
                    memcpy(data + addr, content, bytes);
                }
                break;
        }
    access_count += 1;
    hit_count += 1;
    access_time += t_time;

    time += t_time;
}

void Cache::Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time)
{
    int offset = GET_BITS(addr, 0, e_block_size - 1);
    ASSERT(offset + bytes <= block_size);
    int set_idx = GET_BITS(addr, e_block_size, e_block_size + e_set_num - 1);
    int request_tag = GET_BITS(addr, e_block_size + e_set_num, 31);
    int hit_line = -1;
    int t_time = bus_latency;
    for (int i = set_idx * associativity; i < (set_idx + 1) * associativity; ++i)
        if (valid[i] && request_tag == tat[i])
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
                            memcpy(content, data[hit_line * block_size], bytes);
                        }
                        break;
                    case STORAGEOP_WRITE:
                        {
                            memcpy(data[hit_line * block_size], contet, bytes);
                            dirty[hit_line] = true;
                            if (next_level ！ = NULL && hit_writting_policy == WRITE_THROUGH)
                                next_level->Handler(addr, bytes, data[hit_line * block_size],
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
                    next_level->Handler(addr, bytes, STORAGEOP_WRITE, t_time);
                }
            else
                {
                    for (int i = set_idx * associativity; i < (set_idx + 1) * associativity; ++i)
                        if (!valid[i])
                            {
                                hit_line = i;
                                return;
                            }
                    if (hit_line == -1)  // no invalid line
                        {
                            int earliestTime = (1 << 30);
                            for (int i = set_idx * associativity; i < (set_idx + 1) * associativity;
                                 ++i)
                                if (lastUsedTime[i] < earliestTime)
                                    {
                                        earliestTime = lastUsedTime[i];
                                        hit_line = i;
                                    }
                            ASSERT(hit_line != -1);
                            if (hit_writting_policy == WRITE_BACK && dirty[hit_line])  // write back
                                {
                                    next_level->Handler(
                                        ((tag[hit_line] << (e_block_size + e_set_num)) |
                                         (set_idx << e_block_size)),
                                        block_size, data[hit_line * block], t_time);
                                }
                        }
                    valid[hit_line] = true;
                    dirty[hit_line] = false;
                    tag[hit_line] = request_tag;
                    next_level->Handler(addr, block_size, data[hit_line * block_size],
                                        STORAGEOP_READ, t_time);
                    switch (op)
                        {
                            case STORAGEOP_READ:
                                {
                                    memcpy(content, data[hit_line * block_size], bytes);
                                }
                                break;
                            case STORAGEOP_WRITE:
                                {
                                    memcpy(data[hit_line * block_size], contet, bytes);
                                    dirty[hit_line] = true;
                                    if (next_level ！ =
                                            NULL && hit_writting_policy == WRITE_THROUGH)
                                        next_level->Handler(addr, bytes,
                                                            data[hit_line * block_size],
                                                            STORAGEOP_WRITE, t_time);
                                }
                                break;
                        }
                    access_count += 1;
                    hit_count += 1;
                    t_time += bus_latency + hit_latency;
                    lastUsedTime[hit_line] = timeStamp;
                }
            miss_count += 1;
        }
    access_count += 1;
    access_time += t_time;

    time += t_time;
}