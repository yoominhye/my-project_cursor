///list.h
#include <stdlib.h>////////
#include <stdio.h>////////
//#include "list.h"
typedef enum {
    true = 1,
    TRUE = 1,
    false = 0,
    FALSE = 0
} bool;

typedef struct node {
    void* data;
    struct node* link;
} NODE;

typedef struct linkedList {
    int count;
    NODE* pos;
    NODE* head;
    NODE* tail;
    int (*compare)(void* arg1, void* arg2);////////////////////
} LIST;

LIST* list_create(int (*compare)(void* arg1, void* arg2));
LIST* list_destroy(LIST* list);
int list_add_node(LIST* pList, void* data_in);
bool list_remove_node (LIST *pList, void *keyPtr, void **dataOut);
bool list_search_node (LIST *pList, void *pArgu, void **dataOut);
bool list_retrieve_node (LIST *pList, void *pArgu, void **dataOut);
bool list_traverse (LIST *pList, int fromWhere, void **dataOut);
int list_count (LIST *pList);
bool list_empty (LIST *pList);
bool list_full (LIST *pList);
bool list_insert (LIST *pList, NODE *pPre, void *data_in);
void list_delete (LIST *pList, NODE *pPre, NODE *pLoc, void **dataOut);
bool list_search (LIST *pList, NODE **pPre, NODE **pLoc, void *pArgu);
//list.c
//#include "list.h"
#include <stdlib.h>

LIST*
list_create(int (*compare)(void* arg1, void* arg2))
{
    LIST *list = (LIST *)malloc(sizeof(LIST));

    if (list)
    {
        list->head = NULL;
        list->pos = NULL;
        list->tail = NULL;
        list->count = 0;
        list->compare = compare;
    }
    return list;
}

bool
list_traverse (LIST *pList, int fromWhere, void **dataOut)
{
    if (pList->count == 0) return false;
    if (fromWhere == 0)
    {
        pList->pos = pList->head;
        *dataOut = pList->pos->data;
        return true;
    }   else {
        if (pList->pos->link == NULL) return false;
        else {
            pList->pos = pList->pos->link;
            *dataOut = pList->pos->data;
            return true;
        }
    }
}

LIST*
list_destroy(LIST* list)
{
    NODE *node_del;

    if (list)
    {
        while (list->count > 0)
        {
            node_del = list->head;
            list->head = list->head->link;
            (list->count)--;////////////
            free(node_del);
        }
        free(list);
    }
    return NULL;
}

int
list_add_node(LIST* pList, void* data_in)
{
    bool found;
    bool success;
    NODE *pPre;
    NODE *pLoc;
    found = list_search(pList, &pPre, &pLoc, data_in);
    if (found)  return 1;
    success = list_insert(pList, pPre, data_in);
    if (!success) return -1;
    return 0;
}

bool
list_remove_node (LIST *pList, void *keyPtr, void **dataOut)
{
    bool found;
    NODE *pPre;
    NODE *pLoc;
    found = list_search(pList, &pPre, &pLoc, keyPtr);
    if (found)     list_delete(pList, pPre, pLoc, dataOut);
    return found;
}

bool
list_search_node (LIST *pList, void *pArgu, void **dataOut)
{
    bool found;
    NODE *pPre;
    NODE *pLoc;
    found = list_search(pList, &pPre, &pLoc, pArgu);
    if (found)     *dataOut = pLoc->data;
    else           *dataOut = NULL;
    return found;
}

bool
list_retrieve_node (LIST *pList, void *pArgu, void **dataOut)
{
    bool found;
    NODE *pPre;
    NODE *pLoc;
    found = list_search(pList, &pPre, &pLoc, pArgu);
    if (found)
    {
        *dataOut = pLoc->data; ///////return found
        return true;
    }    else {
        *dataOut = NULL;
        return false;
    }
}
int
list_count (LIST *pList)
{
    return pList->count;
}

bool
list_empty (LIST *pList)
{
    return pList->count == 0;
}

bool
list_full (LIST *pList)
{
    NODE *temp;
    temp = (NODE *)malloc(sizeof(*(pList->head)));
    if (temp)
    {
        free(temp);
        return false;
    }
    return true;
}

bool
list_insert (LIST *pList, NODE *pPre, void *data_in)
{
    NODE *pNew;
    if (!(pNew = (NODE *)malloc(sizeof(NODE)))) return false;

    pNew->data = data_in;
    pNew->link = NULL;
    if (pPre == NULL)
    {
        pNew->link = pList->head;
        pList->head = pNew;
        if (pList->count == 0) pList->tail = pNew;
    } else {
        pNew->link = pPre->link;
        pPre->link = pNew;
        if (pNew->link == NULL) pList->tail = pNew;
    }
    (pList->count)++;
    return true;
}

void
list_delete (LIST *pList, NODE *pPre, NODE *pLoc, void **dataOut)
{
    *dataOut = pLoc->data;
    if (pPre == NULL) pList->head = pLoc->link;
    else pPre->link = pLoc->link;
    if (pLoc->link == NULL) pList->tail = pPre;
    (pList->count)--;
    free(pLoc);

    return;
}

bool list_search (LIST *pList, NODE **pPre, NODE **pLoc, void *pArgu)
{
    #define COMPARE ( ((*pList->compare)( pArgu, (*pLoc)->data)) )
    #define COMPARE_LAST ((*pList->compare)( pArgu, pList->tail->data))

    int result;
    *pPre = NULL;
    *pLoc = pList->head;
    if (pList->count == 0) return false;
    if (COMPARE_LAST > 0)
    {
        *pPre = pList->tail;
        *pLoc = NULL;
        return false;
    }
    while ((result = COMPARE) > 0)
    {
        *pPre = *pLoc;
        *pLoc = (*pLoc)->link;
    }
    if (result == 0) return true;
    else return false;
}

//main.c
#include <stdio.h>
#include <stdlib.h>
//#include "list.h"
#include <ctype.h>
#include <string.h>

int compare_int(void* arg1, void* arg2) {
    int a = *(int*)arg1;
    int b = *(int*)arg2;
    if (a < b) return -1;
    if (a > b) return 1;
    return 0;
}

void print_list(LIST* list) {
    NODE* current = list->head;
    while (current != NULL) {
        printf("%d -> ", *(int*)current->data);
        current = current->link;
    }
    printf("NULL\n");
}

int main() {
    LIST* list = list_create(compare_int);

    int data1 = 10;
    int data2 = 20;
    int data3 = 15;

    list_add_node(list, &data1);
    list_add_node(list, &data2);
    list_add_node(list, &data3);

    printf("List contents: ");
    print_list(list);

    int key = 20;
    void* dataOut;
    list_remove_node(list, &key, &dataOut);

    printf("After removing node: ");
    print_list(list);

    list_destroy(list);

    return 0;
}
// 위에서 정의한 구조체와 함수들
/*
int main() {
    LIST* list = createList();

    // 노드 삽입
    insertFront(list, 10);
    insertFront(list, 20);
    insertAt(list, 1, 15);

    // 리스트 출력
    printf("리스트 내용: ");
    traverseList(list);  // 출력: 20 -> 15 -> 10 -> NULL

    // 노드 삭제
    deleteNode(list, 1);

    printf("노드 삭제 후: ");
    traverseList(list);  // 출력: 20 -> 10 -> NULL

    // 메모리 해제
    destroyList(list);

    return 0;
}
*/
