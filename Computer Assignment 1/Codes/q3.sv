
`timescale 1ns / 1ns
module myinv (input a ,output w);
supply1 vdd;
supply0 gnd;
pmos #(5,6,7) T1(w,vdd,a);
nmos #(3,4,5) T2(w,gnd,a);
endmodule


module mynor (input a,b, output w);
wire x;
supply1 vdd;
supply0 gnd;
pmos #(5,6,7) T1(x,vdd,a);
pmos #(5,6,7) T2(w,x,b);
nmos #(3,4,5) T3(w,gnd,a);
nmos #(3,4,5) T4(w,gnd,b);
endmodule


module MUX (input a,b,s, output y);
wire l,m,n;
myinv gate1 (s,l);
mynor gate2 (a,s,m), gate3 (l,b,n), gate4 (n,m,y);
endmodule