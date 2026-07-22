module tb;
parameter N=8;
reg [N-1:0]in;
wire [$clog2(N)-1:0]out;
wire valid;
priorty_encoder #(N)(.in(in),.out(out),.valid(valid));

endmodule