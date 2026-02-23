#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <openssl/aes.h>
#include <openssl/ec.h>
#include <openssl/evp.h>
#include <openssl/pem.h>
#include <oqs/oqs.h>

// seed
void generate_seed(unsigned char *seed, size_t len) {
    srand(time(NULL));
    for (size_t i = 0; i <len; i++) {
        seed[i] = rand() & 0xFF;
    }
}
// AES-256-GCM
void aes_gcm_test(unsigned char *key, unsigned char *iv) {
    EVP_CIPHER_CTX *ctx;
//    unsigned char key[32] = {0};
//    unsigned char iv[12] = {0};
    unsigned char plaintext[64] = "This is a test message for AES-256-G";
    unsigned char ciphertext[128];
    int len, ciphertext_len;

    ctx = EVP_CIPHER_CTX_new();
    EVP_EncryptInit_ex(ctx, EVP_aes_256_gcm(), NULL, key, iv);
    EVP_EncryptUpdate(ctx, ciphertext, &len, plaintext, strlen((char *)plaintext));
    ciphertext_len = len;
    EVP_EncryptFinal_ex(ctx, ciphertext + len, &len);
    ciphertext_len += len;
    EVP_CIPHER_CTX_free(ctx);
}

void ecc_test() {
    EVP_PKEY_CTX *ctx;
    EVP_PKEY *pkey = NULL;
    ctx = EVP_PKEY_CTX_new_id(EVP_PKEY_EC, NULL);
    EVP_PKEY_keygen_init(ctx);
    EVP_PKEY_CTX_set_ec_paramgen_curve_nid(ctx, NID_X9_62_prime256v1);
    EVP_PKEY_keygen(ctx, &pkey);
    EVP_PKEY_free(pkey);
}
//PQC kyber (liboqs 기반)
void pqc_kyber_test(){
    OQS_KEM *kem = OQS_KEM_new(OQS_KEM_alg_kyber_512);
    uint8_t pk[OQS_KEM_kyber_512_length_public_key];
    uint8_t sk[OQS_KEM_kyber_512_length_secret_key];
    uint8_t ct[OQS_KEM_kyber_512_length_ciphertext];
    uint8_t ss[OQS_KEM_kyber_512_length_shared_secret];
    OQS_KEM_keypair(kem, pk , sk);
    OQS_KEM_encaps(kem, ct, ss, pk);
    OQS_KEM_free(kem);
}
int main() {
    clock_t start, end;
    unsigned char aes_key[32];
    unsigned char iv[12];
    generate_seed(aes_key, sizeof(aes_key));
    generate_seed(iv, sizeof(iv));
    start = clock();
    aes_gcm_test(aes_key, iv);
    end = clock();
    printf("AES-256-GCM: %f sec\n", (double)(end - start) /CLOCKS_PER_SEC);

    start = clock();
    ecc_test();
    end = clock();
    printf("ECC256: %f sec\n", (double)(end - start) /CLOCKS_PER_SEC);

    start = clock();
    pqc_kyber_test();
    end = clock();
    printf("PQC Kyber: %f sec\n", (double)(end - start) / CLOCKS_PER_SEC);

    return 0;
}