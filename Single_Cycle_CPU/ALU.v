`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:11 05/01/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A, B, ALUop, zero, result);
	input [31:0] A, B;
	input [2:0] ALUop;
	output zero;
	output reg [31:0] result;
	
	initial begin
		  result = 0;
	end
	assign zero = (result ? 0 : 1);
	slt32 slt(.A(A), .B(B), .S(A + B), .slt(res));
	always @(A or B or ALUop) begin
	 case(ALUop)
		3'b000: result = A & B;
		3'b001: result = A | B;
		3'b010: result = A + B;
		3'b011: result = A ^ B;
		3'b100: result = !(A | B);			// nor
		3'b101: result = A << B[10:6];	// srl
		3'b110: result = A - B;
		3'b111: result = res;
		default: result = 0;
	 endcase
	end
endmodule
