`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2024 11:21:38
// Design Name: 
// Module Name: scrambler
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


module scrambler(
    input wire clk,
    input wire rst,
    input wire [14:0] initial_value,
    output reg [14:0] dout
);
    always @(posedge clk or posedge rst) begin
        if (rst == 1) begin
            dout <= initial_value;
        end else if (rst==0) begin
            dout[0] <= initial_value[14] ^ initial_value[13]; 
            dout[1] <= initial_value[0];
            dout[2] <= initial_value[1];
            dout[3] <= initial_value[2];
            dout[4] <= initial_value[3];
            dout[5] <= initial_value[4];
            dout[6] <= initial_value[5];
            dout[7] <= initial_value[6];
            dout[8] <= initial_value[7];
            dout[9] <= initial_value[8];
            dout[10] <= initial_value[9];
            dout[11] <= initial_value[10];
            dout[12] <= initial_value[11];
            dout[13] <= initial_value[12];
            dout[14] <= initial_value[13];
        end
    end
endmodule

