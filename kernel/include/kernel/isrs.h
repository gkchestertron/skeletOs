#ifndef _KERNEL_ISRS_H
#define _KERNEL_ISRS_H

void isrs_install(void);
void fault_handler(struct regs *r);

#endif
