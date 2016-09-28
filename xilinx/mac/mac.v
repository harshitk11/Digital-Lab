`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:54 09/02/2016 
// Design Name: 
// Module Name:    mac 
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
module mac(clk, out);

	input clk ;
	output out ;
	reg [3:0] cnt;
	
	wire clk;
	reg [17:0] out;
	wire [17:0] sum;
	reg [7:0] r1,r2;
	wire [15:0] mult;
	reg [7:0] d1 [15:0];
	reg [7:0] d2 [15:0];

//initializing memory
initial begin
	d1[15] = 8'b00010100;
	d1[14] = 8'b10110111;
	d1[13] = 8'b00010100;
	d1[12] = 8'b10110110;
	d1[11] = 8'b00110101;
	d1[10] = 8'b00110111;
	d1[9]  = 8'b10100101;
	d1[8]  = 8'b00110100;
	d1[7]  = 8'b00100101;
	d1[6]  = 8'b10110100;
	d1[5]  = 8'b00110101;
	d1[4]  = 8'b00100101;
	d1[2]  = 8'b10110100;
	d1[1]  = 8'b00110101;
	d1[0]  = 8'b10100100;
	d2[15] = 8'b00110101;
	d2[14] = 8'b00110101;
	d2[13] = 8'b10010111;
	d2[12] = 8'b00110101;
	d2[11] = 8'b10110111;
	d2[10] = 8'b00010101;
	d2[9]  = 8'b10110101;
	d2[8]  = 8'b00110101;
	d2[7]  = 8'b11100101;
	d2[6]  = 8'b00110101;
	d2[5]  = 8'b01110101;
	d2[4]  = 8'b10100101;
	d2[2]  = 8'b01110101;
	d2[1]  = 8'b01010101;
	d2[0]  = 8'b11110011;
	cnt    = 4'b0000;
end
	
	assign mult = r1 * r2;
	assign sum  = mult + out;
	always @(posedge clk)
	begin
	if(cnt < 16) begin
		r1 <= d1[cnt] ;
		r2 <= d2[cnt] ;
		cnt = cnt + 1 ;
		out <= sum;
		end
	end
		
endmodule
