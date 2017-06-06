module Interrupt(
    input clk,
    input reset,
    input INT,
    input eret,
    input [31:0]pc_next,
    output reg[31:0]pc
);

    reg [31:0]EPC;
    parameter Int_add = 32'h00000000;
    always @(posedge clk or posedge reset) begin
        if(reset == 1)begin
            pc = 0;
            EPC = 0;
        end
        else if(INT == 1) begin
            pc = Int_add;
            EPC = pc_next;
        end
        else if(eret == 1)
            pc = EPC;
        else
            pc = pc_next;
    end

endmodule // Interrupt