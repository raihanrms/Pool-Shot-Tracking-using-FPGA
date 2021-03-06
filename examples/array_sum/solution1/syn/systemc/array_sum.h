// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _array_sum_HH_
#define _array_sum_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct array_sum : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > array_r_address0;
    sc_out< sc_logic > array_r_ce0;
    sc_in< sc_lv<32> > array_r_q0;
    sc_out< sc_lv<6> > array_r_address1;
    sc_out< sc_logic > array_r_ce1;
    sc_in< sc_lv<32> > array_r_q1;
    sc_in< sc_lv<32> > length_r;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    array_sum(sc_module_name name);
    SC_HAS_PROCESS(array_sum);

    ~array_sum();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<34> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_50;
    sc_signal< sc_lv<32> > reg_729;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_74;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_bdd_81;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_bdd_89;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_bdd_97;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_bdd_105;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_15;
    sc_signal< bool > ap_sig_bdd_113;
    sc_signal< sc_logic > ap_sig_cseq_ST_st20_fsm_19;
    sc_signal< bool > ap_sig_bdd_121;
    sc_signal< sc_logic > ap_sig_cseq_ST_st24_fsm_23;
    sc_signal< bool > ap_sig_bdd_129;
    sc_signal< sc_logic > ap_sig_cseq_ST_st26_fsm_25;
    sc_signal< bool > ap_sig_bdd_137;
    sc_signal< sc_logic > ap_sig_cseq_ST_st28_fsm_27;
    sc_signal< bool > ap_sig_bdd_145;
    sc_signal< sc_logic > ap_sig_cseq_ST_st32_fsm_31;
    sc_signal< bool > ap_sig_bdd_153;
    sc_signal< sc_lv<32> > reg_733;
    sc_signal< sc_lv<32> > grp_fu_723_p2;
    sc_signal< sc_lv<32> > reg_737;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_bdd_164;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_bdd_171;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_17;
    sc_signal< bool > ap_sig_bdd_179;
    sc_signal< sc_logic > ap_sig_cseq_ST_st22_fsm_21;
    sc_signal< bool > ap_sig_bdd_187;
    sc_signal< sc_logic > ap_sig_cseq_ST_st30_fsm_29;
    sc_signal< bool > ap_sig_bdd_195;
    sc_signal< sc_lv<32> > reg_741;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_bdd_204;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_bdd_211;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_18;
    sc_signal< bool > ap_sig_bdd_219;
    sc_signal< sc_logic > ap_sig_cseq_ST_st23_fsm_22;
    sc_signal< bool > ap_sig_bdd_227;
    sc_signal< sc_logic > ap_sig_cseq_ST_st31_fsm_30;
    sc_signal< bool > ap_sig_bdd_235;
    sc_signal< sc_lv<32> > grp_fu_751_p2;
    sc_signal< sc_lv<32> > reg_769;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_245;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_bdd_252;
    sc_signal< sc_logic > ap_sig_cseq_ST_st27_fsm_26;
    sc_signal< bool > ap_sig_bdd_260;
    sc_signal< sc_lv<32> > reg_773;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_bdd_269;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_bdd_276;
    sc_signal< sc_logic > ap_sig_cseq_ST_st29_fsm_28;
    sc_signal< bool > ap_sig_bdd_284;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_bdd_329;
    sc_signal< sc_lv<32> > grp_fu_783_p2;
    sc_signal< sc_lv<32> > tmp1_reg_898;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_bdd_370;
    sc_signal< sc_lv<32> > tmp16_reg_983;
    sc_signal< sc_logic > ap_sig_cseq_ST_st21_fsm_20;
    sc_signal< bool > ap_sig_bdd_394;
    sc_signal< sc_lv<32> > grp_fu_763_p2;
    sc_signal< sc_lv<32> > tmp33_reg_1028;
    sc_signal< sc_logic > ap_sig_cseq_ST_st25_fsm_24;
    sc_signal< bool > ap_sig_bdd_419;
    sc_signal< sc_lv<32> > tmp40_reg_1073;
    sc_signal< sc_lv<32> > tmp47_reg_1148;
    sc_signal< sc_logic > ap_sig_cseq_ST_st33_fsm_32;
    sc_signal< bool > ap_sig_bdd_458;
    sc_signal< sc_lv<32> > grp_fu_745_p2;
    sc_signal< sc_lv<32> > grp_fu_757_p2;
    sc_signal< sc_lv<32> > grp_fu_777_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st34_fsm_33;
    sc_signal< bool > ap_sig_bdd_613;
    sc_signal< sc_lv<32> > tmp32_fu_793_p2;
    sc_signal< sc_lv<32> > tmp31_fu_797_p2;
    sc_signal< sc_lv<32> > tmp_fu_789_p2;
    sc_signal< sc_lv<34> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<34> ap_ST_st1_fsm_0;
    static const sc_lv<34> ap_ST_st2_fsm_1;
    static const sc_lv<34> ap_ST_st3_fsm_2;
    static const sc_lv<34> ap_ST_st4_fsm_3;
    static const sc_lv<34> ap_ST_st5_fsm_4;
    static const sc_lv<34> ap_ST_st6_fsm_5;
    static const sc_lv<34> ap_ST_st7_fsm_6;
    static const sc_lv<34> ap_ST_st8_fsm_7;
    static const sc_lv<34> ap_ST_st9_fsm_8;
    static const sc_lv<34> ap_ST_st10_fsm_9;
    static const sc_lv<34> ap_ST_st11_fsm_10;
    static const sc_lv<34> ap_ST_st12_fsm_11;
    static const sc_lv<34> ap_ST_st13_fsm_12;
    static const sc_lv<34> ap_ST_st14_fsm_13;
    static const sc_lv<34> ap_ST_st15_fsm_14;
    static const sc_lv<34> ap_ST_st16_fsm_15;
    static const sc_lv<34> ap_ST_st17_fsm_16;
    static const sc_lv<34> ap_ST_st18_fsm_17;
    static const sc_lv<34> ap_ST_st19_fsm_18;
    static const sc_lv<34> ap_ST_st20_fsm_19;
    static const sc_lv<34> ap_ST_st21_fsm_20;
    static const sc_lv<34> ap_ST_st22_fsm_21;
    static const sc_lv<34> ap_ST_st23_fsm_22;
    static const sc_lv<34> ap_ST_st24_fsm_23;
    static const sc_lv<34> ap_ST_st25_fsm_24;
    static const sc_lv<34> ap_ST_st26_fsm_25;
    static const sc_lv<34> ap_ST_st27_fsm_26;
    static const sc_lv<34> ap_ST_st28_fsm_27;
    static const sc_lv<34> ap_ST_st29_fsm_28;
    static const sc_lv<34> ap_ST_st30_fsm_29;
    static const sc_lv<34> ap_ST_st31_fsm_30;
    static const sc_lv<34> ap_ST_st32_fsm_31;
    static const sc_lv<34> ap_ST_st33_fsm_32;
    static const sc_lv<34> ap_ST_st34_fsm_33;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_D;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<64> ap_const_lv64_11;
    static const sc_lv<64> ap_const_lv64_12;
    static const sc_lv<64> ap_const_lv64_13;
    static const sc_lv<64> ap_const_lv64_14;
    static const sc_lv<64> ap_const_lv64_15;
    static const sc_lv<64> ap_const_lv64_16;
    static const sc_lv<64> ap_const_lv64_17;
    static const sc_lv<64> ap_const_lv64_18;
    static const sc_lv<64> ap_const_lv64_19;
    static const sc_lv<64> ap_const_lv64_1A;
    static const sc_lv<64> ap_const_lv64_1B;
    static const sc_lv<64> ap_const_lv64_1C;
    static const sc_lv<64> ap_const_lv64_1D;
    static const sc_lv<64> ap_const_lv64_1E;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<64> ap_const_lv64_20;
    static const sc_lv<64> ap_const_lv64_21;
    static const sc_lv<64> ap_const_lv64_22;
    static const sc_lv<64> ap_const_lv64_23;
    static const sc_lv<64> ap_const_lv64_24;
    static const sc_lv<64> ap_const_lv64_25;
    static const sc_lv<64> ap_const_lv64_26;
    static const sc_lv<64> ap_const_lv64_27;
    static const sc_lv<64> ap_const_lv64_28;
    static const sc_lv<64> ap_const_lv64_29;
    static const sc_lv<64> ap_const_lv64_2A;
    static const sc_lv<64> ap_const_lv64_2B;
    static const sc_lv<64> ap_const_lv64_2C;
    static const sc_lv<64> ap_const_lv64_2D;
    static const sc_lv<64> ap_const_lv64_2E;
    static const sc_lv<64> ap_const_lv64_2F;
    static const sc_lv<64> ap_const_lv64_30;
    static const sc_lv<64> ap_const_lv64_31;
    static const sc_lv<64> ap_const_lv64_32;
    static const sc_lv<64> ap_const_lv64_33;
    static const sc_lv<64> ap_const_lv64_34;
    static const sc_lv<64> ap_const_lv64_35;
    static const sc_lv<64> ap_const_lv64_36;
    static const sc_lv<64> ap_const_lv64_37;
    static const sc_lv<64> ap_const_lv64_38;
    static const sc_lv<64> ap_const_lv64_39;
    static const sc_lv<64> ap_const_lv64_3A;
    static const sc_lv<64> ap_const_lv64_3B;
    static const sc_lv<64> ap_const_lv64_3C;
    static const sc_lv<64> ap_const_lv64_3D;
    static const sc_lv<64> ap_const_lv64_3E;
    static const sc_lv<64> ap_const_lv64_3F;
    static const sc_lv<32> ap_const_lv32_21;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_bdd_105();
    void thread_ap_sig_bdd_113();
    void thread_ap_sig_bdd_121();
    void thread_ap_sig_bdd_129();
    void thread_ap_sig_bdd_137();
    void thread_ap_sig_bdd_145();
    void thread_ap_sig_bdd_153();
    void thread_ap_sig_bdd_164();
    void thread_ap_sig_bdd_171();
    void thread_ap_sig_bdd_179();
    void thread_ap_sig_bdd_187();
    void thread_ap_sig_bdd_195();
    void thread_ap_sig_bdd_204();
    void thread_ap_sig_bdd_211();
    void thread_ap_sig_bdd_219();
    void thread_ap_sig_bdd_227();
    void thread_ap_sig_bdd_235();
    void thread_ap_sig_bdd_245();
    void thread_ap_sig_bdd_252();
    void thread_ap_sig_bdd_260();
    void thread_ap_sig_bdd_269();
    void thread_ap_sig_bdd_276();
    void thread_ap_sig_bdd_284();
    void thread_ap_sig_bdd_329();
    void thread_ap_sig_bdd_370();
    void thread_ap_sig_bdd_394();
    void thread_ap_sig_bdd_419();
    void thread_ap_sig_bdd_458();
    void thread_ap_sig_bdd_50();
    void thread_ap_sig_bdd_613();
    void thread_ap_sig_bdd_74();
    void thread_ap_sig_bdd_81();
    void thread_ap_sig_bdd_89();
    void thread_ap_sig_bdd_97();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st16_fsm_15();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st18_fsm_17();
    void thread_ap_sig_cseq_ST_st19_fsm_18();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st20_fsm_19();
    void thread_ap_sig_cseq_ST_st21_fsm_20();
    void thread_ap_sig_cseq_ST_st22_fsm_21();
    void thread_ap_sig_cseq_ST_st23_fsm_22();
    void thread_ap_sig_cseq_ST_st24_fsm_23();
    void thread_ap_sig_cseq_ST_st25_fsm_24();
    void thread_ap_sig_cseq_ST_st26_fsm_25();
    void thread_ap_sig_cseq_ST_st27_fsm_26();
    void thread_ap_sig_cseq_ST_st28_fsm_27();
    void thread_ap_sig_cseq_ST_st29_fsm_28();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st30_fsm_29();
    void thread_ap_sig_cseq_ST_st31_fsm_30();
    void thread_ap_sig_cseq_ST_st32_fsm_31();
    void thread_ap_sig_cseq_ST_st33_fsm_32();
    void thread_ap_sig_cseq_ST_st34_fsm_33();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_array_r_address0();
    void thread_array_r_address1();
    void thread_array_r_ce0();
    void thread_array_r_ce1();
    void thread_grp_fu_723_p2();
    void thread_grp_fu_745_p2();
    void thread_grp_fu_751_p2();
    void thread_grp_fu_757_p2();
    void thread_grp_fu_763_p2();
    void thread_grp_fu_777_p2();
    void thread_grp_fu_783_p2();
    void thread_tmp31_fu_797_p2();
    void thread_tmp32_fu_793_p2();
    void thread_tmp_fu_789_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
