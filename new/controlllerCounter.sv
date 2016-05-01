module controllerCounter(input logic sig, output log[6:0] pos);
	logic [6:0] posCount;
	always@(posedge sig)
		posCount<=posCount+1;
endmodule