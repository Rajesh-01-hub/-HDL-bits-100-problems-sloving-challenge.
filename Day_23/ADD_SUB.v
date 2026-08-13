module add_sub(
    input [3:0] a,b,c,
    output [3:0] sum,
    output cout
);

reg [3:0] sum_r;
reg cout_r;
wire [3:0] w1 = (b & c);

always @(*) begin
    {cout_r,sum_r} = (a + w1 + c);
end

assign sum = sum_r;
assign cout = cout_r;

endmodule
