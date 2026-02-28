#include <stdio.h>
#include <stdlib.h>

typedef struct stack {
    int data;
    struct stack *next;
} STACK;

void
push(STACK **head, int value)
{
    STACK *node = (STACK *)malloc(sizeof(STACK));

    if(node == NULL) {
        printf("Memory allocation failed\n");
        return;
    } else {
        node->data = value;
        node->next = *head;
        *head = node;
    }
}

int
empty (STACK *head)
{
    return (head->next) ? 0: 1;
}
int
pop (STACK **head)
{
    if(empty(*head)) {
        printf("Stack is empty\n");
        return -1; /////////////if value is -1,???
    } else {
        STACK *top = *head;
        int value = top->data;
        *head = top->next;
        free(top);
        return value;
    }
}

int
main ()
{
    STACK *head;

    head = (STACK *) malloc (sizeof (STACK));
    head->next = NULL;
    push (&head, 10);
    push (&head, 20);
    push (&head, 30);
    push (&head, 40);
    printf("%d\n", pop(&head));
    printf("%d\n", pop(&head));
    printf("%d\n", pop(&head));
    printf("%d\n", pop(&head));
    printf("%d\n", pop(&head));
    printf("%d\n", pop(&head));
    printf("Press any key...");
    getchar();
    return 0;
}