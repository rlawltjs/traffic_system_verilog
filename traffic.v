`timescale 1ns / 1ps

module traffic(
    input wire clk,
    input wire reset_n,
    input wire i_start,
    input wire i_switch,
    output reg [3:0] o_car_signal,
    output reg [1:0] o_human_signal
    );
    
    reg [6:0] r_cycle;
    
    always@(posedge clk) begin
        if (!reset_n) begin
            r_cycle <= 7'd34*i_switch;
        end
        else begin
            if (i_start) begin
                r_cycle <= r_cycle + 7'd1;
                if (r_cycle==7'd68) begin
                    r_cycle <= 7'd1;
                end
            end
            else begin
                r_cycle <= r_cycle;
            end
        end
    end
    
    always@(*)begin
        if (r_cycle==7'd0) begin
            o_car_signal = 4'b0001; //red
        end
        else if (r_cycle<=7'd20) begin
            o_car_signal = 4'b0010; //green
        end
        else if (r_cycle<=7'd22) begin
            o_car_signal = 4'b0100; //yellow
        end
        else if (r_cycle<=7'd32) begin
            o_car_signal = 4'b1000; //left
        end
        else if (r_cycle<=7'd34) begin
            o_car_signal = 4'b0100; //yellow
        end
        else begin
            o_car_signal = 4'b0001; //red
        end
    end
    
    always@(*)begin
        if (r_cycle<=7'd34) begin
            o_human_signal = 2'b01; //red
        end
        else if (r_cycle<=7'd48) begin
            o_human_signal = 2'b10; //green
        end
        else if (r_cycle<=7'd54) begin
            if (r_cycle[0]==1'b1) begin //green blink
                o_human_signal = 2'b00;
            end
            else begin
                o_human_signal = 2'b10;
            end
        end
        else begin
            o_human_signal = 2'b01; //red
        end
    end
    
endmodule
