// Write your modules here!
module div(input signed [3:0]in,input [1:0]shmat,output reg signed [3:0]out);
always @* begin
    if (in[3])          // Negative
        out = in >>> shmat;
    else                // Positive or zero
        out = in >> shmat;
end
endmodule
