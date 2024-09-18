`timescale 1ns/1ns
module DMUX (input clk,serIn , dcden ,input [1:0]d, output logic[3:0]P);
    always @(posedge clk) begin
         P <= ~dcden ? 4'b0 :
            (d==0) ? {serIn,3'b0}:
            (d==1) ? {1'b0,serIn,2'b0}:
            (d==2) ? {2'b0,serIn,1'b0}:
            (d==3) ? {3'b0,serIn}:
            4'bxxxx;
    end
endmodule
