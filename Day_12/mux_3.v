module mux_3 (input[2:0]a,b,input sel, output [2:0]out);
mux_1 m1(.a(a[0]),.b(b[0]),.sel(sel),.out(out[0]));
mux_1 m2(.a(a[1]),.b(b[1]),.sel(sel),.out(out[1]));
mux_1 m3(.a(a[2]),.b(b[2]),.sel(sel),.out(out[2]));
endmodule