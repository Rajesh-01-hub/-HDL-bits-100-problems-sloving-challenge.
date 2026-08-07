module comp #(parameter w=8)(input  [w-1:0]set_p,en_p,input  rst,output reg out);
always@* begin
if(rst) out = 1'b0;
else if(set_p==en_p) out = 1'b1;
else out=1'b0;
end
endmodule