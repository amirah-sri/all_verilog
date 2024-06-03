`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 17:39:15
// Design Name: 
// Module Name: mod_12_counter
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


module mod_12_counter(
input clk,rst,
output reg [3:0] count
    );
 always @(posedge clk or posedge rst) begin 
 if (rst==1)
 count<=4'h0;
 else if (count==4'b1011)
 count<=4'h0;
 else
 count<=count+1;
 end
    
    
endmodule
