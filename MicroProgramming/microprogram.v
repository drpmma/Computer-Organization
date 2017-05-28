module microprogram(
    input [5:0]opcode,
    output reg signal,
    output reg MemRead,
    output reg MemWrite,
    output reg [1:0]RegDst,
    output reg RegWrite,
    output reg IRWrite,
    output reg [1:0]MemtoReg,
    output reg ALUSrcA,
    output reg [1:0]ALUSrcB,
    output reg PCWriteCond,
    output reg BranchNotEqual,
    output reg PCWrite,
    output reg [1:0]PCSrc,
    output reg IorD,
    output reg [1:0]ALUOp
);

    wire [1:0]AddrCtrl;

endmodule // microprogram