`timescale 1ns / 1ps

module traffic(
    input wire clk,
    input wire reset_n,
    input wire i_start,
    input wire i_switch,
    output reg [3:0] o_car_signal,
    output reg [1:0] o_human_signal
    );
    
    reg [2:0] r_state, r_next_state;

    parameter S0 = 3'b000;  // car red human red
    parameter S1 = 3'b001;  // car green human red
    parameter S2 = 3'b010;  // car yellow human red
    parameter S3 = 3'b011;  // car left human red
    parameter S4 = 3'b100;  // car red human green
    parameter S5 = 3'b101;  // car red human green blink

    reg [6:0] r_cycle;

    always @(posedge clk) begin
        if (!reset_n) begin
            r_state <= i_switch ? S2 : S0;
            r_cycle <= 0;
        end
        else begin
            if (i_start) begin
                r_state <= r_next_state;

                if (r_state != r_next_state)
                    r_cycle <= 0;
                else
                    r_cycle <= r_cycle + 1;
            end
            else begin
                r_state <= r_state;
                r_cycle <= r_cycle;
            end
        end
    end


    always @(*) begin
        r_next_state = r_state;  // 기본 유지

        case (r_state)

            S0: begin
                r_next_state = S1;
            end

            S1: begin
                if (r_cycle == 7'd19)
                    r_next_state = S2;
            end

            S2: begin
                if (r_cycle == 7'd1)
                    r_next_state = S3;
            end

            S3: begin
                if (r_cycle == 7'd9)
                    r_next_state = S2;
            end

            S4: begin
                if (r_cycle == 7'd13)
                    r_next_state = S5;
            end

            S5: begin
                if (r_cycle == 7'd5)
                    r_next_state = S0;
            end

            default: begin
                r_next_state = S0;
            end

        endcase
    end

    always @(*) begin
        case (r_state)

            S0 : begin
                o_car_signal   = 4'b0001; // red
                o_human_signal = 2'b01;   // red
            end

            S1 : begin
                o_car_signal   = 4'b0010; // green
                o_human_signal = 2'b01;
            end

            S2 : begin
                o_car_signal   = 4'b0100; // yellow
                o_human_signal = 2'b01;
            end

            S3 : begin
                o_car_signal   = 4'b1000; // left
                o_human_signal = 2'b01;
            end

            S4 : begin
                o_car_signal   = 4'b0001; // red
                o_human_signal = 2'b10;   // green
            end

            S5 : begin
                o_car_signal   = 4'b0001;
                o_human_signal = (r_cycle[0]) ? 2'b10 : 2'b00; // blink
            end

            default : begin
                o_car_signal   = 4'b0001;
                o_human_signal = 2'b01;
            end

        endcase
    end

endmodule
