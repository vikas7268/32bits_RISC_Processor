`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2020 01:50:16
// Design Name: 
// Module Name: left_2
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


module left_2(  );
reg [31:0] in;
wire [31:0] out;

//leftshift_2 t1(out, in);
LeftShift t2( out,in );

initial 
begin
 #10 in=32'h3000;
 #30 in =32'h400f;
 end
 
endmodule
