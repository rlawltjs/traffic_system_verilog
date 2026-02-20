`timescale 1ns / 1ps

module tb_traffic();

    reg clock;
    reg reset_n;
    reg start;
    wire [3:0] c_signal;
    wire [1:0] h_signal;
    
    traffic dut(.clk(clock), .reset_n(reset_n), .i_start(start), .o_car_signal(c_signal), .o_human_signal(h_signal));
    
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
        if (c_signal==4'b0001) begin
            $display ("car red");
        end
        else if (c_signal==4'b0010) begin
            $display ("car green");
        end
        else if (c_signal==4'b0100) begin
            $display ("car yellow");
        end
        else if (c_signal==4'b1000) begin
            $display ("car left");
        end
        else begin
            $display ("car signal error");
        end
        if (h_signal==2'b01) begin
            $display ("human red");
        end
        else if (h_signal==2'b10) begin
            $display ("human green");
        end
        else if (h_signal==2'b00) begin
            $display ("no human signal");
        end
        else begin
            $display ("human signal error");
        end
    end
    
endmodule
