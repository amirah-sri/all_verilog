`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 18:11:14
// Design Name: 
// Module Name: tb_IHC
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


module tb_IHC;
reg [31:0] data_in;
    wire [38:0] data_out;

 
    IHC i2 (
        .data_in(data_in),
        .data_out(data_out)
    );

   
    initial begin
        
        data_in = 32'b11001010111111100011010001110101;
        
        
        #10;
        
     end
endmodule
