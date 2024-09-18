`timescale 1ns/1ns
module Test_bench_q5();
logic a=0;
logic b=0;
logic s=0;
wire w;
wire y;
MUX2 T1 (a,b,s,w);
MUX T2 (a,b,s,y);
initial begin
#70 s=1;
#70 b=1;
#70 a=1;
#70 a=0;
#70 b=0;
#70 s=0;
#70 b=1;
#70 s=1;
#70 s=0;
#70 a=1;
#70 s=1;
#70 s=0;
#70 a=0;
#70 b=0;
#70 a=1;
#70 s=1;
#70 b=1;
#70 b=0;
#70 a=0;
#70 a=1;
#70 s=0;
#70 b=1;
#70 b=0;
#70 a=1;
end
endmodule
