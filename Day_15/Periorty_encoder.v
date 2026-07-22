module priorty_encoder(input [7:0]in,output reg [2:0]out);
  always@* begin
    casez(in) 
      8'b0000_0001:out=3'd0;
      8'b0000_001x:out=3'd1;
      8'b0000_01xx:out=3'd2;
      8'b0000_1xxx:out=3'd3;
      8'b0001_xxxx:out=3'd4;
      8'b001x_xxxx:out=3'd5;
      8'b01xx_xxxx:out=3'd6;
      8'b1xxx_xxxx:out=3'd7;
      default : out=3'dz;
    endcase
  end
endmodule