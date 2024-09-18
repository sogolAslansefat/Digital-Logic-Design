`timescale 1ns/1ns
module q2_barrelshifter4bit_tb();
logic [3:0]aa;
logic [1:0]ss;
wire [3:0]shoo;
q2_barrelshifter4bit CUT2(.a(aa),.s(ss),.sho(shoo));
initial begin
aa={0, 1, 0, 1};
ss={0, 0};
#150 ss[0]=1;
#150 ss[1]=1;
#150 ss[0]=0;
#150 ss[1]=0;
#150 $stop;
end
endmodule
