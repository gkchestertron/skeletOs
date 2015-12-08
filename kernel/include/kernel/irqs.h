#ifndef _KERNEL_IRQS_H
#define _KERNEL_IRQS_H

#include <stddef.h>

void irq_install_handler(int irq, void (*handler)(struct regs *r));
void irq_uninstall_handler(int irq);
void irq_remap(void);
void irq_install(void);
void _irq_handler(struct regs *r);

#endif


