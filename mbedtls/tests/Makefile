BUILD := build
MBEDTLS = mbedtls-2.8.0
export CC := clang
export CXX := clang++

CFLAGS = -m64 -pedantic -pedantic-errors -std=gnu11 -Werror -Wall -Wextra -Wshadow -Wpointer-arith -Wcast-qual -Wformat=2 -Wstrict-prototypes -Wmissing-prototypes -Wno-newline-eof
CFLAGS += -I $(MBEDTLS)/include

# debug mode enabled via `make DEBUG=1 foo`
DEBUG ?= 0
ifeq ($(DEBUG),1)
CFLAGS += -g -Og
else
CFLAGS += -O2
LDFLAGS += -flto
endif

all: mbedtls_testbench

build/Makefile:
	mkdir -p build && cd build && cmake ../$(MBEDTLS)

build/library/libmbedcrypto.a: build/Makefile
	+$(MAKE) -C build

../bignum.o: ../bignum.fact
	+$(MAKE) -C ../

../bignum.fpic.o: ../bignum.fact
	+$(MAKE) -C ../

../bignum.h: ../bignum.fact
	+$(MAKE) -C ../

build/libmbed_bench.a: build/library/libmbedcrypto.a bignum_fact.o ../bignum.o
	cp $< $@
	ar r $@ _f_bignum.o bignum_fact.o

bignum_fact.o: ../bignum.h

mbedtls_testbench: CFLAGS += -fpic
mbedtls_testbench: LDFLAGS += -Lbuild
mbedtls_testbench: LDLIBS += -lmbed_bench -lgmp -lm
mbedtls_testbench: mbedtls_testbench.c build/libmbed_bench.a
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o $@ $(LDLIBS)

.PHONY: clean
clean:
	rm -rf build bignum_fact.o mbedtls_testbench mbedtls_testbench.o
	+$(MAKE) -C ../ clean
