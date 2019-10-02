#!/bin/sh

PROGRAMNAME=$(basename $0)
PREFIX='SPLITTED_FILE'

if [[ $# != 2 ]]; then
    exit 1
fi

FILENAME=$1
SIZE=$2

if [[ -f $FILENAME ]]; then
    if [[ $SIZE =~ ^[0-9]+$ && $SIZE != 0 ]]; then
        sha256sum $FILENAME > SPLITTED_CHECK_SHA256SUM
        split -b ${SIZE}'M' $FILENAME $PREFIX
        tar -cf SPLITTED_TAR.tar SPLITTED_FILE* SPLITTED_CHECK_SHA256SUM
        echo "Done."
        exit
    else
        exit 1
    fi
else
    exit 1
fi
