#include <stdio.h>
#define MAX_SIZE 9
#define SWAP(x, y, temp) ( (temp) = (x), (x) = (y), (y) = (temp) )

int partition (int list[], int left, int right) {
    int pivot, temp;
    int low, high;

    low = left;
    high = right + 1;
    pivot = list[left];
    while (low < high) {
        do {
            low++;
        } while (low <= right && list[low] < pivot);
        do {
            high--;
        } while (high >= left && list[high] > pivot);
        if (low < high) 
            SWAP(list[low], list[high], temp);
        }
    SWAP(list[left], list[high], temp);
    return high;
}

void quick_sort (int list[], int left, int right) {
    if (left < right) {
        int pivot;
        pivot = partition(list, left, right);
        quick_sort(list, left, pivot - 1);
        quick_sort(list, pivot + 1, right);
    }
}

int main() {
    int i;
    int n = MAX_SIZE;
    int list[MAX_SIZE] = {19, 17, 15, 12, 16, 18, 4, 11, 13};
    quick_sort(list, 0, n-1);
    for (i=0; i<n; i++)
        printf("%3d ", list[i]);
    printf("\n");
    return 0;
}