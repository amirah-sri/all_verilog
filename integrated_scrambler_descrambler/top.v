`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 17:54:56
// Design Name: 
// Module Name: top
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


module integrated_scrambler_descrambler (
    input  clk,
    input  rst,
    input  enable,
    input  serial_in,
    output  scrambled_out,
    output  descrambled_out,
    output  sdout,
    output  ddout
);
    
    wire internal;

    
    new_scrambler u1 (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .serial_in(serial_in),
        .scrambled_out(internal),
        .sdout(sdout)
    );

    
    new_descrambler u2 (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .scrambled_in(internal),
        .descrambled_out(descrambled_out),
        .ddout(ddout)
    );

    
    assign scrambled_out = internal;

endmodule