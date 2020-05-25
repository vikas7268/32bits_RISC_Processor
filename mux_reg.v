`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2020 00:06:44
// Design Name: 
// Module Name: mux_reg
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


module mux_reg(sel,in0,in1,outreg);
input [4:0] in0,in1;
input sel;
output reg [4:0] outreg;

always @(*)
begin
case(sel)
0:outreg = in0;
1:outreg = in1;
endcase
end
endmodule
