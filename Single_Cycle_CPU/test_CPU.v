`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:57:13 05/01/2017
// Design Name:   SCPU
// Module Name:   E:/Study/Coumputer Science/s2/computer orgization/project/Single_Cycle_CPU/test_CPU.v
// Project Name:  Single_Cycle_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_CPU;

	// Inputs
	reg clk;
	reg [31:0] Data_in;
	reg [31:0] inst_in;
	reg INT;
	reg MIO_ready;
	reg reset;

	// Outputs
	wire [31:0] Addr_out;
	wire CPU_MIO;
	wire [31:0] Data_out;
	wire mem_w;
	wire [31:0] PC_out;

	// Instantiate the Unit Under Test (UUT)
	SCPU uut (
		.clk(clk), 
		.Data_in(Data_in), 
		.inst_in(inst_in), 
		.INT(INT), 
		.MIO_ready(MIO_ready), 
		.reset(reset), 
		.Addr_out(Addr_out), 
		.CPU_MIO(CPU_MIO), 
		.Data_out(Data_out), 
		.mem_w(mem_w), 
		.PC_out(PC_out)
	);
integer i = 0;
	initial begin
		// Initialize Inputs
		clk = 0;
		Data_in = 0;
		inst_in = 0;
		INT = 0;
		MIO_ready = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#50;
		reset = 0;
		Data_in = 32'h5a5aa5a5;
		// Add stimulus here
	
		forever begin
			#50;
			clk = ~clk;
		end
	

		end
		
		
		always @(PC_out) begin
			case(PC_out)
//2008FFFF, 200E0004, 01CE5020, 8D0A0003, AD0C0008, 01485820, 0100782A, 08000002;
//20080003, 200E0004, 01CE5020, 8D2B0003, AD280008, 01685820, 012A602A, 08000002;
				32'h00000000: inst_in = 32'h2008FFFF;
				32'h00000004: inst_in = 32'h200E0004;
				32'h00000008: inst_in = 32'h01CE5020;
				32'h0000000c: inst_in = 32'h8D0A0003;
				32'h00000010: inst_in = 32'hAD0C0008;
				32'h00000014: inst_in = 32'h01485820;
				32'h00000018: inst_in = 32'h0100782A;
				32'h0000001c: inst_in = 32'h08000002;
				
			endcase
			i = i + 1;
		end
      
endmodule

