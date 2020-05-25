`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2020 05:45:08
// Design Name: 
// Module Name: instruction_mem
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


module instruction_mem(addr,data);
input [31:0] addr;
output  reg [31:0] data;
reg [31:0] memory[127:0];
initial 
begin 
memory[0] <= 32'h01094020;  
memory[1] <= 32'h01095020; 
memory[2] <= 32'h01092920;  
memory[3] <= 32'h05091920; 
memory[4] <= 32'h01093020; 
memory[5] <= 32'h01093920;
memory[6] <= 32'h01092020; 
memory[7] <= 32'h01091020; 
memory[8] <= 32'h01096022;  
memory[9] <= 32'h01097020;  
memory[10] <= 32'h084A820;  
memory[11] <= 32'h01098020;  
memory[12] <= 32'h01094924;  
memory[13] <= 32'h01099020;  
memory[14] <= 32'h01090020; 
memory[15] <= 32'h01085020; 
memory[16] <= 32'h0207592A; 
memory[17] <= 32'h01080020;  
memory[18] <= 32'h01081020; 
memory[19] <= 32'h01096920; 
memory[20] <= 32'h8C090001;  
memory[21] <= 32'h01098920;  
memory[22] <= 32'h01090920;  
memory[23] <= 32'h00001920;  
memory[24] <= 32'h10280000;  
memory[25] <= 32'h00000020;  
memory[26] <= 32'h01000020; 
memory[27] <= 32'h01091920;  
memory[28] <= 32'h01091925;  
memory[29] <= 32'h00000000;   
memory[30] <= 32'h00000000;  
memory[31] <= 32'h00000000; 
end


always @(addr)
begin 
 data <= memory[addr];
end

endmodule
