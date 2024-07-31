`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2024 17:04:05
// Design Name: 
// Module Name: reg_buffer_17
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
module reg_buffer_17 (
    input clk,
    input  reset,
    input buf_en,
    input [7:0] data_in,
    output [7:0] data_out
);


wire [7:0] w_17_01, w_17_12, w_17_23, w_17_34, w_17_45, w_17_56, w_17_67, w_17_78, w_17_89, w_17_910, w_17_1011, w_17_1112, w_17_1213, w_17_1314, w_17_1415, w_17_1516;
    register_8bit buf_reg_17_0 (.clk(clk), .reset(reset), .reg_en(buf_en), .data_in(data_in), .data_out(w_17_01));
    register_8bit buf_reg_17_1 (.clk(clk), .reset(reset), .reg_en(buf_en), .data_in(w_17_01), .data_out(w_17_12));
    register_8bit buf_reg_17_2 (.clk(clk), .reset(reset), .reg_en(buf_en), .data_in(w_17_12), .data_out(w_17_23));
    register_8bit buf_reg_17_3 (.clk(clk), .reset(reset), .reg_en(buf_en), .data_in(w_17_23), .data_out(w_17_34));
    register_8bit buf_reg_17_4 (.clk(clk), .reset(reset), .reg_en(buf_en), .data_in(w_17_34), .data_out(w_17_45));
    register_8bit buf_reg_17_5 (.clk(clk), .reset(reset), .reg_en(buf_en), .data_in(w_17_45), .data_out(w_17_56));
    register_8bit buf_reg_17_6 (.clk(clk), .reset(reset), .reg_en(buf_en), .data_in(w_17_56), .data_out(w_17_67));
    register_8bit buf_reg_17_7 (.clk(clk), .reset(reset), .reg_en(buf_en), .data_in(w_17_67), .data_out(w_17_78));
    register_8bit buf_reg_17_8 (.clk(clk), .reset(reset),  .reg_en(buf_en), .data_in(w_17_78), .data_out(w_17_89));
    register_8bit buf_reg_17_9 (.clk(clk), .reset(reset),  .reg_en(buf_en), .data_in(w_17_89), .data_out(w_17_910));
    register_8bit buf_reg_17_10 (.clk(clk), .reset(reset),  .reg_en(buf_en), .data_in(w_17_910), .data_out(w_17_1011));
    register_8bit buf_reg_17_11 (.clk(clk), .reset(reset),  .reg_en(buf_en), .data_in(w_17_1011), .data_out(w_17_1112));
    register_8bit buf_reg_17_12 (.clk(clk), .reset(reset),  .reg_en(buf_en), .data_in(w_17_1112), .data_out(w_17_1213));
    register_8bit buf_reg_17_13 (.clk(clk), .reset(reset),  .reg_en(buf_en), .data_in(w_17_1213), .data_out(w_17_1314));
    register_8bit buf_reg_17_14 (.clk(clk), .reset(reset),  .reg_en(buf_en), .data_in(w_17_1314), .data_out(w_17_1415));
    register_8bit buf_reg_17_15 (.clk(clk), .reset(reset),  .reg_en(buf_en), .data_in(w_17_1415), .data_out(w_17_1516));
    register_8bit buf_reg_17_16 (.clk(clk), .reset(reset),  .reg_en(buf_en), .data_in(w_17_1516), .data_out(data_out));
    
    
endmodule


