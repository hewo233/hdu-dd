vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/lib_pkg_v1_0_4
vlib questa_lib/msim/axi_timer_v2_0_33
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_srl_fifo_v1_0_4
vlib questa_lib/msim/axi_uartlite_v2_0_35
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_iic_v2_1_7
vlib questa_lib/msim/dist_mem_gen_v8_0_15
vlib questa_lib/msim/fifo_generator_v13_2_10
vlib questa_lib/msim/lib_fifo_v1_0_19
vlib questa_lib/msim/axi_quad_spi_v3_2_30
vlib questa_lib/msim/microblaze_v11_0_13
vlib questa_lib/msim/lmb_v10_v3_0_14
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_24
vlib questa_lib/msim/blk_mem_gen_v8_4_8
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_31
vlib questa_lib/msim/axi_data_fifo_v2_1_30
vlib questa_lib/msim/axi_crossbar_v2_1_32
vlib questa_lib/msim/axi_intc_v4_1_19
vlib questa_lib/msim/xlconcat_v2_1_6
vlib questa_lib/msim/mdm_v3_2_26
vlib questa_lib/msim/proc_sys_reset_v5_0_15
vlib questa_lib/msim/axi_gpio_v2_0_33

vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap lib_pkg_v1_0_4 questa_lib/msim/lib_pkg_v1_0_4
vmap axi_timer_v2_0_33 questa_lib/msim/axi_timer_v2_0_33
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_srl_fifo_v1_0_4 questa_lib/msim/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_35 questa_lib/msim/axi_uartlite_v2_0_35
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_iic_v2_1_7 questa_lib/msim/axi_iic_v2_1_7
vmap dist_mem_gen_v8_0_15 questa_lib/msim/dist_mem_gen_v8_0_15
vmap fifo_generator_v13_2_10 questa_lib/msim/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 questa_lib/msim/lib_fifo_v1_0_19
vmap axi_quad_spi_v3_2_30 questa_lib/msim/axi_quad_spi_v3_2_30
vmap microblaze_v11_0_13 questa_lib/msim/microblaze_v11_0_13
vmap lmb_v10_v3_0_14 questa_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 questa_lib/msim/lmb_bram_if_cntlr_v4_0_24
vmap blk_mem_gen_v8_4_8 questa_lib/msim/blk_mem_gen_v8_4_8
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 questa_lib/msim/axi_register_slice_v2_1_31
vmap axi_data_fifo_v2_1_30 questa_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 questa_lib/msim/axi_crossbar_v2_1_32
vmap axi_intc_v4_1_19 questa_lib/msim/axi_intc_v4_1_19
vmap xlconcat_v2_1_6 questa_lib/msim/xlconcat_v2_1_6
vmap mdm_v3_2_26 questa_lib/msim/mdm_v3_2_26
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15
vmap axi_gpio_v2_0_33 questa_lib/msim/axi_gpio_v2_0_33

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_4 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_33 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/a443/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_axi_timer_0_0/sim/mb_preset_axi_timer_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_35 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/2959/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_axi_uartlite_0_0/sim/mb_preset_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_7 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/00fd/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_axi_iic_0_0/sim/mb_preset_axi_iic_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_15 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_30 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/2538/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_axi_quad_spi_0_0/sim/mb_preset_axi_quad_spi_0_0.vhd" \

vcom -work microblaze_v11_0_13 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_microblaze_0_0/sim/mb_preset_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_dlmb_v10_0/sim/mb_preset_dlmb_v10_0.vhd" \
"../../../bd/mb_preset/ip/mb_preset_ilmb_v10_0/sim/mb_preset_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_dlmb_bram_if_cntlr_0/sim/mb_preset_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/mb_preset/ip/mb_preset_ilmb_bram_if_cntlr_0/sim/mb_preset_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_8 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../bd/mb_preset/ip/mb_preset_lmb_bram_0/sim/mb_preset_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../bd/mb_preset/ip/mb_preset_xbar_0/sim/mb_preset_xbar_0.v" \

vcom -work axi_intc_v4_1_19 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/558f/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_microblaze_0_axi_intc_0/sim/mb_preset_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_6 -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../bd/mb_preset/ip/mb_preset_microblaze_0_xlconcat_0/sim/mb_preset_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_26 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_mdm_1_0/sim/mb_preset_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../bd/mb_preset/ip/mb_preset_clk_wiz_1_0/mb_preset_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/mb_preset/ip/mb_preset_clk_wiz_1_0/mb_preset_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_15 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_rst_clk_wiz_1_100M_0/sim/mb_preset_rst_clk_wiz_1_100M_0.vhd" \

vcom -work axi_gpio_v2_0_33 -64 -93  \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/mb_preset/ip/mb_preset_axi_gpio_0_0/sim/mb_preset_axi_gpio_0_0.vhd" \
"../../../bd/mb_preset/ip/mb_preset_axi_gpio_1_0/sim/mb_preset_axi_gpio_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" \
"../../../bd/mb_preset/sim/mb_preset.v" \

vlog -work xil_defaultlib \
"glbl.v"

