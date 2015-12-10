#ifndef _KERNEL_IRQS_H
#define _KERNEL_IRQS_H

void irq_remap(void);
void irq_install(void);
void set_irq_handler(int irq_num, void (*handler)(void));
void default_handler();
void timer();
 
#endif


