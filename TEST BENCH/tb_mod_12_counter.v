`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 17:41:50
// Design Name: 
// Module Name: tb_mod_12_counter
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


module tb_mod_12_counter;
reg clk,rst;
wire [3:0] count;
mod_12_counter i1(.clk(clk),.rst(rst),.count(count));
initial begin clk=1'b0;rst=1'b1;
#10 rst=1'b0;
#200 $finish;
end
always begin 
#5 clk=~clk;
end
endmodule
