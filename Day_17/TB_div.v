`timescale 1ns/1ps

module tb_div;

    reg signed [3:0] in;
    reg [1:0] shmat;
    wire signed [3:0] out;

    // Instantiate DUT
    div dut (
        .in(in),
        .shmat(shmat),
        .out(out)
    );

    initial begin
        $display(" Time   in(decimal)  in(binary)  shmat   out(decimal)  out(binary)");
        $display("---------------------------------------------------------------");

        // Test 1 : +7 / 2 = 3
        in = 4'sd7; shmat = 2'd1;
        #10;
        $display("%4t     %2d        %b      %0d        %2d         %b",
                 $time, in, in, shmat, out, out);

        // Test 2 : +4 / 4 = 1
        in = 4'sd4; shmat = 2'd2;
        #10;
        $display("%4t     %2d        %b      %0d        %2d         %b",
                 $time, in, in, shmat, out, out);

        // Test 3 : -8 / 2 = -4
        in = -4'sd8; shmat = 2'd1;
        #10;
        $display("%4t     %2d        %b      %0d        %2d         %b",
                 $time, in, in, shmat, out, out);

        // Test 4 : -4 / 2 = -2
        in = -4'sd4; shmat = 2'd1;
        #10;
        $display("%4t     %2d        %b      %0d        %2d         %b",
                 $time, in, in, shmat, out, out);

        // Test 5 : -2 / 2 = -1
        in = -4'sd2; shmat = 2'd1;
        #10;
        $display("%4t     %2d        %b      %0d        %2d         %b",
                 $time, in, in, shmat, out, out);

        // Test 6 : 0 / 2 = 0
        in = 4'sd0; shmat = 2'd1;
        #10;
        $display("%4t     %2d        %b      %0d        %2d         %b",
                 $time, in, in, shmat, out, out);

        $finish;
    end

endmodule