module dmux (input in, input[1:0]sel,output reg [3:0]out);
always@* begin
case(sel)
2'd0:out[0]=in;
2'd1:out[1]=in;
2'd2:out[2]=in;
2'd3:out[3]=in;
default:out=4'h0;
endcase
end
endmodule