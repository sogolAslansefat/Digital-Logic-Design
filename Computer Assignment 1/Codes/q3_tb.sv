`timescale 1ns/1ns
module test_bench_q3 ();
logic aa;
logic bb;
logic ss;
wire yy;
MUX cut1(aa,bb,ss,yy);
initial begin
#50
aa = 1;
bb = 1;
ss = 1;
#100 ss = 0;
#100 bb = 0;
#100 ss = 1;
#100 aa = 0;
#100 ss = 0;
#100 bb = 1;
#100 ss = 1;
#100 ss = 0;
#100 bb = 0;
#100 ss = 1;
#100 aa = 1;
#100 ss = 0;
#50 $stop;
end
endmodule
