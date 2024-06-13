`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2024 12:28:22
// Design Name: 
// Module Name: tb_encoder
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


module tb_encoder;
    reg [31:0] data_in;
    wire [37:0] data_out;

 
    encoder i1 (
        .data_in(data_in),
        .data_out(data_out)
    );

   
    initial begin
        
        data_in = 32'b11001010111111100011010001110101;
        
        
        #10;
        
     end

endmodule


