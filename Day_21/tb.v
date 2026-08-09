module tb;
reg [7:0]a,b;
reg en;
wire eq,gt,lt;
comp_8 dut (.a(a),.b(b),.en(en),.eq(eq),.gt(gt),.lt(lt));
initial begin
    en = 0;
    #10;

    repeat(5) begin
    a = $random();
    b = $random();
    en =1;
    #10;
    $display("a=%0d||b=%0d||en=%0b||{eq,gt,lt}=%0d|%0d|%0d",a,b,en,eq,gt,lt);
    end

end
endmodule