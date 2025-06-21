module encoded( input [7:0]y, 
output reg [2:0]z ,a
);
always@(*)
begin
a=1'b1;
casex(y)
8'b10000000: z=3'b000;
8'bx1000000: z=3'b001;
8'bxx100000: z=3'b010;
8'bxxx10000: z=3'b011;
8'bxxxx1000: z=3'b100;
8'bxxxxx100: z=3'b101;
8'bxxxxxx10: z=3'b110;
8'bxxxxxxx1: z=3'b111;
default: begin
z=3'b000;
a=1'b0;
end
endcase
end
endmodule