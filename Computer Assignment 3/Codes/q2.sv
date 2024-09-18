`timescale 1ns/1ns
module q2_residue7_48bit (input [47:0]a, output [2:0]o);
	parameter NUM_OF_BITS = 48;
	parameter NUM_OF_LEVELS = 4;
	wire [NUM_OF_LEVELS:0]g[NUM_OF_BITS - 1:0];
	assign g[0] = a;
	genvar i;
	genvar j;
	generate
		for(i = 0;i<NUM_OF_LEVELS;i = i+1)begin
			for(j=0; j< NUM_OF_BITS/((i+1)*6); j = j +1)begin
				q1_residue7 cut1(.A(g[i][6*j+2:6*j]) , .B(g[i][6*j+5:6*j+3]), .R(g[i+1][3*j+2:3*j]));
			end
		end
	endgenerate
	assign o = g[NUM_OF_LEVELS][2:0];
endmodule


