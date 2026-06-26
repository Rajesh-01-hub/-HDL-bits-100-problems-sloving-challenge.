# Pattern Detector for Sequence "10" Using Combinational Logic

## Overview

This project implements a simple pattern detector that identifies the binary sequence **"10"** using combinational logic.

The detector monitors two consecutive input bits and generates an output whenever the pattern `10` is detected.

---

## Design Specifications

### Input

* `in` : 2-bit input sequence

### Outputs

* `nsc` : Next State Code / Detection Indicator
* `pc` : Present Condition / Output Code

### Target Pattern

```text
10
```

When the input sequence matches `10`, the detector produces the corresponding output.

---

## Simulation Environment

* Simulator: QuestaSim 10.7c
* Language: Verilog HDL
* Design Type: Combinational Circuit
* Testbench: `p_tb`

---

## Simulation Results

### Console Output

```text
in=10 || nsc=2 || pc=11
in=10 || nsc=2 || pc=11
in=10 || nsc=2 || pc=11
```

---

## Verification Summary

| Input Pattern | Expected Output  | Obtained Output  | Status |
| ------------- | ---------------- | ---------------- | ------ |
| 10            | nsc = 2, pc = 11 | nsc = 2, pc = 11 | PASS   |
| 10            | nsc = 2, pc = 11 | nsc = 2, pc = 11 | PASS   |
| 10            | nsc = 2, pc = 11 | nsc = 2, pc = 11 | PASS   |

---

## Observations

* The sequence `10` was successfully detected.
* The outputs remained consistent across all test iterations.
* No simulation errors or warnings were reported.
* The combinational logic produced the expected result for the target pattern.

---

## Final Result

✅ Pattern "10" detected successfully.

```text
Input Pattern : 10
Output        : nsc = 2, pc = 11
Status        : PASS
```

Simulation completed successfully with:

```text
Errors   : 0
Warnings : 0
```
