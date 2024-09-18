`timescale 1ns/1ns
module cnt128 ( input clk, rst, cen2, Q, input [3:0]n, output logic co2);
    logic [6:0] po2;
    wire [6:0] pi2;
    assign pi2 = 128-n*8;
    always @ (posedge clk, posedge rst) begin
        if(rst) po2 <= 7'b0;
        else begin
            if (Q) po2 <= pi2;
            else if(cen2)
            po2 <= po2 + 1;
        end
    end
    assign co2 = &{po2,cen2};
endmodule
