// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue May 20 16:42:23 2025
// Host        : Hari_Venkatesh running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/verilog
//               project/project_7/project_7.sim/sim_1/synth/func/xsim/top_func_synth.v}
// Design      : m81
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module m81
   (out,
    D0,
    D1,
    D2,
    D3,
    D4,
    D5,
    D6,
    D7,
    S0,
    S1,
    S2);
  output out;
  input D0;
  input D1;
  input D2;
  input D3;
  input D4;
  input D5;
  input D6;
  input D7;
  input S0;
  input S1;
  input S2;

  wire D0;
  wire D0_IBUF;
  wire D1;
  wire D1_IBUF;
  wire D2;
  wire D2_IBUF;
  wire D3;
  wire D3_IBUF;
  wire D4;
  wire D4_IBUF;
  wire D5;
  wire D5_IBUF;
  wire D6;
  wire D6_IBUF;
  wire D7;
  wire D7_IBUF;
  wire S0;
  wire S0_IBUF;
  wire S1;
  wire S1_IBUF;
  wire S2;
  wire S2_IBUF;
  wire out;
  wire out_OBUF;
  wire out_OBUF_inst_i_2_n_0;
  wire out_OBUF_inst_i_3_n_0;

  IBUF D0_IBUF_inst
       (.I(D0),
        .O(D0_IBUF));
  IBUF D1_IBUF_inst
       (.I(D1),
        .O(D1_IBUF));
  IBUF D2_IBUF_inst
       (.I(D2),
        .O(D2_IBUF));
  IBUF D3_IBUF_inst
       (.I(D3),
        .O(D3_IBUF));
  IBUF D4_IBUF_inst
       (.I(D4),
        .O(D4_IBUF));
  IBUF D5_IBUF_inst
       (.I(D5),
        .O(D5_IBUF));
  IBUF D6_IBUF_inst
       (.I(D6),
        .O(D6_IBUF));
  IBUF D7_IBUF_inst
       (.I(D7),
        .O(D7_IBUF));
  IBUF S0_IBUF_inst
       (.I(S0),
        .O(S0_IBUF));
  IBUF S1_IBUF_inst
       (.I(S1),
        .O(S1_IBUF));
  IBUF S2_IBUF_inst
       (.I(S2),
        .O(S2_IBUF));
  OBUF out_OBUF_inst
       (.I(out_OBUF),
        .O(out));
  MUXF7 out_OBUF_inst_i_1
       (.I0(out_OBUF_inst_i_2_n_0),
        .I1(out_OBUF_inst_i_3_n_0),
        .O(out_OBUF),
        .S(S0_IBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    out_OBUF_inst_i_2
       (.I0(D3_IBUF),
        .I1(D2_IBUF),
        .I2(S1_IBUF),
        .I3(D1_IBUF),
        .I4(S2_IBUF),
        .I5(D0_IBUF),
        .O(out_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    out_OBUF_inst_i_3
       (.I0(D7_IBUF),
        .I1(D6_IBUF),
        .I2(S1_IBUF),
        .I3(D5_IBUF),
        .I4(S2_IBUF),
        .I5(D4_IBUF),
        .O(out_OBUF_inst_i_3_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
