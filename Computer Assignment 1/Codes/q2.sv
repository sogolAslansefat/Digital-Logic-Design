`timescale 1ns / 1ns 
module cmos_tri_state_buffer(input a,en, output y);
wire x;
wire k;
wire z;
supply1 vdd;
supply0 gnd;

pmos #(5,6,7) T1(x,vdd,a);
pmos #(5,6,7) T2(y,x,z);
nmos #(3,4,5) T3(y,k,en);
nmos #(3,4,5) T4(k,gnd,a);


pmos #(5,6,7) T5(z,vdd,en);
nmos #(3,4,5) T6(z,gnd,en);

endmodule
