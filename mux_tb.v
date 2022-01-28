`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 10:47:15 PM
// Design Name: 
// Module Name: mux_tb
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

module mux_tb;
reg [2:0] d0,d1;
reg sel;
wire  [2:0] out_mux;

mux #(.width_size (2))DUT(
    .sel(sel),
    .d0(d0),
    .d1(d1),
    .out_mux(out_mux)
    );
    

initial begin
$dumpfile("mux.vcd");
$dumpvars ;
   sel=1'b0;
   d0=3'b011;
   d1=3'b010;
   sel=1'b1;
   d0=3'b111;
   d1=3'b100;
   sel=1'b0;
   sel=1'b0;
   d0=3'b111;
   d1=3'b100;
end 

endmodule
