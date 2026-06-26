# Booth's Algorithm Multiplier - Verification Results

## Overview

This project implements a Booth's Algorithm based multiplier using Verilog and verifies its functionality using a testbench in QuestaSim.

---

## Simulation Environment

* Simulator: QuestaSim 10.7c
* Language: Verilog HDL
* Testbench: `tb_booths_algorithm`
* Simulation Mode: Command Line

---

## Test Cases Executed

| Multiplicand | Multiplier | Expected Product | Obtained Product | Status |
| ------------ | ---------- | ---------------- | ---------------- | ------ |
| 3            | 2          | 6                | 6                | PASS   |
| 5            | 5          | 25               | 25               | PASS   |
| 7            | 7          | 49               | 49               | PASS   |
| 6            | 2          | 12               | 12               | PASS   |

---

## Simulation Output

### Test Case 1

Input:

* Multiplicand = 3
* Multiplier = 2

Result:

```text
3 x 2 = 6
Product = 6
Done = 1
```

Status: PASS

---

### Test Case 2

Input:

* Multiplicand = 5
* Multiplier = 5

Result:

```text
5 x 5 = 25
Product = 25
Done = 1
```

Status: PASS

---

### Test Case 3

Input:

* Multiplicand = 7
* Multiplier = 7

Result:

```text
7 x 7 = 49
Product = 49
Done = 1
```

Status: PASS

---

### Test Case 4

Input:

* Multiplicand = 6
* Multiplier = 2

Result:

```text
6 x 2 = 12
Product = 12
Done = 1
```

Status: PASS

---

## Verification Summary

* Total Test Cases: 4
* Passed: 4
* Failed: 0
* Errors: 0
* Warnings: 0

### Final Result

All test cases passed successfully. The Booth's Algorithm implementation correctly generates multiplication results and asserts the `done` signal upon completion.

---

## State Machine Flow

```text
IDLE
  ↓
LOAD
  ↓
CHECK
  ↓
ADD/SUB (if required)
  ↓
SHIFT
  ↓
CHECK COUNT
  ↓
DONE
```

The FSM repeats the CHECK → ADD/SUB → SHIFT cycle until the iteration count reaches zero, after which the final product is generated and the DONE state is asserted.
