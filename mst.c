#include <stdio.h> //input, output
#include <stdlib.h> //malloc, qsort
#include <limits.h> // INT_MAX
#include <stdbool.h> // bool type

#define MAXV 100
#define INF 1000000000

int n;
int graph[MAXV][MAXV];

int prim_mst() {
    int key[MAXV];
    bool inMST[MAXV];
    int parent[MAXV];
    for (int i = 0 ; i < n; i++){
        key[i] = INF;
        inMST[i] = false;
        parent[i] = -1;
    }
    key[0] = 0;

    for (int i = 0; i < n; i++) {
        int u = -1;
        int minKey = INF;
        for (int v = 0; v < n ; v++) {
            if(!inMST[v] && key[v] < minKey) {
                minKey = key[v];
                u = v;
            }
        }
        if (u == -1) break;  // All reachable vertices are in MST
        inMST[u] = true;
        for (int v = 0; v < n; v++){
            int w = graph[u][v];
            if (w>0 && !inMST[v] && w < key[v]){
                key[v] = w;
                parent[v] = u;
            }
        }
    }
    int totalCost = 0;
    for (int i = 1; i < n; i++){
        if(key[i] != INF){
            totalCost += key[i];
        } else{
            return -1;}
    }
    return totalCost;
}

int main() {
    if (scanf("%d", &n) != 1) {
        fprintf(stderr, "Error reading number of vertices.\n");
        return 1;
    }
    printf ("%d\n", n);
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (scanf("%d", &graph[i][j]) != 1) {
                fprintf(stderr, "Error reading graph data at (%d, %d).\n", i, j);
                return 1;
            }
            printf("%d\t", graph[i][j]);
        }
        printf("\n");
    }
    int cost = prim_mst();
    if (cost != -1) {
        printf("MST cost: %d\n", cost);
    } else {
        printf("MST cannot be formed, the graph is disconnected.\n");}
    return 0;
}
/*
Usage:  ./xxx.out < test.txt
Complexity?: 인접리스트 + 우선순위큐 쓰면 O(E log V)로 줄일 수 있는데, 이 코드는 단순하게 O(n²)으로 감
*/