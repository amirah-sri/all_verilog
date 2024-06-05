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
    input clk,rst,
    input [14:0] din,
    output reg [14:0] dout
    );
    always @(posedge clk) begin
    if (rst==1)begin
    dout<= din ;
    end
    else begin
    dout[0]<=din[14]^din[13];
    dout[1]<=din[0];
    dout[2]<=din[1];
    dout[3]<=din[2];
    dout[4]<=din[3];
    dout[5]<=din[4];
    dout[6]<=din[5];
    dout[7]<=din[6];
    dout[8]<=din[7];
    dout[9]<=din[8];
    dout[10]<=din[9];
    dout[11]<=din[10];
    dout[12]<=din[11];
    dout[13]<=din[12];
    dout[14]<=din[13];
    end
    end
endmodule
