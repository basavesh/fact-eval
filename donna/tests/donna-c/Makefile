CFLAGS=-Wmissing-prototypes -Wdeclaration-after-statement -O2 -Wall
CFLAGS_32=-m32

targets: curve25519-donna.a curve25519-donna-c64.a

test: test-donna-c64

speed: speed-curve25519-donna-c64

clean:
	rm -f *.o *.a *.pp test-curve25519-donna test-curve25519-donna-c64 speed-curve25519-donna speed-curve25519-donna-c64 test-noncanon-curve25519-donna test-noncanon-curve25519-donna-c64

curve25519-donna.a: curve25519-donna.o
	llvm-ar-6.0 rc curve25519-donna.a curve25519-donna.o
	llvm-ranlib-6.0 curve25519-donna.a

curve25519-donna.o: curve25519-donna.c
	clang-6.0 -c curve25519-donna.c $(CFLAGS) $(CFLAGS_32)

curve25519-donna-c64.a: curve25519-donna-c64.o
	llvm-ar-6.0 rc curve25519-donna-c64.a curve25519-donna-c64.o
	llvm-ranlib-6.0 curve25519-donna-c64.a

curve25519-donna-c64.o: curve25519-donna-c64.c
	clang-6.0 -c curve25519-donna-c64.c $(CFLAGS)

test-donna: test-curve25519-donna
	./test-curve25519-donna | head -123456 | tail -1

test-donna-c64: test-curve25519-donna-c64
	./test-curve25519-donna-c64 | head -123456 | tail -1

test-curve25519-donna: test-curve25519.c curve25519-donna.a
	clang-6.0 -o test-curve25519-donna test-curve25519.c curve25519-donna.a $(CFLAGS) $(CFLAGS_32)

test-curve25519-donna-c64: test-curve25519.c curve25519-donna-c64.a
	clang-6.0 -o test-curve25519-donna-c64 test-curve25519.c curve25519-donna-c64.a $(CFLAGS)

speed-curve25519-donna: speed-curve25519.c curve25519-donna.a
	clang-6.0 -o speed-curve25519-donna speed-curve25519.c curve25519-donna.a $(CFLAGS) $(CFLAGS_32)

speed-curve25519-donna-c64: speed-curve25519.c curve25519-donna-c64.a
	clang-6.0 -o speed-curve25519-donna-c64 speed-curve25519.c curve25519-donna-c64.a $(CFLAGS)

test-sc-curve25519-donna-c64: test-sc-curve25519.c curve25519-donna-c64.a
	clang-6.0 -o test-sc-curve25519-donna-c64 -O test-sc-curve25519.c curve25519-donna-c64.a test-sc-curve25519.s $(CFLAGS)

test-noncanon-donna: test-noncanon-curve25519-donna
	./test-noncanon-curve25519-donna

test-noncanon-donna-c64: test-noncanon-curve25519-donna-c64
	./test-noncanon-curve25519-donna-c64

test-noncanon-curve25519-donna: test-noncanon.c curve25519-donna.a
	clang-6.0 -o test-noncanon-curve25519-donna test-noncanon.c curve25519-donna.a $(CFLAGS) $(CFLAGS_32)

test-noncanon-curve25519-donna-c64: test-noncanon.c curve25519-donna-c64.a
	clang-6.0 -o test-noncanon-curve25519-donna-c64 test-noncanon.c curve25519-donna-c64.a $(CFLAGS)
