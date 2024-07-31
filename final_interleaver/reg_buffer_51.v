`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2024 20:52:16
// Design Name: 
// Module Name: reg_buffer_51
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


module reg_buffer_51 (
    input clk,
    input  reset,
    input buf_en,
    input [7:0] data_in,
    output [7:0] data_out
);
wire [7:0] buffer1_2_buffer2 ;

reg_buffer_34 buffer_34_1(.clk(clk),.reset(reset),.buf_en(buf_en),.data_in(data_in),.data_out(buffer1_2_buffer2));
reg_buffer_17 buffer_17_2(.clk(clk),.reset(reset),.buf_en(buf_en),.data_in(buffer1_2_buffer2),.data_out(data_out));

endmodule