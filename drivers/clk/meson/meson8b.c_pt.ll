; ModuleID = '/llk/IR/drivers/clk/meson/meson8b.c_pt.bc'
source_filename = "../drivers/clk/meson/meson8b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.meson8b_nb_data = type { %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.meson8b_clk_reset_line = type { i32, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_regmap_gate_data = type { i32, i8, i8 }
%struct.clk_regmap_div_data = type { i32, i8, i8, i8, ptr }
%struct.clk_regmap_mux_data = type { i32, ptr, i32, i8, i8 }
%struct.meson_clk_mpll_data = type { %struct.parm, %struct.parm, %struct.parm, %struct.parm, %struct.parm, ptr, i32, ptr, i8 }
%struct.parm = type { i16, i8, i8 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.meson_clk_pll_data = type { %struct.parm, %struct.parm, %struct.parm, %struct.parm, %struct.parm, %struct.parm, ptr, i32, ptr, ptr, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.pll_params_table = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.meson8b_clk_reset = type { %struct.reset_controller_dev, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__of_table_meson8_clkc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-clkc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8_clkc_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_meson8b_clkc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-clkc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_clkc_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_meson8m2_clkc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-clkc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8m2_clkc_of_clk_init_driver }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [51 x i8] c"\013failed to get HHI regmap - Trying obsolete regs\0A\00", align 1
@meson8b_clk_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @meson8b_clk_reset_assert, ptr @meson8b_clk_reset_deassert, ptr null }, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"\013%s: Failed to register clkc reset controller: %d\0A\00", align 1
@__func__.meson8b_clkc_init_common = private unnamed_addr constant [25 x i8] c"meson8b_clkc_init_common\00", align 1
@meson8b_clk_regmaps = internal unnamed_addr constant [193 x ptr] [ptr @meson8b_clk81, ptr @meson8b_ddr, ptr @meson8b_dos, ptr @meson8b_isa, ptr @meson8b_pl301, ptr @meson8b_periphs, ptr @meson8b_spicc, ptr @meson8b_i2c, ptr @meson8b_sar_adc, ptr @meson8b_smart_card, ptr @meson8b_rng0, ptr @meson8b_uart0, ptr @meson8b_sdhc, ptr @meson8b_stream, ptr @meson8b_async_fifo, ptr @meson8b_sdio, ptr @meson8b_abuf, ptr @meson8b_hiu_iface, ptr @meson8b_assist_misc, ptr @meson8b_spi, ptr @meson8b_i2s_spdif, ptr @meson8b_eth, ptr @meson8b_demux, ptr @meson8b_aiu_glue, ptr @meson8b_iec958, ptr @meson8b_i2s_out, ptr @meson8b_amclk, ptr @meson8b_aififo2, ptr @meson8b_mixer, ptr @meson8b_mixer_iface, ptr @meson8b_adc, ptr @meson8b_blkmv, ptr @meson8b_aiu, ptr @meson8b_uart1, ptr @meson8b_g2d, ptr @meson8b_usb0, ptr @meson8b_usb1, ptr @meson8b_reset, ptr @meson8b_nand, ptr @meson8b_dos_parser, ptr @meson8b_usb, ptr @meson8b_vdin1, ptr @meson8b_ahb_arb0, ptr @meson8b_efuse, ptr @meson8b_boot_rom, ptr @meson8b_ahb_data_bus, ptr @meson8b_ahb_ctrl_bus, ptr @meson8b_hdmi_intr_sync, ptr @meson8b_hdmi_pclk, ptr @meson8b_usb1_ddr_bridge, ptr @meson8b_usb0_ddr_bridge, ptr @meson8b_mmc_pclk, ptr @meson8b_dvin, ptr @meson8b_uart2, ptr @meson8b_sana, ptr @meson8b_vpu_intr, ptr @meson8b_sec_ahb_ahb3_bridge, ptr @meson8b_clk81_a9, ptr @meson8b_vclk2_venci0, ptr @meson8b_vclk2_venci1, ptr @meson8b_vclk2_vencp0, ptr @meson8b_vclk2_vencp1, ptr @meson8b_gclk_venci_int, ptr @meson8b_gclk_vencp_int, ptr @meson8b_dac_clk, ptr @meson8b_aoclk_gate, ptr @meson8b_iec958_gate, ptr @meson8b_enc480p, ptr @meson8b_rng1, ptr @meson8b_gclk_vencl_int, ptr @meson8b_vclk2_venclmcc, ptr @meson8b_vclk2_vencl, ptr @meson8b_vclk2_other, ptr @meson8b_edp, ptr @meson8b_ao_media_cpu, ptr @meson8b_ao_ahb_sram, ptr @meson8b_ao_ahb_bus, ptr @meson8b_ao_iface, ptr @meson8b_mpeg_clk_div, ptr @meson8b_mpeg_clk_sel, ptr @meson8b_mpll0, ptr @meson8b_mpll1, ptr @meson8b_mpll2, ptr @meson8b_mpll0_div, ptr @meson8b_mpll1_div, ptr @meson8b_mpll2_div, ptr @meson8b_fixed_pll, ptr @meson8b_sys_pll, ptr @meson8b_cpu_in_sel, ptr @meson8b_cpu_scale_div, ptr @meson8b_cpu_scale_out_sel, ptr @meson8b_cpu_clk, ptr @meson8b_mpll_prediv, ptr @meson8b_fclk_div2, ptr @meson8b_fclk_div3, ptr @meson8b_fclk_div4, ptr @meson8b_fclk_div5, ptr @meson8b_fclk_div7, ptr @meson8b_nand_clk_sel, ptr @meson8b_nand_clk_div, ptr @meson8b_nand_clk_gate, ptr @meson8b_fixed_pll_dco, ptr @meson8b_hdmi_pll_dco, ptr @meson8b_sys_pll_dco, ptr @meson8b_apb_clk_sel, ptr @meson8b_apb_clk_gate, ptr @meson8b_periph_clk_sel, ptr @meson8b_periph_clk_gate, ptr @meson8b_axi_clk_sel, ptr @meson8b_axi_clk_gate, ptr @meson8b_l2_dram_clk_sel, ptr @meson8b_l2_dram_clk_gate, ptr @meson8b_hdmi_pll_lvds_out, ptr @meson8b_hdmi_pll_hdmi_out, ptr @meson8b_vid_pll_in_sel, ptr @meson8b_vid_pll_in_en, ptr @meson8b_vid_pll_pre_div, ptr @meson8b_vid_pll_post_div, ptr @meson8b_vid_pll, ptr @meson8b_vid_pll_final_div, ptr @meson8b_vclk_in_sel, ptr @meson8b_vclk_in_en, ptr @meson8b_vclk_en, ptr @meson8b_vclk_div1_gate, ptr @meson8b_vclk_div2_div_gate, ptr @meson8b_vclk_div4_div_gate, ptr @meson8b_vclk_div6_div_gate, ptr @meson8b_vclk_div12_div_gate, ptr @meson8b_vclk2_in_sel, ptr @meson8b_vclk2_clk_in_en, ptr @meson8b_vclk2_clk_en, ptr @meson8b_vclk2_div1_gate, ptr @meson8b_vclk2_div2_div_gate, ptr @meson8b_vclk2_div4_div_gate, ptr @meson8b_vclk2_div6_div_gate, ptr @meson8b_vclk2_div12_div_gate, ptr @meson8b_cts_enct_sel, ptr @meson8b_cts_enct, ptr @meson8b_cts_encp_sel, ptr @meson8b_cts_encp, ptr @meson8b_cts_enci_sel, ptr @meson8b_cts_enci, ptr @meson8b_hdmi_tx_pixel_sel, ptr @meson8b_hdmi_tx_pixel, ptr @meson8b_cts_encl_sel, ptr @meson8b_cts_encl, ptr @meson8b_cts_vdac0_sel, ptr @meson8b_cts_vdac0, ptr @meson8b_hdmi_sys_sel, ptr @meson8b_hdmi_sys_div, ptr @meson8b_hdmi_sys, ptr @meson8b_mali_0_sel, ptr @meson8b_mali_0_div, ptr @meson8b_mali_0, ptr @meson8b_mali_1_sel, ptr @meson8b_mali_1_div, ptr @meson8b_mali_1, ptr @meson8b_mali, ptr @meson8m2_gp_pll_dco, ptr @meson8m2_gp_pll, ptr @meson8b_vpu_0_sel, ptr @meson8m2_vpu_0_sel, ptr @meson8b_vpu_0_div, ptr @meson8b_vpu_0, ptr @meson8b_vpu_1_sel, ptr @meson8m2_vpu_1_sel, ptr @meson8b_vpu_1_div, ptr @meson8b_vpu_1, ptr @meson8b_vpu, ptr @meson8b_vdec_1_sel, ptr @meson8b_vdec_1_1_div, ptr @meson8b_vdec_1_1, ptr @meson8b_vdec_1_2_div, ptr @meson8b_vdec_1_2, ptr @meson8b_vdec_1, ptr @meson8b_vdec_hcodec_sel, ptr @meson8b_vdec_hcodec_div, ptr @meson8b_vdec_hcodec, ptr @meson8b_vdec_2_sel, ptr @meson8b_vdec_2_div, ptr @meson8b_vdec_2, ptr @meson8b_vdec_hevc_sel, ptr @meson8b_vdec_hevc_div, ptr @meson8b_vdec_hevc_en, ptr @meson8b_vdec_hevc, ptr @meson8b_cts_amclk, ptr @meson8b_cts_amclk_sel, ptr @meson8b_cts_amclk_div, ptr @meson8b_cts_mclk_i958_sel, ptr @meson8b_cts_mclk_i958_div, ptr @meson8b_cts_mclk_i958, ptr @meson8b_cts_i958, ptr @meson8b_vid_pll_lvds_en], align 4
@meson8b_cpu_nb_data = internal global %struct.meson8b_nb_data { %struct.notifier_block { ptr @meson8b_cpu_clk_notifier_cb, ptr null, i32 0 }, ptr null }, align 4
@meson8b_cpu_scale_out_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.815 }, ptr null, ptr @.compoundliteral.816 }, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"\013%s: failed to register the CPU clock notifier\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\013%s: failed to register clock provider\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@meson8b_clk_reset_bits = internal unnamed_addr constant [16 x %struct.meson8b_clk_reset_line] [%struct.meson8b_clk_reset_line { i32 412, i8 30, i8 0 }, %struct.meson8b_clk_reset_line { i32 412, i8 29, i8 0 }, %struct.meson8b_clk_reset_line { i32 412, i8 28, i8 0 }, %struct.meson8b_clk_reset_line { i32 412, i8 24, i8 0 }, %struct.meson8b_clk_reset_line { i32 412, i8 25, i8 0 }, %struct.meson8b_clk_reset_line { i32 412, i8 26, i8 0 }, %struct.meson8b_clk_reset_line { i32 412, i8 27, i8 0 }, %struct.meson8b_clk_reset_line { i32 412, i8 18, i8 0 }, %struct.meson8b_clk_reset_line { i32 412, i8 17, i8 0 }, %struct.meson8b_clk_reset_line { i32 412, i8 16, i8 0 }, %struct.meson8b_clk_reset_line { i32 348, i8 30, i8 0 }, %struct.meson8b_clk_reset_line { i32 380, i8 15, i8 0 }, %struct.meson8b_clk_reset_line { i32 408, i8 7, i8 0 }, %struct.meson8b_clk_reset_line { i32 408, i8 3, i8 0 }, %struct.meson8b_clk_reset_line { i32 408, i8 1, i8 1 }, %struct.meson8b_clk_reset_line { i32 408, i8 0, i8 1 }], align 4
@meson_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@meson8b_clk81 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, ptr @.compoundliteral.6 }, align 4
@meson8b_ddr = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 }, ptr null, ptr @.compoundliteral.10 }, align 4
@meson8b_dos = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 }, ptr null, ptr @.compoundliteral.14 }, align 4
@meson8b_isa = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null, ptr @.compoundliteral.18 }, align 4
@meson8b_pl301 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 }, ptr null, ptr @.compoundliteral.22 }, align 4
@meson8b_periphs = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, ptr @.compoundliteral.26 }, align 4
@meson8b_spicc = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 }, ptr null, ptr @.compoundliteral.30 }, align 4
@meson8b_i2c = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 }, ptr null, ptr @.compoundliteral.34 }, align 4
@meson8b_sar_adc = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, ptr null, ptr @.compoundliteral.38 }, align 4
@meson8b_smart_card = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 }, ptr null, ptr @.compoundliteral.42 }, align 4
@meson8b_rng0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 }, ptr null, ptr @.compoundliteral.46 }, align 4
@meson8b_uart0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 }, ptr null, ptr @.compoundliteral.50 }, align 4
@meson8b_sdhc = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 }, ptr null, ptr @.compoundliteral.54 }, align 4
@meson8b_stream = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 }, ptr null, ptr @.compoundliteral.58 }, align 4
@meson8b_async_fifo = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 }, ptr null, ptr @.compoundliteral.62 }, align 4
@meson8b_sdio = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.65 }, ptr null, ptr @.compoundliteral.66 }, align 4
@meson8b_abuf = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 }, ptr null, ptr @.compoundliteral.70 }, align 4
@meson8b_hiu_iface = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 }, ptr null, ptr @.compoundliteral.74 }, align 4
@meson8b_assist_misc = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 }, ptr null, ptr @.compoundliteral.78 }, align 4
@meson8b_spi = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.81 }, ptr null, ptr @.compoundliteral.82 }, align 4
@meson8b_i2s_spdif = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 }, ptr null, ptr @.compoundliteral.86 }, align 4
@meson8b_eth = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 }, ptr null, ptr @.compoundliteral.90 }, align 4
@meson8b_demux = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 }, ptr null, ptr @.compoundliteral.94 }, align 4
@meson8b_aiu_glue = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.97 }, ptr null, ptr @.compoundliteral.98 }, align 4
@meson8b_iec958 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 }, ptr null, ptr @.compoundliteral.102 }, align 4
@meson8b_i2s_out = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.105 }, ptr null, ptr @.compoundliteral.106 }, align 4
@meson8b_amclk = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.109 }, ptr null, ptr @.compoundliteral.110 }, align 4
@meson8b_aififo2 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr null, ptr @.compoundliteral.114 }, align 4
@meson8b_mixer = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.117 }, ptr null, ptr @.compoundliteral.118 }, align 4
@meson8b_mixer_iface = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.121 }, ptr null, ptr @.compoundliteral.122 }, align 4
@meson8b_adc = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.125 }, ptr null, ptr @.compoundliteral.126 }, align 4
@meson8b_blkmv = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.129 }, ptr null, ptr @.compoundliteral.130 }, align 4
@meson8b_aiu = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.133 }, ptr null, ptr @.compoundliteral.134 }, align 4
@meson8b_uart1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 }, ptr null, ptr @.compoundliteral.138 }, align 4
@meson8b_g2d = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.141 }, ptr null, ptr @.compoundliteral.142 }, align 4
@meson8b_usb0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 }, ptr null, ptr @.compoundliteral.146 }, align 4
@meson8b_usb1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 }, ptr null, ptr @.compoundliteral.150 }, align 4
@meson8b_reset = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.153 }, ptr null, ptr @.compoundliteral.154 }, align 4
@meson8b_nand = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.157 }, ptr null, ptr @.compoundliteral.158 }, align 4
@meson8b_dos_parser = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 }, ptr null, ptr @.compoundliteral.162 }, align 4
@meson8b_usb = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.165 }, ptr null, ptr @.compoundliteral.166 }, align 4
@meson8b_vdin1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.169 }, ptr null, ptr @.compoundliteral.170 }, align 4
@meson8b_ahb_arb0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.173 }, ptr null, ptr @.compoundliteral.174 }, align 4
@meson8b_efuse = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.177 }, ptr null, ptr @.compoundliteral.178 }, align 4
@meson8b_boot_rom = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.181 }, ptr null, ptr @.compoundliteral.182 }, align 4
@meson8b_ahb_data_bus = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.185 }, ptr null, ptr @.compoundliteral.186 }, align 4
@meson8b_ahb_ctrl_bus = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.189 }, ptr null, ptr @.compoundliteral.190 }, align 4
@meson8b_hdmi_intr_sync = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.193 }, ptr null, ptr @.compoundliteral.194 }, align 4
@meson8b_hdmi_pclk = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.197 }, ptr null, ptr @.compoundliteral.198 }, align 4
@meson8b_usb1_ddr_bridge = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.201 }, ptr null, ptr @.compoundliteral.202 }, align 4
@meson8b_usb0_ddr_bridge = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.205 }, ptr null, ptr @.compoundliteral.206 }, align 4
@meson8b_mmc_pclk = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.209 }, ptr null, ptr @.compoundliteral.210 }, align 4
@meson8b_dvin = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.213 }, ptr null, ptr @.compoundliteral.214 }, align 4
@meson8b_uart2 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.217 }, ptr null, ptr @.compoundliteral.218 }, align 4
@meson8b_sana = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.221 }, ptr null, ptr @.compoundliteral.222 }, align 4
@meson8b_vpu_intr = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.225 }, ptr null, ptr @.compoundliteral.226 }, align 4
@meson8b_sec_ahb_ahb3_bridge = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.229 }, ptr null, ptr @.compoundliteral.230 }, align 4
@meson8b_clk81_a9 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.233 }, ptr null, ptr @.compoundliteral.234 }, align 4
@meson8b_vclk2_venci0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.237 }, ptr null, ptr @.compoundliteral.238 }, align 4
@meson8b_vclk2_venci1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.241 }, ptr null, ptr @.compoundliteral.242 }, align 4
@meson8b_vclk2_vencp0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.245 }, ptr null, ptr @.compoundliteral.246 }, align 4
@meson8b_vclk2_vencp1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.249 }, ptr null, ptr @.compoundliteral.250 }, align 4
@meson8b_gclk_venci_int = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.253 }, ptr null, ptr @.compoundliteral.254 }, align 4
@meson8b_gclk_vencp_int = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.257 }, ptr null, ptr @.compoundliteral.258 }, align 4
@meson8b_dac_clk = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.261 }, ptr null, ptr @.compoundliteral.262 }, align 4
@meson8b_aoclk_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.265 }, ptr null, ptr @.compoundliteral.266 }, align 4
@meson8b_iec958_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.269 }, ptr null, ptr @.compoundliteral.270 }, align 4
@meson8b_enc480p = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.273 }, ptr null, ptr @.compoundliteral.274 }, align 4
@meson8b_rng1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.277 }, ptr null, ptr @.compoundliteral.278 }, align 4
@meson8b_gclk_vencl_int = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.281 }, ptr null, ptr @.compoundliteral.282 }, align 4
@meson8b_vclk2_venclmcc = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.285 }, ptr null, ptr @.compoundliteral.286 }, align 4
@meson8b_vclk2_vencl = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.289 }, ptr null, ptr @.compoundliteral.290 }, align 4
@meson8b_vclk2_other = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.293 }, ptr null, ptr @.compoundliteral.294 }, align 4
@meson8b_edp = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.297 }, ptr null, ptr @.compoundliteral.298 }, align 4
@meson8b_ao_media_cpu = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.301 }, ptr null, ptr @.compoundliteral.302 }, align 4
@meson8b_ao_ahb_sram = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.305 }, ptr null, ptr @.compoundliteral.306 }, align 4
@meson8b_ao_ahb_bus = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.309 }, ptr null, ptr @.compoundliteral.310 }, align 4
@meson8b_ao_iface = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.313 }, ptr null, ptr @.compoundliteral.314 }, align 4
@meson8b_mpeg_clk_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.317 }, ptr null, ptr @.compoundliteral.318 }, align 4
@meson8b_mpeg_clk_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.321 }, ptr null, ptr @.compoundliteral.322 }, align 4
@meson8b_mpll0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.325 }, ptr null, ptr @.compoundliteral.326 }, align 4
@meson8b_mpll1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.329 }, ptr null, ptr @.compoundliteral.330 }, align 4
@meson8b_mpll2 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.333 }, ptr null, ptr @.compoundliteral.334 }, align 4
@meson8b_mpll0_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.337 }, ptr null, ptr @.compoundliteral.338 }, align 4
@meson8b_mpll1_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.341 }, ptr null, ptr @.compoundliteral.342 }, align 4
@meson8b_mpll2_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.345 }, ptr null, ptr @.compoundliteral.346 }, align 4
@meson8b_fixed_pll = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.349 }, ptr null, ptr @.compoundliteral.350 }, align 4
@meson8b_sys_pll = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.353 }, ptr null, ptr @.compoundliteral.354 }, align 4
@meson8b_cpu_in_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.358 }, ptr null, ptr @.compoundliteral.359 }, align 4
@meson8b_cpu_scale_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.362 }, ptr null, ptr @.compoundliteral.363 }, align 4
@meson8b_cpu_clk = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.366 }, ptr null, ptr @.compoundliteral.367 }, align 4
@meson8b_mpll_prediv = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.370 }, ptr null, ptr @.compoundliteral.371 }, align 4
@meson8b_fclk_div2 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.374 }, ptr null, ptr @.compoundliteral.375 }, align 4
@meson8b_fclk_div3 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.381 }, ptr null, ptr @.compoundliteral.382 }, align 4
@meson8b_fclk_div4 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.388 }, ptr null, ptr @.compoundliteral.389 }, align 4
@meson8b_fclk_div5 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.395 }, ptr null, ptr @.compoundliteral.396 }, align 4
@meson8b_fclk_div7 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.402 }, ptr null, ptr @.compoundliteral.403 }, align 4
@meson8b_nand_clk_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.409 }, ptr null, ptr @.compoundliteral.410 }, align 4
@meson8b_nand_clk_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.413 }, ptr null, ptr @.compoundliteral.414 }, align 4
@meson8b_nand_clk_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.417 }, ptr null, ptr @.compoundliteral.418 }, align 4
@meson8b_fixed_pll_dco = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.421 }, ptr null, ptr @.compoundliteral.422 }, align 4
@meson8b_hdmi_pll_dco = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.425 }, ptr null, ptr @.compoundliteral.426 }, align 4
@meson8b_sys_pll_dco = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.432 }, ptr null, ptr @.compoundliteral.433 }, align 4
@meson8b_apb_clk_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.436 }, ptr null, ptr @.compoundliteral.437 }, align 4
@meson8b_apb_clk_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.461 }, ptr null, ptr @.compoundliteral.462 }, align 4
@meson8b_periph_clk_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.465 }, ptr null, ptr @.compoundliteral.466 }, align 4
@meson8b_periph_clk_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.469 }, ptr null, ptr @.compoundliteral.470 }, align 4
@meson8b_axi_clk_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.473 }, ptr null, ptr @.compoundliteral.474 }, align 4
@meson8b_axi_clk_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.477 }, ptr null, ptr @.compoundliteral.478 }, align 4
@meson8b_l2_dram_clk_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.481 }, ptr null, ptr @.compoundliteral.482 }, align 4
@meson8b_l2_dram_clk_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.485 }, ptr null, ptr @.compoundliteral.486 }, align 4
@meson8b_hdmi_pll_lvds_out = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.489 }, ptr null, ptr @.compoundliteral.490 }, align 4
@meson8b_hdmi_pll_hdmi_out = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.493 }, ptr null, ptr @.compoundliteral.494 }, align 4
@meson8b_vid_pll_in_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.497 }, ptr null, ptr @.compoundliteral.498 }, align 4
@meson8b_vid_pll_in_en = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.501 }, ptr null, ptr @.compoundliteral.502 }, align 4
@meson8b_vid_pll_pre_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.505 }, ptr null, ptr @.compoundliteral.506 }, align 4
@meson8b_vid_pll_post_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.509 }, ptr null, ptr @.compoundliteral.510 }, align 4
@meson8b_vid_pll = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.513 }, ptr null, ptr @.compoundliteral.514 }, align 4
@meson8b_vid_pll_final_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.517 }, ptr null, ptr @.compoundliteral.518 }, align 4
@meson8b_vclk_in_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.520 }, ptr null, ptr @.compoundliteral.521 }, align 4
@meson8b_vclk_in_en = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.524 }, ptr null, ptr @.compoundliteral.525 }, align 4
@meson8b_vclk_en = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.528 }, ptr null, ptr @.compoundliteral.529 }, align 4
@meson8b_vclk_div1_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.532 }, ptr null, ptr @.compoundliteral.533 }, align 4
@meson8b_vclk_div2_div_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.536 }, ptr null, ptr @.compoundliteral.537 }, align 4
@meson8b_vclk_div4_div_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.543 }, ptr null, ptr @.compoundliteral.544 }, align 4
@meson8b_vclk_div6_div_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.550 }, ptr null, ptr @.compoundliteral.551 }, align 4
@meson8b_vclk_div12_div_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.557 }, ptr null, ptr @.compoundliteral.558 }, align 4
@meson8b_vclk2_in_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.563 }, ptr null, ptr @.compoundliteral.564 }, align 4
@meson8b_vclk2_clk_in_en = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.567 }, ptr null, ptr @.compoundliteral.568 }, align 4
@meson8b_vclk2_clk_en = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.571 }, ptr null, ptr @.compoundliteral.572 }, align 4
@meson8b_vclk2_div1_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.575 }, ptr null, ptr @.compoundliteral.576 }, align 4
@meson8b_vclk2_div2_div_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.579 }, ptr null, ptr @.compoundliteral.580 }, align 4
@meson8b_vclk2_div4_div_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.586 }, ptr null, ptr @.compoundliteral.587 }, align 4
@meson8b_vclk2_div6_div_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.593 }, ptr null, ptr @.compoundliteral.594 }, align 4
@meson8b_vclk2_div12_div_gate = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.600 }, ptr null, ptr @.compoundliteral.601 }, align 4
@meson8b_cts_enct_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.606 }, ptr null, ptr @.compoundliteral.607 }, align 4
@meson8b_cts_enct = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.610 }, ptr null, ptr @.compoundliteral.611 }, align 4
@meson8b_cts_encp_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.613 }, ptr null, ptr @.compoundliteral.614 }, align 4
@meson8b_cts_encp = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.617 }, ptr null, ptr @.compoundliteral.618 }, align 4
@meson8b_cts_enci_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.620 }, ptr null, ptr @.compoundliteral.621 }, align 4
@meson8b_cts_enci = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.624 }, ptr null, ptr @.compoundliteral.625 }, align 4
@meson8b_hdmi_tx_pixel_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.627 }, ptr null, ptr @.compoundliteral.628 }, align 4
@meson8b_hdmi_tx_pixel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.631 }, ptr null, ptr @.compoundliteral.632 }, align 4
@meson8b_cts_encl_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.634 }, ptr null, ptr @.compoundliteral.635 }, align 4
@meson8b_cts_encl = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.638 }, ptr null, ptr @.compoundliteral.639 }, align 4
@meson8b_cts_vdac0_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.641 }, ptr null, ptr @.compoundliteral.642 }, align 4
@meson8b_cts_vdac0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.645 }, ptr null, ptr @.compoundliteral.646 }, align 4
@meson8b_hdmi_sys_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.649 }, ptr null, ptr @.compoundliteral.650 }, align 4
@meson8b_hdmi_sys_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.653 }, ptr null, ptr @.compoundliteral.654 }, align 4
@meson8b_hdmi_sys = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.657 }, ptr null, ptr @.compoundliteral.658 }, align 4
@meson8b_mali_0_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.660 }, ptr null, ptr @.compoundliteral.661 }, align 4
@meson8b_mali_0_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.664 }, ptr null, ptr @.compoundliteral.665 }, align 4
@meson8b_mali_0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.668 }, ptr null, ptr @.compoundliteral.669 }, align 4
@meson8b_mali_1_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.671 }, ptr null, ptr @.compoundliteral.672 }, align 4
@meson8b_mali_1_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.675 }, ptr null, ptr @.compoundliteral.676 }, align 4
@meson8b_mali_1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.679 }, ptr null, ptr @.compoundliteral.680 }, align 4
@meson8b_mali = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.683 }, ptr null, ptr @.compoundliteral.684 }, align 4
@meson8m2_gp_pll_dco = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.687 }, ptr null, ptr @.compoundliteral.688 }, align 4
@meson8m2_gp_pll = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.691 }, ptr null, ptr @.compoundliteral.692 }, align 4
@meson8b_vpu_0_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.694 }, ptr null, ptr @.compoundliteral.695 }, align 4
@meson8m2_vpu_0_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.696 }, ptr null, ptr @.compoundliteral.697 }, align 4
@meson8b_vpu_0_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.700 }, ptr null, ptr @.compoundliteral.701 }, align 4
@meson8b_vpu_0 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.704 }, ptr null, ptr @.compoundliteral.705 }, align 4
@meson8b_vpu_1_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.707 }, ptr null, ptr @.compoundliteral.708 }, align 4
@meson8m2_vpu_1_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.709 }, ptr null, ptr @.compoundliteral.710 }, align 4
@meson8b_vpu_1_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.713 }, ptr null, ptr @.compoundliteral.714 }, align 4
@meson8b_vpu_1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.717 }, ptr null, ptr @.compoundliteral.718 }, align 4
@meson8b_vpu = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.721 }, ptr null, ptr @.compoundliteral.722 }, align 4
@meson8b_vdec_1_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.724 }, ptr null, ptr @.compoundliteral.725 }, align 4
@meson8b_vdec_1_1_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.728 }, ptr null, ptr @.compoundliteral.729 }, align 4
@meson8b_vdec_1_1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.732 }, ptr null, ptr @.compoundliteral.733 }, align 4
@meson8b_vdec_1_2_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.736 }, ptr null, ptr @.compoundliteral.737 }, align 4
@meson8b_vdec_1_2 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.740 }, ptr null, ptr @.compoundliteral.741 }, align 4
@meson8b_vdec_1 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.744 }, ptr null, ptr @.compoundliteral.745 }, align 4
@meson8b_vdec_hcodec_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.747 }, ptr null, ptr @.compoundliteral.748 }, align 4
@meson8b_vdec_hcodec_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.751 }, ptr null, ptr @.compoundliteral.752 }, align 4
@meson8b_vdec_hcodec = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.755 }, ptr null, ptr @.compoundliteral.756 }, align 4
@meson8b_vdec_2_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.758 }, ptr null, ptr @.compoundliteral.759 }, align 4
@meson8b_vdec_2_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.762 }, ptr null, ptr @.compoundliteral.763 }, align 4
@meson8b_vdec_2 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.766 }, ptr null, ptr @.compoundliteral.767 }, align 4
@meson8b_vdec_hevc_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.769 }, ptr null, ptr @.compoundliteral.770 }, align 4
@meson8b_vdec_hevc_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.773 }, ptr null, ptr @.compoundliteral.774 }, align 4
@meson8b_vdec_hevc_en = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.777 }, ptr null, ptr @.compoundliteral.778 }, align 4
@meson8b_vdec_hevc = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.781 }, ptr null, ptr @.compoundliteral.782 }, align 4
@meson8b_cts_amclk = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.785 }, ptr null, ptr @.compoundliteral.786 }, align 4
@meson8b_cts_amclk_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.788 }, ptr null, ptr @.compoundliteral.789 }, align 4
@meson8b_cts_amclk_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.792 }, ptr null, ptr @.compoundliteral.793 }, align 4
@meson8b_cts_mclk_i958_sel = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.795 }, ptr null, ptr @.compoundliteral.796 }, align 4
@meson8b_cts_mclk_i958_div = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.799 }, ptr null, ptr @.compoundliteral.800 }, align 4
@meson8b_cts_mclk_i958 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.803 }, ptr null, ptr @.compoundliteral.804 }, align 4
@meson8b_cts_i958 = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.807 }, ptr null, ptr @.compoundliteral.808 }, align 4
@meson8b_vid_pll_lvds_en = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.811 }, ptr null, ptr @.compoundliteral.812 }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"clk81\00", align 1
@clk_regmap_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global [1 x ptr] [ptr @meson8b_mpeg_clk_div], align 4
@.compoundliteral.5 = internal global %struct.clk_init_data { ptr @.str.4, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral, i8 1, i32 2048 }, align 4
@.compoundliteral.6 = internal global %struct.clk_regmap_gate_data { i32 372, i8 7, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"meson8b_ddr\00", align 1
@.compoundliteral.8 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.9 = internal global %struct.clk_init_data { ptr @.str.7, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.8, i8 1, i32 12 }, align 4
@.compoundliteral.10 = internal global %struct.clk_regmap_gate_data { i32 320, i8 0, i8 0 }, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"meson8b_dos\00", align 1
@.compoundliteral.12 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.13 = internal global %struct.clk_init_data { ptr @.str.11, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.12, i8 1, i32 12 }, align 4
@.compoundliteral.14 = internal global %struct.clk_regmap_gate_data { i32 320, i8 1, i8 0 }, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"meson8b_isa\00", align 1
@.compoundliteral.16 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.17 = internal global %struct.clk_init_data { ptr @.str.15, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.16, i8 1, i32 12 }, align 4
@.compoundliteral.18 = internal global %struct.clk_regmap_gate_data { i32 320, i8 5, i8 0 }, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"meson8b_pl301\00", align 1
@.compoundliteral.20 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.21 = internal global %struct.clk_init_data { ptr @.str.19, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.20, i8 1, i32 12 }, align 4
@.compoundliteral.22 = internal global %struct.clk_regmap_gate_data { i32 320, i8 6, i8 0 }, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"meson8b_periphs\00", align 1
@.compoundliteral.24 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.25 = internal global %struct.clk_init_data { ptr @.str.23, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.24, i8 1, i32 12 }, align 4
@.compoundliteral.26 = internal global %struct.clk_regmap_gate_data { i32 320, i8 7, i8 0 }, align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"meson8b_spicc\00", align 1
@.compoundliteral.28 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.29 = internal global %struct.clk_init_data { ptr @.str.27, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.28, i8 1, i32 12 }, align 4
@.compoundliteral.30 = internal global %struct.clk_regmap_gate_data { i32 320, i8 8, i8 0 }, align 4
@.str.31 = private unnamed_addr constant [12 x i8] c"meson8b_i2c\00", align 1
@.compoundliteral.32 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.33 = internal global %struct.clk_init_data { ptr @.str.31, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.32, i8 1, i32 12 }, align 4
@.compoundliteral.34 = internal global %struct.clk_regmap_gate_data { i32 320, i8 9, i8 0 }, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"meson8b_sar_adc\00", align 1
@.compoundliteral.36 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.37 = internal global %struct.clk_init_data { ptr @.str.35, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.36, i8 1, i32 12 }, align 4
@.compoundliteral.38 = internal global %struct.clk_regmap_gate_data { i32 320, i8 10, i8 0 }, align 4
@.str.39 = private unnamed_addr constant [19 x i8] c"meson8b_smart_card\00", align 1
@.compoundliteral.40 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.41 = internal global %struct.clk_init_data { ptr @.str.39, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.40, i8 1, i32 12 }, align 4
@.compoundliteral.42 = internal global %struct.clk_regmap_gate_data { i32 320, i8 11, i8 0 }, align 4
@.str.43 = private unnamed_addr constant [13 x i8] c"meson8b_rng0\00", align 1
@.compoundliteral.44 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.45 = internal global %struct.clk_init_data { ptr @.str.43, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.44, i8 1, i32 12 }, align 4
@.compoundliteral.46 = internal global %struct.clk_regmap_gate_data { i32 320, i8 12, i8 0 }, align 4
@.str.47 = private unnamed_addr constant [14 x i8] c"meson8b_uart0\00", align 1
@.compoundliteral.48 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.49 = internal global %struct.clk_init_data { ptr @.str.47, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.48, i8 1, i32 12 }, align 4
@.compoundliteral.50 = internal global %struct.clk_regmap_gate_data { i32 320, i8 13, i8 0 }, align 4
@.str.51 = private unnamed_addr constant [13 x i8] c"meson8b_sdhc\00", align 1
@.compoundliteral.52 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.53 = internal global %struct.clk_init_data { ptr @.str.51, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.52, i8 1, i32 12 }, align 4
@.compoundliteral.54 = internal global %struct.clk_regmap_gate_data { i32 320, i8 14, i8 0 }, align 4
@.str.55 = private unnamed_addr constant [15 x i8] c"meson8b_stream\00", align 1
@.compoundliteral.56 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.57 = internal global %struct.clk_init_data { ptr @.str.55, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.56, i8 1, i32 12 }, align 4
@.compoundliteral.58 = internal global %struct.clk_regmap_gate_data { i32 320, i8 15, i8 0 }, align 4
@.str.59 = private unnamed_addr constant [19 x i8] c"meson8b_async_fifo\00", align 1
@.compoundliteral.60 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.61 = internal global %struct.clk_init_data { ptr @.str.59, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.60, i8 1, i32 12 }, align 4
@.compoundliteral.62 = internal global %struct.clk_regmap_gate_data { i32 320, i8 16, i8 0 }, align 4
@.str.63 = private unnamed_addr constant [13 x i8] c"meson8b_sdio\00", align 1
@.compoundliteral.64 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.65 = internal global %struct.clk_init_data { ptr @.str.63, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.64, i8 1, i32 12 }, align 4
@.compoundliteral.66 = internal global %struct.clk_regmap_gate_data { i32 320, i8 17, i8 0 }, align 4
@.str.67 = private unnamed_addr constant [13 x i8] c"meson8b_abuf\00", align 1
@.compoundliteral.68 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.69 = internal global %struct.clk_init_data { ptr @.str.67, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.68, i8 1, i32 12 }, align 4
@.compoundliteral.70 = internal global %struct.clk_regmap_gate_data { i32 320, i8 18, i8 0 }, align 4
@.str.71 = private unnamed_addr constant [18 x i8] c"meson8b_hiu_iface\00", align 1
@.compoundliteral.72 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.73 = internal global %struct.clk_init_data { ptr @.str.71, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.72, i8 1, i32 12 }, align 4
@.compoundliteral.74 = internal global %struct.clk_regmap_gate_data { i32 320, i8 19, i8 0 }, align 4
@.str.75 = private unnamed_addr constant [20 x i8] c"meson8b_assist_misc\00", align 1
@.compoundliteral.76 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.77 = internal global %struct.clk_init_data { ptr @.str.75, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.76, i8 1, i32 12 }, align 4
@.compoundliteral.78 = internal global %struct.clk_regmap_gate_data { i32 320, i8 23, i8 0 }, align 4
@.str.79 = private unnamed_addr constant [12 x i8] c"meson8b_spi\00", align 1
@.compoundliteral.80 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.81 = internal global %struct.clk_init_data { ptr @.str.79, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.80, i8 1, i32 12 }, align 4
@.compoundliteral.82 = internal global %struct.clk_regmap_gate_data { i32 320, i8 30, i8 0 }, align 4
@.str.83 = private unnamed_addr constant [18 x i8] c"meson8b_i2s_spdif\00", align 1
@.compoundliteral.84 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.85 = internal global %struct.clk_init_data { ptr @.str.83, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.84, i8 1, i32 12 }, align 4
@.compoundliteral.86 = internal global %struct.clk_regmap_gate_data { i32 324, i8 2, i8 0 }, align 4
@.str.87 = private unnamed_addr constant [12 x i8] c"meson8b_eth\00", align 1
@.compoundliteral.88 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.89 = internal global %struct.clk_init_data { ptr @.str.87, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.88, i8 1, i32 12 }, align 4
@.compoundliteral.90 = internal global %struct.clk_regmap_gate_data { i32 324, i8 3, i8 0 }, align 4
@.str.91 = private unnamed_addr constant [14 x i8] c"meson8b_demux\00", align 1
@.compoundliteral.92 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.93 = internal global %struct.clk_init_data { ptr @.str.91, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.92, i8 1, i32 12 }, align 4
@.compoundliteral.94 = internal global %struct.clk_regmap_gate_data { i32 324, i8 4, i8 0 }, align 4
@.str.95 = private unnamed_addr constant [17 x i8] c"meson8b_aiu_glue\00", align 1
@.compoundliteral.96 = internal global [1 x ptr] [ptr @meson8b_aiu], align 4
@.compoundliteral.97 = internal global %struct.clk_init_data { ptr @.str.95, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.96, i8 1, i32 12 }, align 4
@.compoundliteral.98 = internal global %struct.clk_regmap_gate_data { i32 324, i8 6, i8 0 }, align 4
@.str.99 = private unnamed_addr constant [15 x i8] c"meson8b_iec958\00", align 1
@.compoundliteral.100 = internal global [1 x ptr] [ptr @meson8b_aiu_glue], align 4
@.compoundliteral.101 = internal global %struct.clk_init_data { ptr @.str.99, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.100, i8 1, i32 12 }, align 4
@.compoundliteral.102 = internal global %struct.clk_regmap_gate_data { i32 324, i8 7, i8 0 }, align 4
@.str.103 = private unnamed_addr constant [16 x i8] c"meson8b_i2s_out\00", align 1
@.compoundliteral.104 = internal global [1 x ptr] [ptr @meson8b_aiu_glue], align 4
@.compoundliteral.105 = internal global %struct.clk_init_data { ptr @.str.103, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.104, i8 1, i32 12 }, align 4
@.compoundliteral.106 = internal global %struct.clk_regmap_gate_data { i32 324, i8 8, i8 0 }, align 4
@.str.107 = private unnamed_addr constant [14 x i8] c"meson8b_amclk\00", align 1
@.compoundliteral.108 = internal global [1 x ptr] [ptr @meson8b_aiu_glue], align 4
@.compoundliteral.109 = internal global %struct.clk_init_data { ptr @.str.107, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.108, i8 1, i32 12 }, align 4
@.compoundliteral.110 = internal global %struct.clk_regmap_gate_data { i32 324, i8 9, i8 0 }, align 4
@.str.111 = private unnamed_addr constant [16 x i8] c"meson8b_aififo2\00", align 1
@.compoundliteral.112 = internal global [1 x ptr] [ptr @meson8b_aiu_glue], align 4
@.compoundliteral.113 = internal global %struct.clk_init_data { ptr @.str.111, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.112, i8 1, i32 12 }, align 4
@.compoundliteral.114 = internal global %struct.clk_regmap_gate_data { i32 324, i8 10, i8 0 }, align 4
@.str.115 = private unnamed_addr constant [14 x i8] c"meson8b_mixer\00", align 1
@.compoundliteral.116 = internal global [1 x ptr] [ptr @meson8b_aiu_glue], align 4
@.compoundliteral.117 = internal global %struct.clk_init_data { ptr @.str.115, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.116, i8 1, i32 12 }, align 4
@.compoundliteral.118 = internal global %struct.clk_regmap_gate_data { i32 324, i8 11, i8 0 }, align 4
@.str.119 = private unnamed_addr constant [20 x i8] c"meson8b_mixer_iface\00", align 1
@.compoundliteral.120 = internal global [1 x ptr] [ptr @meson8b_aiu_glue], align 4
@.compoundliteral.121 = internal global %struct.clk_init_data { ptr @.str.119, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.120, i8 1, i32 12 }, align 4
@.compoundliteral.122 = internal global %struct.clk_regmap_gate_data { i32 324, i8 12, i8 0 }, align 4
@.str.123 = private unnamed_addr constant [12 x i8] c"meson8b_adc\00", align 1
@.compoundliteral.124 = internal global [1 x ptr] [ptr @meson8b_aiu_glue], align 4
@.compoundliteral.125 = internal global %struct.clk_init_data { ptr @.str.123, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.124, i8 1, i32 12 }, align 4
@.compoundliteral.126 = internal global %struct.clk_regmap_gate_data { i32 324, i8 13, i8 0 }, align 4
@.str.127 = private unnamed_addr constant [14 x i8] c"meson8b_blkmv\00", align 1
@.compoundliteral.128 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.129 = internal global %struct.clk_init_data { ptr @.str.127, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.128, i8 1, i32 12 }, align 4
@.compoundliteral.130 = internal global %struct.clk_regmap_gate_data { i32 324, i8 14, i8 0 }, align 4
@.str.131 = private unnamed_addr constant [12 x i8] c"meson8b_aiu\00", align 1
@.compoundliteral.132 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.133 = internal global %struct.clk_init_data { ptr @.str.131, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.132, i8 1, i32 12 }, align 4
@.compoundliteral.134 = internal global %struct.clk_regmap_gate_data { i32 324, i8 15, i8 0 }, align 4
@.str.135 = private unnamed_addr constant [14 x i8] c"meson8b_uart1\00", align 1
@.compoundliteral.136 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.137 = internal global %struct.clk_init_data { ptr @.str.135, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.136, i8 1, i32 12 }, align 4
@.compoundliteral.138 = internal global %struct.clk_regmap_gate_data { i32 324, i8 16, i8 0 }, align 4
@.str.139 = private unnamed_addr constant [12 x i8] c"meson8b_g2d\00", align 1
@.compoundliteral.140 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.141 = internal global %struct.clk_init_data { ptr @.str.139, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.140, i8 1, i32 12 }, align 4
@.compoundliteral.142 = internal global %struct.clk_regmap_gate_data { i32 324, i8 20, i8 0 }, align 4
@.str.143 = private unnamed_addr constant [13 x i8] c"meson8b_usb0\00", align 1
@.compoundliteral.144 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.145 = internal global %struct.clk_init_data { ptr @.str.143, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.144, i8 1, i32 12 }, align 4
@.compoundliteral.146 = internal global %struct.clk_regmap_gate_data { i32 324, i8 21, i8 0 }, align 4
@.str.147 = private unnamed_addr constant [13 x i8] c"meson8b_usb1\00", align 1
@.compoundliteral.148 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.149 = internal global %struct.clk_init_data { ptr @.str.147, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.148, i8 1, i32 12 }, align 4
@.compoundliteral.150 = internal global %struct.clk_regmap_gate_data { i32 324, i8 22, i8 0 }, align 4
@.str.151 = private unnamed_addr constant [14 x i8] c"meson8b_reset\00", align 1
@.compoundliteral.152 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.153 = internal global %struct.clk_init_data { ptr @.str.151, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.152, i8 1, i32 12 }, align 4
@.compoundliteral.154 = internal global %struct.clk_regmap_gate_data { i32 324, i8 23, i8 0 }, align 4
@.str.155 = private unnamed_addr constant [13 x i8] c"meson8b_nand\00", align 1
@.compoundliteral.156 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.157 = internal global %struct.clk_init_data { ptr @.str.155, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.156, i8 1, i32 12 }, align 4
@.compoundliteral.158 = internal global %struct.clk_regmap_gate_data { i32 324, i8 24, i8 0 }, align 4
@.str.159 = private unnamed_addr constant [19 x i8] c"meson8b_dos_parser\00", align 1
@.compoundliteral.160 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.161 = internal global %struct.clk_init_data { ptr @.str.159, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.160, i8 1, i32 12 }, align 4
@.compoundliteral.162 = internal global %struct.clk_regmap_gate_data { i32 324, i8 25, i8 0 }, align 4
@.str.163 = private unnamed_addr constant [12 x i8] c"meson8b_usb\00", align 1
@.compoundliteral.164 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.165 = internal global %struct.clk_init_data { ptr @.str.163, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.164, i8 1, i32 12 }, align 4
@.compoundliteral.166 = internal global %struct.clk_regmap_gate_data { i32 324, i8 26, i8 0 }, align 4
@.str.167 = private unnamed_addr constant [14 x i8] c"meson8b_vdin1\00", align 1
@.compoundliteral.168 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.169 = internal global %struct.clk_init_data { ptr @.str.167, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.168, i8 1, i32 12 }, align 4
@.compoundliteral.170 = internal global %struct.clk_regmap_gate_data { i32 324, i8 28, i8 0 }, align 4
@.str.171 = private unnamed_addr constant [17 x i8] c"meson8b_ahb_arb0\00", align 1
@.compoundliteral.172 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.173 = internal global %struct.clk_init_data { ptr @.str.171, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.172, i8 1, i32 12 }, align 4
@.compoundliteral.174 = internal global %struct.clk_regmap_gate_data { i32 324, i8 29, i8 0 }, align 4
@.str.175 = private unnamed_addr constant [14 x i8] c"meson8b_efuse\00", align 1
@.compoundliteral.176 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.177 = internal global %struct.clk_init_data { ptr @.str.175, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.176, i8 1, i32 12 }, align 4
@.compoundliteral.178 = internal global %struct.clk_regmap_gate_data { i32 324, i8 30, i8 0 }, align 4
@.str.179 = private unnamed_addr constant [17 x i8] c"meson8b_boot_rom\00", align 1
@.compoundliteral.180 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.181 = internal global %struct.clk_init_data { ptr @.str.179, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.180, i8 1, i32 12 }, align 4
@.compoundliteral.182 = internal global %struct.clk_regmap_gate_data { i32 324, i8 31, i8 0 }, align 4
@.str.183 = private unnamed_addr constant [21 x i8] c"meson8b_ahb_data_bus\00", align 1
@.compoundliteral.184 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.185 = internal global %struct.clk_init_data { ptr @.str.183, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.184, i8 1, i32 12 }, align 4
@.compoundliteral.186 = internal global %struct.clk_regmap_gate_data { i32 328, i8 1, i8 0 }, align 4
@.str.187 = private unnamed_addr constant [21 x i8] c"meson8b_ahb_ctrl_bus\00", align 1
@.compoundliteral.188 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.189 = internal global %struct.clk_init_data { ptr @.str.187, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.188, i8 1, i32 12 }, align 4
@.compoundliteral.190 = internal global %struct.clk_regmap_gate_data { i32 328, i8 2, i8 0 }, align 4
@.str.191 = private unnamed_addr constant [23 x i8] c"meson8b_hdmi_intr_sync\00", align 1
@.compoundliteral.192 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.193 = internal global %struct.clk_init_data { ptr @.str.191, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.192, i8 1, i32 12 }, align 4
@.compoundliteral.194 = internal global %struct.clk_regmap_gate_data { i32 328, i8 3, i8 0 }, align 4
@.str.195 = private unnamed_addr constant [18 x i8] c"meson8b_hdmi_pclk\00", align 1
@.compoundliteral.196 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.197 = internal global %struct.clk_init_data { ptr @.str.195, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.196, i8 1, i32 12 }, align 4
@.compoundliteral.198 = internal global %struct.clk_regmap_gate_data { i32 328, i8 4, i8 0 }, align 4
@.str.199 = private unnamed_addr constant [24 x i8] c"meson8b_usb1_ddr_bridge\00", align 1
@.compoundliteral.200 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.201 = internal global %struct.clk_init_data { ptr @.str.199, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.200, i8 1, i32 12 }, align 4
@.compoundliteral.202 = internal global %struct.clk_regmap_gate_data { i32 328, i8 8, i8 0 }, align 4
@.str.203 = private unnamed_addr constant [24 x i8] c"meson8b_usb0_ddr_bridge\00", align 1
@.compoundliteral.204 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.205 = internal global %struct.clk_init_data { ptr @.str.203, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.204, i8 1, i32 12 }, align 4
@.compoundliteral.206 = internal global %struct.clk_regmap_gate_data { i32 328, i8 9, i8 0 }, align 4
@.str.207 = private unnamed_addr constant [17 x i8] c"meson8b_mmc_pclk\00", align 1
@.compoundliteral.208 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.209 = internal global %struct.clk_init_data { ptr @.str.207, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.208, i8 1, i32 12 }, align 4
@.compoundliteral.210 = internal global %struct.clk_regmap_gate_data { i32 328, i8 11, i8 0 }, align 4
@.str.211 = private unnamed_addr constant [13 x i8] c"meson8b_dvin\00", align 1
@.compoundliteral.212 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.213 = internal global %struct.clk_init_data { ptr @.str.211, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.212, i8 1, i32 12 }, align 4
@.compoundliteral.214 = internal global %struct.clk_regmap_gate_data { i32 328, i8 12, i8 0 }, align 4
@.str.215 = private unnamed_addr constant [14 x i8] c"meson8b_uart2\00", align 1
@.compoundliteral.216 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.217 = internal global %struct.clk_init_data { ptr @.str.215, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.216, i8 1, i32 12 }, align 4
@.compoundliteral.218 = internal global %struct.clk_regmap_gate_data { i32 328, i8 15, i8 0 }, align 4
@.str.219 = private unnamed_addr constant [13 x i8] c"meson8b_sana\00", align 1
@.compoundliteral.220 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.221 = internal global %struct.clk_init_data { ptr @.str.219, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.220, i8 1, i32 12 }, align 4
@.compoundliteral.222 = internal global %struct.clk_regmap_gate_data { i32 328, i8 22, i8 0 }, align 4
@.str.223 = private unnamed_addr constant [17 x i8] c"meson8b_vpu_intr\00", align 1
@.compoundliteral.224 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.225 = internal global %struct.clk_init_data { ptr @.str.223, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.224, i8 1, i32 12 }, align 4
@.compoundliteral.226 = internal global %struct.clk_regmap_gate_data { i32 328, i8 25, i8 0 }, align 4
@.str.227 = private unnamed_addr constant [28 x i8] c"meson8b_sec_ahb_ahb3_bridge\00", align 1
@.compoundliteral.228 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.229 = internal global %struct.clk_init_data { ptr @.str.227, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.228, i8 1, i32 12 }, align 4
@.compoundliteral.230 = internal global %struct.clk_regmap_gate_data { i32 328, i8 26, i8 0 }, align 4
@.str.231 = private unnamed_addr constant [17 x i8] c"meson8b_clk81_a9\00", align 1
@.compoundliteral.232 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.233 = internal global %struct.clk_init_data { ptr @.str.231, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.232, i8 1, i32 12 }, align 4
@.compoundliteral.234 = internal global %struct.clk_regmap_gate_data { i32 328, i8 29, i8 0 }, align 4
@.str.235 = private unnamed_addr constant [21 x i8] c"meson8b_vclk2_venci0\00", align 1
@.compoundliteral.236 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.237 = internal global %struct.clk_init_data { ptr @.str.235, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.236, i8 1, i32 12 }, align 4
@.compoundliteral.238 = internal global %struct.clk_regmap_gate_data { i32 336, i8 1, i8 0 }, align 4
@.str.239 = private unnamed_addr constant [21 x i8] c"meson8b_vclk2_venci1\00", align 1
@.compoundliteral.240 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.241 = internal global %struct.clk_init_data { ptr @.str.239, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.240, i8 1, i32 12 }, align 4
@.compoundliteral.242 = internal global %struct.clk_regmap_gate_data { i32 336, i8 2, i8 0 }, align 4
@.str.243 = private unnamed_addr constant [21 x i8] c"meson8b_vclk2_vencp0\00", align 1
@.compoundliteral.244 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.245 = internal global %struct.clk_init_data { ptr @.str.243, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.244, i8 1, i32 12 }, align 4
@.compoundliteral.246 = internal global %struct.clk_regmap_gate_data { i32 336, i8 3, i8 0 }, align 4
@.str.247 = private unnamed_addr constant [21 x i8] c"meson8b_vclk2_vencp1\00", align 1
@.compoundliteral.248 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.249 = internal global %struct.clk_init_data { ptr @.str.247, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.248, i8 1, i32 12 }, align 4
@.compoundliteral.250 = internal global %struct.clk_regmap_gate_data { i32 336, i8 4, i8 0 }, align 4
@.str.251 = private unnamed_addr constant [23 x i8] c"meson8b_gclk_venci_int\00", align 1
@.compoundliteral.252 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.253 = internal global %struct.clk_init_data { ptr @.str.251, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.252, i8 1, i32 12 }, align 4
@.compoundliteral.254 = internal global %struct.clk_regmap_gate_data { i32 336, i8 8, i8 0 }, align 4
@.str.255 = private unnamed_addr constant [23 x i8] c"meson8b_gclk_vencp_int\00", align 1
@.compoundliteral.256 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.257 = internal global %struct.clk_init_data { ptr @.str.255, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.256, i8 1, i32 12 }, align 4
@.compoundliteral.258 = internal global %struct.clk_regmap_gate_data { i32 336, i8 9, i8 0 }, align 4
@.str.259 = private unnamed_addr constant [16 x i8] c"meson8b_dac_clk\00", align 1
@.compoundliteral.260 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.261 = internal global %struct.clk_init_data { ptr @.str.259, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.260, i8 1, i32 12 }, align 4
@.compoundliteral.262 = internal global %struct.clk_regmap_gate_data { i32 336, i8 10, i8 0 }, align 4
@.str.263 = private unnamed_addr constant [19 x i8] c"meson8b_aoclk_gate\00", align 1
@.compoundliteral.264 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.265 = internal global %struct.clk_init_data { ptr @.str.263, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.264, i8 1, i32 12 }, align 4
@.compoundliteral.266 = internal global %struct.clk_regmap_gate_data { i32 336, i8 14, i8 0 }, align 4
@.str.267 = private unnamed_addr constant [20 x i8] c"meson8b_iec958_gate\00", align 1
@.compoundliteral.268 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.269 = internal global %struct.clk_init_data { ptr @.str.267, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.268, i8 1, i32 12 }, align 4
@.compoundliteral.270 = internal global %struct.clk_regmap_gate_data { i32 336, i8 16, i8 0 }, align 4
@.str.271 = private unnamed_addr constant [16 x i8] c"meson8b_enc480p\00", align 1
@.compoundliteral.272 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.273 = internal global %struct.clk_init_data { ptr @.str.271, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.272, i8 1, i32 12 }, align 4
@.compoundliteral.274 = internal global %struct.clk_regmap_gate_data { i32 336, i8 20, i8 0 }, align 4
@.str.275 = private unnamed_addr constant [13 x i8] c"meson8b_rng1\00", align 1
@.compoundliteral.276 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.277 = internal global %struct.clk_init_data { ptr @.str.275, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.276, i8 1, i32 12 }, align 4
@.compoundliteral.278 = internal global %struct.clk_regmap_gate_data { i32 336, i8 21, i8 0 }, align 4
@.str.279 = private unnamed_addr constant [23 x i8] c"meson8b_gclk_vencl_int\00", align 1
@.compoundliteral.280 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.281 = internal global %struct.clk_init_data { ptr @.str.279, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.280, i8 1, i32 12 }, align 4
@.compoundliteral.282 = internal global %struct.clk_regmap_gate_data { i32 336, i8 22, i8 0 }, align 4
@.str.283 = private unnamed_addr constant [23 x i8] c"meson8b_vclk2_venclmcc\00", align 1
@.compoundliteral.284 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.285 = internal global %struct.clk_init_data { ptr @.str.283, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.284, i8 1, i32 12 }, align 4
@.compoundliteral.286 = internal global %struct.clk_regmap_gate_data { i32 336, i8 24, i8 0 }, align 4
@.str.287 = private unnamed_addr constant [20 x i8] c"meson8b_vclk2_vencl\00", align 1
@.compoundliteral.288 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.289 = internal global %struct.clk_init_data { ptr @.str.287, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.288, i8 1, i32 12 }, align 4
@.compoundliteral.290 = internal global %struct.clk_regmap_gate_data { i32 336, i8 25, i8 0 }, align 4
@.str.291 = private unnamed_addr constant [20 x i8] c"meson8b_vclk2_other\00", align 1
@.compoundliteral.292 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.293 = internal global %struct.clk_init_data { ptr @.str.291, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.292, i8 1, i32 12 }, align 4
@.compoundliteral.294 = internal global %struct.clk_regmap_gate_data { i32 336, i8 26, i8 0 }, align 4
@.str.295 = private unnamed_addr constant [12 x i8] c"meson8b_edp\00", align 1
@.compoundliteral.296 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.297 = internal global %struct.clk_init_data { ptr @.str.295, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.296, i8 1, i32 12 }, align 4
@.compoundliteral.298 = internal global %struct.clk_regmap_gate_data { i32 336, i8 31, i8 0 }, align 4
@.str.299 = private unnamed_addr constant [21 x i8] c"meson8b_ao_media_cpu\00", align 1
@.compoundliteral.300 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.301 = internal global %struct.clk_init_data { ptr @.str.299, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.300, i8 1, i32 12 }, align 4
@.compoundliteral.302 = internal global %struct.clk_regmap_gate_data { i32 340, i8 0, i8 0 }, align 4
@.str.303 = private unnamed_addr constant [20 x i8] c"meson8b_ao_ahb_sram\00", align 1
@.compoundliteral.304 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.305 = internal global %struct.clk_init_data { ptr @.str.303, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.304, i8 1, i32 12 }, align 4
@.compoundliteral.306 = internal global %struct.clk_regmap_gate_data { i32 340, i8 1, i8 0 }, align 4
@.str.307 = private unnamed_addr constant [19 x i8] c"meson8b_ao_ahb_bus\00", align 1
@.compoundliteral.308 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.309 = internal global %struct.clk_init_data { ptr @.str.307, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.308, i8 1, i32 12 }, align 4
@.compoundliteral.310 = internal global %struct.clk_regmap_gate_data { i32 340, i8 2, i8 0 }, align 4
@.str.311 = private unnamed_addr constant [17 x i8] c"meson8b_ao_iface\00", align 1
@.compoundliteral.312 = internal global [1 x ptr] [ptr @meson8b_clk81], align 4
@.compoundliteral.313 = internal global %struct.clk_init_data { ptr @.str.311, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.312, i8 1, i32 12 }, align 4
@.compoundliteral.314 = internal global %struct.clk_regmap_gate_data { i32 340, i8 3, i8 0 }, align 4
@.str.315 = private unnamed_addr constant [13 x i8] c"mpeg_clk_div\00", align 1
@clk_regmap_divider_ro_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.316 = internal global [1 x ptr] [ptr @meson8b_mpeg_clk_sel], align 4
@.compoundliteral.317 = internal global %struct.clk_init_data { ptr @.str.315, ptr @clk_regmap_divider_ro_ops, ptr null, ptr null, ptr @.compoundliteral.316, i8 1, i32 0 }, align 4
@.compoundliteral.318 = internal global %struct.clk_regmap_div_data { i32 372, i8 0, i8 7, i8 0, ptr null }, align 4
@.str.319 = private unnamed_addr constant [13 x i8] c"mpeg_clk_sel\00", align 1
@clk_regmap_mux_ro_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.320 = internal global [3 x ptr] [ptr @meson8b_fclk_div3, ptr @meson8b_fclk_div4, ptr @meson8b_fclk_div5], align 4
@.compoundliteral.321 = internal global %struct.clk_init_data { ptr @.str.319, ptr @clk_regmap_mux_ro_ops, ptr null, ptr null, ptr @.compoundliteral.320, i8 3, i32 0 }, align 4
@mux_table_clk81 = internal global [3 x i32] [i32 6, i32 5, i32 7], align 4
@.compoundliteral.322 = internal global %struct.clk_regmap_mux_data { i32 372, ptr @mux_table_clk81, i32 7, i8 12, i8 0 }, align 4
@.str.323 = private unnamed_addr constant [6 x i8] c"mpll0\00", align 1
@.compoundliteral.324 = internal global [1 x ptr] [ptr @meson8b_mpll0_div], align 4
@.compoundliteral.325 = internal global %struct.clk_init_data { ptr @.str.323, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.324, i8 1, i32 4 }, align 4
@.compoundliteral.326 = internal global %struct.clk_regmap_gate_data { i32 664, i8 14, i8 0 }, align 4
@.str.327 = private unnamed_addr constant [6 x i8] c"mpll1\00", align 1
@.compoundliteral.328 = internal global [1 x ptr] [ptr @meson8b_mpll1_div], align 4
@.compoundliteral.329 = internal global %struct.clk_init_data { ptr @.str.327, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.328, i8 1, i32 4 }, align 4
@.compoundliteral.330 = internal global %struct.clk_regmap_gate_data { i32 668, i8 14, i8 0 }, align 4
@.str.331 = private unnamed_addr constant [6 x i8] c"mpll2\00", align 1
@.compoundliteral.332 = internal global [1 x ptr] [ptr @meson8b_mpll2_div], align 4
@.compoundliteral.333 = internal global %struct.clk_init_data { ptr @.str.331, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.332, i8 1, i32 4 }, align 4
@.compoundliteral.334 = internal global %struct.clk_regmap_gate_data { i32 672, i8 14, i8 0 }, align 4
@.str.335 = private unnamed_addr constant [10 x i8] c"mpll0_div\00", align 1
@meson_clk_mpll_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.336 = internal global [1 x ptr] [ptr @meson8b_mpll_prediv], align 4
@.compoundliteral.337 = internal global %struct.clk_init_data { ptr @.str.335, ptr @meson_clk_mpll_ops, ptr null, ptr null, ptr @.compoundliteral.336, i8 1, i32 0 }, align 4
@.compoundliteral.338 = internal global %struct.meson_clk_mpll_data { %struct.parm { i16 664, i8 0, i8 14 }, %struct.parm { i16 664, i8 15, i8 1 }, %struct.parm { i16 664, i8 16, i8 9 }, %struct.parm { i16 640, i8 25, i8 1 }, %struct.parm zeroinitializer, ptr null, i32 0, ptr @meson_clk_lock, i8 0 }, align 4
@.str.339 = private unnamed_addr constant [10 x i8] c"mpll1_div\00", align 1
@.compoundliteral.340 = internal global [1 x ptr] [ptr @meson8b_mpll_prediv], align 4
@.compoundliteral.341 = internal global %struct.clk_init_data { ptr @.str.339, ptr @meson_clk_mpll_ops, ptr null, ptr null, ptr @.compoundliteral.340, i8 1, i32 0 }, align 4
@.compoundliteral.342 = internal global %struct.meson_clk_mpll_data { %struct.parm { i16 668, i8 0, i8 14 }, %struct.parm { i16 668, i8 15, i8 1 }, %struct.parm { i16 668, i8 16, i8 9 }, %struct.parm zeroinitializer, %struct.parm zeroinitializer, ptr null, i32 0, ptr @meson_clk_lock, i8 0 }, align 4
@.str.343 = private unnamed_addr constant [10 x i8] c"mpll2_div\00", align 1
@.compoundliteral.344 = internal global [1 x ptr] [ptr @meson8b_mpll_prediv], align 4
@.compoundliteral.345 = internal global %struct.clk_init_data { ptr @.str.343, ptr @meson_clk_mpll_ops, ptr null, ptr null, ptr @.compoundliteral.344, i8 1, i32 0 }, align 4
@.compoundliteral.346 = internal global %struct.meson_clk_mpll_data { %struct.parm { i16 672, i8 0, i8 14 }, %struct.parm { i16 672, i8 15, i8 1 }, %struct.parm { i16 672, i8 16, i8 9 }, %struct.parm zeroinitializer, %struct.parm zeroinitializer, ptr null, i32 0, ptr @meson_clk_lock, i8 0 }, align 4
@.str.347 = private unnamed_addr constant [10 x i8] c"fixed_pll\00", align 1
@.compoundliteral.348 = internal global [1 x ptr] [ptr @meson8b_fixed_pll_dco], align 4
@.compoundliteral.349 = internal global %struct.clk_init_data { ptr @.str.347, ptr @clk_regmap_divider_ro_ops, ptr null, ptr null, ptr @.compoundliteral.348, i8 1, i32 0 }, align 4
@.compoundliteral.350 = internal global %struct.clk_regmap_div_data { i32 640, i8 16, i8 2, i8 2, ptr null }, align 4
@.str.351 = private unnamed_addr constant [8 x i8] c"sys_pll\00", align 1
@clk_regmap_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.352 = internal global [1 x ptr] [ptr @meson8b_sys_pll_dco], align 4
@.compoundliteral.353 = internal global %struct.clk_init_data { ptr @.str.351, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.352, i8 1, i32 4 }, align 4
@.compoundliteral.354 = internal global %struct.clk_regmap_div_data { i32 768, i8 16, i8 2, i8 2, ptr null }, align 4
@.str.355 = private unnamed_addr constant [11 x i8] c"cpu_in_sel\00", align 1
@clk_regmap_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.356 = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@.compoundliteral.357 = internal constant [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.356, ptr @.str.356, i32 -1 }, %struct.clk_parent_data { ptr @meson8b_sys_pll, ptr null, ptr null, i32 0 }], align 4
@.compoundliteral.358 = internal global %struct.clk_init_data { ptr @.str.355, ptr @clk_regmap_mux_ops, ptr null, ptr @.compoundliteral.357, ptr null, i8 2, i32 132 }, align 4
@.compoundliteral.359 = internal global %struct.clk_regmap_mux_data { i32 412, ptr null, i32 1, i8 0, i8 0 }, align 4
@.str.360 = private unnamed_addr constant [14 x i8] c"cpu_scale_div\00", align 1
@.compoundliteral.361 = internal global [1 x ptr] [ptr @meson8b_cpu_in_sel], align 4
@.compoundliteral.362 = internal global %struct.clk_init_data { ptr @.str.360, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.361, i8 1, i32 4 }, align 4
@cpu_scale_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table { i32 8, i32 18 }, %struct.clk_div_table zeroinitializer], align 4
@.compoundliteral.363 = internal global %struct.clk_regmap_div_data { i32 348, i8 20, i8 10, i8 4, ptr @cpu_scale_table }, align 4
@.str.364 = private unnamed_addr constant [8 x i8] c"cpu_clk\00", align 1
@.compoundliteral.365 = internal constant [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.356, ptr @.str.356, i32 -1 }, %struct.clk_parent_data { ptr @meson8b_cpu_scale_out_sel, ptr null, ptr null, i32 0 }], align 4
@.compoundliteral.366 = internal global %struct.clk_init_data { ptr @.str.364, ptr @clk_regmap_mux_ops, ptr null, ptr @.compoundliteral.365, ptr null, i8 2, i32 2180 }, align 4
@.compoundliteral.367 = internal global %struct.clk_regmap_mux_data { i32 412, ptr null, i32 1, i8 7, i8 0 }, align 4
@.str.368 = private unnamed_addr constant [12 x i8] c"mpll_prediv\00", align 1
@.compoundliteral.369 = internal global [1 x ptr] [ptr @meson8b_fixed_pll], align 4
@.compoundliteral.370 = internal global %struct.clk_init_data { ptr @.str.368, ptr @clk_regmap_divider_ro_ops, ptr null, ptr null, ptr @.compoundliteral.369, i8 1, i32 0 }, align 4
@.compoundliteral.371 = internal global %struct.clk_regmap_div_data { i32 656, i8 12, i8 1, i8 0, ptr null }, align 4
@.str.372 = private unnamed_addr constant [10 x i8] c"fclk_div2\00", align 1
@meson8b_fclk_div2_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.378 }, i32 1, i32 2 }, align 4
@.compoundliteral.373 = internal global [1 x ptr] [ptr @meson8b_fclk_div2_div], align 4
@.compoundliteral.374 = internal global %struct.clk_init_data { ptr @.str.372, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.373, i8 1, i32 0 }, align 4
@.compoundliteral.375 = internal global %struct.clk_regmap_gate_data { i32 660, i8 27, i8 0 }, align 4
@.str.376 = private unnamed_addr constant [14 x i8] c"fclk_div2_div\00", align 1
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.377 = internal global [1 x ptr] [ptr @meson8b_fixed_pll], align 4
@.compoundliteral.378 = internal global %struct.clk_init_data { ptr @.str.376, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.377, i8 1, i32 0 }, align 4
@.str.379 = private unnamed_addr constant [10 x i8] c"fclk_div3\00", align 1
@meson8b_fclk_div3_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.385 }, i32 1, i32 3 }, align 4
@.compoundliteral.380 = internal global [1 x ptr] [ptr @meson8b_fclk_div3_div], align 4
@.compoundliteral.381 = internal global %struct.clk_init_data { ptr @.str.379, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.380, i8 1, i32 0 }, align 4
@.compoundliteral.382 = internal global %struct.clk_regmap_gate_data { i32 660, i8 28, i8 0 }, align 4
@.str.383 = private unnamed_addr constant [14 x i8] c"fclk_div3_div\00", align 1
@.compoundliteral.384 = internal global [1 x ptr] [ptr @meson8b_fixed_pll], align 4
@.compoundliteral.385 = internal global %struct.clk_init_data { ptr @.str.383, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.384, i8 1, i32 0 }, align 4
@.str.386 = private unnamed_addr constant [10 x i8] c"fclk_div4\00", align 1
@meson8b_fclk_div4_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.392 }, i32 1, i32 4 }, align 4
@.compoundliteral.387 = internal global [1 x ptr] [ptr @meson8b_fclk_div4_div], align 4
@.compoundliteral.388 = internal global %struct.clk_init_data { ptr @.str.386, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.387, i8 1, i32 0 }, align 4
@.compoundliteral.389 = internal global %struct.clk_regmap_gate_data { i32 660, i8 29, i8 0 }, align 4
@.str.390 = private unnamed_addr constant [14 x i8] c"fclk_div4_div\00", align 1
@.compoundliteral.391 = internal global [1 x ptr] [ptr @meson8b_fixed_pll], align 4
@.compoundliteral.392 = internal global %struct.clk_init_data { ptr @.str.390, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.391, i8 1, i32 0 }, align 4
@.str.393 = private unnamed_addr constant [10 x i8] c"fclk_div5\00", align 1
@meson8b_fclk_div5_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.399 }, i32 1, i32 5 }, align 4
@.compoundliteral.394 = internal global [1 x ptr] [ptr @meson8b_fclk_div5_div], align 4
@.compoundliteral.395 = internal global %struct.clk_init_data { ptr @.str.393, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.394, i8 1, i32 0 }, align 4
@.compoundliteral.396 = internal global %struct.clk_regmap_gate_data { i32 660, i8 30, i8 0 }, align 4
@.str.397 = private unnamed_addr constant [14 x i8] c"fclk_div5_div\00", align 1
@.compoundliteral.398 = internal global [1 x ptr] [ptr @meson8b_fixed_pll], align 4
@.compoundliteral.399 = internal global %struct.clk_init_data { ptr @.str.397, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.398, i8 1, i32 0 }, align 4
@.str.400 = private unnamed_addr constant [10 x i8] c"fclk_div7\00", align 1
@meson8b_fclk_div7_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.406 }, i32 1, i32 7 }, align 4
@.compoundliteral.401 = internal global [1 x ptr] [ptr @meson8b_fclk_div7_div], align 4
@.compoundliteral.402 = internal global %struct.clk_init_data { ptr @.str.400, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.401, i8 1, i32 0 }, align 4
@.compoundliteral.403 = internal global %struct.clk_regmap_gate_data { i32 660, i8 31, i8 0 }, align 4
@.str.404 = private unnamed_addr constant [14 x i8] c"fclk_div7_div\00", align 1
@.compoundliteral.405 = internal global [1 x ptr] [ptr @meson8b_fixed_pll], align 4
@.compoundliteral.406 = internal global %struct.clk_init_data { ptr @.str.404, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.405, i8 1, i32 0 }, align 4
@.str.407 = private unnamed_addr constant [13 x i8] c"nand_clk_sel\00", align 1
@.compoundliteral.408 = internal constant [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr @meson8b_fclk_div4, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr @meson8b_fclk_div3, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr @meson8b_fclk_div5, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr @meson8b_fclk_div7, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.356, ptr @.str.356, i32 -1 }], align 4
@.compoundliteral.409 = internal global %struct.clk_init_data { ptr @.str.407, ptr @clk_regmap_mux_ops, ptr null, ptr @.compoundliteral.408, ptr null, i8 5, i32 4 }, align 4
@.compoundliteral.410 = internal global %struct.clk_regmap_mux_data { i32 604, ptr null, i32 7, i8 9, i8 16 }, align 4
@.str.411 = private unnamed_addr constant [13 x i8] c"nand_clk_div\00", align 1
@.compoundliteral.412 = internal global [1 x ptr] [ptr @meson8b_nand_clk_sel], align 4
@.compoundliteral.413 = internal global %struct.clk_init_data { ptr @.str.411, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.412, i8 1, i32 4 }, align 4
@.compoundliteral.414 = internal global %struct.clk_regmap_div_data { i32 604, i8 0, i8 7, i8 16, ptr null }, align 4
@.str.415 = private unnamed_addr constant [14 x i8] c"nand_clk_gate\00", align 1
@.compoundliteral.416 = internal global [1 x ptr] [ptr @meson8b_nand_clk_div], align 4
@.compoundliteral.417 = internal global %struct.clk_init_data { ptr @.str.415, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.416, i8 1, i32 4 }, align 4
@.compoundliteral.418 = internal global %struct.clk_regmap_gate_data { i32 604, i8 8, i8 0 }, align 4
@.str.419 = private unnamed_addr constant [14 x i8] c"fixed_pll_dco\00", align 1
@meson_clk_pll_ro_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.420 = internal constant %struct.clk_parent_data { ptr null, ptr @.str.356, ptr @.str.356, i32 -1 }, align 4
@.compoundliteral.421 = internal global %struct.clk_init_data { ptr @.str.419, ptr @meson_clk_pll_ro_ops, ptr null, ptr @.compoundliteral.420, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.422 = internal global %struct.meson_clk_pll_data { %struct.parm { i16 640, i8 30, i8 1 }, %struct.parm { i16 640, i8 0, i8 9 }, %struct.parm { i16 640, i8 9, i8 5 }, %struct.parm { i16 644, i8 0, i8 12 }, %struct.parm { i16 640, i8 31, i8 1 }, %struct.parm { i16 640, i8 29, i8 1 }, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.423 = private unnamed_addr constant [13 x i8] c"hdmi_pll_dco\00", align 1
@meson_clk_pll_ops = external dso_local constant %struct.clk_ops, align 4
@hdmi_pll_dco_in = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.429 }, i32 2, i32 1 }, align 4
@.compoundliteral.424 = internal global [1 x ptr] [ptr @hdmi_pll_dco_in], align 4
@.compoundliteral.425 = internal global %struct.clk_init_data { ptr @.str.423, ptr @meson_clk_pll_ops, ptr null, ptr null, ptr @.compoundliteral.424, i8 1, i32 0 }, align 4
@meson8b_hdmi_pll_init_regs = internal constant [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 804, i32 1774731264, i32 0 }, %struct.reg_sequence { i32 808, i32 -1975074781, i32 0 }, %struct.reg_sequence { i32 812, i32 1092858112, i32 0 }, %struct.reg_sequence { i32 816, i32 74629, i32 0 }, %struct.reg_sequence { i32 900, i32 70297600, i32 0 }], align 4
@hdmi_pll_params_table = internal constant [18 x %struct.pll_params_table] [%struct.pll_params_table { i32 40, i32 1 }, %struct.pll_params_table { i32 42, i32 1 }, %struct.pll_params_table { i32 44, i32 1 }, %struct.pll_params_table { i32 45, i32 1 }, %struct.pll_params_table { i32 49, i32 1 }, %struct.pll_params_table { i32 52, i32 1 }, %struct.pll_params_table { i32 54, i32 1 }, %struct.pll_params_table { i32 56, i32 1 }, %struct.pll_params_table { i32 59, i32 1 }, %struct.pll_params_table { i32 60, i32 1 }, %struct.pll_params_table { i32 61, i32 1 }, %struct.pll_params_table { i32 62, i32 1 }, %struct.pll_params_table { i32 64, i32 1 }, %struct.pll_params_table { i32 66, i32 1 }, %struct.pll_params_table { i32 68, i32 1 }, %struct.pll_params_table { i32 71, i32 1 }, %struct.pll_params_table { i32 82, i32 1 }, %struct.pll_params_table zeroinitializer], align 4
@.compoundliteral.426 = internal global %struct.meson_clk_pll_data { %struct.parm { i16 800, i8 30, i8 1 }, %struct.parm { i16 800, i8 0, i8 9 }, %struct.parm { i16 800, i8 10, i8 5 }, %struct.parm { i16 804, i8 0, i8 12 }, %struct.parm { i16 800, i8 31, i8 1 }, %struct.parm { i16 800, i8 29, i8 1 }, ptr @meson8b_hdmi_pll_init_regs, i32 5, ptr @hdmi_pll_params_table, ptr null, i8 0 }, align 4
@.str.427 = private unnamed_addr constant [16 x i8] c"hdmi_pll_dco_in\00", align 1
@.compoundliteral.428 = internal constant %struct.clk_parent_data { ptr null, ptr @.str.356, ptr null, i32 -1 }, align 4
@.compoundliteral.429 = internal global %struct.clk_init_data { ptr @.str.427, ptr @clk_fixed_factor_ops, ptr null, ptr @.compoundliteral.428, ptr null, i8 1, i32 0 }, align 4
@.str.430 = private unnamed_addr constant [12 x i8] c"sys_pll_dco\00", align 1
@.compoundliteral.431 = internal constant %struct.clk_parent_data { ptr null, ptr @.str.356, ptr @.str.356, i32 -1 }, align 4
@.compoundliteral.432 = internal global %struct.clk_init_data { ptr @.str.430, ptr @meson_clk_pll_ops, ptr null, ptr @.compoundliteral.431, ptr null, i8 1, i32 0 }, align 4
@sys_pll_params_table = internal constant [21 x %struct.pll_params_table] [%struct.pll_params_table { i32 50, i32 1 }, %struct.pll_params_table { i32 51, i32 1 }, %struct.pll_params_table { i32 52, i32 1 }, %struct.pll_params_table { i32 53, i32 1 }, %struct.pll_params_table { i32 54, i32 1 }, %struct.pll_params_table { i32 55, i32 1 }, %struct.pll_params_table { i32 56, i32 1 }, %struct.pll_params_table { i32 57, i32 1 }, %struct.pll_params_table { i32 58, i32 1 }, %struct.pll_params_table { i32 59, i32 1 }, %struct.pll_params_table { i32 60, i32 1 }, %struct.pll_params_table { i32 61, i32 1 }, %struct.pll_params_table { i32 62, i32 1 }, %struct.pll_params_table { i32 63, i32 1 }, %struct.pll_params_table { i32 64, i32 1 }, %struct.pll_params_table { i32 65, i32 1 }, %struct.pll_params_table { i32 66, i32 1 }, %struct.pll_params_table { i32 67, i32 1 }, %struct.pll_params_table { i32 68, i32 1 }, %struct.pll_params_table { i32 84, i32 1 }, %struct.pll_params_table zeroinitializer], align 4
@.compoundliteral.433 = internal global %struct.meson_clk_pll_data { %struct.parm { i16 768, i8 30, i8 1 }, %struct.parm { i16 768, i8 0, i8 9 }, %struct.parm { i16 768, i8 9, i8 5 }, %struct.parm zeroinitializer, %struct.parm { i16 768, i8 31, i8 1 }, %struct.parm { i16 768, i8 29, i8 1 }, ptr null, i32 0, ptr @sys_pll_params_table, ptr null, i8 0 }, align 4
@.str.434 = private unnamed_addr constant [12 x i8] c"apb_clk_sel\00", align 1
@meson8b_cpu_clk_div2 = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.440 }, i32 1, i32 2 }, align 4
@meson8b_cpu_clk_div3 = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.443 }, i32 1, i32 3 }, align 4
@meson8b_cpu_clk_div4 = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.446 }, i32 1, i32 4 }, align 4
@meson8b_cpu_clk_div5 = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.449 }, i32 1, i32 5 }, align 4
@meson8b_cpu_clk_div6 = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.452 }, i32 1, i32 6 }, align 4
@meson8b_cpu_clk_div7 = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.455 }, i32 1, i32 7 }, align 4
@meson8b_cpu_clk_div8 = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.458 }, i32 1, i32 8 }, align 4
@.compoundliteral.435 = internal global [7 x ptr] [ptr @meson8b_cpu_clk_div2, ptr @meson8b_cpu_clk_div3, ptr @meson8b_cpu_clk_div4, ptr @meson8b_cpu_clk_div5, ptr @meson8b_cpu_clk_div6, ptr @meson8b_cpu_clk_div7, ptr @meson8b_cpu_clk_div8], align 4
@.compoundliteral.436 = internal global %struct.clk_init_data { ptr @.str.434, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.435, i8 7, i32 0 }, align 4
@mux_table_apb = internal global [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@.compoundliteral.437 = internal global %struct.clk_regmap_mux_data { i32 348, ptr @mux_table_apb, i32 7, i8 3, i8 0 }, align 4
@.str.438 = private unnamed_addr constant [13 x i8] c"cpu_clk_div2\00", align 1
@.compoundliteral.439 = internal global [1 x ptr] [ptr @meson8b_cpu_clk], align 4
@.compoundliteral.440 = internal global %struct.clk_init_data { ptr @.str.438, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.439, i8 1, i32 0 }, align 4
@.str.441 = private unnamed_addr constant [13 x i8] c"cpu_clk_div3\00", align 1
@.compoundliteral.442 = internal global [1 x ptr] [ptr @meson8b_cpu_clk], align 4
@.compoundliteral.443 = internal global %struct.clk_init_data { ptr @.str.441, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.442, i8 1, i32 0 }, align 4
@.str.444 = private unnamed_addr constant [13 x i8] c"cpu_clk_div4\00", align 1
@.compoundliteral.445 = internal global [1 x ptr] [ptr @meson8b_cpu_clk], align 4
@.compoundliteral.446 = internal global %struct.clk_init_data { ptr @.str.444, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.445, i8 1, i32 0 }, align 4
@.str.447 = private unnamed_addr constant [13 x i8] c"cpu_clk_div5\00", align 1
@.compoundliteral.448 = internal global [1 x ptr] [ptr @meson8b_cpu_clk], align 4
@.compoundliteral.449 = internal global %struct.clk_init_data { ptr @.str.447, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.448, i8 1, i32 0 }, align 4
@.str.450 = private unnamed_addr constant [13 x i8] c"cpu_clk_div6\00", align 1
@.compoundliteral.451 = internal global [1 x ptr] [ptr @meson8b_cpu_clk], align 4
@.compoundliteral.452 = internal global %struct.clk_init_data { ptr @.str.450, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.451, i8 1, i32 0 }, align 4
@.str.453 = private unnamed_addr constant [13 x i8] c"cpu_clk_div7\00", align 1
@.compoundliteral.454 = internal global [1 x ptr] [ptr @meson8b_cpu_clk], align 4
@.compoundliteral.455 = internal global %struct.clk_init_data { ptr @.str.453, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.454, i8 1, i32 0 }, align 4
@.str.456 = private unnamed_addr constant [13 x i8] c"cpu_clk_div8\00", align 1
@.compoundliteral.457 = internal global [1 x ptr] [ptr @meson8b_cpu_clk], align 4
@.compoundliteral.458 = internal global %struct.clk_init_data { ptr @.str.456, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.457, i8 1, i32 0 }, align 4
@.str.459 = private unnamed_addr constant [12 x i8] c"apb_clk_dis\00", align 1
@clk_regmap_gate_ro_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.460 = internal global [1 x ptr] [ptr @meson8b_apb_clk_sel], align 4
@.compoundliteral.461 = internal global %struct.clk_init_data { ptr @.str.459, ptr @clk_regmap_gate_ro_ops, ptr null, ptr null, ptr @.compoundliteral.460, i8 1, i32 4 }, align 4
@.compoundliteral.462 = internal global %struct.clk_regmap_gate_data { i32 348, i8 16, i8 1 }, align 4
@.str.463 = private unnamed_addr constant [15 x i8] c"periph_clk_sel\00", align 1
@.compoundliteral.464 = internal global [7 x ptr] [ptr @meson8b_cpu_clk_div2, ptr @meson8b_cpu_clk_div3, ptr @meson8b_cpu_clk_div4, ptr @meson8b_cpu_clk_div5, ptr @meson8b_cpu_clk_div6, ptr @meson8b_cpu_clk_div7, ptr @meson8b_cpu_clk_div8], align 4
@.compoundliteral.465 = internal global %struct.clk_init_data { ptr @.str.463, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.464, i8 7, i32 0 }, align 4
@.compoundliteral.466 = internal global %struct.clk_regmap_mux_data { i32 348, ptr null, i32 7, i8 6, i8 0 }, align 4
@.str.467 = private unnamed_addr constant [15 x i8] c"periph_clk_dis\00", align 1
@.compoundliteral.468 = internal global [1 x ptr] [ptr @meson8b_periph_clk_sel], align 4
@.compoundliteral.469 = internal global %struct.clk_init_data { ptr @.str.467, ptr @clk_regmap_gate_ro_ops, ptr null, ptr null, ptr @.compoundliteral.468, i8 1, i32 4 }, align 4
@.compoundliteral.470 = internal global %struct.clk_regmap_gate_data { i32 348, i8 17, i8 1 }, align 4
@.str.471 = private unnamed_addr constant [12 x i8] c"axi_clk_sel\00", align 1
@.compoundliteral.472 = internal global [7 x ptr] [ptr @meson8b_cpu_clk_div2, ptr @meson8b_cpu_clk_div3, ptr @meson8b_cpu_clk_div4, ptr @meson8b_cpu_clk_div5, ptr @meson8b_cpu_clk_div6, ptr @meson8b_cpu_clk_div7, ptr @meson8b_cpu_clk_div8], align 4
@.compoundliteral.473 = internal global %struct.clk_init_data { ptr @.str.471, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.472, i8 7, i32 0 }, align 4
@mux_table_axi = internal global [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@.compoundliteral.474 = internal global %struct.clk_regmap_mux_data { i32 348, ptr @mux_table_axi, i32 7, i8 9, i8 0 }, align 4
@.str.475 = private unnamed_addr constant [12 x i8] c"axi_clk_dis\00", align 1
@.compoundliteral.476 = internal global [1 x ptr] [ptr @meson8b_axi_clk_sel], align 4
@.compoundliteral.477 = internal global %struct.clk_init_data { ptr @.str.475, ptr @clk_regmap_gate_ro_ops, ptr null, ptr null, ptr @.compoundliteral.476, i8 1, i32 4 }, align 4
@.compoundliteral.478 = internal global %struct.clk_regmap_gate_data { i32 348, i8 18, i8 1 }, align 4
@.str.479 = private unnamed_addr constant [16 x i8] c"l2_dram_clk_sel\00", align 1
@.compoundliteral.480 = internal global [7 x ptr] [ptr @meson8b_cpu_clk_div2, ptr @meson8b_cpu_clk_div3, ptr @meson8b_cpu_clk_div4, ptr @meson8b_cpu_clk_div5, ptr @meson8b_cpu_clk_div6, ptr @meson8b_cpu_clk_div7, ptr @meson8b_cpu_clk_div8], align 4
@.compoundliteral.481 = internal global %struct.clk_init_data { ptr @.str.479, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.480, i8 7, i32 0 }, align 4
@.compoundliteral.482 = internal global %struct.clk_regmap_mux_data { i32 348, ptr null, i32 7, i8 12, i8 0 }, align 4
@.str.483 = private unnamed_addr constant [16 x i8] c"l2_dram_clk_dis\00", align 1
@.compoundliteral.484 = internal global [1 x ptr] [ptr @meson8b_l2_dram_clk_sel], align 4
@.compoundliteral.485 = internal global %struct.clk_init_data { ptr @.str.483, ptr @clk_regmap_gate_ro_ops, ptr null, ptr null, ptr @.compoundliteral.484, i8 1, i32 4 }, align 4
@.compoundliteral.486 = internal global %struct.clk_regmap_gate_data { i32 348, i8 19, i8 1 }, align 4
@.str.487 = private unnamed_addr constant [18 x i8] c"hdmi_pll_lvds_out\00", align 1
@.compoundliteral.488 = internal global [1 x ptr] [ptr @meson8b_hdmi_pll_dco], align 4
@.compoundliteral.489 = internal global %struct.clk_init_data { ptr @.str.487, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.488, i8 1, i32 4 }, align 4
@.compoundliteral.490 = internal global %struct.clk_regmap_div_data { i32 800, i8 16, i8 2, i8 2, ptr null }, align 4
@.str.491 = private unnamed_addr constant [18 x i8] c"hdmi_pll_hdmi_out\00", align 1
@.compoundliteral.492 = internal global [1 x ptr] [ptr @meson8b_hdmi_pll_dco], align 4
@.compoundliteral.493 = internal global %struct.clk_init_data { ptr @.str.491, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.492, i8 1, i32 4 }, align 4
@.compoundliteral.494 = internal global %struct.clk_regmap_div_data { i32 800, i8 18, i8 2, i8 2, ptr null }, align 4
@.str.495 = private unnamed_addr constant [15 x i8] c"vid_pll_in_sel\00", align 1
@.compoundliteral.496 = internal global [1 x ptr] [ptr @meson8b_vid_pll_lvds_en], align 4
@.compoundliteral.497 = internal global %struct.clk_init_data { ptr @.str.495, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.496, i8 1, i32 4 }, align 4
@.compoundliteral.498 = internal global %struct.clk_regmap_mux_data { i32 408, ptr null, i32 1, i8 15, i8 0 }, align 4
@.str.499 = private unnamed_addr constant [14 x i8] c"vid_pll_in_en\00", align 1
@.compoundliteral.500 = internal global [1 x ptr] [ptr @meson8b_vid_pll_in_sel], align 4
@.compoundliteral.501 = internal global %struct.clk_init_data { ptr @.str.499, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.500, i8 1, i32 4 }, align 4
@.compoundliteral.502 = internal global %struct.clk_regmap_gate_data { i32 408, i8 16, i8 0 }, align 4
@.str.503 = private unnamed_addr constant [16 x i8] c"vid_pll_pre_div\00", align 1
@.compoundliteral.504 = internal global [1 x ptr] [ptr @meson8b_vid_pll_in_en], align 4
@.compoundliteral.505 = internal global %struct.clk_init_data { ptr @.str.503, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.504, i8 1, i32 4 }, align 4
@.compoundliteral.506 = internal global %struct.clk_regmap_div_data { i32 408, i8 4, i8 3, i8 0, ptr null }, align 4
@.str.507 = private unnamed_addr constant [17 x i8] c"vid_pll_post_div\00", align 1
@.compoundliteral.508 = internal global [1 x ptr] [ptr @meson8b_vid_pll_pre_div], align 4
@.compoundliteral.509 = internal global %struct.clk_init_data { ptr @.str.507, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.508, i8 1, i32 4 }, align 4
@.compoundliteral.510 = internal global %struct.clk_regmap_div_data { i32 408, i8 12, i8 3, i8 0, ptr null }, align 4
@.str.511 = private unnamed_addr constant [8 x i8] c"vid_pll\00", align 1
@.compoundliteral.512 = internal global [2 x ptr] [ptr @meson8b_vid_pll_pre_div, ptr @meson8b_vid_pll_post_div], align 4
@.compoundliteral.513 = internal global %struct.clk_init_data { ptr @.str.511, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.512, i8 2, i32 4 }, align 4
@.compoundliteral.514 = internal global %struct.clk_regmap_mux_data { i32 408, ptr null, i32 3, i8 8, i8 0 }, align 4
@.str.515 = private unnamed_addr constant [18 x i8] c"vid_pll_final_div\00", align 1
@.compoundliteral.516 = internal global [1 x ptr] [ptr @meson8b_vid_pll], align 4
@.compoundliteral.517 = internal global %struct.clk_init_data { ptr @.str.515, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.516, i8 1, i32 4 }, align 4
@.compoundliteral.518 = internal global %struct.clk_regmap_div_data { i32 356, i8 0, i8 8, i8 0, ptr null }, align 4
@.str.519 = private unnamed_addr constant [12 x i8] c"vclk_in_sel\00", align 1
@meson8b_vclk_mux_parent_hws = internal global [7 x ptr] [ptr @meson8b_vid_pll_final_div, ptr @meson8b_fclk_div4, ptr @meson8b_fclk_div3, ptr @meson8b_fclk_div5, ptr @meson8b_vid_pll_final_div, ptr @meson8b_fclk_div7, ptr @meson8b_mpll1], align 4
@.compoundliteral.520 = internal global %struct.clk_init_data { ptr @.str.519, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vclk_mux_parent_hws, i8 7, i32 132 }, align 4
@.compoundliteral.521 = internal global %struct.clk_regmap_mux_data { i32 380, ptr null, i32 7, i8 16, i8 0 }, align 4
@.str.522 = private unnamed_addr constant [11 x i8] c"vclk_in_en\00", align 1
@.compoundliteral.523 = internal global [1 x ptr] [ptr @meson8b_vclk_in_sel], align 4
@.compoundliteral.524 = internal global %struct.clk_init_data { ptr @.str.522, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.523, i8 1, i32 4 }, align 4
@.compoundliteral.525 = internal global %struct.clk_regmap_gate_data { i32 356, i8 16, i8 0 }, align 4
@.str.526 = private unnamed_addr constant [8 x i8] c"vclk_en\00", align 1
@.compoundliteral.527 = internal global [1 x ptr] [ptr @meson8b_vclk_in_en], align 4
@.compoundliteral.528 = internal global %struct.clk_init_data { ptr @.str.526, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.527, i8 1, i32 4 }, align 4
@.compoundliteral.529 = internal global %struct.clk_regmap_gate_data { i32 380, i8 19, i8 0 }, align 4
@.str.530 = private unnamed_addr constant [13 x i8] c"vclk_div1_en\00", align 1
@.compoundliteral.531 = internal global [1 x ptr] [ptr @meson8b_vclk_en], align 4
@.compoundliteral.532 = internal global %struct.clk_init_data { ptr @.str.530, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.531, i8 1, i32 4 }, align 4
@.compoundliteral.533 = internal global %struct.clk_regmap_gate_data { i32 380, i8 0, i8 0 }, align 4
@.str.534 = private unnamed_addr constant [13 x i8] c"vclk_div2_en\00", align 1
@meson8b_vclk_div2_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.540 }, i32 1, i32 2 }, align 4
@.compoundliteral.535 = internal global [1 x ptr] [ptr @meson8b_vclk_div2_div], align 4
@.compoundliteral.536 = internal global %struct.clk_init_data { ptr @.str.534, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.535, i8 1, i32 4 }, align 4
@.compoundliteral.537 = internal global %struct.clk_regmap_gate_data { i32 380, i8 1, i8 0 }, align 4
@.str.538 = private unnamed_addr constant [10 x i8] c"vclk_div2\00", align 1
@.compoundliteral.539 = internal global [1 x ptr] [ptr @meson8b_vclk_en], align 4
@.compoundliteral.540 = internal global %struct.clk_init_data { ptr @.str.538, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.539, i8 1, i32 4 }, align 4
@.str.541 = private unnamed_addr constant [13 x i8] c"vclk_div4_en\00", align 1
@meson8b_vclk_div4_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.547 }, i32 1, i32 4 }, align 4
@.compoundliteral.542 = internal global [1 x ptr] [ptr @meson8b_vclk_div4_div], align 4
@.compoundliteral.543 = internal global %struct.clk_init_data { ptr @.str.541, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.542, i8 1, i32 4 }, align 4
@.compoundliteral.544 = internal global %struct.clk_regmap_gate_data { i32 380, i8 2, i8 0 }, align 4
@.str.545 = private unnamed_addr constant [10 x i8] c"vclk_div4\00", align 1
@.compoundliteral.546 = internal global [1 x ptr] [ptr @meson8b_vclk_en], align 4
@.compoundliteral.547 = internal global %struct.clk_init_data { ptr @.str.545, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.546, i8 1, i32 4 }, align 4
@.str.548 = private unnamed_addr constant [13 x i8] c"vclk_div6_en\00", align 1
@meson8b_vclk_div6_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.554 }, i32 1, i32 6 }, align 4
@.compoundliteral.549 = internal global [1 x ptr] [ptr @meson8b_vclk_div6_div], align 4
@.compoundliteral.550 = internal global %struct.clk_init_data { ptr @.str.548, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.549, i8 1, i32 4 }, align 4
@.compoundliteral.551 = internal global %struct.clk_regmap_gate_data { i32 380, i8 3, i8 0 }, align 4
@.str.552 = private unnamed_addr constant [10 x i8] c"vclk_div6\00", align 1
@.compoundliteral.553 = internal global [1 x ptr] [ptr @meson8b_vclk_en], align 4
@.compoundliteral.554 = internal global %struct.clk_init_data { ptr @.str.552, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.553, i8 1, i32 4 }, align 4
@.str.555 = private unnamed_addr constant [14 x i8] c"vclk_div12_en\00", align 1
@meson8b_vclk_div12_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.561 }, i32 1, i32 12 }, align 4
@.compoundliteral.556 = internal global [1 x ptr] [ptr @meson8b_vclk_div12_div], align 4
@.compoundliteral.557 = internal global %struct.clk_init_data { ptr @.str.555, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.556, i8 1, i32 4 }, align 4
@.compoundliteral.558 = internal global %struct.clk_regmap_gate_data { i32 380, i8 4, i8 0 }, align 4
@.str.559 = private unnamed_addr constant [11 x i8] c"vclk_div12\00", align 1
@.compoundliteral.560 = internal global [1 x ptr] [ptr @meson8b_vclk_en], align 4
@.compoundliteral.561 = internal global %struct.clk_init_data { ptr @.str.559, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.560, i8 1, i32 4 }, align 4
@.str.562 = private unnamed_addr constant [13 x i8] c"vclk2_in_sel\00", align 1
@.compoundliteral.563 = internal global %struct.clk_init_data { ptr @.str.562, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vclk_mux_parent_hws, i8 7, i32 132 }, align 4
@.compoundliteral.564 = internal global %struct.clk_regmap_mux_data { i32 300, ptr null, i32 7, i8 16, i8 0 }, align 4
@.str.565 = private unnamed_addr constant [12 x i8] c"vclk2_in_en\00", align 1
@.compoundliteral.566 = internal global [1 x ptr] [ptr @meson8b_vclk2_in_sel], align 4
@.compoundliteral.567 = internal global %struct.clk_init_data { ptr @.str.565, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.566, i8 1, i32 4 }, align 4
@.compoundliteral.568 = internal global %struct.clk_regmap_gate_data { i32 296, i8 16, i8 0 }, align 4
@.str.569 = private unnamed_addr constant [9 x i8] c"vclk2_en\00", align 1
@.compoundliteral.570 = internal global [1 x ptr] [ptr @meson8b_vclk2_clk_in_en], align 4
@.compoundliteral.571 = internal global %struct.clk_init_data { ptr @.str.569, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.570, i8 1, i32 4 }, align 4
@.compoundliteral.572 = internal global %struct.clk_regmap_gate_data { i32 296, i8 19, i8 0 }, align 4
@.str.573 = private unnamed_addr constant [14 x i8] c"vclk2_div1_en\00", align 1
@.compoundliteral.574 = internal global [1 x ptr] [ptr @meson8b_vclk2_clk_en], align 4
@.compoundliteral.575 = internal global %struct.clk_init_data { ptr @.str.573, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.574, i8 1, i32 4 }, align 4
@.compoundliteral.576 = internal global %struct.clk_regmap_gate_data { i32 296, i8 0, i8 0 }, align 4
@.str.577 = private unnamed_addr constant [14 x i8] c"vclk2_div2_en\00", align 1
@meson8b_vclk2_div2_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.583 }, i32 1, i32 2 }, align 4
@.compoundliteral.578 = internal global [1 x ptr] [ptr @meson8b_vclk2_div2_div], align 4
@.compoundliteral.579 = internal global %struct.clk_init_data { ptr @.str.577, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.578, i8 1, i32 4 }, align 4
@.compoundliteral.580 = internal global %struct.clk_regmap_gate_data { i32 296, i8 1, i8 0 }, align 4
@.str.581 = private unnamed_addr constant [11 x i8] c"vclk2_div2\00", align 1
@.compoundliteral.582 = internal global [1 x ptr] [ptr @meson8b_vclk2_clk_en], align 4
@.compoundliteral.583 = internal global %struct.clk_init_data { ptr @.str.581, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.582, i8 1, i32 4 }, align 4
@.str.584 = private unnamed_addr constant [14 x i8] c"vclk2_div4_en\00", align 1
@meson8b_vclk2_div4_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.590 }, i32 1, i32 4 }, align 4
@.compoundliteral.585 = internal global [1 x ptr] [ptr @meson8b_vclk2_div4_div], align 4
@.compoundliteral.586 = internal global %struct.clk_init_data { ptr @.str.584, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.585, i8 1, i32 4 }, align 4
@.compoundliteral.587 = internal global %struct.clk_regmap_gate_data { i32 296, i8 2, i8 0 }, align 4
@.str.588 = private unnamed_addr constant [11 x i8] c"vclk2_div4\00", align 1
@.compoundliteral.589 = internal global [1 x ptr] [ptr @meson8b_vclk2_clk_en], align 4
@.compoundliteral.590 = internal global %struct.clk_init_data { ptr @.str.588, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.589, i8 1, i32 4 }, align 4
@.str.591 = private unnamed_addr constant [14 x i8] c"vclk2_div6_en\00", align 1
@meson8b_vclk2_div6_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.597 }, i32 1, i32 6 }, align 4
@.compoundliteral.592 = internal global [1 x ptr] [ptr @meson8b_vclk2_div6_div], align 4
@.compoundliteral.593 = internal global %struct.clk_init_data { ptr @.str.591, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.592, i8 1, i32 4 }, align 4
@.compoundliteral.594 = internal global %struct.clk_regmap_gate_data { i32 296, i8 3, i8 0 }, align 4
@.str.595 = private unnamed_addr constant [11 x i8] c"vclk2_div6\00", align 1
@.compoundliteral.596 = internal global [1 x ptr] [ptr @meson8b_vclk2_clk_en], align 4
@.compoundliteral.597 = internal global %struct.clk_init_data { ptr @.str.595, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.596, i8 1, i32 4 }, align 4
@.str.598 = private unnamed_addr constant [15 x i8] c"vclk2_div12_en\00", align 1
@meson8b_vclk2_div12_div = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.604 }, i32 1, i32 12 }, align 4
@.compoundliteral.599 = internal global [1 x ptr] [ptr @meson8b_vclk2_div12_div], align 4
@.compoundliteral.600 = internal global %struct.clk_init_data { ptr @.str.598, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.599, i8 1, i32 4 }, align 4
@.compoundliteral.601 = internal global %struct.clk_regmap_gate_data { i32 296, i8 4, i8 0 }, align 4
@.str.602 = private unnamed_addr constant [12 x i8] c"vclk2_div12\00", align 1
@.compoundliteral.603 = internal global [1 x ptr] [ptr @meson8b_vclk2_clk_en], align 4
@.compoundliteral.604 = internal global %struct.clk_init_data { ptr @.str.602, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.603, i8 1, i32 4 }, align 4
@.str.605 = private unnamed_addr constant [13 x i8] c"cts_enct_sel\00", align 1
@meson8b_vclk_enc_mux_parent_hws = internal global [5 x ptr] [ptr @meson8b_vclk_div1_gate, ptr @meson8b_vclk_div2_div_gate, ptr @meson8b_vclk_div4_div_gate, ptr @meson8b_vclk_div6_div_gate, ptr @meson8b_vclk_div12_div_gate], align 4
@.compoundliteral.606 = internal global %struct.clk_init_data { ptr @.str.605, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vclk_enc_mux_parent_hws, i8 5, i32 4 }, align 4
@.compoundliteral.607 = internal global %struct.clk_regmap_mux_data { i32 356, ptr null, i32 15, i8 20, i8 0 }, align 4
@.str.608 = private unnamed_addr constant [9 x i8] c"cts_enct\00", align 1
@.compoundliteral.609 = internal global [1 x ptr] [ptr @meson8b_cts_enct_sel], align 4
@.compoundliteral.610 = internal global %struct.clk_init_data { ptr @.str.608, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.609, i8 1, i32 4 }, align 4
@.compoundliteral.611 = internal global %struct.clk_regmap_gate_data { i32 404, i8 1, i8 0 }, align 4
@.str.612 = private unnamed_addr constant [13 x i8] c"cts_encp_sel\00", align 1
@.compoundliteral.613 = internal global %struct.clk_init_data { ptr @.str.612, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vclk_enc_mux_parent_hws, i8 5, i32 4 }, align 4
@.compoundliteral.614 = internal global %struct.clk_regmap_mux_data { i32 356, ptr null, i32 15, i8 24, i8 0 }, align 4
@.str.615 = private unnamed_addr constant [9 x i8] c"cts_encp\00", align 1
@.compoundliteral.616 = internal global [1 x ptr] [ptr @meson8b_cts_encp_sel], align 4
@.compoundliteral.617 = internal global %struct.clk_init_data { ptr @.str.615, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.616, i8 1, i32 4 }, align 4
@.compoundliteral.618 = internal global %struct.clk_regmap_gate_data { i32 404, i8 2, i8 0 }, align 4
@.str.619 = private unnamed_addr constant [13 x i8] c"cts_enci_sel\00", align 1
@.compoundliteral.620 = internal global %struct.clk_init_data { ptr @.str.619, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vclk_enc_mux_parent_hws, i8 5, i32 4 }, align 4
@.compoundliteral.621 = internal global %struct.clk_regmap_mux_data { i32 356, ptr null, i32 15, i8 28, i8 0 }, align 4
@.str.622 = private unnamed_addr constant [9 x i8] c"cts_enci\00", align 1
@.compoundliteral.623 = internal global [1 x ptr] [ptr @meson8b_cts_enci_sel], align 4
@.compoundliteral.624 = internal global %struct.clk_init_data { ptr @.str.622, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.623, i8 1, i32 4 }, align 4
@.compoundliteral.625 = internal global %struct.clk_regmap_gate_data { i32 404, i8 0, i8 0 }, align 4
@.str.626 = private unnamed_addr constant [18 x i8] c"hdmi_tx_pixel_sel\00", align 1
@.compoundliteral.627 = internal global %struct.clk_init_data { ptr @.str.626, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vclk_enc_mux_parent_hws, i8 5, i32 4 }, align 4
@.compoundliteral.628 = internal global %struct.clk_regmap_mux_data { i32 460, ptr null, i32 15, i8 16, i8 0 }, align 4
@.str.629 = private unnamed_addr constant [14 x i8] c"hdmi_tx_pixel\00", align 1
@.compoundliteral.630 = internal global [1 x ptr] [ptr @meson8b_hdmi_tx_pixel_sel], align 4
@.compoundliteral.631 = internal global %struct.clk_init_data { ptr @.str.629, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.630, i8 1, i32 4 }, align 4
@.compoundliteral.632 = internal global %struct.clk_regmap_gate_data { i32 404, i8 5, i8 0 }, align 4
@.str.633 = private unnamed_addr constant [13 x i8] c"cts_encl_sel\00", align 1
@meson8b_vclk2_enc_mux_parent_hws = internal global [5 x ptr] [ptr @meson8b_vclk2_div1_gate, ptr @meson8b_vclk2_div2_div_gate, ptr @meson8b_vclk2_div4_div_gate, ptr @meson8b_vclk2_div6_div_gate, ptr @meson8b_vclk2_div12_div_gate], align 4
@.compoundliteral.634 = internal global %struct.clk_init_data { ptr @.str.633, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vclk2_enc_mux_parent_hws, i8 5, i32 4 }, align 4
@.compoundliteral.635 = internal global %struct.clk_regmap_mux_data { i32 296, ptr null, i32 15, i8 12, i8 0 }, align 4
@.str.636 = private unnamed_addr constant [9 x i8] c"cts_encl\00", align 1
@.compoundliteral.637 = internal global [1 x ptr] [ptr @meson8b_cts_encl_sel], align 4
@.compoundliteral.638 = internal global %struct.clk_init_data { ptr @.str.636, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.637, i8 1, i32 4 }, align 4
@.compoundliteral.639 = internal global %struct.clk_regmap_gate_data { i32 404, i8 3, i8 0 }, align 4
@.str.640 = private unnamed_addr constant [14 x i8] c"cts_vdac0_sel\00", align 1
@.compoundliteral.641 = internal global %struct.clk_init_data { ptr @.str.640, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vclk2_enc_mux_parent_hws, i8 5, i32 4 }, align 4
@.compoundliteral.642 = internal global %struct.clk_regmap_mux_data { i32 296, ptr null, i32 15, i8 28, i8 0 }, align 4
@.str.643 = private unnamed_addr constant [10 x i8] c"cts_vdac0\00", align 1
@.compoundliteral.644 = internal global [1 x ptr] [ptr @meson8b_cts_vdac0_sel], align 4
@.compoundliteral.645 = internal global %struct.clk_init_data { ptr @.str.643, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.644, i8 1, i32 4 }, align 4
@.compoundliteral.646 = internal global %struct.clk_regmap_gate_data { i32 404, i8 4, i8 0 }, align 4
@.str.647 = private unnamed_addr constant [13 x i8] c"hdmi_sys_sel\00", align 1
@.compoundliteral.648 = internal constant %struct.clk_parent_data { ptr null, ptr @.str.356, ptr @.str.356, i32 -1 }, align 4
@.compoundliteral.649 = internal global %struct.clk_init_data { ptr @.str.647, ptr @clk_regmap_mux_ops, ptr null, ptr @.compoundliteral.648, ptr null, i8 1, i32 128 }, align 4
@.compoundliteral.650 = internal global %struct.clk_regmap_mux_data { i32 460, ptr null, i32 3, i8 9, i8 16 }, align 4
@.str.651 = private unnamed_addr constant [13 x i8] c"hdmi_sys_div\00", align 1
@.compoundliteral.652 = internal global [1 x ptr] [ptr @meson8b_hdmi_sys_sel], align 4
@.compoundliteral.653 = internal global %struct.clk_init_data { ptr @.str.651, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.652, i8 1, i32 4 }, align 4
@.compoundliteral.654 = internal global %struct.clk_regmap_div_data { i32 460, i8 0, i8 7, i8 0, ptr null }, align 4
@.str.655 = private unnamed_addr constant [9 x i8] c"hdmi_sys\00", align 1
@.compoundliteral.656 = internal global [1 x ptr] [ptr @meson8b_hdmi_sys_div], align 4
@.compoundliteral.657 = internal global %struct.clk_init_data { ptr @.str.655, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.656, i8 1, i32 4 }, align 4
@.compoundliteral.658 = internal global %struct.clk_regmap_gate_data { i32 460, i8 8, i8 0 }, align 4
@.str.659 = private unnamed_addr constant [11 x i8] c"mali_0_sel\00", align 1
@meson8b_mali_0_1_parent_data = internal constant [7 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.356, ptr @.str.356, i32 -1 }, %struct.clk_parent_data { ptr @meson8b_mpll2, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr @meson8b_mpll1, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr @meson8b_fclk_div7, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr @meson8b_fclk_div4, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr @meson8b_fclk_div3, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr @meson8b_fclk_div5, ptr null, ptr null, i32 0 }], align 4
@.compoundliteral.660 = internal global %struct.clk_init_data { ptr @.str.659, ptr @clk_regmap_mux_ops, ptr null, ptr @meson8b_mali_0_1_parent_data, ptr null, i8 7, i32 0 }, align 4
@meson8b_mali_0_1_mux_table = internal global [7 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@.compoundliteral.661 = internal global %struct.clk_regmap_mux_data { i32 432, ptr @meson8b_mali_0_1_mux_table, i32 7, i8 9, i8 0 }, align 4
@.str.662 = private unnamed_addr constant [11 x i8] c"mali_0_div\00", align 1
@.compoundliteral.663 = internal global [1 x ptr] [ptr @meson8b_mali_0_sel], align 4
@.compoundliteral.664 = internal global %struct.clk_init_data { ptr @.str.662, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.663, i8 1, i32 4 }, align 4
@.compoundliteral.665 = internal global %struct.clk_regmap_div_data { i32 432, i8 0, i8 7, i8 0, ptr null }, align 4
@.str.666 = private unnamed_addr constant [7 x i8] c"mali_0\00", align 1
@.compoundliteral.667 = internal global [1 x ptr] [ptr @meson8b_mali_0_div], align 4
@.compoundliteral.668 = internal global %struct.clk_init_data { ptr @.str.666, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.667, i8 1, i32 5 }, align 4
@.compoundliteral.669 = internal global %struct.clk_regmap_gate_data { i32 432, i8 8, i8 0 }, align 4
@.str.670 = private unnamed_addr constant [11 x i8] c"mali_1_sel\00", align 1
@.compoundliteral.671 = internal global %struct.clk_init_data { ptr @.str.670, ptr @clk_regmap_mux_ops, ptr null, ptr @meson8b_mali_0_1_parent_data, ptr null, i8 7, i32 0 }, align 4
@.compoundliteral.672 = internal global %struct.clk_regmap_mux_data { i32 432, ptr @meson8b_mali_0_1_mux_table, i32 7, i8 25, i8 0 }, align 4
@.str.673 = private unnamed_addr constant [11 x i8] c"mali_1_div\00", align 1
@.compoundliteral.674 = internal global [1 x ptr] [ptr @meson8b_mali_1_sel], align 4
@.compoundliteral.675 = internal global %struct.clk_init_data { ptr @.str.673, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.674, i8 1, i32 4 }, align 4
@.compoundliteral.676 = internal global %struct.clk_regmap_div_data { i32 432, i8 16, i8 7, i8 0, ptr null }, align 4
@.str.677 = private unnamed_addr constant [7 x i8] c"mali_1\00", align 1
@.compoundliteral.678 = internal global [1 x ptr] [ptr @meson8b_mali_1_div], align 4
@.compoundliteral.679 = internal global %struct.clk_init_data { ptr @.str.677, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.678, i8 1, i32 5 }, align 4
@.compoundliteral.680 = internal global %struct.clk_regmap_gate_data { i32 432, i8 24, i8 0 }, align 4
@.str.681 = private unnamed_addr constant [5 x i8] c"mali\00", align 1
@.compoundliteral.682 = internal global [2 x ptr] [ptr @meson8b_mali_0, ptr @meson8b_mali_1], align 4
@.compoundliteral.683 = internal global %struct.clk_init_data { ptr @.str.681, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.682, i8 2, i32 4 }, align 4
@.compoundliteral.684 = internal global %struct.clk_regmap_mux_data { i32 432, ptr null, i32 1, i8 31, i8 0 }, align 4
@.str.685 = private unnamed_addr constant [11 x i8] c"gp_pll_dco\00", align 1
@.compoundliteral.686 = internal constant %struct.clk_parent_data { ptr null, ptr @.str.356, ptr @.str.356, i32 -1 }, align 4
@.compoundliteral.687 = internal global %struct.clk_init_data { ptr @.str.685, ptr @meson_clk_pll_ops, ptr null, ptr @.compoundliteral.686, ptr null, i8 1, i32 0 }, align 4
@meson8m2_gp_pll_init_regs = internal constant [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 68, i32 1506312192, i32 0 }, %struct.reg_sequence { i32 72, i32 -901367773, i32 0 }, %struct.reg_sequence { i32 76, i32 42377255, i32 0 }, %struct.reg_sequence { i32 80, i32 12288, i32 0 }], align 4
@meson8m2_gp_pll_params_table = internal constant [2 x %struct.pll_params_table] [%struct.pll_params_table { i32 182, i32 3 }, %struct.pll_params_table zeroinitializer], align 4
@.compoundliteral.688 = internal global %struct.meson_clk_pll_data { %struct.parm { i16 64, i8 30, i8 1 }, %struct.parm { i16 64, i8 0, i8 9 }, %struct.parm { i16 64, i8 9, i8 5 }, %struct.parm zeroinitializer, %struct.parm { i16 64, i8 31, i8 1 }, %struct.parm { i16 64, i8 29, i8 1 }, ptr @meson8m2_gp_pll_init_regs, i32 4, ptr @meson8m2_gp_pll_params_table, ptr null, i8 0 }, align 4
@.str.689 = private unnamed_addr constant [7 x i8] c"gp_pll\00", align 1
@.compoundliteral.690 = internal global [1 x ptr] [ptr @meson8m2_gp_pll_dco], align 4
@.compoundliteral.691 = internal global %struct.clk_init_data { ptr @.str.689, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.690, i8 1, i32 4 }, align 4
@.compoundliteral.692 = internal global %struct.clk_regmap_div_data { i32 64, i8 16, i8 2, i8 2, ptr null }, align 4
@.str.693 = private unnamed_addr constant [10 x i8] c"vpu_0_sel\00", align 1
@meson8b_vpu_0_1_parent_hws = internal global [4 x ptr] [ptr @meson8b_fclk_div4, ptr @meson8b_fclk_div3, ptr @meson8b_fclk_div5, ptr @meson8b_fclk_div7], align 4
@.compoundliteral.694 = internal global %struct.clk_init_data { ptr @.str.693, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vpu_0_1_parent_hws, i8 4, i32 4 }, align 4
@.compoundliteral.695 = internal global %struct.clk_regmap_mux_data { i32 444, ptr null, i32 3, i8 9, i8 0 }, align 4
@mmeson8m2_vpu_0_1_parent_hws = internal global [4 x ptr] [ptr @meson8b_fclk_div4, ptr @meson8b_fclk_div3, ptr @meson8b_fclk_div5, ptr @meson8m2_gp_pll], align 4
@.compoundliteral.696 = internal global %struct.clk_init_data { ptr @.str.693, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @mmeson8m2_vpu_0_1_parent_hws, i8 4, i32 4 }, align 4
@.compoundliteral.697 = internal global %struct.clk_regmap_mux_data { i32 444, ptr null, i32 3, i8 9, i8 0 }, align 4
@.str.698 = private unnamed_addr constant [10 x i8] c"vpu_0_div\00", align 1
@.compoundliteral.699 = internal constant %struct.clk_parent_data { ptr null, ptr null, ptr @.str.693, i32 -1 }, align 4
@.compoundliteral.700 = internal global %struct.clk_init_data { ptr @.str.698, ptr @clk_regmap_divider_ops, ptr null, ptr @.compoundliteral.699, ptr null, i8 1, i32 4 }, align 4
@.compoundliteral.701 = internal global %struct.clk_regmap_div_data { i32 444, i8 0, i8 7, i8 0, ptr null }, align 4
@.str.702 = private unnamed_addr constant [6 x i8] c"vpu_0\00", align 1
@.compoundliteral.703 = internal global [1 x ptr] [ptr @meson8b_vpu_0_div], align 4
@.compoundliteral.704 = internal global %struct.clk_init_data { ptr @.str.702, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.703, i8 1, i32 5 }, align 4
@.compoundliteral.705 = internal global %struct.clk_regmap_gate_data { i32 444, i8 8, i8 0 }, align 4
@.str.706 = private unnamed_addr constant [10 x i8] c"vpu_1_sel\00", align 1
@.compoundliteral.707 = internal global %struct.clk_init_data { ptr @.str.706, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vpu_0_1_parent_hws, i8 4, i32 4 }, align 4
@.compoundliteral.708 = internal global %struct.clk_regmap_mux_data { i32 444, ptr null, i32 3, i8 25, i8 0 }, align 4
@.compoundliteral.709 = internal global %struct.clk_init_data { ptr @.str.706, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @mmeson8m2_vpu_0_1_parent_hws, i8 4, i32 4 }, align 4
@.compoundliteral.710 = internal global %struct.clk_regmap_mux_data { i32 444, ptr null, i32 3, i8 25, i8 0 }, align 4
@.str.711 = private unnamed_addr constant [10 x i8] c"vpu_1_div\00", align 1
@.compoundliteral.712 = internal constant %struct.clk_parent_data { ptr null, ptr null, ptr @.str.706, i32 -1 }, align 4
@.compoundliteral.713 = internal global %struct.clk_init_data { ptr @.str.711, ptr @clk_regmap_divider_ops, ptr null, ptr @.compoundliteral.712, ptr null, i8 1, i32 4 }, align 4
@.compoundliteral.714 = internal global %struct.clk_regmap_div_data { i32 444, i8 16, i8 7, i8 0, ptr null }, align 4
@.str.715 = private unnamed_addr constant [6 x i8] c"vpu_1\00", align 1
@.compoundliteral.716 = internal global [1 x ptr] [ptr @meson8b_vpu_1_div], align 4
@.compoundliteral.717 = internal global %struct.clk_init_data { ptr @.str.715, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.716, i8 1, i32 5 }, align 4
@.compoundliteral.718 = internal global %struct.clk_regmap_gate_data { i32 444, i8 24, i8 0 }, align 4
@.str.719 = private unnamed_addr constant [4 x i8] c"vpu\00", align 1
@.compoundliteral.720 = internal global [2 x ptr] [ptr @meson8b_vpu_0, ptr @meson8b_vpu_1], align 4
@.compoundliteral.721 = internal global %struct.clk_init_data { ptr @.str.719, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.720, i8 2, i32 4 }, align 4
@.compoundliteral.722 = internal global %struct.clk_regmap_mux_data { i32 444, ptr null, i32 1, i8 31, i8 0 }, align 4
@.str.723 = private unnamed_addr constant [11 x i8] c"vdec_1_sel\00", align 1
@meson8b_vdec_parent_hws = internal global [6 x ptr] [ptr @meson8b_fclk_div4, ptr @meson8b_fclk_div3, ptr @meson8b_fclk_div5, ptr @meson8b_fclk_div7, ptr @meson8b_mpll2, ptr @meson8b_mpll1], align 4
@.compoundliteral.724 = internal global %struct.clk_init_data { ptr @.str.723, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vdec_parent_hws, i8 6, i32 4 }, align 4
@.compoundliteral.725 = internal global %struct.clk_regmap_mux_data { i32 480, ptr null, i32 3, i8 9, i8 16 }, align 4
@.str.726 = private unnamed_addr constant [13 x i8] c"vdec_1_1_div\00", align 1
@.compoundliteral.727 = internal global [1 x ptr] [ptr @meson8b_vdec_1_sel], align 4
@.compoundliteral.728 = internal global %struct.clk_init_data { ptr @.str.726, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.727, i8 1, i32 4 }, align 4
@.compoundliteral.729 = internal global %struct.clk_regmap_div_data { i32 480, i8 0, i8 7, i8 16, ptr null }, align 4
@.str.730 = private unnamed_addr constant [9 x i8] c"vdec_1_1\00", align 1
@.compoundliteral.731 = internal global [1 x ptr] [ptr @meson8b_vdec_1_1_div], align 4
@.compoundliteral.732 = internal global %struct.clk_init_data { ptr @.str.730, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.731, i8 1, i32 4 }, align 4
@.compoundliteral.733 = internal global %struct.clk_regmap_gate_data { i32 480, i8 8, i8 0 }, align 4
@.str.734 = private unnamed_addr constant [13 x i8] c"vdec_1_2_div\00", align 1
@.compoundliteral.735 = internal global [1 x ptr] [ptr @meson8b_vdec_1_sel], align 4
@.compoundliteral.736 = internal global %struct.clk_init_data { ptr @.str.734, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.735, i8 1, i32 4 }, align 4
@.compoundliteral.737 = internal global %struct.clk_regmap_div_data { i32 488, i8 0, i8 7, i8 16, ptr null }, align 4
@.str.738 = private unnamed_addr constant [9 x i8] c"vdec_1_2\00", align 1
@.compoundliteral.739 = internal global [1 x ptr] [ptr @meson8b_vdec_1_2_div], align 4
@.compoundliteral.740 = internal global %struct.clk_init_data { ptr @.str.738, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.739, i8 1, i32 4 }, align 4
@.compoundliteral.741 = internal global %struct.clk_regmap_gate_data { i32 488, i8 8, i8 0 }, align 4
@.str.742 = private unnamed_addr constant [7 x i8] c"vdec_1\00", align 1
@.compoundliteral.743 = internal global [2 x ptr] [ptr @meson8b_vdec_1_1, ptr @meson8b_vdec_1_2], align 4
@.compoundliteral.744 = internal global %struct.clk_init_data { ptr @.str.742, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.743, i8 2, i32 4 }, align 4
@.compoundliteral.745 = internal global %struct.clk_regmap_mux_data { i32 488, ptr null, i32 1, i8 15, i8 16 }, align 4
@.str.746 = private unnamed_addr constant [16 x i8] c"vdec_hcodec_sel\00", align 1
@.compoundliteral.747 = internal global %struct.clk_init_data { ptr @.str.746, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vdec_parent_hws, i8 6, i32 4 }, align 4
@.compoundliteral.748 = internal global %struct.clk_regmap_mux_data { i32 480, ptr null, i32 3, i8 25, i8 16 }, align 4
@.str.749 = private unnamed_addr constant [16 x i8] c"vdec_hcodec_div\00", align 1
@.compoundliteral.750 = internal global [1 x ptr] [ptr @meson8b_vdec_hcodec_sel], align 4
@.compoundliteral.751 = internal global %struct.clk_init_data { ptr @.str.749, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.750, i8 1, i32 4 }, align 4
@.compoundliteral.752 = internal global %struct.clk_regmap_div_data { i32 480, i8 16, i8 7, i8 16, ptr null }, align 4
@.str.753 = private unnamed_addr constant [12 x i8] c"vdec_hcodec\00", align 1
@.compoundliteral.754 = internal global [1 x ptr] [ptr @meson8b_vdec_hcodec_div], align 4
@.compoundliteral.755 = internal global %struct.clk_init_data { ptr @.str.753, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.754, i8 1, i32 4 }, align 4
@.compoundliteral.756 = internal global %struct.clk_regmap_gate_data { i32 480, i8 24, i8 0 }, align 4
@.str.757 = private unnamed_addr constant [11 x i8] c"vdec_2_sel\00", align 1
@.compoundliteral.758 = internal global %struct.clk_init_data { ptr @.str.757, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vdec_parent_hws, i8 6, i32 4 }, align 4
@.compoundliteral.759 = internal global %struct.clk_regmap_mux_data { i32 484, ptr null, i32 3, i8 9, i8 16 }, align 4
@.str.760 = private unnamed_addr constant [11 x i8] c"vdec_2_div\00", align 1
@.compoundliteral.761 = internal global [1 x ptr] [ptr @meson8b_vdec_2_sel], align 4
@.compoundliteral.762 = internal global %struct.clk_init_data { ptr @.str.760, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.761, i8 1, i32 4 }, align 4
@.compoundliteral.763 = internal global %struct.clk_regmap_div_data { i32 484, i8 0, i8 7, i8 16, ptr null }, align 4
@.str.764 = private unnamed_addr constant [7 x i8] c"vdec_2\00", align 1
@.compoundliteral.765 = internal global [1 x ptr] [ptr @meson8b_vdec_2_div], align 4
@.compoundliteral.766 = internal global %struct.clk_init_data { ptr @.str.764, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.765, i8 1, i32 4 }, align 4
@.compoundliteral.767 = internal global %struct.clk_regmap_gate_data { i32 484, i8 8, i8 0 }, align 4
@.str.768 = private unnamed_addr constant [14 x i8] c"vdec_hevc_sel\00", align 1
@.compoundliteral.769 = internal global %struct.clk_init_data { ptr @.str.768, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_vdec_parent_hws, i8 6, i32 4 }, align 4
@.compoundliteral.770 = internal global %struct.clk_regmap_mux_data { i32 484, ptr null, i32 3, i8 25, i8 16 }, align 4
@.str.771 = private unnamed_addr constant [14 x i8] c"vdec_hevc_div\00", align 1
@.compoundliteral.772 = internal global [1 x ptr] [ptr @meson8b_vdec_hevc_sel], align 4
@.compoundliteral.773 = internal global %struct.clk_init_data { ptr @.str.771, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.772, i8 1, i32 4 }, align 4
@.compoundliteral.774 = internal global %struct.clk_regmap_div_data { i32 484, i8 16, i8 7, i8 16, ptr null }, align 4
@.str.775 = private unnamed_addr constant [13 x i8] c"vdec_hevc_en\00", align 1
@.compoundliteral.776 = internal global [1 x ptr] [ptr @meson8b_vdec_hevc_div], align 4
@.compoundliteral.777 = internal global %struct.clk_init_data { ptr @.str.775, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.776, i8 1, i32 4 }, align 4
@.compoundliteral.778 = internal global %struct.clk_regmap_gate_data { i32 484, i8 24, i8 0 }, align 4
@.str.779 = private unnamed_addr constant [10 x i8] c"vdec_hevc\00", align 1
@.compoundliteral.780 = internal global [1 x ptr] [ptr @meson8b_vdec_hevc_en], align 4
@.compoundliteral.781 = internal global %struct.clk_init_data { ptr @.str.779, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.780, i8 1, i32 4 }, align 4
@.compoundliteral.782 = internal global %struct.clk_regmap_mux_data { i32 484, ptr null, i32 1, i8 31, i8 16 }, align 4
@.str.783 = private unnamed_addr constant [10 x i8] c"cts_amclk\00", align 1
@.compoundliteral.784 = internal global [1 x ptr] [ptr @meson8b_cts_amclk_div], align 4
@.compoundliteral.785 = internal global %struct.clk_init_data { ptr @.str.783, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.784, i8 1, i32 4 }, align 4
@.compoundliteral.786 = internal global %struct.clk_regmap_gate_data { i32 376, i8 8, i8 0 }, align 4
@.str.787 = private unnamed_addr constant [14 x i8] c"cts_amclk_sel\00", align 1
@meson8b_cts_amclk_parent_hws = internal global [3 x ptr] [ptr @meson8b_mpll0, ptr @meson8b_mpll1, ptr @meson8b_mpll2], align 4
@.compoundliteral.788 = internal global %struct.clk_init_data { ptr @.str.787, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_cts_amclk_parent_hws, i8 3, i32 0 }, align 4
@meson8b_cts_amclk_mux_table = internal global [3 x i32] [i32 1, i32 2, i32 3], align 4
@.compoundliteral.789 = internal global %struct.clk_regmap_mux_data { i32 376, ptr @meson8b_cts_amclk_mux_table, i32 3, i8 9, i8 16 }, align 4
@.str.790 = private unnamed_addr constant [14 x i8] c"cts_amclk_div\00", align 1
@.compoundliteral.791 = internal global [1 x ptr] [ptr @meson8b_cts_amclk_sel], align 4
@.compoundliteral.792 = internal global %struct.clk_init_data { ptr @.str.790, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.791, i8 1, i32 4 }, align 4
@.compoundliteral.793 = internal global %struct.clk_regmap_div_data { i32 376, i8 0, i8 8, i8 16, ptr null }, align 4
@.str.794 = private unnamed_addr constant [18 x i8] c"cts_mclk_i958_sel\00", align 1
@meson8b_cts_mclk_i958_parent_hws = internal global [3 x ptr] [ptr @meson8b_mpll0, ptr @meson8b_mpll1, ptr @meson8b_mpll2], align 4
@.compoundliteral.795 = internal global %struct.clk_init_data { ptr @.str.794, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @meson8b_cts_mclk_i958_parent_hws, i8 3, i32 0 }, align 4
@meson8b_cts_mclk_i958_mux_table = internal global [3 x i32] [i32 1, i32 2, i32 3], align 4
@.compoundliteral.796 = internal global %struct.clk_regmap_mux_data { i32 400, ptr @meson8b_cts_mclk_i958_mux_table, i32 3, i8 25, i8 16 }, align 4
@.str.797 = private unnamed_addr constant [18 x i8] c"cts_mclk_i958_div\00", align 1
@.compoundliteral.798 = internal global [1 x ptr] [ptr @meson8b_cts_mclk_i958_sel], align 4
@.compoundliteral.799 = internal global %struct.clk_init_data { ptr @.str.797, ptr @clk_regmap_divider_ops, ptr null, ptr null, ptr @.compoundliteral.798, i8 1, i32 4 }, align 4
@.compoundliteral.800 = internal global %struct.clk_regmap_div_data { i32 400, i8 16, i8 8, i8 16, ptr null }, align 4
@.str.801 = private unnamed_addr constant [14 x i8] c"cts_mclk_i958\00", align 1
@.compoundliteral.802 = internal global [1 x ptr] [ptr @meson8b_cts_mclk_i958_div], align 4
@.compoundliteral.803 = internal global %struct.clk_init_data { ptr @.str.801, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.802, i8 1, i32 4 }, align 4
@.compoundliteral.804 = internal global %struct.clk_regmap_gate_data { i32 400, i8 24, i8 0 }, align 4
@.str.805 = private unnamed_addr constant [9 x i8] c"cts_i958\00", align 1
@.compoundliteral.806 = internal global [2 x ptr] [ptr @meson8b_cts_amclk, ptr @meson8b_cts_mclk_i958], align 4
@.compoundliteral.807 = internal global %struct.clk_init_data { ptr @.str.805, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.806, i8 2, i32 132 }, align 4
@.compoundliteral.808 = internal global %struct.clk_regmap_mux_data { i32 400, ptr null, i32 1, i8 27, i8 0 }, align 4
@.str.809 = private unnamed_addr constant [16 x i8] c"vid_pll_lvds_en\00", align 1
@.compoundliteral.810 = internal global [1 x ptr] [ptr @meson8b_hdmi_pll_lvds_out], align 4
@.compoundliteral.811 = internal global %struct.clk_init_data { ptr @.str.809, ptr @clk_regmap_gate_ops, ptr null, ptr null, ptr @.compoundliteral.810, i8 1, i32 4 }, align 4
@.compoundliteral.812 = internal global %struct.clk_regmap_gate_data { i32 408, i8 11, i8 0 }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.813 = private unnamed_addr constant [18 x i8] c"cpu_scale_out_sel\00", align 1
@meson8b_cpu_in_div2 = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.819 }, i32 1, i32 2 }, align 4
@.compoundliteral.814 = internal global [3 x ptr] [ptr @meson8b_cpu_in_sel, ptr @meson8b_cpu_in_div2, ptr @meson8b_cpu_scale_div], align 4
@.compoundliteral.815 = internal global %struct.clk_init_data { ptr @.str.813, ptr @clk_regmap_mux_ops, ptr null, ptr null, ptr @.compoundliteral.814, i8 3, i32 4 }, align 4
@mux_table_cpu_scale_out_sel = internal global [3 x i32] [i32 0, i32 1, i32 3], align 4
@.compoundliteral.816 = internal global %struct.clk_regmap_mux_data { i32 412, ptr @mux_table_cpu_scale_out_sel, i32 3, i8 2, i8 0 }, align 4
@.str.817 = private unnamed_addr constant [12 x i8] c"cpu_in_div2\00", align 1
@.compoundliteral.818 = internal global [1 x ptr] [ptr @meson8b_cpu_in_sel], align 4
@.compoundliteral.819 = internal global %struct.clk_init_data { ptr @.str.817, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.818, i8 1, i32 4 }, align 4
@meson8b_cpu_in_div3 = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.823 }, i32 1, i32 3 }, align 4
@meson8_hw_onecell_data = internal global { i32, [219 x ptr] } { i32 218, [219 x ptr] [ptr null, ptr null, ptr @meson8b_fixed_pll, ptr @meson8b_vid_pll, ptr @meson8b_sys_pll, ptr @meson8b_fclk_div2, ptr @meson8b_fclk_div3, ptr @meson8b_fclk_div4, ptr @meson8b_fclk_div5, ptr @meson8b_fclk_div7, ptr @meson8b_clk81, ptr @meson8b_mali_0, ptr @meson8b_cpu_clk, ptr null, ptr @meson8b_mpeg_clk_sel, ptr @meson8b_mpeg_clk_div, ptr @meson8b_ddr, ptr @meson8b_dos, ptr @meson8b_isa, ptr @meson8b_pl301, ptr @meson8b_periphs, ptr @meson8b_spicc, ptr @meson8b_i2c, ptr @meson8b_sar_adc, ptr @meson8b_smart_card, ptr @meson8b_rng0, ptr @meson8b_uart0, ptr @meson8b_sdhc, ptr @meson8b_stream, ptr @meson8b_async_fifo, ptr @meson8b_sdio, ptr @meson8b_abuf, ptr @meson8b_hiu_iface, ptr @meson8b_assist_misc, ptr @meson8b_spi, ptr @meson8b_i2s_spdif, ptr @meson8b_eth, ptr @meson8b_demux, ptr @meson8b_aiu_glue, ptr @meson8b_iec958, ptr @meson8b_i2s_out, ptr @meson8b_amclk, ptr @meson8b_aififo2, ptr @meson8b_mixer, ptr @meson8b_mixer_iface, ptr @meson8b_adc, ptr @meson8b_blkmv, ptr @meson8b_aiu, ptr @meson8b_uart1, ptr @meson8b_g2d, ptr @meson8b_usb0, ptr @meson8b_usb1, ptr @meson8b_reset, ptr @meson8b_nand, ptr @meson8b_dos_parser, ptr @meson8b_usb, ptr @meson8b_vdin1, ptr @meson8b_ahb_arb0, ptr @meson8b_efuse, ptr @meson8b_boot_rom, ptr @meson8b_ahb_data_bus, ptr @meson8b_ahb_ctrl_bus, ptr @meson8b_hdmi_intr_sync, ptr @meson8b_hdmi_pclk, ptr @meson8b_usb1_ddr_bridge, ptr @meson8b_usb0_ddr_bridge, ptr @meson8b_mmc_pclk, ptr @meson8b_dvin, ptr @meson8b_uart2, ptr @meson8b_sana, ptr @meson8b_vpu_intr, ptr @meson8b_sec_ahb_ahb3_bridge, ptr @meson8b_clk81_a9, ptr @meson8b_vclk2_venci0, ptr @meson8b_vclk2_venci1, ptr @meson8b_vclk2_vencp0, ptr @meson8b_vclk2_vencp1, ptr @meson8b_gclk_venci_int, ptr @meson8b_gclk_vencp_int, ptr @meson8b_dac_clk, ptr @meson8b_aoclk_gate, ptr @meson8b_iec958_gate, ptr @meson8b_enc480p, ptr @meson8b_rng1, ptr @meson8b_gclk_vencl_int, ptr @meson8b_vclk2_venclmcc, ptr @meson8b_vclk2_vencl, ptr @meson8b_vclk2_other, ptr @meson8b_edp, ptr @meson8b_ao_media_cpu, ptr @meson8b_ao_ahb_sram, ptr @meson8b_ao_ahb_bus, ptr @meson8b_ao_iface, ptr @meson8b_mpll0, ptr @meson8b_mpll1, ptr @meson8b_mpll2, ptr @meson8b_mpll0_div, ptr @meson8b_mpll1_div, ptr @meson8b_mpll2_div, ptr @meson8b_cpu_in_sel, ptr @meson8b_cpu_in_div2, ptr @meson8b_cpu_in_div3, ptr @meson8b_cpu_scale_div, ptr @meson8b_cpu_scale_out_sel, ptr @meson8b_mpll_prediv, ptr @meson8b_fclk_div2_div, ptr @meson8b_fclk_div3_div, ptr @meson8b_fclk_div4_div, ptr @meson8b_fclk_div5_div, ptr @meson8b_fclk_div7_div, ptr @meson8b_nand_clk_sel, ptr @meson8b_nand_clk_div, ptr @meson8b_nand_clk_gate, ptr @meson8b_fixed_pll_dco, ptr @meson8b_hdmi_pll_dco, ptr @meson8b_sys_pll_dco, ptr @meson8b_cpu_clk_div2, ptr @meson8b_cpu_clk_div3, ptr @meson8b_cpu_clk_div4, ptr @meson8b_cpu_clk_div5, ptr @meson8b_cpu_clk_div6, ptr @meson8b_cpu_clk_div7, ptr @meson8b_cpu_clk_div8, ptr @meson8b_apb_clk_sel, ptr @meson8b_apb_clk_gate, ptr @meson8b_periph_clk_sel, ptr @meson8b_periph_clk_gate, ptr @meson8b_axi_clk_sel, ptr @meson8b_axi_clk_gate, ptr @meson8b_l2_dram_clk_sel, ptr @meson8b_l2_dram_clk_gate, ptr @meson8b_hdmi_pll_lvds_out, ptr @meson8b_hdmi_pll_hdmi_out, ptr @meson8b_vid_pll_in_sel, ptr @meson8b_vid_pll_in_en, ptr @meson8b_vid_pll_pre_div, ptr @meson8b_vid_pll_post_div, ptr @meson8b_vid_pll_final_div, ptr @meson8b_vclk_in_sel, ptr @meson8b_vclk_in_en, ptr @meson8b_vclk_div1_gate, ptr @meson8b_vclk_div2_div, ptr @meson8b_vclk_div2_div_gate, ptr @meson8b_vclk_div4_div, ptr @meson8b_vclk_div4_div_gate, ptr @meson8b_vclk_div6_div, ptr @meson8b_vclk_div6_div_gate, ptr @meson8b_vclk_div12_div, ptr @meson8b_vclk_div12_div_gate, ptr @meson8b_vclk2_in_sel, ptr @meson8b_vclk2_clk_in_en, ptr @meson8b_vclk2_div1_gate, ptr @meson8b_vclk2_div2_div, ptr @meson8b_vclk2_div2_div_gate, ptr @meson8b_vclk2_div4_div, ptr @meson8b_vclk2_div4_div_gate, ptr @meson8b_vclk2_div6_div, ptr @meson8b_vclk2_div6_div_gate, ptr @meson8b_vclk2_div12_div, ptr @meson8b_vclk2_div12_div_gate, ptr @meson8b_cts_enct_sel, ptr @meson8b_cts_enct, ptr @meson8b_cts_encp_sel, ptr @meson8b_cts_encp, ptr @meson8b_cts_enci_sel, ptr @meson8b_cts_enci, ptr @meson8b_hdmi_tx_pixel_sel, ptr @meson8b_hdmi_tx_pixel, ptr @meson8b_cts_encl_sel, ptr @meson8b_cts_encl, ptr @meson8b_cts_vdac0_sel, ptr @meson8b_cts_vdac0, ptr @meson8b_hdmi_sys_sel, ptr @meson8b_hdmi_sys_div, ptr @meson8b_hdmi_sys, ptr @meson8b_mali_0_sel, ptr @meson8b_mali_0_div, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson8b_vpu_0_sel, ptr @meson8b_vpu_0_div, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson8b_vpu_0, ptr @meson8b_vdec_1_sel, ptr @meson8b_vdec_1_1_div, ptr null, ptr null, ptr null, ptr @meson8b_vdec_1_1, ptr @meson8b_vdec_hcodec_sel, ptr @meson8b_vdec_hcodec_div, ptr @meson8b_vdec_hcodec, ptr @meson8b_vdec_2_sel, ptr @meson8b_vdec_2_div, ptr @meson8b_vdec_2, ptr @meson8b_vdec_hevc_sel, ptr @meson8b_vdec_hevc_div, ptr @meson8b_vdec_hevc_en, ptr @meson8b_vdec_hevc, ptr @meson8b_cts_amclk_sel, ptr @meson8b_cts_amclk_div, ptr @meson8b_cts_amclk, ptr @meson8b_cts_mclk_i958_sel, ptr @meson8b_cts_mclk_i958_div, ptr @meson8b_cts_mclk_i958, ptr @meson8b_cts_i958, ptr @meson8b_vclk_en, ptr @meson8b_vclk2_clk_en, ptr @meson8b_vid_pll_lvds_en, ptr @hdmi_pll_dco_in, ptr null] }, align 4
@.str.821 = private unnamed_addr constant [12 x i8] c"cpu_in_div3\00", align 1
@.compoundliteral.822 = internal global [1 x ptr] [ptr @meson8b_cpu_in_sel], align 4
@.compoundliteral.823 = internal global %struct.clk_init_data { ptr @.str.821, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.822, i8 1, i32 4 }, align 4
@meson8b_hw_onecell_data = internal global { i32, [219 x ptr] } { i32 218, [219 x ptr] [ptr null, ptr null, ptr @meson8b_fixed_pll, ptr @meson8b_vid_pll, ptr @meson8b_sys_pll, ptr @meson8b_fclk_div2, ptr @meson8b_fclk_div3, ptr @meson8b_fclk_div4, ptr @meson8b_fclk_div5, ptr @meson8b_fclk_div7, ptr @meson8b_clk81, ptr @meson8b_mali, ptr @meson8b_cpu_clk, ptr null, ptr @meson8b_mpeg_clk_sel, ptr @meson8b_mpeg_clk_div, ptr @meson8b_ddr, ptr @meson8b_dos, ptr @meson8b_isa, ptr @meson8b_pl301, ptr @meson8b_periphs, ptr @meson8b_spicc, ptr @meson8b_i2c, ptr @meson8b_sar_adc, ptr @meson8b_smart_card, ptr @meson8b_rng0, ptr @meson8b_uart0, ptr @meson8b_sdhc, ptr @meson8b_stream, ptr @meson8b_async_fifo, ptr @meson8b_sdio, ptr @meson8b_abuf, ptr @meson8b_hiu_iface, ptr @meson8b_assist_misc, ptr @meson8b_spi, ptr @meson8b_i2s_spdif, ptr @meson8b_eth, ptr @meson8b_demux, ptr @meson8b_aiu_glue, ptr @meson8b_iec958, ptr @meson8b_i2s_out, ptr @meson8b_amclk, ptr @meson8b_aififo2, ptr @meson8b_mixer, ptr @meson8b_mixer_iface, ptr @meson8b_adc, ptr @meson8b_blkmv, ptr @meson8b_aiu, ptr @meson8b_uart1, ptr @meson8b_g2d, ptr @meson8b_usb0, ptr @meson8b_usb1, ptr @meson8b_reset, ptr @meson8b_nand, ptr @meson8b_dos_parser, ptr @meson8b_usb, ptr @meson8b_vdin1, ptr @meson8b_ahb_arb0, ptr @meson8b_efuse, ptr @meson8b_boot_rom, ptr @meson8b_ahb_data_bus, ptr @meson8b_ahb_ctrl_bus, ptr @meson8b_hdmi_intr_sync, ptr @meson8b_hdmi_pclk, ptr @meson8b_usb1_ddr_bridge, ptr @meson8b_usb0_ddr_bridge, ptr @meson8b_mmc_pclk, ptr @meson8b_dvin, ptr @meson8b_uart2, ptr @meson8b_sana, ptr @meson8b_vpu_intr, ptr @meson8b_sec_ahb_ahb3_bridge, ptr @meson8b_clk81_a9, ptr @meson8b_vclk2_venci0, ptr @meson8b_vclk2_venci1, ptr @meson8b_vclk2_vencp0, ptr @meson8b_vclk2_vencp1, ptr @meson8b_gclk_venci_int, ptr @meson8b_gclk_vencp_int, ptr @meson8b_dac_clk, ptr @meson8b_aoclk_gate, ptr @meson8b_iec958_gate, ptr @meson8b_enc480p, ptr @meson8b_rng1, ptr @meson8b_gclk_vencl_int, ptr @meson8b_vclk2_venclmcc, ptr @meson8b_vclk2_vencl, ptr @meson8b_vclk2_other, ptr @meson8b_edp, ptr @meson8b_ao_media_cpu, ptr @meson8b_ao_ahb_sram, ptr @meson8b_ao_ahb_bus, ptr @meson8b_ao_iface, ptr @meson8b_mpll0, ptr @meson8b_mpll1, ptr @meson8b_mpll2, ptr @meson8b_mpll0_div, ptr @meson8b_mpll1_div, ptr @meson8b_mpll2_div, ptr @meson8b_cpu_in_sel, ptr @meson8b_cpu_in_div2, ptr @meson8b_cpu_in_div3, ptr @meson8b_cpu_scale_div, ptr @meson8b_cpu_scale_out_sel, ptr @meson8b_mpll_prediv, ptr @meson8b_fclk_div2_div, ptr @meson8b_fclk_div3_div, ptr @meson8b_fclk_div4_div, ptr @meson8b_fclk_div5_div, ptr @meson8b_fclk_div7_div, ptr @meson8b_nand_clk_sel, ptr @meson8b_nand_clk_div, ptr @meson8b_nand_clk_gate, ptr @meson8b_fixed_pll_dco, ptr @meson8b_hdmi_pll_dco, ptr @meson8b_sys_pll_dco, ptr @meson8b_cpu_clk_div2, ptr @meson8b_cpu_clk_div3, ptr @meson8b_cpu_clk_div4, ptr @meson8b_cpu_clk_div5, ptr @meson8b_cpu_clk_div6, ptr @meson8b_cpu_clk_div7, ptr @meson8b_cpu_clk_div8, ptr @meson8b_apb_clk_sel, ptr @meson8b_apb_clk_gate, ptr @meson8b_periph_clk_sel, ptr @meson8b_periph_clk_gate, ptr @meson8b_axi_clk_sel, ptr @meson8b_axi_clk_gate, ptr @meson8b_l2_dram_clk_sel, ptr @meson8b_l2_dram_clk_gate, ptr @meson8b_hdmi_pll_lvds_out, ptr @meson8b_hdmi_pll_hdmi_out, ptr @meson8b_vid_pll_in_sel, ptr @meson8b_vid_pll_in_en, ptr @meson8b_vid_pll_pre_div, ptr @meson8b_vid_pll_post_div, ptr @meson8b_vid_pll_final_div, ptr @meson8b_vclk_in_sel, ptr @meson8b_vclk_in_en, ptr @meson8b_vclk_div1_gate, ptr @meson8b_vclk_div2_div, ptr @meson8b_vclk_div2_div_gate, ptr @meson8b_vclk_div4_div, ptr @meson8b_vclk_div4_div_gate, ptr @meson8b_vclk_div6_div, ptr @meson8b_vclk_div6_div_gate, ptr @meson8b_vclk_div12_div, ptr @meson8b_vclk_div12_div_gate, ptr @meson8b_vclk2_in_sel, ptr @meson8b_vclk2_clk_in_en, ptr @meson8b_vclk2_div1_gate, ptr @meson8b_vclk2_div2_div, ptr @meson8b_vclk2_div2_div_gate, ptr @meson8b_vclk2_div4_div, ptr @meson8b_vclk2_div4_div_gate, ptr @meson8b_vclk2_div6_div, ptr @meson8b_vclk2_div6_div_gate, ptr @meson8b_vclk2_div12_div, ptr @meson8b_vclk2_div12_div_gate, ptr @meson8b_cts_enct_sel, ptr @meson8b_cts_enct, ptr @meson8b_cts_encp_sel, ptr @meson8b_cts_encp, ptr @meson8b_cts_enci_sel, ptr @meson8b_cts_enci, ptr @meson8b_hdmi_tx_pixel_sel, ptr @meson8b_hdmi_tx_pixel, ptr @meson8b_cts_encl_sel, ptr @meson8b_cts_encl, ptr @meson8b_cts_vdac0_sel, ptr @meson8b_cts_vdac0, ptr @meson8b_hdmi_sys_sel, ptr @meson8b_hdmi_sys_div, ptr @meson8b_hdmi_sys, ptr @meson8b_mali_0_sel, ptr @meson8b_mali_0_div, ptr @meson8b_mali_0, ptr @meson8b_mali_1_sel, ptr @meson8b_mali_1_div, ptr @meson8b_mali_1, ptr null, ptr null, ptr @meson8b_vpu_0_sel, ptr @meson8b_vpu_0_div, ptr @meson8b_vpu_0, ptr @meson8b_vpu_1_sel, ptr @meson8b_vpu_1_div, ptr null, ptr @meson8b_vpu_1, ptr @meson8b_vpu, ptr @meson8b_vdec_1_sel, ptr @meson8b_vdec_1_1_div, ptr @meson8b_vdec_1_1, ptr @meson8b_vdec_1_2_div, ptr @meson8b_vdec_1_2, ptr @meson8b_vdec_1, ptr @meson8b_vdec_hcodec_sel, ptr @meson8b_vdec_hcodec_div, ptr @meson8b_vdec_hcodec, ptr @meson8b_vdec_2_sel, ptr @meson8b_vdec_2_div, ptr @meson8b_vdec_2, ptr @meson8b_vdec_hevc_sel, ptr @meson8b_vdec_hevc_div, ptr @meson8b_vdec_hevc_en, ptr @meson8b_vdec_hevc, ptr @meson8b_cts_amclk_sel, ptr @meson8b_cts_amclk_div, ptr @meson8b_cts_amclk, ptr @meson8b_cts_mclk_i958_sel, ptr @meson8b_cts_mclk_i958_div, ptr @meson8b_cts_mclk_i958, ptr @meson8b_cts_i958, ptr @meson8b_vclk_en, ptr @meson8b_vclk2_clk_en, ptr @meson8b_vid_pll_lvds_en, ptr @hdmi_pll_dco_in, ptr null] }, align 4
@meson8m2_hw_onecell_data = internal global { i32, [219 x ptr] } { i32 218, [219 x ptr] [ptr null, ptr null, ptr @meson8b_fixed_pll, ptr @meson8b_vid_pll, ptr @meson8b_sys_pll, ptr @meson8b_fclk_div2, ptr @meson8b_fclk_div3, ptr @meson8b_fclk_div4, ptr @meson8b_fclk_div5, ptr @meson8b_fclk_div7, ptr @meson8b_clk81, ptr @meson8b_mali, ptr @meson8b_cpu_clk, ptr null, ptr @meson8b_mpeg_clk_sel, ptr @meson8b_mpeg_clk_div, ptr @meson8b_ddr, ptr @meson8b_dos, ptr @meson8b_isa, ptr @meson8b_pl301, ptr @meson8b_periphs, ptr @meson8b_spicc, ptr @meson8b_i2c, ptr @meson8b_sar_adc, ptr @meson8b_smart_card, ptr @meson8b_rng0, ptr @meson8b_uart0, ptr @meson8b_sdhc, ptr @meson8b_stream, ptr @meson8b_async_fifo, ptr @meson8b_sdio, ptr @meson8b_abuf, ptr @meson8b_hiu_iface, ptr @meson8b_assist_misc, ptr @meson8b_spi, ptr @meson8b_i2s_spdif, ptr @meson8b_eth, ptr @meson8b_demux, ptr @meson8b_aiu_glue, ptr @meson8b_iec958, ptr @meson8b_i2s_out, ptr @meson8b_amclk, ptr @meson8b_aififo2, ptr @meson8b_mixer, ptr @meson8b_mixer_iface, ptr @meson8b_adc, ptr @meson8b_blkmv, ptr @meson8b_aiu, ptr @meson8b_uart1, ptr @meson8b_g2d, ptr @meson8b_usb0, ptr @meson8b_usb1, ptr @meson8b_reset, ptr @meson8b_nand, ptr @meson8b_dos_parser, ptr @meson8b_usb, ptr @meson8b_vdin1, ptr @meson8b_ahb_arb0, ptr @meson8b_efuse, ptr @meson8b_boot_rom, ptr @meson8b_ahb_data_bus, ptr @meson8b_ahb_ctrl_bus, ptr @meson8b_hdmi_intr_sync, ptr @meson8b_hdmi_pclk, ptr @meson8b_usb1_ddr_bridge, ptr @meson8b_usb0_ddr_bridge, ptr @meson8b_mmc_pclk, ptr @meson8b_dvin, ptr @meson8b_uart2, ptr @meson8b_sana, ptr @meson8b_vpu_intr, ptr @meson8b_sec_ahb_ahb3_bridge, ptr @meson8b_clk81_a9, ptr @meson8b_vclk2_venci0, ptr @meson8b_vclk2_venci1, ptr @meson8b_vclk2_vencp0, ptr @meson8b_vclk2_vencp1, ptr @meson8b_gclk_venci_int, ptr @meson8b_gclk_vencp_int, ptr @meson8b_dac_clk, ptr @meson8b_aoclk_gate, ptr @meson8b_iec958_gate, ptr @meson8b_enc480p, ptr @meson8b_rng1, ptr @meson8b_gclk_vencl_int, ptr @meson8b_vclk2_venclmcc, ptr @meson8b_vclk2_vencl, ptr @meson8b_vclk2_other, ptr @meson8b_edp, ptr @meson8b_ao_media_cpu, ptr @meson8b_ao_ahb_sram, ptr @meson8b_ao_ahb_bus, ptr @meson8b_ao_iface, ptr @meson8b_mpll0, ptr @meson8b_mpll1, ptr @meson8b_mpll2, ptr @meson8b_mpll0_div, ptr @meson8b_mpll1_div, ptr @meson8b_mpll2_div, ptr @meson8b_cpu_in_sel, ptr @meson8b_cpu_in_div2, ptr @meson8b_cpu_in_div3, ptr @meson8b_cpu_scale_div, ptr @meson8b_cpu_scale_out_sel, ptr @meson8b_mpll_prediv, ptr @meson8b_fclk_div2_div, ptr @meson8b_fclk_div3_div, ptr @meson8b_fclk_div4_div, ptr @meson8b_fclk_div5_div, ptr @meson8b_fclk_div7_div, ptr @meson8b_nand_clk_sel, ptr @meson8b_nand_clk_div, ptr @meson8b_nand_clk_gate, ptr @meson8b_fixed_pll_dco, ptr @meson8b_hdmi_pll_dco, ptr @meson8b_sys_pll_dco, ptr @meson8b_cpu_clk_div2, ptr @meson8b_cpu_clk_div3, ptr @meson8b_cpu_clk_div4, ptr @meson8b_cpu_clk_div5, ptr @meson8b_cpu_clk_div6, ptr @meson8b_cpu_clk_div7, ptr @meson8b_cpu_clk_div8, ptr @meson8b_apb_clk_sel, ptr @meson8b_apb_clk_gate, ptr @meson8b_periph_clk_sel, ptr @meson8b_periph_clk_gate, ptr @meson8b_axi_clk_sel, ptr @meson8b_axi_clk_gate, ptr @meson8b_l2_dram_clk_sel, ptr @meson8b_l2_dram_clk_gate, ptr @meson8b_hdmi_pll_lvds_out, ptr @meson8b_hdmi_pll_hdmi_out, ptr @meson8b_vid_pll_in_sel, ptr @meson8b_vid_pll_in_en, ptr @meson8b_vid_pll_pre_div, ptr @meson8b_vid_pll_post_div, ptr @meson8b_vid_pll_final_div, ptr @meson8b_vclk_in_sel, ptr @meson8b_vclk_in_en, ptr @meson8b_vclk_div1_gate, ptr @meson8b_vclk_div2_div, ptr @meson8b_vclk_div2_div_gate, ptr @meson8b_vclk_div4_div, ptr @meson8b_vclk_div4_div_gate, ptr @meson8b_vclk_div6_div, ptr @meson8b_vclk_div6_div_gate, ptr @meson8b_vclk_div12_div, ptr @meson8b_vclk_div12_div_gate, ptr @meson8b_vclk2_in_sel, ptr @meson8b_vclk2_clk_in_en, ptr @meson8b_vclk2_div1_gate, ptr @meson8b_vclk2_div2_div, ptr @meson8b_vclk2_div2_div_gate, ptr @meson8b_vclk2_div4_div, ptr @meson8b_vclk2_div4_div_gate, ptr @meson8b_vclk2_div6_div, ptr @meson8b_vclk2_div6_div_gate, ptr @meson8b_vclk2_div12_div, ptr @meson8b_vclk2_div12_div_gate, ptr @meson8b_cts_enct_sel, ptr @meson8b_cts_enct, ptr @meson8b_cts_encp_sel, ptr @meson8b_cts_encp, ptr @meson8b_cts_enci_sel, ptr @meson8b_cts_enci, ptr @meson8b_hdmi_tx_pixel_sel, ptr @meson8b_hdmi_tx_pixel, ptr @meson8b_cts_encl_sel, ptr @meson8b_cts_encl, ptr @meson8b_cts_vdac0_sel, ptr @meson8b_cts_vdac0, ptr @meson8b_hdmi_sys_sel, ptr @meson8b_hdmi_sys_div, ptr @meson8b_hdmi_sys, ptr @meson8b_mali_0_sel, ptr @meson8b_mali_0_div, ptr @meson8b_mali_0, ptr @meson8b_mali_1_sel, ptr @meson8b_mali_1_div, ptr @meson8b_mali_1, ptr @meson8m2_gp_pll_dco, ptr @meson8m2_gp_pll, ptr @meson8m2_vpu_0_sel, ptr @meson8b_vpu_0_div, ptr @meson8b_vpu_0, ptr @meson8m2_vpu_1_sel, ptr @meson8b_vpu_1_div, ptr null, ptr @meson8b_vpu_1, ptr @meson8b_vpu, ptr @meson8b_vdec_1_sel, ptr @meson8b_vdec_1_1_div, ptr @meson8b_vdec_1_1, ptr @meson8b_vdec_1_2_div, ptr @meson8b_vdec_1_2, ptr @meson8b_vdec_1, ptr @meson8b_vdec_hcodec_sel, ptr @meson8b_vdec_hcodec_div, ptr @meson8b_vdec_hcodec, ptr @meson8b_vdec_2_sel, ptr @meson8b_vdec_2_div, ptr @meson8b_vdec_2, ptr @meson8b_vdec_hevc_sel, ptr @meson8b_vdec_hevc_div, ptr @meson8b_vdec_hevc_en, ptr @meson8b_vdec_hevc, ptr @meson8b_cts_amclk_sel, ptr @meson8b_cts_amclk_div, ptr @meson8b_cts_amclk, ptr @meson8b_cts_mclk_i958_sel, ptr @meson8b_cts_mclk_i958_div, ptr @meson8b_cts_mclk_i958, ptr @meson8b_cts_i958, ptr @meson8b_vclk_en, ptr @meson8b_vclk2_clk_en, ptr @meson8b_vid_pll_lvds_en, ptr @hdmi_pll_dco_in, ptr null] }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_meson8_clkc, ptr @__of_table_meson8b_clkc, ptr @__of_table_meson8m2_clkc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson8_clkc_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #5
  tail call fastcc void @meson8b_clkc_init_common(ptr noundef %0, ptr noundef nonnull @meson8_hw_onecell_data) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson8b_clkc_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #5
  tail call fastcc void @meson8b_clkc_init_common(ptr noundef %0, ptr noundef nonnull @meson8b_hw_onecell_data) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson8m2_clkc_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #5
  tail call fastcc void @meson8b_clkc_init_common(ptr noundef %0, ptr noundef nonnull @meson8m2_hw_onecell_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @meson8b_clkc_init_common(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_get_parent(ptr noundef %0) #5
  %4 = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #5
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %52

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 48) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.meson8b_clk_reset, ptr %10, i32 0, i32 1
  store ptr %4, ptr %13, align 4
  store ptr @meson8b_clk_reset_ops, ptr %10, align 8
  %14 = getelementptr inbounds %struct.reset_controller_dev, ptr %10, i32 0, i32 8
  store i32 16, ptr %14, align 8
  %15 = getelementptr inbounds %struct.reset_controller_dev, ptr %10, i32 0, i32 5
  store ptr %0, ptr %15, align 4
  %16 = tail call i32 @reset_controller_register(ptr noundef nonnull %10) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.meson8b_clkc_init_common, i32 noundef %16) #6
  br label %52

20:                                               ; preds = %20, %12
  %21 = phi i32 [ %25, %20 ], [ 0, %12 ]
  %22 = getelementptr [193 x ptr], ptr @meson8b_clk_regmaps, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_regmap, ptr %23, i32 0, i32 1
  store ptr %4, ptr %24, align 4
  %25 = add nuw nsw i32 %21, 1
  %26 = icmp eq i32 %25, 193
  br i1 %26, label %27, label %20

27:                                               ; preds = %35, %20
  %28 = phi i32 [ %36, %35 ], [ 2, %20 ]
  %29 = getelementptr %struct.clk_hw_onecell_data, ptr %1, i32 0, i32 1, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @of_clk_hw_register(ptr noundef %0, ptr noundef nonnull %30) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32, %27
  %36 = add nuw nsw i32 %28, 1
  %37 = icmp eq i32 %36, 218
  br i1 %37, label %38, label %27

38:                                               ; preds = %35
  %39 = getelementptr %struct.clk_hw_onecell_data, ptr %1, i32 13
  %40 = load ptr, ptr %39, align 4
  store ptr %40, ptr getelementptr inbounds (%struct.meson8b_nb_data, ptr @meson8b_cpu_nb_data, i32 0, i32 1), align 4
  %41 = tail call ptr @clk_hw_get_name(ptr noundef nonnull @meson8b_cpu_scale_out_sel) #5
  %42 = tail call ptr @__clk_lookup(ptr noundef %41) #5
  %43 = tail call i32 @clk_notifier_register(ptr noundef %42, ptr noundef nonnull @meson8b_cpu_nb_data) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.meson8b_clkc_init_common) #6
  br label %52

47:                                               ; preds = %38
  %48 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %1) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.meson8b_clkc_init_common) #6
  br label %52

52:                                               ; preds = %50, %47, %45, %32, %18, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8b_clk_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp ugt i32 %1, 15
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr [16 x %struct.meson8b_clk_reset_line], ptr @meson8b_clk_reset_bits, i32 0, i32 %1
  %6 = and i32 %1, 536870910
  %7 = icmp eq i32 %6, 14
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr [16 x %struct.meson8b_clk_reset_line], ptr @meson8b_clk_reset_bits, i32 0, i32 %1, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @meson_clk_lock) #5
  %16 = getelementptr inbounds %struct.meson8b_clk_reset, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %5, align 4
  %19 = getelementptr [16 x %struct.meson8b_clk_reset_line], ptr @meson8b_clk_reset_bits, i32 0, i32 %1, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 1, %21
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %18, i32 noundef %22, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @meson_clk_lock, i32 noundef %15) #5
  br label %24

24:                                               ; preds = %13, %2
  %25 = phi i32 [ 0, %13 ], [ -22, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8b_clk_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp ugt i32 %1, 15
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr [16 x %struct.meson8b_clk_reset_line], ptr @meson8b_clk_reset_bits, i32 0, i32 %1
  %6 = and i32 %1, 536870910
  %7 = icmp eq i32 %6, 14
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr [16 x %struct.meson8b_clk_reset_line], ptr @meson8b_clk_reset_bits, i32 0, i32 %1, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @meson_clk_lock) #5
  %16 = getelementptr inbounds %struct.meson8b_clk_reset, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %5, align 4
  %19 = getelementptr [16 x %struct.meson8b_clk_reset_line], ptr @meson8b_clk_reset_bits, i32 0, i32 %1, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 1, %21
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %18, i32 noundef %22, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @meson_clk_lock, i32 noundef %15) #5
  br label %24

24:                                               ; preds = %13, %2
  %25 = phi i32 [ 0, %13 ], [ -22, %2 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8b_cpu_clk_notifier_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  switch i32 %1, label %19 [
    i32 1, label %5
    i32 2, label %4
  ]

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 1, %4 ], [ 0, %3 ]
  %7 = getelementptr inbounds %struct.meson8b_nb_data, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %8, i32 noundef %6) #5
  %10 = getelementptr inbounds %struct.meson8b_nb_data, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_hw_set_parent(ptr noundef %11, ptr noundef %9) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = sub i32 1, %12
  %16 = or i32 %15, 32768
  br label %19

17:                                               ; preds = %5
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 21474800) #5
  br label %19

19:                                               ; preds = %17, %14, %3
  %20 = phi i32 [ %16, %14 ], [ 1, %17 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
