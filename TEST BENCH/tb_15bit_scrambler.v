`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2024 11:29:21
// Design Name: 
// Module Name: tb_scrambler
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


module tb_scrambler;
reg clk,rst;
reg [14:0]din;
wire [14:0]dout;

scrambler i1(.clk(clk),.rst(rst),.initial_value(din),.dout(dout));
initial begin //t=0
clk=1;
rst=1;
din = 15'b000000010101001;
#50 rst=0;
#50 for (integer i=0;i<((2**15)-1);i=i+1) begin 
    din = dout;
    #10; end
     $stop;
  end

always #5 clk=~clk;
endmodule
