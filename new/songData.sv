module songData(clk,cnt,data);
	
	input clk
	input [6:0] cnt;
	output [4:0] data
	
	reg [4:0] data
	reg [4:0] notes [0:93];
	
	initial begin
		notes[0]=5'b00001;
		notes[1]=5'b00001;
		notes[2]=5'b00100;
		notes[3]=5'b00100;
		notes[4]=5'b10000;
		notes[5]=5'b10000;
		notes[6]=5'b01000;
		notes[7]=5'b01000;
		notes[8]=5'b01000;
		notes[9]=5'b01000;
		notes[10]=5'b01000;
		notes[11]=5'b00010;
		notes[12]=5'b00010;
		notes[13]=5'b00100;
		notes[14]=5'b00001;
		notes[15]=5'b00100;
		notes[16]=5'b00001;
		notes[17]=5'b00001;
		notes[18]=5'b00100;
		notes[19]=5'b00100;
		notes[20]=5'b10000;
		notes[21]=5'b10000;
		notes[22]=5'b01000;
		notes[23]=5'b01000;
		notes[24]=5'b01000;
		notes[25]=5'b01000;
		notes[26]=5'b00010;
		notes[27]=5'b00010;
		notes[28]=5'b00100;
		notes[29]=5'b00001;
		notes[30]=5'b00100;
		notes[31]=5'b10000;
		notes[32]=5'b10000;
		notes[33]=5'b00100;
		notes[34]=5'b00100;
		notes[35]=5'b00010;
		notes[36]=5'b00010;
		notes[37]=5'b00001;
		notes[38]=5'b10000;
		notes[39]=5'b10000;
		notes[40]=5'b00100;
		notes[41]=5'b00100;
		notes[42]=5'b00010;
		notes[43]=5'b00010;
		notes[44]=5'b00001;
		notes[45]=5'b00001;
		notes[46]=5'b00001;
		notes[47]=5'b00100;
		notes[48]=5'b00100;
		notes[49]=5'b10000;
		notes[50]=5'b10000;
		notes[51]=5'b01000;
		notes[52]=5'b01000;
		notes[53]=5'b01000;
		notes[54]=5'b01000;
		notes[55]=5'b00010;
		notes[56]=5'b00010;
		notes[57]=5'b00100;
		notes[58]=5'b00001;
		notes[59]=5'b00100;
		notes[60]=5'b10000;
		notes[61]=5'b10000;
		notes[62]=5'b00100;
		notes[63]=5'b00100;
		notes[64]=5'b00010;
		notes[65]=5'b00010;
		notes[66]=5'b00001;
		notes[67]=5'b10000;
		notes[68]=5'b00100;
		notes[69]=5'b00100;
		notes[70]=5'b00100;
		notes[71]=5'b00010;
		notes[72]=5'b00010;
		notes[73]=5'b00001;
		notes[74]=5'b10000;
		notes[75]=5'b10000;
		notes[76]=5'b00001;
		notes[77]=5'b00001;
		notes[78]=5'b00100;
		notes[79]=5'b00100;
		notes[80]=5'b10000;
		notes[81]=5'b10000;
		notes[82]=5'b01000;
		notes[83]=5'b01000;
		notes[84]=5'b01000;
		notes[84]=5'b01000;
		notes[85]=5'b00010;
		notes[86]=5'b00010;
		notes[87]=5'b00100;
		notes[88]=5'b00001;
		notes[89]=5'b00100;
		notes[90]=5'b00000;
		notes[91]=5'b00000;
		notes[92]=5'b00000;
		notes[93]=5'b00000;

		
	end
	always_ff@(posedge clk)
	begin
		data <= notes[cnt];
	end
endmodule
