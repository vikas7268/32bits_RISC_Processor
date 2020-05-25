`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2020 10:08:49
// Design Name: 
// Module Name: muldata_path
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


module muldata_path(eq,lda,ldb,ldp,clra,clrp,decb,datain,clk,out  );

input lda,ldb,ldp,clrp,clra,decb,clk;
output eq;
input [31:0] datain;
output [31:0] out;
wire [31:0] x,z,bout,bus;

pipo a(x,datain,lda,clra,clk);
pipo d(out,z,ldp,clrp,clk);
add ad(z,x,out);
count b(bout,datain,ldb,clk,decb);
eqz comp(eq,bout);

endmodule
