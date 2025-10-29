TOP_MODULE = adder_4_bit_tb_top
SOURCE = adder_4_bit_compile_list.f
UVM_VERBOSITY = -testplusarg "UVM_VERBOSITY=UVM_HIGH"
UVM_TESTNAME = -testplusarg "UVM_TESTNAME=adder_4_bit_basic_test"
NORELNOTE = -testplusarg "UVM_NO_RELNOTES"
TRACEDB = -testplusarg "UVM_CONFIG_DB_TRACE"

# Default target
all: compile elab simulate

compile:
	xvlog -sv -f $(SOURCE) -L uvm

elab:
	xelab -L uvm --timescale=1ns/1ps -debug all -top $(TOP_MODULE) -snapshot $(TOP_MODULE)

simulate:
	xsim $(TOP_MODULE) -tclbatch wave_capture.tcl $(UVM_TESTNAME) $(UVM_VERBOSITY) $(NORELNOTE) $(TRACEDB)

wave:
	vivado -mode batch -source view_waveform.tcl

clean:
	rm -rf *.jou *.log *.pb *.wdb xsim.dir

