module mux_12_to_1 (
    //input  [7:0] m_in0,
    input  [7:0] m_in1,
    input  [7:0] m_in2,
    input  [7:0] m_in3,
    input  [7:0] m_in4,
    input  [7:0] m_in5,
    input  [7:0] m_in6,
    input  [7:0] m_in7,
    input  [7:0] m_in8,
    input  [7:0] m_in9,
    input  [7:0] m_in10,
    input  [7:0] m_in11,
    input  [7:0] m_in12,
    input  [3:0] sel,
    output reg [7:0] data_out
);
    always @(*) begin
        case (sel)
           // 4'd0: data_out = m_in0;
            4'd1: data_out = m_in1;
            4'd2: data_out = m_in2;
            4'd3: data_out = m_in3;
            4'd4: data_out = m_in4;
            4'd5: data_out = m_in5;
            4'd6: data_out = m_in6;
            4'd7: data_out = m_in7;
            4'd8: data_out = m_in8;
            4'd9: data_out = m_in9;
            4'd10: data_out = m_in10;
            4'd11: data_out = m_in11;
            4'd12: data_out = m_in12;
            
        endcase
    end
endmodule

