`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2021 01:01:50 PM
// Design Name: 
// Module Name: sub_tb
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


module sub_tb;
    reg [2:0] SIG_IN;
    reg [2:0] Delay_sig_out;     
    wire [2:0] sig_out_sub;
    reg clk;


sub#(.Nbits(2)) DUT(
    .clk(clk),
    .SIG_IN(SIG_IN),
    .Delay_sig_out(Delay_sig_out),
    .sig_out_sub(sig_out_sub)
    );
    
initial begin
$dumpfile("sub.vcd");
$dumpvars ;
  clk = 1'b0;
  repeat(1) #10 clk = ~clk;//This is used to toggle the clock four times with 10 units of time between each toggle
  forever #10 clk = ~clk; // generate a clock The forever keyword is used to create a loop that lasts, you guessed it, forever 
end

initial begin
   SIG_IN=2'b00;
   Delay_sig_out=2'b00;
repeat(1) @(posedge clk);
  SIG_IN=2'b10;
  Delay_sig_out=2'b00;
repeat(1) @(posedge clk);
  #50
   SIG_IN=2'b11;
   Delay_sig_out=2'b10;
   #50
   SIG_IN=2'b10;
   Delay_sig_out=2'b10;
end 
endmodule
