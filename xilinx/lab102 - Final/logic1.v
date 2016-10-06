`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:27 10/06/2016 
// Design Name: 
// Module Name:    logic1 
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
module logic1(comp_out,cnt1,cnt2,cnt);
input [1:0] comp_out;
output cnt1,cnt2,cnt;
reg [3:0] cnt,cnt1,cnt2;


always @ (comp_out)
begin
	if ( comp_out == 2'b01 )
	begin
		cnt2 <= cnt2 + 4'b0001;
	end
	
	else if ( comp_out == 2'b10 )
	begin
		cnt1 <= cnt1 + 4'b0001;
	end
	else if ( comp_out == 2'b00 )
	begin
		cnt <= cnt1;
		cnt1 <= cnt1 + 4'b0001;	
	end
		

end

endmodule

