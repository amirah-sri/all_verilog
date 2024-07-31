module register_8bit (
    input clk,
    input  reset,
    input reg_en,
    input [7:0] data_in,
    output [7:0] data_out
);
    muxdff dff0 (.clk(clk), .reset(reset), .en(reg_en), .din(data_in[0]), .dout(data_out[0]));
    muxdff dff1 (.clk(clk), .reset(reset), .en(reg_en), .din(data_in[1]), .dout(data_out[1]));
    muxdff dff2 (.clk(clk), .reset(reset), .en(reg_en), .din(data_in[2]), .dout(data_out[2]));
    muxdff dff3 (.clk(clk), .reset(reset), .en(reg_en), .din(data_in[3]), .dout(data_out[3]));
    muxdff dff4 (.clk(clk), .reset(reset), .en(reg_en), .din(data_in[4]), .dout(data_out[4]));
    muxdff dff5 (.clk(clk), .reset(reset), .en(reg_en), .din(data_in[5]), .dout(data_out[5]));
    muxdff dff6 (.clk(clk), .reset(reset), .en(reg_en), .din(data_in[6]), .dout(data_out[6]));
    muxdff dff7 (.clk(clk), .reset(reset), .en(reg_en), .din(data_in[7]), .dout(data_out[7]));
endmodule
