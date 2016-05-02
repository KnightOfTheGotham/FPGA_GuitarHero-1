module controlUnit(input logic clk, buttonIn, output logic [6:0] pos);
	logic countersig;
	logic timer;
	//timer için clk divider lazım o eklencek
	controllerFSM(clk,buttonIn,timer, countersig);
	controllerCounter(countersig,pos);
endmodule
