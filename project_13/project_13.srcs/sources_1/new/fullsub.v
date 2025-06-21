`timescale 1ns / 1ps


module fullsub( input a,b,b_in, output d,b_out 
    );
   wire [2:0]t;
assign t[0]=a^b;
//assign t[1]=~t[0];
//assign t[2]=~a;
assign  t[1]=b_in&~t[0];
assign t[2]=b&~a;
assign d = t[0]^b_in;
assign b_out=t[1]|t[2];

endmodule
