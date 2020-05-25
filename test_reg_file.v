`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2020 12:29:24
// Design Name: 
// Module Name: test_reg_file
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


module test_reg_file;

 // Inputs

 reg [31:0] Ip1;

 reg [3:0] sel_i1;

 reg [3:0] sel_o1;

 reg [3:0] sel_o2;

 reg RD;

 reg WR;

 reg rst;

 reg EN;

 reg clk;

 // Outputs

 wire [31:0] Op1;

 wire [31:0] Op2;

 // Instantiate the Unit Under Test (UUT)

 reg_file uut (

               .Ip1(Ip1), 

               .sel_i1(sel_i1), 

               .Op1(Op1), 

               .sel_o1(sel_o1), 

               .Op2(Op2), 

               .sel_o2(sel_o2), 

               .RD(RD), 

               .WR(WR), 

               .rst(rst), 

               .EN(EN), 

               .clk(clk)

              );

 initial begin

  // Initialize Inputs

  Ip1  = 32'b0;

  sel_i1  = 4'b0;

  sel_o1  = 4'b0;

  sel_o2  = 4'b0;

  RD  = 1'b0;

  WR  = 1'b0;

  rst  = 1'b1;

  EN  = 1'b0;

  clk  = 1'b0;

  // Wait 100 ns for global reset to finish

  #100;        

  // Add stimulus here

   rst  = 1'b0;

   EN  = 1'b1;

   #20;

   WR  = 1'b1;

   RD = 1'b0;

   Ip1  = 32'habcd_efab;

   sel_i1  = 4'h0;

   #20;

   Ip1  = 32'h0123_4567;

   sel_i1  = 4'h1;

   #20;

   WR  = 1'b0;

   RD     = 1'b1;

   sel_o1  = 4'h1;

   sel_o2  = 4'h0;

 end 

   always begin

  #10;

  clk = ~clk;

 end 

endmodule