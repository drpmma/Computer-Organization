`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:15:47 04/27/2017 
// Design Name: 
// Module Name:    single_pc 
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
module single_pc(clk,rst,i_pc,o_pc);

	input clk, rst;
	input [31:0]i_pc;
	output reg[31:0]o_pc;
	initial begin
	  o_pc = 0;
	end

	always @(posedge clk or posedge rst)
		if(rst == 1)
			o_pc = 0;
		else
			o_pc = i_pc;


endmodule
