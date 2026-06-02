module tb_GC;

parameter N = 8;

logic clk;
logic rst;
logic [N-1:0] out;

// DUT Instantiation
GC #(N) dut (
    .clk(clk),
    .rst(rst),
    .out(out)
);

// Clock Generation (10 ns period)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Stimulus
initial begin
    rst = 1;
    #12;
    rst = 0;

    // Run for some clock cycles
    repeat (20) @(posedge clk);

    $finish;
end

// Monitor
initial begin
    $display("Time\tReset\tGray Code");
    $monitor("%0t\t%b\t%b", $time, rst, out);
end

endmodule
