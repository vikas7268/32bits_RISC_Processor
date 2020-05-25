`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2020 22:35:44
// Design Name: 
// Module Name: mux
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



module mux(sel, a0, a1, out);
input sel;
input [31:0] a0, a1;
output reg [31:0] out;
always @ (sel or a0 or a1)
begin
case(sel)
0:out = a0;
1:out = a1;
endcase
end
endmodule
