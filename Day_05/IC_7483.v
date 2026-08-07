module IC_7483(input [3:0]a,b,input cin, output [3:0]sum,output cout);
wire[3:0]g,p;
wire [3:0]c;
assign g = {a[3]&b[3],a[2]&b[2],a[1]&b[1],a[0]&b[0]};
assign p = {a[3]^b[3],a[2]^b[2],a[1]^b[1],a[0]^b[0]};
assign c[0]=g[0]|(p[0]&cin);
assign c[1]=g[1]|(p[1]&(g[0]|(p[0]&cin)));
assign c[2]=g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))));
assign c[3]=g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))));
assign sum[0]=p[0]^cin;
assign sum[1]=p[1]^c[0];
assign sum[2]=p[2]^c[1];
assign sum[3]=p[3]^c[2];
assign cout=c[3];
endmodule
