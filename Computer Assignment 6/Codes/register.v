`timescale 1ns/1ns
module register16(input [15:0] pi, input clk, rst, ld, output reg [15:0] po);
    always @(posedge clk, posedge rst) begin
        if (rst)
            po <= 16'b0;
        else
            po <= (ld) ? pi : po;
    end
endmodule


