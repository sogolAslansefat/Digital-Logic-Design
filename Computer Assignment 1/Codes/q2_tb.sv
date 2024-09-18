`timescale 1ns / 1ns 
module test_bench_q2();
logic aa;
logic enen;
wire yy;
cmos_tri_state_buffer cut(aa,enen,yy);
initial begin 
#10
aa = 0;
enen = 1;
#50
aa = 0;
enen = 0;
#50
aa = 1;
enen = 0;
#50
aa = 1;
enen = 1;
#50
aa = 1;
enen = 0;
#50
aa = 0;
enen = 0;
#50
aa = 0;
enen = 1;
#50
aa = 1;
enen = 1;
#50
aa = 0;
enen = 1;
#50
aa = 0;
enen = 0;
#50
aa = 0;
enen = 1;
#30
$stop;
end
endmodule

