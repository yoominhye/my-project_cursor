#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

// 상수 정의
#define SENTINEL INT_MAX
#define SUCCESS 0
#define FAILURE -1

// 배열 출력 함수
void array_print(const char *str, const int *arr, size_t size) {
    printf("%s:\t", str);
    for (size_t i = 0; i < size; i++) {
        printf("%d\t ", arr[i]);
    }
    printf("\n");
}

// 병합 함수
int merge(int *arr, size_t left, size_t mid, size_t right) {
    size_t n1 = mid - left + 1;
    size_t n2 = right - mid;
    
    // 동적 메모리 할당
    int *L = malloc((n1 + 1) * sizeof(int));
    int *R = malloc((n2 + 1) * sizeof(int));
    
    if (!L || !R) {
        free(L);
        free(R);
        return FAILURE;
    }
    
    // 임시 배열에 데이터 복사
    for (size_t i = 0; i < n1; i++) {
        L[i] = arr[left + i];
    }
    for (size_t j = 0; j < n2; j++) {
        R[j] = arr[mid + 1 + j];
    }
    
    // Sentinel 값 설정
    L[n1] = SENTINEL;
    R[n2] = SENTINEL;
    
    // 병합 과정
    size_t i = 0, j = 0;
    for (size_t k = left; k <= right; k++) {
        if (L[i] <= R[j]) {
            arr[k] = L[i++];
        } else {
            arr[k] = R[j++];
        }
    }
    
    // 메모리 해제
    free(L);
    free(R);
    return SUCCESS;
}

// 병합 정렬 함수
int merge_sort(int *arr, size_t left, size_t right, size_t *comp_count) {
    if (left < right) {
        size_t mid = left + (right - left) / 2;  // 오버플로우 방지
        
        // 재귀적 정렬
        int result = merge_sort(arr, left, mid, comp_count);
        if (result == FAILURE) return FAILURE;
        
        result = merge_sort(arr, mid + 1, right, comp_count);
        if (result == FAILURE) return FAILURE;
        
        result = merge(arr, left, mid, right);
        if (result == FAILURE) return FAILURE;
        
        (*comp_count)++;
    }
    return SUCCESS;
}

int main(void) {
    int arr[] = {2, 9, 4, 7, 1, 5, 8, 3};
    size_t n = sizeof(arr) / sizeof(arr[0]);
    size_t comp_count = 0;
    
    array_print("Input ", arr, n);
    
    if (merge_sort(arr, 0, n - 1, &comp_count) == FAILURE) {
        printf("Error: Sorting failed\n");
        return EXIT_FAILURE;
    }
    
    array_print("Output ", arr, n);
    printf("Number of Iterations = %zu\n", comp_count);
    
    return EXIT_SUCCESS;
}
/*
#include <stdio.h>

#define MAX (1 * 1024 * 1024 *1024)
#define nLENGTH 8

void
array_print (char *str, int *A, int num)
{
  int i;
  printf ("%s", str);
  for (i = 0; i < num; i++)
    {
      printf ("%d ", A[i]);
    }
  printf ("\n");
}

void
merge (int *A, int p, int q, int r)
{
  int i, j, k;
  int n1 = q - p + 1;
  int n2 = r - q;
  int L[nLENGTH], R[nLENGTH];

  for (i = 0; i < n1; i++){
    L[i] = A[p + i];
  }
  for (j = 0; j < n2; j++){
    R[j] = A[q + j + 1];
  }
  L[n1] = MAX;
  R[n2] = MAX;
  i = 0;
  j = 0;
  for (k = p; k <= r; k++)
  {
    if (L[i] <= R[j])
    {
      A[k] = L[i];
      i++;
    } else    {
      A[k] = R[j];
      j++;
    }
  }
}

int
merge_sort (int *A, int p, int r)
{
  static int ncnt = 0;
  int q;
  if (p < r)
  {
    q = (p + r) / 2;
    merge_sort (A, p, q);
    merge_sort (A, q + 1, r);
    merge (A, p, q, r);
    ncnt++;
  }
  return ncnt;
}

int
main (void)
{
    int *A = {2,9,4,7,1,5,8,3};
    int n = sizeof(A) / sizeof(A[0]);
    int *pA, ncnt;

    pA = A;
    array_print ("Input: ", pA, n);
    ncnt = merge_sort (pA, 0, n);
    array_print ("Output: ", pA, n);
    printf ("Number of Iteration = %d\n", ncnt);
    printf ("Press any key to end\n");
    getchar ();
    return 0;
}
*/