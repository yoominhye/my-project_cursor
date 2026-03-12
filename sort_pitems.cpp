#include <stdio.h>
void swap (int* a, int * b)
{
    int tmp;
    tmp = *a;
    *a = *b;
    *b=tmp;
}
void swap_pp (int** a, int** b){
    int* tmp;
    tmp = *a;
    *a=*b;
    *b=tmp;

}
void swap_pr(int*& a, int *& b){
    int* tmp;
    tmp = a;
    a= b;
    b=tmp;

}
void sort_o(int* pitems[], int size) {
    for (int i=0; i<size-1; i++){
        for (int j=0; j<size-i-1; j++){
            if(*pitems[j] > *pitems[j+1]){
                swap(pitems[j], pitems[j+1]);
            }
        }
    }
}
void sort_pp (int* pitems[], int size) {
    for (int i=0; i<size-1; i++){
        for (int j=0; j<size-i-1; j++){
            if(*pitems[j] > *pitems[j+1]){
                swap_pp(&pitems[j], &pitems[j+1]);
            }
        }
    }
}
void sort (int* pitems[], int size) {
    for (int i=0; i<size-1; i++){
        for (int j=0; j<size-i-1; j++){
            if(*pitems[j] > *pitems[j+1]){
                swap_pr(pitems[j], pitems[j+1]);
            }
        }
    }
}

int main()
{
    const int SIZE=5;
    int items[SIZE] = {16, 9, 28, 12, 1};
    int* pitems[SIZE];
    pitems[0] = items;
    for (int i = 1; i <SIZE; i++) {
        pitems[i] = pitems[i-1]+1;
    }
    sort_o(pitems, SIZE);//sort_pp(pitems, SIZE);//sort(pitems, SIZE);
    for(int i = 0; i < SIZE ; i++) printf("%d, ", *pitems[i]);
    printf("\n");

    for (int i = 0 ; i < SIZE; i++) printf("%d, ", items[i]);
    printf("\n");
}