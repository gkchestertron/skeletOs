# IRQ handlers
.global _irq0
.global _irq1
.global _irq2
.global _irq3
.global _irq4
.global _irq5
.global _irq6
.global _irq7
.global _irq8
.global _irq9
.global _irq10
.global _irq11
.global _irq12
.global _irq13
.global _irq14
.global _irq15

# 32: IRQ0
_irq0:
   	pushal
    cld
    call timer
    popal
    iret

# 33: IRQ1
_irq1:
	pushal
    cld
    call keyboard
    popal
    iret
   
# 34: IRQ2
_irq2:
    jmp irq_common_stub

# 35: IRQ3
_irq3:
    jmp irq_common_stub

# 36: IRQ4
_irq4:
    jmp irq_common_stub

# 37: IRQ5
_irq5:
    jmp irq_common_stub

# 38: IRQ6
_irq6:
    jmp irq_common_stub

# 39: IRQ7
_irq7:
    jmp irq_common_stub

# 40: IRQ8
_irq8:
    jmp irq_common_stub

# 41: IRQ9
_irq9:
    jmp irq_common_stub

# 42: IRQ10
_irq10:
    jmp irq_common_stub

# 43: IRQ11
_irq11:
    jmp irq_common_stub

# 44: IRQ12
_irq12:
    jmp irq_common_stub

# 45: IRQ13
_irq13:
    jmp irq_common_stub

# 46: IRQ14
_irq14:
    jmp irq_common_stub

# 47: IRQ15
_irq15:
    jmp irq_common_stub

# irq dummy common stub until I figure out why the frack these things are behaving
irq_common_stub:
    pushal
    cld
    call default_handler
    popal
    iret
