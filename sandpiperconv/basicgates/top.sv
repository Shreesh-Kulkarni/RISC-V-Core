`line 2 "top.tlv" 0 //_\TLV_version 1d: tl-x.org, generated by SandPiper(TM) 1.14-2022/10/10-beta-Pro
`line 9 "top.tlv" 1
//_\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   module top(input wire clk, input wire reset, input wire [31:0] cyc_cnt, output wire passed, output wire failed);    /* verilator lint_save */ /* verilator lint_off UNOPTFLAT */  bit [256:0] RW_rand_raw; bit [256+63:0] RW_rand_vect; pseudo_rand #(.WIDTH(257)) pseudo_rand (clk, reset, RW_rand_raw[256:0]); assign RW_rand_vect[256+63:0] = {RW_rand_raw[62:0], RW_rand_raw};  /* verilator lint_restore */  /* verilator lint_off WIDTH */ /* verilator lint_off UNOPTFLAT */   // (Expanded in Nav-TLV pane.)
`include "top_gen.sv" //_\TLV
   assign L0_reset_a0 = reset;

   //...
   assign L0_out_a0 = ! L0_inl_a0;
   assign L0_out1_a0 = L0_in2_a0 & L0_in3_a0;
   assign L0_out2_a0 = L0_in4_a0 | L0_in5_a0;
   assign L0_out3_a0 = L0_in6_a0 ^ L0_in7_a0;
   
   

   // Assert these to end simulation (before Makerchip cycle limit).
   assign passed = cyc_cnt > 40;
   assign failed = 1'b0;
//_\SV
   endmodule


// Undefine macros defined by SandPiper (in "top_gen.sv").
`undef BOGUS_USE
