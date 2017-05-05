`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:10:16 04/27/2017 
// Design Name: 
// Module Name:    control 
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
module control(
			input [5:0]opcode,
			input [5:0]funct,
			output RegDst,
			output Branch,
			output MemRead,
			output MemtoReg,
			output [2:0]ALUop,
			output MemWrite,
			output ALUSrc,
			output RegWrite,
			output Jump,
			output BNE,
			output LUI,
			output signal,			// distinguish the expand of imm
			output Jal,
			output Jr,
			output shift
    );

	assign RegDst = (opcode == 6'b000000) ? 1 : 0;
	assign RegWrite = (opcode == 6'b000000 || opcode == 6'h23 || opcode == 6'h8 || opcode == 6'hc || opcode == 6'hd || opcode == 6'ha
						|| opcode == 6'hf || opcode == 6'h3 || (opcode == 6'h0 && funct == 6'h0))
						? 1 : 0;
	assign MemtoReg = (opcode == 6'h23) ? 1 : 0;
	assign MemWrite = (opcode == 6'h2b) ? 1 : 0;
	assign ALUSrc  = ((opcode == 6'h0 && funct == 6'h0) || opcode == 6'h2b || opcode == 6'h23 || opcode == 6'h8 || opcode == 6'hc || opcode == 6'hd || opcode == 6'ha) 
						? 1 : 0;
	assign Jump = (opcode == 6'h2 || opcode == 6'h3) ? 1 : 0;		// Jal and Jump
	assign Branch = (opcode == 6'h5 || opcode == 6'h4) ? 1 : 0;
	assign BNE = (opcode == 6'h5) ? 1 : 0;
	assign LUI = (opcode == 6'hf) ? 1 : 0;
	assign signal = (opcode == 6'hc || opcode == 6'hd || opcode == 6'he) ? 1 : 0;
	assign Jal = (opcode == 6'h3) ? 1 : 0;
	assign Jr = ((funct == 6'h8 || funct == 6'h9) && opcode == 6'h0) ? 1 : 0;			// Jr and Jalr
	assign shift = (opcode == 6'h0 && funct == 6'h0) ? 1 : 0;
	assign ALUop[2] = ( ((funct == 6'b100010 || funct == 6'b101010 ||  funct == 6'h0 || funct == 6'h27) && opcode == 6'h0) || opcode == 6'h4 || opcode == 6'h5 || opcode == 6'ha) 
						? 1 : 0;
	assign ALUop[1] = ( ((funct == 6'b100000 || funct == 6'b100010 || funct == 6'b101010 || funct == 6'h26) && opcode == 6'h0) || opcode == 6'h23 
						|| opcode == 6'h2b || opcode == 6'h4 || opcode == 6'h5 || opcode == 6'h8 || opcode == 6'he || opcode == 6'ha)
						? 1 : 0;
	assign ALUop[0] = ( ((funct == 6'b100101 || funct == 6'b101010 || funct == 6'h0 || funct == 6'h26) && opcode == 6'h0) || opcode == 6'hd || opcode == 6'ha
						|| opcode == 6'he) ? 1 : 0;

endmodule
