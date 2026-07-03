`timescale 1ns/1ps

module lock_system_tb;

parameter W = 8;

// Inputs
reg [W-1:0] set_p;
reg [W-1:0] en_p;
reg rst;
reg clk;

// Outputs
wire y;
wire fail_t;
wire [1:0] count;

// DUT
lock_system #(W) dut (
    .set_p(set_p),
    .en_p(en_p),
    .rst(rst),
    .clk(clk),
    .y(y),
    .fail_t(fail_t),
    .count(count)
);

// Clock Generation (10 ns period)
always #5 clk = ~clk;

// Test Sequence
initial begin

    // Initialize
    clk   = 0;
    rst   = 1;
    set_p = 8'b10101010;
    en_p  = 8'b00000000;

    #15;
    rst = 0;

    // -------------------------
    // Wrong Password
    // -------------------------
    #10;
    en_p = 8'b11110000;

    #20;

    // -------------------------
    // Correct Password
    // -------------------------
    en_p = 8'b10101010;

    #20;

    // Wrong Password
    en_p = 8'b00001111;

    #20;

    // Correct Password
    en_p = 8'b10101010;

    #20;

    // Correct Password Again
    en_p = 8'b10101010;

    #20;

    // Reset
    rst = 1;
    #10;
    rst = 0;

    #20;

    $finish;

end

// Monitor Signals
initial begin
    $monitor(
        "Time=%0t | rst=%b | set_p=%b | en_p=%b | y=%b | count=%d | fail_t=%b",
        $time,
        rst,
        set_p,
        en_p,
        y,
        count,
        fail_t
    );
end

endmodule