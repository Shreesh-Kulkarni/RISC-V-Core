// Generated by SandPiper(TM) 1.14-2022/10/10-beta-Pro from Redwood EDA, LLC.
// (Installed here: /usr/local/mono/sandpiper/distro.)
// Redwood EDA, LLC does not claim intellectual property rights to this file and provides no warranty regarding its correctness or quality.


// For silencing unused signal messages.
`define BOGUS_USE(ignore)





//
// Signals declared top-level.
//

// For $reset.
logic L0_reset_a0;

// For |calc$aa.
logic [3:0] CALC_aa_a1;

// For |calc$aa_sq.
logic [31:0] CALC_aa_sq_a1,
             CALC_aa_sq_a2;

// For |calc$bb.
logic [3:0] CALC_bb_a1;

// For |calc$bb_sq.
logic [31:0] CALC_bb_sq_a1,
             CALC_bb_sq_a2;

// For |calc$cc.
logic [31:0] CALC_cc_a3;

// For |calc$cc_sq.
logic [31:0] CALC_cc_sq_a2,
             CALC_cc_sq_a3;

// For |calc$r_aa.
logic [31:0] CALC_r_aa_a0,
             CALC_r_aa_a1;

// For |calc$r_bb.
logic [31:0] CALC_r_bb_a0,
             CALC_r_bb_a1;




   //
   // Scope: |calc
   //

      // Staging of signal $aa, which had no assignment.
      // Assign to a random value.
      // verilator lint_save
      // verilator lint_off WIDTH
      assign CALC_aa_a1[3:0] = CALC_r_aa_a1;
      // verilator lint_restore

      // Staging of $aa_sq.
      always_ff @(posedge clk) CALC_aa_sq_a2[31:0] <= CALC_aa_sq_a1[31:0];

      // Staging of signal $bb, which had no assignment.
      // Assign to a random value.
      // verilator lint_save
      // verilator lint_off WIDTH
      assign CALC_bb_a1[3:0] = CALC_r_bb_a1;
      // verilator lint_restore

      // Staging of $bb_sq.
      always_ff @(posedge clk) CALC_bb_sq_a2[31:0] <= CALC_bb_sq_a1[31:0];

      // Staging of $cc_sq.
      always_ff @(posedge clk) CALC_cc_sq_a3[31:0] <= CALC_cc_sq_a2[31:0];

      // Staging of random value for missing assignment.
      assign CALC_r_aa_a0[31:0] = $random() ^ {31'b0, clk};
      always_ff @(posedge clk) CALC_r_aa_a1[31:0] <= CALC_r_aa_a0[31:0];

      // Staging of random value for missing assignment.
      assign CALC_r_bb_a0[31:0] = $random() ^ {31'b0, clk};
      always_ff @(posedge clk) CALC_r_bb_a1[31:0] <= CALC_r_bb_a0[31:0];






//
// Debug Signals
//

   if (1) begin : DEBUG_SIGS

      logic  \@0$reset ;
      assign \@0$reset = L0_reset_a0;

      //
      // Scope: |calc
      //
      if (1) begin : \|calc 
         logic [3:0] \>@1$aa ;
         assign \>@1$aa = CALC_aa_a1;
         logic [31:0] \/@1$aa_sq ;
         assign \/@1$aa_sq = CALC_aa_sq_a1;
         logic [3:0] \>@1$bb ;
         assign \>@1$bb = CALC_bb_a1;
         logic [31:0] \/@1$bb_sq ;
         assign \/@1$bb_sq = CALC_bb_sq_a1;
         logic [31:0] \/@3$cc ;
         assign \/@3$cc = CALC_cc_a3;
         logic [31:0] \/@2$cc_sq ;
         assign \/@2$cc_sq = CALC_cc_sq_a2;
      end


   end