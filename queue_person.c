/// queue.h
#include <stdlib.h> ////////////
#include <stdio.h> ///////////////
typedef enum {
    true = 1,
    TRUE = 1,
    false = 0,
    FALSE = 0
} bool;

typedef struct node {
    void *data;
    struct node *link;
} NODE;

typedef struct {
    NODE *front;
    NODE *rear;
    int count;
    //int limit;
} QUEUE;

QUEUE *que_create(void);
QUEUE *que_destroy(QUEUE *queue);
bool que_dequeue(QUEUE *queue, void ** data_out);
bool que_enqueue(QUEUE *queue, void *data_in);
bool que_front(QUEUE *queue, void **data_out);
bool que_rear(QUEUE *queue, void **data_out);
int  que_count(QUEUE *queue);

bool que_is_empty(QUEUE *queue);
bool que_is_full(QUEUE *queue);
/// queue.c
#include <stdlib.h>
//#include "queue.h"

QUEUE 
*que_create(void)
{
    QUEUE *queue = (QUEUE *)malloc(sizeof(QUEUE));
    if (queue)
    {
        queue->front = NULL;
        queue->rear = NULL;
        queue->count = 0;
    }
    return queue;
}
QUEUE 
*que_destroy(QUEUE *queue)
{
    NODE *node_temp;

    if (queue)
    {
        while(queue->front)///////////////////
        {
            free (queue->front->data);
            node_temp = queue->front;
            queue->front = queue->front->link;
            free(node_temp);
        }
        free(queue);
    }
    return NULL;
}

bool 
que_enqueue(QUEUE *queue, void *data_in)
{
    NODE *node_new = (NODE *)malloc(sizeof(NODE));
    if (!node_new) return false;
    node_new->data = data_in;
    node_new->link = NULL;
    if (queue->count == 0)
    {
        queue->front = node_new;
    } else {
        queue->rear->link = node_new;
    }
    (queue->count)++;
    queue->rear = node_new;
    return true;
}

bool 
que_dequeue(QUEUE *queue, void **data_out)
{
    NODE *node_del;
    if (!queue->count)  return false;
    *data_out = queue->front->data;
    node_del = queue->front;
    if (queue->count == 1)
    {
        queue->front = NULL;
        queue->rear = NULL;
    } else {
        queue->front = queue->front->link;
    }
    (queue->count)--;
    free(node_del);
    return true;
}

bool 
que_front(QUEUE *queue, void **data_out)
{
    if (!queue->count) return false;
    *data_out = queue->front->data;
    return true;
}

bool 
que_rear(QUEUE *queue, void **data_out)
{
    if (!queue->count) return false;
    *data_out = queue->rear->data;
    return true;
}

int  
que_count(QUEUE *queue)
{
    return queue->count;
}

bool 
que_is_empty(QUEUE *queue)
{
    return queue->count == 0;
}

bool 
que_is_full(QUEUE *queue)
{
    NODE *node_temp = (NODE *)malloc(sizeof(*(queue->rear)));
    if (node_temp)
    {
        free(node_temp);
        return false;
    }
    return true;
}
/// main.c
//#include <stdio.h>
//#include <stdlib.h>
//#include "queue.h"
typedef struct {
    int pno;
    char name[20];
    char phone [15];
} PERSON;

int
main (void)
{
    bool done = false;
    PERSON * person_data;
    //int *data_temp;

    QUEUE *queue = que_create();

    while(!done)
    {
        person_data = (PERSON *)malloc(sizeof(PERSON));
        //data_temp = (int *)malloc(sizeof(int));
        printf("Enter a person number: <!digit> to stop:  ");
        if ((scanf("%d", &(person_data->pno)))==0) break;
        printf("Enter the person's name: ");
        if ((scanf("%s", person_data->name))==0) break;
        printf("Enter the person's phone number: ");
        if ((scanf("%s", person_data->phone))==0) break;
        que_enqueue(queue, person_data);
            //que_enqueue(queue, data_temp);
        printf("\n");
    }
    printf("The numbers in the queue are: \n");
    while(!que_is_empty(queue))
    {
        que_dequeue(queue, (void*)&person_data);///////
        printf("%d, %s, %s\n", person_data->pno, person_data->name, person_data->phone);
        ///printf("%3d\n", *data_temp);
        free(person_data);
    }
    que_destroy(queue);

    printf("Press any key to end...");
    getchar();
    return 0;
}

/*
https://claude.ai/chat/6677b37d-6463-42ea-9c06-22abdba1418a
*/