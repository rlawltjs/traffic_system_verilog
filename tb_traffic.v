`timescale 1ns / 1ps

module tb_traffic();

    reg clock;
    reg reset_n;
    reg start;
    wire [3:0] c_signal_e, c_signal_s;
    wire [1:0] h_signal_e, h_signal_s;
    
    traffic east(.clk(clock), .reset_n(reset_n), .i_start(start), .i_switch(1'b0), .o_car_signal(c_signal_e), .o_human_signal(h_signal_e));
    traffic south(.clk(clock), .reset_n(reset_n), .i_start(start), .i_switch(1'b1), .o_car_signal(c_signal_s), .o_human_signal(h_signal_s));
    
    always begin
        clock = 1'b1;
        forever #5 clock = ~clock;
    end
    
    initial begin
        reset_n = 1'b0;
        start = 1'b0;
        #5;
        reset_n = 1'b1;
        #10;
        start = 1'b1;
    end

endmodule
