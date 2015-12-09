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

int timers = 0;

void timer() {
    printf("timer");
}

void keyboard() {
    printf("---keypress---");

    outportb(0x21, ~0x03);
    outportb(0xA1, ~0x00);
}

void other_handler() {
    printf("---other---");
}

void kernel_early (void) {
    gdt_install(); 
    idt_install();
    isrs_install();
    irq_install();
	terminal_initialize();
	printf(" skeletOs welcomes you!\n");
    printf("\nskOsh~> ");
    __asm__ __volatile__ ("sti");
}

void kernel_main(void) {
    for(;;) {
        asm("hlt");
     }
}
