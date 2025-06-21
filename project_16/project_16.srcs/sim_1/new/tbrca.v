`timescale 1ns / 1ps

module tbrca();
reg [3:0]a,b;
reg cin;
wire [3:0]s;wire cout;
rca r1(a,b,cin,s,cout);
initial begin  
cin=0;
a=4'b0110;
b=4'b1010;
#10
a=4'b1100;
b=4'b0011;
#10
a=4'b1000;
b=4'b0111;
#10
a=4'b1110;
b=4'b0001;
$finish;
end
initial begin
$monitor("value a:%b and b:%b at the %t",a,b,$time);
end 
endmodule
