`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 10:34:28
// Design Name: 
// Module Name: decoder_4_to_16_interleaver
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


module decoder_4_to_16_deinterleaver(din,dout1,dout2,dout3,dout4,dout5,dout6,dout7,dout8,dout9,dout10,dout11,dout12);
input [3:0] din;
output reg dout1,dout2,dout3,dout4,dout5,dout6,dout7,dout8,dout9,dout10,dout11,dout12;

always @(din)
begin 
   case (din)
   4'd1 : begin  dout1=1'b1; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
   4'd2 : begin  dout1=1'b0; dout2=1'b1; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
   4'd3 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b1; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
   4'd4 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b1; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
   4'd5 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b1; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
   4'd6 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b1; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
   4'd7 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b1; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
   4'd8 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b1; dout9=1'b0; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
   4'd9 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b1; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
   4'd10 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b1; dout11=1'b0;  dout12=1'b0; end
   4'd11 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b1;  dout12=1'b0; end
   4'd12 : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b0; dout12=1'b1; end
   
   default : begin  dout1=1'b0; dout2=1'b0; dout3=1'b0; dout4=1'b0; dout5=1'b0; dout6=1'b0; dout7=1'b0; dout8=1'b0; dout9=1'b0; dout10=1'b0; dout11=1'b0;  dout12=1'b0; end
 
   
   
   
   endcase
end

endmodule

