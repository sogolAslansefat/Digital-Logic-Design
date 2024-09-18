`timescale 1ns/1ns
module counter8(input [7:0] pi, input clk, rst, init, inc, ld, output reg [7:0] po, output co);
    always @ (posedge clk, posedge rst) begin
        if(rst) po <= 8'b0;
        else begin
            if (ld) po <= pi;
            else if (init) po <= 8'b0;
            else if (inc) po <= po + 1;
        end
    end
    assign co = &po;
endmodule

