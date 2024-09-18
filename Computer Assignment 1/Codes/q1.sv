`timescale 1ns / 1ns 
module mynor (input a,b, output w);
wire x;
supply1 vdd;
supply0 gnd;
pmos #(5,6,7) T1(x,vdd,a);
pmos #(5,6,7) T2(w,x,b);
nmos #(3,4,5) T3(w,gnd,a);
nmos #(3,4,5) T4(w,gnd,b);
endmodule
