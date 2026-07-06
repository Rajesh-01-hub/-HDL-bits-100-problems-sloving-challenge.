`timescale 1ns/1ps

interface ca_if;
logic [3:0]a,b;
logic cin;
logic [3:0]sum;
logic cout;
endinterface

class transction;
randc bit [3:0]a,b;
randc bit cin;
static int count;
  


function void display();
count++;
$display("[%0d]->a=%0d||b=%0d||cin=%0d",count,a,b,cin);
endfunction
endclass

class driver;
virtual ca_if vif;

function new(virtual ca_if vif);
this.vif=vif;
endfunction

task drive(transction tr);
vif.a=tr.a;
vif.b=tr.b;
vif.cin=tr.cin;
#10;
endtask
endclass

module tb;
ca_if vif();
CSA dut(.a(vif.a),.b(vif.b),.cin(vif.cin),.sum(vif.sum),.cout(vif.cout));
transction tr=new();
driver drv=new(vif);
initial begin
repeat(10)begin
assert(tr.randomize());
tr.display();
drv.drive(tr);
#10;
$display("{cout,sum}=%0b(%0d)",{vif.cout,vif.sum},{vif.cout,vif.sum});
end
$finish;
end
<<<<<<< HEAD:Day_11/CSA_tb.sv
endmodule
=======
endmodule
>>>>>>> e8aee812fb0690deb14d1c35ce6393397910e7da:Day_12/CSA_tb.sv
