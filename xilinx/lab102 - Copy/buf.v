`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:19 09/28/2016 
// Design Name: 
// Module Name:    buf 
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
module buff(in,out,read_en);
input read_en;					//read_en : read enable comes from the decoder
input [7:0] in;
output [7:0] out;
reg [7:0] out;

//assign out = read_en ? in : 8'bz ;                

always @ (read_en or in)
	begin 
	if ( read_en == 1'b1 )
		begin
			out = in;
		end
	else 		out = 8'bz;
	
	end
endmodule
