#!/bin/bash

# TODO: Increase loop unroll bounds and adjust CLEN for secretbox_open

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
grep -v "llvm\.lifetime" ll/crypto_secretbox.cref.O2.ll > ll/crypto_secretbox.cref.O2.nolifetime.ll || err "Failed to create new non-lifetime file"
grep -v "llvm\.lifetime" ll/crypto_secretbox.asm.O2.ll > ll/crypto_secretbox.asm.O2.nolifetime.ll || err "Failed to create new non-lifetime file"

# Clear log file
rm -f $LOGFILE

# Run ctverif on crypto_secretbox for all files
CTVERIF_SECRETBOX_ARGS="-v 20 _crypto_secretbox_wrapper crypto_secretbox_ctverifwrapper.c"
#run_ctverif "$CTVERIF_SECRETBOX_ARGS ll/crypto_secretbox.cref.ll"
#run_ctverif "$CTVERIF_SECRETBOX_ARGS ll/crypto_secretbox.cref.O2.nolifetime.ll"
run_ctverif "$CTVERIF_SECRETBOX_ARGS ll/crypto_secretbox.asm.ll"
#run_ctverif "$CTVERIF_SECRETBOX_ARGS ll/crypto_secretbox.asm.O2.nolifetime.ll"

# Run ctverif on crypto_secretbox_open for all files
CTVERIF_SECRETBOX_OPEN_ARGS="-v 20 _crypto_secretbox_open_wrapper crypto_secretbox_open_ctverifwrapper.c"
#run_ctverif "$CTVERIF_SECRETBOX_OPEN_ARGS ll/crypto_secretbox.cref.ll"
#run_ctverif "$CTVERIF_SECRETBOX_OPEN_ARGS ll/crypto_secretbox.cref.O2.nolifetime.ll"
#run_ctverif "$CTVERIF_SECRETBOX_OPEN_ARGS ll/crypto_secretbox.asm.ll"
#run_ctverif "$CTVERIF_SECRETBOX_OPEN_ARGS ll/crypto_secretbox.asm.O2.nolifetime.ll"

# Clean up nolifetime ll files
rm -f ll/crypto_secretbox.cref.O2.nolifetime.ll ll/crypto_secretbox.asm.O2.nolifetime.ll 

