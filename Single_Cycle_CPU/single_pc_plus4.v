`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:37 04/27/2017 
// Design Name: 
// Module Name:    single_pc_plus4 
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
module single_pc_plus4(
				input [31:0] i_pc,
				output [31:0] o_pc
    );
	 
	 assign o_pc = i_pc + 4;


endmodule
