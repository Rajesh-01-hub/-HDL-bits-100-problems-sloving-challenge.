module comp_1 (input a,b, output gt,ls,eq);
assign gt = (a>b);
assign ls = (a<b);
assign eq = (a==b);
endmodule