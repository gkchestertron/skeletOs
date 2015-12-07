#ifndef _KERNEL_TTY_H
#define _KERNEL_TTY_H

#include <stddef.h>

uint8_t inb(uint16_t port);
char get_scancode();
char get_char();

#endif
