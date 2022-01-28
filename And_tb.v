`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 12:10:07 PM
// Design Name: 
// Module Name: And_tb
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


module And_tb;
reg  a,b;
reg clk;
wire and_out;

And #(.Nbits(1),.obits(1))DUT(
    .clk(clk),
    .a(a),
    .b(b),
    .and_out(and_out)
    );
    
initial begin
$dumpfile("And.vcd");
$dumpvars ;
  clk = 1'b0;
  repeat(1) #10 clk = ~clk;//This is used to toggle the clock four times with 10 units of time between each toggle
  forever #10 clk = ~clk; // generate a clock The forever keyword is used to create a loop that lasts, you guessed it, forever 
end

initial begin
   b=1'b0;
   a=1'b0;
repeat(5) @(posedge clk);
    b=1'b0;
    a=1'b1;
repeat(5) @(posedge clk);
    b=1'b1;
    a=1'b0;
repeat(5) @(posedge clk);
    b=1'b1;
    a=1'b1;

end 
endmodule
