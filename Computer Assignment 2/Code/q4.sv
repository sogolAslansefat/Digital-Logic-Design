`timescale 1ns/1ns 

module barrel_shifter_16bit(input [15:0]A, [3:0]S, output [15:0]w);

genvar i;
generate
for(i = 0; i <16; i = i+1) begin
q3_mux16to1 MUX( {((A >> i ) + (A << ( 16 - i )))}, S, (w[i]) );
end
endgenerate
endmodule

