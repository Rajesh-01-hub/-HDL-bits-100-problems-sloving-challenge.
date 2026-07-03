module counter(input clk, input  rst,input en, output reg [1:0]out);
always @(posedge clk) begin
if(en) begin
if(rst||(out==2'b11)) out<=2'b00;
else out<=out+1'b1;
end
else out<=2'b00;
end
endmodule