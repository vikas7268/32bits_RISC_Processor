`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2020 18:22:56
// Design Name: 
// Module Name: mux1
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


module mux1(sel, a0, a1, out1);
input sel;
input [31:0] a0, a1;
output reg [31:0] out1;

always @ (sel or a0 or a1)
begin
if(sel==1'b1) 
   out1 = a1;
else if(sel == 1'b0)
    out1 =a0;
end
endmodule
