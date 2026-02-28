#include <stdio.h>

void
array_print(char *str, int *A, int size)
{
    printf("%s", str);
    for (int i = 0; i < size; i++) {
        printf("\t%d", A[i]);
    }
    printf("\n");
}

void
exchange(int v[], int i, int j)
{
    int temp = v[i];
    v[i] = v[j];
    v[j] = temp;
}

int
partition(int v[], int left, int right)
{
    int i, last;

    last = left - 1 ;
    for (i = left; i < right; i++) {
        if (v[i] < v[right])     exchange(v, ++last, i);
    }
    exchange(v, last+1, right);

    return last + 1;
}

int
quick_sort(int v[], int left, int right)
{
    static int ncnt = 0;
    if (left < right) {
        int last = partition(v, left, right);
        quick_sort(v, left, last - 1);
        quick_sort(v, last + 1, right);
        ncnt++;
    }
    return ncnt;
}

int
main()
{
    int A[] = {2,9,4,7,1,5,8,3};
    int n = sizeof(A) / sizeof(A[0]);
    int *pA, ncnt;
    pA = A;
    
    array_print("Input:", pA, n);
    ncnt = quick_sort(A, 0, n - 1);
    array_print("Output:", A, n);
    printf("Number of Iteration: %d\n", ncnt);
    printf("Press Enter to end ...\n");
    getchar();

    return 0;
}