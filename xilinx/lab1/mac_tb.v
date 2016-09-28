`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:20:10 09/25/2016
// Design Name:   mac
// Module Name:   D:/xilinx/lab1/mac_tb.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mac
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mac_tb;

	// Inputs
	reg [3:0] cnt;

	// Outputs
	wire [19:0] out;

	// Instantiate the Unit Under Test (UUT)
	mac uut (
		.cnt(cnt), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		cnt = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always begin
	#20;
	cnt = cnt + 1'b;
	if (cnt == 16)
		begin
			$finish;
		end
	end		
      
endmodule

