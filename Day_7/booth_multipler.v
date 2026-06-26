// Code your design here
module booths_algorithm
(
input clk,rst,start,
input [3:0]multiplicant,multiplier,
output reg [7:0] product,
output reg done
);

// FSM STATES
//typedef enum  {IDLE,INIT,CHECK,ADD_SUB,SHIFT,DONE} state_t;

//state_t state,next_state;
reg [2:0]state,next_state;
parameter IDLE=3'd0,INIT=3'd1,CHECK=3'd2,ADD_SUB=3'd3,SHIFT=3'd4,DONE=3'd5;

reg  [3:0]A,M;
reg [3:0]Q;
reg q1;
reg [2:0]count; //---> in general we use 1:0 to count 4 but to mitigate ambuguity we would consider [2:0]

// whats the next step???

always@(posedge clk)
begin
	if (rst)
		state <= IDLE;
	else
		state <= next_state;
end

always@(*)begin
next_state=state;
case(state)
 IDLE: begin
 if(start) next_state=INIT;
 else next_state=IDLE;
 end
 INIT:begin
 next_state=CHECK;
 end
 CHECK: begin
 if({Q[0],q1}==(2'b01)||{Q[0],q1}==(2'b10)) next_state=ADD_SUB;
 else next_state=SHIFT;
 end
 ADD_SUB: begin
 next_state = SHIFT;
 end
SHIFT:
        if(count == 1)
            next_state = DONE;
        else
            next_state = CHECK;

 DONE:
        next_state = IDLE;

default:
        next_state = IDLE;

endcase
end
	
always @(posedge clk)
begin
    if(rst)
    begin
        A <= 0;
        Q <= 0;
        M <= 0;
        q1 <= 0;
        count <= 0;
        done <= 0;
        product <= 0;
    end
    else
    begin
        case(state)

        INIT:
        begin
            A <= 0;
            Q <= multiplier;
            M <= multiplicant;
            q1 <= 0;
            count <= 4;
			done <= 0;
        end

        ADD_SUB:
        begin
            if({Q[0],q1} == 2'b01)
                A <= A + M;
            else if({Q[0],q1} == 2'b10)
                A <= A - M;
        end

        SHIFT:
        begin
            {A,Q,q1} <= {A[3],A,Q};
            count <= count - 1;
        end

        DONE:
        begin
            product <= {A,Q};
            done <= 1;
        end

        endcase
    end
end

endmodule
