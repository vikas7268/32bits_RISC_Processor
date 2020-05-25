`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2020 11:53:59
// Design Name: 
// Module Name: risc_mips_processor
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


module risc_mips_processor( clock,rst,PCSrc,ao,of,zero,pc_output,imo,RegDST,mem_out,RegWr,rd1,rd2,ALUSrc,alu_out,alu_ctrl ,alu_opcode,mem_write,mem_read ,dmo,mem_to_reg);

output PCSrc,RegDST,RegWr,ALUSrc,of,zero,mem_write,mem_read,mem_to_reg;
input clock,rst;
output [1:0] alu_opcode;
wire [31:0] Increment_out,mux_out1,mux_out3,sign_o,lso,mxo;
output [31:0] ao, dmo,pc_output,imo,mem_out,rd1,rd2,alu_out;
output [2:0] alu_ctrl;

mux mux1
    (
      .sel(PCSrc), 
      .a0(Increment_out), 
      .a1(ao), 
      .out(mux_out1)
     );
        
pc program_counter 
        (
            .pc_in(mux_out1),
            .pc_out(pc_output),
            .clk(clock)
        );   
        
  pc_adder pc_incremental
         (
            .in(pc_output),
            .out(Increment_out) 
          );
          
  instruction_mem instruction_memory
          (
           .addr(pc_output),
           .data(imo)
           );
           
  muxin mux5
          (
            .sel(RegDST), 
            .a0(imo[20:16]), 
            .a1(imo[15:11]), 
            .out(mux_out3)
           );
           
 register_file Reg_file
          (
            .ReadReg1(imo[25:21]), 
            .ReadReg2(imo[20:16]), 
            .WriteReg(mux_out3), 
            .WriteData(mem_out), 
            .RegWrite(RegWr), 
            .Clk(clock), 
            .ReadData1(rd1), 
            .ReadData2(rd2), 
            .reset(rst)
            );
 
 sign_ext sign_exten
            ( 
              .in(imo[15:0]),
              .out(sign_o)
             );
            
 leftshift_2 left_shift
            (
             .out(lso), 
             .in(sign_o)
             );
             
   adder adder_ex
             (
              .in1(lso),
              .in2( Increment_out),
              .sum(ao) 
              );
              
    mux   mux2
            (
             .sel(ALUSrc), 
             .a0(rd2), 
             .a1(sign_o), 
             .out(mxo)
             );


 alu   ALU_32
           (
                .data1(rd1), 
                .data2(mxo), 
                .ALUControl(alu_ctrl), 
                .flag(of), 
                .zero(zero), 
                .ALUResult(alu_out), 
                .reset(rst)
                );
   
ALUControl Alu_control
                  (
                    .clk(clock), 
                    .ALUControl(alu_ctrl), 
                    .ALUOp(alu_opcode), 
                    .funct(imo[5:0])
                    );   
  
 datamem  Data_memory
                   (
                   .MemWrite(mem_write),
                   .Memread (mem_read),
                   .address(alu_out),
                   .writeData(rd2),
                   .clk(clock),
                   .readData(dmo)
                   );
  
mux   mux3( 
                 .sel(mem_to_reg), 
                 .a0(alu_out), 
                 .a1(dmo), 
                 .out(mem_out)
                 );
                 
                 
cpu_control_unit  cu
                    (.reset(rst),
                     .opcode(imo[31:26]),
                     .Reg_Dst(RegDST),
                     .Branch(PCSrc),
                     .mem_rd(mem_read),
                     .mem_wr(mem_write),
                     .memtoreg(mem_to_reg),
                     .ALU_op(alu_opcode),
                     .AluSrc(ALUSrc),
                     .RegWrite(RegWr) 
                     );
        
endmodule
