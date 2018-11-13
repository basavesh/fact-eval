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
grep -v "llvm\.lifetime" ll/bignum.O2.fpic.ll > ll/bignum.O2.fpic.nolifetime.ll || err "Failed to create new non-lifetime file"

# Clear log file
rm -f $LOGFILE

# Run ctverif
CTVERIF_ARGS="-v 5 _f_mpi_exp_mod_wrapper bignum_ctverifwrapper.c"
run_ctverif "$CTVERIF_ARGS ll/bignum.ll"
run_ctverif "$CTVERIF_ARGS ll/bignum.O2.fpic.nolifetime.ll"

# Clean up nolifetime ll files
rm -f ll/bignum.O2.fpic.nolifetime.ll
