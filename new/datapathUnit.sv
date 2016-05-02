module datapathUnit(input logic clk,clear, [4:0]buttons, [6:0]songDataPos,
				    output logic songplay,[4:0] button_debounced,[6:0] seg, [3:0] AN);
	logic [4:0] songD;
	logic is_equal;
	logic[6:0] pointOut;
	logic Overflow;
	logic[3:0]digit1, digit2, digit3;
	songData(clk, songDataPos, songD);
	buttonDebouncer(clk,buttons[0],button_debounced[0]);
	buttonDebouncer(clk,buttons[1],button_debounced[1]);
	buttonDebouncer(clk,buttons[2],button_debounced[2]);
	buttonDebouncer(clk,buttons[3],button_debounced[3]);
	buttonDebouncer(clk,buttons[4],button_debounced[4]);
	equalityChecker(button_debounced, songD, is_equal );
	pointKeeper(is_equal,pointOut,overflow);
	assign digit2 = pointOut%4'd100;
	assign digit1 = pointOut%4'd10;
	(pointOut>7'd99)?digit3=1;digit3=4'b0;
	display_controller(clk,clear,4'b0111,4'b0000,digit3,digit2,digit1, AN, C, dp);
	soundSystem(clk,songplay );
endmodule
