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

scrambler i1(.clk(clk),.rst(rst),.din(din),.dout(dout));
initial begin 
clk=1;
rst=1;
#50;
end

 initial begin
 rst=0;
  for (integer i=0;i<(2**15);i=i+1) begin 
    din = 8'b100101010000000+i;
    #10; end
    $stop;
  end

always #5 clk=~clk;
endmodule
