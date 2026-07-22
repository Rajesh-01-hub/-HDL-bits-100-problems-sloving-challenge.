module priorty_encoder#(parameter N=8)(input [N-1:0]in,output reg [$clog2(N)-1:0]out);
integer i;
always@* begin
for(i=0;i<N;i++) begin

if(in[i]) begin
out=i;
valid=1;
end

else begin
out=0; valid=0;
end

end
end
endmodule