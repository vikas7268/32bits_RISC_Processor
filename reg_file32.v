`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2020 23:45:21
// Design Name: 
// Module Name: reg_file32
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


module reg_file32(clk, rst, ReadReg1, ReadReg2, WriteData, WriteReg, RegWr, ReadData1, ReadData2);
	input clk, rst, RegWr;
	input [31:0] WriteData;
	input [4:0] WriteReg, ReadReg1, ReadReg2;
	output reg [31:0] ReadData1, ReadData2;
	integer i;
	reg [31:0] mem [31:0];
	
	
	
	initial
    begin
    mem[0]=32'd1;mem[1]=32'd2;mem[2]=32'd4;mem[3]=32'd6;mem[4]=32'd8;
    mem[5]=32'd9;mem[6]=32'd10;mem[7]=32'd11;mem[8]=32'd12;mem[9]=32'd13;
    mem[10]=32'd14;mem[11]=32'd15;mem[12]=32'd16;mem[13]=32'd17;mem[14]=32'd18;
    mem[15]=32'd19;mem[16]=32'd20;mem[17]=32'd21;mem[18]=32'd22;mem[19]=32'd23;
    mem[20]=32'd24;mem[21]=32'd25;mem[22]=32'd26;mem[23]=32'd27;mem[24]=32'd28;
    mem[25]=32'd29;mem[26]=32'd30;mem[27]=32'd31;mem[28]=32'd32;mem[29]=32'd33;
    mem[30]=32'd34;mem[31]=32'd35;//initial values in memory 
    end
	
	wire sen;
	
	assign sen= clk||rst;
	
	always@(posedge sen)
	
	begin 
    if(rst==1)
	begin
	for (i=0;i<32;i=i+1) begin
	mem[i]=32'b00000000000000000000000000000000;
	end
	end
	
	else if (rst==0)
	begin
	
	case(RegWr)
	
	1:mem[WriteReg]=WriteData;
	
	0:begin
	ReadData1=mem[ReadReg1];
	ReadData2=mem[ReadReg2];
	end
	
	endcase
	
	end
	
	end
endmodule
