`timescale 1ns / 1ps

module halfst(
    input a,b,
    output s,c
    );
   xor x1(s,a,b);
   and x2(c,a,b);
endmodule
