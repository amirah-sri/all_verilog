module top_module_for_deinterleaver(
input clk,
input reset,
input [7:0] deinterleaver_input,
output [7:0] deinterleaver_output,
output [3:0] select
); 

wire [3:0] sel;
assign select = sel;


wire [7:0] dmux1_2_buf187, buf187_2_mux1;
wire [7:0] dmux2_2_buf170, buf170_2_mux2;
wire [7:0] dmux3_2_buf153, buf153_2_mux3;
wire [7:0] dmux4_2_buf136, buf136_2_mux4;
wire [7:0] dmux5_2_buf119, buf119_2_mux5;
wire [7:0] dmux6_2_buf102, buf102_2_mux6;
wire [7:0] dmux7_2_buf85, buf85_2_mux7;
wire [7:0] dmux8_2_buf68, buf68_2_mux8;
wire [7:0] dmux9_2_buf51, buf51_2_mux9;
wire [7:0] dmux10_2_buf34, buf34_2_mux10;
wire [7:0] dmux11_2_buf17, buf17_2_mux11;
wire [7:0] dmux12_2_mux12;

wire en1, en2, en3, en4, en5, en6, en7, en8, en9, en10, en11;

mod12_counter counter(
    .clk(clk),
    .reset(reset),
    .count(sel)
);

demux_1_to_12 demux(
    .data_in(deinterleaver_input),
    .sel(sel),
    
    .dm_out1(dmux1_2_buf187),
    .dm_out2(dmux2_2_buf170),
    .dm_out3(dmux3_2_buf153),
    .dm_out4(dmux4_2_buf136),
    .dm_out5(dmux5_2_buf119),
    .dm_out6(dmux6_2_buf102),
    .dm_out7(dmux7_2_buf85),
    .dm_out8(dmux8_2_buf68),
    .dm_out9(dmux9_2_buf51),
    .dm_out10(dmux10_2_buf34),
    .dm_out11(dmux11_2_buf17),
    .dm_out12(dmux12_2_mux12)
);


 decoder_4_to_16_deinterleaver dec_4_to_16(.din(sel), .dout1(en1), .dout2(en2), .dout3(en3), .dout4(en4), .dout5(en5), .dout6(en6), .dout7(en7), .dout8(en8), .dout9(en9), .dout10(en10), .dout11(en11), .dout12());
 
 reg_buffer_187 reg_buf_1(.clk(clk),.reset(reset), .buf_en(en1), .data_in(dmux1_2_buf187),.data_out(buf187_2_mux1));
 reg_buffer_170 reg_buf_2(.clk(clk),.reset(reset), .buf_en(en2), .data_in(dmux2_2_buf170),.data_out(buf170_2_mux2));
 reg_buffer_153 reg_buf_3(.clk(clk),.reset(reset), .buf_en(en3), .data_in(dmux3_2_buf153),.data_out(buf153_2_mux3));
 reg_buffer_136 reg_buf_4(.clk(clk),.reset(reset), .buf_en(en4), .data_in(dmux4_2_buf136),.data_out(buf136_2_mux4));
 reg_buffer_119 reg_buf_5(.clk(clk),.reset(reset), .buf_en(en5), .data_in(dmux5_2_buf119),.data_out(buf119_2_mux5));
 reg_buffer_102 reg_buf_6(.clk(clk),.reset(reset), .buf_en(en6), .data_in(dmux6_2_buf102),.data_out(buf102_2_mux6));
 reg_buffer_85 reg_buf_7(.clk(clk),.reset(reset), .buf_en(en7), .data_in(dmux7_2_buf85),.data_out(buf85_2_mux7));
 reg_buffer_68 reg_buf_8(.clk(clk),.reset(reset), .buf_en(en8), .data_in(dmux8_2_buf68),.data_out(buf68_2_mux8));
 reg_buffer_51 reg_buf_9(.clk(clk),.reset(reset), .buf_en(en9), .data_in(dmux9_2_buf51),.data_out(buf51_2_mux9));
 reg_buffer_34 reg_buf_10(.clk(clk),.reset(reset), .buf_en(en10), .data_in(dmux10_2_buf34),.data_out(buf34_2_mux10));
 reg_buffer_17 reg_buf_11(.clk(clk),.reset(reset), .buf_en(en11), .data_in(dmux11_2_buf17),.data_out(buf17_2_mux11));

mux_12_to_1 mux(
    
    .m_in1(buf187_2_mux1),
    .m_in2(buf170_2_mux2),
    .m_in3(buf153_2_mux3),
    .m_in4(buf136_2_mux4),
    .m_in5(buf119_2_mux5),
    .m_in6(buf102_2_mux6),
    .m_in7(buf85_2_mux7),
    .m_in8(buf68_2_mux8),
    .m_in9(buf51_2_mux9),
    .m_in10(buf34_2_mux10),
    .m_in11(buf17_2_mux11),
    .m_in12(dmux12_2_mux12),
    .sel(sel),
    .data_out(deinterleaver_output)
);

endmodule
