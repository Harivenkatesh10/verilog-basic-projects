`timescale 1ns / 1ps

module fullstructural(
input a,b,c,output s,cout

    );
    xor x1(s,a,b,c);
    and a1(w1,a,b);
    and a2(w2,b,c);
    and a3(w3,a,c);
    or r1(cout,w1,w2,w3);
endmodule
