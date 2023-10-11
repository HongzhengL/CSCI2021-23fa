/* Testing Code */

#include <limits.h>
#include <math.h>

/* Routines used by floating point test code */

/* Convert from bit level representation to floating point number */
float u2f(unsigned u) {
    union {
        unsigned u;
        float f;
    } a;
    a.u = u;
    return a.f;
}

/* Convert from floating point number to bit-level representation */
unsigned f2u(float f) {
    union {
        unsigned u;
        float f;
    } a;
    a.f = f;
    return a.u;
}

int test_isZero(int x) {
    return x == 0;
}

int test_bitNor(int x, int y) {
    return ~(x|y);
}

int test_distinctNegation(int x) {
    return x != -x;
}

int test_dividePower2(int x, int n) {
    int p2n = 1<<n;
    return x/p2n;
}

int test_getByte(int x, int n) {
    unsigned char byte;
    switch(n) {
    case 0:
        byte = x;
        break;
    case 1:
        byte = x >> 8;
        break;
    case 2:
        byte = x >> 16;
        break;
    default:
        byte = x >> 24;
        break;
    }
    return (int) (unsigned) byte;
}

int test_isPositive(int x) {
  return x > 0;
}

unsigned test_floatNegate(unsigned uf) {
    float f = u2f(uf);
    float nf = -f;
    if (isnan(f)) {
        return uf;
    }
    else {
        return f2u(nf);
    }
}

int test_isLessOrEqual(int x, int y) {
    return x <= y;
}

int test_bitMask(int highbit, int lowbit) {
    int result = 0;
    int i;
    for (i = lowbit; i <= highbit; i++) {
        result |= 1 << i;
    }
    return result;
}

int test_addOK(int x, int y) {
    long long lsum = (long long) x + y;
    return lsum == (int) lsum;
}

unsigned test_floatScale64(unsigned uf) {
    float f = u2f(uf);
    float tenf = 64*f;
    if (isnan(f)) {
        return uf;
    } else {
        return f2u(tenf);
    }
}

unsigned test_floatPower2(int x) {
    float result = 1.0;
    float p2 = 2.0;
    int recip = (x < 0);
    /* treat tmin specially */
    if ((unsigned)x == 0x80000000) {
        return 0;
    }
    if (recip) {
      x = -x;
      p2 = 0.5;
    }
    while (x > 0) {
        if (x & 0x1) {
            result = result * p2;
        }
        p2 = p2 * p2;
        x >>= 1;
    }
    return f2u(result);
}
