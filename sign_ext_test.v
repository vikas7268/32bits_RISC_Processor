`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2020 00:43:17
// Design Name: 
// Module Name: sign_ext_test
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


module sign_ext_test(   );

reg [15:0] in;
wire [31:0] out;

//sign_ext t1( in,out);
SignExtend t2(out, in);
initial 
begin 
  #10 in= 16'hxxxx;
 
 #20 in =16'b1111000011110000;
 #20 in =16'h7900;
 
 $monitor ($time,"%h%h",in,out); 
end
endmodule
