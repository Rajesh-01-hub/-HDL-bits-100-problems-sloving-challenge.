module tb;
reg en,d;
wire q;
 d_latch dut (.en(en),.d(d),.q(q));
initial begin
    en = 0; d=1;
    #10;
    en =1; 
    #10;
    d=0;
    #10;
    en=0;
    #10;
    $finish;
end
initial begin
    $monitor("d=%0d||en=%0d||q=%0d",d,en,q);
end
endmodule
/*
T=0   d=1 en=0 q=x
T=10  d=1 en=1 q=1
T=20  d=0 en=1 q=0
T=30  d=0 en=0 q=0
*/