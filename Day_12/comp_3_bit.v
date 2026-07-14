module comp_3(input [2:0]a,b,output gt,ls,eq);
wire [1:0]g,l,e;
comp_1 g1(.a(a[0]),.b(b[0]),.gt(g[0]),.ls(l[0]),.eq(e[0]));
comp_1 g2(.a(a[1]),.b(b[1]),.gt(g[1]),.ls(l[1]),.eq(e[1]));
mux_3 m1 (.a({g[0],l[0],e[0]}),.b({g[1],l[1],e[1]}),.sel(e[1]),.out({gt,ls,eq}));
endmodule