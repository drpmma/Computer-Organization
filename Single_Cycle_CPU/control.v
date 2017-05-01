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
	assign ALUop[2] = ( ((funct == 6'b100010 || funct == 6'b101010 ||  funct == 6'h0) && opcode == 6'h0) || opcode == 6'h4 || opcode == 6'h5 || opcode == 6'ha) 
						? 1 : 0;
	assign ALUop[1] = ( ((funct == 6'b100000 || funct == 6'b100010 || funct == 6'b101010 || funct == 6'h26) && opcode == 6'h0) || opcode == 6'h23 
						|| opcode == 6'h2b || opcode == 6'h4 || opcode == 6'h5 || opcode == 6'h8 || opcode == 6'he || opcode == 6'ha)
						? 1 : 0;
	assign ALUop[0] = ( ((funct == 6'b100101 || funct == 6'b101010 || funct == 6'h0 || funct == 6'h26) && opcode == 6'h0) || opcode == 6'hd || opcode == 6'ha
						|| opcode == 6'he) ? 1 : 0;


	// initial begin
	//   RegDst = 0;
	//   Branch = 0;
	//   MemRead = 0;
	//   MemWrite = 0;
	//   ALUop = 0;
	//   MemWrite = 0;
	//   ALUSrc = 0;
	//   RegWrite = 0;
	//   Jump = 0;
	//   BNE = 0;
	// end

	// always@ (opcode or funct) begin
	// 	if (opcode == 6'b000000) begin		// Rtype
	// 		RegDst = 1;
	// 		RegWrite = 1;
	// 		if(funct == 6'b100000)		// add
	// 			ALUop = 3'b010;
	// 		else if(funct == 6'b100010)	// sub
	// 			ALUop = 3'b110;
	// 		else if(funct == 6'b100100)	// and
	// 			ALUop = 3'b000;
	// 		else if(funct == 6'b100101)	// or
	// 			ALUop = 3'b001;
	// 		else if(funct == 6'b101010)	// slt
	// 			ALUop = 3'b111;
	// 		else if(funct == 6'b000010)	// srl of sll
	// 			ALUop = 3'b101;
	// 		else if(funct == 6'h26)		// xor
	// 			ALUop = 3'b011;
	// 	end
	// 	if (opcode == 6'h23) begin	// lw
	// 		RegWrite = 1;
	// 		ALUSrc = 1;
	// 		MemtoReg = 1;
	// 		ALUop = 3'b010;
	// 	end
	// 	if (opcode == 6'h2b) begin	// sw
	// 		ALUSrc = 1;
	// 		MemWrite = 1;
	// 		ALUop = 3'b010;
	// 	end
	// 	if (opcode == 6'h4) begin	// beq
	// 		ALUop = 3'b110;
	// 		Branch = 1;
	// 	end
	// 	if (opcode == 6'h5) begin	// bne
	// 		ALUop = 3'b110;
	// 		BNE = 1;
	// 		Branch = 1;
	// 	end
	// 	if (opcode == 6'h2) begin	// j
	// 		Jump = 1;
	// 	end
	// 	if (opcode == 6'h8 || opcode == 6'hc || opcode == 6'hd || opcode == 6'ha) begin
	// 		RegWrite = 1;
	// 		ALUSrc = 1;
	// 		if (opcode == 6'h8)				// addi
	// 			ALUop = 3'b010;
	// 		else if (opcode == 6'hc)		// andi
	// 			ALUop = 3'b000;
	// 		else if (opcode == 6'hd)		// ori
	// 			ALUop = 3'b001;
	// 		else if (opcode == 6'ha)		// slti
	// 			ALUop = 3'b111;
	// 		else if (opcode == 6'he)		// xori
	// 			ALUop = 3'b011;
	// 	end
	// end


endmodule
