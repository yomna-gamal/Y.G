`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2021 01:58:48 PM
// Design Name: 
// Module Name: center_derivative
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


module center_derivative#(parameter Nbits=2,Obits=9 )(
input [Nbits:0] IN_center_der,
input clk,
output [Obits:0] out_center_der
 );
 wire [Nbits:0] Delay_sig_out;
 wire [Nbits:0] out;
 reg [Obits:0] out2;
 wire [7:0] C = 8'd180;
 
 //

 design_delay #(.Nbits(Nbits)) d1 (.SIG_IN(IN_center_der),.Delay_sig_out(Delay_sig_out),.clk(clk));
 
 //
 
 sub#(.Nbits(Nbits)) sub1 (.SIG_IN(IN_center_der),.Delay_sig_out(Delay_sig_out),.sig_out_sub(out),.clk(clk));
 
 //
 
 always @ (posedge clk)
begin
out2=out*C;
end
assign out_center_der=out2;
endmodule
