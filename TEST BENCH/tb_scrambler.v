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
reg [7:0] serial_in;
reg [7:0] serial2_in;
wire [7:0] scrambled_out;
wire [7:0] descrambled_out;
wire [14:0]dout;

scrambler i1(.clk(clk),.rst(rst),.initial_value(din),.dout(dout),.scrambled_out(scrambled_out),.serial_in(serial_in),
.serial2_in(serial2_in),.descrambled_out(descrambled_out));
initial begin //t=0
clk=1;
rst=1;
din = 15'b000000010101001;
serial_in=8'b00111010;
serial2_in=8'b11000101;

#50 rst=0;
#50 for (integer i=0;i<((2**15)-1);i=i+1) begin 
    din = dout;
    #10; 
    end
     $stop;
  end

always #5 clk=~clk;
endmodule

