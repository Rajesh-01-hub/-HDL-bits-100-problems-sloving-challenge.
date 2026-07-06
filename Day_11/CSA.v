`include "FA_4.v"
`include "mux.v"
module CSA (input [3:0]a,b,input cin, output [3:0]sum,output cout);
wire[3:0]w0,w1;
wire c0,c1;
FA_4 g1(.a(a),.b(b),.cin(0),.sum(w0),.cout(c0));
FA_4 g2(.a(a),.b(b),.cin(2),.sum(w1),.cout(c1));
assign cout = cin ? c1 : c0;
mux g3(.a({c0,w0}),.b({c1,w1}),.sel(cin),.out({cout,sum}));
endmodule