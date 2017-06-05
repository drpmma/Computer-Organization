module control(
    input clk,
    input [31:26]opcode,
    input [5:0]funct,
    input reset,
    input MIO_ready,
    output signal,
    output MemRead,
    output MemWrite,
    output [1:0]RegDst,
    output RegWrite,
    output IRWrite,
    output [1:0]MemtoReg,
    output ALUSrcA,
    output [1:0]ALUSrcB,
    output PCWriteCond,
    output BranchNotEqual,
    output PCWrite,
    output [1:0]PCSrc,
    output IorD,
    output reg[4:0]state,
    output [1:0]ALUOp
);
// ALUop[2] ALUSrcA[1] ALUSrcB[2] MemtoReg[2] Mem[2] PCSrc[2] PCWrite[1] PCWriteCond[1] BNE[1]
// RegDst[2] RegW[1] IRW[1] signal[1] IorD[1]
// 20
//------------ wire ---------------
	wire [19:0]CtrlSignal;
//------------ state --------------
   assign ALUOp = CtrlSignal[19:18];
	assign ALUSrcA =  CtrlSignal[17];
	assign ALUSrcB =  CtrlSignal[16:15];
	assign MemtoReg =  CtrlSignal[14:13];
	assign MemRead =  CtrlSignal[12];
	assign MemWrite =  CtrlSignal[11];
	assign PCSrc =  CtrlSignal[10:9];
	assign PCWrite =  CtrlSignal[8];
	assign PCWriteCond =  CtrlSignal[7];
	assign BranchNotEqual =  CtrlSignal[6];
	assign RegDst =  CtrlSignal[5:4];
	assign RegWrite =  CtrlSignal[3];
	assign IRWrite =  CtrlSignal[2];
	assign signal =  CtrlSignal[1];
	assign IorD =  CtrlSignal[0];
//------------ state --------------
    parameter IF = 5'd0;
    parameter ID = 5'd1;
    parameter Execution = 5'd6;
    parameter ComputeAddr = 5'd2;
    parameter ComputeImm = 5'd10;
    parameter ComputeImmu = 5'd11;
    parameter ITYPECompletion = 5'd12;
    parameter JumpCompletion = 5'd9;
    parameter RTYPECompletion = 5'd7;
    parameter MemReadAccess = 5'd3;
    parameter MemWriteAccess = 5'd5;
    parameter WriteBack = 5'd4;
    parameter BranchCompletion = 5'd13;
    parameter BNECompletion = 5'd14;
    parameter Exec_LUI = 5'd15;
    parameter JALCompletion = 5'd16;
    parameter JRCompletion = 5'd17;
    parameter JALRCompletion = 5'd18;

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
//------------ funct -------------
    parameter JR = 6'd8;
    parameter JALR = 6'd9;
//------------ always ------------
	SignalMemory SMem(.a(state), .spo(CtrlSignal));
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
                
                ADDI: state = ComputeImm;
                ANDI: state = ComputeImmu;
                ORI: state = ComputeImmu;
                XORI: state = ComputeImmu;
                SLTI: state = ComputeImm;
                LUI: state = Exec_LUI;

                J: state = JumpCompletion;
                JAL: state = JALCompletion;

                BEQ: state = BranchCompletion;
                BNE: state = BNECompletion;
          endcase
          Execution: begin
            case (funct)
              JR: state = JRCompletion;
              JALR: state = JALRCompletion;
              default: state = RTYPECompletion;
            endcase
          end
          RTYPECompletion: state = IF;
          ComputeAddr: begin
            case (opcode)
              LW: state = MemReadAccess;
              SW: state = MemWriteAccess;
            endcase
          end
          ComputeImm: state = ITYPECompletion;
          ComputeImmu: state = ITYPECompletion;
          Exec_LUI: state = ITYPECompletion;
          ITYPECompletion: state = IF;
          MemReadAccess: state = WriteBack;
          MemWriteAccess: state = IF;
          WriteBack: state = IF;
          BranchCompletion: state = IF;
          BNECompletion: state = IF;
          JumpCompletion: state = IF;
          JALCompletion: state = IF;
          JRCompletion: state = IF;
          JALRCompletion: state = IF;
          default: state = IF;
        endcase
      end
    end
// ALUop[2] ALUSrcA[1] ALUSrcB[2] MemtoReg[2] Mem[2] PCSrc[2] PCWrite[1] PCWriteCond[1] BNE[1]
// RegDst[2] RegW[1] IRW[1] signal[1] IorD[1]
// 20
// 0 IF:00001001000100000100
// 1 ID:00011000000000000000
// 2 ComputeAddr:00110000000000000000
// 3 MemWriteAccess:00000000100000000001
// 4 MemReadAccess:00000001000000000001
// 5 WriteBack:00000010000000001000
// 6 Execution:10100000000000000000
// 7 RTYPEC:00000000000000011000
// 8 00000000000000000000
// 9 JumpC:00000000010100000000
//10 ComputeImm:11110000000000000000
//11 ComputeImmu:11110000000000000010
//12 ITYPEC:00000000000000001000
//13 BranchC:01100000001010000000
//14 BNEC:01100000001110000000
//15 Exec_LUI:11010000000000000000
//16 JALC:00000100010100101000
//17 JR:00000000001100000000
//18 JALR:00000100001110100000
endmodule // control