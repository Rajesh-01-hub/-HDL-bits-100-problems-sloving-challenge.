`include "FA.v"
module FA_4 (input [3:0]a,b, input cin, output [3:0]sum, output cout);
wire[3:0]c;
FA g1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c[0]));
FA g2(.a(a[1]),.b(b[1]),.cin(c[0]),.sum(sum[1]),.cout(c[1]));
FA g3(.a(a[2]),.b(b[2]),.cin(c[1]),.sum(sum[2]),.cout(c[2]));
FA g4(.a(a[3]),.b(b[3]),.cin(c[2]),.sum(sum[3]),.cout(c[3]));
assign cout = c[3];
endmodule