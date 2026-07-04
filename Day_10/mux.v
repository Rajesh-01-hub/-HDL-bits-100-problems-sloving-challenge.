`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2026 19:40:46
// Design Name: 
// Module Name: mux
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


module mux(input [3:0]in,input[1:0]sel,output reg out);
always @* begin
case(sel)
2'd0:out=in[0];
2'd1: out=in[1];
2'd2: out=in[2];
2'd3: out=in[3];
default : out=1'b0;
endcase
end
endmodule
