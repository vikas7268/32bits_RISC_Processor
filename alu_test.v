`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2020 10:12:24
// Design Name: 
// Module Name: alu_test
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


module alu_test( );
reg [31:0] reg1,reg2;
wire [31:0] dreg;
reg [3:0] alu_ctrl;
wire zero;
integer i;

alu t1( reg1,reg2,dreg,alu_ctrl,zero);

initial 
begin
reg1 =32'hf0000000;
reg2 =32'h0000fedc;

alu_ctrl=0;
for(i=0 ;i<=15 ;i=i+1)
begin
 alu_ctrl = alu_ctrl +1'b1;
 #10;
end
$monitor ($time, " a= %h    b=%h   dreg=%h",reg1,reg2,dreg);
end
endmodule
