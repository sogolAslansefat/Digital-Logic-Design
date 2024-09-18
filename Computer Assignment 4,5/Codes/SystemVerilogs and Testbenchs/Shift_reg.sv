`timescale 1ns/1ns
module ShfReg (input clk, rst, serIn, shen, init, output [3:0]n ,output [1:0]d);
    logic [7:0] po3;
    always@(posedge clk, posedge rst) begin
        if(rst)
                po3 <= 8'b0;
        else
               // po3 <= shen ? {po3[6:0], serIn} : po3;
		po3 <= (~init) ? (shen ? {po3[6:0], serIn} : po3) : 8'b0;
    end
    assign n = po3[3:0];
    assign d = po3[5:4];
endmodule
