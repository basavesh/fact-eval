default:
	@echo "Please make a specific target" >&2
	@false

bench:
	cd donna/tests && make bench
	cd crypto_secretbox/tests && make bench
	cd openssl/tests && make bench
	cd saga/tests && make bench
	cd mbedtls/tests && make bench
