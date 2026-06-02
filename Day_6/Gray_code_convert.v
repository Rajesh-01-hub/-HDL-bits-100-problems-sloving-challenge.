module GC #(parameter N=8)
(
    input  logic         clk,
    input  logic         rst,
    output logic [N-1:0] out
);

logic [N-1:0] count;

always_ff @(posedge clk) begin
    if (rst)
        count <= '0;
    else
        count <= count + 1'b1;
end

assign out = count ^ (count >> 1);

endmodule
