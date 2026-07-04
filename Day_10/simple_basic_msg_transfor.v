`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2026 19:33:55
// Design Name: 
// Module Name: simple_basic_msg_transfor
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
`include "mux.v"
`include "dmux.v"
module simple_basic_msg_transfor(input[3:0]send_data,
input[1:0]sender_id,receiver_id,
output reg [3:0]receive_data);
wire w;
mux g1(.in(send_data),.sel(sender_id),.out(w));

dmux g2(.in(w),.sel(receiver_id),.out(receive_data));

endmodule
