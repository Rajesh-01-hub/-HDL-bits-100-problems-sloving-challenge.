module dec_bin(input[9:0]in,output reg [3:0]out);
always@* begin
    casex(in)
        10'b000000_0001  : out = 4'd0;
        10'b000000_001x  : out = 4'd1;
        10'b000000_01xx  : out = 4'd2;
        10'b000000_1xxx  : out = 4'd3;
        10'b000001_xxxx  : out = 4'd4;
        10'b00001x_xxxx  : out = 4'd5;
        10'b0001xx_xxxx  : out = 4'd6;
        10'b001xxx_xxxx  : out = 4'd7;
        10'b01xxxx_xxxx  : out = 4'd8;
        10'b1xxxxx_xxxx  : out = 4'd9;
        default : out = 4'd0;
    endcase
end
endmodule