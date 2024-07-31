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
module reg_buffer_34 (
    input clk,
    input  reset,
    input buf_en,
    input [7:0] data_in,
    output [7:0] data_out
);
wire [7:0] buffer1_2_buffer2;

reg_buffer_17 buffer_17_1(.clk(clk),.reset(reset),.buf_en(buf_en),.data_in(data_in),.data_out(buffer1_2_buffer2));
reg_buffer_17 buffer_17_2(.clk(clk),.reset(reset),.buf_en(buf_en),.data_in(buffer1_2_buffer2),.data_out(data_out));

/*wire [7:0] w_34_01, w_34_12, w_34_23, w_34_34, w_34_45, w_34_56, w_34_67, w_34_78, w_34_89, w_34_910, w_34_1011, w_34_1112, w_34_1213, w_34_1314, w_34_1415, w_34_1516;
    
    
    register_8bit buf_reg_17_0 (.clk(clk), .reset(reset), .data_in(data_in), .data_out(w_34_01));
    register_8bit buf_reg_17_1 (.clk(clk), .reset(reset), .data_in(w_34_01), .data_out(w_34_12));
    register_8bit buf_reg_17_2 (.clk(clk), .reset(reset), .data_in(w_34_12), .data_out(w_34_23));
    register_8bit buf_reg_17_3 (.clk(clk), .reset(reset), .data_in(w_34_23), .data_out(w_34_34));
    register_8bit buf_reg_17_4 (.clk(clk), .reset(reset), .data_in(w_34_34), .data_out(w_34_45));
    register_8bit buf_reg_17_5 (.clk(clk), .reset(reset), .data_in(w_34_45), .data_out(w_34_56));
    register_8bit buf_reg_17_6 (.clk(clk), .reset(reset), .data_in(w_34_56), .data_out(w_34_67));
    register_8bit buf_reg_17_7 (.clk(clk), .reset(reset), .data_in(w_34_67), .data_out(w_34_78));
    register_8bit buf_reg_17_8 (.clk(clk), .reset(reset), .data_in(w_34_78), .data_out(w_34_89));
    register_8bit buf_reg_17_9 (.clk(clk), .reset(reset), .data_in(w_34_89), .data_out(w_34_910));
    register_8bit buf_reg_17_10 (.clk(clk), .reset(reset), .data_in(w_34_910), .data_out(w_34_1011));
    register_8bit buf_reg_17_11 (.clk(clk), .reset(reset), .data_in(w_34_1011), .data_out(w_34_1112));
    register_8bit buf_reg_17_12 (.clk(clk), .reset(reset), .data_in(w_34_1112), .data_out(w_34_1213));
    register_8bit buf_reg_17_13 (.clk(clk), .reset(reset), .data_in(w_34_1213), .data_out(w_34_1314));
    register_8bit buf_reg_17_14 (.clk(clk), .reset(reset), .data_in(w_34_1314), .data_out(w_34_1415));
    register_8bit buf_reg_17_15 (.clk(clk), .reset(reset), .data_in(w_34_1415), .data_out(w_34_1516));
    register_8bit buf_reg_17_16 (.clk(clk), .reset(reset), .data_in(w_34_1516), .data_out(data_out));
    register_8bit buf_reg_17_17 (.clk(clk), .reset(reset), .data_in(w_34_1617), .data_out(w_34_1011));
    register_8bit buf_reg_17_18 (.clk(clk), .reset(reset), .data_in(w_34_1718), .data_out(w_34_1112));
    register_8bit buf_reg_17_19 (.clk(clk), .reset(reset), .data_in(w_34_1819), .data_out(w_34_1213));
    register_8bit buf_reg_17_20 (.clk(clk), .reset(reset), .data_in(w_34_1920), .data_out(w_34_1314));
    register_8bit buf_reg_17_21 (.clk(clk), .reset(reset), .data_in(w_34_2021), .data_out(w_34_1415));
    register_8bit buf_reg_17_22 (.clk(clk), .reset(reset), .data_in(w_34_2122), .data_out(w_34_1516));
    register_8bit buf_reg_17_23 (.clk(clk), .reset(reset), .data_in(w_34_2223), .data_out(data_out));
    register_8bit buf_reg_17_24 (.clk(clk), .reset(reset), .data_in(w_34_2324), .data_out(w_34_1011));
    register_8bit buf_reg_17_25 (.clk(clk), .reset(reset), .data_in(w_34_2425), .data_out(w_34_1112));
    register_8bit buf_reg_17_26 (.clk(clk), .reset(reset), .data_in(w_34_2526), .data_out(w_34_1213));
    register_8bit buf_reg_17_27 (.clk(clk), .reset(reset), .data_in(w_34_1213), .data_out(w_34_1314));
    register_8bit buf_reg_17_28 (.clk(clk), .reset(reset), .data_in(w_34_1314), .data_out(w_34_1415));
    register_8bit buf_reg_17_29 (.clk(clk), .reset(reset), .data_in(w_34_1415), .data_out(w_34_1516));
    register_8bit buf_reg_17_30 (.clk(clk), .reset(reset), .data_in(w_34_1516), .data_out(data_out));
    register_8bit buf_reg_17_31 (.clk(clk), .reset(reset), .data_in(w_34_910), .data_out(w_34_1011));
    register_8bit buf_reg_17_32 (.clk(clk), .reset(reset), .data_in(w_34_1011), .data_out(w_34_1112));
    register_8bit buf_reg_17_33 (.clk(clk), .reset(reset), .data_in(w_34_1112), .data_out(data_out));
  */  
    
endmodule


