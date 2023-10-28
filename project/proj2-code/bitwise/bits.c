/*
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.
 */

#if 0
/*
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to this part of the project by
editing the collection of functions in this source file.

INTEGER CODING RULES:

  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code
  must conform to the following style:

  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>

  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.


  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting if the shift amount
     is less than 0 or greater than 31.


EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implement floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants. You can use any arithmetic,
logical, or comparison operations on int or unsigned data.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc program (described in the spec) to check the legality of
     your solutions.
  2. Each function has a maximum number of operations (integer, logical,
     or comparison) that you are allowed to use for your implementation
     of the function.  The max operator count is checked by dlc.
     Note that assignment ('=') is not counted; you may use as many of
     these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies
     between the maximum ops in the spec and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 *
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *
 *      YOU WILL RECEIVE NO CREDIT IF YOUR CODE DOES NOT PASS THIS CHECK.
 *
 *   2. Use the btest checker to verify that your solutions produce the
 *      correct answers.
 */

#endif

/*
 * isZero - returns 1 if x == 0, and 0 otherwise
 *   Examples: isZero(5) = 0, isZero(0) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int isZero(int x) {
    /* When x != 0, !x will be 0; when x == 0, !x will be 1 */
    return !x;
}

/*
 * bitNor - ~(x|y) using only ~ and &
 *   Example: bitNor(0x6, 0x5) = 0xFFFFFFF8
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
int bitNor(int x, int y) {
    /* 
        x   y     ~x  ~y      x|y     ~(x|y)    (~x)&(~y)
        0   0     1   1       0         1           1
        1   1     0   0       1         0           0
        0   1     1   0       1         0           0
        1   0     0   1       1         0           0

        Therefore, ~(x|y) == (~x)&(~y)
     */
    return (~x)&(~y);
}

/*
 * distinctNegation - returns 1 if x != -x.
 *     and 0 otherwise
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 5
 *   Rating: 2
 */
int distinctNegation(int x) {
    /**
     * Using 2's complement, we can represent -x as (~x+1)
     * If x and -x are distinct (i.e., x != -x), there will be at least one bit position where they differ, 
     * then x ^ (~x+1) will result in a non-zero result.
     * If x and -x are distinct (i.e., x == -x), then x ^ (~x+1) will be 0
     * Therefore, we can use the !! operator to return 1 if x != -x
     * and 0 otherwise
    */
    return !!(x ^ (~x + 1));
}

/*
 * dividePower2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: dividePower2(15,1) = 7, dividePower2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int dividePower2(int x, int n) {
    /**
     * If x is positive, we can simply shift x to the right by n bits
     * If x is negative, since the result rounds towards 0, we need to add an adjustment to the result
     * The adjustment is 2^n - 1, that is add 1 to the result if x has remainder
     * We can create a mask of n lower bits as 1, and then add 1 to it to get the adjustment
     * Then we can add the adjustment to x and shift the result to the right by n bits to get the final result
    */
    int mask = (1 << n) + ~0;    // Creates a mask of n lower bits as 1
    int adjustment = (x >> 31) & mask; // If x is negative, this gives an adjustment
    return (x + adjustment) >> n;
}

/*
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (least significant) to 3 (most significant)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
    /**
     * We can shift x to the right by n*8 (n<<3) bits to get the byte we want
     * Then we can mask the result with 0xff to get rid of the higher bits
     * and return the lower 8 bits
    */
    return ((x >> (n << 3)) & (0xff));
}

/*
 * isPositive - return 1 if x > 0, return 0 otherwise
 *   Example: isPositive(-1) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 2
 */
int isPositive(int x) {
    /**
     * We use x >> 31 to get the sign bit of x
     * If x is positive, then x >> 31 will be 0
     * If x is negative, then x >> 31 will be -1
     * However, if x is 0, then x >> 31 will be 0
     * So, we use !x to check if x is 0
     * If x is 0, then !x will be 1, which will be different from x >> 31, and we return !(1 ^ 0) = 0
     * If x is positive, !x will be 0 and x >> 31 will be 0, and we return !(0 ^ 0) = 1
    */
    return !((!x) ^ (x >> 31));
}

/*
 * floatNegate - Return bit-level equivalent of expression -f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned floatNegate(unsigned uf) {
    /**
     * If uf is NaN, then return uf
     * Otherwise, we can use `sign_mask' to flip the sign bit to get the negation
    */
    unsigned sign_mask = 0x80000000;
    
    if ((uf & 0x7F800000) == 0x7F800000 && (uf & 0x007FFFFF) != 0) {
        return uf; 
    }
    
    return uf ^ sign_mask;
}

/*
 * isLessOrEqual - if x <= y  then return 1, else return 0
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
    /**
     * If x <= y, then y - x >= 0
     * If y - x >= 0, then the sign bit of y - x (i.e., diff >> 31), will be 0
     * So, we can shift y - x to the right by 31 bits and then use the ! operator
     * to return 1 if x <= y and 0 otherwise
    */
    int diff = y + (~x + 1);
    int sign = diff >> 31;
    return !sign;
}

/*
 * bitMask - Generate a mask consisting of all 1's between
 *   lowbit and highbit
 *   Examples: bitMask(5,3) = 0x38
 *   Assume 0 <= lowbit <= 31, and 0 <= highbit <= 31
 *   If lowbit > highbit, then mask should be all 0's
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */

int bitMask(int highbit, int lowbit) {
    /**
     * Let's say we want to generate a mask of n bits of 1's between lowbit and highbit, all other bits are 0
     * This function chooses to first generate n bits of 0's between lowbit and highbit, all other bits are 1
     * then use the bitwise NOT operator to flip all the bits
     * Therefore, we will perform left shift on (~0), (i.e., all bits are 1)
     * However, since we're operating on int rather than unsigned int, we need to be careful about the sign bit
     * If highbit is 31, then we can't make sign bit to be 0 due to the nature of int
     * Therefore, we choose to perform the same operation on bitMask(highbit-1, lowbit) instead
     * And manually set highbit to be 1
     * To prevent lowbit > highbit, we calculate the `diff' between highbit and lowbit
     * If `diff' is negative, then the `sign' bit will be 1, and we use (~sign)&result to return all 0's
    */
    int subHigh = 1 << highbit;
    int diff = (highbit + (~lowbit+1)); 
    int sign = diff >> 31;

    int sub = (~0) << diff;     // Generate (n-1) bits of 0's, diff = diff + 1 - 1
    int subMask = (~sub) << lowbit;     // first flip sub to get n bits of 1's, then shift it to the right position
    int result = subMask | subHigh;     // set highbit to be 1

    return (~sign) & result;
    // return (~sign) & ((~(((~0) << (diff))) << (lowbit)) | subHigh);
}

/*
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x80000000,0x80000000) = 0,
 *            addOK(0x80000000,0x70000000) = 1,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int addOK(int x, int y) {
    /**
     * If x and y have the same sign, then x + y will overflow if and only if x + y has a different sign
     * If x and y have different signs, then x + y will never overflow
     * (x>>31)^(y>>31) will be 0 if x and y have the same sign, or some value (-1 or 1) otherwise
     * !(x>>31)^((x+y)>>31) will be some value (-1 or 1) if x and (x + y) have the same signs, or 0 otherwise
     * We use double negation ensures the result is either 0 or 1.
     * If x and y have different signs, then (x>>31)^(y>>31) will make the whole return expression 1
     * If x and y have the same signs, we determine whether x + y has the same sign by checking !(x>>31)^((x+y)>>31)
     * If yes, then will not overflow, and the whole return expression will be 1
     * Else, it overflows, and the whole return expression will be 0
    */
    int signX = x >> 31;
    int signY = y >> 31;
    int sum = x + y;
    int signSum = sum >> 31;

    int sameSign = (signX ^ signY);
    int sumDiffSign = !(signX ^ signSum);

    int noOverflow = (sameSign) | (sumDiffSign);

    return !!noOverflow; 
    // return !!(((x>>31)^(y>>31)) | !((x>>31)^((x+y)>>31)));
}

/*
 * floatScale64 - Return bit-level equivalent of expression 64*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 35
 *   Rating: 4
 */
unsigned floatScale64(unsigned uf) {
    /**
     * We first extract the sign, exponent and mantissa of uf
     * If it's too big to be represented as a float, we return uf
     * If it's too small to be represented as a float, we return uf
     * If it's a denorm, we shift the mantissa to the left by 6 bits
     * If it's a normalized number, we increase the exponent by 6
     * After increasing the exponent, if it's too big to be represented as a float, we return +INF
     * However, if the mantissa is big enough for a denorm, multiply by 64 will result in a normalized number
     * Therefore, we need to find the position of the leading 1 bit after the multiplication 
     * to adjust the exponent and mantissa accordingly. 
    */
    unsigned sign = uf >> 31;
    unsigned exponent_mask = 0x7F800000;
    unsigned exponent = (uf & exponent_mask) >> 23;
    unsigned mantissa = uf & 0x7FFFFF;

    if (exponent >= 0xff) {
        return uf;
    }

    if ((exponent) == 0 && mantissa == 0) {
        return uf;
    }

    if ((exponent) == 0 && mantissa != 0) {
        if (mantissa >= 0x20000) {
            int n = 1;
            if (mantissa >= 0x400000){
                n = 1;
            } else if (mantissa >= 0x200000) {
                n = 2;
            } else if (mantissa >= 0x100000) {
                n = 3;
            } else if (mantissa >= 0x80000) {
                n = 4;
            } else if (mantissa >= 0x40000) {
                n = 5;
            } else {
                n = 6;
            }
            return ((((mantissa) << n) & 0x7FFFFF) | (sign << 31) | (0x3800000-n*0x800000));
        } else {    // If the mantissa is not large enough for a denorm to be normalized after multiplying by 64
            return ((mantissa << 6) | (sign << 31));
        }
    }

    // Increase the exponent by 6 (which is equivalent to multiplying the float by 64)
    exponent += 6;

    if (exponent >= 0xff) {
        return ((sign << 31) | exponent_mask);
    }

    return ((uf & ~exponent_mask) | (exponent << 23));
}

/*
 * floatPower2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 *
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned floatPower2(int x) {
    /**
     * First, we calculate the exponent of 2.0^x in bit level, that is `x + bias' in `stored_exponent'
     * If it's too small (stored_exponent <= 0), we first check if it can be represented as a denorm (-23 < stored_exponent <= 0)
     * If yes, we shift 1 to the right by (stored_exponent+22) bits to get the denorm representation
     * If not, we return 0
     * If it's too large (stored_exponent > 255), we return +INF
     * 
    */
    int bias = 127;
    int stored_exponent = x + bias;

    // Denormalized number
    if (stored_exponent <= 0 && stored_exponent > -23) {
        return (1 << (stored_exponent+22));
        // return (1 << (149+x));
    } 
    
    // Too small, return 0
    if (stored_exponent <= -23) {
        return 0;
    }

    // Too large, return +INF
    if (stored_exponent > 255) {
        return 0x7F800000; 
    }
    
    return (stored_exponent << 23);
}
