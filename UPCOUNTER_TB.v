`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 12:07:56
// Design Name: 
// Module Name: UPCOUNTER_TB
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


module UPCOUNTER_TB;
    reg RST;
    reg CLK;
    wire [3:0]COUNT;
    UPCOUNTER uut(.rst(RST),.clk(CLK),.count(COUNT));  
    initial
      begin 
      CLK <=0;
     
      end
    always #10 CLK=~CLK;
    initial
    begin
    RST=0;
    #400
    RST=1;
    end
    
endmodule
