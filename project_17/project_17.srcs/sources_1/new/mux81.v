module mux81(input {7:0]a,input [2:0]sel, output x);
wire [5:0]w;
mux21 m1(a[0],a[1],sel[0],w[0]);
mux21 m2(a[2],a[3],sel[0],w[1]);
mux21 m3(a[4],a[5],sel[0],w[2]);
mux21 m4(a[6],a[7],sel[0],w[3]);
mux21 m5(w[0],w[1],sel[1],w[4]);
mux21 m1(w[2],w[3],sel[1],w[5]);
mux21 m1(w[4],w[5],sel[2],x);
endmodule
module mux21(input a,b,sel,output y);
assign y=sel?b:a;
endmodule