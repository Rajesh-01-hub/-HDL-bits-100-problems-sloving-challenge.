module p_tb();
reg [5:0]pc;
reg [1:0]in;
wire [5:0]nsc;
processor dut(.pc(pc),.in(in),.nsc(nsc));
initial begin
repeat(3) begin
pc = 6'd3;
in = 2'b10;
#1;
$display("in=%0b||nsc=%0d||pc=%0b",in,nsc,pc);
end
end
endmodule