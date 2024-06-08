module tb_top_module;

    reg clk;
    reg reset;
    reg [7:0] data_in0;
    reg [7:0] data_in1;
    reg [7:0] data_in2;
    reg [7:0] data_in3;
    reg [7:0] data_in4;
    reg [7:0] data_in5;
    reg [7:0] data_in6;
    reg [7:0] data_in7;
    reg [7:0] data_in8;
    reg [7:0] data_in9;
    reg [7:0] data_in10;
    reg [7:0] data_in11;
    wire [7:0] final_output;

    
    top_module uut (
        .clk(clk),
        .reset(reset),
        .data_in0(data_in0),
        .data_in1(data_in1),
        .data_in2(data_in2),
        .data_in3(data_in3),
        .data_in4(data_in4),
        .data_in5(data_in5),
        .data_in6(data_in6),
        .data_in7(data_in7),
        .data_in8(data_in8),
        .data_in9(data_in9),
        .data_in10(data_in10),
        .data_in11(data_in11),
        .final_output(final_output)
    );

    
    always begin
        #5 clk = ~clk;
    end

    initial begin
        
        clk = 0;
        reset = 1;
        data_in0 = 8'h00;
        data_in1 = 8'h00;
        data_in2 = 8'h00;
        data_in3 = 8'h00;
        data_in4 = 8'h00;
        data_in5 = 8'h00;
        data_in6 = 8'h00;
        data_in7 = 8'h00;
        data_in8 = 8'h00;
        data_in9 = 8'h00;
        data_in10 = 8'h00;
        data_in11 = 8'h00;

        
        #10 reset = 0;

        
        #10 data_in0 = 8'h01;
        #10 data_in1 = 8'h12;
        #10 data_in2 = 8'h23;
        #10 data_in3 = 8'h34;
        #10 data_in4 = 8'h45;
        #10 data_in5 = 8'h78;
        #10 data_in6 = 8'h67;
        #10 data_in7 = 8'h78;
        #10 data_in8 = 8'h89;
        #10 data_in9 = 8'h9A;
        #10 data_in10 = 8'hAB;
        #10 data_in11 = 8'hBC;
        #10 data_in0 = 8'h15;
        #10 data_in1 = 8'h27;
        #10 data_in2 = 8'h30;
        #10 data_in3 = 8'h46;
        #10 data_in4 = 8'h54;
        #10 data_in5 = 8'h50;
        #10 data_in6 = 8'h77;
        #10 data_in7 = 8'h87;
        #10 data_in8 = 8'h98;
        #10 data_in9 = 8'h60;
        #10 data_in10 = 8'h88;
        #10 data_in11 = 8'h90;
         #10 data_in0 = 8'h32;
        #10 data_in1 = 8'h96;
        #10 data_in2 = 8'h39;
        #10 data_in3 = 8'h40;
        #10 data_in4 = 8'h53;
        #10 data_in5 = 8'h60;
        #10 data_in6 = 8'h73;
        #10 data_in7 = 8'h82;
        #10 data_in8 = 8'h97;
        #10 data_in9 = 8'h35;
        #10 data_in10 = 8'h90;
        #10 data_in11 = 8'h20;
         #10 data_in0 = 8'hB1;
        #10 data_in1 = 8'h30;
        #10 data_in2 = 8'h20;
        #10 data_in3 = 8'h45;
        #10 data_in4 = 8'h78;
        #10 data_in5 = 8'h69;
        #10 data_in6 = 8'h30;
        #10 data_in7 = 8'h76;
        #10 data_in8 = 8'h60;
        #10 data_in9 = 8'h40;
        #10 data_in10 = 8'h20;
        #10 data_in11 = 8'h91;
        #10 data_in0 = 8'h11;
       #10 data_in1 = 8'h59;
        #10 data_in2 = 8'h78;
        #10 data_in3 = 8'h65;
        #10 data_in4 = 8'h93;
        #10 data_in5 = 8'h45;
        #10 data_in6 = 8'h92;
        #10 data_in7 = 8'h30;
        #10 data_in8 = 8'h37;
        #10 data_in9 = 8'h40;
        #10 data_in10 = 8'h95;
        #10 data_in11 = 8'h86;
        #10 data_in0 = 8'hc1;
        #10 data_in1 = 8'h97;
        #10 data_in2 = 8'h40;
        #10 data_in3 = 8'h42;
        #10 data_in4 = 8'h73;
        #10 data_in5 = 8'h65;
        #10 data_in6 = 8'h39;
        #10 data_in7 = 8'h97;
        #10 data_in8 = 8'h68;
        #10 data_in9 = 8'h99;
        #10 data_in10 = 8'h99;
        #10 data_in11 = 8'h98;
        #10 data_in0 = 8'h9;
        #10 data_in1 = 8'h90;
        #10 data_in2 = 8'hA1;
        #10 data_in3 = 8'h17;
        #10 data_in4 = 8'h18;
        #10 data_in5 = 8'h10;
        #10 data_in6 = 8'h29;
        #10 data_in7 = 8'h20;
        #10 data_in8 = 8'h25;
        #10 data_in9 = 8'h24;
        #10 data_in10 = 8'h30;
        #10 data_in11 = 8'h86;
        #10 data_in0 = 8'h11;
        #10 data_in1 = 8'h19;
        #10 data_in2 = 8'h29;
        #10 data_in3 = 8'h90;
        #10 data_in4 = 8'h18;
        #10 data_in5 = 8'h78;
        #10 data_in6 = 8'h89;
        #10 data_in7 = 8'h90;
        #10 data_in8 = 8'hA9;
        #10 data_in9 = 8'h78;
        #10 data_in10 = 8'hAB;
        #10 data_in11 = 8'hBC;
        #10 data_in0 = 8'h01;
        #10 data_in1 = 8'h78;
        #10 data_in2 = 8'h90;
        #10 data_in3 = 8'h90;
        #10 data_in4 = 8'h30;
        #10 data_in5 = 8'h20;
        #10 data_in6 = 8'h10;
        #10 data_in7 = 8'h90;
        #10 data_in8 = 8'h50;
        #10 data_in9 = 8'h9A;
        #10 data_in10 = 8'hAB;
        #10 data_in11 = 8'hBC;
        #10 data_in0 = 8'h01;
        #10 data_in1 = 8'h12;
        #10 data_in2 = 8'h23;
        #10 data_in3 = 8'h34;
        #10 data_in4 = 8'h45;
        #10 data_in5 = 8'h78;
        #10 data_in6 = 8'h67;
        #10 data_in7 = 8'h78;
        #10 data_in8 = 8'h89;
        #10 data_in9 = 8'h9A;
        #10 data_in10 = 8'hAB;
        #10 data_in11 = 8'hBC;
        #10 data_in0 = 8'h31;
        #10 data_in1 = 8'h12;
        #10 data_in2 = 8'h53;
        #10 data_in3 = 8'h34;
        #10 data_in4 = 8'h45;
        #10 data_in5 = 8'h87;
        #10 data_in6 = 8'h26;
        #10 data_in7 = 8'h78;
        #10 data_in8 = 8'h45;
        #10 data_in9 = 8'h23;
        #10 data_in10 = 8'hAB;
        #10 data_in11 = 8'hBC;

        
        #5000;


        $finish;
    end

   
    initial begin
        $monitor("Time: %0t | clk: %b | reset: %b | sel: %d | final_output: %h", $time, clk, reset, uut.sel, final_output);
    end

endmodule


