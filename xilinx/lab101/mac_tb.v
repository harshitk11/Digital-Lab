`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:49 09/30/2016
// Design Name:   mac
// Module Name:   C:/Users/user/Documents/GitHub/Digital-Lab/xilinx/lab101/mac_tb.v
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
	reg [7:0] m1;
	reg [7:0] m2;
//	reg [3:0] cnt;
	reg reset;
	integer i;
	integer cnt;
	
	reg [7:0] mem1 [0:15];
	reg [7:0] mem2 [0:15];
	// Outputs
	wire [19:0] out;

	// Instantiate the Unit Under Test (UUT)
	mac uut (
		.m1(m1), 
		.m2(m2), 
		 
		.out(out), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		m1 = 0;
		m2 = 0;
		cnt = 0;
		reset = 0;
		$readmemb("mem1.txt", mem1);
      $readmemb("mem2.txt", mem2);

		// Wait 100 ns for global reset to finish
		#100;
		
		//Reset to set output to zero
		#100;
		reset = 1'b0;
		#5;
		reset = 1'b1;
		#5;
		reset = ~reset;
		#20;
        
		// Add stimulus here
		for( i=0 ; i<16 ; i=i+1)
			begin
				m1 <= mem1[cnt];
				m2 <= mem2[cnt];
				cnt = cnt + 1;
				#20;
			end

	end
      
endmodule


