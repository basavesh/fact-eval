#include "internal/constant_time_locl.h"
#include "ssl_locl.h"
#include "internal/cryptlib.h"

#include <openssl/md5.h>
#include <openssl/sha.h>

void _md_final_raw(void *ctx, unsigned char *md_out)
{
  SHA_CTX *sha1 = ctx;
  l2n(sha1->h0, md_out);
  l2n(sha1->h1, md_out);
  l2n(sha1->h2, md_out);
  l2n(sha1->h3, md_out);
  l2n(sha1->h4, md_out);
}
