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
	wire [31:0]i_pc = 0;
	wire [31:0]pc_4;
	
	assign PC_out = o_pc;

	wire [1:0]ALUop;
	
	single_pc PC(.clk(clk), .rst(reset), .i_pc(i_pc), .o_pc(o_pc));
	add_32 PC_4(.a(o_pc), .b(4), .c(pc_4));
	control CTRL(.inst(inst_in[31:26]), .RegDst(RegDst), .Branch(), .MemRead(), .MemtoReg(MemtoReg), 
				 .ALUop(ALUop), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite));
				 
	wire [4:0]w_reg;

	MUX2T1_5 mux_2_5(.I0(inst_in[20:16]), .I1(inst_in[15:11]), .s(RegDst), .o(w_reg));
	wire [31:0]rdata_A, rdata_B;
	assign Data_out = rdata_B;			 
	
	regs Registers(.clk(clk), .rst(reset), .reg_Rd_addr_A(inst_in[25:21]), .reg_Rt_addr_B(inst_in[20:16]), .reg_Wt_addr(w_reg), 
					   .wdata(w_data), .we(RegWrite), .rdata_A(rdata_A), .rdata_B(rdata_B));
	wire [31:0]sign_shamt;
	Ext_32 se(.imm_16(inst_in[15:0]), .Imm_32(sign_shamt));

	wire [31:0]offset;
	add_32 Add(.a(pc_4), .b(sign_shamt << 2), .c(offset));
	MUX2T1_32 mux2_32_1(.I0(pc_4), .I1(offset), .s(), .o(i_pc))
	
	wire [31:0]ALU_B;
	
	MUX2T1_32 mux2_32_2(.I0(rdata_B), .I1(sign_shamt), .s(ALUSrc), .o(ALU_B));
	
	ALU_ctrl alu_ctrl();
	
	wire [31:0]ALU_res;

	assign Addr_out = ALU_res;
	assign mem_w = MemWrite;

	ALU alu(.A(rdata_A), .B(ALU_B), .ALU_operation(),  
           .overflow(), 
           .res(ALU_res), 
           .zero());
	
	wire [31:0]w_data;
	MUX2T1_32 mux2_32_3(.I0(ALU_res), .I1(Data_in), .s(MemtoReg), .o(w_data));
				 
	
endmodule
