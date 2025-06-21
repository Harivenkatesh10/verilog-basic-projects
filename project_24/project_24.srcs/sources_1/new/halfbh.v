`timescale 1ns / 1ps


module halfbh(
    input a,b,
    output reg s,c
    );
    always@(*)
    begin
    s=a^b;
    c=a&b;
   
    end
endmodule
