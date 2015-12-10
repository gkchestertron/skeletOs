.data
cur_irq: 
    .long 0

.text
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
    push %eax
    mov $0, %eax
    jmp irq_common_stub

# 33: IRQ1
_irq1:
    push %eax
    mov $1, %eax
    jmp irq_common_stub
   
# 34: IRQ2
_irq2:
    push %eax
    mov $2, %eax
    jmp irq_common_stub

# 35: IRQ3
_irq3:
    push %eax
    mov $3, %eax
    jmp irq_common_stub

# 36: IRQ4
_irq4:
    push %eax
    mov $4, %eax
    jmp irq_common_stub

# 37: IRQ5
_irq5:
    push %eax
    mov $5, %eax
    jmp irq_common_stub

# 38: IRQ6
_irq6:
    push %eax
    mov $6, %eax
    jmp irq_common_stub

# 39: IRQ7
_irq7:
    push %eax
    mov $7, %eax
    jmp irq_common_stub

# 40: IRQ8
_irq8:
    push %eax
    mov $8, %eax
    jmp irq_common_stub

# 41: IRQ9
_irq9:
    push %eax
    mov $9, %eax
    jmp irq_common_stub

# 42: IRQ10
_irq10:
    push %eax
    mov $10, %eax
    jmp irq_common_stub

# 43: IRQ11
_irq11:
    push %eax
    mov $11, %eax
    jmp irq_common_stub

# 44: IRQ12
_irq12:
    push %eax
    mov $12, %eax
    jmp irq_common_stub

# 45: IRQ13
_irq13:
    push %eax
    mov $13, %eax
    jmp irq_common_stub

# 46: IRQ14
_irq14:
    push %eax
    mov $14, %eax
    jmp irq_common_stub

# 47: IRQ15
_irq15:
    push %eax
    mov $15, %eax
    jmp irq_common_stub

# irq dummy common stub until I figure out why the frack these things are behaving
irq_common_stub:
    mov %eax, cur_irq
    pop %eax
    pushal
    mov (cur_irq), %eax
    push %eax
    call default_handler
    pop %eax
    popal
    iret
