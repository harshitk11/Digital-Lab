`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:28:49 09/29/2016
// Design Name:   mac
// Module Name:   D:/xilinx/lab101/mac_tb.v
// Project Name:  lab101
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
	reg reset;
	integer i;

	// Outputs
	wire [19:0] out;

	// Instantiate the Unit Under Test (UUT)
	mac uut (
		.cnt(cnt), 
		.out(out), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		cnt = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1'b0;
		#5;
		reset = 1'b1;
		#5;
		reset = ~reset;
		
		
		for( i=0 ; i<16 ; i=i+1)
			begin
				cnt = cnt + 1;
				#20;
			end
			
        
		// Add stimulus here

	end
	
	
      
endmodule
