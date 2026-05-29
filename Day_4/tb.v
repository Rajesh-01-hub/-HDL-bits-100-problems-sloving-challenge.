// test_bench
// Code your testbench here
// or browse Examples
module tb;
  reg [3:0]a;
  reg [1:0]shmat;
  wire [3:0]y;
  LSL dut (.a(a),.shmat(shmat),.y(y));
  initial begin
  a=4'd0; shmat=2'd0;#10;
    $display("a=%0b||shmat=%0d||y=%0b",a,shmat,y);
  a=4'd5; shmat=2'd1;#10;
    $display("a=%0b||shmat=%0d||y=%0b",a,shmat,y);
  a=4'd6; shmat=2'd2;#10;
    $display("a=%0b||shmat=%0d||y=%0b",a,shmat,y); 
  a=4'd5; shmat=2'd1;#10;
    $display("a=%0b||shmat=%0d||y=%0b",a,shmat,y);
    $finish;
  end
endmodule
