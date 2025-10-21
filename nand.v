

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2025 17:31:11
// Design Name: 
// Module Name: nand
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
module nand_my(
input a, b, 
output f
);
  wire vdd = 1'b1;
  wire gnd = 1'b0;

  // Pull-up network (PMOS)
  pmos p1(f, vdd, a);
  pmos p2(f, vdd, b);

  // Pull-down network (NMOS in series)
  wire nmid;
  nmos n1(nmid, f, a);
  nmos n2(f, gnd, b);
endmodule

