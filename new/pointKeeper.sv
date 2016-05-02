module pointKeeper(input logic comp, output logic [6:0] pointOut);
	logic[6:0] points;
	initial begin points=7'b0;end
	assign pointOut = points;
	always@(posedge comp)
		if(points<7'b1111111)
				points=points+1;
		else 
			begin points = 7'b0; end
endmodule
