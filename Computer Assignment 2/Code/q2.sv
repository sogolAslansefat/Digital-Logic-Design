`timescale 1ns/1ns
module q2_barrelshifter4bit (input [3:0] a, input [1:0] s, output [3:0] sho);
genvar k;
generate
for (k = 3; k >= 0; k = k - 1) begin
q1_mux4to1 yy(a[k%4], a[(k+1)%4], a[(k+2)%4], a[(k+3)%4], s, sho[k]);
end
endgenerate
endmodule

