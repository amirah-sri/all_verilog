module demux_1_to_12 (
    input wire [7:0] data_in,
    input wire [3:0] sel,
    output reg [7:0] data_out0,
    output reg [7:0] data_out1,
    output reg [7:0] data_out2,
    output reg [7:0] data_out3,
    output reg [7:0] data_out4,
    output reg [7:0] data_out5,
    output reg [7:0] data_out6,
    output reg [7:0] data_out7,
    output reg [7:0] data_out8,
    output reg [7:0] data_out9,
    output reg [7:0] data_out10,
    output reg [7:0] data_out11
);
    always @(*) begin
       
        data_out0 = 8'b0;
        data_out1 = 8'b0;
        data_out2 = 8'b0;
        data_out3 = 8'b0;
        data_out4 = 8'b0;
        data_out5 = 8'b0;
        data_out6 = 8'b0;
        data_out7 = 8'b0;
        data_out8 = 8'b0;
        data_out9 = 8'b0;
        data_out10 = 8'b0;
        data_out11 = 8'b0;
        
        
        case (sel)
            4'd0: data_out0 = data_in;
            4'd1: data_out1 = data_in;
            4'd2: data_out2 = data_in;
            4'd3: data_out3 = data_in;
            4'd4: data_out4 = data_in;
            4'd5: data_out5 = data_in;
            4'd6: data_out6 = data_in;
            4'd7: data_out7 = data_in;
            4'd8: data_out8 = data_in;
            4'd9: data_out9 = data_in;
            4'd10: data_out10 = data_in;
            4'd11: data_out11 = data_in;
            default: ;
        endcase
    end
endmodule

