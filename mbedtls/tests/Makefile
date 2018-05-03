FACT := $(shell readlink -f ../../../fact/fact.byte)
BUILD := build
MBEDTLS = mbedtls-2.8.0
#export CC := clang
#export CXX := clang++

CFLAGS = -m64 -pedantic -pedantic-errors -std=gnu11 -Werror -Wall -Wextra -Wshadow -Wpointer-arith -Wcast-qual -Wformat=2 -Wstrict-prototypes -Wmissing-prototypes
CFLAGS += -I $(MBEDTLS)/include
DEBUG ?= 0
ifeq ($(DEBUG),1)
CFLAGS += -g -Og
else
CFLAGS += -O2 -flto
endif

LDFLAGS += -Lbuild/library
LDLIBS += -lmbedcrypto -lgmp

all: mbedtls_testbench

build/Makefile:
	mkdir -p build && cd build && cmake ../$(MBEDTLS)

build/library/libmbedcrypto.a: build/Makefile
	+$(MAKE) -C build

mbedtls_testbench: build/library/libmbedcrypto.a

.PHONY: clean
clean:
	rm -rf build bignum_fact.o mbedtls_testbench
