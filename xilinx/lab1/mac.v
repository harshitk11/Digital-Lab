`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:11 09/25/2016 
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
module mac(cnt,out);

input cnt;				//counter input
output out;				//sum output
reg [19:0] out;
reg [7:0] m1 [0:15];      //memory block
reg [7:0] m2 [0:15];		  //memory block

$readmemb("mem1.txt", m1);
$readmemb("mem2.txt", m2);

reg [7:0] r1,r2;					//registers that store data from the memory block
wire [15:0] p;                //product of r1 and r2  
wire [19:0] s;

assign p = r1* r2;
assign s = p + out;

always @(cnt or s)
	begin
		r1 <= m1[cnt];
		r2 <= m2[cnt];
		out <= s;
	end	
endmodule
