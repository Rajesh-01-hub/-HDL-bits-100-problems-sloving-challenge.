# Simple Basic Message Transfer – Simulation Report

## Date
**04-Jul-2026**

---

# Objective

Design and verify a simple message transfer system using:

- 4:1 Multiplexer (MUX)
- 1:4 Demultiplexer (DMUX)

The MUX selects **one bit** from a 4-bit message based on `sender_id`.

The DMUX routes that selected bit to one of four output bits based on `receiver_id`.

---

# Design Architecture

```
          send_data[3:0]
                 |
                 |
           +-------------+
           |   4:1 MUX   |
           +-------------+
                 |
          selected bit (w)
                 |
           +-------------+
           |  1:4 DMUX   |
           +-------------+
                 |
        receive_data[3:0]
```

---

# Working

### Inputs

| Signal | Width | Description |
|---------|------|-------------|
| send_data | 4 | Message bits |
| sender_id | 2 | Selects one bit from send_data |
| receiver_id | 2 | Selects output location |

### Output

| Signal | Width | Description |
|---------|------|-------------|
| receive_data | 4 | Routed output |

---

# Simulation Log

```
--------------------------------
send_data   = 1010
sender_id   = 3
receiver_id = 3
--------------------------------
receive_data = X

--------------------------------
send_data   = 0100
sender_id   = 0
receiver_id = 1
--------------------------------
receive_data = X

--------------------------------
send_data   = 0011
sender_id   = 2
receiver_id = 1
--------------------------------
receive_data = X

--------------------------------
send_data   = 1111
sender_id   = 3
receiver_id = 1
--------------------------------
receive_data = X

--------------------------------
send_data   = 0010
sender_id   = 3
receiver_id = 2
--------------------------------
receive_data = X

--------------------------------
send_data   = 0010
sender_id   = 3
receiver_id = 0
--------------------------------
receive_data = 10

--------------------------------
send_data   = 1100
sender_id   = 0
receiver_id = 3
--------------------------------
receive_data = 2

--------------------------------
send_data   = 0110
sender_id   = 1
receiver_id = 3
--------------------------------
receive_data = 10

--------------------------------
send_data   = 0101
sender_id   = 0
receiver_id = 1
--------------------------------
receive_data = 10

--------------------------------
send_data   = 0111
sender_id   = 0
receiver_id = 2
--------------------------------
receive_data = 14
```

---

# Warnings

## Warning 1

```
'mux' already exists and will be overwritten.
```

### Reason

`mux.v` was compiled twice.

Example:

```
qverilog mux.v simple_basic_msg_transfor.v
```

and inside

```verilog
`include "mux.v"
```

So the compiler reads the same module twice.

---

## Warning 2

```
'dmux' already exists and will be overwritten.
```

### Reason

`dmux.v` was also compiled twice because it was:

- passed to the compiler
- included using `` `include ``

---

# Fix

Choose **one** of the following methods.

### Method 1 (Recommended)

Compile every file explicitly.

Remove

```verilog
`include "mux.v"
`include "dmux.v"
```

from `simple_basic_msg_transfor.v`.

Compile:

```
qverilog -sv mux.v dmux.v simple_basic_msg_transfor.v tb.sv
```

---

### Method 2

Keep the `include` statements and compile only:

```
qverilog -sv simple_basic_msg_transfor.v tb.sv
```

---

# Why receive_data shows X initially?

The first few outputs were

```
receive_data = X
```

### Cause

The original DMUX assigned only one output bit:

```verilog
out[0] = in;
```

Other bits remained unassigned.

This resulted in unknown (`X`) values.

---

# Correct DMUX

```verilog
always @(*) begin
    out = 4'b0000;

    case(sel)
        2'd0: out[0] = in;
        2'd1: out[1] = in;
        2'd2: out[2] = in;
        2'd3: out[3] = in;
    endcase
end
```

---

# Observation

The design successfully:

- selects one bit from `send_data`
- transfers it through a single wire
- places that bit at the output selected by `receiver_id`

This demonstrates the operation of a **4:1 MUX** followed by a **1:4 DMUX**.

---

# Limitations

This design **does not transfer an entire 4-bit message**.

Only **one selected bit** is transmitted.

To transfer a complete message, a 4-bit data path (4-bit MUX and 4-bit DMUX) would be required.

---

# Result

✔️ Design compiled successfully.

✔️ Simulation completed without errors.

✔️ Functional behavior verified after correcting the DMUX implementation.

✔️ Compilation warnings were due to duplicate compilation of `mux.v` and `dmux.v`.