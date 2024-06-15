`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 15:16:37
// Design Name: 
// Module Name: decoder
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


module THC_decoder(
    input [37:0] data_in,
    output reg [31:0] org_data, 
     reg error 
);

    reg [5:0] P; 
    reg [37:0] corrected; 

    always @(*) begin
        
        P[0] = data_in[0] ^ data_in[2] ^ data_in[4] ^ data_in[6] ^
                      data_in[8] ^ data_in[10] ^ data_in[12] ^ data_in[14] ^
                      data_in[16] ^ data_in[18] ^ data_in[20] ^ data_in[22] ^
                      data_in[24] ^ data_in[26] ^ data_in[28] ^ data_in[30] ^
                      data_in[32] ^ data_in[34] ^ data_in[36];

        P[1] = data_in[1] ^ data_in[2] ^ data_in[5] ^ data_in[6] ^
                      data_in[9] ^ data_in[10] ^ data_in[13] ^ data_in[14] ^
                      data_in[17] ^ data_in[18] ^ data_in[21] ^ data_in[22] ^
                      data_in[25] ^ data_in[26] ^ data_in[29] ^ data_in[30] ^
                      data_in[33] ^ data_in[34] ^ data_in[37];

        P[2] = data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^
                      data_in[11] ^ data_in[12] ^ data_in[13] ^ data_in[14] ^
                      data_in[19] ^ data_in[20] ^ data_in[21] ^ data_in[22] ^
                      data_in[27] ^ data_in[28] ^ data_in[29] ^ data_in[30] ^
                      data_in[35] ^ data_in[36] ^ data_in[37];

        P[3] = data_in[7] ^ data_in[8] ^ data_in[9] ^ data_in[10] ^
                      data_in[11] ^ data_in[12] ^ data_in[13] ^ data_in[14] ^
                      data_in[23] ^ data_in[24] ^ data_in[25] ^ data_in[26] ^
                      data_in[27] ^ data_in[28] ^ data_in[29] ^ data_in[30];

        P[4] = data_in[15] ^ data_in[16] ^ data_in[17] ^ data_in[18] ^
                      data_in[19] ^ data_in[20] ^ data_in[21] ^ data_in[22] ^
                      data_in[23] ^ data_in[24] ^ data_in[25] ^ data_in[26] ^
                      data_in[27] ^ data_in[28] ^ data_in[29] ^ data_in[30];

        P[5] = data_in[31] ^ data_in[32] ^ data_in[33] ^ data_in[34] ^
                      data_in[35] ^ data_in[36] ^ data_in[37];
        if (P != 6'b000000) begin
            error = 1'b1;
            
            corrected = data_in;
            corrected[P-1] = ~corrected[P-1];
        end else begin
            error = 1'b0;
            corrected = data_in;
        end

        
        org_data = {corrected[37], corrected[36], corrected[35], corrected[34],
                     corrected[33], corrected[32], corrected[30], corrected[29],
                     corrected[28], corrected[27], corrected[26], corrected[25],
                     corrected[24], corrected[23], corrected[22], corrected[21],
                     corrected[20], corrected[19], corrected[18], corrected[17],
                     corrected[16], corrected[14], corrected[13], corrected[12],
                     corrected[11], corrected[10], corrected[9], corrected[8],
                     corrected[6], corrected[5], corrected[4], corrected[2]};
    end
endmodule

