\m4_TLV_version 1d: tl-x.org
\SV
   // This code can be found in: https://github.com/stevehoover/RISC-V_MYTH_Workshop
   
   m4_include_lib(['https://raw.githubusercontent.com/stevehoover/RISC-V_MYTH_Workshop/ecba3769fff373ef6b8f66b3347e8940c859792d/tlv_lib/calculator_shell_lib.tlv'])

\SV
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)

\TLV
   //$reset = *reset;
   |calc
      @0
         $reset = *reset;
      @1
         $valid = $reset ? 0 : >>1$valid + 1;
         $valid_or_reset = $reset || $valid;
      ?$valid_or_reset
         @1
            //$val1[31:0] = $rand1[3:0];
            $val2[31:0] = $rand2[3:0];
            $sum[31:0] = $val1[31:0] + $val2[31:0];
            $diff[31:0] = $val1[31:0] - $val2[31:0];
            $prod[31:0] = $val1[31:0] * $val2[31:0];
            $quot[31:0] = $val1[31:0] / $val2[31:0];
            $val1[31:0] = >>2$out[31:0];
         @2
            $out[31:0] = ($op[1:0] == 2'b00)? $sum[31:0]:
                         ($op[1:0] == 2'b01)? $diff[31:0]:
                         ($op[1:0] == 2'b10)? $prod[31:0]:
                         ($op[1:0] == 2'b11)? $quot[31:0]:
                         $out[31:0];
            
            
         
         
         
         // YOUR CODE HERE
         // ...
         

      // Macro instantiations for calculator visualization(disabled by default).
      // Uncomment to enable visualisation, and also,
      // NOTE: If visualization is enabled, $op must be defined to the proper width using the expression below.
      //       (Any signals other than $rand1, $rand2 that are not explicitly assigned will result in strange errors.)
      //       You can, however, safely use these specific random signals as described in the videos:
      //  o $rand1[3:0]
      //  o $rand2[3:0]
      //  o $op[x:0]
      
   //m4+cal_viz(@3) // Arg: Pipeline stage represented by viz, should be atleast equal to last stage of CALCULATOR logic.



   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
   

\SV
   endmodule
