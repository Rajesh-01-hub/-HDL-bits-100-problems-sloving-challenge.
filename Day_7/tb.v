`timescale 1ns/1ps

module tb_booths_algorithm;

    reg clk;
    reg rst;
    reg start;
    reg [3:0] multiplicant;
    reg [3:0] multiplier;

    wire [7:0] product;
    wire done;

    // DUT
    booths_algorithm dut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .multiplicant(multiplicant),
        .multiplier(multiplier),
        .product(product),
        .done(done)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Monitor
    initial begin
        $monitor(
            "T=%0t State=%0d A=%0d Q=%0d q1=%0b Count=%0d Product=%0d Done=%0b",
            $time,
            dut.state,
            dut.A,
            dut.Q,
            dut.q1,
            dut.count,
            product,
            done
        );
      $dumpfile("dump.vcd"); $dumpvars;
    end

    // Test Sequence
    initial begin

        // Reset
        rst = 1;
        start = 0;
        multiplicant = 0;
        multiplier = 0;

        #20;
        rst = 0;

        //--------------------------------------------------
        // Test 1 : 3 x 2 = 6
        //--------------------------------------------------
        multiplicant = 4'd3;
        multiplier   = 4'd2;

        start = 1;
        #10;

        wait(done);
      $display("3 x 2 = %0d  Product = %0d||done=%0d", 6, product,done);

        #20;

        //--------------------------------------------------
        // Test 2 : 5 x 5 = 25
        //--------------------------------------------------
        multiplicant = 4'd5;
        multiplier   = 4'd5;

        start = 1;
        #10;

        wait(done);
      $display("5 x 5 = %0d  Product = %0d||done=%0d", 25, product,done);

        #20;

        //--------------------------------------------------
        // Test 3 : 7 x 7 = 49
        //--------------------------------------------------
        multiplicant = 4'd7;
        multiplier   = 4'd7;

        start = 1;
        #10;

        wait(done);
      $display("7 x 7 = %0d  Product = %0d||done=%0d", 49, product,done);

        #20;
      
              //--------------------------------------------------
        // Test 1 : 6 x 2 = 12
        //--------------------------------------------------
        multiplicant = 4'd6;
        multiplier   = 4'd2;

        start = 1;
        #10;

        wait(done);
      $display("6 x 2 = %0d  Product = %0d||done=%0d", 12, product,done);

        #20;
        //--------------------------------------------------
        // Test 1 : 11x 2 = 22
        //--------------------------------------------------
        $finish;
    end

endmodule
