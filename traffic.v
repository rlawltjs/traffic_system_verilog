`timescale 1ns / 1ps

module traffic(
    input wire clk,
    input wire reset_n,
    input wire i_start,
    output reg [3:0] o_car_signal,
    output reg [1:0] o_human_signal
    );
    
    reg [6:0] r_cycle;
    
    always@(posedge clk) begin
        if (!reset_n) begin
            r_cycle <= 7'b000_0000;
        end
        else begin
            if (i_start) begin
                r_cycle <= r_cycle + 7'b000_0001;
                if (r_cycle==7'b100_0100) begin
                    r_cycle <= 7'b000_0001;
                end
            end
            else begin
                r_cycle <= r_cycle;
            end
        end
    end
    
    always@(*)begin
        if (r_cycle==7'b000_0000) begin
            o_car_signal = 4'b0001; //red
        end
        else if (r_cycle<=7'b001_0100) begin //20
            o_car_signal = 4'b0010; //green
        end
        else if (r_cycle<=7'b001_0110) begin //22
            o_car_signal = 4'b0100; //yellow
        end
        else if (r_cycle<=7'b010_0000) begin //32
            o_car_signal = 4'b1000; //left
        end
        else if (r_cycle<=7'b010_0010) begin //34
            o_car_signal = 4'b0100; //yellow
        end
        else begin
            o_car_signal = 4'b0001; //red
        end
    end
    
    always@(*)begin
        if (r_cycle<=7'b010_0010) begin //34
            o_human_signal = 2'b01; //red
        end
        else if (r_cycle<=7'b011_0000) begin //48
            o_human_signal = 2'b10; //green
        end
        else if (r_cycle<=7'b011_0110) begin //54
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
