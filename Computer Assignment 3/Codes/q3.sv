`timescale 1ns/1ns
module q3_residue7_48bit #(parameter NUM_OF_BITS_INPUT = 48, DELAY = 656, NUM_OF_BITS_OUTPUT = 3)
 (input [NUM_OF_BITS_INPUT - 1:0]A, output [NUM_OF_BITS_OUTPUT - 1:0]W);
	assign #DELAY W = A % 7;
endmodule
