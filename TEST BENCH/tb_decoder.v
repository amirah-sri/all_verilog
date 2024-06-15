`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 15:19:41
// Design Name: 
// Module Name: tb_decoder
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


module tb_decoder;

    reg [37:0] data_in;
    wire [31:0] org_data; 
    wire error; 

    decoder uut (
        .data_in(data_in),
        .org_data(org_data),
        .error(error)
    );

    initial begin
    
        data_in = 38'b000110110101111010111111101011011110; 
        #10;
      

       
        data_in = 38'b000110110101110010111111101011011110; 
        #10;
       

        
        data_in = 38'b100110110101111010111111101011011110; 
        #10;
        

        data_in = 38'b001101011001111010100111101011011101; 
        #10;
        
       
        data_in = 38'b001101011001111011100111101011011101; 
        #10;
        

      
        $stop;
    end
endmodule

