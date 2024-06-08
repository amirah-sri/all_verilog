`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2024 15:44:02
// Design Name: 
// Module Name: reg17
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


module reg17 (
    input wire clk,
    input wire reset,
    input wire [7:0] data_in,
    output wire [7:0] data_out
);
    wire [7:0] stage [0:16];  // Intermediary stages

    // First stage directly takes data_in
    register_8bit reg0 (.clk(clk), .reset(reset), .data_in(data_in), .data_out(stage[0]));

    // Intermediate stages
    register_8bit reg1 (.clk(clk), .reset(reset), .data_in(stage[0]), .data_out(stage[1]));
    register_8bit reg2 (.clk(clk), .reset(reset), .data_in(stage[1]), .data_out(stage[2]));
    register_8bit reg3 (.clk(clk), .reset(reset), .data_in(stage[2]), .data_out(stage[3]));
    register_8bit reg4 (.clk(clk), .reset(reset), .data_in(stage[3]), .data_out(stage[4]));
    register_8bit reg5 (.clk(clk), .reset(reset), .data_in(stage[4]), .data_out(stage[5]));
    register_8bit reg6 (.clk(clk), .reset(reset), .data_in(stage[5]), .data_out(stage[6]));
    register_8bit reg7 (.clk(clk), .reset(reset), .data_in(stage[6]), .data_out(stage[7]));
    register_8bit reg8 (.clk(clk), .reset(reset), .data_in(stage[7]), .data_out(stage[8]));
    register_8bit reg9 (.clk(clk), .reset(reset), .data_in(stage[8]), .data_out(stage[9]));
    register_8bit reg10 (.clk(clk), .reset(reset), .data_in(stage[9]), .data_out(stage[10]));
    register_8bit reg11 (.clk(clk), .reset(reset), .data_in(stage[10]), .data_out(stage[11]));
    register_8bit reg12 (.clk(clk), .reset(reset), .data_in(stage[11]), .data_out(stage[12]));
    register_8bit reg13 (.clk(clk), .reset(reset), .data_in(stage[12]), .data_out(stage[13]));
    register_8bit reg14 (.clk(clk), .reset(reset), .data_in(stage[13]), .data_out(stage[14]));
    register_8bit reg15 (.clk(clk), .reset(reset), .data_in(stage[14]), .data_out(stage[15]));
    register_8bit reg16 (.clk(clk), .reset(reset), .data_in(stage[15]), .data_out(stage[16]));

    // Final output
    assign data_out = stage[16];
endmodule

