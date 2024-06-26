`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 13:27:49
// Design Name: 
// Module Name: tb_new_scrambler
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


module tb_new_scrambler;
reg clk,rst,enable;
reg serial_in;
wire  scrambled_out;
wire [14:0]dout;

new_scrambler i1(.clk(clk),.rst(rst),.enable(enable),.scrambled_out(scrambled_out),.serial_in(serial_in),.dout(dout));
initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
initial begin
        
        rst = 1;
        serial_in = 0;
        enable = 0;
        #10;
        rst = 0;
        
        enable = 1;
       
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;
        $stop;
    end

endmodule
