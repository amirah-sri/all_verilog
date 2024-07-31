`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 09:24:59
// Design Name: 
// Module Name: top_module_for_interleaver_and_deinterleaver
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


module top_module_for_interleaver_and_deinterleaver(
input clk,
input reset,
input [7:0] interleaver_input,
output [7:0] interleaver_output,
output [7:0] deinterleaver_output,
output [3:0] select
);

wire [7:0] interleaver_output_to_deinterleaver_input;
assign interleaver_output = interleaver_output_to_deinterleaver_input;
    
top_module_for_interleaver    top_module_interleaver(
.clk(clk),
.reset(reset),
.interleaver_input(interleaver_input),
.interleaver_output(interleaver_output_to_deinterleaver_input),
.select(select)
);

top_module_for_deinterleaver    top_module_deinterleaver(
.clk(clk),
.reset(reset),
.deinterleaver_input(interleaver_output_to_deinterleaver_input),
.deinterleaver_output(deinterleaver_output),
.select(select)
);
 
endmodule
