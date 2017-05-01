`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:15 05/01/2017 
// Design Name: 
// Module Name:    next_pc 
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
module next_pc(
			input o_pc,
			input [25:0]offset,
			input jump,
			input branch,
			input bne,
			input [31:0]shamt,
			input zero,
			output next_pc
    );
	 
	 wire pc_4;
	 
	 assign pc_4 = o_pc + 4;
	 


endmodule
