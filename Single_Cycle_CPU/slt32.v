`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:15 04/01/2017 
// Design Name: 
// Module Name:    slt32 
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
module slt32(
			input [31:0]A,
			input [31:0]B,
			input [31:0]S,
			output [31:0]slt
    );
	 reg [31:0]res;
	 assign slt = res;
	 always@* begin
		if(A[31] == 1 && B[31] == 1 || A[31] == 0 && B[31] == 0)
			res = S[31];
		else if(A[31] == 1 && B[31] == 0)
			res = 1;
		else
			res = 0;
	 end
			


endmodule
