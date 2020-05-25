`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2020 10:21:23
// Design Name: 
// Module Name: pipo
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


module pipo (x1,d,ld,clear,clock);
input ld,clear,clock;
input [31:0] d;
output reg[31:0] x1;

always @(posedge clock)
begin
 if(clear)
   x1 <= 32'd0;
 else if(ld)
   x1 <= d;
 end
 
endmodule
