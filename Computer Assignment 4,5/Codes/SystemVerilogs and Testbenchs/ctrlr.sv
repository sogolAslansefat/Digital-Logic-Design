`timescale 1ns/1ns
module ctrlr (input clk, rst, serIn, co1, co2,input [3:0]n, output logic error, outValid, init, shen, ld1, ld2, cen1, cen2);
    parameter [1:0] idle = 0 , d_n = 1 , get_data =2 , error_check = 3;//states
	logic [2:0] p_state = 1, n_state = 0;
    //seq part
    always@(posedge clk , posedge rst) begin
        if(rst)
            p_state <= idle;
        else
            p_state <= n_state;
    end
    //comb part
    always@(p_state, serIn,co1, co2) begin//clk ,
	    n_state=3'b0;
        {error, outValid, init, shen, ld1, ld2, cen1, cen2} = 8'b0;
        case(p_state)
            idle: begin  
                        n_state = serIn ? idle : d_n;
                        outValid = 0;
                        error = 0;
                        init = 1;
                        ld1 = 1;
                    end

            d_n: begin
                        n_state = co1 ? get_data : d_n;
                        init = 0;
                        cen1 = 1;
                        shen = 1;
                        ld1 = 0;
                        ld2 = 1;
                        
                    end

            get_data: begin
                        n_state = co2 ?(serIn ? idle : error_check):get_data;
                        ld2 = 0; 
                        outValid = 1;
                        cen2 = 1;
                        shen = 0;
                        error=0;
                    end

            error_check: begin
                        n_state = serIn ? idle : error_check;
                        outValid = 0;
                        error = 1;
                    end
        endcase
    end
endmodule