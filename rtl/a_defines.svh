`ifndef _BOOM_HEAD
`define _BOOM_HEAD

// `define _MEGA_SOC
`define _VERILATOR // 只需要注释掉这一行就行了
// `define _ASIC

`define _DIRTY_WB

`ifndef _VERILATOR
`define _FPGA
`endif

`ifdef _VERILATOR
// `define _DIFFTEST
// `define _PREDICT
`endif

`include "a_macros.svh"
`include "a_csr.svh"
`include "a_mmu_defines.svh"
`include "a_structure.svh"
`include "a_interface.svh"
`include "a_alu_defines.svh"
`include "a_mdu_defines.svh"
// `include "a_exception_defines.svh"

`endif
