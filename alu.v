`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2020 01:47:47
// Design Name: 
// Module Name: alu
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


module alu(data1, data2, ALUControl, flag, zero, ALUResult, reset);

input wire reset;
input wire [31:0] data1,data2;
input wire [2:0] ALUControl;
output reg flag, zero;
output reg [31:0] ALUResult;

wire [31:0] neg_data2;
assign neg_data2 = -data2;

parameter ADD = 3'b010;
parameter SUB = 3'b110;
parameter AND = 3'b000;
parameter OR = 3'b001;
parameter LESS = 3'b111;
always @(posedge reset) zero <= 1'b0;
always @(ALUControl, data1, data2)
begin
if(data1 == data2)
zero <= 1'b1;
else
zero <= 1'b0;
case(ALUControl)

ADD: 
begin	
ALUResult <= data1 + data2;
if(data1[31] == data2[31] && ALUResult[31] == ~data1[31])
flag <= 1'b1;
else
flag <= 1'b0;
end

SUB:
begin
ALUResult <= data1 + neg_data2;
if(data1[31] == neg_data2[31] && ALUResult[31] == ~data1[31])
flag <= 1'b1;
else
flag <= 1'b0;
end
	
AND:
ALUResult <= data1 & data2;

OR:
	ALUResult <= data1 | data2;
	
LESS:
begin
if(data1 < data2)
ALUResult <= 1;
else
ALUResult <= 0;
end
endcase
end

endmodule

