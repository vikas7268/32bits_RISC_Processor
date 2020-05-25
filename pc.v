`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2020 17:40:30
// Design Name: 
// Module Name: pc
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


module pc (pc_in,pc_out,clk);
input [31:0] pc_in;
input clk;
output reg [31:0] pc_out;

initial 
begin
 pc_out=0;
end
always @(posedge clk)
 begin
   pc_out <=pc_in; 
 end
endmodule
