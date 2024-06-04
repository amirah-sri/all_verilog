`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2024 15:55:34
// Design Name: 
// Module Name: tb_scramble_1
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


module tb_scrambler_1;

  reg clk;
  reg [7:0] data_in;
  wire [7:0] data_out;

  scrambler_1 dut (clk, data_in, data_out);

  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

  initial begin
  for (integer i=0;i<256;i=i+1) begin 
    data_in = i;
    #50; end
    $stop;
  end

  always @(posedge clk) begin
    $display("data_in: %b, data_out: %b", data_in, data_out);
  end
endmodule

