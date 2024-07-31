module demux_1_to_12 (
    input  [7:0] data_in,
    input  [3:0] sel,
    
    output reg [7:0] dm_out1,
    output reg [7:0] dm_out2,
    output reg [7:0] dm_out3,
    output reg [7:0] dm_out4,
    output reg [7:0] dm_out5,
    output reg [7:0] dm_out6,
    output reg [7:0] dm_out7,
    output reg [7:0] dm_out8,
    output reg [7:0] dm_out9,
    output reg [7:0] dm_out10,
    output reg [7:0] dm_out11,
    output reg [7:0] dm_out12
    
);
    always @(*) 
    begin
       
        case (sel)
            
            4'd1: dm_out1 = data_in;
            4'd2: dm_out2 = data_in;
            4'd3: dm_out3 = data_in;
            4'd4: dm_out4 = data_in;
            4'd5: dm_out5 = data_in;
            4'd6: dm_out6 = data_in;
            4'd7: dm_out7 = data_in;
            4'd8: dm_out8 = data_in;
            4'd9: dm_out9 = data_in;
            4'd10: dm_out10 = data_in;
            4'd11: dm_out11 = data_in;
            4'd12: dm_out12 = data_in;
            
            
        endcase
    end
endmodule

