`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2020 02:38:11
// Design Name: 
// Module Name: controller_datapath
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


module controller_datapath (clock, reset);


//wire pcsrc,zero,branch, regDst, regwrite, alu_src, mem_rd, mem_wr, mem_to_reg;
////input [5:0]opcod;
//wire [5:0] alu_ct;
//input clock,reset;
////input [31:0]d0;
 
 
// wire [31:0]pcout, muxout, d0, d1, in_out, alum_out;
// wire [4:0] regm_out;
// wire [31:0] rd1, rd2;
// wire [31:0] wrd;
// wire [31:0] sign_ext, sft_out;
// wire [31:0] alu_out, read_data;

 
////assign pcsrc= ;
// control_unit p2( 
//             .regDst(regDst),
//             .alu_src(alu_src),
//             .mem_to_reg(mem_to_reg),
//             .regwrite(regwrite),
//             .mem_rd(mem_rd),
//             .mem_wr(mem_wr),
//             .Branch(branch),//pcsrc
//             .alu_ct(alu_ct),
//             .SignZero(zero),
//             //.Jump(jum),
//             .Opcode(in_out[31:26]) );           

 
// pc_adder p3( 
//             .in ( pcout ), 
//             .out ( d1 ) );
             
 
 
// mux1 p1 (
//            .sel(branch && zero), 
//            .a0(d1), 
//            .a1(d0), 
//            .out1(muxout) );
 
 
//// pc p4(
////            .pc_in(muxout) ,
////            .pc_out(pcout) ,
////            .rst(reset), 
////            .clk(clock) );
 
 
// instruction_mem p5(
//            .addr(pcout),
//            .data(in_out) );
 
 
// mux_reg p6(
//            .sel(regDst),
//            .in1(in_out[20:16]),
//            .in2(in_out[15:11]),
//            .outreg(regm_out) );
  
  
// reg_file32 p7(
//            .clk(clock), 
//            .rst(reset), 
//            .ReadReg1(in_out[25:21]), 
//            .ReadReg2(in_out[20:16]), 
//            .WriteData(wrd), 
//            .WriteReg(regm_out), 
//            .RegWr(regwrite), 
//            .ReadData1(rd1), 
//            .ReadData2(rd2) );
            

// sign_ext p8( 
//            .in(in_out[15:0]),
//            .out(sign_ext) );
 
 
// mux1 p9(
//            .sel(alu_src),
//            .a0(rd2), 
//            .a1(sign_ext), 
//            .out1(alum_out) );
 
 
// alu p10( 
//            .reg1(rd1),
//            .reg2(alum_out),
//            .dreg(alu_out),
//            .alu_ctrl(alu_ct),
//            .zero(zero) );
 
 
// datamem p11(
//            .clk(clock), 
//            .MR(mem_rd), 
//            .RA(alu_out), 
//            .RD(read_data), 
//            .MW(mem_wr), 
//            .WD(rd2) );
 
 
// mux1 p12(
//            .sel(mem_to_reg), 
//            .a0(read_data), 
//            .a1(alu_out), 
//            .out1(wrd) );
 
 
// leftshift_2 p13(
//             .out(sft_out), 
//             .in(sign_ext) );
 
 
// adder p14(
//             .d1(sft_out),
//             .d2(d1),
//             .d3(d0) );
             
             
 
             
  
  

endmodule
