`timescale 1ns/1ns
module MSSD (input serIn, clk , rst ,output [1:0]d,output [0:3]p, output logic outValid, output logic error);
    logic co1  , co2, cen1 , cen2 , ld1 , ld2 , init , shen ;
    wire [3:0] n;
    wire Q;
    ctrlr controlunit (clk, rst, serIn, co1, co2,n,error,outValid, init , shen, ld1, ld2 , cen1, cen2 );
    cnt8 mod8counter (clk , rst , cen1 , ld1 , co1);
    myDFF Dfliplop (clk , rst , ld2 , Q);
    cnt128 mod128counter (clk , rst , cen2 , Q ,n, co2);
    ShfReg shiftregister (clk , rst , serIn, shen , init , n , d);
    DMUX demultiplexer (clk, serIn , outValid, d ,p);

endmodule
