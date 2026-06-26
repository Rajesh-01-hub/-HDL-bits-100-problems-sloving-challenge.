module mux (input [5:0]a,b,input sel,output[5:0] y);
assign y = (sel) ?  b: a;
endmodule