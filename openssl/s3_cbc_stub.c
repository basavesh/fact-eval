#include <stdint.h>

//void _md_transform(int32_t sha_type, uint8_t[216] ctx, uint8_t[] input) {}
void _md_transform(int ctx_type, void* ctx, const unsigned char *block) {}

//void _md_final_raw(int32_t sha_type, uint8_t[216] ctx, uint8_t[] input) {}
void _md_final_raw(int ctx_type, void* ctx, unsigned char *md_out) {}

