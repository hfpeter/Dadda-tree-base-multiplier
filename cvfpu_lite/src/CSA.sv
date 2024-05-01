`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////

 //CSA with no distincguish of i index to sum up the output as RCA DOES.
module HA (A,B,S,Co);
input  A ;
input  B ;
output S; 
output Co;
assign S=A^B;
assign Co=(A&B);
endmodule

module FA (A,B,Ci,S,Co);
input  A ;
input  B ;
input  Ci;
output S; 
output Co;
//reg S; 
//reg Co;
assign  S=A^B^Ci;
assign  Co=(A&B)|(B&Ci)|(A&Ci);
endmodule
