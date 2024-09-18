`timescale 1ns/1ns
module cnt8 ( input clk, rst, cen1, ld1, output logic co1);
    logic [2:0] po1;
    wire [2:0] pi1;
    assign pi1 = 3'b010;
    always @ (posedge clk, posedge rst) begin
        if(rst) po1 <= 0;
        else begin
            if (ld1) po1 <= pi1;
            else if(cen1)
            po1 <= po1+1;
        end
    end
    assign co1 = &{po1,cen1};
endmodule
