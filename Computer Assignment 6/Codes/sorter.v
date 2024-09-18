`timescale 1ns/1ns
module sorter256(input start,clk,rst ,output done , read_mem, cmp, output[7:0] addr, output[15:0] D2_out, D1_out ,out_bus , output [3:0] ps,ns);

wire write_mem, sdA, sdB, saA, saB, init_C1, init_C2, Cen_C1, ld_C1, ld_C2, Cen_C2, ldD1 ,ldD2 ,co1 ,co2 , rdyMem;//read_mem , cmp
wire [7:0] pi1, po1, pi2, po2;// addr
wire [15:0] in_bus ;// ,out_bus,D2_out,D1_out;//////memory

assign init_C2 = 0;
assign ld_C1 =0;

assign pi1 = 8'b0;
assign pi2 = po1 + 1;

assign cmp = (D1_out > D2_out)?1 :0;

ctrl controller (clk, rst, start ,co1 ,co2 ,cmp, read_mem, write_mem, sdA, sdB, saA, saB, init_C1, Cen_C1, ld_C2, Cen_C2, ldD1, ldD2 ,done, ps,ns);

counter8 counter1 (pi1, clk, rst, init_C1, Cen_C1, ld_C1, po1, co1);
counter8 counter2 (pi2, clk, rst, init_C2, Cen_C2, ld_C2, po2, co2);

register16 register1 (out_bus, clk, rst, ldD1, D1_out);
register16 register2 (out_bus, clk, rst, ldD2, D2_out);

Memory memory_s(clk, rst, read_mem, write_mem, addr, in_bus, rdyMem,out_bus);

assign addr = saA ? po1 : (saB ? po2 : 0);
assign in_bus = sdA ? D1_out : (sdB ? D2_out:0);

endmodule

