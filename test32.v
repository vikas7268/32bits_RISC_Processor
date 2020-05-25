`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2020 11:15:56
// Design Name: 
// Module Name: test32
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


module test32( );

wire PCSrc,RegDST,RegWr,ALUSrc,of,zero,mem_write,mem_read,mem_to_reg;
reg clock,rst;
wire [1:0] alu_opcode;
wire [31:0] Increment_out,mux_out1,mux_out3,sign_o,lso,mxo;
wire [31:0] ao, dmo,pc_output,imo,mem_out,rd1,rd2,alu_out;
wire [2:0] alu_ctrl;


risc_mips_processor v1( clock,rst,PCSrc,ao,of,zero,pc_output,imo,RegDST,mem_out,RegWr,rd1,rd2,ALUSrc,alu_out,alu_ctrl ,alu_opcode,mem_write,mem_read ,dmo,mem_to_reg);


always @(clock)
 #10 clock <= ~clock;
 
 initial 
 begin
 clock <=0;
 rst <=1;
 #5 rst <=0;
 
 end
 

endmodule
