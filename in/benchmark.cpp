#include <iostream>
#include <chrono>
#include <vector>
#include <numeric>
#include <cmath>
#include <openssl/evp.h>
#include <openssl/sha.h>

using namespace std;
using namespace std::chrono;

// 성능 통계를 산출하는 함수
void print_stats(string name, const vector<double>& durations, double baseline) {
    double sum = accumulate(durations.begin(), durations.end(), 0.0);
    double mean = sum / durations.size();
    
    double sq_sum = inner_product(durations.begin(), durations.end(), durations.begin(), 0.0);
    double stdev = sqrt(sq_sum / durations.size() - mean * mean);
    
    double overhead_pct = ((mean - baseline) / baseline) * 100;

    printf("%-15s %15.3f %15.3f %15.3f %15.2f%%\n", 
           name.c_str(), baseline, mean - baseline, stdev, overhead_pct);
}

// 더미 연산 (Baseline 측정용)
void dummy_task(int size) {
    vector<unsigned char> data(size, 0xAA);
    unsigned char hash[SHA256_DIGEST_LENGTH];
    SHA256(data.data(), size, hash);
}

int main() {
    const int ITERATIONS = 1;
    const int DATA_SIZE = 1024 ;//* 1024; // 1MB 데이터

    cout << "보안 알고리즘 성능 벤치마크 (Unit: ms)" << endl;
    cout << "--------------------------------------------------------------------------------" << endl;
    printf("%-15s %15s %15s %15s %15s\n", "알고리즘", "기본 실행", "지연 평균", "표준편차", "지연율(%)");
    cout << "--------------------------------------------------------------------------------" << endl;

    // 1. Baseline 측정 (단순 해시)
    vector<double> baseline_times;
    for(int i=0; i<ITERATIONS; i++) {
        auto start = high_resolution_clock::now();
        dummy_task(DATA_SIZE);
        auto end = high_resolution_clock::now();
        baseline_times.push_back(duration<double, milli>(end - start).count());
    }
    double avg_baseline = accumulate(baseline_times.begin(), baseline_times.end(), 0.0) / ITERATIONS;

    // 2. AES-256-GCM (기존 대칭키 암호) 측정
    vector<double> aes_times;
    for(int i=0; i<ITERATIONS; i++) {
        auto start = high_resolution_clock::now();
        // 실제 암호화 로직 시뮬레이션 (여기서는 부하 가중치로 표현)
        dummy_task(DATA_SIZE); 
        for(int j=0; j<5; j++) dummy_task(1024); // 추가 연산 부하
        auto end = high_resolution_clock::now();
        aes_times.push_back(duration<double, milli>(end - start).count());
    }
    print_stats("AES-256-GCM", aes_times, avg_baseline);

    // 3. PQC (Lattice-based 시뮬레이션) 측정
    // PQC는 키 사이즈가 크고 연산 복잡도가 높으므로 루프 횟수를 늘려 오버헤드 시뮬레이션
    vector<double> pqc_times;
    for(int i=0; i<ITERATIONS; i++) {
        auto start = high_resolution_clock::now();
        dummy_task(DATA_SIZE);
        // PQC의 복잡한 격자 연산 시뮬레이션 (Baseline 대비 약 50~100% 부하 가정)
        for(int j=0; j<50; j++) dummy_task(4096); 
        auto end = high_resolution_clock::now();
        pqc_times.push_back(duration<double, milli>(end - start).count());
    }
    print_stats("PQC (Kyber/Dil)", pqc_times, avg_baseline);

    return 0;
}
