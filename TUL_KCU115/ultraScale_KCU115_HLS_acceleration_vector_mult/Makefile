# Created : 16:59:35, Fri May 20, 2017 : Sanjay Rai

.PHONY: all

all: build_all

build_all:
	cd vivado_batch;vivado -mode batch -source vivado_batch.tcl 
	cd ./src/PR_modules/PR_module_A/vivado_batch;vivado -mode batch -source vivado_batch.tcl 
	cd ./src/PR_modules/PR_module_B/vivado_batch;vivado -mode batch -source vivado_batch.tcl 
	cp -f ./src/PR_modules/PR_module_B/vivado_batch/KU115_AXI_ICAP_PR_DESIGN_top.B_pblock_U_PR_module_partial.bin ./bin_files
	cp -f ./src/PR_modules/PR_module_A/vivado_batch/KU115_AXI_ICAP_PR_DESIGN_top.A_pblock_U_PR_module_partial.bin ./bin_files
	cp -f ./vivado_batch/KU115_AXI_ICAP_PR_DESIGN_top.bit ./bin_files
	cp -f ./vivado_batch/KU115_AXI_ICAP_PR_DESIGN_top.ltx ./bin_files
clean:
	cd ./src/PR_modules/PR_module_A/vivado_batch; ./mk_clean.bat
	cd ./src/PR_modules/PR_module_B/vivado_batch; ./mk_clean.bat
	cd vivado_batch;./mk_clean.bat
	cd ./bin_files; ./mk_clean.bat
