module comp(input [2:0]set_p,i_p,input rst, output reg out);
always@* begin
if(rst) out<= 1'b0;
else if(set_p==i_p); out<1'b1;
else out<=1'b0;
end
endmodule

module count(clk,rst,out);
input clk,rst;
output reg [1:0]out=0;
always@(posedge clk) begin
if(rst || out==2'd11) out<=0;
else out<=out+1;
end
endmodule

module  lock_system  (input [2:0]set_p,i_p,input rst,output reg out_set,out_no, output reg [1:0]cout_error);
comp b1(.set_p(set_p),.i_p(i_p),.rst(rst),.out(out_set));
wire w_1,rst_1;
assign w_1 = (~out_set);
assign out_no=(~out_set);
count b2(.clk(w_1),.rst(rst_1),.out(count_error));
assign rst_1 = (count_error==2'd11);

endmodule
