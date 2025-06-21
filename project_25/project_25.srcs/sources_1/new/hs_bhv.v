`timescale 1ns / 1ps


module hs_bhv(
    input a,b,
    output reg diff,bow
    );
    always@(*)
    begin
    diff= a^b;
    bow=~a&b;
    
   end
endmodule
