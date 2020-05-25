`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2020 00:33:56
// Design Name: 
// Module Name: sign_ext
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


module sign_ext ( in,out);

input [15:0] in;
output reg [31:0] out;

always @(in)
begin 
  if(in[15]==0)
       out= { 16'h0000,in};
  else if(in[15]==1)
       begin
            out ={16'hffff,in};
          end
  end

endmodule
