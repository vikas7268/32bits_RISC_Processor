`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2020 10:19:46
// Design Name: 
// Module Name: count
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


module count(bout,bus,ldb,clk,decb);
input [31:0]bus;
input ldb,clk,decb;
output reg[31:0] bout;
always @(posedge clk)
begin
if(ldb)
 bout <=bus;
else if(decb)
 bout <= bout - 1'd1;;
end
endmodule
