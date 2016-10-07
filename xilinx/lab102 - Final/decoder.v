`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:11 09/28/2016 
// Design Name: 
// Module Name:    decoder 
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
module decoder(addr,sel,enable);
input [3:0] addr;                  //address of the 8 bit register you want to select
output [15:0] sel;
reg [15:0] sel;
input enable;
wire [3:0] flag;

always @(addr or enable)
	begin
	if(enable == 1'b1)
		begin

		case (addr)
		4'b0000: sel = 16'h0001; 
		4'b0001: sel = 16'h0002;
		4'b0010: sel = 16'h0004;
		4'b0011: sel = 16'h0008;
		4'b0100: sel = 16'h0010;
		4'b0101: sel = 16'h0020;
		4'b0110: sel = 16'h0040;
		4'b0111: sel = 16'h0080;
		4'b1000: sel = 16'h0100;
		4'b1001: sel = 16'h0200;
		4'b1010: sel = 16'h0400;
		4'b1011: sel = 16'h0800;
		4'b1100: sel = 16'h1000;
		4'b1101: sel = 16'h2000;
		4'b1110: sel = 16'h4000;
		4'b1111: sel = 16'h8000;
		default: sel = 16'hzzzz;
		endcase	
		
		end
	else
		sel = 16'hzzzz;
	end
endmodule
