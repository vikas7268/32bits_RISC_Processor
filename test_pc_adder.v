`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2020 08:07:13
// Design Name: 
// Module Name: test_pc_adder
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


module test_pc_adder(  );

 
reg [31:0]in   ;
wire [31:0] out;
pc_adder t2(in   ,out );
initial 
begin
#10 in =32'h00000001;    
end
endmodule
