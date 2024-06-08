module mod12_counter (
    input wire clk,
    input wire reset,
    output reg [3:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 4'd0;
        end else begin
            if (count == 4'd11)
                count <= 4'd0;
            else
                count <= count +1 ;
        end
    end
endmodule


