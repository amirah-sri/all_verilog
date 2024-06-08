`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2024 15:40:27
// Design Name: 
// Module Name: register_8bit
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


module register_8bit (
    input wire clk,
    input wire reset,
    input wire [7:0] data_in,
    output wire [7:0] data_out
);
    d_flip_flop dff0 (.clk(clk), .reset(reset), .d(data_in[0]), .q(data_out[0]));
    d_flip_flop dff1 (.clk(clk), .reset(reset), .d(data_in[1]), .q(data_out[1]));
    d_flip_flop dff2 (.clk(clk), .reset(reset), .d(data_in[2]), .q(data_out[2]));
    d_flip_flop dff3 (.clk(clk), .reset(reset), .d(data_in[3]), .q(data_out[3]));
    d_flip_flop dff4 (.clk(clk), .reset(reset), .d(data_in[4]), .q(data_out[4]));
    d_flip_flop dff5 (.clk(clk), .reset(reset), .d(data_in[5]), .q(data_out[5]));
    d_flip_flop dff6 (.clk(clk), .reset(reset), .d(data_in[6]), .q(data_out[6]));
    d_flip_flop dff7 (.clk(clk), .reset(reset), .d(data_in[7]), .q(data_out[7]));
endmodule
