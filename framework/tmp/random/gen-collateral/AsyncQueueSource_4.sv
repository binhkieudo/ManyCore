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

module AsyncQueueSource_4(
  input         clock,
                reset,
                io_enq_valid,
  input  [63:0] io_enq_bits_data,
  input  [7:0]  io_enq_bits_strb,
  input         io_enq_bits_last,
  input  [3:0]  io_async_ridx,
  input         io_async_safe_ridx_valid,
                io_async_safe_sink_reset_n,
  output        io_enq_ready,
  output [63:0] io_async_mem_0_data,
  output [7:0]  io_async_mem_0_strb,
  output        io_async_mem_0_last,
  output [63:0] io_async_mem_1_data,
  output [7:0]  io_async_mem_1_strb,
  output        io_async_mem_1_last,
  output [63:0] io_async_mem_2_data,
  output [7:0]  io_async_mem_2_strb,
  output        io_async_mem_2_last,
  output [63:0] io_async_mem_3_data,
  output [7:0]  io_async_mem_3_strb,
  output        io_async_mem_3_last,
  output [63:0] io_async_mem_4_data,
  output [7:0]  io_async_mem_4_strb,
  output        io_async_mem_4_last,
  output [63:0] io_async_mem_5_data,
  output [7:0]  io_async_mem_5_strb,
  output        io_async_mem_5_last,
  output [63:0] io_async_mem_6_data,
  output [7:0]  io_async_mem_6_strb,
  output        io_async_mem_6_last,
  output [63:0] io_async_mem_7_data,
  output [7:0]  io_async_mem_7_strb,
  output        io_async_mem_7_last,
  output [3:0]  io_async_widx,
  output        io_async_safe_widx_valid,
                io_async_safe_source_reset_n
);

  wire        _io_enq_ready_output;	// @[AsyncQueue.scala:89:29]
  wire        _sink_valid_io_out;	// @[AsyncQueue.scala:104:30]
  wire        _sink_extend_io_out;	// @[AsyncQueue.scala:103:30]
  wire        _source_valid_0_io_out;	// @[AsyncQueue.scala:100:32]
  wire [3:0]  _ridx_ridx_gray_io_q;	// @[ShiftReg.scala:45:23]
  reg  [63:0] mem_0_data;	// @[AsyncQueue.scala:80:16]
  reg  [7:0]  mem_0_strb;	// @[AsyncQueue.scala:80:16]
  reg         mem_0_last;	// @[AsyncQueue.scala:80:16]
  reg  [63:0] mem_1_data;	// @[AsyncQueue.scala:80:16]
  reg  [7:0]  mem_1_strb;	// @[AsyncQueue.scala:80:16]
  reg         mem_1_last;	// @[AsyncQueue.scala:80:16]
  reg  [63:0] mem_2_data;	// @[AsyncQueue.scala:80:16]
  reg  [7:0]  mem_2_strb;	// @[AsyncQueue.scala:80:16]
  reg         mem_2_last;	// @[AsyncQueue.scala:80:16]
  reg  [63:0] mem_3_data;	// @[AsyncQueue.scala:80:16]
  reg  [7:0]  mem_3_strb;	// @[AsyncQueue.scala:80:16]
  reg         mem_3_last;	// @[AsyncQueue.scala:80:16]
  reg  [63:0] mem_4_data;	// @[AsyncQueue.scala:80:16]
  reg  [7:0]  mem_4_strb;	// @[AsyncQueue.scala:80:16]
  reg         mem_4_last;	// @[AsyncQueue.scala:80:16]
  reg  [63:0] mem_5_data;	// @[AsyncQueue.scala:80:16]
  reg  [7:0]  mem_5_strb;	// @[AsyncQueue.scala:80:16]
  reg         mem_5_last;	// @[AsyncQueue.scala:80:16]
  reg  [63:0] mem_6_data;	// @[AsyncQueue.scala:80:16]
  reg  [7:0]  mem_6_strb;	// @[AsyncQueue.scala:80:16]
  reg         mem_6_last;	// @[AsyncQueue.scala:80:16]
  reg  [63:0] mem_7_data;	// @[AsyncQueue.scala:80:16]
  reg  [7:0]  mem_7_strb;	// @[AsyncQueue.scala:80:16]
  reg         mem_7_last;	// @[AsyncQueue.scala:80:16]
  wire        _T = _io_enq_ready_output & io_enq_valid;	// @[AsyncQueue.scala:89:29, Decoupled.scala:51:35]
  reg  [3:0]  widx_widx_bin;	// @[AsyncQueue.scala:52:25]
  reg         ready_reg;	// @[AsyncQueue.scala:88:56]
  assign _io_enq_ready_output = ready_reg & _sink_valid_io_out;	// @[AsyncQueue.scala:88:56, :89:29, :104:30]
  reg  [3:0]  widx_gray;	// @[AsyncQueue.scala:91:55]
  wire [2:0]  index = widx_gray[2:0] ^ {widx_gray[3], 2'h0};	// @[AsyncQueue.scala:85:{52,64,80,93}, :91:55]
  always @(posedge clock) begin
    if (_T & index == 3'h0) begin	// @[AsyncQueue.scala:52:25, :80:16, :85:64, :86:{24,37}, Decoupled.scala:51:35]
      mem_0_data <= io_enq_bits_data;	// @[AsyncQueue.scala:80:16]
      mem_0_strb <= io_enq_bits_strb;	// @[AsyncQueue.scala:80:16]
      mem_0_last <= io_enq_bits_last;	// @[AsyncQueue.scala:80:16]
    end
    if (_T & index == 3'h1) begin	// @[AsyncQueue.scala:80:16, :85:64, :86:{24,37}, Decoupled.scala:51:35]
      mem_1_data <= io_enq_bits_data;	// @[AsyncQueue.scala:80:16]
      mem_1_strb <= io_enq_bits_strb;	// @[AsyncQueue.scala:80:16]
      mem_1_last <= io_enq_bits_last;	// @[AsyncQueue.scala:80:16]
    end
    if (_T & index == 3'h2) begin	// @[AsyncQueue.scala:80:16, :85:64, :86:{24,37}, Decoupled.scala:51:35]
      mem_2_data <= io_enq_bits_data;	// @[AsyncQueue.scala:80:16]
      mem_2_strb <= io_enq_bits_strb;	// @[AsyncQueue.scala:80:16]
      mem_2_last <= io_enq_bits_last;	// @[AsyncQueue.scala:80:16]
    end
    if (_T & index == 3'h3) begin	// @[AsyncQueue.scala:80:16, :85:64, :86:{24,37}, Decoupled.scala:51:35]
      mem_3_data <= io_enq_bits_data;	// @[AsyncQueue.scala:80:16]
      mem_3_strb <= io_enq_bits_strb;	// @[AsyncQueue.scala:80:16]
      mem_3_last <= io_enq_bits_last;	// @[AsyncQueue.scala:80:16]
    end
    if (_T & index == 3'h4) begin	// @[AsyncQueue.scala:80:16, :85:64, :86:{24,37}, Decoupled.scala:51:35]
      mem_4_data <= io_enq_bits_data;	// @[AsyncQueue.scala:80:16]
      mem_4_strb <= io_enq_bits_strb;	// @[AsyncQueue.scala:80:16]
      mem_4_last <= io_enq_bits_last;	// @[AsyncQueue.scala:80:16]
    end
    if (_T & index == 3'h5) begin	// @[AsyncQueue.scala:80:16, :85:64, :86:{24,37}, Decoupled.scala:51:35]
      mem_5_data <= io_enq_bits_data;	// @[AsyncQueue.scala:80:16]
      mem_5_strb <= io_enq_bits_strb;	// @[AsyncQueue.scala:80:16]
      mem_5_last <= io_enq_bits_last;	// @[AsyncQueue.scala:80:16]
    end
    if (_T & index == 3'h6) begin	// @[AsyncQueue.scala:80:16, :85:64, :86:{24,37}, Decoupled.scala:51:35]
      mem_6_data <= io_enq_bits_data;	// @[AsyncQueue.scala:80:16]
      mem_6_strb <= io_enq_bits_strb;	// @[AsyncQueue.scala:80:16]
      mem_6_last <= io_enq_bits_last;	// @[AsyncQueue.scala:80:16]
    end
    if (_T & (&index)) begin	// @[AsyncQueue.scala:80:16, :85:64, :86:{24,37}, Decoupled.scala:51:35]
      mem_7_data <= io_enq_bits_data;	// @[AsyncQueue.scala:80:16]
      mem_7_strb <= io_enq_bits_strb;	// @[AsyncQueue.scala:80:16]
      mem_7_last <= io_enq_bits_last;	// @[AsyncQueue.scala:80:16]
    end
  end // always @(posedge)
  wire [3:0]  _widx_incremented_T_1 = widx_widx_bin + {3'h0, _T};	// @[AsyncQueue.scala:52:25, :53:43, Decoupled.scala:51:35]
  wire [3:0]  widx_incremented = _sink_valid_io_out ? _widx_incremented_T_1 : 4'h0;	// @[AsyncQueue.scala:53:{23,43}, :104:30]
  wire [3:0]  widx = widx_incremented ^ {1'h0, widx_incremented[3:1]};	// @[AsyncQueue.scala:53:23, :54:{17,32}, :80:16]
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      widx_widx_bin <= 4'h0;	// @[AsyncQueue.scala:52:25, :53:23]
      ready_reg <= 1'h0;	// @[AsyncQueue.scala:80:16, :88:56]
      widx_gray <= 4'h0;	// @[AsyncQueue.scala:53:23, :91:55]
    end
    else begin
      if (_sink_valid_io_out)	// @[AsyncQueue.scala:104:30]
        widx_widx_bin <= _widx_incremented_T_1;	// @[AsyncQueue.scala:52:25, :53:43]
      else	// @[AsyncQueue.scala:104:30]
        widx_widx_bin <= 4'h0;	// @[AsyncQueue.scala:52:25, :53:23]
      ready_reg <= _sink_valid_io_out & widx != (_ridx_ridx_gray_io_q ^ 4'hC);	// @[AsyncQueue.scala:54:17, :83:{26,34,44}, :88:56, :104:30, ShiftReg.scala:45:23]
      widx_gray <= widx;	// @[AsyncQueue.scala:54:17, :91:55]
    end
  end // always @(posedge, posedge)
  `ifndef SYNTHESIS
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
    logic [31:0] _RANDOM_8;
    logic [31:0] _RANDOM_9;
    logic [31:0] _RANDOM_10;
    logic [31:0] _RANDOM_11;
    logic [31:0] _RANDOM_12;
    logic [31:0] _RANDOM_13;
    logic [31:0] _RANDOM_14;
    logic [31:0] _RANDOM_15;
    logic [31:0] _RANDOM_16;
    logic [31:0] _RANDOM_17;
    logic [31:0] _RANDOM_18;
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
        _RANDOM_8 = `RANDOM;
        _RANDOM_9 = `RANDOM;
        _RANDOM_10 = `RANDOM;
        _RANDOM_11 = `RANDOM;
        _RANDOM_12 = `RANDOM;
        _RANDOM_13 = `RANDOM;
        _RANDOM_14 = `RANDOM;
        _RANDOM_15 = `RANDOM;
        _RANDOM_16 = `RANDOM;
        _RANDOM_17 = `RANDOM;
        _RANDOM_18 = `RANDOM;
        mem_0_data = {_RANDOM_0, _RANDOM_1};	// @[AsyncQueue.scala:80:16]
        mem_0_strb = _RANDOM_2[7:0];	// @[AsyncQueue.scala:80:16]
        mem_0_last = _RANDOM_2[8];	// @[AsyncQueue.scala:80:16]
        mem_1_data = {_RANDOM_2[31:9], _RANDOM_3, _RANDOM_4[8:0]};	// @[AsyncQueue.scala:80:16]
        mem_1_strb = _RANDOM_4[16:9];	// @[AsyncQueue.scala:80:16]
        mem_1_last = _RANDOM_4[17];	// @[AsyncQueue.scala:80:16]
        mem_2_data = {_RANDOM_4[31:18], _RANDOM_5, _RANDOM_6[17:0]};	// @[AsyncQueue.scala:80:16]
        mem_2_strb = _RANDOM_6[25:18];	// @[AsyncQueue.scala:80:16]
        mem_2_last = _RANDOM_6[26];	// @[AsyncQueue.scala:80:16]
        mem_3_data = {_RANDOM_6[31:27], _RANDOM_7, _RANDOM_8[26:0]};	// @[AsyncQueue.scala:80:16]
        mem_3_strb = {_RANDOM_8[31:27], _RANDOM_9[2:0]};	// @[AsyncQueue.scala:80:16]
        mem_3_last = _RANDOM_9[3];	// @[AsyncQueue.scala:80:16]
        mem_4_data = {_RANDOM_9[31:4], _RANDOM_10, _RANDOM_11[3:0]};	// @[AsyncQueue.scala:80:16]
        mem_4_strb = _RANDOM_11[11:4];	// @[AsyncQueue.scala:80:16]
        mem_4_last = _RANDOM_11[12];	// @[AsyncQueue.scala:80:16]
        mem_5_data = {_RANDOM_11[31:13], _RANDOM_12, _RANDOM_13[12:0]};	// @[AsyncQueue.scala:80:16]
        mem_5_strb = _RANDOM_13[20:13];	// @[AsyncQueue.scala:80:16]
        mem_5_last = _RANDOM_13[21];	// @[AsyncQueue.scala:80:16]
        mem_6_data = {_RANDOM_13[31:22], _RANDOM_14, _RANDOM_15[21:0]};	// @[AsyncQueue.scala:80:16]
        mem_6_strb = _RANDOM_15[29:22];	// @[AsyncQueue.scala:80:16]
        mem_6_last = _RANDOM_15[30];	// @[AsyncQueue.scala:80:16]
        mem_7_data = {_RANDOM_15[31], _RANDOM_16, _RANDOM_17[30:0]};	// @[AsyncQueue.scala:80:16]
        mem_7_strb = {_RANDOM_17[31], _RANDOM_18[6:0]};	// @[AsyncQueue.scala:80:16]
        mem_7_last = _RANDOM_18[7];	// @[AsyncQueue.scala:80:16]
        widx_widx_bin = _RANDOM_18[11:8];	// @[AsyncQueue.scala:52:25, :80:16]
        ready_reg = _RANDOM_18[12];	// @[AsyncQueue.scala:80:16, :88:56]
        widx_gray = _RANDOM_18[16:13];	// @[AsyncQueue.scala:80:16, :91:55]
      `endif // RANDOMIZE_REG_INIT
      `ifdef RANDOMIZE
        if (reset) begin
          widx_widx_bin = 4'h0;	// @[AsyncQueue.scala:52:25, :53:23]
          ready_reg = 1'h0;	// @[AsyncQueue.scala:80:16, :88:56]
          widx_gray = 4'h0;	// @[AsyncQueue.scala:53:23, :91:55]
        end
      `endif // RANDOMIZE
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // not def SYNTHESIS
  AsyncResetSynchronizerShiftReg_w4_d3_i0 ridx_ridx_gray (	// @[ShiftReg.scala:45:23]
    .clock (clock),
    .reset (reset),
    .io_d  (io_async_ridx),
    .io_q  (_ridx_ridx_gray_io_q)
  );
  AsyncValidSync_Arty100THarness_UNIQUIFIED source_valid_0 (	// @[AsyncQueue.scala:100:32]
    .io_in  (1'h1),	// @[AsyncQueue.scala:79:28]
    .clock  (clock),
    .reset  (reset | ~io_async_safe_sink_reset_n),	// @[AsyncQueue.scala:105:{43,46}]
    .io_out (_source_valid_0_io_out)
  );
  AsyncValidSync_Arty100THarness_UNIQUIFIED source_valid_1 (	// @[AsyncQueue.scala:101:32]
    .io_in  (_source_valid_0_io_out),	// @[AsyncQueue.scala:100:32]
    .clock  (clock),
    .reset  (reset | ~io_async_safe_sink_reset_n),	// @[AsyncQueue.scala:105:46, :106:43]
    .io_out (io_async_safe_widx_valid)
  );
  AsyncValidSync_Arty100THarness_UNIQUIFIED sink_extend (	// @[AsyncQueue.scala:103:30]
    .io_in  (io_async_safe_ridx_valid),
    .clock  (clock),
    .reset  (reset | ~io_async_safe_sink_reset_n),	// @[AsyncQueue.scala:105:46, :107:43]
    .io_out (_sink_extend_io_out)
  );
  AsyncValidSync_Arty100THarness_UNIQUIFIED sink_valid (	// @[AsyncQueue.scala:104:30]
    .io_in  (_sink_extend_io_out),	// @[AsyncQueue.scala:103:30]
    .clock  (clock),
    .reset  (reset),
    .io_out (_sink_valid_io_out)
  );
  assign io_enq_ready = _io_enq_ready_output;	// @[AsyncQueue.scala:89:29]
  assign io_async_mem_0_data = mem_0_data;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_0_strb = mem_0_strb;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_0_last = mem_0_last;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_1_data = mem_1_data;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_1_strb = mem_1_strb;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_1_last = mem_1_last;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_2_data = mem_2_data;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_2_strb = mem_2_strb;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_2_last = mem_2_last;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_3_data = mem_3_data;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_3_strb = mem_3_strb;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_3_last = mem_3_last;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_4_data = mem_4_data;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_4_strb = mem_4_strb;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_4_last = mem_4_last;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_5_data = mem_5_data;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_5_strb = mem_5_strb;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_5_last = mem_5_last;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_6_data = mem_6_data;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_6_strb = mem_6_strb;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_6_last = mem_6_last;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_7_data = mem_7_data;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_7_strb = mem_7_strb;	// @[AsyncQueue.scala:80:16]
  assign io_async_mem_7_last = mem_7_last;	// @[AsyncQueue.scala:80:16]
  assign io_async_widx = widx_gray;	// @[AsyncQueue.scala:91:55]
  assign io_async_safe_source_reset_n = ~reset;	// @[AsyncQueue.scala:121:27]
endmodule

