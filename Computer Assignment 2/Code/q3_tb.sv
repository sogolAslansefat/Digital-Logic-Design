`timescale 1ns/1ns

module q3_mux16to1_tb();

logic [15:0]AA;

logic [3:0]SS;

wire ww;

q3_mux16to1 CUT3(AA, SS, ww);

initial begin

#100 AA = 16'd0;

#100 SS = {0,0,0,0};

 

#100 AA = 16'd2;

#100 SS = 4'b0001;

 

#100 AA = 16'd64;

#100 SS = 4'b0110;

 

#100 AA = 16'd65534;

#100 SS = 4'b1101;

 

#100 AA = 16'd16384;

#100 SS = 4'b1110;

 

#100 AA = {1,0,1,0,0,0,0,0,0,0,1,0,0,0,1,1};

#100 SS = 4'b0101;

 

#100 $stop;

end

endmodule
