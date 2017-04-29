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
			input inst[5:0],
			output reg RegDst,
			output reg Branch,
			output reg MemRead,
			output reg MemtoReg,
			output reg [1:0]ALUOp,
			output reg MemWrite,
			output reg ALUSrc,
			output reg RegWrite
    );

	initial begin
	  RegDst = 0;
	  Branch = 0;
	  MemRead = 0;
	  MemWrite = 0;
	  ALUOp = 0;
	  MemWrite = 0;
	  ALUSrc = 0;
	  RegWrite = 0;
	end
	always@ * begin
	  if (inst == 0) begin		// Rtype
		RegDst = 1;
		RegWrite = 1;
		ALUop = 2'b10;
	  end
	  if (inst == 6'h23) begin	// lw
		RegWrite = 1;
		ALUSrc = 1;
		MemtoReg = 1;
	  end
	  if (inst == 6'h2b) begin	// sw
		ALUSrc = 1;
		MemWrite = 1;
	  end
	  if (inst == 6'h4) begin	// beq
		ALUop = 2'b01;
		Branch = 1;
	  end
	end


endmodule
