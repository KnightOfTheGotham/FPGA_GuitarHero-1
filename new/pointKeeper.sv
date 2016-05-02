module pointKeeper(input logic comp, output logic [6:0] pointOut, logic overflow);
	reg[6:0] points;
	initial begin points=7'b0;end
	always_comb
		if(points<=7'b11111111)
			if(comp)
				points=points+1;
			else 
				points=points;
		else 
			begin overflow = 1; points = 8'b0; end
endmodule
