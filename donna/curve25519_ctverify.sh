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

# Remove lines with llvm.lifetime from ll files
grep -v "llvm\.lifetime" ll/curve25519-c64.O2.ll > ll/curve25519-c64.O2.nolifetime.ll || err "Failed to create new non-lifetime file"

# Clear log file
rm -f $LOGFILE

# Run ctverif
CTVERIF_ARGS="-v 2 curve25519_donna_wrapper curve25519_ctverifwrapper.c"
#run_ctverif "$CTVERIF_ARGS ll/curve25519-c64.ll"
run_ctverif "$CTVERIF_ARGS ll/curve25519-c64.O2.nolifetime.ll"

# Clean up nolifetime ll files
rm -f ll/curve25519-c64.O2.nolifetime.ll
