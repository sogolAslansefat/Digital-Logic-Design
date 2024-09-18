`timescale 1ns/1ns
module test_bench_q1 ();
logic aa;
logic bb;
wire ww;
mynor cut1(aa,bb,ww);
initial begin 
#10 
aa = 0;
bb = 1;
#50
aa = 1;
bb = 1;
#50
aa = 1;
bb = 0;
#50
aa = 0;
bb = 0;
#50
aa = 1;
bb = 0;
#50
aa = 1;
bb = 1;
#50
aa = 1;
bb = 0;
#50
aa = 0;
bb = 0;
#30 $stop;
end
endmodule
