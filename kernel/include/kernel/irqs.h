#ifndef _KERNEL_IRQS_H
#define _KERNEL_IRQS_H

#include <stddef.h>
#include <kernel/io.h>

void irq_remap(void);
void irq_install(void);
void default_handler();
void timer();
 
#endif


