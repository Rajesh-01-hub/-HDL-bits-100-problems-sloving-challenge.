`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2026 22:07:54
// Design Name: 
// Module Name: add_sub_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module add_sub_tb();
reg [15:0]a,b;
reg mode;
wire [15:0]sum;
wire cout;
add_sub uut (.a(a),.b(b),.mode(mode),.sum(sum),.carry_out(cout));
task sel_mode_0();
integer i;
begin
mode = 0;
for(i=0;i<16;i=i+1) begin
  {a,b}=$random();#5;
  $display("time=%0t||a=%0b||b=%0b||sum=%0b||cout=%0b",$time,a,b,sum,cout);
 end
end
endtask

task sel_mode_1();
integer i;
begin
mode = 1;
for(i=0;i<16;i=i+1) begin
  {a,b}=$random();#5;
  $display("time=%0t||a=%0b||b=%0b||sum=%0b||cout=%0b",$time,a,b,sum,cout);
 end
end
endtask
initial begin
a=16'b0; b=16'b0; mode=0; #5;
sel_mode_0();
#5;
sel_mode_1();
#5;
$finish;
end
endmodule
