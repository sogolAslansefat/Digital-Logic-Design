`timescale 1ns/1ns
module q5_tbq3();
logic [47:0]A = 48'd0;
wire [2:0]O;
q3_residue7_48bit #(48, 656, 3) residue(A, O);
initial begin
repeat(12) #800 A = $random;
end
endmodule

