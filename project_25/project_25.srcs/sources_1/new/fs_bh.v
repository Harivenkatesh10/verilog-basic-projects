`timescale 1ns / 1ps

module fs_bh(
    input a,b,c,
    output reg diff,bow
    );
 always@(a,b,c)
 begin
 diff=a^b^c;
 bow=(~a&b)|(~(a^b)&c);
 
 end
endmodule
