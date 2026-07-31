module  d_latch(input d,en,output q);
assign q = en ? d : q;
endmodule