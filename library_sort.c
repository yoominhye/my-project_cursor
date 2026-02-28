#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int 
librarySort(int *arr, int n) {
    static int ncnt = 0;
    int *shelf = (int *)malloc(2 * n * sizeof(int));
    memset(shelf, -1, 2 * n * sizeof(int));

    shelf[n] = arr[0];
    int size = 1;

    for (int i = 1; i < n; i++) {
        int left = 0, right = size, mid;
        while (left < right) {
            mid = (left + right) / 2;
            if (shelf[n + mid] == -1 || shelf[n + mid] > arr[i])
                right = mid;
            else
                left = mid + 1;
            ncnt++;
        }

        for (int j = size; j > left; j--)
            shelf[n + j] = shelf[n + j - 1];

        shelf[n + left] = arr[i];
        size++;
    }

    for (int i = 0; i < n; i++)
        arr[i] = shelf[n + i];

    free(shelf);
    return ncnt;
}

void 
array_print(char *str, int *A, int size) 
{
    printf ("%s", str);
    for (int i = 0; i < size; i++)
        printf("%d ", A[i]);
    printf("\n");
}

int main() {
    int arr[] = {2, 9, 4, 7, 1, 5, 8, 3};
    int n = sizeof(arr) / sizeof(arr[0]);
    int ncnt;

    array_print("Input: ", arr, n);
    ncnt = librarySort(arr, n);
    array_print("Output: ", arr, n);
    printf ("Number of Iteration = %d\n", ncnt);
    printf ("Press any key to end...\n");
    getchar ();

    return 0;
}