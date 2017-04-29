`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:30 04/27/2017 
// Design Name: 
// Module Name:    ALUcontrol 
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
module ALUcontrol(
			input [5:0]funct,
			input [1:0]aluop,
			output [3:0]alu_ctrl
    );

	always @* begin
	  if (aluop == 2'b10) begin
		if(funct == 6'b100000)		// add
			alu_ctrl = 4'b0010;
		else if(funct == 6'b100010)	// sub
			alu_ctrl = 4'b0110;
		else if(funct == 6'b100100)	// and
			alu_ctrl = 4'b0000;
		else if(funct == 6'b100101)	// or
			alu_ctrl = 4'b0001;
		else if(funct == 6'b101010)	// slt
			alu_ctrl = 4'b0111;
	  end
	  else if (aluop == 2'b01) begin
		alu_ctrl = 4'b0110;			// beq for sub
	  end
	  else if (aluop == 2'b00) begin
		alu_ctrl = 4'b0010;			// lw sw for add
	  end
	end

endmodule
