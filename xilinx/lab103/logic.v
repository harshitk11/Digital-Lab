`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:22 09/30/2016 
// Design Name: 
// Module Name:    logic 
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
module logic(comp_out,cnt1,cnt2);
input [2:0] comp_out;
output cnt1,cnt2;

always @ (comp_out)
begin
	if ( comp_out == 2'b01 )
	begin
		cnt2 <= cnt2 + 1;
	end
	
	else if ( comp_out == 2'b10 )
	begin
		cnt1 <= cnt1 + 1;
	end
	else 
		
		
		

endmodule
