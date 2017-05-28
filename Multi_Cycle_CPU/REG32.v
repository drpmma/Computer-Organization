module REG32(
        input clk,
        input CE,
        input rst,
        input [31:0]D,
        output reg [31:0]Q
);
    always @(posedge clk or posedge rst) begin
        if (rst == 1) begin
          Q <= 32'h00000000;
        end
        else if (CE == 1) begin
          Q <= D;
        end
    end

endmodule // REG32