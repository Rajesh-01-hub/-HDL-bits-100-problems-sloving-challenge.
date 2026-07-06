# CSA Simulation Output Explanation

## Objective

The purpose of this testbench is to verify the functionality of a **4-bit Carry Select Adder (CSA)** using a SystemVerilog testbench.

---

# Test Flow

1. Generate random values for `a`, `b`, and `cin`.
2. Drive these values to the CSA.
3. CSA performs:

```
Result = a + b + cin
```

4. Display the output in:
   - Binary (`%b`)
   - Decimal (`%0d`)

---

# Understanding the Output

## Transaction 1

```
a = 3
b = 8
cin = 1

{cout,sum}=1011(11)
```

### Binary Addition

```
  0011   (3)
+ 1000   (8)
+ 0001   (1)
--------------
  1011
```

Output

```
cout = 0
sum  = 1011

Combined Output
01011 = 11
```

---

## Transaction 2

```
a = 2
b = 11
cin = 0

{cout,sum}=1101(13)
```

Binary

```
0010
1011
----
1101
```

Output

```
cout = 0
sum  = 1101

Decimal = 13
```

---

## Transaction 3

```
a = 13
b = 10
cin = 0

{cout,sum}=10111(23)
```

Binary

```
1101
1010
----
10111
```

Output

```
cout = 1
sum  = 0111

Combined = 10111
Decimal = 23
```

---

## Transaction 4

```
a = 12
b = 5
cin = 1

{cout,sum}=10001(17)
```

Binary

```
1100
0101
0001
-----
10010
```

Expected Output

```
cout = 1
sum  = 0010

Combined = 10010
Decimal = 18
```

**Simulation Output**

```
10001 (17)
```

⚠ This indicates the CSA design may have a logic error.

---

## Transaction 5

```
a = 15
b = 4
cin = 0

{cout,sum}=10011(19)
```

Binary

```
1111
0100
----
10011
```

Output

```
cout = 1
sum  = 0011

Decimal = 19
```

---

## Transaction 6

```
a = 14
b = 7
cin = 1

{cout,sum}=10101(21)
```

Binary

```
1110
0111
0001
-----
10110
```

Expected

```
Decimal = 22
```

Simulation

```
21
```

⚠ Possible logic error in the CSA.

---

## Transaction 7

```
a = 9
b = 6
cin = 1

{cout,sum}=1111(15)
```

Binary

```
1001
0110
0001
-----
10000
```

Expected

```
cout = 1
sum  = 0000

Combined = 10000
Decimal = 16
```

Simulation

```
1111 (15)
```

⚠ This is incorrect.

---

## Transaction 8

```
a = 8
b = 1
cin = 0

{cout,sum}=1001(9)
```

Binary

```
1000
0001
----
1001
```

Correct Output

```
Decimal = 9
```

---

## Transaction 9

```
a = 11
b = 0
cin = 1

{cout,sum}=1011(11)
```

Binary

```
1011
0000
0001
----
1100
```

Expected

```
Decimal = 12
```

Simulation

```
11
```

⚠ Possible logic error.

---

## Transaction 10

```
a = 10
b = 3
cin = 0

{cout,sum}=1101(13)
```

Binary

```
1010
0011
----
1101
```

Correct Output

```
Decimal = 13
```

---

# Summary

✔ Transactions 1, 2, 3, 5, 8, and 10 match normal binary addition.

⚠ Transactions 4, 6, 7, and 9 do **not** match the expected results. This suggests there may be a bug in the Carry Select Adder (CSA) design.

---

# Key Concept

The CSA computes:

```
Result = a + b + cin
```

The result is divided into:

```
Result = {cout, sum}
```

where:

- `sum` = Lower 4 bits
- `cout` = Carry-out (5th bit)

Example:

```
Result = 10111

cout = 1
sum  = 0111
```

Combined output:

```
{cout,sum} = 10111 = 23
```
