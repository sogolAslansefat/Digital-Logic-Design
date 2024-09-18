`timescale 1ns/1ns
module sorter256_TB();

reg clk = 0,rst = 0,start = 0;
wire done , read_mem , cmp;
wire [15:0] D2_out,D1_out,out_bus;
wire [7:0] addr;
wire [3:0] ps,ns;

sorter256 UUT (start, clk, rst, done , read_mem, cmp, addr, D2_out, D1_out, out_bus, ps,ns);

always #5 clk = ~clk;

initial begin
#20 rst = 1;
#20 rst = 0;

#20 start = 1;
#20 start = 0;

#2000000 $stop;
end

endmodule

