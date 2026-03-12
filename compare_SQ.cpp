#include <iostream>
#define MAX 5
using namespace std;

class Stack {
    int arr[MAX];
    int top;

    public:
        Stack() { top = -1;}
        void push(int x);
        int pop();
        bool isEmpty();
};
class Queue {
    int arr[MAX];
    int front, rear;
    public:
    Queue() {
        front = 0;
        rear = 0;
    }
    void enqueue(int x);
    int dequeue();
    bool isEmpty();
};
void Stack:: push(int x){
    if (top < MAX -1) { arr[++top] = x;}
}
int Stack:: pop() {
    if (isEmpty()){return -1;}
    return arr[top--];
}
bool Stack:: isEmpty() {
    if (top == -1) { return true; }
    else{return false;}
}

void Queue::enqueue(int x) {
    if((rear+1)% MAX != front){
        arr[rear++]= x;
        rear %= MAX;
    }
}
int Queue::dequeue(){
    int value =arr[front];
    if(isEmpty()) {return -1;}
    else {
        front = (front + 1) % MAX; 
        return value;}
}
bool Queue:: isEmpty() {
    return (front == rear);}

int main() {
    Stack s;
    s.push(10); s.push(20); s.push(30);
    cout << s.pop() << " ";
    cout << s.pop() << endl;

    Queue q;
    q.enqueue(5); q.enqueue(6);q.enqueue(7);
    cout<<q.dequeue() << " ";
    cout<<q.dequeue() << endl;
    q.enqueue(8); q.enqueue(9); q.enqueue(10); q.enqueue(11);

}