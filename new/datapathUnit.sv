module datapathUnit(input logic clk, [4:0]buttons, [6:0]songDataPos,
				    output logic songplay,button_in,[4:0]songD,[6:0] seg, [3:0] AN);
	//logic [4:0] songD;
	logic is_equal;
	logic[6:0] pointOut;
	logic [4:0] button_debounced;
	logic[3:0]digit1, digit2, digit3;
	logic dp;
	initial begin dp = 1; end
	songData sd(clk, songDataPos, songD);
	PushButton_Debouncer db1(clk,buttons[0],button_debounced[0]);
	PushButton_Debouncer db2(clk,buttons[1],button_debounced[1]);
	PushButton_Debouncer db3(clk,buttons[2],button_debounced[2]);
	PushButton_Debouncer db4(clk,buttons[3],button_debounced[3]);
	PushButton_Debouncer db5(clk,buttons[4],button_debounced[4]);
	equalityCheck ec(button_debounced, songD, is_equal );
	pointKeeper pk(is_equal,pointOut);
	assign digit2 = pointOut%7'd100;
	assign digit1 = pointOut%7'd10;
	assign digit3 = (pointOut>7'd99);
	display_controller dc(clk ,1,4'b0111,4'b0000,digit3,digit2,digit1, AN, seg, dp);
	soundSystem ss(clk,songD,songplay );
	assign button_in = button_debounced?1:0;
endmodule
