transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/lib_pkg_v1_0_4
vlib riviera/axi_timer_v2_0_33
vlib riviera/xil_defaultlib
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_uartlite_v2_0_35
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_iic_v2_1_7
vlib riviera/dist_mem_gen_v8_0_15
vlib riviera/fifo_generator_v13_2_10
vlib riviera/lib_fifo_v1_0_19
vlib riviera/axi_quad_spi_v3_2_30
vlib riviera/microblaze_v11_0_13
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_24
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/axi_data_fifo_v2_1_30
vlib riviera/axi_crossbar_v2_1_32
vlib riviera/axi_intc_v4_1_19
vlib riviera/xlconcat_v2_1_6
vlib riviera/mdm_v3_2_26
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/axi_gpio_v2_0_33

vmap xpm riviera/xpm
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap axi_timer_v2_0_33 riviera/axi_timer_v2_0_33
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_35 riviera/axi_uartlite_v2_0_35
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_iic_v2_1_7 riviera/axi_iic_v2_1_7
vmap dist_mem_gen_v8_0_15 riviera/dist_mem_gen_v8_0_15
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 riviera/lib_fifo_v1_0_19
vmap axi_quad_spi_v3_2_30 riviera/axi_quad_spi_v3_2_30
vmap microblaze_v11_0_13 riviera/microblaze_v11_0_13
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 riviera/lmb_bram_if_cntlr_v4_0_24
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap axi_data_fifo_v2_1_30 riviera/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 riviera/axi_crossbar_v2_1_32
vmap axi_intc_v4_1_19 riviera/axi_intc_v4_1_19
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6
vmap mdm_v3_2_26 riviera/mdm_v3_2_26
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap axi_gpio_v2_0_33 riviera/axi_gpio_v2_0_33

vlog -work xpm  -incr "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_33 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/a443/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_axi_timer_0_0/sim/mb_preset_axi_timer_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_35 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/2959/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_axi_uartlite_0_0/sim/mb_preset_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_7 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/00fd/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_axi_iic_0_0/sim/mb_preset_axi_iic_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_15  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_30 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/2538/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_axi_quad_spi_0_0/sim/mb_preset_axi_quad_spi_0_0.vhd" \

vcom -work microblaze_v11_0_13 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_microblaze_0_0/sim/mb_preset_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_dlmb_v10_0/sim/mb_preset_dlmb_v10_0.vhd" \
"../../../bd/mb_preset/ip/mb_preset_ilmb_v10_0/sim/mb_preset_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_dlmb_bram_if_cntlr_0/sim/mb_preset_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/mb_preset/ip/mb_preset_ilmb_bram_if_cntlr_0/sim/mb_preset_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../bd/mb_preset/ip/mb_preset_lmb_bram_0/sim/mb_preset_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../bd/mb_preset/ip/mb_preset_xbar_0/sim/mb_preset_xbar_0.v" \

vcom -work axi_intc_v4_1_19 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/558f/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_microblaze_0_axi_intc_0/sim/mb_preset_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../bd/mb_preset/ip/mb_preset_microblaze_0_xlconcat_0/sim/mb_preset_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_26 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_mdm_1_0/sim/mb_preset_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../bd/mb_preset/ip/mb_preset_clk_wiz_1_0/mb_preset_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/mb_preset/ip/mb_preset_clk_wiz_1_0/mb_preset_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_rst_clk_wiz_1_100M_0/sim/mb_preset_rst_clk_wiz_1_100M_0.vhd" \

vcom -work axi_gpio_v2_0_33 -93  -incr \
"../../../../example.gen/sources_1/bd/mb_preset/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/mb_preset/ip/mb_preset_axi_gpio_0_0/sim/mb_preset_axi_gpio_0_0.vhd" \
"../../../bd/mb_preset/ip/mb_preset_axi_gpio_1_0/sim/mb_preset_axi_gpio_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/ec67/hdl" "+incdir+../../../../example.gen/sources_1/bd/mb_preset/ipshared/3242" -l xpm -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l xil_defaultlib -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_7 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_quad_spi_v3_2_30 -l microblaze_v11_0_13 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l proc_sys_reset_v5_0_15 -l axi_gpio_v2_0_33 \
"../../../bd/mb_preset/sim/mb_preset.v" \

vlog -work xil_defaultlib \
"glbl.v"

