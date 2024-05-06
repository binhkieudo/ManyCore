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

module AsyncResetSynchronizerShiftReg_w4_d3_i0(
  input        clock,
               reset,
  input  [3:0] io_d,
  output [3:0] io_q
);

  wire _output_chain_3_io_q;	// @[ShiftReg.scala:45:23]
  wire _output_chain_2_io_q;	// @[ShiftReg.scala:45:23]
  wire _output_chain_1_io_q;	// @[ShiftReg.scala:45:23]
  wire _output_chain_io_q;	// @[ShiftReg.scala:45:23]
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_Arty100THarness_UNIQUIFIED output_chain (	// @[ShiftReg.scala:45:23]
    .clock (clock),
    .reset (reset),
    .io_d  (io_d[0]),	// @[SynchronizerReg.scala:87:41]
    .io_q  (_output_chain_io_q)
  );
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_Arty100THarness_UNIQUIFIED output_chain_1 (	// @[ShiftReg.scala:45:23]
    .clock (clock),
    .reset (reset),
    .io_d  (io_d[1]),	// @[SynchronizerReg.scala:87:41]
    .io_q  (_output_chain_1_io_q)
  );
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_Arty100THarness_UNIQUIFIED output_chain_2 (	// @[ShiftReg.scala:45:23]
    .clock (clock),
    .reset (reset),
    .io_d  (io_d[2]),	// @[SynchronizerReg.scala:87:41]
    .io_q  (_output_chain_2_io_q)
  );
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_Arty100THarness_UNIQUIFIED output_chain_3 (	// @[ShiftReg.scala:45:23]
    .clock (clock),
    .reset (reset),
    .io_d  (io_d[3]),	// @[SynchronizerReg.scala:87:41]
    .io_q  (_output_chain_3_io_q)
  );
  assign io_q = {_output_chain_3_io_q, _output_chain_2_io_q, _output_chain_1_io_q, _output_chain_io_q};	// @[Cat.scala:33:92, ShiftReg.scala:45:23]
endmodule

