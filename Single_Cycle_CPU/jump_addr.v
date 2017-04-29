`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:29 04/29/2017 
// Design Name: 
// Module Name:    jump_addr 
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
module jump_addr(
				input [25:0]inst,
				input [31:0]pc_4,
				output [31:0]addr
    );

	wire [27:0]shift_inst;
	assign shift_inst = inst << 2;
	assign addr = {{pc_4[31:28]}, shift_inst};

endmodule
