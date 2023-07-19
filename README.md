# 5-Stage Pipelined RISC-V Processor(RV32I)
A repository consisting of all the project files and codes for RISC-V Processor design using Transaction Level Verilog.

The CPU core is based on the RV32I ISA. For more information refer the the [RISC-V Specification](https://github.com/riscv/riscv-isa-manual/releases/download/Ratified-IMAFDQC/riscv-spec-20191213.pdf)

This repository is for the MYTH(Microprocessors in Thirty Hours) by Redwood EDA and TheEEView.

The final RV32I core in TLV format can be viewed in the RV32Icore.tlv file.

The System verilog file for the same is also uploaded for reference. The TLV file is converted to the SV file using Sandpiper SaaS compiler in Makerchip IDE.

# _Important Notes_ :-
* The CPU core is compatible with Verilator and almost all open-source simulators once converted to System-Verilog which can be done easily via the              Sandpiper SaaS compiler tool.
- The core's features include 5-stage pipelining, support for all RV32I instruction set along with resolving the Pipeline Hazards using Register   
            Forwarding for RAW hazards and Branch redirect for Control Hazards.
+ Makerchip's Incredible platform allows simple access to the core and any modifications can be done without affecting the rest of the core. THe   
            Visual debug tool invented by Redwood EDA provides a very clean and thourough visualization of the core, and it can be used to debug any errors 
            your CPU core my have.
 * This core was succesfully run on a virtual FPGA server powered by Redwood EDA. The board used was the Zynq Processor which consists of ARM-Cortex 
            CPU and Artix-7 FPGA. It was compiled using the PYNQ framework by Xilinx. 

### If you want to view my project, you can visit the public sandbox link for the makerchip platform below.

For Visual Debug  option, make sure you specify the final pipeline stage for your cpu.

### Important : It's advised to silence all the warnings for unassigned signals to prevent any Viz errors. You can observe this in the code- `BOGUS_USE(//YOUR SIGNALS HERE)`

[RiscV32I-core](makerchip.com/sandbox/0KrfqhMvx/076hEYG#)
