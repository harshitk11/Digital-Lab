`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:57:23 09/26/2016 
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
module mac(m1,m2,out,reset);
input reset;
//input cnt;
//wire [3:0] cnt;				//counter input
output out;				//sum output
reg [19:0] out;
input [7:0] m1     ;   //memory block
input [7:0] m2  	;	  //memory block

//initial $readmemb("mem1.txt", m1);
//initial $readmemb("mem2.txt", m2);

reg [7:0] r1,r2;					//registers that store data from the memory block
wire [15:0] p;                //product of r1 and r2  
wire [19:0] s,wr;


assign p = r1 * r2;
//assign s = p + out;
RCA a1(p,out,1'b0,s);
always @(m1 or m2 or reset)
	begin
	if (reset == 1'b1)
		begin
		out <= 0;
		end
	else
		begin 
		r1 <= m1;
		r2 <= m2;
		out <= s;
		end
	
	
	
/*		if ( cnt == 5'b0 )
*			begin
*				out <= 0;
*		end
*		else
*			begin
*			out <= s;
*			end
*		if (cnt <= 5'b01111)
*			begin
*				r1 <= m1[cnt];
*				r2 <= m2[cnt];
*			end
*		else
*			begin
*				r1 <= 0;
*				r2 <= 0;
*			end	
*/	end	
endmodule