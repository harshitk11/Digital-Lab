`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:32:13 10/07/2016
// Design Name:   ram
// Module Name:   C:/Users/user/Documents/GitHub/Digital-Lab/xilinx/lab102 - Final/ram_tb.v
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
	reg [7:0] mem1 [0:15];
	integer i;

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
		$readmemb("mem1.txt",mem1);
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		wr_en = 1;
		
		for(i = 0; i < 16; i = i+1)
		begin
		din = mem1[i];
		#25;
		addr = addr + 4'b0001;
		end
		#10;
		wr_en = 0;
		addr = 0;
		for(i = 0; i < 16; i = i+1)
		begin
	
		#25;
		addr = addr + 4'b0001;
		end
	end
	
	always begin 
	clk = ~clk;
	#25;
	end
      
endmodule

