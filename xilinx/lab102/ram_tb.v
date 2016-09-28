`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:46:28 09/28/2016
// Design Name:   ram
// Module Name:   D:/xilinx/lab102/ram_tb.v
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
	   $readmemb("mem1.txt",din) ;
		addr = 3;
		wr_en = 1;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
		always begin 
		#25;
		clk = ~clk;
		end
endmodule

