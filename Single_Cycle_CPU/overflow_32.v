`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:28 04/01/2017 
// Design Name: 
// Module Name:    overflow_32 
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
module overflow_32(
			input A,
			input B,
			input S,
			input [2:0]operation,
			output overflow
    );
	 reg overflow1;
	 assign overflow = overflow1;
	 always@* begin
		if(operation == 3'b010) begin
			if(A == 0 && B == 0 && S == 1)
				overflow1 = 1;
			else if(A == 1 && B == 1 && S == 0)
				overflow1 = 1;
			else
				overflow1 = 0;
		end
		else if(operation == 3'b110) begin
			if(A == 0 && B == 1 && S == 1)
				overflow1 = 1;
			else if(A == 1 && B == 0 && S == 0)
				overflow1 = 1;
			else
				overflow1 = 0;
		end
		else begin
			overflow1 = 0;
		end
	 end

endmodule
