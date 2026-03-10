#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

typedef struct {
    int* value;
    int ref_count; // 참조 횟수를 저장하는 변수
} RefObject;

// 새로운 객체 생성
RefObject* create_object(int val) {
    RefObject* obj = (RefObject*)malloc(sizeof(RefObject));
    obj->value = (int*)malloc(sizeof(int));
    *(obj->value) = val;
    
    // 생성 시 참조 횟수를 1로 설정
    obj->ref_count = 1; 
    printf("객체 생성: 값 = %d (참조 횟수: %d)\n", val, obj->ref_count);
    return obj;
}

// 참조 추가 (Retain)
void retain(RefObject* obj) {
    if (obj == NULL) return;

    /* * [OVERFLOW POINT]
     * 여기서 ref_count가 자료형의 최대값(예: INT_MAX)을 넘어서면 오버플로우 발생.
     * 오버플로우가 발생하면 카운트가 갑자기 음수나 작은 숫자가 되어, 
     * 아직 사용 중임에도 불구하고 객체가 메모리에서 해제되는 치명적인 버그가 생길 수 있음.
     */
    obj->ref_count++;
    printf("참조 추가 (참조 횟수: %d)\n", obj->ref_count);
}

// 참조 해제 (Release)
void release(RefObject* obj) {
    if (obj == NULL) return;

    obj->ref_count--;
    printf("참조 해제 (참조 횟수: %d)\n", obj->ref_count);

    // 참조 횟수가 0이 되면 메모리 해제
    if (obj->ref_count <= 0) {
        printf("참조 횟수 0 도달: 메모리 해제 실행\n");
        free(obj->value);
        free(obj);
    }
}

int main() {
    // 1. 객체 생성 (Count: 1)
    RefObject* my_data = create_object(100);

    // 2. 강제로 ref_count를 INT_MAX(최대치)로 조작
    my_data->ref_count = INT_MAX;
    printf("\n [위험] ref_count as INT_MAX: %d\n", my_data->ref_count);
    // 3. 여기서 한 번 더 참조(retain)하면 오버플로우 발생!
    retain(my_data);
    printf("\n [Result] ref_count as INT_MAX: %d\n", my_data->ref_count);

    // 4. 이제 누군가 release를 호출하면?    release(my_data);
    if (my_data->ref_count < 0){
        printf("\n [Critical Bug] ref_count is negative: %d\n", my_data->ref_count);
        release(my_data);
    } 
// 5. 이미 해제된 메모리에 접근 시도 (Dangling Pointer)
    printf("%d\n", *(my_data->value)); 
    return 0;
}