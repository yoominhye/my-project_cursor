#include <stdio.h>
#include <stdlib.h>
#include <stdatomic.h> // 원자적 연산을 위한 헤더
#include <pthread.h>   // 멀티스레드 테스트용
#include <limits.h>

typedef struct {
    int* value;
    atomic_int ref_count; // int 대신 atomic_int 사용
} AtomicRefObject;

AtomicRefObject* create_atomic_obj(int val) {
    AtomicRefObject* obj = (AtomicRefObject*)malloc(sizeof(AtomicRefObject));
    obj->value = (int*)malloc(sizeof(int));
    *(obj->value) = val;
    
    // 원자적 초기화
    atomic_init(&obj->ref_count, 1);
    printf(" 객체 생성: 값 = %d (%u)\n", val, atomic_load(&obj->ref_count));
    return obj;
}

void retain(AtomicRefObject* obj) {
    if (obj == NULL) return;
    unsigned int prev = atomic_fetch_add(&obj->ref_count, 1);
    if (prev == UINT_MAX) {
        printf("CRITICAL ERROR: Reference count overflow.\n");
        exit(1);
    }    
    // [Safe Step] 원자적으로 1 증가
    // 이전 값을 반환하지만, 메모리에는 이미 증가된 값이 안전하게 기록됨
    //atomic_fetch_add(&obj->ref_count, 1);
    printf("reference incremented: (current count: %u)\n", prev + 1);
}

void release(AtomicRefObject* obj) {
    if (obj == NULL) return;

    // [Safe Step] 원자적으로 1 감소 후, 감소 전의 값을 반환받음
    // 반환값이 1이었다면, 현재 값은 0이 되었음을 의미함
    if (atomic_fetch_sub(&obj->ref_count, 1) == 1) {
        printf("최종 해제: 메모리를 안전하게 비웁니다.\n");
        free(obj->value);
        free(obj);
    } else {
        printf("reference decremented: (current count: %u)\n", atomic_load(&obj->ref_count));
    }
}
int main () {
    AtomicRefObject* my_data = create_atomic_obj(42);
    
    retain(my_data); // ref_count: 2
    
    // 참조 감소
    release(my_data); // ref_count: 1
    release(my_data); // ref_count: 0, 메모리 해제
    return 0;
}