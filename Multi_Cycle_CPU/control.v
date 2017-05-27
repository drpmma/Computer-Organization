module control(
    input clk,
    input [31:26]opcode,
    input [5:0]funct,
    input reset,
    input MIO_ready,
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
    output reg Branch,
    output reg PCWrite,
    output reg [1:0]PCSrc,
    output reg IorD,
    output reg[4:0]state,
    output reg [1:0]ALUOp
);

//------------ state --------------
    parameter IF = 5'd0;
    parameter ID = 5'd1;
    parameter Execution = 5'd6;
    parameter ComputeAddr = 5'd2;
    parameter ComputeImm = 5'd10;
    parameter ComputeImmSignal = 5'd11;
    parameter JumpCompletion = 5'd9;
    parameter RTYPECompletion = 5'd7;
    parameter MemReadAccess = 5'd3;
    parameter MemWriteAccess = 5'd5;
    parameter WriteBack = 5'd4;

//------------ opcode -------------
    parameter RTYPE = 6'h0;
    parameter LW = 6'h23;
    parameter SW = 6'h2b;
    parameter LUI = 6'hf;
    parameter BEQ = 6'h4;
    parameter BNE = 6'h5;
    parameter J = 6'h2;
    parameter JAL = 6'h3;
    parameter ADDI = 6'h8;
    parameter ANDI = 6'hc;
    parameter ORI = 6'hd;
    parameter XORI = 6'he;
    parameter SLTI = 6'ha;

    always @(posedge clk or posedge reset) begin
      if(reset == 1) state = IF;
      else begin
        case (state)
          IF: if(MIO_ready) state = ID;
              else state = IF;
          ID: case (opcode)
                RTYPE: state = Execution;
                
                LW: state = ComputeAddr;
                SW: state = ComputeAddr;
                
                // ADDI: state = ComputeImmSignal;
                // ANDI: state = ComputeImm;
                // ORI: state = ComputeImm;
                // XORI: state = ComputeImm;
                // SLTI: state = ComputeImmSignal;
                // LUI: state = ComputeImmSignal;

                // J: state = JumpCompletion;
                // JAL:;

                // BEQ: state = BranchCompletion;
                // BNE:;
          endcase
          Execution: state = RTYPECompletion;

          RTYPECompletion: state = IF;
          ComputeAddr: begin
            case (opcode)
              LW: state = MemReadAccess;
              SW: state = MemWriteAccess;
            endcase
          end
          // ComputeImm: state =
          MemReadAccess: state = WriteBack;
          MemWriteAccess: state = IF;
          WriteBack: state = IF;
          default: state = IF;
        endcase
      end
    end

    always @(state) begin
      PCWriteCond = 0;
      PCWrite = 0;
      MemRead = 0;
      MemWrite = 0;
      IRWrite = 0;
      RegWrite = 0;
      Branch = 0;
      ALUOp = 2'b00;
      signal = 0;
      // muxes
      IorD = 0;
      MemtoReg = 2'b00;
      PCSrc = 2'b00;
      ALUSrcB = 2'b00;
      ALUSrcA = 0;
      RegDst = 2'b00;
      case (state)
        IF: begin
          MemRead = 1;
          IRWrite = 1;
          PCWrite = 1;

          ALUSrcA = 0;
          ALUSrcB = 2'b01;
          PCSrc = 2'b00;
          IorD = 0;
          ALUOp = 2'b00; // ADD
        end
        ID: begin
          ALUSrcA = 0;
          ALUSrcB = 2'b11;
          ALUOp = 2'b00; // ADD
        end

        Execution: begin
          ALUSrcA = 1;
          ALUSrcB = 2'b00;
          ALUOp = 2'b10;
        end

        RTYPECompletion: begin
          RegDst = 2'b01;
          RegWrite = 1;
          MemtoReg = 0;
        end
        ComputeAddr: begin
          ALUSrcA = 1;
          ALUSrcB = 2'b10;
          ALUOp = 2'b00;
        end
        MemWriteAccess:begin
          MemWrite = 1;
          IorD = 1;
        end
        MemReadAccess: begin
          MemRead = 1;
          IorD = 1;
        end 
        WriteBack: begin
          RegDst = 2'b00;
          RegWrite = 1;
          MemtoReg = 1;
        end
//        default: 
      endcase
    end
endmodule // control