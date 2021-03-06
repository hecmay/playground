// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_reduce_accum4_ii_is_3_Pipeline_accum4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        accum_3_0_reload,
        accum_2_0_reload,
        accum_1_0_reload,
        accum_0_0_reload,
        accum_load_1145_reload,
        accum_load_1041_reload,
        accum_load_937_reload,
        accum_load33_reload,
        A_address0,
        A_ce0,
        A_q0,
        accum_load_11_out,
        accum_load_11_out_ap_vld,
        accum_load_10_out,
        accum_load_10_out_ap_vld,
        accum_load_9_out,
        accum_load_9_out_ap_vld,
        accum_load_out,
        accum_load_out_ap_vld,
        grp_fu_96_p_din0,
        grp_fu_96_p_din1,
        grp_fu_96_p_opcode,
        grp_fu_96_p_dout0,
        grp_fu_96_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] accum_3_0_reload;
input  [31:0] accum_2_0_reload;
input  [31:0] accum_1_0_reload;
input  [31:0] accum_0_0_reload;
input  [31:0] accum_load_1145_reload;
input  [31:0] accum_load_1041_reload;
input  [31:0] accum_load_937_reload;
input  [31:0] accum_load33_reload;
output  [9:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [31:0] accum_load_11_out;
output   accum_load_11_out_ap_vld;
output  [31:0] accum_load_10_out;
output   accum_load_10_out_ap_vld;
output  [31:0] accum_load_9_out;
output   accum_load_9_out_ap_vld;
output  [31:0] accum_load_out;
output   accum_load_out_ap_vld;
output  [31:0] grp_fu_96_p_din0;
output  [31:0] grp_fu_96_p_din1;
output  [1:0] grp_fu_96_p_opcode;
input  [31:0] grp_fu_96_p_dout0;
output   grp_fu_96_p_ce;

reg ap_idle;
reg A_ce0;
reg accum_load_11_out_ap_vld;
reg accum_load_10_out_ap_vld;
reg accum_load_9_out_ap_vld;
reg accum_load_out_ap_vld;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state11_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln44_reg_417;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_state9_pp0_stage8_iter0;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln44_fu_247_p2;
wire   [1:0] trunc_ln45_1_fu_268_p1;
reg   [1:0] trunc_ln45_1_reg_426;
reg   [1:0] trunc_ln45_1_reg_426_pp0_iter1_reg;
reg   [31:0] A_load_reg_431;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_fu_289_p6;
reg   [31:0] tmp_reg_436;
wire   [31:0] bitcast_ln45_fu_302_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] accum_1_9_reg_446;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln45_fu_263_p1;
wire    ap_block_pp0_stage0;
reg   [10:0] j_fu_70;
wire   [10:0] add_ln44_fu_253_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_j_3;
reg   [31:0] accum_1_fu_74;
wire    ap_block_pp0_stage1;
reg   [31:0] accum_1_1_fu_78;
reg   [31:0] accum_1_3_fu_82;
reg   [31:0] accum_1_4_fu_86;
reg   [31:0] accum_1_5_fu_90;
reg   [31:0] ap_sig_allocacmp_accum_1_5_load;
reg   [31:0] accum_1_2_fu_94;
reg   [31:0] ap_sig_allocacmp_accum_1_2_load;
reg   [31:0] accum_1_6_fu_98;
reg   [31:0] ap_sig_allocacmp_accum_1_6_load;
reg   [31:0] accum_1_7_fu_102;
reg   [31:0] ap_sig_allocacmp_accum_1_7_load;
wire    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage2;
wire   [9:0] trunc_ln45_fu_259_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_state6_pp0_stage5_iter0;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_state7_pp0_stage6_iter0;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_state8_pp0_stage7_iter0;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_block_pp0_stage2_00001;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

top_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U22(
    .din0(ap_sig_allocacmp_accum_1_5_load),
    .din1(ap_sig_allocacmp_accum_1_2_load),
    .din2(ap_sig_allocacmp_accum_1_6_load),
    .din3(ap_sig_allocacmp_accum_1_7_load),
    .din4(trunc_ln45_1_reg_426),
    .dout(tmp_fu_289_p6)
);

top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        accum_1_1_fu_78 <= accum_load_937_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd1))) begin
        accum_1_1_fu_78 <= accum_1_9_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        accum_1_2_fu_94 <= accum_1_0_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd1))) begin
        accum_1_2_fu_94 <= accum_1_9_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        accum_1_3_fu_82 <= accum_load_1041_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd2))) begin
        accum_1_3_fu_82 <= accum_1_9_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        accum_1_4_fu_86 <= accum_load_1145_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd3))) begin
        accum_1_4_fu_86 <= accum_1_9_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        accum_1_5_fu_90 <= accum_0_0_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd0))) begin
        accum_1_5_fu_90 <= accum_1_9_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        accum_1_6_fu_98 <= accum_2_0_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd2))) begin
        accum_1_6_fu_98 <= accum_1_9_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        accum_1_7_fu_102 <= accum_3_0_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd3))) begin
        accum_1_7_fu_102 <= accum_1_9_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        accum_1_fu_74 <= accum_load33_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd0))) begin
        accum_1_fu_74 <= accum_1_9_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_fu_247_p2 == 1'd0))) begin
            j_fu_70 <= add_ln44_fu_253_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_70 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln44_reg_417 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_load_reg_431 <= A_q0;
        tmp_reg_436 <= tmp_fu_289_p6;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        accum_1_9_reg_446 <= grp_fu_96_p_dout0;
        icmp_ln44_reg_417 <= icmp_ln44_fu_247_p2;
        trunc_ln45_1_reg_426_pp0_iter1_reg <= trunc_ln45_1_reg_426;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln44_fu_247_p2 == 1'd0))) begin
        trunc_ln45_1_reg_426 <= trunc_ln45_1_fu_268_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln44_reg_417 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        accum_load_10_out_ap_vld = 1'b1;
    end else begin
        accum_load_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln44_reg_417 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        accum_load_11_out_ap_vld = 1'b1;
    end else begin
        accum_load_11_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln44_reg_417 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        accum_load_9_out_ap_vld = 1'b1;
    end else begin
        accum_load_9_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln44_reg_417 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        accum_load_out_ap_vld = 1'b1;
    end else begin
        accum_load_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln44_reg_417 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd1))) begin
        ap_sig_allocacmp_accum_1_2_load = accum_1_9_reg_446;
    end else begin
        ap_sig_allocacmp_accum_1_2_load = accum_1_2_fu_94;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd0))) begin
        ap_sig_allocacmp_accum_1_5_load = accum_1_9_reg_446;
    end else begin
        ap_sig_allocacmp_accum_1_5_load = accum_1_5_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd2))) begin
        ap_sig_allocacmp_accum_1_6_load = accum_1_9_reg_446;
    end else begin
        ap_sig_allocacmp_accum_1_6_load = accum_1_6_fu_98;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln45_1_reg_426_pp0_iter1_reg == 2'd3))) begin
        ap_sig_allocacmp_accum_1_7_load = accum_1_9_reg_446;
    end else begin
        ap_sig_allocacmp_accum_1_7_load = accum_1_7_fu_102;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_3 = 11'd0;
    end else begin
        ap_sig_allocacmp_j_3 = j_fu_70;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = zext_ln45_fu_263_p1;

assign accum_load_10_out = accum_1_3_fu_82;

assign accum_load_11_out = accum_1_4_fu_86;

assign accum_load_9_out = accum_1_1_fu_78;

assign accum_load_out = accum_1_fu_74;

assign add_ln44_fu_253_p2 = (ap_sig_allocacmp_j_3 + 11'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage7_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage8_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign bitcast_ln45_fu_302_p1 = A_load_reg_431;

assign grp_fu_96_p_ce = 1'b1;

assign grp_fu_96_p_din0 = tmp_reg_436;

assign grp_fu_96_p_din1 = bitcast_ln45_fu_302_p1;

assign grp_fu_96_p_opcode = 2'd0;

assign icmp_ln44_fu_247_p2 = ((ap_sig_allocacmp_j_3 == 11'd1024) ? 1'b1 : 1'b0);

assign trunc_ln45_1_fu_268_p1 = ap_sig_allocacmp_j_3[1:0];

assign trunc_ln45_fu_259_p1 = ap_sig_allocacmp_j_3[9:0];

assign zext_ln45_fu_263_p1 = trunc_ln45_fu_259_p1;

endmodule //top_reduce_accum4_ii_is_3_Pipeline_accum4
