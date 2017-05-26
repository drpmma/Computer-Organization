module control(
    input [31:26]opcode;
    input [5:0]funct;
    output [1:0]RegDst;
    output IRWrite;
    output [1:0]MemtoReg;
    output ALUSrcA;
    output [1:0]ALUSrcB;
    output [3:0]ALUcontrol;
    output PCWriteCond;
    output Branch;
    output PCWrite;
    output [1:0]PCSrc;
    output IorD;
);

endmodule // control