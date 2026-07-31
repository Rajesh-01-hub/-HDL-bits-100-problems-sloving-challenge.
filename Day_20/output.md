# D Latch Simulation

## Design

```verilog
module d_latch(input d, en, output q);
    assign q = en ? d : q;
endmodule
```

## Testbench

The following input sequence is applied:

| Time (ns) | d | en | Description |
|-----------|---|----|-------------|
| 0         | 1 | 0  | Latch disabled |
| 10        | 1 | 1  | Latch enabled, output follows input |
| 20        | 0 | 1  | Output follows input |
| 30        | 0 | 0  | Latch disabled, output holds previous value |

## Expected Output

```
T=0   d=1 en=0 q=x
T=10  d=1 en=1 q=1
T=20  d=0 en=1 q=0
T=30  d=0 en=0 q=0
```

## Output Table

| Time (ns) | d | en | q |
|-----------|---|----|---|
| 0         | 1 | 0  | X |
| 10        | 1 | 1  | 1 |
| 20        | 0 | 1  | 0 |
| 30        | 0 | 0  | 0 |

## Waveform

```
Time(ns): 0--------10--------20--------30--------40

en : _____|‾‾‾‾‾‾‾‾‾|____________________

d  : ‾‾‾‾‾‾‾‾‾‾|________________________

q  : XXXXXXX|‾‾‾‾‾‾‾‾|___________________
```

## Observation

- When `en = 1`, the output `q` follows the input `d`.
- When `en = 0`, the output retains its previous value.
- At the beginning of simulation, `q` is `X` because it has not been initialized.

> **Note:** The implementation `assign q = en ? d : q;` creates a combinational feedback loop and is **not recommended for synthesizable RTL**. The preferred implementation of a D latch uses an `always @(*)` block so that synthesis tools infer a proper level-sensitive latch.