`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 13:48:15
// Design Name: 
// Module Name: new_descrambler
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


module new_descrambler(
    input clk,
    input rst,
    input scrambled_in,
    input enable,
    output  descrambled_out,
    output reg [14:0] ddout
    
);
 wire AND_OUT;
    

    always@ (posedge clk or posedge rst) begin
        if (rst) begin
          ddout<=15'b1010_1111_1100_101;
          
            
         end  
        else 
        begin
            ddout[0] <= ddout[14] ^ ddout[13]; 
            ddout[1] <= ddout[0];
            ddout[2] <= ddout[1];
            ddout[3] <= ddout[2];
            ddout[4] <= ddout[3];
            ddout[5] <= ddout[4];
            ddout[6] <= ddout[5];
            ddout[7] <= ddout[6];
            ddout[8] <= ddout[7];
            ddout[9] <= ddout[8];
            ddout[10] <= ddout[9];
            ddout[11] <= ddout[10];
            ddout[12] <= ddout[11];
            ddout[13] <= ddout[12];
            ddout[14] <= ddout[13];
        
        end
        
       
        end
        assign AND_OUT = ddout[0] & enable;
        assign descrambled_out = AND_OUT ^ scrambled_in;
endmodule
