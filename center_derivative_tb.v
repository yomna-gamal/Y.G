`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2021 01:59:33 PM
// Design Name: 
// Module Name: center_derivative_tb
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


module center_derivative_tb;
reg IN_center_der;
reg clk;
wire  out_center_der;

center_derivative #(.Nbits(2)) DUT(
    .clk(clk),
    .IN_center_der(IN_center_der),
    .out_center_der(out_center_der)
    );
    
initial begin
$dumpfile("center_derivative.vcd");
$dumpvars ;
  clk = 1'b0;
  repeat(1) #10 clk = ~clk;//This is used to toggle the clock four times with 10 units of time between each toggle
  forever #10 clk = ~clk; // generate a clock The forever keyword is used to create a loop that lasts, you guessed it, forever 
end

initial begin
   IN_center_der=2'b00;
repeat(1) @(posedge clk);
  IN_center_der=2'b10;
repeat(1) @(posedge clk);
  #80 IN_center_der=2'b11;

end 

endmodule
