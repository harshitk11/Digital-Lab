`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:36:52 09/29/2016 
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

input cnt;
wire [4:0] cnt;				//counter input
output out;				//sum output
reg [19:0] out;
//reg [7:0] m1 [0:15];      //memory block
//reg [7:0] m2 [0:15];		  //memory block

//initial $readmemb("mem1.txt", m1);
//initial $readmemb("mem2.txt", m2);

reg [7:0] r1,r2;					//registers that store data from the memory block
wire [15:0] p;                //product of r1 and r2  
wire [19:0] s,wr;


assign p = r1 * r2;
//assign s = p + out;
RCA a1(p,out,1'b0,s);
always @(cnt)
	begin
		if ( cnt == 5'b0 )
			begin
				out <= 0;
			end
		else
			begin
			out <= s;
			end
		if (cnt <= 5'b01111)
			begin
				r1 <= m1[cnt];
				r2 <= m2[cnt];
			end
		else
			begin
				r1 <= 0;
				r2 <= 0;
			end	
	end	
endmodule