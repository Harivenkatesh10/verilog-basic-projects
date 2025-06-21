module ha
(
input a,b,
output s,c
);
 
assign s =  a ^ b;
assign c =  a & b;
 
endmodule
 
 
///////////////////////////////////////////////////
 
module fa 
(
input a,b,cin,
output s,cout
);
 
 
wire t1, t2,t3;
 
ha h1 (.a(a), .b(b), .s(t2), .c(t1));
ha h2 (.a(t2), .b(cin), .s(s), .c(t3));
 
 
assign cout = t1 | t3;
 
 
endmodule


module rca(input [3:0]a,
b,
input cin,output [3:0]s,output cout);
wire w1,w2,w3;

fa a1(a[0],b[0],cin,s[0],w1);
fa a2(a[1],b[1],w1,s[1],w2);
fa a3(a[2],b[2],w2,s[2],w3);
fa a4(a[3],b[3],w3,s[3],cout);
endmodule