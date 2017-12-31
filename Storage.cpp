#include "Storage.h"

Memory::Memory(int _hit_latency, int _bus_latency)
{
    hit_latency = _hit_latency;
    bus_latency = _bus_latency;
    size = CACHED_MEM_SIZE;
    // data = new char[CACHED_MEM_SIZE];
    data = NULL;
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

void Memory::Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time,
                     bool invisible)
{
    int t_time = bus_latency + hit_latency;
    switch (op)
        {
            case STORAGEOP_READ:
                {
                }
                break;
            case STORAGEOP_WRITE:
                {
                }
                break;
        }
    if (!invisible)
        {
            access_count += 1;
            access_time += t_time;
        }

    time += t_time;
}

Cache::Cache(int _e_set_num, int _associativity, int _e_block_size,
             HIT_WRITING_POLICY _hit_writing_policy, MISS_WRITING_POLICH _miss_writing_policy,
             int _hit_latency, int _bus_latency)
    : associativity(_associativity), e_set_num(_e_set_num), e_block_size(_e_block_size),
      hit_writing_policy(_hit_writing_policy), miss_writing_policy(_miss_writing_policy)
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
    bypass_count = 0;
    prefetch_count = 0;
    access_count = 0;
    access_time = 0;

    bypass_policy = 0;
    prefetch_policy = 0;
}

Cache::~Cache()
{
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
    printf("    e_size: %d\t size: 0x%x\n", (int)log2(size), size);
    printf("    e_set_num: %d\t associativity: %d\t e_block_size: %d\n", e_set_num, associativity,
           e_block_size);
    printf("    hit_latency: %d\t bus_latency: %d\n", hit_latency, bus_latency);
    printf("    hit_writing_policy: %s\t miss_writing_policy: %s\t bypass_policy: %d\n",
           HWP_NAME[hit_writing_policy], MWP_NAME[miss_writing_policy], bypass_policy);
    printf("    access_count: %d\t hit_count: %d\t miss_count: %d\t replace_count: %d\t "
           "bypass_count %d\t prefetch_count %d\n",
           access_count, hit_count, miss_count, replace_count, bypass_count, prefetch_count);
    printf("    miss_rate: %.4f\n", GetMissRate());
    printf("    access_time %d\n", access_time);
}

void Cache::EnableBypass(int _bypass_table_size)
{
    bypass_policy = 1;
    bypass_idx = 0;
    bypass_table_size = _bypass_table_size;
    bypassTable = new int[bypass_table_size];
    for (int i = 0; i < bypass_table_size; ++i)
        bypassTable[i] = -1;
}

bool Cache::BypassDecide(int tag)
{
    if (bypass_policy == 0)
        return false;
    for (int i = 0; i < bypass_table_size; ++i)
        if (tag == bypassTable[i])
            return true;
    return false;
}

void Cache::EnablePrefetch(int _prefetch_table_size, int _least_steps)
{
    prefetch_policy = 2;
    prefetch_table_size = _prefetch_table_size;
    prefetchTable = new int[prefetch_table_size];
    for (int i = 0; i < prefetch_table_size; ++i)
        prefetchTable[i] = -1;
    prefetch_least_steps = _least_steps;
    if (prefetch_least_steps < 2)
        prefetch_least_steps = 2;
}

int Cache::PrefetchDecide(int line)
{
    if (prefetch_policy == 0)
        return 0;
    int max_step = 1, max_step_length = 0;

    for (int i = 0; i < prefetch_table_size; ++i)
        {
            if (prefetchTable[i] == -1 || prefetchTable[i] >= line)
                continue;
            int dis = line - prefetchTable[i], next = line - dis - dis, step = 1;

            while (true)
                {
                    bool exist = false;
                    for (int j = 0; j < prefetch_table_size; ++j)
                        {
                            if (prefetchTable[i] != -1 && prefetchTable[j] == next)
                                {
                                    next -= dis;
                                    step++;
                                    exist = true;
                                    break;
                                }
                        }
                    if (!exist)
                        break;
                }

            if (step > max_step)
                {
                    max_step = step;
                    max_step_length = dis;
                }
        }

    if (max_step >= prefetch_least_steps)
        {
            int prefetch_times = (max_step >= 3) ? 3 : max_step;
            int cur_line = line;
            char dummy_buf[5];
            for (int j = 0; j < prefetch_times; ++j)
                {
                    cur_line += max_step_length;
                    int t = 0;
                    Handler((cur_line << e_block_size), 1, dummy_buf, STORAGEOP_READ, t, true);
                }
            prefetch_count += 1;
            return prefetch_times;
        }
    return 0;
}

// void Cache::Prefetch(int line, int interval)
// {
// }

void Cache::Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &time,
                    bool invisible)
{
    timeStamp += 1;
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
                        }
                        break;
                    case STORAGEOP_WRITE:
                        {
                            dirty[hit_line] = true;
                            if (next_level != NULL && hit_writing_policy == WRITE_THROUGH)
                                next_level->Handler(addr, bytes, data + hit_line * block_size,
                                                    STORAGEOP_WRITE, t_time, invisible);
                        }
                        break;
                }
            t_time += hit_latency;
            lastUsedTime[hit_line] = timeStamp;

            if (!invisible)
                {
                    hit_count += 1;
                }
        }
    else  // miss
        {
            if (op == STORAGEOP_WRITE && miss_writing_policy == NO_WRITE_ALLOCATE)
                {
                    next_level->Handler(addr, bytes, content, STORAGEOP_WRITE, t_time, invisible);
                }
            else
                {
                    for (int i = set_idx * associativity; i < (set_idx + 1) * associativity; ++i)
                        if (!valid[i])
                            {
                                hit_line = i;
                                break;
                            }
                    bool bypass_flag = false;
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
                            if (!BypassDecide(tag[hit_line]))
                                {
                                    if (hit_writing_policy == WRITE_BACK &&
                                        dirty[hit_line])  // write back
                                        {
                                            next_level->Handler(
                                                ((tag[hit_line] << (e_block_size + e_set_num)) |
                                                 (set_idx << e_block_size)),
                                                block_size, data + hit_line * block_size,
                                                STORAGEOP_WRITE, t_time, invisible);
                                        }
                                    if (bypass_policy != 0)
                                        {
                                            bypassTable[bypass_idx] = tag[hit_line];
                                            bypass_idx = (bypass_idx + 1) % bypass_table_size;
                                        }
                                    if (!invisible)
                                        {
                                            replace_count += 1;
                                        }
                                }
                            else
                                {
                                    next_level->Handler(addr, bytes, content, op, t_time,
                                                        invisible);
                                    bypass_flag = true;
                                    if (!invisible)
                                        {
                                            bypass_count += 1;
                                        }
                                }
                        }

                    if (!bypass_flag)
                        {
                            valid[hit_line] = true;
                            dirty[hit_line] = false;
                            tag[hit_line] = request_tag;
                            next_level->Handler(addr, block_size, data + hit_line * block_size,
                                                STORAGEOP_READ, t_time, invisible);

                            if (!invisible && prefetch_policy != 0)
                                {
                                    int line = ((unsigned)addr) >> e_block_size;
                                    PrefetchDecide(line);
                                    prefetchTable[prefetch_idx] = line;
                                    prefetch_idx = (prefetch_idx + 1) % prefetch_table_size;
                                }


                            switch (op)
                                {
                                    case STORAGEOP_READ:
                                        {
                                        }
                                        break;
                                    case STORAGEOP_WRITE:
                                        {
                                            dirty[hit_line] = true;
                                            if (next_level != NULL &&
                                                hit_writing_policy == WRITE_THROUGH)
                                                next_level->Handler(
                                                    addr, bytes, data + hit_line * block_size,
                                                    STORAGEOP_WRITE, t_time, invisible);
                                        }
                                        break;
                                }
                            t_time += hit_latency;
                        }
                    lastUsedTime[hit_line] = timeStamp;
                }
            if (!invisible)
                miss_count += 1;
        }
    if (!invisible)
        {
            access_count += 1;
            access_time += t_time;
        }
    time += t_time;
}
