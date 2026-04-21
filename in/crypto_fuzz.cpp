#include <cstring>
#include <openssl/evp.h>
#include <cstdint>

#define MAX_INPUT_SIZE 65536

static EVP_MD_CTX* md_ctx = nullptr;
static unsigned char output[32];

void init_crypto() {
    if (!md_ctx) {
        md_ctx = EVP_MD_CTX_new();
    }
}

void process_input(const unsigned char* data, size_t len) {
    if (len == 0 || len > MAX_INPUT_SIZE) return;
    
    init_crypto(); // 지연 초기화 보장
    
    // 1. 정상적인 암호화 경로 (CPU 부하 유도)
    EVP_DigestInit_ex(md_ctx, EVP_sha256(), nullptr);
    EVP_DigestUpdate(md_ctx, data, len);
    EVP_DigestFinal_ex(md_ctx, output, nullptr);
    
    // 2. 취약점 유도 (자동차 진단 프로토콜의 특수 커맨드 모사)
    if (len >= 4) {
        // Little Endian 기준으로 DEADBEEF 체크
        uint32_t magic = *(uint32_t*)data;
        if (magic == 0xDEADBEEF) {
            // 의도적인 Null Pointer Dereference 발생
            *(volatile int*)0 = 0; 
        }
    }
}

// AFL++ Persistent Mode 핵심 루프
#ifdef __AFL_HAVE_MANUAL_CONTROL
    __AFL_FUZZ_INIT();
#endif

int main() {
    #ifdef __AFL_HAVE_MANUAL_CONTROL
        __AFL_INIT();
    #endif

    // 가상 메모리 매핑을 통한 초고속 입력 처리
    unsigned char *buf = __AFL_FUZZ_TESTCASE_BUF;
    
    while (__AFL_LOOP(10000)) {
        int len = __AFL_FUZZ_TESTCASE_LEN;
        process_input(buf, len);
    }
    
    if (md_ctx) EVP_MD_CTX_free(md_ctx);
    return 0;
}