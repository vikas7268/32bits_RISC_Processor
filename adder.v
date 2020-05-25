`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2020 02:03:36
// Design Name: 
// Module Name: adder
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


module adder(in1,in2,sum );
input [31:0] in1,in2;
output [31:0] sum;
reg [31:0] add;

always @(in1 or in2) begin
 add = in1 + in2;
end
assign sum = add;
endmodule
