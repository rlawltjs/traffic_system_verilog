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
    
    always@(*) begin
        if(h_east==2'b10) begin
            if(c_north==4'b1000) begin
                $display("east crashed!!");
                $finish;
            end
            else begin
                $display("east ok");
            end
        end
        else if(h_west==2'b10) begin
            if(c_south==4'b1000) begin
                $display("west crashed!!");
                $finish;
            end
            else begin
                $display("west ok");
            end
        end
        else if(h_south==2'b10) begin
            if(c_east==4'b1000) begin
                $display("south crashed!!");
                $finish;
            end
            else begin
                $display("south ok");
            end
        end
        else if(h_north==2'b10) begin
            if(c_west==4'b1000) begin
                $display("north crashed!!");
                $finish;
            end
            else begin
                $display("north ok");
            end
        end
        else begin
            $display("street OK");
        end
        
        if(h_east==2'b10) begin
            if(c_east==4'b0010)begin
                $display("east crashed!!");
                $finish;
            end
            else begin
                $display("east ok");
            end
        end
        else if(h_north==2'b10) begin
            if(c_north==4'b0010)begin
                $display("north crashed!!");
                $finish;
            end
            else begin
                $display("north ok");
            end
        end
        else begin
            $display("street OK");
        end
        
        if (c_north==4'b0010)begin
            if(c_east==4'b0010)begin
                $display("car crashed!!");
                $finish;
            end
            else if(c_east==4'b1000) begin
                $display("car crashed!!");
                $finish;
            end
            else begin
                $display("street OK");
            end
        end
        else begin
            $display("street OK");
        end
    end
    
endmodule
