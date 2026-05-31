
module CLA (
    input  [15:0] a,b,
    input  cin,
    output [15:0] sum,
    output cout
);

wire [4:0] c;

assign c[0] = cin;

IC_7483 g1 (
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(c[0]),
    .sum(sum[3:0]),
    .cout(c[1])
);

IC_7483 g2 (
    .a(a[7:4]),
    .b(b[7:4]),
    .cin(c[1]),
    .sum(sum[7:4]),
    .cout(c[2])
);

IC_7483 g3 (
    .a(a[11:8]),
    .b(b[11:8]),
    .cin(c[2]),
    .sum(sum[11:8]),
    .cout(c[3])
);

IC_7483 g4 (
    .a(a[15:12]),
    .b(b[15:12]),
    .cin(c[3]),
    .sum(sum[15:12]),
    .cout(c[4])
);

assign cout = c[4];

endmodule
