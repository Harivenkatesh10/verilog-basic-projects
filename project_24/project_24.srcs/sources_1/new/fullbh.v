`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////


module fullbh(
    input a,b,cin,
    output reg s,cout
    );
    always@(*)
    begin
    s=a^b^cin;
    cout=(a&b)|(a&cin)|(b&cin);
        end
endmodule
