 
interface inff;
    logic [15:0] a, b, c, d, e, f, g, h, i;
    logic [3:0] sel;
    logic[15:0] out;
endinterface

class transction;
virtual inff vif;

randc bit[15:0]a,b,c,d,e,f,g,h,i;
randc bit[3:0] sel;

function new(virtual inff vif);
this.vif=vif;
endfunction

constraint set_sel {sel inside {[0:8]};}
task drive();
vif.a = a;
vif.b = b;
vif.c = c;
vif.d = d;
vif.e = e;
vif.f = f;
vif.g = g;
vif.h = h;
vif.i = i;
vif.sel = sel;
endtask
endclass

module tb_mux;
inff vif();
top_module dut (.a(vif.a),.b(vif.b),.c(vif.c),.d(vif.d),.e(vif.e),.f(vif.f),.g(vif.g),.h(vif.h),.i(vif.i),.sel(vif.sel),.out(vif.out));
transction tr = new(vif);
initial begin
repeat(15) begin

if(tr.randomize()) begin
 tr.drive();
 #1;
$display(
"sel=%0d | a=%0d b=%0d c=%0d d=%0d e=%0d f=%0d g=%0d h=%0d i=%0d | out=%0d",
tr.sel,
tr.a,tr.b,tr.c,tr.d,tr.e,tr.f,tr.g,tr.h,tr.i,
vif.out
);
end
else $error("randomize failed");
end
end

endmodule
	