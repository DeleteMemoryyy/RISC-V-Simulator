long long a[10] = {3, 1, 5, 4, 8, 6, 9, 2, 0, 7};

long long b[3][3] = {{1, 1, 1}, {2, 2, 2}, {3, 3, 3}};
long long c[3][3] = {{4, 5, 6}, {4, 5, 6}, {4, 5, 6}};
long long d[3][3] = {0};

long long e = 0;

void swap(long long *ia, long long *ib)
{
    long long t = *ia;
    *ia = *ib;
    *ib = t;
}

int partation(int left, int right, int idx)
{
    if (right <= left)
        return -1;
    long long tValue = a[idx], tIdx = left;
    swap(&a[idx], &a[right]);
    while (left != right)
        {
            if (a[left] <= tValue)
                {
                    swap(&a[left], &a[tIdx]);
                    tIdx += 1;
                }
            left += 1;
        }
    swap(&a[tIdx], &a[right]);
    return tIdx;
}
void quicksort(int left, int right)
{
    if (right <= left)
        return;
    int pivot = (left + right) / 2;
    pivot = partation(left, right, pivot);
    if (pivot != -1)
        {
            quicksort(left, pivot - 1);
            quicksort(pivot + 1, right);
        }
}

int ackerman(int m, int n)
{
    while (m != 0)
        {
            if (n == 0)
                n = 1;
            else
                n = ackerman(m, n - 1);
            m -= 1;
        }
    return n + 1;
}

void QuickSort()
{
    quicksort(0, 9);
}

void MatrixMultiplication()
{
    for (int i = 0; i < 3; ++i)
        for (int j = 0; j < 3; ++j)
            d[i][j] = 0;

    long long tmp;

    for (int i = 0; i < 3; ++i)
        for (int j = 0; j < 3; ++j)
            {
                tmp = b[i][j];
                for (int k = 0; k < 3; ++k)
                    {
                        d[i][k] += tmp * c[i][k];
                    }
            }
}

void Ackerman()
{
    e = ackerman(2, 2);
}

void AllBenchmark()
{
    QuickSort();
    MatrixMultiplication();
    Ackerman();
}

int main()
{
    AllBenchmark();

    // printf("a:");
    // for (int i = 0; i < 10; ++i)
    //     printf(" %lld", a[i]);
    // printf("\n");

    // printf("b:\n");
    // for (int i = 0; i < 3; ++i)
    //     {
    //         for (int j = 0; j < 3; ++j)
    //             {
    //                 printf(" %lld", d[i][j]);
    //             }
    //         printf("\n");
    //     }
    // printf("e: %lld\n", e);
    return 0;
}