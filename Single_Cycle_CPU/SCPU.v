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

	wire [2:0]ALUop;
	wire [31:0]addr;
	wire [4:0]w_reg;
	wire [31:0]rdata_A, rdata_B;
	wire [31:0]ALU_B;
	wire [31:0]sign_shamt;
	wire [31:0]ALU_res;

	wire [31:0]w_data;
	wire [31:0]w_data_n;
	wire [31:0]offset;
	wire [31:0]jp_src;
	wire [31:0]off_s2;
	wire [31:0]lui_off;
	
	single_pc PC(.clk(clk), .rst(reset), .i_pc(i_pc), .o_pc(o_pc));
	assign PC_out = o_pc;

	Ext_32 se(.imm_16(inst_in[15:0]), .Imm_32(sign_shamt));

	control CTRL(.opcode(inst_in[31:26]), .funct(inst_in[5:0]), .RegDst(RegDst), .Branch(Branch), .MemRead(MemRead), .MemtoReg(MemtoReg), 
				 .ALUop(ALUop), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite), .Jump(Jump), .BNE(BNE), .LUI(LUI));
	assign mem_w = MemWrite;
				 
	MUX2T1_5 mux_2_5_inst(.I0(inst_in[20:16]), .I1(inst_in[15:11]), .s(RegDst), .o(w_reg));		 

	assign lui_off = inst_in << 16;	
	MUX2T1_32 mux2_32_lui(.I0(w_data), .I1(lui_off), .s(LUI), .o(w_data_n));
	regs Registers(.clk(clk), .rst(reset), .reg_Rd_addr_A(inst_in[25:21]), .reg_Rt_addr_B(inst_in[20:16]), .reg_Wt_addr(w_reg), 
					   .wdata(w_data_n), .we(RegWrite), .rdata_A(rdata_A), .rdata_B(rdata_B));
	assign Data_out = rdata_B;

	MUX2T1_32 mux2_32_alusrc(.I0(rdata_B), .I1(sign_shamt), .s(ALUSrc), .o(ALU_B));
	
	ALU alu(.A(rdata_A), .B(ALU_B), .ALUop(ALUop),  
           .result(ALU_res), 
           .zero(zero));
	assign Addr_out = ALU_res;
	MUX2T1_32 mux2_32_memreg(.I0(ALU_res), .I1(Data_in), .s(MemtoReg), .o(w_data));
	
	add_32 PC_4(.a(o_pc), .b(4), .c(pc_4));
	jump_addr jp(.inst(inst_in[25:0]), .pc_4(pc_4), .addr(addr));
	
	assign off_s2 = sign_shamt << 2;

	add_32 Add(.a(pc_4), .b(off_s2), .c(offset));
	assign bne_zero = BNE ^ zero;
	assign Branch_ctrl = Branch & bne_zero;
	
	MUX2T1_32 mux2_32_branch(.I0(pc_4), .I1(offset), .s(Branch_ctrl), .o(jp_src));
	MUX2T1_32 mux2_32_jp(.I0(jp_src), .I1(addr), .s(Jump), .o(i_pc));

	
endmodule
