/*module dff(input din,clk,rst,output q,qbar);
reg [1:0]temp;
always@(posedge clk, posedge rst)begin
if(rst==1'b1)
begin
temp[1]<=1'b0;
temp[0]<=1'b0; end
else begin
temp[1]<=din;
temp[0]<=~din;
end 
end 
assign q=temp[1];
assign qbar=temp[0];
endmodule*/
/*module dff(input din, clk, output reg q);
always @(posedge clk) begin
    q <= din;
end
endmodule

module johnson(input clk,output r1,r2,r3,r4);
wire t1,t2,t3,t4;
dff d1(t1,clk,r1);
dff d2(t2,clk,r2);
dff d3(t3,clk,r3);
dff d4(t4,clk,r4);
assign t1=~r4;
assign t2=r1;
assign t3=r2;
assign t4=r3;

endmodule*/

module dff (
    input clk,
    input reset,
    input d,
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule

module johnson (
    input clk,
    input reset,
    output [3:0] q
);

    wire [3:0] d;
    wire [3:0] q_internal;

    // Feedback logic: invert last output and send it to first DFF
    assign d[0] = ~q_internal[3];

    // Shift logic: each DFF gets previous Q
    assign d[1] = q_internal[0];
    assign d[2] = q_internal[1];
    assign d[3] = q_internal[2];

    // Instantiate 4 DFFs
    dff dff0 (clk, reset, d[0], q_internal[0]);
    dff dff1 (clk, reset, d[1], q_internal[1]);
    dff dff2 (clk, reset, d[2], q_internal[2]);
    dff dff3 (clk, reset, d[3], q_internal[3]);

    assign q = q_internal;

endmodule
