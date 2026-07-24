module  barrel_shifter(input signed[7:0]in,
					   input [2:0]shmat,
					   input [1:0]sel,
					   output [7:0]out);
reg [7:0]out_r;
always@*  begin
case(sel) 
2'b00 : out_r =  $unsigned(in)>>shmat;  //Right shift loigcal
2'b01 : out_r = in<<shmat; //left shift logical
2'b10 : out_r = (in>>>shmat); // arthmetic right shift logical
2'b11 : out_r =  8'hff; // output custom
default : out_r = 8'd0;
endcase
end	
assign out = out_r;				   
endmodule