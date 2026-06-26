module processor(input [5:0]pc, input [1:0]in, output [5:0]nsc);
wire [5:0]t1,t2;
adder_6 g0 (.a(pc),.b(6'd1),.sum(t1));
mux g1(.a(t1),.b(pc),.sel(in[0]),.y(t2));
mux g2(.a(pc),.b(t2),.sel(in[1]),.y(nsc));
endmodule