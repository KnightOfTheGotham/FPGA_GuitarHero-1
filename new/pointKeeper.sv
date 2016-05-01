module pointKeeper(input logic comp, output reg [7:0] pointOut, reg overflow);
	reg[7:0] points;
	initial begin points=8'b0;end
	always_comb
		if(points<=8'b11111111)
			if(comp)
				points=points+1;
			else 
				points=points;
		else 
			begin overflow = 1; points = 8'b0; end
endmodule