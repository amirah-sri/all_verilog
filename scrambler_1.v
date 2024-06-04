`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2024 15:41:35
// Design Name: 
// Module Name: scrambler_1
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


module scrambler_1 (
  input clk,
  input [7:0] data_in,
  output reg [7:0] data_out
);

  always @(posedge clk) begin
    data_out[7:1] <= data_in[6:0];
    data_out[0] <= data_in[6] ^ data_in[7];
  end
endmodule

