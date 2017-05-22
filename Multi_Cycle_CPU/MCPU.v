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

    