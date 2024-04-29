# References

- [Foundations of Assembly Programming](https://youtube.com/playlist?list=PL2EF13wm-hWCoj6tUBGUmrkJmH1972dBB) `Youtube`
- [Assembly Language in 100 Seconds](https://www.youtube.com/watch?v=4gwYkEK0gOk) `Youtube`
- [Binary Explained in 01100100 Seconds](https://www.youtube.com/watch?v=zDNaUi2cjv4) `Youtube`
- [NASM](https://www.nasm.us/index.php) `Website`

# Ideas

- Redo all libft functions in ASM, C, and C++;

# Binary Numbers

## Base 10 Number System

> In base 10, each digit in a position of a number can have an integer value ranging from 0 to 9 (10 possibilities).

Example with number `13`:
- `3` = 10^0
- `1` = 10^1

Calculation:
- (1 * 10^1) + (3 * 10^0)
- (1 * 10) + (3 * 1)
- 10 + 3 = 13

## Binary Number System

> Binary numbers are represented by only two symbols or digits, i.e. 0 (zero) and 1(one). The binary numbers here are expressed in the base-2 numeral system.

- 0 (off) and 1 (on)

Example with the binary number `1010`:
- 2^3 + 2^2 + 2^1 + 2^0
- (1 * 2^3) + (0 * 2^2) + (1 * 2^1) + (0 * 2^0)
- 8 + 0 + 2 + 0 = 10

1010 = 10

## Decimal to Binary Conversion

For example, convert 37 to Binary:

Division     | Result | Remainder
-------------|--------|----------
37/2         | 18     | 1 (18*2 = 36 + 1 = 37)
18/2         | 9      | 0
9/2          | 4      | 1
4/2          | 2      | 0
2/2          | 1      | 0
1/2          | 0      | 1

Reading from bottom to top and then left to right:
100101

Binary Value:
- (1 * 2^0) + (1 * 2^2) + (1 * 2^5)
- 1 + 4 + 32 = 37

### Additional Information

- 1 byte = 8 bits
- Binary representation:
  - 256 128 64 32 16 8 4 2
  - 0   0   0  0  0  0 0 0
- Computers start counting from 0 to 255
