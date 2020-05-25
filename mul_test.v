`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2020 13:10:34
// Design Name: 
// Module Name: mul_test
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


module mul_test( );
reg [31:0]datain;
reg clk,start;
wire done;
//mul_add t1(datain,clk,done,start);
muldata_path v1(eq,lda,ldb,ldp,clra,clrp,decb,datain,clk,out );
  mul_ctrl v2( eq,lda,ldb,ldp,clra,clrp,decb,datain,clk,start,done );
initial 
begin
 clk =1'b0;
 #5 start =1'b1;
 #500 $finish;
 end
 
 always  #5 clk =~clk;
 initial 
 begin
 #10 datain =16;
 #15 datain =5;
 end
 
 initial begin
 $monitor ($time ,"%d %b",out,done);
 end
endmodule
