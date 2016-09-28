`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:18:52 09/28/2016 
// Design Name: 
// Module Name:    Dflipflop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Dflipflop(en,D,clk,rst,Q);
input en,D,clk,rst;                     
output Q;
reg Q;

always @(posedge clk)
begin
	if (rst == 1'b1)
		begin
		Q <= 0;
		end
	else 
		begin
		if ( en == 1'b1 )
			begin
			Q <= D;
			end
		else 
			begin
			Q <= Q;
			end
		end
end		

endmodule
