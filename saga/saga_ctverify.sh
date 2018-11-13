#!/bin/bash

LOGFILE=verifs/ctverif.log

err() {
    echo $1
    exit 1
}

run_ctverif() {
    echo "///////////////////////////// new ctverif run ////////////////////////////" >> $LOGFILE
    echo "//// Running ctverif with args \"$1\" ////" >> $LOGFILE
    (time $VERIFSH $1) &>> $LOGFILE && echo "SUCCESS with args \"$1\"" || echo "ERROR with args \"$1\""
    echo "//////////////////////////////////////////////////////////////////////////" >> $LOGFILE
    echo "" >> $LOGFILE
}

# Check that verif.sh is pointed to by env var
if [ -z ${VERIFSH} ]; then err "VERIFSH variable is not defined"; fi

# Clear log file
rm -f $LOGFILE

# Run ctverif
CTVERIF_ARGS="-v 40 _aesni_cbc_hmac_sha1_cipher_wrapper saga_ctverifwrapper.c saga_stub.c"
run_ctverif "$CTVERIF_ARGS ll/20170717_latest.ll"
run_ctverif "$CTVERIF_ARGS ll/20170717_latest.O3.ll"
#run_ctverif "$CTVERIF_ARGS ll/20110823_fast.ll"
#run_ctverif "$CTVERIF_ARGS ll/20110823_fast.O3.ll"
#run_ctverif "$CTVERIF_ARGS ll/20170717_latest_raw.ll"
#run_ctverif "$CTVERIF_ARGS ll/20170717_latest_raw.O3.ll"

