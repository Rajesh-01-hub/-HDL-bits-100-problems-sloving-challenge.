module comp_8(input [7:0]a,b,input en, output eq,gt,lt);
always@* begin
    if(en) begin
        eq = (a==b);
        gt = (a>b);
        lt = (a<b);
    end
    else {eq,gt,lt} = 0;
end
endmodule