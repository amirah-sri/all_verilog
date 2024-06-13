`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 18:08:30
// Design Name: 
// Module Name: IHC
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


module IHC(
    input [31:0] data_in,
    output [38:0] data_out
);

    wire [31:0] D;
    wire P32, P33, P34, P35, P36, P37,P38;
    
    assign D = data_in;

   
    assign P32  = D[0] ^ D[1] ^ D[3] ^ D[4] ^ D[6] ^ D[8] ^ D[10] ^ D[11] ^ D[13] ^ D[15] ^ D[17] ^ D[19] ^ D[21] ^ D[23] ^ D[25] ^ D[26] ^ D[28] ^ D[30];
    assign P33  = D[2] ^ D[3] ^ D[5] ^ D[6] ^ D[9] ^ D[10] ^ D[12] ^ D[13] ^ D[16] ^ D[17] ^ D[20] ^ D[21] ^ D[24] ^ D[25] ^ D[27] ^ D[28] ^ D[31];
    assign P34  = D[1] ^ D[2] ^ D[3] ^ D[7] ^ D[8] ^ D[9] ^ D[10] ^ D[14] ^ D[15] ^ D[16] ^ D[17] ^ D[22] ^ D[23] ^ D[24] ^ D[25] ^ D[29] ^ D[30] ^ D[31];
    assign P35  = D[4] ^ D[5] ^ D[6] ^ D[7] ^ D[8] ^ D[9] ^ D[10] ^ D[18] ^ D[19] ^ D[20] ^ D[21] ^ D[22] ^ D[23] ^ D[24] ^ D[25];
    assign P36 = D[11] ^ D[12] ^ D[13] ^ D[14] ^ D[15] ^ D[16] ^ D[17] ^ D[18] ^ D[19] ^ D[20] ^ D[21] ^ D[22] ^ D[23] ^ D[24] ^ D[25];
    assign P37 = D[26] ^ D[27] ^ D[28] ^ D[29] ^ D[30] ^ D[31];
    assign P38= P32^P33^P34^P35^P36^P37;

  
    assign data_out = { P38,P37,P36,P35,P34,P33,P32,D[31:0] };

endmodule
