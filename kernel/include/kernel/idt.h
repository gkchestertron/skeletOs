#ifndef _KERNEL_IDT_H
#define _KERNEL_IDT_H

#include <stddef.h>

void idt_set_gate(unsigned char num, unsigned long base, unsigned short sel, unsigned char flags);
void idt_install(void);

#endif
