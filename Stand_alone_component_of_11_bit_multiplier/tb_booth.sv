module tb_booth ();
   parameter NBIT = 31;   

   wire CLK_i;
   wire RST_n_i;
   wire [11:0] DIN_i;
   wire [11:0] DIN1_i;
   wire VIN_i;
   wire [21:0] DOUT_i;
   wire VOUT_i;
   wire END_SIM_i;
   
	clk_gen CG(.END_SIM(END_SIM_i),
	.CLK(CLK_i),
	.RST_n(RST_n_i));
   data_maker #(.NBIT(NBIT)) SM(.CLK(CLK_i),
				.RST_n(RST_n_i),
				.vin(VOUT_i),
				.VOUT(VIN_i),
				.DOUT(DIN_i),
				.DOUT1(DIN1_i),
				.END_SIM(END_SIM_i));
boothmul uut3
(
.a(DIN_i),
.b(DIN1_i),
.out(DOUT_i)
);

endmodule
				
				
