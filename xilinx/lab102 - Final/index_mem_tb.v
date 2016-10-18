`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:47:46 10/07/2016
// Design Name:   index_mem
// Module Name:   C:/Users/user/Documents/GitHub/Digital-Lab/xilinx/lab102 - Final/index_mem_tb.v
// Project Name:  lab102
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: index_mem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module index_mem_tb;

	// Inputs
	reg [7:0] i1;
	reg [7:0] i2;
	reg [3:0] cnt1w;
	reg [3:0] cnt2w;
	reg wr_en;
	reg clk;
	reg reset;
	reg [7:0] din1;
	reg [7:0] din2;
	reg [3:0] addr1w;
	reg [3:0] addr2w;

	// Outputs
	wire [7:0] r1;
	wire [7:0] r2;
	wire [7:0] out1;
	wire [7:0] out2;

	reg [7:0] mem1 [0:15];
	reg [7:0] mem2 [0:15];
	reg [7:0] indexmem1 [0:15];
	reg [7:0] indexmem2 [0:15];
	integer i,j;
	// Instantiate the Unit Under Test (UUT)
	index_mem uut (
		.i1(i1), 
		.i2(i2), 
		.r1(r1), 
		.r2(r2), 
		.cnt1w(cnt1w), 
		.cnt2w(cnt2w), 
		.wr_en(wr_en), 
		.clk(clk), 
		.reset(reset), 
		.din1(din1), 
		.din2(din2), 
		.out1(out1), 
		.out2(out2), 
		.addr1w(addr1w), 
		.addr2w(addr2w)
	);

	initial begin
		// Initialize Inputs
		i1 = 0;
		i2 = 0;
		cnt1w = 0;
		cnt2w = 0;
		wr_en = 0;
		clk = 0;
		reset = 0;
		din1 = 0;
		din2 = 0;
		addr1w = 0;
		addr2w = 0;


		$readmemb("mem1.txt",mem1);
		$readmemb("mem2.txt",mem2);
		$readmemb("indexmem1.txt",indexmem1);
		$readmemb("indexmem2.txt",indexmem2);
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		wr_en = 1;
		for(i = 0; i<16 ; i = i+1)
		begin
		
		//i1 = indexmem1[i];
		
		//i2 = indexmem2[i];
		din1 = mem1[i];
		#25;
		//din2 = mem2[i];
		//cnt1w = cnt1w + 4'b0001;
		//cnt2w = cnt2w + 4'b0001;
		addr1w = addr1w + 4'b0001;
		//addr2w = addr2w + 4'b0001;
		
		end
		
		wr_en = 0;
		#5;
		reset = 1;
		#10;
		reset = 0;
		//cnt1w = 0;
		//cnt2w = 0;
		addr1w = 0;
		for(j = 0; j<16 ; j = j+1)
		begin
		addr1w = addr1w + 4'b0001;
		//cnt1w = cnt1w + 4'b0001;
		//cnt2w = cnt2w + 4'b0001;
		#24;
		end
			
	end
	
		always begin
		#25;
		clk = ~clk;
		end
      
endmodule

