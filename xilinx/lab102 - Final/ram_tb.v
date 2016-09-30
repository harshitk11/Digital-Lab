`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:49:24 09/30/2016
// Design Name:   ram
// Module Name:   C:/Users/user/Documents/GitHub/Digital-Lab/xilinx/lab102 - Copy/ram_tb.v
// Project Name:  lab102
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_tb;

	// Inputs
	reg [7:0] din;
	reg [3:0] addr;
	reg wr_en;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.din(din), 
		.out(out), 
		.addr(addr), 
		.wr_en(wr_en), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		din = 0;
		addr = 0;
		wr_en = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		din = 8'b10010011;
		addr = 4'b0011;
		wr_en = 1;
		rst = 0;
		
		#110;
		wr_en = 0;
		addr = 4'b10010;
		#50;
		wr_en = 1;
		#110;
		wr_en = 0;
		addr = 4'b0011;
		
		
		
	end
	
	always begin
	clk = ~clk;
	#25;
	end
      
endmodule

