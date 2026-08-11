module rotator(input [4:0]b,input sel,input en,output[4:0]RSR,LSR);
reg [4:0]RSR_r,LSR_r;
always@* begin
    if(en)begin
        case(sel)
        1'b0 : LSR_r = {b[3:0],b[4]};
        1'b1 : RSR_r = {b[0],b[4:1]};
        default : {LSR_r,RSR_r} = 0;
        endcase
    end
    else {LSR_r,RSR_r} = {LSR_r,RSR_r};
end
assign RSR = RSR_r;
assign LSR = LSR_r;
endmodule