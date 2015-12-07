#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include <kernel/tty.h>
#include <kernel/key.h>

void kernel_early(void) {
	terminal_initialize();
}

void kernel_main(void) {
	printf(" skeletOs welcomes you!\n");
    printf("\nskOsh?> ");
    int lastc = 0;

    while (1) {
        char c = get_char();
        if (c != lastc) {
            if (c == '\n')
                printf("\nskOsh?> ");
            else
                putchar(c);
        }
        lastc = c;
    }
}
