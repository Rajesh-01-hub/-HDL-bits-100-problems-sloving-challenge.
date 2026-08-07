// Code your design here
module LSL#(parameter N=4)(input [N-1:0]a,input [$clog2(N)-1:0]shmat,output reg [N-1:0]y);
// assign y = a<<shmat; Simple right but understand through hardware level
  mux_4 m1 (.in({3'b000,a[0]}),.sel(shmat),.y(y[0]));

  mux_4 m2 (.in({2'b00,a[0],a[1]}),.sel(shmat),.y(y[1]));

  mux_4 m3 (.in({1'b0,a[0],a[1],a[2]}),.sel(shmat),.y(y[2]));

  mux_4 m4 (.in({a[0],a[1],a[2],a[3]}),.sel(shmat),.y(y[3]));
endmodule
