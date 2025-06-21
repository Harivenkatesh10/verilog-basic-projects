`timescale 1ns / 1ps
module hs_st(
    input a,b,
    output diff,bow
    );
    xor x1(diff,a,b);
    not n1(w1,a);
    and a1(bow,w1,b);
endmodule
