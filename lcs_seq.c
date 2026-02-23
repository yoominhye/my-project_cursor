#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#define MAX(a, b) ((a)>(b)?(a):(b))

typedef struct Node {
    int value;
    struct Node* next;
} Node;
typedef struct HashSet {
    Node ** buckets;
    int size;
} HashSet;

HashSet* createHashSet (int size) {
    HashSet* set = (HashSet*) malloc (sizeof(HashSet));
    set->size = size;
    set->buckets = (Node**) calloc(size, sizeof(Node*));
    return set;
}

int hash(int value, int size) {
    return abs (value) % size;
}

void insert (HashSet* set, int value){
    int index = hash(value, set->size);
    Node* newNode = (Node*) malloc(sizeof(Node));
    newNode->value = value;
    newNode->next = set->buckets[index];
    set->buckets[index] = newNode;
}

int find(HashSet* set, int value) {
    int index = hash(value, set->size);
    Node* current = set->buckets[index];
    while ( current != NULL) {
        if (current->value == value) {
            return 1;
        }
        current = current->next;
    }
    return 0;
}
void freeHashSet(HashSet* set){
    for (int i = 0; i < set->size; i++){
        Node* current = set->buckets[i];
        while (current != NULL){
            Node* temp = current;
            current = current->next;
            free(temp);
        }
    }
    free(set->buckets);
    free(set);
}
int findLongestConseqSubseq ( int arr[], int n ) {
    int ans = 0;
    HashSet* S =createHashSet(n);
    for (int i = 0; i < n; i++){
        insert(S, arr[i]);
    }
    for (int i = 0; i < n; i++){
        if (!find(S, arr[i]-1)){
            int j =arr[i];
            while(find(S,j)){
                j++;}
            ans = MAX(ans, j-arr[i]);
        }
    }
    freeHashSet(S);
    return ans;
}

int main() {
    int n = 7;
    int arr[] ={10, 4, 20, 1, 3, 2, 5};
    printf("Length of the Longest consecutive subsequence is %d\n", findLongestConseqSubseq(arr, n));
    printf("\n");
    return 0;
}