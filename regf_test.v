`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2020 09:35:59
// Design Name: 
// Module Name: regf_test
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


module regf_test(  );
reg [31:0]data;

reg [4:0]read_regA,
         read_regB,
         write_reg;
         
reg  clk,
     clear,
     wr,
     rd;

wire [31:0]readA,
           readB;


register_file t1(clk,read_regA,read_regB,readA,readB,write_reg,data,clear,wr,rd);

initial 

begin
clk =1'b0;

data =32'h0;
read_regA=0;
read_regB=0;
write_reg=0;

clear=1'b1;
wr=1'b0;
rd=1'b0;

#100
 
 clear =1'b0;
 #20;
      wr=1'b1;   
      rd=1'b0;
      data =31'h123abc01;
      write_reg = 5'h00;
      
  #20;    
     data =31'haaaabcaa;
     write_reg =5'h05;
  
  #20 
     wr=1'b0; 
     rd=1'b1;
     read_regA=5'h00;
     read_regB=5'h05;
  end
 

always
 begin 
  #10 clk =~clk;
end
 
endmodule
