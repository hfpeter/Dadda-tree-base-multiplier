//module mux(rst,[63:0]mux_in[6:0], clk, sel, out);

module mux(fst_op, sel, out);
input [11:0] fst_op;
input  [2:0] sel;	
output [11:0] out;
wire [11:0]fst_op;
wire [2:0] sel;   
wire [11:0] out;
wire   [11:0] fst_op_mux2 [0:7];
assign fst_op_mux2[0]=0;
assign fst_op_mux2[1]=fst_op[10:0];
assign fst_op_mux2[2]=fst_op[10:0];
assign fst_op_mux2[3]=fst_op[10:0]<<1;
assign fst_op_mux2[4]=~(fst_op[10:0]<<1);
assign fst_op_mux2[5]=~fst_op[10:0];
assign fst_op_mux2[6]=~fst_op[10:0];
assign  fst_op_mux2[7]=~0;
assign out=fst_op_mux2[sel];

endmodule



