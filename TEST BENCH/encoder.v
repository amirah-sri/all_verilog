`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 18:16:51
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [31:0] data_in,
    output [37:0] data_out
);

    wire [31:0] D;
    wire P1, P2, P4, P8, P16, P32;
    
    assign D = data_in;

   
    assign P1  = D[0] ^ D[1] ^ D[3] ^ D[4] ^ D[6] ^ D[8] ^ D[10] ^ D[11] ^ D[13] ^ D[15] ^ D[17] ^ D[19] ^ D[21] ^ D[23] ^ D[25] ^ D[26] ^ D[28] ^ D[30];
    assign P2  = D[2] ^ D[3] ^ D[5] ^ D[6] ^ D[9] ^ D[10] ^ D[12] ^ D[13] ^ D[16] ^ D[17] ^ D[20] ^ D[21] ^ D[24] ^ D[25] ^ D[27] ^ D[28] ^ D[31];
    assign P4  = D[1] ^ D[2] ^ D[3] ^ D[7] ^ D[8] ^ D[9] ^ D[10] ^ D[14] ^ D[15] ^ D[16] ^ D[17] ^ D[22] ^ D[23] ^ D[24] ^ D[25] ^ D[29] ^ D[30] ^ D[31];
    assign P8  = D[4] ^ D[5] ^ D[6] ^ D[7] ^ D[8] ^ D[9] ^ D[10] ^ D[18] ^ D[19] ^ D[20] ^ D[21] ^ D[22] ^ D[23] ^ D[24] ^ D[25];
    assign P16 = D[11] ^ D[12] ^ D[13] ^ D[14] ^ D[15] ^ D[16] ^ D[17] ^ D[18] ^ D[19] ^ D[20] ^ D[21] ^ D[22] ^ D[23] ^ D[24] ^ D[25];
    assign P32 = D[26] ^ D[27] ^ D[28] ^ D[29] ^ D[30] ^ D[31];

  
    assign data_out = { D[31:26],P32, D[25:11], P16, D[10:4], P8, D[3:1], P4, D[0], P2, P1 };

endmodule


