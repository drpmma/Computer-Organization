`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:21:37 06/05/2017
// Design Name:   MicroProgramming
// Module Name:   E:/Study/Coumputer Science/s2/computer orgization/project/MicroProgramming/test_MP.v
// Project Name:  MicroProgramming
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MicroProgramming
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MP;

	// Inputs
	reg clk;
	reg reset;
	reg MIO_ready;
	reg INT;
	reg [31:0] Data_in;

	// Outputs
	wire [31:0] PC_out;
	wire [31:0] inst_out;
	wire mem_w;
	wire [31:0] Addr_out;
	wire [31:0] Data_out;
	wire CPU_MIO;
	wire [4:0] state;

	// Instantiate the Unit Under Test (UUT)
	MicroProgramming uut (
		.clk(clk), 
		.reset(reset), 
		.MIO_ready(MIO_ready), 
		.INT(INT), 
		.Data_in(Data_in), 
		.PC_out(PC_out), 
		.inst_out(inst_out), 
		.mem_w(mem_w), 
		.Addr_out(Addr_out), 
		.Data_out(Data_out), 
		.CPU_MIO(CPU_MIO), 
		.state(state)
	);

	integer i;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		MIO_ready = 0;
		INT = 0;
		Data_in = 0;
		i = 0;
		#50
		// Wait 100 ns for global reset to finish
      	MIO_ready = 1;
		reset = 0;
		forever begin
			#50;
			clk = ~clk;
		end
	

		end
		
		
		always @(PC_out) begin
			case(PC_out)
			/*--------------test for Rtype----------------
				32'h00000000:Data_in = 32'h00004027;
				32'h00000004:Data_in = 32'h00004827;
				32'h00000008:Data_in = 32'h01285020;
				32'h0000000c:Data_in = 32'h01495822;
				32'h00000010:Data_in = 32'h014B6024;
				32'h00000014:Data_in = 32'h014B6825;
				32'h00000018:Data_in = 32'h014B7026;
				32'h0000001c:Data_in = 32'h014B782A;
				32'h00000020:Data_in = 32'h014BC02A;
				32'h00000024:Data_in = 32'h000A8000;
				-------------------------------------------*/
			/*--------------test for LW SW----------------
				32'h00000000:Data_in = 32'h00004027;
				32'h00000004:Data_in = 32'h00004820;
				32'h00000008:Data_in = 32'h8D2A0004;
				32'h0000000c:Data_in = 32'hAD090000;
				-------------------------------------------*/
			/*--------------test for jal Itype lui --------
				32'h00000000:Data_in = 32'h2009000A;
				32'h00000004:Data_in = 32'h200AFFFB;
				32'h00000008:Data_in = 32'h152A0000;
				32'h0000000c:Data_in = 32'h00004020;
				32'h00000010:Data_in = 32'h35280005;
				32'h00000014:Data_in = 32'h39280005;
				32'h00000018:Data_in = 32'h3C0B0006;
				32'h0000001c:Data_in = 32'h0C000002;
				-------------------------------------------*/
			/*--------------test for jr jalr --------
				32'h00000000:Data_in = 32'h20090008;
				32'h00000004:Data_in = 32'h200A000A;
				32'h00000008:Data_in = 32'h08000003;
				32'h0000000c:Data_in = 32'h01200009;
				-------------------------------------------*/
			/*--------------test for sll slt --------	
				32'h00000000:Data_in = 32'h20090008;
				32'h00000004:Data_in = 32'h200A000A;
				32'h00000008:Data_in = 32'h200BFFFF;
				32'h0000000c:Data_in = 32'h012B602A;
				32'h00000010:Data_in = 32'h012A682A;
				32'h00000014:Data_in = 32'h016A702A;
				32'h00000018:Data_in = 32'h000E7840;
				
				addi $t1, $zero, 8;
				addi $t2, $zero, 10;
				addi $t3, $zero, -1;
				slt $t4, $t1, $t3;
				slt $t5, $t1, $t2;
				slt $t6, $t3, $t2;
				sll $t7, $t6, 1; 
				-------------------------------------------*/
				32'h00000000:Data_in = 32'h2008000A;
				32'h00000004:Data_in = 32'h20090005;
				32'h00000008:Data_in = 32'h01098820;
				32'h0000000c:Data_in = 32'h01098822;
				32'h00000010:Data_in = 32'h01098824;
				32'h00000014:Data_in = 32'h01098825;
				32'h00000018:Data_in = 32'h01098826;
				32'h0000001c:Data_in = 32'h01098827;
				32'h00000020:Data_in = 32'h31110007;
				32'h00000024:Data_in = 32'h35110007;
				32'h00000028:Data_in = 32'h39110007;
				32'h0000002c:Data_in = 32'h3C11000F;
				32'h00000030:Data_in = 32'h2911000B;
				32'h00000034:Data_in = 32'h200A000A;
				32'h00000038:Data_in = 32'h110AFFF9;
				/*
				addi $t0, $zero, 10;
				addi $t1, $zero, 5;
				add $s1, $t0, $t1;
				sub $s1, $t0, $t1;
				and $s1, $t0, $t1;
				or $s1, $t0, $t1;
				xor $s1, $t0, $t1;
				nor $s1, $t0, $t1;
				label: andi $s1, $t0, 7;
				ori $s1, $t0, 7;
				xori $s1, $t0, 7;
				lui $s1, 15;
				slti $s1, $t0, 11;
				addi $t2, $zero, 10;
				beq $t0, $t2, label;
				*/

			endcase
			i = i + 1;
		end
endmodule

