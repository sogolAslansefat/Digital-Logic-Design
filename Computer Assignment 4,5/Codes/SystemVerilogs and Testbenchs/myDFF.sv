`timescale 1ns/1ns
module myDFF (input clk, rst, ld2, output logic Q);
    always @ (posedge clk, posedge rst) begin
        if (rst) Q<=0;
        else Q<=ld2;
    end
endmodule
