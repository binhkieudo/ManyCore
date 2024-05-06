// Generated by CIRCT unknown git version
// Standard header to adapt well known macros to our needs.
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_MEM_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_MEM_INIT
`endif // not def RANDOMIZE

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define 'PRINTF_COND' to add an extra gate to prints.
`ifndef PRINTF_COND_
  `ifdef PRINTF_COND
    `define PRINTF_COND_ (`PRINTF_COND)
  `else  // PRINTF_COND
    `define PRINTF_COND_ 1
  `endif // PRINTF_COND
`endif // not def PRINTF_COND_

// Users can define 'ASSERT_VERBOSE_COND' to add an extra gate to assert error printing.
`ifndef ASSERT_VERBOSE_COND_
  `ifdef ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ (`ASSERT_VERBOSE_COND)
  `else  // ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ 1
  `endif // ASSERT_VERBOSE_COND
`endif // not def ASSERT_VERBOSE_COND_

// Users can define 'STOP_COND' to add an extra gate to stop conditions.
`ifndef STOP_COND_
  `ifdef STOP_COND
    `define STOP_COND_ (`STOP_COND)
  `else  // STOP_COND
    `define STOP_COND_ 1
  `endif // STOP_COND
`endif // not def STOP_COND_

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_

module Frontend(
  input         clock,
                reset,
                auto_icache_master_out_a_ready,
                auto_icache_master_out_d_valid,
  input  [2:0]  auto_icache_master_out_d_bits_opcode,
  input  [3:0]  auto_icache_master_out_d_bits_size,
  input  [63:0] auto_icache_master_out_d_bits_data,
  input         auto_icache_master_out_d_bits_corrupt,
                io_cpu_might_request,
                io_cpu_req_valid,
  input  [33:0] io_cpu_req_bits_pc,
  input         io_cpu_req_bits_speculative,
                io_cpu_sfence_valid,
                io_cpu_resp_ready,
                io_cpu_btb_update_valid,
                io_cpu_bht_update_valid,
                io_cpu_flush_icache,
                io_ptw_status_debug,
                io_ptw_pmp_0_cfg_l,
  input  [1:0]  io_ptw_pmp_0_cfg_a,
  input         io_ptw_pmp_0_cfg_x,
  input  [29:0] io_ptw_pmp_0_addr,
  input  [31:0] io_ptw_pmp_0_mask,
  input         io_ptw_pmp_1_cfg_l,
  input  [1:0]  io_ptw_pmp_1_cfg_a,
  input         io_ptw_pmp_1_cfg_x,
  input  [29:0] io_ptw_pmp_1_addr,
  input  [31:0] io_ptw_pmp_1_mask,
  input         io_ptw_pmp_2_cfg_l,
  input  [1:0]  io_ptw_pmp_2_cfg_a,
  input         io_ptw_pmp_2_cfg_x,
  input  [29:0] io_ptw_pmp_2_addr,
  input  [31:0] io_ptw_pmp_2_mask,
  input         io_ptw_pmp_3_cfg_l,
  input  [1:0]  io_ptw_pmp_3_cfg_a,
  input         io_ptw_pmp_3_cfg_x,
  input  [29:0] io_ptw_pmp_3_addr,
  input  [31:0] io_ptw_pmp_3_mask,
  input         io_ptw_pmp_4_cfg_l,
  input  [1:0]  io_ptw_pmp_4_cfg_a,
  input         io_ptw_pmp_4_cfg_x,
  input  [29:0] io_ptw_pmp_4_addr,
  input  [31:0] io_ptw_pmp_4_mask,
  input         io_ptw_pmp_5_cfg_l,
  input  [1:0]  io_ptw_pmp_5_cfg_a,
  input         io_ptw_pmp_5_cfg_x,
  input  [29:0] io_ptw_pmp_5_addr,
  input  [31:0] io_ptw_pmp_5_mask,
  input         io_ptw_pmp_6_cfg_l,
  input  [1:0]  io_ptw_pmp_6_cfg_a,
  input         io_ptw_pmp_6_cfg_x,
  input  [29:0] io_ptw_pmp_6_addr,
  input  [31:0] io_ptw_pmp_6_mask,
  input         io_ptw_pmp_7_cfg_l,
  input  [1:0]  io_ptw_pmp_7_cfg_a,
  input         io_ptw_pmp_7_cfg_x,
  input  [29:0] io_ptw_pmp_7_addr,
  input  [31:0] io_ptw_pmp_7_mask,
  input  [63:0] io_ptw_customCSRs_csrs_0_value,
  output        auto_icache_master_out_a_valid,
  output [31:0] auto_icache_master_out_a_bits_address,
  output        io_cpu_resp_valid,
                io_cpu_resp_bits_btb_taken,
                io_cpu_resp_bits_btb_bridx,
  output [33:0] io_cpu_resp_bits_pc,
  output [31:0] io_cpu_resp_bits_data,
  output        io_cpu_resp_bits_xcpt_pf_inst,
                io_cpu_resp_bits_xcpt_gf_inst,
                io_cpu_resp_bits_xcpt_ae_inst,
                io_cpu_resp_bits_replay,
                io_cpu_gpa_valid
);

  wire [33:0] _io_cpu_npc_T_3;	// @[Frontend.scala:376:27]
  wire        _fq_io_enq_valid_T_6;	// @[Frontend.scala:179:52]
  wire [31:0] _tlb_io_resp_paddr;	// @[Frontend.scala:100:19]
  wire        _tlb_io_resp_pf_inst;	// @[Frontend.scala:100:19]
  wire        _tlb_io_resp_ae_inst;	// @[Frontend.scala:100:19]
  wire        _tlb_io_resp_cacheable;	// @[Frontend.scala:100:19]
  wire        _fq_io_enq_ready;	// @[Frontend.scala:86:64]
  wire [4:0]  _fq_io_mask;	// @[Frontend.scala:86:64]
  wire        _icache_io_resp_valid;	// @[Frontend.scala:65:26]
  wire [31:0] _icache_io_resp_bits_data;	// @[Frontend.scala:65:26]
  wire        _icache_io_resp_bits_replay;	// @[Frontend.scala:65:26]
  wire        _icache_io_resp_bits_ae;	// @[Frontend.scala:65:26]
  reg         s1_valid;	// @[Frontend.scala:102:21]
  reg         s2_valid;	// @[Frontend.scala:103:25]
  wire        s0_valid = io_cpu_req_valid | ~(_fq_io_mask[2]) | ~(_fq_io_mask[3]) & (~s1_valid | ~s2_valid) | ~(_fq_io_mask[4]) & ~s1_valid & ~s2_valid;	// @[Frontend.scala:86:64, :102:21, :103:25, :105:{5,16}, :106:{6,17,41,45,55,58}, :107:{6,17,41}, :108:35]
  reg  [33:0] s1_pc;	// @[Frontend.scala:110:18]
  reg         s1_speculative;	// @[Frontend.scala:111:27]
  reg  [33:0] s2_pc;	// @[Frontend.scala:112:22]
  reg         s2_tlb_resp_miss;	// @[Frontend.scala:116:24]
  reg         s2_tlb_resp_pf_inst;	// @[Frontend.scala:116:24]
  reg         s2_tlb_resp_gf_inst;	// @[Frontend.scala:116:24]
  reg         s2_tlb_resp_ae_inst;	// @[Frontend.scala:116:24]
  reg         s2_tlb_resp_cacheable;	// @[Frontend.scala:116:24]
  wire        s2_xcpt = s2_tlb_resp_ae_inst | s2_tlb_resp_pf_inst | s2_tlb_resp_gf_inst;	// @[Frontend.scala:116:24, :117:60]
  reg         s2_speculative;	// @[Frontend.scala:118:31]
  wire        _T_23 = _fq_io_enq_ready & _fq_io_enq_valid_T_6;	// @[Decoupled.scala:51:35, Frontend.scala:86:64, :179:52]
  reg         s2_replay_REG;	// @[Frontend.scala:129:56]
  wire        s2_replay = s2_valid & ~_T_23 | s2_replay_REG;	// @[Decoupled.scala:51:35, Frontend.scala:103:25, :129:{26,29,46,56}]
  wire        _icache_io_s2_kill_T_2 = s2_speculative & ~(s2_tlb_resp_cacheable & ~(io_ptw_customCSRs_csrs_0_value[3])) | s2_xcpt;	// @[CustomCSRs.scala:40:69, Frontend.scala:116:24, :117:60, :118:31, :174:{59,62}, :175:{39,42,71}]
  reg         fq_io_enq_valid_REG;	// @[Frontend.scala:179:29]
  assign _fq_io_enq_valid_T_6 = fq_io_enq_valid_REG & s2_valid & (_icache_io_resp_valid | ~s2_tlb_resp_miss & _icache_io_s2_kill_T_2);	// @[Frontend.scala:65:26, :103:25, :116:24, :175:71, :179:{29,52,133,137,155}]
  assign _io_cpu_npc_T_3 = ~(~(io_cpu_req_valid ? io_cpu_req_bits_pc : s2_replay ? s2_pc : ~(~s1_pc | 34'h3) + 34'h4) | 34'h1);	// @[Frontend.scala:110:18, :112:22, :123:{20,22,29}, :124:25, :129:46, :130:16, :181:28, :376:{27,29,33}]
  reg         gpa_valid;	// @[Frontend.scala:348:22]
  always @(posedge clock) begin
    s1_valid <= s0_valid;	// @[Frontend.scala:102:21, :108:35]
    s1_pc <= _io_cpu_npc_T_3;	// @[Frontend.scala:110:18, :376:27]
    if (io_cpu_req_valid)
      s1_speculative <= io_cpu_req_bits_speculative;	// @[Frontend.scala:111:27]
    else if (s2_replay)	// @[Frontend.scala:129:46]
      s1_speculative <= s2_speculative;	// @[Frontend.scala:111:27, :118:31]
    else	// @[Frontend.scala:129:46]
      s1_speculative <= s1_speculative | s2_valid & ~s2_speculative;	// @[Frontend.scala:103:25, :111:27, :118:31, :136:{41,53,56}]
    s2_tlb_resp_miss <= s2_replay & s2_tlb_resp_miss;	// @[Frontend.scala:116:24, :129:46, :142:21, :146:17]
    if (~s2_replay) begin	// @[Frontend.scala:129:46]
      s2_tlb_resp_pf_inst <= _tlb_io_resp_pf_inst;	// @[Frontend.scala:100:19, :116:24]
      s2_tlb_resp_ae_inst <= _tlb_io_resp_ae_inst;	// @[Frontend.scala:100:19, :116:24]
      s2_tlb_resp_cacheable <= _tlb_io_resp_cacheable;	// @[Frontend.scala:100:19, :116:24]
    end
    s2_tlb_resp_gf_inst <= s2_replay & s2_tlb_resp_gf_inst;	// @[Frontend.scala:116:24, :129:46, :142:21, :146:17]
    fq_io_enq_valid_REG <= s1_valid;	// @[Frontend.scala:102:21, :179:29]
    if (reset) begin
      s2_valid <= 1'h0;	// @[Frontend.scala:103:25]
      s2_pc <= 34'h10000;	// @[Frontend.scala:112:22]
      s2_speculative <= 1'h0;	// @[Frontend.scala:118:31]
      s2_replay_REG <= 1'h1;	// @[Frontend.scala:129:56]
    end
    else begin
      s2_valid <= ~s2_replay & ~io_cpu_req_valid;	// @[Frontend.scala:103:25, :129:46, :141:12, :142:{9,21}, :143:{14,17}]
      if (~s2_replay) begin	// @[Frontend.scala:129:46]
        s2_pc <= s1_pc;	// @[Frontend.scala:110:18, :112:22]
        s2_speculative <= s1_speculative;	// @[Frontend.scala:111:27, :118:31]
      end
      s2_replay_REG <= s2_replay & ~s0_valid;	// @[Frontend.scala:108:35, :129:{46,56,67,70}]
    end
    if (io_cpu_req_valid)
      gpa_valid <= 1'h0;	// @[Frontend.scala:348:22]
    else
      gpa_valid <= _T_23 & s2_tlb_resp_gf_inst | gpa_valid;	// @[Decoupled.scala:51:35, Frontend.scala:116:24, :348:22, :350:{24,48}, :354:15]
  end // always @(posedge)
  `ifndef SYNTHESIS
    always @(posedge clock) begin	// @[Frontend.scala:91:9]
      if (~reset & ~(~(io_cpu_req_valid | io_cpu_sfence_valid | io_cpu_flush_icache | io_cpu_bht_update_valid | io_cpu_btb_update_valid) | io_cpu_might_request)) begin	// @[Frontend.scala:91:{9,10,102,130}]
        if (`ASSERT_VERBOSE_COND_)	// @[Frontend.scala:91:9]
          $error("Assertion failed\n    at Frontend.scala:91 assert(!(io.cpu.req.valid || io.cpu.sfence.valid || io.cpu.flush_icache || io.cpu.bht_update.valid || io.cpu.btb_update.valid) || io.cpu.might_request)\n");	// @[Frontend.scala:91:9]
        if (`STOP_COND_)	// @[Frontend.scala:91:9]
          $fatal;	// @[Frontend.scala:91:9]
      end
      if (~reset & s2_speculative & io_ptw_customCSRs_csrs_0_value[3] & ~_icache_io_s2_kill_T_2) begin	// @[CustomCSRs.scala:40:69, Frontend.scala:118:31, :175:71, :189:{9,113}]
        if (`ASSERT_VERBOSE_COND_)	// @[Frontend.scala:189:9]
          $error("Assertion failed\n    at Frontend.scala:189 assert(!(s2_speculative && io.ptw.customCSRs.asInstanceOf[RocketCustomCSRs].disableSpeculativeICacheRefill && !icache.io.s2_kill))\n");	// @[Frontend.scala:189:9]
        if (`STOP_COND_)	// @[Frontend.scala:189:9]
          $fatal;	// @[Frontend.scala:189:9]
      end
    end // always @(posedge)
    `ifdef FIRRTL_BEFORE_INITIAL
      `FIRRTL_BEFORE_INITIAL
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM_0;
    logic [31:0] _RANDOM_1;
    logic [31:0] _RANDOM_2;
    logic [31:0] _RANDOM_3;
    logic [31:0] _RANDOM_4;
    logic [31:0] _RANDOM_5;
    logic [31:0] _RANDOM_6;
    logic [31:0] _RANDOM_7;
    initial begin
      `ifdef INIT_RANDOM_PROLOG_
        `INIT_RANDOM_PROLOG_
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT
        _RANDOM_0 = `RANDOM;
        _RANDOM_1 = `RANDOM;
        _RANDOM_2 = `RANDOM;
        _RANDOM_3 = `RANDOM;
        _RANDOM_4 = `RANDOM;
        _RANDOM_5 = `RANDOM;
        _RANDOM_6 = `RANDOM;
        _RANDOM_7 = `RANDOM;
        s1_valid = _RANDOM_0[1];	// @[Frontend.scala:102:21]
        s2_valid = _RANDOM_0[2];	// @[Frontend.scala:102:21, :103:25]
        s1_pc = {_RANDOM_0[31:3], _RANDOM_1[4:0]};	// @[Frontend.scala:102:21, :110:18]
        s1_speculative = _RANDOM_1[5];	// @[Frontend.scala:110:18, :111:27]
        s2_pc = {_RANDOM_1[31:6], _RANDOM_2[7:0]};	// @[Frontend.scala:110:18, :112:22]
        s2_tlb_resp_miss = _RANDOM_3[25];	// @[Frontend.scala:116:24]
        s2_tlb_resp_pf_inst = _RANDOM_5[31];	// @[Frontend.scala:116:24]
        s2_tlb_resp_gf_inst = _RANDOM_6[2];	// @[Frontend.scala:116:24]
        s2_tlb_resp_ae_inst = _RANDOM_6[5];	// @[Frontend.scala:116:24]
        s2_tlb_resp_cacheable = _RANDOM_6[9];	// @[Frontend.scala:116:24]
        s2_speculative = _RANDOM_6[12];	// @[Frontend.scala:116:24, :118:31]
        s2_replay_REG = _RANDOM_6[31];	// @[Frontend.scala:116:24, :129:56]
        fq_io_enq_valid_REG = _RANDOM_7[2];	// @[Frontend.scala:179:29]
        gpa_valid = _RANDOM_7[3];	// @[Frontend.scala:179:29, :348:22]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // not def SYNTHESIS
  ICache icache (	// @[Frontend.scala:65:26]
    .clock                          (clock),
    .reset                          (reset),
    .auto_master_out_a_ready        (auto_icache_master_out_a_ready),
    .auto_master_out_d_valid        (auto_icache_master_out_d_valid),
    .auto_master_out_d_bits_opcode  (auto_icache_master_out_d_bits_opcode),
    .auto_master_out_d_bits_size    (auto_icache_master_out_d_bits_size),
    .auto_master_out_d_bits_data    (auto_icache_master_out_d_bits_data),
    .auto_master_out_d_bits_corrupt (auto_icache_master_out_d_bits_corrupt),
    .io_req_valid                   (s0_valid),	// @[Frontend.scala:108:35]
    .io_req_bits_addr               (_io_cpu_npc_T_3[32:0]),	// @[Frontend.scala:169:27, :376:27]
    .io_s1_paddr                    (_tlb_io_resp_paddr),	// @[Frontend.scala:100:19]
    .io_s1_kill                     (io_cpu_req_valid | s2_replay),	// @[Frontend.scala:129:46, :173:56]
    .io_s2_kill                     (_icache_io_s2_kill_T_2),	// @[Frontend.scala:175:71]
    .io_invalidate                  (io_cpu_flush_icache),
    .auto_master_out_a_valid        (auto_icache_master_out_a_valid),
    .auto_master_out_a_bits_address (auto_icache_master_out_a_bits_address),
    .io_resp_valid                  (_icache_io_resp_valid),
    .io_resp_bits_data              (_icache_io_resp_bits_data),
    .io_resp_bits_replay            (_icache_io_resp_bits_replay),
    .io_resp_bits_ae                (_icache_io_resp_bits_ae)
  );
  ShiftQueue fq (	// @[Frontend.scala:86:64]
    .clock                    (clock),
    .reset                    (reset | io_cpu_req_valid),	// @[Frontend.scala:86:35]
    .io_enq_valid             (_fq_io_enq_valid_T_6),	// @[Frontend.scala:179:52]
    .io_enq_bits_btb_bridx    (1'h0),
    .io_enq_bits_pc           (s2_pc),	// @[Frontend.scala:112:22]
    .io_enq_bits_data         (_icache_io_resp_bits_data),	// @[Frontend.scala:65:26]
    .io_enq_bits_xcpt_pf_inst (s2_tlb_resp_pf_inst),	// @[Frontend.scala:116:24]
    .io_enq_bits_xcpt_gf_inst (s2_tlb_resp_gf_inst),	// @[Frontend.scala:116:24]
    .io_enq_bits_xcpt_ae_inst (_icache_io_resp_valid & _icache_io_resp_bits_ae | s2_tlb_resp_ae_inst),	// @[Frontend.scala:65:26, :116:24, :188:23, :190:{30,57,87}]
    .io_enq_bits_replay       (_icache_io_resp_bits_replay | _icache_io_s2_kill_T_2 & ~_icache_io_resp_valid & ~s2_xcpt),	// @[Frontend.scala:65:26, :117:60, :175:71, :185:{56,80,102,105}]
    .io_deq_ready             (io_cpu_resp_ready),
    .io_enq_ready             (_fq_io_enq_ready),
    .io_deq_valid             (io_cpu_resp_valid),
    .io_deq_bits_btb_taken    (io_cpu_resp_bits_btb_taken),
    .io_deq_bits_btb_bridx    (io_cpu_resp_bits_btb_bridx),
    .io_deq_bits_pc           (io_cpu_resp_bits_pc),
    .io_deq_bits_data         (io_cpu_resp_bits_data),
    .io_deq_bits_xcpt_pf_inst (io_cpu_resp_bits_xcpt_pf_inst),
    .io_deq_bits_xcpt_gf_inst (io_cpu_resp_bits_xcpt_gf_inst),
    .io_deq_bits_xcpt_ae_inst (io_cpu_resp_bits_xcpt_ae_inst),
    .io_deq_bits_replay       (io_cpu_resp_bits_replay),
    .io_mask                  (_fq_io_mask)
  );
  TLB_1 tlb (	// @[Frontend.scala:100:19]
    .io_req_bits_vaddr   (s1_pc),	// @[Frontend.scala:110:18]
    .io_ptw_status_debug (io_ptw_status_debug),
    .io_ptw_pmp_0_cfg_l  (io_ptw_pmp_0_cfg_l),
    .io_ptw_pmp_0_cfg_a  (io_ptw_pmp_0_cfg_a),
    .io_ptw_pmp_0_cfg_x  (io_ptw_pmp_0_cfg_x),
    .io_ptw_pmp_0_addr   (io_ptw_pmp_0_addr),
    .io_ptw_pmp_0_mask   (io_ptw_pmp_0_mask),
    .io_ptw_pmp_1_cfg_l  (io_ptw_pmp_1_cfg_l),
    .io_ptw_pmp_1_cfg_a  (io_ptw_pmp_1_cfg_a),
    .io_ptw_pmp_1_cfg_x  (io_ptw_pmp_1_cfg_x),
    .io_ptw_pmp_1_addr   (io_ptw_pmp_1_addr),
    .io_ptw_pmp_1_mask   (io_ptw_pmp_1_mask),
    .io_ptw_pmp_2_cfg_l  (io_ptw_pmp_2_cfg_l),
    .io_ptw_pmp_2_cfg_a  (io_ptw_pmp_2_cfg_a),
    .io_ptw_pmp_2_cfg_x  (io_ptw_pmp_2_cfg_x),
    .io_ptw_pmp_2_addr   (io_ptw_pmp_2_addr),
    .io_ptw_pmp_2_mask   (io_ptw_pmp_2_mask),
    .io_ptw_pmp_3_cfg_l  (io_ptw_pmp_3_cfg_l),
    .io_ptw_pmp_3_cfg_a  (io_ptw_pmp_3_cfg_a),
    .io_ptw_pmp_3_cfg_x  (io_ptw_pmp_3_cfg_x),
    .io_ptw_pmp_3_addr   (io_ptw_pmp_3_addr),
    .io_ptw_pmp_3_mask   (io_ptw_pmp_3_mask),
    .io_ptw_pmp_4_cfg_l  (io_ptw_pmp_4_cfg_l),
    .io_ptw_pmp_4_cfg_a  (io_ptw_pmp_4_cfg_a),
    .io_ptw_pmp_4_cfg_x  (io_ptw_pmp_4_cfg_x),
    .io_ptw_pmp_4_addr   (io_ptw_pmp_4_addr),
    .io_ptw_pmp_4_mask   (io_ptw_pmp_4_mask),
    .io_ptw_pmp_5_cfg_l  (io_ptw_pmp_5_cfg_l),
    .io_ptw_pmp_5_cfg_a  (io_ptw_pmp_5_cfg_a),
    .io_ptw_pmp_5_cfg_x  (io_ptw_pmp_5_cfg_x),
    .io_ptw_pmp_5_addr   (io_ptw_pmp_5_addr),
    .io_ptw_pmp_5_mask   (io_ptw_pmp_5_mask),
    .io_ptw_pmp_6_cfg_l  (io_ptw_pmp_6_cfg_l),
    .io_ptw_pmp_6_cfg_a  (io_ptw_pmp_6_cfg_a),
    .io_ptw_pmp_6_cfg_x  (io_ptw_pmp_6_cfg_x),
    .io_ptw_pmp_6_addr   (io_ptw_pmp_6_addr),
    .io_ptw_pmp_6_mask   (io_ptw_pmp_6_mask),
    .io_ptw_pmp_7_cfg_l  (io_ptw_pmp_7_cfg_l),
    .io_ptw_pmp_7_cfg_a  (io_ptw_pmp_7_cfg_a),
    .io_ptw_pmp_7_cfg_x  (io_ptw_pmp_7_cfg_x),
    .io_ptw_pmp_7_addr   (io_ptw_pmp_7_addr),
    .io_ptw_pmp_7_mask   (io_ptw_pmp_7_mask),
    .io_resp_paddr       (_tlb_io_resp_paddr),
    .io_resp_pf_inst     (_tlb_io_resp_pf_inst),
    .io_resp_ae_inst     (_tlb_io_resp_ae_inst),
    .io_resp_cacheable   (_tlb_io_resp_cacheable)
  );
  assign io_cpu_gpa_valid = gpa_valid;	// @[Frontend.scala:348:22]
endmodule

