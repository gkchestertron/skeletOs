#ifndef _KERNEL_IRQS_H
#define _KERNEL_IRQS_H

#include <stddef.h>
#include <kernel/isrs.h>
#include <kernel/io.h>

void outportb (unsigned short _port, unsigned char _data);
void irq_install_handler(int irq, void (*handler)(struct regs *r));
void irq_uninstall_handler(int irq);
void irq_remap(void);
void irq_install(void);
void _irq_handler(struct regs *r);

#endif


