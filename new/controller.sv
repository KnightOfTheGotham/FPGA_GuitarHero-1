module controller(input logic clk
							  pause,
							  rst,
							  beg,
							  comp,
				 output logic point
							  );
	logic [1:0] state, nextState;
	// changes state
	always@(posedge clk,  posedge rst, posedge pause)
	if(pause)
		state<=state;
	else
		if(rst)
			state<=2'b00;
		else
		state<=nextState;
	
/*	always_comb
if(beg)
//		case(state)
//			2'b00:begin  end
//			2'b01:begin end
			2'b10:begin end
			2'b11:begin end
	else 
		nextState = 2'b00;*/
endmodule