#!/bin/sh
set -e
if [ "$1" == "-b" ]; then
    . ./build.sh
fi

if [ "$1" == "-h" ]; then
    echo pass -b to build
    exit
fi

qemu-system-i386 -kernel kernel/skeletos.kernel
