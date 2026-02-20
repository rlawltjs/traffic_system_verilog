`timescale 1ns / 1ps

module traffic_system(
    input wire clock,
    input wire reset_n,
    input wire i_start,
    output wire [3:0] o_car_east, o_car_west, o_car_south, o_car_north,
    output wire [1:0] o_human_east, o_human_west, o_human_south, o_human_north
    );
    
    traffic east(.clk(clock), .reset_n(reset_n), .i_start(i_start), .i_switch(1'b0), .o_car_signal(o_car_east), .o_human_signal(o_human_east));
    traffic west(.clk(clock), .reset_n(reset_n), .i_start(i_start), .i_switch(1'b0), .o_car_signal(o_car_west), .o_human_signal(o_human_west));
    traffic south(.clk(clock), .reset_n(reset_n), .i_start(i_start), .i_switch(1'b1), .o_car_signal(o_car_south), .o_human_signal(o_human_south));
    traffic north(.clk(clock), .reset_n(reset_n), .i_start(i_start), .i_switch(1'b1), .o_car_signal(o_car_north), .o_human_signal(o_human_north));
    
endmodule
