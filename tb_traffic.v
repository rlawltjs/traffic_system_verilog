`timescale 1ns / 1ps

module tb_traffic_system();

    reg clock;
    reg reset_n;
    reg start;
    wire [3:0] c_east, c_west, c_south, c_north;
    wire [1:0] h_east, h_west, h_south, h_north;
    
    traffic_system dut(.clock(clock), .reset_n(reset_n), .i_start(start), .o_car_east(c_east), .o_car_west(c_west), .o_car_south(c_south), .o_car_north(c_north), .o_human_east(h_east), .o_human_west(h_west), .o_human_south(h_south), .o_human_north(h_north));
    
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
