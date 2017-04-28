`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:17 04/27/2017 
// Design Name: 
// Module Name:    SCPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SCPU(clk, 
            Data_in, 
            inst_in, 
            INT, 
            MIO_ready, 
            reset, 
            Addr_out, 
            CPU_MIO, 
            Data_out, 
            mem_w, 
            PC_out);
		
	input clk;
	input [31:0] Data_in;
	input [31:0] inst_in;
	input INT;
	input MIO_ready;
	input reset;
	output [31:0] Addr_out;
	output CPU_MIO;
	output [31:0] Data_out;
	output mem_w;
	output [31:0] PC_out;
	
	wire [31:0]o_pc;
	wire [31:0]i_pc;
	wire [31:0]pc_4;
	
	assign PC_out = o_pc;
	
	single_pc PC(.clk(clk), .rst(rst), .i_pc(), .o_pc(o_pc));
	single_pc_plus4 PC_4(.i_pc(o_pc), .o_pc(pc_4));
	control CTRL(.inst(inst_in[31:26]), .RegDst(), .Branch(), .MemRead(), .MemtoReg(), 
				 .ALUop(), .MemWrite(), .ALUSrc(), .RegWrite(RegWrite));
				 
	wire [4:0]w_reg;
	MUX2T1_5 mux_2_5(.I0(inst_in[20:16]), .I1(inst_in[15:11]), .s(), .o());			 
	regs Registers(.clk(clk), .rst(rst), .reg_Rd_addr_A(inst_in[25:21]), .reg_Rt_addr_B(inst_in[20:16]), .reg_Wt_addr(), 
					   .wdata(RegWrite), .we(), .rdata_A(), .rdata_B());
				 
	
endmodule
