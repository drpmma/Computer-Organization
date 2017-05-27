module ALUControl(ALUControl, OpCode, FUNCT, ALUOp);
    output [3:0] ALUControl;
    input [5:0] OpCode, FUNCT;
    input [1:0] ALUOp;

    parameter ADD = 2'b00;
    parameter SUB = 2'b01;
    parameter IMM = 2'b11;
    parameter RTYPE = 2'b10;

    parameter F_AND = 6'd36;
    parameter F_OR = 6'd37;
    parameter F_ADD = 6'd32;
    parameter F_SUB = 6'd34;
    parameter F_SLT = 6'd42;
    parameter F_NOR = 6'd39;
    parameter F_SLL = 6'd0;
    parameter F_SRL = 6'd2;
    parameter F_XOR = 6'd38;

    // OpCodes
    parameter LUI = 6'd15;
    parameter SLTI = 6'd10;
    parameter ADDI = 6'd8;
    parameter ORI = 6'hd;
    parameter XORI = 6'he;
    parameter ANDI = 6'dc;

    reg [3:0] ALUControl;

    /*
    parameter AND = 4'd0;
    parameter OR = 4'd1;
    parameter ADD = 4'd2;
    parameter SLL = 4'd3;
    parameter SRL = 4'd4;
    parameter LUI = 4'd5;
    parameter SUB = 4'd6;
    parameter SLT = 4'd7;
    parameter NOR = 4'd8;
    parameter XOR = 4'd9;
    */

    always @ (FUNCT or ALUOp) begin
        case (ALUOp)
            ADD: ALUControl = 4'd2;
            SUB: ALUControl = 4'd6;
            IMM: begin
                case (OpCode)
                    LUI: ALUControl = 4'd5;
                    SLTI: ALUControl = 4'd7;
                    ADDI: ALUControl = 4'd2;
                    ANDI: ALUControl = 4'd0;
                    ORI: ALUControl = 4'd1;
                    XORI: ALUControl = 4'd9;
                endcase
            end
            RTYPE: begin
                case (FUNCT)
                    F_AND: ALUControl = 4'd0;
                    F_OR: ALUControl = 4'd1;
                    F_ADD: ALUControl = 4'd2;
                    F_SUB: ALUControl = 4'd6;
                    F_SLT: ALUControl = 4'd7;
                    F_NOR: ALUControl = 4'd8;
                    F_XOR: ALUControl = 4'd9;
                    F_SLL: ALUControl = 4'd3;
                    F_SRL: ALUControl = 4'd4;
                endcase
            end
        endcase
    end
endmodule