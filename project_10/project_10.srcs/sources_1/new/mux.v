

module mux41(
input a,b,c,d,
input [1:0] sel,
output o,o_com,p,p_com,q,q_com
);
mux21 obj1(a,b,sel[0],o,o_com);
mux21 obj2(c,d,sel[0],p,p_com);
mux21 obj3(o,p,sel[1],q,q_com);
endmodule


module mux21 (
input a,b,
input sel,
output y,y_com
);
reg temp1,temp2;
always@(*)
begin
if(sel== 1'b0)begin
temp1=a;
temp2=~a;
end
else
begin 
temp1=b;
temp2=~b;end
end 
assign y=temp1;
assign y_com=temp2;
endmodule