`timescale 1ns/1ns
module q4_tbq2();
logic [47:0]A = 48'd0;
wire [2:0]W;
q2_residue7_48bit #(48,4) residue(A, W);
initial begin
repeat(10) #800 A = $random;
end
endmodule