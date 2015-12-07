#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include <kernel/tty.h>

void kernel_early(void) {
	terminal_initialize();
}

void kernel_main(void) {
	printf("skeletOs welcomes you!\n");
    printf("\nskOsh>");
    int lastc = 0;

    while (lastc < 30) {
        putchar(65);
        lastc++;
    }

    /* while (1) { */
    /*     int c = (int) getScancode(); */
    /*     if (c != lastc) { */
    /*         putchar(c); */
    /*     } */
    /*     lastc = c; */
    /* } */
}
