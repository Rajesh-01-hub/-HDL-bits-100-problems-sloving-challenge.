module i_seg(input  [3:0]in,output  [6:0]y);
always@* begin
case(in) 
4'h0 : y=7'b0111_111;
4'h1 : y=7'b0000_110;
4'h2 : y=7'b1011_011;
4'h3 : y=7'b1001_111;
4'h4 : y=7'b1100_110;
4'h5 : y=7'b1101_101;
4'h6 : y=7'b1011_101;
4'h7 : y=7'b0000_111;
4'h8 : y=7'b1111_111;
4'h9 : y=7'b1100_111;
4'ha : y=7'b1110_111;
4'hb : y=7'b1111_100;
4'hc : y=7'b0111_001;
4'hd : y=7'b1011_110;
4'he : y=7'b0111_001;
4'hf : y=7'b1110_001;
default : y=7'bzzzz_zzz;
endcase
end
endmodule