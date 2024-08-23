VERILATOR_HOME=verilator
VERILATOR_FLAG=-cc -Wall \
	--top-module core_top \
	-O3 \
	--savable \
	--trace-structs \
	-Wno-fatal \
	-DSIMU \
	-DSIMULATION=1 \
	-Wall \
	-Wno-DECLFILENAME \
	-Wno-EOFNEWLINE \
	--trace \
	--cc
	# -Wno-PINCONNECTEMPTY \
	# -Wno-PINMISSING \
	# -Wno-UNUSED \
	# -Wno-TIMESCALEMOD \
	# -Wno-WIDTH

#verilator ${VERILATOR_INCLUDE} ${WAVEOPTION} --top-module simu_top --savable --threads ${THREAD} --trace-structs -O3 -Wno-fatal -DSIMU -DSIMULATION=1 -Wall -Wno-DECLFILENAME -Wno-PINCONNECTEMPTY -Wno-PINMISSING -Wno-WIDTH --trace -cc ${VFLAGS} ${SIMU_TOP_NAME}.v ${DIFFTEST}.v ${VERILATOR_SRC} 2>&1 | tee log/compile.log


VERILATOR_INCLUDE += -y rtl
VERILATOR_INCLUDE += -y rtl/fpga_mem
# VERILATOR_INCLUDE += -y rtl/verilog-axi

# Source code
VERILATOR_SRC += rtl/*.sv
VERILATOR_SRC += rtl/fpga_mem/*.sv
# VERILATOR_SRC += rtl/verilog-axi/*.sv

.PHONY: clean help
compile: $(VERILATOR_SRC)
	$(VERILATOR_HOME) $(VERILATOR_INCLUDE) $(VERILATOR_FLAG) $(VERILATOR_SRC) 

help:
	@echo "'make compile' to compile using verilator"
	@echo "'make chiplab' to deploy to CHIPLAB_HOME/IP/myCPU"
	@echo "'make nscscc ' to deploy to NSCSCC_HOME/myCPU"
	@echo "'make help   ' to display this massage"

clean:
	rm -rf ./obj_dir

chiplab:
	./src/deploy.sh chiplab

vivado:
	./src/deploy.sh vivado
