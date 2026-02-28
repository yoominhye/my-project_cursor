//stack.h
typedef struct node {
    void *data;
    struct node *next;
} NODE;

typedef struct  {
    NODE *top;
    int count;
} STACK;

STACK *stack_create();
STACK *stack_destroy (STACK *stack);
int stack_push(STACK *stack, void *data_in);
void *stack_pop(STACK *stack);
void *stack_top(STACK *stack);
int stack_count(STACK *stack);
int stack_is_empty(STACK *stack);
int stack_is_full(STACK *stack);
//stack.c
#include <stdlib.h>
#include <stdio.h>
//#include "stack.h"
STACK *stack_create() {
    STACK *stack = (STACK *)malloc(sizeof(STACK));////
    if (stack) {
        stack->top = NULL;
        stack->count = 0;        
    }
    return stack;
}
STACK *stack_destroy(STACK *stack) {
    NODE *temp;
    if (stack) {
        while (stack->count > 0) {
            free (stack->top->data);
            temp = stack->top;
            stack->top = stack->top->next;
            free(temp);
            stack->count--;
        }
        free(stack);
    }
    return NULL;
}

int
stack_push (STACK *stack, void *data_in) {
    NODE *node = (NODE *)malloc(sizeof(NODE));
    if (!node)  return 0;
    node->data = data_in;
    node->next = stack->top;
    stack->top = node;
    (stack->count)++;
    return 1;
}

void 
*stack_pop(STACK *stack) 
{
    NODE *temp;
    void *data_out;
    if (stack->count == 0) data_out = NULL;
    else {
        temp = stack->top;
        data_out = stack->top->data;
        stack->top = stack->top->next;
        free(temp);
        (stack->count)--;
    }
    
    return data_out;
}

void* 
stack_top(STACK *stack) {
    if (stack->count == 0) return NULL;
    else return stack->top->data;
}

int
stack_is_empty (STACK *stack) {
    //printf("stack->count = %d\n", (stack->count));
    return (stack->count == 0);
}

int
stack_is_full (STACK *stack) {
    NODE *temp;
    if((temp = (NODE *)malloc(sizeof(*(stack->top)))) != NULL) {
        free(temp);
        return 0;
    }
    return 1;
}

int
stack_count (STACK *stack) {
    return stack->count;
}
//main.c
#include <stdio.h>
//#include <stdlib.h>
/*
int
main(void)
{
    int *data;
    STACK *stack = stack_create();
    while (1) 
    {
        data = (int *)malloc(sizeof(int));
        printf("Enter a number: ");
        if ((scanf("%d", data) == 0) || stack_is_full(stack)) break;
        else    stack_push (stack, data);
    }
    printf("\n\n The List of number of reserved:\n");
    while (!stack_is_empty(stack)) {
        data = (int *)stack_pop(stack);
        printf("%3d\n", *data);
        free(data);
    }
    stack_destroy(stack);
    printf("Press any key to end...");

    getchar();
    return 0;
}
*/
int
main(void)
{
    unsigned int num;
    int *digit;
    STACK *stack = stack_create();

    printf("Enter an integer: ");
    if (scanf("%u", &num) != 1) num = 0;
    while (num > 0) {
        digit = (int *)malloc(sizeof(int));
        *digit = num % 2;
        stack_push(stack, digit);
        num /= 2;
    }
    printf("The binary number is: ");
    while (!stack_is_empty(stack)) {
        digit = (int *)stack_pop(stack);
        printf("%3d", *digit);
        free(digit);////////////Neceesary
    }
    printf("\n");
    stack_destroy(stack);
    printf("Press any key to end...");

    getchar();
    return 0;
}