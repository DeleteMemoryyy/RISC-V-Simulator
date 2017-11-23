#include "Storage.h"

#if defined(CACHE_L1)

#elif defined(CACHE_L2)

#else

#endif

void Memory::Handler(TYPEADDR addr, int bytes, char *content, STORAGE_OP op, int &hit, int &time)
{
    
    hit = 1;
}