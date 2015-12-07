#!/bin/sh
#no longer in use because calling qemu with -kernel flag instead
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/skeletos.kernel isodir/boot/skeletos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "skeletos" {
	multiboot /boot/skeletos.kernel
}
EOF
grub-mkrescue -o skeletos.iso isodir
