`timescale 1ns/1ns
module q1_residue7 (input [2:0] A ,B , output [2:0] R);
	wire [3:0] S;
	wire [2:0] T;
	assign #79 S = A[2:0] + B[2:0];
	assign #53 T = S[2:0] + {2'b0 , S[3]};
	assign #32 R = (&T) ? 3'b0 : T;
endmodule
