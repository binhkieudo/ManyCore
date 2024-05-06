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

module TLROM(
  input         auto_in_a_valid,
  input  [1:0]  auto_in_a_bits_size,
  input  [6:0]  auto_in_a_bits_source,
  input  [16:0] auto_in_a_bits_address,
  input         auto_in_d_ready,
  output        auto_in_a_ready,
                auto_in_d_valid,
  output [1:0]  auto_in_d_bits_size,
  output [6:0]  auto_in_d_bits_source,
  output [63:0] auto_in_d_bits_data
);

  wire [511:0][63:0] _GEN =
    '{64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h73656D616E,
      64'h2D74757074756F2D,
      64'h6B636F6C6300736C,
      64'h6C65632D6B636F6C,
      64'h6323007374707572,
      64'h7265746E6900746E,
      64'h657261702D747075,
      64'h727265746E690073,
      64'h6B636F6C63007665,
      64'h646E2C7663736972,
      64'h797469726F6972,
      64'h702D78616D2C7663,
      64'h7369720068636174,
      64'h74612D6775626564,
      64'h6465646E657478,
      64'h652D737470757272,
      64'h65746E690073656D,
      64'h616E2D6765720073,
      64'h65676E617200656C,
      64'h646E616870007265,
      64'h6C6C6F72746E6F63,
      64'h2D74707572726574,
      64'h6E6900736C6C6563,
      64'h2D74707572726574,
      64'h6E69230073757461,
      64'h747300736E6F6967,
      64'h6572706D702C7663,
      64'h7369720079746972,
      64'h616C756E61726770,
      64'h6D702C7663736972,
      64'h6173692C766373,
      64'h6972006765720065,
      64'h686361632D6C6576,
      64'h656C2D7478656E00,
      64'h657A69732D656863,
      64'h61632D6900737465,
      64'h732D65686361632D,
      64'h6900657A69732D6B,
      64'h636F6C622D656863,
      64'h61632D6900746E75,
      64'h6F632D746E696F70,
      64'h6B616572622D6365,
      64'h78652D6572617764,
      64'h7261680065707974,
      64'h5F65636976656400,
      64'h657A69732D656863,
      64'h61632D6400737465,
      64'h732D65686361632D,
      64'h6400657A69732D6B,
      64'h636F6C622D656863,
      64'h61632D640079636E,
      64'h6575716572662D6B,
      64'h636F6C630079636E,
      64'h6575716572662D65,
      64'h736162656D697400,
      64'h687461702D74756F,
      64'h64747300306C6169,
      64'h726573006C65646F,
      64'h6D00656C62697461,
      64'h706D6F6300736C6C,
      64'h65632D657A697323,
      64'h736C6C65632D73,
      64'h7365726464612309,
      64'h200000002,
      64'h200000000,
      64'h6C6F72746E6F6369,
      64'h100000800000003,
      64'h10000000,
      64'h1100F900000008,
      64'h300000000,
      64'h3030303031,
      64'h3140726574746573,
      64'h2D74657365722D65,
      64'h6C69740100000002,
      64'h6B636F6C,
      64'h632D64657869661B,
      64'hC00000003,
      64'h6B,
      64'h636F6C635F737562,
      64'h735F6D6574737973,
      64'h627573E201000015,
      64'h300000080,
      64'hF0FA025300000004,
      64'h300000000,
      64'hD501000004,
      64'h300000000,
      64'h6B636F6C63,
      64'h5F737562735F6D65,
      64'h7473797362757301,
      64'h200000003,
      64'h5A01000004,
      64'h300000000,
      64'h6B636F6C632D6465,
      64'h7869661B0000000C,
      64'h300000000,
      64'h6B636F6C63,
      64'h5F737562705F6D65,
      64'h74737973627573E2,
      64'h100001500000003,
      64'h80F0FA0253,
      64'h400000003,
      64'hD5,
      64'h100000400000003,
      64'h6B,
      64'h636F6C635F737562,
      64'h705F6D6574737973,
      64'h6275730100000002,
      64'h6B636F6C,
      64'h632D64657869661B,
      64'hC00000003,
      64'h6B,
      64'h636F6C635F737562,
      64'h6D5F6D6574737973,
      64'h627573E201000015,
      64'h300000080,
      64'hF0FA025300000004,
      64'h300000000,
      64'hD501000004,
      64'h300000000,
      64'h6B636F6C63,
      64'h5F7375626D5F6D65,
      64'h7473797362757301,
      64'h200000000,
      64'h6B636F6C632D6465,
      64'h7869661B0000000C,
      64'h300000000,
      64'h6B636F6C635F32,
      64'h6C5F6D6574737973,
      64'h627573E201000013,
      64'h300000080,
      64'hF0FA025300000004,
      64'h300000000,
      64'hD501000004,
      64'h300000000,
      64'h6B636F6C635F32,
      64'h6C5F6D6574737973,
      64'h6275730100000002,
      64'h6C6F7274,
      64'h6E6F636901000008,
      64'h300000000,
      64'h10000000000064F9,
      64'h800000003,
      64'h1000000CA,
      64'h100000400000003,
      64'h4000000B9,
      64'h100000400000003,
      64'h30,
      64'h747261752C657669,
      64'h6669731B0000000D,
      64'h300000003,
      64'hB201000004,
      64'h300000000,
      64'h3030303030303436,
      64'h406C616972657301,
      64'h200000000,
      64'h6D656D6901000004,
      64'h300000000,
      64'h10000000100F9,
      64'h800000003,
      64'h306D6F72,
      64'h2C6576696669731B,
      64'hC00000003,
      64'h3030,
      64'h303031406D6F7201,
      64'h200000004,
      64'h5A01000004,
      64'h300000001,
      64'hA701000004,
      64'h300000001,
      64'h9401000004,
      64'h300000000,
      64'h6C6F72746E6F6369,
      64'h100000800000003,
      64'h400,
      64'hCF900000008,
      64'h30000000B,
      64'h200000073,
      64'h100000800000003,
      64'h4501000000,
      64'h300000000,
      64'h3063696C702C7663,
      64'h7369721B0000000C,
      64'h300000001,
      64'h3401000004,
      64'h300000000,
      64'h3030303030,
      64'h30634072656C6C6F,
      64'h72746E6F632D7470,
      64'h75727265746E6901,
      64'h200000000,
      64'h10000000300000F9,
      64'h800000003,
      64'h3072,
      64'h6F7272652C657669,
      64'h6669731B0000000E,
      64'h300000000,
      64'h303030334065,
      64'h63697665642D726F,
      64'h7272650100000002,
      64'h6C6F7274,
      64'h6E6F636901000008,
      64'h300000000,
      64'h10000000000000F9,
      64'h800000003,
      64'hFFFF000002,
      64'h7301000008,
      64'h300000000,
      64'h6761746A87,
      64'h100000500000003,
      64'h33,
      64'h31302D6775626564,
      64'h2C76637369720033,
      64'h31302D6775626564,
      64'h2C6576696669731B,
      64'h2100000003,
      64'h304072,
      64'h656C6C6F72746E6F,
      64'h632D677562656401,
      64'h200000000,
      64'h6C6F72746E6F6369,
      64'h100000800000003,
      64'h10000000,
      64'h1000F900000008,
      64'h300000000,
      64'h30303030303140,
      64'h72657461672D6B63,
      64'h6F6C630100000002,
      64'h6C6F7274,
      64'h6E6F636901000008,
      64'h300000000,
      64'h10000000002F9,
      64'h800000003,
      64'h700000002,
      64'h300000002,
      64'h7301000010,
      64'h300000000,
      64'h30746E696C,
      64'h632C76637369721B,
      64'hD00000003,
      64'h3030,
      64'h303030303240746E,
      64'h696C630100000002,
      64'h6C6F7274,
      64'h6E6F636901000008,
      64'h300000000,
      64'h10000000400000F9,
      64'h800000003,
      64'h3030,
      64'h3034406765722D73,
      64'h7365726464612D74,
      64'h6F6F620100000062,
      64'h100000000000003,
      64'h7375622D,
      64'h656C706D69730063,
      64'h6F732D6472617970,
      64'h6968632C7261622D,
      64'h6263751B00000020,
      64'h300000001,
      64'hF00000004,
      64'h300000001,
      64'h4,
      64'h300000000,
      64'h636F730100000002,
      64'h10000005A,
      64'h100000400000003,
      64'h1000,
      64'h80F900000008,
      64'h300000000,
      64'h79726F6D656D90,
      64'h700000003,
      64'h30303030,
      64'h303030384079726F,
      64'h6D656D0100000002,
      64'h200000002,
      64'h20000005A,
      64'h100000400000003,
      64'h4501000000,
      64'h300000000,
      64'h63746E692D7570,
      64'h632C76637369721B,
      64'hF00000003,
      64'h100000034,
      64'h100000400000003,
      64'h72,
      64'h656C6C6F72746E6F,
      64'h632D747075727265,
      64'h746E690100000040,
      64'h420F004000000004,
      64'h300000000,
      64'h79616B6F2D,
      64'h100000500000003,
      64'h80000001C,
      64'h100000400000003,
      64'h400000007,
      64'h100000400000003,
      64'h74,
      64'h656B636F72785F6D,
      64'h7068697A5F696563,
      64'h6E6566697A5F7273,
      64'h63697A63616D6934,
      64'h367672FD00000025,
      64'h300000000,
      64'hF900000004,
      64'h300000001,
      64'hE800000004,
      64'h300000000,
      64'h100000DB00000004,
      64'h300000040,
      64'hCE00000004,
      64'h300000040,
      64'hBB00000004,
      64'h300000001,
      64'h9C00000004,
      64'h300000000,
      64'h7570639000000004,
      64'h300000000,
      64'h2000008300000004,
      64'h300000040,
      64'h7600000004,
      64'h300000040,
      64'h6300000004,
      64'h300000000,
      64'h7663736972,
      64'h3074656B636F72,
      64'h2C6576696669731B,
      64'h1500000003,
      64'h53,
      64'h400000003,
      64'h3040,
      64'h7570630100000040,
      64'h420F004000000004,
      64'h300000000,
      64'hF00000004,
      64'h300000001,
      64'h4,
      64'h300000000,
      64'h7375706301,
      64'h200000000,
      64'h3030303030,
      64'h303436406C616972,
      64'h65732F636F732F34,
      64'h1500000003,
      64'h6E6573,
      64'h6F68630100000002,
      64'h30,
      64'h3030303030343640,
      64'h6C61697265732F63,
      64'h6F732F2C00000015,
      64'h300000000,
      64'h73657361696C6101,
      64'h64,
      64'h726179706968632C,
      64'h7261622D62637526,
      64'h1100000003,
      64'h76,
      64'h65642D6472617970,
      64'h6968632C7261622D,
      64'h6263751B00000015,
      64'h300000001,
      64'hF00000004,
      64'h300000001,
      64'h4,
      64'h300000000,
      64'h100000000,
      64'h0,
      64'h68,
      64'h90000F501000000,
      64'h1000000011,
      64'h28000000A0,
      64'h900003800000095,
      64'hB0000EDFE0DD000,
      64'hA0D212121646C72,
      64'h6F77206F6C6C6548,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h6F,
      64'h100FF95FF0EF,
      64'h585051300000517,
      64'hE7A42300100713,
      64'h640007B700113423,
      64'hFF01011300008067,
      64'hFE07CCE30007879B,
      64'h40D727AF00A00693,
      64'h64000737FE07CCE3,
      64'h7879B40D727AF,
      64'hD0069364000737,
      64'hFE0696E300150513,
      64'h154683FE07CCE3,
      64'h7879B40D727AF,
      64'h6400073702068063,
      64'h54683FE1FF06F,
      64'h4806701F49493,
      64'h10049B064000EF,
      64'hF14025737F010113,
      64'h1F111130010011B};	// @[BootROM.scala:53:47]
  assign auto_in_a_ready = auto_in_d_ready;
  assign auto_in_d_valid = auto_in_a_valid;
  assign auto_in_d_bits_size = auto_in_a_bits_size;
  assign auto_in_d_bits_source = auto_in_a_bits_source;
  assign auto_in_d_bits_data = (|(auto_in_a_bits_address[15:12])) ? 64'h0 : _GEN[auto_in_a_bits_address[11:3]];	// @[BootROM.scala:46:22, :51:34, :52:64, :53:{47,53}]
endmodule

