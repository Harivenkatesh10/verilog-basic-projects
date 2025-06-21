`timescale 1ns / 1ps

module hs_df(
    input a,b,
    output diff,bow
    );
    assign diff=a^b;
    assign bow=~a&b;
    
endmodule
