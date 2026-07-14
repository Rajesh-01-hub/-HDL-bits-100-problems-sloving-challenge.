module tb;
reg [2:0]a,b;
wire gt,ls,eq;
comp_3 dut (.a(a),.b(b),.gt(gt),.ls(ls),.eq(eq));
integer i=0;
initial begin
repeat(4) begin
{a,b}=i;
#10;
$display("a=%0d||b=%0d||gt=%0d||ls=%0d||eq=%0d",a,b,gt,ls,eq);
i=i+1;
end
end
endmodule