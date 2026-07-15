module alu #(parameter N=8)(input [N-1:0]a,b,input [3:0]op_code, output [N-1:0]result, output o_flage);
reg  [N-1:0]alu_out;
wire  [N:0]temp;
assign temp= {1'b0,a}+{1'b0,b};
assign o_flage=temp[N];
always_comb begin
case(op_code)
4'h0: alu_out =(a&b);
4'h1: alu_out = (a|b);
4'h2: alu_out = (a^b);
4'h3: alu_out = a+b;
4'h4: alu_out = (a<<1);
4'h5: alu_out = (a>>1);
4'h6: alu_out = ({a[6:0],a[7]});
4'h7: alu_out = ({a[0],a[7:1]});
4'h8: alu_out = a-b;
4'h9: alu_out = b ? (a/b):0;
4'ha: alu_out = (a==b)? 1:0;
4'hb: alu_out = (a>b)? 1:0;
4'hc: alu_out = (a<b)? 1:0;
4'hd: alu_out = ($signed(a)>>>1);
4'he: alu_out = (a&(~b));
4'hf: alu_out = (a|(~b));
default: alu_out= a+b;
endcase
end
assign result=alu_out;
endmodule