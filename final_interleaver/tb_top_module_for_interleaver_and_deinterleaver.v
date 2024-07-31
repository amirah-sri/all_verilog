module tb_top_module_for_interleaver_and_deinterleaver;
reg clk;
reg reset;
reg [7:0] interleaver_input;
wire [7:0] interleaver_output;
wire [7:0] deinterleaver_output;
wire [3:0] select;

    top_module_for_interleaver_and_deinterleaver top_module_for_interleaver_and_deinterleaver(
    .clk(clk),
    .reset(reset),
    .select(select),
    .interleaver_input(interleaver_input),
    .interleaver_output(interleaver_output),
    .deinterleaver_output(deinterleaver_output)
    );
    
    initial 
    begin
        clk = 1'b1;
       forever #5 clk = ~clk;
    end
    
    initial 
    begin
        reset = 1'b1 ;
        #10 reset = 1'b0;
        
    end 
    
    initial
    begin
    #10 interleaver_input = 8'd1;
    
    forever interleaver_input = #10 interleaver_input+1;
    end
    
    initial
    #5000    $finish;

    
    
endmodule



