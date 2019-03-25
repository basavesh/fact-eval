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
CTVERIF_ARGS="-v 40 __ssl3_cbc_digest_record_wrapper s3_cbc_ctverifwrapper.c s3_cbc_stub.c"
run_ctverif "$CTVERIF_ARGS ll/s3_cbc.ll"
run_ctverif "$CTVERIF_ARGS ll/s3_cbc.O3.ll"

