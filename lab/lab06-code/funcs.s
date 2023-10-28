.text
.global my_max
.global my_pow

# Computes maximum of 2 arguments
# You can assume argument 1 (x) is in %edi
# You can assume argument 2 (y) is in %esi
# If you need to store temporary values, you may use the following registers:
#   %eax, %ecx, %edx, %esi, %edi, %r8d, %r9d, %r10d, %r11d
# DO NOT USE other registers. We will learn why soon.
my_max:
    cmpl %edi, %esi    # %esi < %edi -> i < j then jump
    jl MY_LABEL
    movl %esi, %eax
    ret
MY_LABEL:
    movl %edi, %eax
    ret

# Computes base^exp
# You can assume argument 1 (base) is in %edi
# You can assume argument 2 (exp) is in %esi
# If you need to store temporary values, you may use the following registers:
#   %eax, %ecx, %edx, %esi, %edi, %r8d, %r9d, %r10d, %r11d
# DO NOT USE other registers. We will learn why soon.
my_pow:
    movl $2, %r11d
    movl %edi, %r10d
LOOP_BEGIN:
    cmpl %esi, %r11d
    jle LOOPING
    movl %r10d, %eax 
    ret
LOOPING:
    imul %edi, %r10d
    add $1, %r11d
    jmp LOOP_BEGIN
