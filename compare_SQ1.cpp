#include <iostream>
#define MAX 5
using namespace std;

class Queue {
    int arr[MAX];
    int front, rear, size; // size 변수 추가

public:
    Queue() {
        front = 0;
        rear = 0;
        size = 0; // 초기 크기는 0
    }

    void enqueue(int x) {
        if (size == MAX) { // size가 MAX와 같으면 가득 찬 것
            cout << "Queue Full! Cannot enqueue " << x << endl;
            return;
        }
        arr[rear] = x;
        rear = (rear + 1) % MAX; // 인덱스 순환
        size++; // 데이터 개수 증가
    }

    int dequeue() {
        if (isEmpty()) {
            return -1;
        }
        int value = arr[front];
        front = (front + 1) % MAX; // 인덱스 순환
        size--; // 데이터 개수 감소
        return value;
    }

    bool isEmpty() {
        return (size == 0); // size가 0이면 비어있는 것
    }
};
int main() {
    Queue q;
    q.enqueue(5); q.enqueue(6);q.enqueue(7);
    cout<<q.dequeue() << " ";
    cout<<q.dequeue() << endl;
    q.enqueue(8); q.enqueue(9); q.enqueue(10); q.enqueue(11);
}