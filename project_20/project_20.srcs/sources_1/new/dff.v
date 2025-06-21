`timescale 1ns / 1ps



module df(
input clk,clr,din,
output reg dout
    );
    always@(posedge clk)
    begin
    if(clr==1'b1)
    dout<=1'b0;
    else
    dout<=din;
    end
    endmodule
    

