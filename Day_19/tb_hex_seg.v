module tb_seg;
logic [3:0]in;
logic [6:0]y;
int i;
i_seg dut (.in(in),.y(y));
initial begin
for(i=0;i<16;i++) begin
in = i;
#5;
$display("in=%0d||y=%07b",in,y);
end
end
endmodule