module rotator(input [4:0]b,input clk,input sel,output[4:0]RSR,LSR);
reg [4:0]RSR_r,LSR_r;
  always@(posedge clk) begin
        case(sel)
        1'b0 : LSR_r = {b[3:0],b[4]};
        1'b1 : RSR_r = {b[0],b[4:1]};
        default : {LSR_r,RSR_r} = 0;
        endcase
end
assign RSR = RSR_r;
assign LSR = LSR_r;
endmodule