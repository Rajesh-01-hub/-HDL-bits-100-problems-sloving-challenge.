class transaction;
  rand bit [7:0] a_r, b_r;
  randc bit [3:0] op_code_r;

  constraint set_data {
    (a_r[7] && b_r[7]) -> op_code_r == 3;
    (b_r == 0)         -> op_code_r == 9;
  }

endclass


module alu_tb;

parameter N = 8;

reg  [N-1:0] a, b;
reg  [3:0]   op_code;
wire [N-1:0] result;
wire         o_flage;

transaction tr;

alu dut (
    .a(a),
    .b(b),
    .op_code(op_code),
    .result(result),
    .o_flage(o_flage)
);

initial begin

    tr = new();

    repeat (15) begin

        if (tr.randomize()) begin
            a       = tr.a_r;
            b       = tr.b_r;
            op_code = tr.op_code_r;

            #5;

            $display("[%0t] a=%0d b=%0d op_code=%0d result=%0d o_flage=%0d",
                     $time, a, b, op_code, result, o_flage);
        end
        else
            $display("Randomization Failed");

    end

end

endmodule