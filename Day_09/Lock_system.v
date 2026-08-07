`include "comp.v"
`include "counter.v"
module lock_system #(parameter W=8)(input  [W-1:0]set_p,en_p, input  rst, input clk,
								    output  y,fail_t,output  [1:0]count);
wire w;
comp g1 (.set_p(set_p),.en_p(en_p),.rst(rst),.out(y));
assign w=~y;
counter g2(.clk(clk),.rst(rst),.out(count),.en(w));	
assign fail_t=(count==2'b11);				
endmodule

