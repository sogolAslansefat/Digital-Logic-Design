`timescale 1ns/1ns
module q1_mux4to1_tb();
logic aa=0,bb=0,cc=0,dd=0;
logic [1:0]ss;
wire ww;
q1_mux4to1 CUT1(.a(aa),.b(bb),.c(cc),.d(dd),.s(ss),.w(ww));
initial begin
#50 ss[0]=0;
ss[1]=0;
#50 aa=1;
#50 aa=0;
#50 bb=1;
#50 bb=0;
#50 cc=1;
#50 cc=0;
#50 dd=1;
#50 dd=0;
#50 ss[0]=1;
#50 aa=1;
#50 aa=0;
#50 bb=1;
#50 bb=0;
#50 cc=1;
#50 cc=0;
#50 dd=1;
#50 dd=0;
#50 ss[0]=0;
ss[1]=1;
#50 aa=1;
#50 aa=0;
#50 bb=1;
#50 bb=0;
#50 cc=1;
#50 cc=0;
#50 dd=1;
#50 dd=0;
#50 ss[0]=1;
#50 aa=1;
#50 aa=0;
#50 bb=1;
#50 bb=0;
#50 cc=1;
#50 cc=0;
#50 dd=1;
#50 dd=0;
#100 $stop;
end
endmodule
