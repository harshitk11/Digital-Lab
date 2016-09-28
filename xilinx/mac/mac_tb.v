`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:05 09/02/2016
// Design Name:   mac
// Module Name:   D:/xilinx/mac/mac_tb.v
// Project Name:  mac
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
	reg clk;
	

	// Outputs
	wire [17:0] out;
	

	// Instantiate the Unit Under Test (UUT)
	mac uut (
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	  
	  
		
		

	end
	
	always begin
	#25
	clk = ~clk;
   end
endmodule

