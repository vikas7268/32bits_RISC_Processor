`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2020 21:42:56
// Design Name: 
// Module Name: cpu_control_unit
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


module cpu_control_unit(reset,opcode,Reg_Dst,Branch,mem_rd,mem_wr,memtoreg,ALU_op,AluSrc,RegWrite );
 input reset;
 input [5:0]opcode;
output reg Reg_Dst,Branch,mem_rd,mem_wr,memtoreg,AluSrc,RegWrite;
output reg [1:0]ALU_op;
parameter R_type =6'b0000;
parameter lw=6'b100011;
parameter sw=6'b101011;
parameter beq=6'b000100;

always @( posedge reset)
begin
Reg_Dst <= 1'b0;
Branch <= 1'b0;
mem_rd <= 1'b0;
memtoreg <= 1'b0;
ALU_op <= 4'b0000;
mem_wr <= 1'b0;
AluSrc <= 1'b0;
RegWrite <= 1'b0;
end

always@(opcode)
begin

case (opcode)
R_type:begin
Reg_Dst<=1 ;
Branch<=0 ;
mem_rd<=0 ;
memtoreg <=0 ;
mem_wr<=0 ;
AluSrc<=0 ;
RegWrite<=1 ;
ALU_op<=2'b10 ;
end
          
          
        
lw:begin
Reg_Dst<=0 ;
Branch<=0 ;
mem_rd<=1 ;
memtoreg<=1 ;
mem_wr<=0 ;
AluSrc <=1 ;
RegWrite<=1 ;
ALU_op<=4'b00 ;
end
         
        
sw: begin
Branch<=0 ;
mem_rd<=0 ;
mem_wr<=1 ;
AluSrc<=1 ;
RegWrite<=0 ;
ALU_op<=2'b00 ;
end
          
beq: begin
Branch<= 1;
mem_rd<=0 ;
mem_wr<=0 ;
AluSrc<=0 ;
RegWrite<=0 ;
ALU_op<=2'b01 ;
end



endcase
      
end

endmodule
