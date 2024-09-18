`timescale 1ns/1ns
module q3_mux16to1 (input [15:0] A, input [3:0] S, output w);
genvar k;
wire l[3:0];
generate
for (k = 0; k <= 3; k = k + 1) 
q1_mux4to1 y1(A[4*k], A[4*k+1], A[4*k+2], A[4*k+3], S[1:0], l[k]);
endgenerate
q1_mux4to1 y2(l[0], l[1], l[2], l[3], S[3:2], w);
endmodule

