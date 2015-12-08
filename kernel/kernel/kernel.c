#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include <kernel/gdt.h>
#include <kernel/idt.h>
#include <kernel/isrs.h>
#include <kernel/irqs.h>
#include <kernel/tty.h>
#include <kernel/key.h>

void kernel_main(void) {
    gdt_install(); 
    idt_install();
    isrs_install();
    irq_install();
    __asm__ __volatile__ ("sti");
	terminal_initialize();
	printf(" skeletOs welcomes you!\n");
    printf("\nskOsh?> ");
    int lastc = 0;
}
