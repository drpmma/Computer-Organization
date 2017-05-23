module ALU(
    input [31:0]A,
    input [31:0]B,
    input [3:0]ALUcontrol,
    output reg Zero,
    output reg [31:0]ALUOut
);
    parameter AND = 4'd0;
    parameter OR = 4'd1;
    parameter ADD = 4'd2;
    parameter SLL = 4'd3;
    parameter SRL = 4'd4;
    parameter LUI = 4'd5;
    parameter SUB = 4'd6;
    parameter SLT = 4'd7;
    parameter NOR = 4'd0;
    parameter XOR = 4'd0;
	 
	 wire [31:0]S;
	 assign S = A - B;
    always @(A or B or ALUcontrol) begin
      case (ALUcontrol)
        AND: ALUOut = A & B;
        OR: ALUOut = A | B;
        ADD: ALUOut = A + B;
        SLL: ALUOut = A << B[10:6];
        SRL: ALUOut = A >> B[10:6];
        LUI: ALUOut = {B, 16'd0};
        SUB: ALUOut = A - B;
        SLT: ALUOut = (A[31] == 1 && B[31] == 0) ?
                        1 : ((A[31] == 0 && B[31] == 1) ? 
                        0 : S[31]);
        NOR: ALUOut = ~(A | B);
        XOR: ALUOut = A ^ B; 
      endcase
      Zero = ((A - B) == 0 ? 1 : 0);
    end
endmodule // 