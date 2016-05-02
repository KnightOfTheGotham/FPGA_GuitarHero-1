module controlUnit(input logic clk, buttonIn, output logic [6:0] pos);
	logic countersig;
	controllerFSM(buttonIn, countersig);
	controllerCounter(countersig,pos);
endmodule