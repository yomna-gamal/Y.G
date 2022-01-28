`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 07:20:02 PM
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb;
    
reg [2:0] b,a;
reg clk;
wire   comparator_out;

comparator #(.Nbits(2),.obits(1))DUT(
    .clk(clk),
    .b(b),
    .a(a),
    .comparator_out(comparator_out)
    );
    
initial begin
$dumpfile("comparator.vcd");
$dumpvars ;
  clk = 1'b0;
  repeat(1) #10 clk = ~clk;//This is used to toggle the clock four times with 10 units of time between each toggle
  forever #10 clk = ~clk; // generate a clock The forever keyword is used to create a loop that lasts, you guessed it, forever 
end

initial begin
repeat(4) @(posedge clk);
   b=3'b000;
   a=3'b000;
repeat(4) @(posedge clk);
   b=3'b001;
   a=3'b100;
repeat(4) @(posedge clk);
   b=3'b110;
   a=3'b101;
repeat(4) @(posedge clk);
   b=3'b100;
   a=3'b100;
repeat(4) @(posedge clk);
   b=3'b101;
   a=3'b111;

end 
endmodule
