`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2021 10:02:09 PM
// Design Name: 
// Module Name: design_delay_tb
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
module design_delay_tb;
    reg [2:0] SIG_IN; 
    reg clk;
    wire [2:0] Delay_sig_out;


design_delay #(.Nbits(2)) DUT(
    .clk(clk),
    .SIG_IN(SIG_IN),
    .Delay_sig_out(Delay_sig_out)
    );
    
initial begin
$dumpfile("design_delay.vcd");
$dumpvars ;
  clk = 1'b0;
  repeat(1) #10 clk = ~clk;//This is used to toggle the clock four times with 10 units of time between each toggle
  forever #10 clk = ~clk; // generate a clock The forever keyword is used to create a loop that lasts, you guessed it, forever 
end

initial begin
   SIG_IN=2'b00;
repeat(1) @(posedge clk);
  SIG_IN=2'b10;
repeat(1) @(posedge clk);
  #30 SIG_IN=2'b11;

end 

endmodule