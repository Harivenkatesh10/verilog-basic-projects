`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////

module gates(
input a,b, 
output [6:0]out
    );
    assign out[0]= a|b;
    assign out[1]=a&b;
    assign out[2]= ~a;
    assign out[3] = a^b;
    assign out[4]= ~(a^b);
    assign out[5]= ~(a&b);
    assign out[6]=~(a|b);
   
endmodule
