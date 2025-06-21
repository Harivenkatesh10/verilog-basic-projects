
module d_ff(
input clk,rst,d_in,
output reg q,q_com
    );
    //sychorous 
 always@(posedge clk)
 begin 
 if(rst==1'b1)
 begin 
 q<=1'b0;
 end
 else
 begin
 q<=d_in;
 q_com<=~d_in;
 end
 end
 ///asyn 
 /*
 always@(posedge clk,posedge rst)
 begin 
 if(rst==1'b1)
 begin 
 q<=1'b0;
 end
 else
 begin
 q<=d_in;
 q_com<=~d_in;
 end
 end*/
endmodule
