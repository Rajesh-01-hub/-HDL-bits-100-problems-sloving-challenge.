module tb_add_sub;

    reg [3:0] a, b, c;
    wire [3:0] sum;
    wire cout;

    add_sub dut (
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .cout(cout)
    );

    integer i;

    initial begin
        for (i = 0; i < 20; i = i + 1) begin

            a = $random;
            b = $random;
            c = $random;

            #10;

            $display("Time=%0t | a=%d b=%d c=%d | w1=%d | cout=%b sum=%d",
                     $time, a, b, c, (b & c), cout, sum);
        end

        $finish;
    end

endmodule