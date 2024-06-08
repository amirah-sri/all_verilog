`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2024 17:29:33
// Design Name: 
// Module Name: mux_12_to_1
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

module mux_12_to_1 (
    input wire [7:0] data_in0,
    input wire [7:0] data_in1,
    input wire [7:0] data_in2,
    input wire [7:0] data_in3,
    input wire [7:0] data_in4,
    input wire [7:0] data_in5,
    input wire [7:0] data_in6,
    input wire [7:0] data_in7,
    input wire [7:0] data_in8,
    input wire [7:0] data_in9,
    input wire [7:0] data_in10,
    input wire [7:0] data_in11,
    input wire [3:0] sel,
    output reg [7:0] data_out
);
    always @(*) begin
        case (sel)
            4'd0: data_out = data_in0;
            4'd1: data_out = data_in1;
            4'd2: data_out = data_in2;
            4'd3: data_out = data_in3;
            4'd4: data_out = data_in4;
            4'd5: data_out = data_in5;
            4'd6: data_out = data_in6;
            4'd7: data_out = data_in7;
            4'd8: data_out = data_in8;
            4'd9: data_out = data_in9;
            4'd10: data_out = data_in10;
            4'd11: data_out = data_in11;
            default: data_out = 8'b0;
        endcase
    end
endmodule

