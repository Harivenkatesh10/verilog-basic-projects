`timescale 1ns / 1ps


module mux21(
input a,b,sel,
output y

    );
    assign y=(sel)?b:a;
endmodule
