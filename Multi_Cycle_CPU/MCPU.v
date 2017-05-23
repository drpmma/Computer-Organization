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

    wire [31:0]inst, memory;

    REG32 IR(.clk(clk), .rst(reset), .CE(), .D(), .Q(inst));
    assign inst_out = inst;
    REG32 MDR(.clk(clk), .rst(1'b0), .CE(1'b1), .D(), .Q(memory));
    
    wire [31:0]data_A, data_B;
    regs REG(.clk(clk), .rst(rst), .reg_Rd_addr_A(), .reg_Rt_addr_B(), 
            .reg_Wt_addr(), .wdata(), .we(), .rdata_A(data_A), .rdata_B(data_B));
    assign Data_out = data_B;

    wire [31:0]res;
    ALU U1(.A(), .B(), .ALUcontrol(), .Zero(), .ALUOut(res));


    REG32 PC(.clk(clk), .rst(reset), .CE(), .D(), .Q());
    
    wire [31:0]ALUOut;
    REG32 ALUOut(.clk(clk), .rst(1'b0), .CE(1'b1), .D(res), .Q(ALUOut));


endmodule
