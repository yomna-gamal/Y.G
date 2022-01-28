`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2022 09:35:21 PM
// Design Name: 
// Module Name: mul_tb
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


module mul_tb;
reg [5:0] Delay_sig_out_b,out_center_der_a;
reg clk;
wire  [5:0] mul_out;

mul #(.Nbits(5),.obits(5))DUT(
    .clk(clk),
    .Delay_sig_out_b(Delay_sig_out_b),
    .out_center_der_a(out_center_der_a),
    .mul_out(mul_out)
    );
    
initial begin
$dumpfile("mul.vcd");
$dumpvars ;
  clk = 1'b0;
  repeat(1) #10 clk = ~clk;//This is used to toggle the clock four times with 10 units of time between each toggle
  forever #10 clk = ~clk; // generate a clock The forever keyword is used to create a loop that lasts, you guessed it, forever 
end

initial begin
   Delay_sig_out_b=2'b00;
   out_center_der_a=2'b00;
repeat(1) @(posedge clk);
   Delay_sig_out_b=2'b01;
   out_center_der_a=2'b10;
repeat(1) @(posedge clk);
   Delay_sig_out_b=2'b11;
   out_center_der_a=2'b10;
repeat(1) @(posedge clk);
   Delay_sig_out_b=2'b10;
   out_center_der_a=2'b10;
repeat(1) @(posedge clk);
   Delay_sig_out_b=2'b11;
   out_center_der_a=2'b11;

end 
endmodule
