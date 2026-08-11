module tb;
reg [4:0]b;
reg sel,en;
wire [4:0]RSR,LSR;
rotator DUT (.b(b),.sel(sel),.en(en),.RSR(RSR),.LSR(LSR));
initial begin
    en=0; b=0; sel=0;
    #10;
    en=1; 
    #10;
    b=5'b1101;
    #6;
    sel=1; b=5'b1010;
    #6;
    $finish;
end
initial begin
    $display("b=%0d||sel=%0d||en=%0d||RSR=%0d||LSR=%0d",b,sel,en,RSR,LSR);
end
endmodule