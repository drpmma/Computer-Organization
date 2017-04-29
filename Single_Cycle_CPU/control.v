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
			input [31:0]inst,
			output reg RegDst,
			output reg Branch,
			output reg MemRead,
			output reg MemtoReg,
			output reg [2:0]ALUop,
			output reg MemWrite,
			output reg ALUSrc,
			output reg RegWrite,
			output reg Jump,
			output reg BNE
    );

	initial begin
	  RegDst = 0;
	  Branch = 0;
	  MemRead = 0;
	  MemWrite = 0;
	  ALUop = 0;
	  MemWrite = 0;
	  ALUSrc = 0;
	  RegWrite = 0;
	  Jump = 0;
	  BNE = 0;
	end
	
	wire [5:0]opcode, funct;
	assign opcode = inst[31:26];
	assign funct = inst[5:0];

	always@ * begin
		if (opcode == 0) begin		// Rtype
			RegDst = 1;
			RegWrite = 1;
			if(funct == 6'b100000)		// add
				ALUop = 3'b010;
			else if(funct == 6'b100010)	// sub
				ALUop = 3'b110;
			else if(funct == 6'b100100)	// and
				ALUop = 3'b000;
			else if(funct == 6'b100101)	// or
				ALUop = 3'b001;
			else if(funct == 6'b101010)	// slt
				ALUop = 3'b111;
			else if(funct == 6'b000010)	// srl
				ALUop = 3'b101;
			else if(funct == 6'h26)		// xor
				ALUop = 3'b111;
		end
		if (opcode == 6'h23) begin	// lw
			RegWrite = 1;
			ALUSrc = 1;
			MemtoReg = 1;
			ALUop = 3'b010;
		end
		if (opcode == 6'h2b) begin	// sw
			ALUSrc = 1;
			MemWrite = 1;
			ALUop = 3'b010;
		end
		if (opcode == 6'h4) begin	// beq
			ALUop = 3'b110;
			Branch = 1;
		end
		if (opcode == 6'h5) begin	// bne
			ALUop = 3'b110;
			BNE = 1;
			Branch = 1;
		end
		if (opcode == 6'h2) begin	// j
			Jump = 1;
		end
		if (opcode == 6'h8 || opcode == 6'hc || opcode == 6'hd || opcode == 6'ha) begin
			RegWrite = 1;
			ALUSrc = 1;
			if (opcode == 6'h8)				// addi
				ALUop = 3'b010;
			else if (opcode == 6'hc)		// andi
				ALUop = 3'b000;
			else if (opcode == 6'hd)		// ori
				ALUop = 3'b001;
			else if (opcode == 6'ha)		// slti
				ALUop = 3'b111;
			else if (opcode == 6'he)		// xori
				ALUop = 3'b011;
		end
	end


endmodule
