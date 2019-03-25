#include <stddef.h>

struct AES_KEY;
//struct AES_KEY {
//  /*secret*/ uint32_t rd_key;
//  /*public*/ int32_t rounds;
//};

struct SHA_CTX;
//struct SHA_CTX {
//  /*secret*/ uint32_t h;
//  /*secret*/ uint32_t Nl;
//  /*secret*/ uint32_t Nh;
//  /*secret*/ uint8_t data;
//  /*public*/ uint32_t num;
//};

void aesni_cbc_encrypt(const unsigned char *in, unsigned char *out, size_t length, const struct AES_KEY *key, unsigned char *ivec, int enc) {}

void _sha1_update(struct SHA_CTX *c, const void *data, size_t len) {}

//int SHA1_Final(unsigned char *md, struct SHA_CTX *c) { return 0; }
void SHA1_Final(unsigned char *md, struct SHA_CTX *c) {}

void sha1_block_data_order(struct SHA_CTX *c, const void *p, size_t num) {}
