#include <iostream>
#include <vector>
#include <string>
#include <ctime>
//#include <cmath>
#include <openssl/hmac.h>
#include <openssl/evp.h>
std::vector<uint8_t> base32_decode(const std::string& input) {
    std::vector<uint8_t> buffer;
    int bits_left = 0;
    uint32_t current_byte = 0;
    for (char c: input) {
        if (c == ' ' || c =='-') continue;
        int val = 0;
        if (c >= 'A' && c <= 'Z') val = c -'A';
        else if (c >= 'a' && c <= 'z') val = c -'a';
        else if (c >= '2' && c <= '7') val = c - '2' + 26;
        else continue;
        current_byte <<= 5;
        current_byte |= val;
        bits_left += 5;
        if (bits_left >= 8) {
            buffer.push_back((current_byte >> (bits_left -8)) & 0xFF);
            bits_left -= 8;
        }
    }
    return buffer;
}
//std::vector<uint8_t> base32_decode(const std::string& secret);
void generate_totp(const std::string& b32_secret) {
    std::vector<uint8_t> key = base32_decode(b32_secret);
    long long counter = std::time(nullptr) / 30;
    uint8_t msg[8];
    for (int i = 7; i >=0; --i) {
        msg[i] = counter & 0xff;
        counter >>= 8;
    }
    unsigned int len;
    uint8_t hash[EVP_MAX_MD_SIZE];
    HMAC(EVP_sha1(), key.data(), key.size(), msg, 8, hash, &len);
    int offset = hash[len - 1] & 0xf;
    uint32_t bin_code =  (((hash[offset] & 0x7f) << 24)
                        | ((hash[offset+1] & 0xff) << 16)
                        | ((hash[offset+2] & 0xff) << 8)
                        | (hash[offset+3] & 0xff));

    uint32_t otp = bin_code % 1000000;
    printf("Your TOTP: %06d\n", otp);
}

int main(int argc, char *argv[]){
    if (argc < 2) {
        std::cout << "Usage: ./totp <base32_secrete>" << std::endl;
        return 1;
    }
    generate_totp(argv[1]);
    return 0;
}
/*
보안
핸드폰 OTP 앱은 보안 칩(Enclave) 등에 키를 숨겨두어 안전하지만, 직접 만든 봇은 비밀 키(base32-secret)가 텍스트 형태로 노출될 위험이 있습니다.

코드나 설정 파일(config.json 등)을 GitHub 같은 곳에 실수로 올리지 않도록 주의하세요.

컴퓨터 자체의 보안이 뚫리면 OTP 키도 함께 털릴 수 있다는 점만 명심하시면 됩니다.
*/