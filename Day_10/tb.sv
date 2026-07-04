`timescale 1ns/1ps

interface msg_if;
logic [3:0]send_data;
logic [1:0]sender_id;
logic [1:0]receiver_id;
logic [3:0]receive_data;
endinterface

class transction;
rand bit [3:0]send_data;
rand bit [1:0]sender_id;
rand bit [1:0]receiver_id;

function void display();
    $display("--------------------------------");
    $display("send_data   = %b", send_data);
    $display("sender_id   = %0d", sender_id);
    $display("receiver_id = %0d", receiver_id);
    $display("--------------------------------");
 endfunction
endclass

class driver;
	virtual msg_if vif;
	function new(virtual msg_if vif);
		this.vif=vif;
	endfunction
	task drive(transction tr);
	vif.send_data=tr.send_data;
	vif.sender_id=tr.sender_id;
	vif.receiver_id=tr.receiver_id;
	#10;
	endtask
endclass

module tb;
msg_if vif();
simple_basic_msg_transfor dut(.send_data(vif.send_data),.sender_id(vif.sender_id),.receiver_id(vif.receiver_id),.receive_data(vif.receive_data));
transction tr;
driver drv;
initial begin
tr=new();
drv=new(vif);
repeat(10)begin
assert(tr.randomize());
tr.display();
drv.drive(tr);
#10;
$display("receive_data=%0d",vif.receive_data);
end
$finish;
end
endmodule