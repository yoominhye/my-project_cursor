#include <iostream>
#include <cstddef>
#include <algorithm>
#include <stdexcept>
#include <algorithm>

class Buffer {
    size_t n_;
    int* data_;
public:
    Buffer(size_t n) : n_(n), data_(new int[n]) {}
    ~Buffer() { 
        delete[] data_; 
    } //destructor must be defined as an array delete since data_ is allocated with new[]
    Buffer(const Buffer& other) : n_(other.n_), data_(new int[other.n_]){
        std::copy(other.data_, other.data_ + n_, data_);
    } /* Copy constructor*/
    Buffer& operator=(const Buffer& other) {
        if (this == &other) {
            return *this;
        }
        delete[] data_;
        n_ = other.n_;
        data_ = new int[n_];
        std::copy(other.data_, other.data_ + n_, data_);
        return *this;
    }
    /* Copy assignment operator */
    size_t size() const {return n_;}
    int& at(size_t i) {
        if (i >= n_) {
            throw std:: out_of_range("Index out of bounts!");
        }
        return data_[i];
    } // index out of bounds check is not implemented

};

void fill_with (Buffer& b, int v) {
    for (size_t i = 0; i < b.size(); ++i) {
        b.at(i) = i;
    } 
}

void analyze_payload(Buffer& buffer) {
    try {
        // 페이로드의 첫 4바이트를 핵심 헤더(매직 넘버 등)로 가정하고 분석
        std::cout << "[*] Analyzing payload header..." << std::endl;
        for (size_t i = 0; i < 4; ++i) {
            // 조작된 작은 크기의 페이로드가 들어와도 at()에서 OOB(Out-of-bounds) 리드를 방어합니다.
            std::cout << "Byte " << i << ": 0x" << std::hex << static_cast<int>(buffer.at(i)) << std::endl;
        }
        std::cout << "[+] Header analyzed successfully." << std::endl;
    }
    catch (const std::out_of_range& e) {
        std::cerr << "[-] Segmentation Fault Prevented! " << e.what() << std::endl;
    }
}
int main() {
    Buffer b (10);
    fill_with(b,0);
    Buffer b1 = b;/* Rule of 3 violation: Buffer is not copyable, but
    fill_with takes it by reference, so it is not a problem here. 
    However, if we were to copy Buffer, we would need to implement 
    a copy constructor and copy assignment operator to avoid double deletion issues.
    */
    std::cout << "---- Normal Payload Test ----" << std::endl;
    Buffer normal_payload(16);
    normal_payload.at(0) = 0xDE;
    normal_payload.at(1) = 0xAD;
    analyze_payload(normal_payload);
    std::cout << "\n--- Malicious Payload Test ---" << std::endl;
    Buffer short_payload(2);
    analyze_payload(short_payload);
    return 0;
}