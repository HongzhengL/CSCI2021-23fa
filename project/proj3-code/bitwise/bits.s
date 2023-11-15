# Read the following instructions carefully
# You will provide your solution to this part of the project by
# editing the collection of functions in this source file.
#
# Some rules from Project 2 are still in effect for your assembly code here:
#  1. No global variables are allowed
#  2. You may not define or call any additional functions in this file
#  3. You may not use any floating-point assembly instructions
# You may assume that your machine:
#  1. Uses two's complement, 32-bit representations of integers.

# isZero - returns 1 if x == 0, and 0 otherwise
#   Argument 1: x
#   Examples: isZero(5) = 0, isZero(0) = 1
#   Rating: 1
.global isZero
isZero:
    cmp     $0, %edi        # compare argument 1 (x) to 0
	je      equalZero       # if equal, jump to equalZero
    movl    $0, %eax        # else, return 0
	ret
equalZero:
    movl    $1, %eax        # if x == 0, return 1
    ret

# bitNor - ~(x|y)
#   Argument 1: x
#   Argument 2: y
#   Example: bitNor(0x6, 0x5) = 0xFFFFFFF8
#   Rating: 1
.global bitNor
bitNor:
    orl     %esi, %edi    # %edi = x|y
    notl    %edi          # ~%edi = ~(x|y)
    movl    %edi, %eax    # return ~(x|y)
    ret

# distinctNegation - returns 1 if x != -x.
#     and 0 otherwise
#   Argument 1: x
#   Rating: 2
.global distinctNegation
distinctNegation:
    movl    %edi, %eax      # create a copy of x in %eax
    negl    %eax            # -x
    cmpl    %edi, %eax      # compare x to -x
    je      equalNegation   # if equal, jump to equalNegation
    movl    $1, %eax        # else, return 1
    ret
equalNegation:
    movl    $0, %eax        # if x == -x, return 0
    ret

# dividePower2 - Compute x/(2^n), for 0 <= n <= 30
#  Round toward zero
#   Argument 1: x
#   Argument 2: n
#   Examples: dividePower2(15,1) = 7, dividePower2(-33,4) = -2
#   Rating: 2
.global dividePower2
dividePower2:
    # If x is positive, we can simply shift x to the right by n bits
    # If x is negative, since the result rounds towards 0, we need to add an adjustment to the result
    # The adjustment is 2^n - 1, that is add 1 to the result if x has remainder
    # Then we can add the adjustment to x and shift the result to the right by n bits to get the final result
	movl	%esi, %ecx      # n = %ecx
	movl	$1, %eax        # let %eax = 1, prepare to shift
	sall	%ecx, %eax      # 1 << n
	decl    %eax            # (1 << n) - 1 -- create a mask of n lower bits as 1
	movl	%edi, %edx      # let %edx = x, prepare to get the sign bit
	sarl	$31, %edx       # get the sign bit of x
	andl	%edx, %eax      # [sign bit] & mask -- if x < 0, we need the adjustment. else, we don't.
	addl	%edi, %eax      # add the adjustment to x
	sarl	%ecx, %eax      # right shift by n bits to divide by 2^n
	ret

# getByte - Extract byte n from word x
#   Argument 1: x
#   Argument 2: n
#   Bytes numbered from 0 (least significant) to 3 (most significant)
#   Examples: getByte(0x12345678,1) = 0x56
#   Rating: 2
.global getByte
getByte:
    leal    (, %esi, 8), %ecx       # get %ecx = n * 8 in one cycle
	sarl	%cl, %edi               # right shift to clear the unwanted lower bits
	movzbl	%dil, %eax              # zero extend %dil to eliminate the upper 24 bits
	ret

# isPositive - return 1 if x > 0, return 0 otherwise
#   Argument 1: x
#   Example: isPositive(-1) = 0.
#   Rating: 2
.global isPositive
isPositive:
    cmp     $0, %edi        # compare argument 1 (x) to 0
    jle     notPositive     # if less than or equal to 0, jump to notPositive
    movl    $1, %eax        # if x > 0, return 1
    ret
notPositive:
    movl    $0, %eax        # else, return 0
    ret

# floatNegate - Return bit-level equivalent of expression -f for
#   floating point argument f.
#   Both the argument and result are passed as unsigned int's, but
#   they are to be interpreted as the bit-level representations of
#   single-precision floating point values.
#   When argument is NaN, return argument.
#   Argument 1: f
#   Rating: 2
.global floatNegate
floatNegate:
    movl    $0x7F800000, %esi
    andl    %edi, %esi                  # get the exponent part of f
    cmpl    $0x7F800000, %esi           # exponent == 0xFF
    je      checkMantissa               # then we need to determine if f is NaN
negateArg:
    xorl    $0x80000000, %edi           # flip the sign bit of f
    movl    %edi, %eax                  # return -f
    ret
checkMantissa:
    movl    $0x007FFFFF, %edx
    andl    %edi, %edx                  # get the mantissa part of f
    cmpl    $0, %edx                    # mantissa == 0
    je      negateArg                   # return -f
    movl    %edi, %eax                  # return f
    ret

# isLessOrEqual - if x <= y  then return 1, else return 0
#   Argument 1: x
#   Argument 2: y
#   Example: isLessOrEqual(4,5) = 1.
#   Rating: 3
.global isLessOrEqual
isLessOrEqual:
    cmp     %esi, %edi          # compare argument 1 (x) to argument 2 (y)
    jle     lessOrEqual         # if less than or equal to, jump to lessOrEqual
    movl    $0, %eax            # if x > y, return 0
    ret
lessOrEqual:
    movl    $1, %eax            # else, return 1
    ret

# bitMask - Generate a mask consisting of all 1's between
#   lowbit and highbit
#   Argument 1: highbit
#   Argument 2: lowbit
#   Examples: bitMask(5,3) = 0x38
#   Assume 0 <= lowbit <= 31, and 0 <= highbit <= 31
#   If lowbit > highbit, then mask should be all 0's
#   Rating: 3
.global bitMask
bitMask:
    # This function contains 3 steps:
    # Step 1: get highbit to its position
    # Step 2: generate a mask consisting of all 1's between lowbit and (highbit-1)
    # Step 3: combine the mask and highbit
	movl	%edi, %ecx      # move highbit to %ecx
	movl	$1, %eax        # move 1 to %eax
	sall	%cl, %eax       # 1 << highbit --- get highbit to its position
	subl	%esi, %ecx      # int numOfOne = highbit - lowbit  --- calculate the number of 1's in the mask
	js	    allZero         # if lowbit > highbit, return 0
	movl	$-1, %edx       # let %edx = 0b1111..1111
	sall	%cl, %edx       # -1 << (highbit - lowbit) --- shift numOfOne bits of 0's to the left
	notl	%edx            # ~(-1 << (highbit - lowbit))
	movl	%esi, %ecx      
	sall	%cl, %edx       # ~(-1 << (highbit - lowbit)) << lowbit -- flip it to get the mask
	orl	    %edx, %eax      # (1 << highbit) | (~(1 << (highbit - lowbit)) << lowbit) --- combine the mask and highbit
	ret
allZero:
	movl	$0, %eax
	ret

# addOK - Determine if can compute x+y without overflow
#   Argument 1: x
#   Argument 2: y
#   Example: addOK(0x80000000,0x80000000) = 0,
#            addOK(0x80000000,0x70000000) = 1,
#   Rating: 3
.global addOK
addOK:
    # only the following cases will overflow:
    #   signX    signY    signSum
    #      0        0        1   
    #      1        1        0
    # Therefore, we use (1 ^ sameSign) to denote if x and y have the same sign
    # If so, then %eax = 1, else %eax = 0
    # Then, we use (signX ^ signSum) to denote if x and sum have different sign
    # If so, then %edx = 1, else %edx = 0
    # Finally, when overflow, (1 ^ sameSign) & (signX ^ signSum) = 1, we store it in %eax
    # Then, we use xorl $1, %eax to return 0 when overflow, 1 when not overflow
    movl	%edi, %edx      # move x to %edx
	movl	%esi, %eax      # move y to %eax
	shrl	$31, %edx       # signX = x >> 31
	shrl	$31, %eax       # signY = y >> 31
	xorl	%edx, %eax      # sameSign = signX ^ signY, 0 when same sign
    xorl    $1, %eax        # let sameSign = 1 when x and y have the same sign
	addl	%esi, %edi      # sum = x + y
	shrl	$31, %edi       # signSum = sum >> 31
    xorl    %edi, %edx      # signX ^ signSum
    andl    %edx, %eax      # (1 ^ sameSign) & (signX ^ signSum)
    xorl    $1, %eax        # if x >> 31 == (x + y) >> 31, return 0
	ret

# floatScale64 - Return bit-level equivalent of expression 64*f for
#   floating point argument f.
#   Both the argument and result are passed as unsigned int's, but
#   they are to be interpreted as the bit-level representation of
#   single-precision floating point values.
#   When argument is NaN, return argument
#   Argument 1: f
#   Rating: 4
.global floatScale64
floatScale64:
    # We first extract the sign, exponent and mantissa of f
    # If it's too big to be represented as a float, we return f
    # If it's too small to be represented as a float, we return f
    # If it's a denorm, we shift the mantissa to the left by 6 bits
    # If it's a normalized number, we increase the exponent by 6
    # After increasing the exponent, if it's too big to be represented as a float, we return +INF
    # However, if the mantissa is big enough for a denorm, multiply by 64 will result in a normalized number
    # Therefore, we need to find the position of the leading 1 bit after the multiplication 
    # to adjust the exponent and mantissa accordingly.
    movl    %edi, %esi
    shrl    $31, %esi               # sign = uf >> 31
    movl    %edi, %edx
    andl    $0x7F800000, %edx    
    shrl    $23, %edx               # exponent = uf & 0x7F800000 >> 23
    movl    %edi, %r9d             
    andl    $0x007FFFFF, %r9d       # mantissa = uf & 0x007FFFFF

    cmpl    $0xff, %edx             # if exponent >= 0xFF, too big
    jge     returnF                 # return argument

    cmpl    $0, %edx                # if exponent == 0
    je      expZero                 # jump to case when exponent == 0

    addl    $6, %edx                # exponent += 6 to multiply by 64

    cmpl    $0xff, %edx             # if exponent >= 0xFF, too big
    jge     tooBig                  # return INF

    andl    $0x807FFFFF, %edi       # clear the exponent of f
    shll    $23, %edx               # exponent << 23, get exponent back to its position
    orl     %edx, %edi              # get exponent back to f
    movl    %edi, %eax              # return f
    ret

returnF:
    movl    %edi, %eax              # return argument f
    ret

expZero:
    cmpl    $0, %r9d                # if mantissa == 0, return argument f
    je      returnF
    cmpl    $0x20000, %r9d          # if mantissa >= 0x20000, it's a normalized number
    jge     specialDenorm           # jump to case when it's a normalized number
    shll    $6, %r9d                # else, it's a denorm, mantissa << 6
    shll    $31, %esi
    orl     %esi, %r9d
    movl    %r9d, %eax
    ret
    
    
specialDenorm:         
    cmpl    $0x400000, %r9d         # leading 1 bit is at position 23
    jge     caseOne
    cmpl    $0x200000, %r9d         # leading 1 bit is at position 22
    jge     caseTwo
    cmpl    $0x100000, %r9d         # leading 1 bit is at position 21
    jge     caseThree
    cmpl    $0x80000, %r9d          # leading 1 bit is at position 20
    jge     caseFour
    cmpl    $0x40000, %r9d          # leading 1 bit is at position 19
    jge     caseFive
    movl    $6, %r8d                # leading 1 bit is at position 18
    jmp     caseEnd

caseOne:
    movl    $1, %r8d                # leading 1 bit is at position 23, let n = 1
    jmp     caseEnd

caseTwo:
    movl    $2, %r8d                # let n = 2
    jmp     caseEnd

caseThree:
    movl    $3, %r8d                # let n = 3
    jmp     caseEnd

caseFour:
    movl    $4, %r8d                # let n = 4
    jmp     caseEnd

caseFive:
    movl    $5, %r8d                # let n = 5
    jmp     caseEnd

caseEnd:
    movl    %r8d, %ecx         
    shll    %cl, %r9d               # move leading 1 bit to the leftmost position
    andl    $0x007FFFFF, %r9d       # clear the sign and exponent
    shll    $31, %esi               # get the sign back to its position
    orl     %esi, %r9d              # get the sign back to f
    imull   $0x800000, %r8d         # get the exponent back to its position
    movl    $0x3800000, %eax        # get the exponent mask
    subl    %r8d, %eax              # get exponent mask
    orl     %r9d, %eax              # get the exponent back to f
    ret

tooBig:      
    shll    $31, %esi          
    orl     $0x7F800000, %esi       # use the sign to determine if it's +INF or -INF
    movl    %esi, %eax
    ret

# floatPower2 - Return bit-level equivalent of the expression 2.0^x
#   (2.0 raised to the power x) for any 32-bit integer x.
#
#   The unsigned value that is returned should have the identical bit
#   representation as the single-precision floating-point number 2.0^x.
#   If the result is too small to be represented as a denorm, return
#   0. If too large, return +INF.
#
#   Argument 1: x
#   Rating: 4
.global floatPower2
floatPower2:
    movl    $127, %esi          # bias = 127
    addl    %edi, %esi          # exponent = x + bias
    cmpl    $0, %esi            # if exponent <= 0, it could be denorm or too small
    jle     returnDenorm
    cmpl    $255, %esi          # if exponent >= 255, too large, return +INF
    jge     returnInf
    movl    %esi, %eax          # else, return exponent << 23
    sall    $23, %eax
    ret

returnDenorm:
    cmpl    $-23, %esi 
    jle     returnSmall         # if exponent <= -23, too small
    addl    $22, %esi           # else, return 1 << (exponent + 22)
    movl    $1, %eax
    movl    %esi, %ecx
    sall    %cl, %eax 
    ret

returnSmall:
    movl    $0, %eax
    ret

returnInf:  
    movl    $0x7F800000, %eax
    ret
