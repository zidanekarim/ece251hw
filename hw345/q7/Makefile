#
# Makefile for Verilog building
# reference https://wiki.hacdc.org/index.php/Iverilogmakefile
# 
# USE THE FOLLOWING COMMANDS WITH THIS MAKEFILE
#	"make check" - compiles your verilog design - good for checking code
#	"make simulate" - compiles your design+TB & simulates your design
#	"make display" - compiles, simulates and displays waveforms
# 
###############################################################################
#
# CHANGE THESE THREE LINES FOR YOUR DESIGN
#
#TOOL INPUT
#THIS NEEDS TO MATCH THE NAME OF YOUR MODULE
# just type on command line: make COMPONENT=module_name {compile, simulate, display, clean}
COMPONENT = memory
ifeq ($(COMPONENT),)
  $(error COMPONENT must be defined.  Please specify it on the command line, e.g., make COMPONENT=my_component)
endif

#SRC = $(shell ls *.sv)
SRC = $(wildcard *.sv)
SIM_ARGS=+a=3 +b=2 +s=0
TBOUTPUT = tb_$(COMPONENT).vcd	# THIS NEEDS TO MATCH THE OUTPUT FILE
									# FROM YOUR TESTBENCH
###############################################################################
# BE CAREFUL WHEN CHANGING ITEMS BELOW THIS LINE
###############################################################################
#TOOLS
COMPILER = iverilog
SIMULATOR = vvp
VIEWER = gtkwave #works on your host, not docker container since it's a GUI
#TOOL OPTIONS
COFLAGS = -g2012 #-v
SFLAGS = -M . #-v
SOUTPUT = -lxt2		#SIMULATOR OUTPUT TYPE
#TOOL OUTPUT
#COUTPUT = compiler.out			#COMPILER OUTPUT
###############################################################################
#MAKE DIRECTIVES
.PHONY: compile simulate display clean
compile : $(SRC)
	@echo "Compiling component: $(COMPONENT)"
	$(COMPILER) $(COFLAGS) -o $(COMPONENT).vvp $(SRC)

simulate: $(COMPONENT).vvp
	@echo "Simulating component: $(COMPONENT)"
	$(SIMULATOR) $(SFLAGS) $(COMPONENT).vvp $(SOUTPUT)

display: $(TBOUTPUT)
	@echo "Opening GTKwave for component: $(COMPONENT)"
	$(VIEWER) $(TBOUTPUT) &

clean:
	/bin/rm -f $(COMPONENT) $(COMPONENT).vvp $(TBOUTPUT) *.vcd a.out compiler.out
	clear
