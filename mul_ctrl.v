`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2020 12:32:19
// Design Name: 
// Module Name: mul_ctrl
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


module mul_ctrl( eq,lda,ldb,ldp,clra,clrp,decb,datain,clk,start,done );
input clk,start,eq;
output reg lda,ldb,ldp,clra,clrp,decb,done;
input [31:0] datain;

reg[2:0] state;
parameter
s0=3'b000, s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
always @(posedge clk)
begin 
case (state)
s0: begin 
     if(start)
    //lda=0;ldb=0;ldp=0;clra=0;clrp=0;decb=0;
    state <=s1; 
    end
s1: begin 
    //lda=1;ldb=0; 
    state <=s2;
    end
s2: begin 
    //lda=0; ldb=1; clrp=1; 
    state <=s3; 
    end
s3: begin
     //#1 clrp=0;
      //ldp=1;
      //decb =1;
      if(eq)
      begin state <=s4;
       done =1;end
       else
        state <=s3;
     end
s4: begin state <=s4;
   // lda=0; ldp=1;ldb=0;clrp=0 ;decb=0; 
    end
default : state <=s0;
endcase
end

always @( state)
begin
case (state)
s0: begin #1 lda=0;ldb=0;ldp=0;clra=0;clrp=0;decb=0;end
s1: begin #1 lda=1;ldb=0;
    end
s2: begin #1 lda=0;ldb=1;clrp=1; end
s3: begin #1 ldb=0;clrp=0;ldp=1;decb=1;end
s4: begin #1 lda=0; ldp=1;ldb=0;clrp=0 ;decb=0; end
default : begin #1 lda=0;ldb=0;ldp=0;clrp=0;decb=0;end
endcase
end
endmodule

