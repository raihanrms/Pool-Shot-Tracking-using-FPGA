// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="sparse_mm,hls_ip_2015_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7vx690tffg1761-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.280000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=12,HLS_SYN_FF=462,HLS_SYN_LUT=355}" *)

module sparse_mm (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_q0,
        a_y,
        a_x,
        b_address0,
        b_ce0,
        b_q0,
        b_y,
        b_x,
        c_address0,
        c_ce0,
        c_we0,
        c_d0
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 18'b1;
parameter    ap_ST_st2_fsm_1 = 18'b10;
parameter    ap_ST_st3_fsm_2 = 18'b100;
parameter    ap_ST_st4_fsm_3 = 18'b1000;
parameter    ap_ST_st5_fsm_4 = 18'b10000;
parameter    ap_ST_st6_fsm_5 = 18'b100000;
parameter    ap_ST_st7_fsm_6 = 18'b1000000;
parameter    ap_ST_st8_fsm_7 = 18'b10000000;
parameter    ap_ST_st9_fsm_8 = 18'b100000000;
parameter    ap_ST_st10_fsm_9 = 18'b1000000000;
parameter    ap_ST_st11_fsm_10 = 18'b10000000000;
parameter    ap_ST_st12_fsm_11 = 18'b100000000000;
parameter    ap_ST_st13_fsm_12 = 18'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 18'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 18'b100000000000000;
parameter    ap_ST_st16_fsm_15 = 18'b1000000000000000;
parameter    ap_ST_st17_fsm_16 = 18'b10000000000000000;
parameter    ap_ST_st18_fsm_17 = 18'b100000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv31_0 = 31'b0000000000000000000000000000000;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv31_1 = 31'b1;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [21:0] a_address0;
output   a_ce0;
input  [63:0] a_q0;
input  [31:0] a_y;
input  [31:0] a_x;
output  [10:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
input  [31:0] b_y;
input  [31:0] b_x;
output  [10:0] c_address0;
output   c_ce0;
output   c_we0;
output  [31:0] c_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg b_ce0;
reg c_ce0;
reg c_we0;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm = 18'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_34;
wire   [31:0] ibx_cast_fu_145_p1;
reg   [31:0] ibx_cast_reg_258;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_78;
wire   [30:0] ibx_1_fu_154_p2;
reg   [30:0] ibx_1_reg_267;
wire   [31:0] a_i_1_fu_165_p2;
reg   [31:0] a_i_1_reg_275;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_89;
wire   [0:0] tmp_1_fu_160_p2;
wire   [31:0] column_cast_fu_190_p1;
reg   [31:0] column_cast_reg_289;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_bdd_105;
reg  signed [31:0] value_reg_294;
wire   [31:0] iay_1_fu_204_p2;
reg   [31:0] iay_1_reg_299;
wire   [0:0] tmp_6_fu_176_p1;
wire   [31:0] grp_fu_215_p2;
reg   [31:0] tmp_8_reg_304;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_bdd_122;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_bdd_131;
reg  signed [31:0] b_load_reg_314;
reg    ap_sig_cseq_ST_st11_fsm_10;
reg    ap_sig_bdd_139;
wire   [31:0] grp_fu_228_p2;
reg   [31:0] tmp_7_reg_319;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_bdd_148;
wire   [31:0] sum_1_fu_232_p2;
reg    ap_sig_cseq_ST_st15_fsm_14;
reg    ap_sig_bdd_157;
wire   [31:0] grp_fu_210_p2;
reg   [31:0] tmp_3_reg_329;
reg    ap_sig_cseq_ST_st17_fsm_16;
reg    ap_sig_bdd_166;
reg   [30:0] ibx_reg_90;
reg   [31:0] a_i_reg_101;
wire   [0:0] tmp_fu_149_p2;
reg    ap_sig_cseq_ST_st18_fsm_17;
reg    ap_sig_bdd_183;
reg  signed [31:0] iay_reg_114;
reg   [31:0] sum_reg_129;
wire  signed [63:0] tmp_2_fu_171_p1;
wire   [63:0] tmp_s_fu_223_p1;
wire  signed [63:0] tmp_4_fu_241_p1;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_200;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_208;
wire  signed [31:0] tmp_fu_149_p1;
wire   [30:0] column_fu_180_p4;
wire   [30:0] grp_fu_215_p0;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_bdd_247;
wire   [31:0] tmp_9_fu_219_p2;
wire   [31:0] tmp_5_fu_237_p2;
wire    grp_fu_210_ce;
wire    grp_fu_215_ce;
wire    grp_fu_228_ce;
reg   [17:0] ap_NS_fsm;


sparse_mm_mul_32s_32s_32_3 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sparse_mm_mul_32s_32s_32_3_U1(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( iay_reg_114 ),
    .din1( b_x ),
    .ce( grp_fu_210_ce ),
    .dout( grp_fu_210_p2 )
);

sparse_mm_mul_31ns_32s_32_3 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 31 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sparse_mm_mul_31ns_32s_32_3_U2(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_215_p0 ),
    .din1( b_x ),
    .ce( grp_fu_215_ce ),
    .dout( grp_fu_215_p2 )
);

sparse_mm_mul_32s_32s_32_3 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sparse_mm_mul_32s_32s_32_3_U3(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( b_load_reg_314 ),
    .din1( value_reg_294 ),
    .ce( grp_fu_228_ce ),
    .dout( grp_fu_228_p2 )
);



always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st15_fsm_14) | (ap_const_logic_1 == ap_sig_cseq_ST_st18_fsm_17))) begin
        a_i_reg_101 <= a_i_1_reg_275;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_lv1_0 == tmp_fu_149_p2))) begin
        a_i_reg_101 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        iay_reg_114 <= iay_reg_114;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st18_fsm_17)) begin
        iay_reg_114 <= iay_1_reg_299;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_lv1_0 == tmp_fu_149_p2))) begin
        iay_reg_114 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (tmp_1_fu_160_p2 == ap_const_lv1_0))) begin
        ibx_reg_90 <= ibx_1_reg_267;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        ibx_reg_90 <= ap_const_lv31_0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        sum_reg_129 <= sum_1_fu_232_p2;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_lv1_0 == tmp_fu_149_p2)) | (ap_const_logic_1 == ap_sig_cseq_ST_st18_fsm_17))) begin
        sum_reg_129 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        a_i_1_reg_275 <= a_i_1_fu_165_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        b_load_reg_314 <= b_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        column_cast_reg_289[30 : 0] <= column_cast_fu_190_p1[30 : 0];
        value_reg_294 <= {{a_q0[ap_const_lv32_3F : ap_const_lv32_20]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) & ~(ap_const_lv1_0 == tmp_6_fu_176_p1))) begin
        iay_1_reg_299 <= iay_1_fu_204_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        ibx_1_reg_267 <= ibx_1_fu_154_p2;
        ibx_cast_reg_258[30 : 0] <= ibx_cast_fu_145_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        tmp_3_reg_329 <= grp_fu_210_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        tmp_7_reg_319 <= grp_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        tmp_8_reg_304 <= grp_fu_215_p2;
    end
end

always @ (ap_sig_cseq_ST_st3_fsm_2 or ap_sig_cseq_ST_st6_fsm_5 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st5_fsm_4) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) | (ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) | (ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) | (ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4))) begin
        a_ce0 = ap_const_logic_1;
    end else begin
        a_ce0 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st2_fsm_1 or tmp_fu_149_p2) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (ap_const_lv1_0 == tmp_fu_149_p2))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st2_fsm_1 or tmp_fu_149_p2) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (ap_const_lv1_0 == tmp_fu_149_p2))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_131) begin
    if (ap_sig_bdd_131) begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_139) begin
    if (ap_sig_bdd_139) begin
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_148) begin
    if (ap_sig_bdd_148) begin
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_157) begin
    if (ap_sig_bdd_157) begin
        ap_sig_cseq_ST_st15_fsm_14 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st15_fsm_14 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_166) begin
    if (ap_sig_bdd_166) begin
        ap_sig_cseq_ST_st17_fsm_16 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st17_fsm_16 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_183) begin
    if (ap_sig_bdd_183) begin
        ap_sig_cseq_ST_st18_fsm_17 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st18_fsm_17 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_34) begin
    if (ap_sig_bdd_34) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_78) begin
    if (ap_sig_bdd_78) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_89) begin
    if (ap_sig_bdd_89) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_200) begin
    if (ap_sig_bdd_200) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_208) begin
    if (ap_sig_bdd_208) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_105) begin
    if (ap_sig_bdd_105) begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_247) begin
    if (ap_sig_bdd_247) begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_122) begin
    if (ap_sig_bdd_122) begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st10_fsm_9) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        b_ce0 = ap_const_logic_1;
    end else begin
        b_ce0 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st18_fsm_17) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st18_fsm_17)) begin
        c_ce0 = ap_const_logic_1;
    end else begin
        c_ce0 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st18_fsm_17) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st18_fsm_17)) begin
        c_we0 = ap_const_logic_1;
    end else begin
        c_we0 = ap_const_logic_0;
    end
end
always @ (ap_start or ap_CS_fsm or tmp_1_fu_160_p2 or tmp_6_fu_176_p1 or tmp_fu_149_p2) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if ((ap_const_lv1_0 == tmp_fu_149_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            if (~(tmp_1_fu_160_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st4_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : 
        begin
            if (~(ap_const_lv1_0 == tmp_6_fu_176_p1)) begin
                ap_NS_fsm = ap_ST_st16_fsm_15;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        ap_ST_st7_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : 
        begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : 
        begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : 
        begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : 
        begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : 
        begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : 
        begin
            ap_NS_fsm = ap_ST_st15_fsm_14;
        end
        ap_ST_st15_fsm_14 : 
        begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st16_fsm_15 : 
        begin
            ap_NS_fsm = ap_ST_st17_fsm_16;
        end
        ap_ST_st17_fsm_16 : 
        begin
            ap_NS_fsm = ap_ST_st18_fsm_17;
        end
        ap_ST_st18_fsm_17 : 
        begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


assign a_address0 = tmp_2_fu_171_p1;

assign a_i_1_fu_165_p2 = (a_i_reg_101 + ap_const_lv32_1);


always @ (ap_CS_fsm) begin
    ap_sig_bdd_105 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_122 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_8]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_131 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_9]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_139 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_A]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_148 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_D]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_157 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_E]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_166 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_10]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_183 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_11]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_200 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_208 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_247 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_34 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_78 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_89 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

assign b_address0 = tmp_s_fu_223_p1;

assign c_address0 = tmp_4_fu_241_p1;

assign c_d0 = sum_reg_129;

assign column_cast_fu_190_p1 = column_fu_180_p4;

assign column_fu_180_p4 = {{a_q0[ap_const_lv32_1F : ap_const_lv32_1]}};

assign grp_fu_210_ce = ap_const_logic_1;

assign grp_fu_215_ce = ap_const_logic_1;

assign grp_fu_215_p0 = column_cast_reg_289;

assign grp_fu_228_ce = ap_const_logic_1;

assign iay_1_fu_204_p2 = ($signed(iay_reg_114) + $signed(ap_const_lv32_1));

assign ibx_1_fu_154_p2 = (ibx_reg_90 + ap_const_lv31_1);

assign ibx_cast_fu_145_p1 = ibx_reg_90;

assign sum_1_fu_232_p2 = (tmp_7_reg_319 + sum_reg_129);

assign tmp_1_fu_160_p2 = (iay_reg_114 < a_y? 1'b1: 1'b0);

assign tmp_2_fu_171_p1 = $signed(a_i_reg_101);

assign tmp_4_fu_241_p1 = $signed(tmp_5_fu_237_p2);

assign tmp_5_fu_237_p2 = (tmp_3_reg_329 + ibx_cast_reg_258);

assign tmp_6_fu_176_p1 = a_q0[0:0];

assign tmp_9_fu_219_p2 = (tmp_8_reg_304 + ibx_cast_reg_258);

assign tmp_fu_149_p1 = b_x;

assign tmp_fu_149_p2 = ($signed(ibx_cast_fu_145_p1) < $signed(tmp_fu_149_p1)? 1'b1: 1'b0);

assign tmp_s_fu_223_p1 = tmp_9_fu_219_p2;
always @ (posedge ap_clk) begin
    ibx_cast_reg_258[31] <= 1'b0;
    column_cast_reg_289[31] <= 1'b0;
end



endmodule //sparse_mm

