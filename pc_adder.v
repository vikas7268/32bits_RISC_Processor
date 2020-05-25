`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2020 02:01:07
// Design Name: 
// Module Name: pc_adder
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


module pc_adder(in,in2,out );
input  [31:0] in,in2;

output [31:0] out;




full_adder f0(in[0],   in2[0],   0,out[0],cout0 );
full_adder f1(in[1],   in2[1],cout0,out[1],cout1 );
full_adder f2(in[2],   in2[2],cout1,out[2],cout2 );
full_adder f3(in[3],   in2[3],cout2,out[3],cout3 );
full_adder f4(in[4],    in2[4],cout3,out[4],cout4 );
full_adder f5(in[5],    in2[5],cout4,out[5],cout5 );
full_adder f6(in[6],    in2[6],cout5,out[6],cout6 );
full_adder f7(in[7],    in2[7],cout6,out[7],cout7 );
full_adder f8(in[8],    in2[8],cout7,out[8],cout8 );
full_adder f9(in[9],    in2[9],cout8,out[9],cout9 );
full_adder f10(in[10],  in2[10],cout9,out[10],cout10 );
full_adder f11(in[11],  in2[11],cout10,out[11],cout11 );
full_adder f12(in[12],  in2[12],cout11,out[12],cout12 );
full_adder f13(in[13],  in2[13] ,cout12,out[13],cout13 );
full_adder f14(in[14],   in2[14],cout13,out[14],cout14 );
full_adder f15(in[15],   in2[15],cout14,out[15],cout15 );
full_adder f16(in[16],   in2[16],cout15,out[16],cout16 );
full_adder f17(in[17],   in2[17],cout16,out[17],cout17 );
full_adder f18(in[18],   in2[18],cout17,out[18],cout18 );
full_adder f19(in[19],   in2[19],cout18,out[19],cout19 );
full_adder f20(in[20],   in2[20],cout19,out[20],cout20 );
full_adder f21(in[21],   in2[21],cout20,out[21],cout21 );
full_adder f22(in[22],   in2[22],cout21,out[22],cout22 );
full_adder f23(in[23],   in2[23],cout22,out[23],cout23 );
full_adder f24(in[24],   in2[24],cout23,out[24],cout24 );
full_adder f25(in[25],   in2[25],cout24,out[25],cout25 );
full_adder f26(in[26],   in2[26],cout25,out[26],cout26 );
full_adder f27(in[27],   in2[27],cout26,out[27],cout27 );
full_adder f28(in[28],   in2[28],cout27,out[28],cout28 );
full_adder f29(in[29],   in2[29],cout28,out[29],cout29 );
full_adder f30(in[30],   in2[30],cout29,out[30],cout30 );
full_adder f31(in[31],   in2[31],cout30,out[31],cout31 );


endmodule