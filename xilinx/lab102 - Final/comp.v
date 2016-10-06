`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:45 09/30/2016 
// Design Name: 
// Module Name:    comp 
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
module comp(r1,r2,out);

input [7:0] r1,r2;
output out;
reg [1:0] out;
always @ (r1 or r2)
begin
	
		if(r1>r2)
		begin 
			out = 2'b01;
		end	
		else if(r1<r2)
		begin 
			out = 2'b10;
		end	
		else 
		begin 
			out = 2'b00;
		end
		
end		
endmodule