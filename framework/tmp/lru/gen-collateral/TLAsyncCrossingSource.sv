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

module TLAsyncCrossingSource(
  input         clock,
                reset,
                auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [8:0]  auto_in_a_bits_address,
  input  [31:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
                auto_out_a_ridx,
                auto_out_a_safe_ridx_valid,
                auto_out_a_safe_sink_reset_n,
  input  [2:0]  auto_out_d_mem_0_opcode,
  input  [1:0]  auto_out_d_mem_0_param,
                auto_out_d_mem_0_size,
  input         auto_out_d_mem_0_source,
                auto_out_d_mem_0_sink,
                auto_out_d_mem_0_denied,
  input  [31:0] auto_out_d_mem_0_data,
  input         auto_out_d_mem_0_corrupt,
                auto_out_d_widx,
                auto_out_d_safe_widx_valid,
                auto_out_d_safe_source_reset_n,
  output        auto_in_a_ready,
                auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output        auto_in_d_bits_denied,
  output [31:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  output [2:0]  auto_out_a_mem_0_opcode,
                auto_out_a_mem_0_param,
  output [1:0]  auto_out_a_mem_0_size,
  output        auto_out_a_mem_0_source,
  output [8:0]  auto_out_a_mem_0_address,
  output [3:0]  auto_out_a_mem_0_mask,
  output [31:0] auto_out_a_mem_0_data,
  output        auto_out_a_mem_0_corrupt,
                auto_out_a_widx,
                auto_out_a_safe_widx_valid,
                auto_out_a_safe_source_reset_n,
                auto_out_d_ridx,
                auto_out_d_safe_ridx_valid,
                auto_out_d_safe_sink_reset_n
);

  AsyncQueueSource_5 x1_a_source (	// @[AsyncQueue.scala:216:24]
    .clock                        (clock),
    .reset                        (reset),
    .io_enq_valid                 (auto_in_a_valid),
    .io_enq_bits_opcode           (auto_in_a_bits_opcode),
    .io_enq_bits_address          (auto_in_a_bits_address),
    .io_enq_bits_data             (auto_in_a_bits_data),
    .io_async_ridx                (auto_out_a_ridx),
    .io_async_safe_ridx_valid     (auto_out_a_safe_ridx_valid),
    .io_async_safe_sink_reset_n   (auto_out_a_safe_sink_reset_n),
    .io_enq_ready                 (auto_in_a_ready),
    .io_async_mem_0_opcode        (auto_out_a_mem_0_opcode),
    .io_async_mem_0_param         (auto_out_a_mem_0_param),
    .io_async_mem_0_size          (auto_out_a_mem_0_size),
    .io_async_mem_0_source        (auto_out_a_mem_0_source),
    .io_async_mem_0_address       (auto_out_a_mem_0_address),
    .io_async_mem_0_mask          (auto_out_a_mem_0_mask),
    .io_async_mem_0_data          (auto_out_a_mem_0_data),
    .io_async_mem_0_corrupt       (auto_out_a_mem_0_corrupt),
    .io_async_widx                (auto_out_a_widx),
    .io_async_safe_widx_valid     (auto_out_a_safe_widx_valid),
    .io_async_safe_source_reset_n (auto_out_a_safe_source_reset_n)
  );
  AsyncQueueSink_5 bundleIn_0_d_sink (	// @[AsyncQueue.scala:207:22]
    .clock                        (clock),
    .reset                        (reset),
    .io_deq_ready                 (auto_in_d_ready),
    .io_async_mem_0_opcode        (auto_out_d_mem_0_opcode),
    .io_async_mem_0_param         (auto_out_d_mem_0_param),
    .io_async_mem_0_size          (auto_out_d_mem_0_size),
    .io_async_mem_0_source        (auto_out_d_mem_0_source),
    .io_async_mem_0_sink          (auto_out_d_mem_0_sink),
    .io_async_mem_0_denied        (auto_out_d_mem_0_denied),
    .io_async_mem_0_data          (auto_out_d_mem_0_data),
    .io_async_mem_0_corrupt       (auto_out_d_mem_0_corrupt),
    .io_async_widx                (auto_out_d_widx),
    .io_async_safe_widx_valid     (auto_out_d_safe_widx_valid),
    .io_async_safe_source_reset_n (auto_out_d_safe_source_reset_n),
    .io_deq_valid                 (auto_in_d_valid),
    .io_deq_bits_opcode           (auto_in_d_bits_opcode),
    .io_deq_bits_denied           (auto_in_d_bits_denied),
    .io_deq_bits_data             (auto_in_d_bits_data),
    .io_deq_bits_corrupt          (auto_in_d_bits_corrupt),
    .io_async_ridx                (auto_out_d_ridx),
    .io_async_safe_ridx_valid     (auto_out_d_safe_ridx_valid),
    .io_async_safe_sink_reset_n   (auto_out_d_safe_sink_reset_n)
  );
endmodule

