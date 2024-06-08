`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2024 17:05:00
// Design Name: 
// Module Name: reg68
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


module reg68 (
    input wire clk,
    input wire reset,
    input wire [7:0] data_in,
    output wire [7:0] data_out
);
    wire [7:0] stage [0:67];  // Intermediary stages

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
    register_8bit reg17 (.clk(clk), .reset(reset), .data_in(stage[16]), .data_out(stage[17]));
    register_8bit reg18 (.clk(clk), .reset(reset), .data_in(stage[17]), .data_out(stage[18]));
    register_8bit reg19 (.clk(clk), .reset(reset), .data_in(stage[18]), .data_out(stage[19]));
    register_8bit reg20 (.clk(clk), .reset(reset), .data_in(stage[19]), .data_out(stage[20]));
    register_8bit reg21 (.clk(clk), .reset(reset), .data_in(stage[20]), .data_out(stage[21]));
    register_8bit reg22 (.clk(clk), .reset(reset), .data_in(stage[21]), .data_out(stage[22]));
    register_8bit reg23 (.clk(clk), .reset(reset), .data_in(stage[22]), .data_out(stage[23]));
    register_8bit reg24 (.clk(clk), .reset(reset), .data_in(stage[23]), .data_out(stage[24]));
    register_8bit reg25 (.clk(clk), .reset(reset), .data_in(stage[24]), .data_out(stage[25]));
    register_8bit reg26 (.clk(clk), .reset(reset), .data_in(stage[25]), .data_out(stage[26]));
    register_8bit reg27 (.clk(clk), .reset(reset), .data_in(stage[26]), .data_out(stage[27]));
    register_8bit reg28 (.clk(clk), .reset(reset), .data_in(stage[27]), .data_out(stage[28]));
    register_8bit reg29 (.clk(clk), .reset(reset), .data_in(stage[28]), .data_out(stage[29]));
    register_8bit reg30 (.clk(clk), .reset(reset), .data_in(stage[29]), .data_out(stage[30]));
    register_8bit reg31 (.clk(clk), .reset(reset), .data_in(stage[30]), .data_out(stage[31]));
    register_8bit reg32 (.clk(clk), .reset(reset), .data_in(stage[31]), .data_out(stage[32]));
    register_8bit reg33 (.clk(clk), .reset(reset), .data_in(stage[32]), .data_out(stage[33]));
    register_8bit reg34 (.clk(clk), .reset(reset), .data_in(stage[33]), .data_out(stage[34]));
    register_8bit reg35 (.clk(clk), .reset(reset), .data_in(stage[34]), .data_out(stage[35]));
    register_8bit reg36 (.clk(clk), .reset(reset), .data_in(stage[35]), .data_out(stage[36]));
    register_8bit reg37 (.clk(clk), .reset(reset), .data_in(stage[36]), .data_out(stage[37]));
    register_8bit reg38 (.clk(clk), .reset(reset), .data_in(stage[37]), .data_out(stage[38]));
    register_8bit reg39 (.clk(clk), .reset(reset), .data_in(stage[38]), .data_out(stage[39]));
    register_8bit reg40 (.clk(clk), .reset(reset), .data_in(stage[39]), .data_out(stage[40]));
    register_8bit reg41 (.clk(clk), .reset(reset), .data_in(stage[40]), .data_out(stage[41]));
    register_8bit reg42 (.clk(clk), .reset(reset), .data_in(stage[41]), .data_out(stage[42]));
    register_8bit reg43 (.clk(clk), .reset(reset), .data_in(stage[42]), .data_out(stage[43]));
    register_8bit reg44 (.clk(clk), .reset(reset), .data_in(stage[43]), .data_out(stage[44]));
    register_8bit reg45 (.clk(clk), .reset(reset), .data_in(stage[44]), .data_out(stage[45]));
    register_8bit reg46 (.clk(clk), .reset(reset), .data_in(stage[45]), .data_out(stage[46]));
    register_8bit reg47 (.clk(clk), .reset(reset), .data_in(stage[46]), .data_out(stage[47]));
    register_8bit reg48 (.clk(clk), .reset(reset), .data_in(stage[47]), .data_out(stage[48]));
    register_8bit reg49 (.clk(clk), .reset(reset), .data_in(stage[48]), .data_out(stage[49]));
    register_8bit reg50 (.clk(clk), .reset(reset), .data_in(stage[49]), .data_out(stage[50]));
    register_8bit reg51 (.clk(clk), .reset(reset), .data_in(stage[50]), .data_out(stage[51]));
    register_8bit reg52 (.clk(clk), .reset(reset), .data_in(stage[51]), .data_out(stage[52]));
    register_8bit reg53 (.clk(clk), .reset(reset), .data_in(stage[52]), .data_out(stage[53]));
    register_8bit reg54 (.clk(clk), .reset(reset), .data_in(stage[53]), .data_out(stage[54]));
    register_8bit reg55 (.clk(clk), .reset(reset), .data_in(stage[54]), .data_out(stage[55]));
    register_8bit reg56 (.clk(clk), .reset(reset), .data_in(stage[55]), .data_out(stage[56]));
    register_8bit reg57 (.clk(clk), .reset(reset), .data_in(stage[56]), .data_out(stage[57]));
    register_8bit reg58 (.clk(clk), .reset(reset), .data_in(stage[57]), .data_out(stage[58]));
    register_8bit reg59 (.clk(clk), .reset(reset), .data_in(stage[58]), .data_out(stage[59]));
    register_8bit reg60 (.clk(clk), .reset(reset), .data_in(stage[59]), .data_out(stage[60]));
    register_8bit reg61 (.clk(clk), .reset(reset), .data_in(stage[60]), .data_out(stage[61]));
    register_8bit reg62 (.clk(clk), .reset(reset), .data_in(stage[61]), .data_out(stage[62]));
    register_8bit reg63 (.clk(clk), .reset(reset), .data_in(stage[62]), .data_out(stage[63]));
    register_8bit reg64 (.clk(clk), .reset(reset), .data_in(stage[63]), .data_out(stage[64]));
    register_8bit reg65 (.clk(clk), .reset(reset), .data_in(stage[64]), .data_out(stage[65]));
    register_8bit reg66 (.clk(clk), .reset(reset), .data_in(stage[65]), .data_out(stage[66]));
    register_8bit reg67 (.clk(clk), .reset(reset), .data_in(stage[66]), .data_out(stage[67]));
    // Final output
    assign data_out = stage[67];
endmodule
