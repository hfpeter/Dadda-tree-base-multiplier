

module mbe_mantissa_mul(a,b,out);
input [10:0]a;
input [10:0]b;
wire [10:0]a;
wire [10:0]b;
wire [11:0]a1;
wire [11:0]b1;
output [21:0] out;
wire [21:0]out;
reg  [2:0] bop_3bit [0:6];
wire  [11:0] mux_to_adder [0:6];
assign a1[10:0]=a;
assign b1[10:0]=b;
assign a1[11]=1'b0;
assign b1[11]=1'b0;
		dadda_tree DD(bop_3bit, mux_to_adder,out[21:0]);
    genvar i;
    generate
    for (i = 0; i <=6; i = i + 1) begin
      mux mux0(a1,bop_3bit[i],mux_to_adder[i]);
    end
    endgenerate
	always @(a1,b1)
begin
		bop_3bit[0]=b1[1:0]<<1;
		bop_3bit[1]=b1>>1;
    for(integer n=2;n<=6;n++)begin
		bop_3bit[n]=b1>>((n*2)-1);
    end	
end

endmodule
