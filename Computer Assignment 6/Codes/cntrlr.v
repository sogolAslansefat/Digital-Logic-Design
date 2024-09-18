`timescale 1ns/1ns
module ctrl(input clk, rst, start ,co1 ,co2 ,cmp, output reg read_mem, write_mem, sdA, sdB, saA, saB, init_C1, Cen_C1, ld_C2, Cen_C2, ldD1, ldD2 ,done , output reg [3:0] ps,ns);


parameter [3:0] idle = 0, init = 1, load_cnt = 2, loading_A = 3, loading_B = 4, compare = 5, swap_A = 6, swap_B = 7, no_ch = 8;
// reg [2:0] ps,ns;
always @(ps, start, co1 ,co2 ,cmp) begin
    {read_mem, write_mem, sdA, sdB, saA, saB, init_C1, Cen_C1, ld_C2, Cen_C2, ldD1, ldD2, done} = 13'b0;
    ns = idle;
    case(ps)
        idle: begin ns = start ? init:idle;
                    done = 1;
        end

        init: begin ns = start ? init:load_cnt;
                    init_C1 = 1;
        end

        // load_cnt: begin ns = co1 ? idle:loading_A;
        load_cnt: begin ns = co1 ? idle:loading_A;
                        ld_C2 = 1;
        end

        loading_A: begin ns = loading_B;
                         //{ldD1,read_mem,saA} = 3'b1;
                         ldD1 = 1;
                         read_mem = 1;
                         saA = 1;
        end

        loading_B: begin ns = compare;
                        ldD2 = 1;
                        read_mem = 1;
                        saB = 1;
        end

        compare: begin ns = (cmp?swap_A:no_ch);
        //compare: begin ns = no_ch;
        end

        swap_A: begin ns = swap_B;
                      //{saA,sdB,write_mem} = 3'b1;
			saA =1;
			sdB =1;
			sdA =0;
			write_mem = 1;
        end

        swap_B: begin ns = co2 ? load_cnt:loading_A;
                      //{saB,sdA,write_mem,Cen_C2} = 4'b1;
			saB =1;
			sdA =1;
			sdB = 0;
			write_mem = 1;
			Cen_C2 =1;
                        Cen_C1 = co2 ? 1:0;
        end

        no_ch: begin ns = co2 ? load_cnt:loading_A;
                     Cen_C2 = 1;
                     Cen_C1 = co2 ? 1:0;
        end
        default: ns = idle;
    endcase
end

always @(posedge clk , posedge rst) begin
    if (rst) ps <= idle;
    else ps <= ns;
end

endmodule
