`timescale 1ns / 1ps
module fs_df(
    input a,b,c,
    output diff,bow
    );
    assign  diff=a^b^c;
    assign bow=(b&~a)|(~(a^b)&c);
endmodule
