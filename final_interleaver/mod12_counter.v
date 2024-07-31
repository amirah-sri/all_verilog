module mod12_counter(
    input  clk,
    input reset,
    output reg [3:0] count
);
    always @(posedge clk or posedge reset) 
    begin
        if (reset)
         begin
            count <= 4'd0;
         end 
        else 
          begin
            if (count == 4'd12)
                count <= 4'd1;
            else
                count <= count +1 ;
          end
    end
endmodule
