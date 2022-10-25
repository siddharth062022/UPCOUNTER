`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 11:38:38
// Design Name: 
// Module Name: UPCOUNTER
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


module UPCOUNTER(
    input rst,
    input clk,
   output [3:0] count
    );
    
   reg [3:0]r;
   assign count=r ;
   initial
   begin 
   r=0;
   end
    
    always@( clk,rst)
  begin
  
    if (rst==1)
    r<=0;
    else
    r= r+1; 
    if (r==16)
    r<=0;
    end
    
    
 endmodule
    
   
   
  
  
    
    

