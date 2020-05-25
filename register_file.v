`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2020 10:24:26
// Design Name: 
// Module Name: register_file
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


module register_file(ReadReg1, ReadReg2, WriteReg, WriteData, RegWrite, Clk, ReadData1, ReadData2, reset);
input [4:0] ReadReg1 ,ReadReg2 ,WriteReg;
input [31:0] WriteData;
input RegWrite ,Clk, reset;
output reg [31:0] ReadData1 ,ReadData2;

reg [31:0] memory[0:31];

always @(posedge reset) 
begin
memory[0] <= 32'h00000011;
memory[1] <= 32'h0000000A;
memory[2] <= 32'h00000003;
memory[3] <= 32'h00000004;
memory[4] <= 32'h00000005;
memory[5] <= 32'h00000006;
memory[6] <= 32'h00000007;
memory[7] <= 32'h00000008;
memory[8] <= 32'h0000000A;
memory[9] <= 32'h00000009;
memory[10] <= 32'h0000000B;
memory[11] <= 32'h0000000C;
memory[12] <= 32'h0000000D;
memory[13] <= 32'h0000000E;
memory[14] <= 32'h0000000F;
memory[15] <= 32'h00000010;
memory[16] <= 32'h00000003;
memory[17] <= 32'h00000012;
memory[18] <= 32'h00000013;
memory[19] <= 32'h00000014;
memory[20] <= 32'h00000015;
memory[21] <= 32'h00000016;
memory[22] <= 32'h00000017;
memory[23] <= 32'h00000018;
memory[24] <= 32'h00000019;
memory[25] <= 32'h0000001A;
memory[26] <= 32'h0000001B;
memory[27] <= 32'h0000001C;
memory[28] <= 32'h0000001D;
memory[29] <= 32'h0000001E;
memory[30] <= 32'h0000001F;
memory[31] <= 32'h00000000;
end
always @(ReadReg1, ReadReg2)
begin
ReadData1 <= memory[ReadReg1];
ReadData2 <= memory[ReadReg2];
  		

end

always @(negedge Clk)
begin
if (RegWrite == 1)
begin
memory[WriteReg] <= WriteData;
end
end
endmodule
