module top_module (
    input wire clk,
    input wire reset,
    input wire [7:0] data_in0,
    input wire [7:0] data_in1,
    input wire [7:0] data_in2,
    input wire [7:0] data_in3,
    input wire [7:0] data_in4,
    input wire [7:0] data_in5,
    input wire [7:0] data_in6,
    input wire [7:0] data_in7,
    input wire [7:0] data_in8,
    input wire [7:0] data_in9,
    input wire [7:0] data_in10,
    input wire [7:0] data_in11,
    output wire [7:0] final_output
);

    reg [7:0] current_data;
    wire [3:0] sel;
    wire [7:0] demux_out [0:11];
    wire [7:0] fifo_out [0:11];

    
    mod12_counter u_counter (
        .clk(clk),
        .reset(reset),
        .count(sel)
    );

    
    always @(*) begin
        case (sel)
            4'd0: current_data = data_in0;
            4'd1: current_data = data_in1;
            4'd2: current_data = data_in2;
            4'd3: current_data = data_in3;
            4'd4: current_data = data_in4;
            4'd5: current_data = data_in5;
            4'd6: current_data = data_in6;
            4'd7: current_data = data_in7;
            4'd8: current_data = data_in8;
            4'd9: current_data = data_in9;
            4'd10: current_data = data_in10;
            4'd11: current_data = data_in11;
            default: current_data = 8'b0;
        endcase
    end

    
    demux_1_to_12 u_demux (
        .data_in(current_data),
        .sel(sel),
        .data_out0(demux_out[0]),
        .data_out1(demux_out[1]),
        .data_out2(demux_out[2]),
        .data_out3(demux_out[3]),
        .data_out4(demux_out[4]),
        .data_out5(demux_out[5]),
        .data_out6(demux_out[6]),
        .data_out7(demux_out[7]),
        .data_out8(demux_out[8]),
        .data_out9(demux_out[9]),
        .data_out10(demux_out[10]),
        .data_out11(demux_out[11])
    );

    
    reg0 #(0) u_fifo0 (.clk(clk), .reset(reset), .data_in(demux_out[0]), .data_out(fifo_out[0]));
    reg17 #(17) u_fifo1 (.clk(clk), .reset(reset), .data_in(demux_out[1]), .data_out(fifo_out[1]));
    reg34 #(34) u_fifo2 (.clk(clk), .reset(reset), .data_in(demux_out[2]), .data_out(fifo_out[2]));
    reg51 #(51) u_fifo3 (.clk(clk), .reset(reset), .data_in(demux_out[3]), .data_out(fifo_out[3]));
    reg68 #(68) u_fifo4 (.clk(clk), .reset(reset), .data_in(demux_out[4]), .data_out(fifo_out[4]));
    reg85 #(85) u_fifo5 (.clk(clk), .reset(reset), .data_in(demux_out[5]), .data_out(fifo_out[5]));
    reg102 #(102) u_fifo6 (.clk(clk), .reset(reset), .data_in(demux_out[6]), .data_out(fifo_out[6]));
    reg119 #(119) u_fifo7 (.clk(clk), .reset(reset), .data_in(demux_out[7]), .data_out(fifo_out[7]));
    reg136 #(136) u_fifo8 (.clk(clk), .reset(reset), .data_in(demux_out[8]), .data_out(fifo_out[8]));
    reg153 #(153) u_fifo9 (.clk(clk), .reset(reset), .data_in(demux_out[9]), .data_out(fifo_out[9]));
    reg170 #(170) u_fifo10 (.clk(clk), .reset(reset), .data_in(demux_out[10]), .data_out(fifo_out[10]));
    reg187 #(187) u_fifo11 (.clk(clk), .reset(reset), .data_in(demux_out[11]), .data_out(fifo_out[11]));

   
    mux_12_to_1 u_mux (
        .data_in0(fifo_out[0]),
        .data_in1(fifo_out[1]),
        .data_in2(fifo_out[2]),
        .data_in3(fifo_out[3]),
        .data_in4(fifo_out[4]),
        .data_in5(fifo_out[5]),
        .data_in6(fifo_out[6]),
        .data_in7(fifo_out[7]),
        .data_in8(fifo_out[8]),
        .data_in9(fifo_out[9]),
        .data_in10(fifo_out[10]),
        .data_in11(fifo_out[11]),
        .sel(sel),
        .data_out(final_output)
    );
endmodule

