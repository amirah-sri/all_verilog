module muxdff(clk, reset, en, din, dout);
input clk,reset,en,din;
output dout;
wire m2dff;

dff dff0(.clk(clk), .reset(reset), .d(m2dff), .q(dout));
mux21 mux210(.i0(dout), .i1(din), .s(en), .mout(m2dff));
endmodule

module dff(
    input clk,
    input reset,
    input d,
    output reg  q
);
   always @(posedge clk or posedge reset)
   
     begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule

module mux21(i0,i1,s,mout);
input i0,i1,s;
output mout;

assign mout = s?i1:i0;
endmodule


