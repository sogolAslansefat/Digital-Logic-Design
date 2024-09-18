`timescale 1ns/1ns
module MSSD_TB();

logic serIn=1, clk = 0 , rst = 0 ;
logic outValid, error;
logic [1:0] d;
logic [0:3] p;

MSSD UUT( serIn, clk , rst , d, p , outValid, error);

always #5 clk = ~clk;

initial begin
#10 rst=1;
#10 rst=0;

#10 serIn = 1;
#10 serIn = 1;
#10 serIn = 1;
#10 serIn = 0;

#10 serIn = 0;
#10 serIn = 1;

#10 serIn = 0;
#10 serIn = 0;
#10 serIn = 1;
#10 serIn = 1;

#10 serIn = 1;


repeat(23) #10 serIn = $random;

#10 serIn = 0;
#10 serIn = 1;
#10 serIn = 0;
#10 serIn = 1;
#50 $stop;
end 

endmodule