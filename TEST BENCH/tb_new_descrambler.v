`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 13:51:27
// Design Name: 
// Module Name: tb_new_descrambler
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_new_descrambler;
reg clk,rst,enable;
reg de_serial_in;
wire  descrambled_out;
wire [14:0]dout;

new_descrambler i2(.clk(clk),.rst(rst),.enable(enable),.descrambled_out(descrambled_out),.de_serial_in(de_serial_in),.dout(dout));
initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end
initial begin
        
        rst = 1;
        de_serial_in = 0;
        enable = 0;
        #10;
        rst = 0;
        
        enable = 1;
       
        de_serial_in = 1; #10;
        de_serial_in = 0; #10;
        de_serial_in = 1; #10;
        de_serial_in = 1; #10;
        de_serial_in = 0; #10;
        de_serial_in = 0; #10;
        de_serial_in = 1; #10;
        de_serial_in = 1; #10;
        $stop;
    end

endmodule

