#ifndef _KERNEL_GDT_H
#define _KERNEL_GDT_H

#include <stddef.h>

void gdt_set_gate(int num, unsigned long base, unsigned long limit, unsigned char access, unsigned char gran);
void gdt_install(void);

#endif
