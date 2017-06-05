module MCPU(
        input clk,
        input reset,
        input MIO_ready,
        input INT,
        input [31:0]Data_in,

        output [31:0]PC_out,
        output [31:0]inst_out,
        output mem_w,
        output [31:0]Addr_out,
        output [31:0]Data_out,
        output CPU_MIO,
        output [4:0]state
);

//------ connect wires -----------------
    wire [31:0]inst, memory;
    wire [4:0]w_addr;
    wire [31:0]w_data;
    wire [31:0]Imm_32;
    wire [31:0]PC_now;
    wire [31:0]ALU_A;
    wire [31:0]ALU_B;
    wire [31:0]data_A, data_B;
    wire [31:0]res;
    wire [31:0]ALUOut;
    wire Zero;
    wire [31:0]PC_in;
    wire [31:0]Jump_addr;
    wire [31:0]m_addr;
    wire [31:0]offset;
//------- assign -----------------------
    assign inst_out = inst;
    assign Data_out = data_B;
    assign Addr_out = m_addr;
    assign PC_out = PC_now;
    assign mem_w = ~MemRead & MemWrite;
//------- component --------------------
    assign branch = ((BranchNotEqual ^ Zero) & PCWriteCond) | PCWrite & MIO_ready;

    assign Jump_addr = {PC_now[31:28], inst[25:0], 2'b00};
    assign offset = Imm_32 << 2;
//------- control signals --------------
    wire MemWrite;
    wire MemRead;
    wire [1:0]RegDst;
    wire RegWrite;
    wire IRWrite;
    wire [1:0]MemtoReg;
    wire ALUSrcA;
    wire [1:0]ALUSrcB;
    wire [3:0]ALUcontrol;
    wire [1:0]ALUOp;
    wire PCWriteCond;
    wire PCWrite;
    wire [1:0]PCSrc;
    wire IorD;


    REG32 IR(.clk(clk), .rst(reset), .CE(IRWrite), .D(Data_in), .Q(inst));                              

    MUX4T1_5 mux_waddr(.s(RegDst), .I0(inst[20:16]), .I1(inst[15:11]), .I2(5'b11111), .I3(), .o(w_addr));//
    
    REG32 MDR(.clk(clk), .rst(1'b0), .CE(1'b1), .D(Data_in), .Q(memory));
    MUX4T1_32 mux_wdata(.s(MemtoReg), .I0(ALUOut), .I1(memory), .I2(PC_now), .I3(), .o(w_data));      //

    Ext_32 Ext_32(.imm_16(inst[15:0]), .signal(signal), .Imm_32(Imm_32));
    regs REG(.clk(clk), .rst(rst), .reg_Rd_addr_A(inst[25:21]), .reg_Rt_addr_B(inst[20:16]), 
            .reg_Wt_addr(w_addr), .wdata(w_data), .we(RegWrite), .rdata_A(data_A), .rdata_B(data_B));


    MUX2T1_32 mux_alu_a(.s(ALUSrcA), .I0(PC_now), .I1(data_A), .o(ALU_A));
    MUX4T1_32 mux_alu_b(.s(ALUSrcB), .I0(data_B), .I1(32'd4), .I2(Imm_32), .I3(offset), .o(ALU_B));

    control ctrl (
    .clk(clk), 
    .opcode(inst[31:26]), 
    .funct(inst[5:0]), 
    .reset(reset), 
    .MIO_ready(MIO_ready), 
    .signal(signal),
    .MemRead(MemRead), 
    .MemWrite(MemWrite), 
    .RegDst(RegDst), 
    .RegWrite(RegWrite), 
    .IRWrite(IRWrite), 
    .MemtoReg(MemtoReg), 
    .ALUSrcA(ALUSrcA), 
    .ALUSrcB(ALUSrcB), 
    .PCWriteCond(PCWriteCond), 
    .BranchNotEqual(BranchNotEqual), 
    .PCWrite(PCWrite), 
    .PCSrc(PCSrc), 
    .IorD(IorD), 
    .state(state), 
    .ALUOp(ALUOp)
    );
    ALUControl ALUctrl(.ALUControl(ALUcontrol), .OpCode(inst[31:26]), .FUNCT(inst[5:0]), .ALUOp(ALUOp));
    ALU U1(.A(ALU_A), .B(ALU_B), .Shamt(inst[10:6]), .ALUcontrol(ALUcontrol), .Zero(Zero), .ALUOut(res));

    MUX4T1_32 mux_pc(.s(PCSrc), .I0(res), .I1(ALUOut), .I2(Jump_addr), .I3(), .o(PC_in));      //
    REG32 PC(.clk(clk), .rst(reset), .CE(branch), .D(PC_in), .Q(PC_now));
    
    REG32 ALUout(.clk(clk), .rst(1'b0), .CE(1'b1), .D(res), .Q(ALUOut));
    MUX2T1_32 mux_m_addr(.s(IorD), .I0(PC_now), .I1(ALUOut), .o(m_addr));
    


endmodule
