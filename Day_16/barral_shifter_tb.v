`timescale 1ns/1ps

module barrel_shifter_tb;

reg  signed [7:0] in;
reg  [2:0] shmat;
reg  [1:0] sel;
wire [7:0] out;

// Instantiate DUT
barrel_shifter dut (
    .in(in),
    .shmat(shmat),
    .sel(sel),
    .out(out)
);

initial begin
    $display("--------------------------------------------------------------");
    $display(" Time\t\t Input\t Shamt\t Sel\t Output");
    $display("--------------------------------------------------------------");
    $monitor("%0t\t %0d\t %0d\t %b\t %b",
             $time, in, shmat, sel, out);

    // Test 1 : Logical Right Shift
    in    = 8'b11110000;   // -16 (signed)
    shmat = 3'd2;
    sel   = 2'b00;
    #10;

    // Test 2 : Left Shift
    in    = 8'b00001111;   // 15
    shmat = 3'd3;
    sel   = 2'b01;
    #10;

    // Test 3 : Arithmetic Right Shift
    in    = -8'd16;
    shmat = 3'd2;
    sel   = 2'b10;
    #10;

    // Test 4 : Positive Arithmetic Right Shift
    in    = 8'd40;
    shmat = 3'd3;
    sel   = 2'b10;
    #10;

    // Test 5 : Custom Output
    in    = 8'd25;
    shmat = 3'd1;
    sel   = 2'b11;
    #10;

    // Test 6 : Shift by 0
    in    = 8'b10101010;
    shmat = 3'd0;
    sel   = 2'b01;
    #10;

    // Test 7 : Maximum Shift
    in    = 8'b11111111;
    shmat = 3'd7;
    sel   = 2'b00;
    #10;

    $display("--------------------------------------------------------------");
    $finish;
end

endmodule