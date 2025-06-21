`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2025 12:36:48
// Design Name: 
// Module Name: shift
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift(
input a,b,c,d, input[1:0]sel,
output reg y
    );
 always@(*)begin
 case (sel)
 2'b00:y=a;
 2'b01:y=b;
 2'b10:y=c;
 default :y=d;
 
 endcase
 end
endmodule
