#include <stdio.h>

void 
array_print(char *str, int *A, int size) 
{
    printf("%s: ", str);
    for (int i = 0; i < size; i++) {
        printf("%d ", A[i]);
    }
    printf("\n");
}

int 
shell_sort(int v[], int n) {
    int ecnt = 0;
    for (int gap = n / 2; gap > 0; gap /= 2) {
        for (int i = gap; i < n; i++) {
            int temp = v[i];
            int j;
            //for (j = i; j >= gap && v[j - gap] > temp; j -= gap) v[j] = v[j - gap];
            for (j = i-gap; j>=0; j-=gap) {
                if (v[j] > v[j+gap]) {
                    temp = v[j];
                    v[j] = v[j+gap];
                    v[j+gap] = temp;
                }
            }
            ecnt++;
        }
    }
    return ecnt;
}

int main() {
    int arr[] = {12, 34, 54, 2, 3};
    int n = sizeof(arr) / sizeof(arr[0]);
    int ecnt;

    array_print("Input", arr, n);
    ecnt = shell_sort(arr, n);
    array_print("Output", arr, n);
    printf("Number of Iteration: %d\n", ecnt);
    printf ("Press any key to end ...");
    getchar();

    return 0;
}

