`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2020 01:44:03
// Design Name: 
// Module Name: leftshift_2
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


module leftshift_2(out, in);
	input [31:0] in;
	output [31:0] out;
	assign out[31:0] = in << 2;
endmodule