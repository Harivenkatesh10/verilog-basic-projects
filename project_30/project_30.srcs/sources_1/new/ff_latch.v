`timescale 1ns / 1ps
module ff_latch(
input d,clk,
output reg q_ff,q_latch
    );
    reg q_bar;
    always@(posedge clk)
    begin
    q_ff <= d;
    end
    always@(*)
    begin
    if(clk)begin
    q_latch<=~(q_bar|(~d));
    q_bar<=~(q_latch|d);
    end
    end 
endmodule
