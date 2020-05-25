`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2020 02:06:33
// Design Name: 
// Module Name: adder_test
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


module adder_test( );
reg [31:0] d1,d2;
wire [31:0] d3;

pc_adder k1(d1,d2,d3 );
initial begin
 #10 d1=32'd1234 ; d2=32'd3124;
 #50 d1=32'd9000; d2 =32'd1000;
 
 end
endmodule
