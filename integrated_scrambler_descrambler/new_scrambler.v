`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 13:26:51
// Design Name: 
// Module Name: new_scrambler
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


module new_scrambler(
    input clk,
    input rst,
    input enable,
    input serial_in,
    output scrambled_out,
    output reg [14:0] sdout
    
);
 wire AND_OUT;
    

    always@ (posedge clk ) 
        begin
        if (rst ) 
          begin
          sdout<=15'b1010_1111_1100_101;
          end  
        else 
        begin
            sdout[0] <= sdout[14] ^ sdout[13]; 
            sdout[1] <= sdout[0];
            sdout[2] <= sdout[1];
            sdout[3] <= sdout[2];
            sdout[4] <= sdout[3];
            sdout[5] <= sdout[4];
            sdout[6] <= sdout[5];
            sdout[7] <= sdout[6];
            sdout[8] <= sdout[7];
            sdout[9] <= sdout[8];
            sdout[10] <= sdout[9];
            sdout[11] <= sdout[10];
            sdout[12] <= sdout[11];
            sdout[13] <= sdout[12];
            sdout[14] <= sdout[13];
        
        end
             
        end
        assign AND_OUT = sdout[0] & enable;
        assign scrambled_out = AND_OUT ^ serial_in;
endmodule