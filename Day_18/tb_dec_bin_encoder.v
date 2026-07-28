`timescale 1ns/1ps

module tb_dec_bin;

    reg  [9:0] in;
    wire [3:0] out;

    // Instantiate DUT
    dec_bin dut (
        .in(in),
        .out(out)
    );

    initial begin
        $display("------------------------------------------------");
        $display(" Time\t\tInput\t\t\tOutput");
        $display("------------------------------------------------");

        // One-hot inputs
        in = 10'b0000000001; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b0000000010; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b0000000100; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b0000001000; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b0000010000; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b0000100000; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b0001000000; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b0010000000; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b0100000000; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b1000000000; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        // Multiple bits set (priority test)
        in = 10'b0000001010; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        in = 10'b0010010000; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        // No bits set
        in = 10'b0000000000; #10;
        $display("%0t\t%b\t%d", $time, in, out);

        $finish;
    end

endmodule