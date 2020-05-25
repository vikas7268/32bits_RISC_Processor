`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2020 10:30:16
// Design Name: 
// Module Name: eqz
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


module eqz(eq,bout );
input [31:0] bout;
output reg eq;
always @(*)
begin
if(bout ==32'd0)
   eq=1'b1;
else 
   eq=1'b0;
end
endmodule
