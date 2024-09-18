`timescale 1ns/1ns 
module question4_TB();
logic [15:0]AA;
logic [3:0]SS;
logic [15:0] ww;
barrel_shifter_16bit CUT4(.A(AA), .S(SS), .w(ww));
initial begin
AA = 16'b0;
SS = 4'b0;

#100 AA = 16'd5; 
#100 SS = 4'b0001;   
#100 SS = 4'b0010;
#100 SS = 4'b0011;
#100 SS = 4'b0100;
#100 SS = 4'b0101;
#100 SS = 4'b1101;
#200 $stop ;
end
endmodule

