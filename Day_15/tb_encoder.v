// Code your testbench here
// or browse Examples
module tb;
  reg [7:0]in;
  wire [2:0]out;
  wire valid;
  priorty_encoder dut(.in(in),.out(out));
  initial begin
    in=8'd0;#5;
    repeat(5)begin
      in = $random();
      #5;
      $display("in=%08b||out=%03b",in,out);
    end
    $finish;
  end
endmodule