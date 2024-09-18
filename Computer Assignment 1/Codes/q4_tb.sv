`timescale 1ns/1ns
module test_bench_q4 ();
logic aa;
logic bb;
logic enen;
wire ybarybar;
MUX2 cut1(aa,bb,enen,ybarybar);
initial begin
aa = 1;
bb = 1;
enen = 1;
#50 enen = 0;
#50 bb = 0;
#50 enen = 1;
#50 aa = 0;
#50 enen = 0;
#50 bb = 1;
#50 enen = 1;
#50 enen = 0;
#50 bb = 0;
#50 enen = 1;
#50 aa = 1;
#50 enen = 0;
#50 bb = 1;
#50 enen = 1;
#20 $stop;
end
endmodule
