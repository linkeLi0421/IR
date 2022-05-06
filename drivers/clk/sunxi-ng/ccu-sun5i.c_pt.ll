; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun5i.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun5i.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_nkmp = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_div_internal, i32, i32, %struct.ccu_common }
%struct.ccu_mult_internal = type { i8, i8, i8, i8, i8 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_nm = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_frac_internal, %struct.ccu_sdm_internal, i32, i32, i32, %struct.ccu_common }
%struct.ccu_frac_internal = type { i32, i32, [2 x i32] }
%struct.ccu_sdm_internal = type { ptr, i32, i32, i32, i16 }
%struct.ccu_mult = type { i32, i32, %struct.ccu_frac_internal, %struct.ccu_mult_internal, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_nk = type { i16, i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, i32, %struct.ccu_common }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_mux = type { i32, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ccu_sdm_setting = type { i32, i32, i32, i32 }
%struct.ccu_mux_fixed_prediv = type { i8, i16 }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__of_table_sun5i_a10s_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a10s_ccu_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_ccu_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_gr8_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nextthing,gr8-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_gr8_ccu_setup }, section "__clk_of_table", align 4
@sun5i_a10s_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun5i_a10s_ccu_clks, i32 94, ptr @sun5i_a10s_hw_clks, ptr @sun5i_a10s_ccu_resets, i32 11 }, align 4
@.str = private unnamed_addr constant [43 x i8] c"\013%pOF: Could not map the clock registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@sun5i_a10s_ccu_clks = internal global [94 x ptr] [ptr getelementptr (i8, ptr @hosc_clk, i64 4), ptr getelementptr (i8, ptr @pll_core_clk, i64 68), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 84), ptr getelementptr (i8, ptr @pll_video0_clk, i64 56), ptr getelementptr (i8, ptr @pll_ve_clk, i64 68), ptr getelementptr (i8, ptr @pll_ddr_base_clk, i64 28), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 48), ptr getelementptr (i8, ptr @pll_ddr_other_clk, i64 48), ptr getelementptr (i8, ptr @pll_periph_clk, i64 28), ptr getelementptr (i8, ptr @pll_video1_clk, i64 56), ptr getelementptr (i8, ptr @cpu_clk, i64 28), ptr getelementptr (i8, ptr @axi_clk, i64 48), ptr getelementptr (i8, ptr @ahb_clk, i64 48), ptr getelementptr (i8, ptr @apb0_clk, i64 48), ptr getelementptr (i8, ptr @apb1_clk, i64 72), ptr getelementptr (i8, ptr @axi_dram_clk, i64 4), ptr getelementptr (i8, ptr @ahb_otg_clk, i64 4), ptr getelementptr (i8, ptr @ahb_ehci_clk, i64 4), ptr getelementptr (i8, ptr @ahb_ohci_clk, i64 4), ptr getelementptr (i8, ptr @ahb_ss_clk, i64 4), ptr getelementptr (i8, ptr @ahb_dma_clk, i64 4), ptr getelementptr (i8, ptr @ahb_bist_clk, i64 4), ptr getelementptr (i8, ptr @ahb_mmc0_clk, i64 4), ptr getelementptr (i8, ptr @ahb_mmc1_clk, i64 4), ptr getelementptr (i8, ptr @ahb_mmc2_clk, i64 4), ptr getelementptr (i8, ptr @ahb_nand_clk, i64 4), ptr getelementptr (i8, ptr @ahb_sdram_clk, i64 4), ptr getelementptr (i8, ptr @ahb_emac_clk, i64 4), ptr getelementptr (i8, ptr @ahb_ts_clk, i64 4), ptr getelementptr (i8, ptr @ahb_spi0_clk, i64 4), ptr getelementptr (i8, ptr @ahb_spi1_clk, i64 4), ptr getelementptr (i8, ptr @ahb_spi2_clk, i64 4), ptr getelementptr (i8, ptr @ahb_gps_clk, i64 4), ptr getelementptr (i8, ptr @ahb_hstimer_clk, i64 4), ptr getelementptr (i8, ptr @ahb_ve_clk, i64 4), ptr getelementptr (i8, ptr @ahb_tve_clk, i64 4), ptr getelementptr (i8, ptr @ahb_lcd_clk, i64 4), ptr getelementptr (i8, ptr @ahb_csi_clk, i64 4), ptr getelementptr (i8, ptr @ahb_hdmi_clk, i64 4), ptr getelementptr (i8, ptr @ahb_de_be_clk, i64 4), ptr getelementptr (i8, ptr @ahb_de_fe_clk, i64 4), ptr getelementptr (i8, ptr @ahb_iep_clk, i64 4), ptr getelementptr (i8, ptr @ahb_gpu_clk, i64 4), ptr getelementptr (i8, ptr @apb0_codec_clk, i64 4), ptr getelementptr (i8, ptr @apb0_spdif_clk, i64 4), ptr getelementptr (i8, ptr @apb0_i2s_clk, i64 4), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 4), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 4), ptr getelementptr (i8, ptr @apb0_keypad_clk, i64 4), ptr getelementptr (i8, ptr @apb1_i2c0_clk, i64 4), ptr getelementptr (i8, ptr @apb1_i2c1_clk, i64 4), ptr getelementptr (i8, ptr @apb1_i2c2_clk, i64 4), ptr getelementptr (i8, ptr @apb1_uart0_clk, i64 4), ptr getelementptr (i8, ptr @apb1_uart1_clk, i64 4), ptr getelementptr (i8, ptr @apb1_uart2_clk, i64 4), ptr getelementptr (i8, ptr @apb1_uart3_clk, i64 4), ptr getelementptr (i8, ptr @nand_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_clk, i64 72), ptr getelementptr (i8, ptr @mmc1_clk, i64 72), ptr getelementptr (i8, ptr @mmc2_clk, i64 72), ptr getelementptr (i8, ptr @ts_clk, i64 72), ptr getelementptr (i8, ptr @ss_clk, i64 72), ptr getelementptr (i8, ptr @spi0_clk, i64 72), ptr getelementptr (i8, ptr @spi1_clk, i64 72), ptr getelementptr (i8, ptr @spi2_clk, i64 72), ptr getelementptr (i8, ptr @ir_clk, i64 72), ptr getelementptr (i8, ptr @i2s_clk, i64 28), ptr getelementptr (i8, ptr @spdif_clk, i64 28), ptr getelementptr (i8, ptr @keypad_clk, i64 72), ptr getelementptr (i8, ptr @usb_ohci_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 4), ptr getelementptr (i8, ptr @gps_clk, i64 48), ptr getelementptr (i8, ptr @dram_ve_clk, i64 4), ptr getelementptr (i8, ptr @dram_csi_clk, i64 4), ptr getelementptr (i8, ptr @dram_ts_clk, i64 4), ptr getelementptr (i8, ptr @dram_tve_clk, i64 4), ptr getelementptr (i8, ptr @dram_de_fe_clk, i64 4), ptr getelementptr (i8, ptr @dram_de_be_clk, i64 4), ptr getelementptr (i8, ptr @dram_ace_clk, i64 4), ptr getelementptr (i8, ptr @dram_iep_clk, i64 4), ptr getelementptr (i8, ptr @de_be_clk, i64 48), ptr getelementptr (i8, ptr @de_fe_clk, i64 48), ptr getelementptr (i8, ptr @tcon_ch0_clk, i64 28), ptr getelementptr (i8, ptr @tcon_ch1_sclk2_clk, i64 48), ptr getelementptr (i8, ptr @tcon_ch1_sclk1_clk, i64 48), ptr getelementptr (i8, ptr @csi_clk, i64 48), ptr getelementptr (i8, ptr @ve_clk, i64 4), ptr getelementptr (i8, ptr @codec_clk, i64 4), ptr getelementptr (i8, ptr @avs_clk, i64 4), ptr getelementptr (i8, ptr @hdmi_clk, i64 48), ptr getelementptr (i8, ptr @gpu_clk, i64 48), ptr getelementptr (i8, ptr @mbus_clk, i64 72), ptr getelementptr (i8, ptr @iep_clk, i64 4)], align 4
@sun5i_a10s_ccu_resets = internal global [11 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 204, i32 1 }, %struct.ccu_reset_map { i16 204, i32 2 }, %struct.ccu_reset_map { i16 208, i32 1073741824 }, %struct.ccu_reset_map { i16 260, i32 1073741824 }, %struct.ccu_reset_map { i16 268, i32 1073741824 }, %struct.ccu_reset_map { i16 280, i32 536870912 }, %struct.ccu_reset_map { i16 280, i32 1073741824 }, %struct.ccu_reset_map { i16 308, i32 1073741824 }, %struct.ccu_reset_map { i16 316, i32 1 }, %struct.ccu_reset_map { i16 340, i32 1073741824 }, %struct.ccu_reset_map { i16 352, i32 1073741824 }], align 4
@hosc_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.4 } } }, align 4
@pll_core_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 0, %struct.ccu_mult_internal { i8 0, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.7 } } }, align 4
@pll_audio_base_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 0, %struct.ccu_mult_internal { i8 0, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 0, i32 0, ptr null }, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_sdm_internal { ptr @pll_audio_sdm_table, i32 2, i32 0, i32 -2147483648, i16 12 }, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 128, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 } } }, align 4
@pll_video0_clk = internal global %struct.ccu_mult { i32 -2147483648, i32 0, %struct.ccu_frac_internal { i32 32768, i32 16384, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_mult_internal { i8 0, i8 0, i8 7, i8 9, i8 127 }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 16, i16 0, i32 8, i32 17, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 } } }, align 4
@pll_ve_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 0, %struct.ccu_mult_internal { i8 0, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 24, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 } } }, align 4
@pll_ddr_base_clk = internal global %struct.ccu_nk { i16 0, i32 -2147483648, i32 0, %struct.ccu_mult_internal { i8 0, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 } } }, align 4
@pll_ddr_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 } }, i32 0 }, align 4
@pll_ddr_other_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 } }, i32 0 }, align 4
@pll_periph_clk = internal global %struct.ccu_nk { i16 0, i32 -2147483648, i32 0, %struct.ccu_mult_internal { i8 0, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, i32 2, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 8, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 } } }, align 4
@pll_video1_clk = internal global %struct.ccu_mult { i32 -2147483648, i32 0, %struct.ccu_frac_internal { i32 32768, i32 16384, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_mult_internal { i8 0, i8 0, i8 7, i8 9, i8 127 }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 48, i16 0, i32 8, i32 17, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 } } }, align 4
@cpu_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr @cpu_predivs, i8 1, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 4, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 } } }, align 4
@axi_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 } }, i32 0 }, align 4
@ahb_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 6, i8 2, ptr null, ptr @ahb_predivs, i8 1, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.39 } }, i32 0 }, align 4
@apb0_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 0, i32 0, ptr @apb0_div_table }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.42 } }, i32 0 }, align 4
@apb1_clk = internal global %struct.ccu_mp { i32 0, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 88, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 } } }, align 4
@axi_dram_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 92, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.47 } } }, align 4
@ahb_otg_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.50 } } }, align 4
@ahb_ehci_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 } } }, align 4
@ahb_ohci_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.56 } } }, align 4
@ahb_ss_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 } } }, align 4
@ahb_dma_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.62 } } }, align 4
@ahb_bist_clk = internal global %struct.ccu_gate { i32 128, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.65 } } }, align 4
@ahb_mmc0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.68 } } }, align 4
@ahb_mmc1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 } } }, align 4
@ahb_mmc2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.74 } } }, align 4
@ahb_nand_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 } } }, align 4
@ahb_sdram_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 } } }, align 4
@ahb_emac_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 } } }, align 4
@ahb_ts_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.86 } } }, align 4
@ahb_spi0_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 } } }, align 4
@ahb_spi1_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.92 } } }, align 4
@ahb_spi2_clk = internal global %struct.ccu_gate { i32 4194304, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.95 } } }, align 4
@ahb_gps_clk = internal global %struct.ccu_gate { i32 67108864, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 } } }, align 4
@ahb_hstimer_clk = internal global %struct.ccu_gate { i32 268435456, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 } } }, align 4
@ahb_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.104 } } }, align 4
@ahb_tve_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.107 } } }, align 4
@ahb_lcd_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 } } }, align 4
@ahb_csi_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 } } }, align 4
@ahb_hdmi_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 } } }, align 4
@ahb_de_be_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.119 } } }, align 4
@ahb_de_fe_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 } } }, align 4
@ahb_iep_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.125 } } }, align 4
@ahb_gpu_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 } } }, align 4
@apb0_codec_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 } } }, align 4
@apb0_spdif_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.134 } } }, align 4
@apb0_i2s_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 } } }, align 4
@apb0_pio_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 } } }, align 4
@apb0_ir_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 } } }, align 4
@apb0_keypad_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.146 } } }, align 4
@apb1_i2c0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 } } }, align 4
@apb1_i2c1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 } } }, align 4
@apb1_i2c2_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 } } }, align 4
@apb1_uart0_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 } } }, align 4
@apb1_uart1_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 } } }, align 4
@apb1_uart2_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.164 } } }, align 4
@apb1_uart3_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.167 } } }, align 4
@nand_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 128, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.169 } } }, align 4
@mmc0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.171 } } }, align 4
@mmc1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.173 } } }, align 4
@mmc2_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.175 } } }, align 4
@ts_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 152, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.177 } } }, align 4
@ss_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 156, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.179 } } }, align 4
@spi0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 160, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.181 } } }, align 4
@spi1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 164, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.183 } } }, align 4
@spi2_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 168, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.185 } } }, align 4
@ir_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 176, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.187 } } }, align 4
@i2s_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 184, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.189 } } }, align 4
@spdif_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 192, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.195 } } }, align 4
@keypad_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 8, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 20, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr @keypad_table, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 196, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.197 } } }, align 4
@usb_ohci_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.201 } } }, align 4
@usb_phy0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.204 } } }, align 4
@usb_phy1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.207 } } }, align 4
@gps_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 208, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.209 } }, i32 0 }, align 4
@dram_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.212 } } }, align 4
@dram_csi_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.215 } } }, align 4
@dram_ts_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.218 } } }, align 4
@dram_tve_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.221 } } }, align 4
@dram_de_fe_clk = internal global %struct.ccu_gate { i32 33554432, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.224 } } }, align 4
@dram_de_be_clk = internal global %struct.ccu_gate { i32 67108864, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.227 } } }, align 4
@dram_ace_clk = internal global %struct.ccu_gate { i32 536870912, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.230 } } }, align 4
@dram_iep_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.233 } } }, align 4
@de_be_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 260, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.235 } }, i32 0 }, align 4
@de_fe_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 268, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.237 } }, i32 0 }, align 4
@tcon_ch0_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 280, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.239 } } }, align 4
@tcon_ch1_sclk2_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 300, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.243 } }, i32 0 }, align 4
@tcon_ch1_sclk1_clk = internal global %struct.ccu_div { i32 32768, %struct.ccu_div_internal { i8 11, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 300, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.246 } }, i32 0 }, align 4
@csi_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr @csi_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 308, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.248 } }, i32 0 }, align 4
@ve_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 316, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.251 } } }, align 4
@codec_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 320, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.254 } } }, align 4
@avs_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 324, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.257 } } }, align 4
@hdmi_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr @hdmi_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 336, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.259 } }, i32 0 }, align 4
@gpu_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 340, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.261 } }, i32 0 }, align 4
@mbus_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 348, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.263 } } }, align 4
@iep_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 352, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.266 } } }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"hosc\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"osc24M\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.4 = internal global %struct.clk_init_data { ptr @.str.2, ptr @ccu_gate_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"pll-core\00", align 1
@ccu_nkmp_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.6 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.7 = internal global %struct.clk_init_data { ptr @.str.5, ptr @ccu_nkmp_ops, ptr @.compoundliteral.6, ptr null, ptr null, i8 1, i32 0 }, align 4
@pll_audio_sdm_table = internal global [2 x %struct.ccu_sdm_setting] [%struct.ccu_sdm_setting { i32 22579200, i32 -1073672828, i32 8, i32 7 }, %struct.ccu_sdm_setting { i32 24576000, i32 -1073697790, i32 14, i32 14 }], align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"pll-audio-base\00", align 1
@ccu_nm_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.9 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.10 = internal global %struct.clk_init_data { ptr @.str.8, ptr @ccu_nm_ops, ptr @.compoundliteral.9, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"pll-video0\00", align 1
@ccu_mult_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.12 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.13 = internal global %struct.clk_init_data { ptr @.str.11, ptr @ccu_mult_ops, ptr @.compoundliteral.12, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"pll-ve\00", align 1
@.compoundliteral.15 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.16 = internal global %struct.clk_init_data { ptr @.str.14, ptr @ccu_nkmp_ops, ptr @.compoundliteral.15, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"pll-ddr-base\00", align 1
@ccu_nk_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.18 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.19 = internal global %struct.clk_init_data { ptr @.str.17, ptr @ccu_nk_ops, ptr @.compoundliteral.18, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"pll-ddr\00", align 1
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.21 = internal global [1 x ptr] [ptr @.str.17], align 4
@.compoundliteral.22 = internal global %struct.clk_init_data { ptr @.str.20, ptr @ccu_div_ops, ptr @.compoundliteral.21, ptr null, ptr null, i8 1, i32 2048 }, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"pll-ddr-other\00", align 1
@.compoundliteral.24 = internal global [1 x ptr] [ptr @.str.17], align 4
@.compoundliteral.25 = internal global %struct.clk_init_data { ptr @.str.23, ptr @ccu_div_ops, ptr @.compoundliteral.24, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"pll-periph\00", align 1
@.compoundliteral.27 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.28 = internal global %struct.clk_init_data { ptr @.str.26, ptr @ccu_nk_ops, ptr @.compoundliteral.27, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.29 = private unnamed_addr constant [11 x i8] c"pll-video1\00", align 1
@.compoundliteral.30 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.31 = internal global %struct.clk_init_data { ptr @.str.29, ptr @ccu_mult_ops, ptr @.compoundliteral.30, ptr null, ptr null, i8 1, i32 0 }, align 4
@cpu_predivs = internal constant [1 x %struct.ccu_mux_fixed_prediv] [%struct.ccu_mux_fixed_prediv { i8 3, i16 3 }], align 2
@.str.32 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@ccu_mux_ops = external dso_local constant %struct.clk_ops, align 4
@cpu_parents = internal constant [4 x ptr] [ptr @.str.34, ptr @.str.2, ptr @.str.5, ptr @.str.26], align 4
@.compoundliteral.33 = internal global %struct.clk_init_data { ptr @.str.32, ptr @ccu_mux_ops, ptr @cpu_parents, ptr null, ptr null, i8 4, i32 2052 }, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"osc32k\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.compoundliteral.36 = internal global [1 x ptr] [ptr @.str.32], align 4
@.compoundliteral.37 = internal global %struct.clk_init_data { ptr @.str.35, ptr @ccu_div_ops, ptr @.compoundliteral.36, ptr null, ptr null, i8 1, i32 0 }, align 4
@ahb_predivs = internal constant [1 x %struct.ccu_mux_fixed_prediv] [%struct.ccu_mux_fixed_prediv { i8 2, i16 2 }], align 2
@.str.38 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@ahb_parents = internal constant [3 x ptr] [ptr @.str.35, ptr @.str.32, ptr @.str.26], align 4
@.compoundliteral.39 = internal global %struct.clk_init_data { ptr @.str.38, ptr @ccu_div_ops, ptr @ahb_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@apb0_div_table = internal global [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@.str.40 = private unnamed_addr constant [5 x i8] c"apb0\00", align 1
@.compoundliteral.41 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.42 = internal global %struct.clk_init_data { ptr @.str.40, ptr @ccu_div_ops, ptr @.compoundliteral.41, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"apb1\00", align 1
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@apb1_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.26, ptr @.str.34], align 4
@.compoundliteral.44 = internal global %struct.clk_init_data { ptr @.str.43, ptr @ccu_mp_ops, ptr @apb1_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"axi-dram\00", align 1
@.compoundliteral.46 = internal global [1 x ptr] [ptr @.str.35], align 4
@.compoundliteral.47 = internal global %struct.clk_init_data { ptr @.str.45, ptr @ccu_gate_ops, ptr @.compoundliteral.46, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"ahb-otg\00", align 1
@.compoundliteral.49 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.50 = internal global %struct.clk_init_data { ptr @.str.48, ptr @ccu_gate_ops, ptr @.compoundliteral.49, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"ahb-ehci\00", align 1
@.compoundliteral.52 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.53 = internal global %struct.clk_init_data { ptr @.str.51, ptr @ccu_gate_ops, ptr @.compoundliteral.52, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.54 = private unnamed_addr constant [9 x i8] c"ahb-ohci\00", align 1
@.compoundliteral.55 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.56 = internal global %struct.clk_init_data { ptr @.str.54, ptr @ccu_gate_ops, ptr @.compoundliteral.55, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.57 = private unnamed_addr constant [7 x i8] c"ahb-ss\00", align 1
@.compoundliteral.58 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.59 = internal global %struct.clk_init_data { ptr @.str.57, ptr @ccu_gate_ops, ptr @.compoundliteral.58, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.60 = private unnamed_addr constant [8 x i8] c"ahb-dma\00", align 1
@.compoundliteral.61 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.62 = internal global %struct.clk_init_data { ptr @.str.60, ptr @ccu_gate_ops, ptr @.compoundliteral.61, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.63 = private unnamed_addr constant [9 x i8] c"ahb-bist\00", align 1
@.compoundliteral.64 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.65 = internal global %struct.clk_init_data { ptr @.str.63, ptr @ccu_gate_ops, ptr @.compoundliteral.64, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.66 = private unnamed_addr constant [9 x i8] c"ahb-mmc0\00", align 1
@.compoundliteral.67 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.68 = internal global %struct.clk_init_data { ptr @.str.66, ptr @ccu_gate_ops, ptr @.compoundliteral.67, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.69 = private unnamed_addr constant [9 x i8] c"ahb-mmc1\00", align 1
@.compoundliteral.70 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.71 = internal global %struct.clk_init_data { ptr @.str.69, ptr @ccu_gate_ops, ptr @.compoundliteral.70, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.72 = private unnamed_addr constant [9 x i8] c"ahb-mmc2\00", align 1
@.compoundliteral.73 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.74 = internal global %struct.clk_init_data { ptr @.str.72, ptr @ccu_gate_ops, ptr @.compoundliteral.73, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.75 = private unnamed_addr constant [9 x i8] c"ahb-nand\00", align 1
@.compoundliteral.76 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.77 = internal global %struct.clk_init_data { ptr @.str.75, ptr @ccu_gate_ops, ptr @.compoundliteral.76, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.78 = private unnamed_addr constant [10 x i8] c"ahb-sdram\00", align 1
@.compoundliteral.79 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.80 = internal global %struct.clk_init_data { ptr @.str.78, ptr @ccu_gate_ops, ptr @.compoundliteral.79, ptr null, ptr null, i8 1, i32 2048 }, align 4
@.str.81 = private unnamed_addr constant [9 x i8] c"ahb-emac\00", align 1
@.compoundliteral.82 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.83 = internal global %struct.clk_init_data { ptr @.str.81, ptr @ccu_gate_ops, ptr @.compoundliteral.82, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.84 = private unnamed_addr constant [7 x i8] c"ahb-ts\00", align 1
@.compoundliteral.85 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.86 = internal global %struct.clk_init_data { ptr @.str.84, ptr @ccu_gate_ops, ptr @.compoundliteral.85, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.87 = private unnamed_addr constant [9 x i8] c"ahb-spi0\00", align 1
@.compoundliteral.88 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.89 = internal global %struct.clk_init_data { ptr @.str.87, ptr @ccu_gate_ops, ptr @.compoundliteral.88, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.90 = private unnamed_addr constant [9 x i8] c"ahb-spi1\00", align 1
@.compoundliteral.91 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.92 = internal global %struct.clk_init_data { ptr @.str.90, ptr @ccu_gate_ops, ptr @.compoundliteral.91, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.93 = private unnamed_addr constant [9 x i8] c"ahb-spi2\00", align 1
@.compoundliteral.94 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.95 = internal global %struct.clk_init_data { ptr @.str.93, ptr @ccu_gate_ops, ptr @.compoundliteral.94, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.96 = private unnamed_addr constant [8 x i8] c"ahb-gps\00", align 1
@.compoundliteral.97 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.98 = internal global %struct.clk_init_data { ptr @.str.96, ptr @ccu_gate_ops, ptr @.compoundliteral.97, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.99 = private unnamed_addr constant [12 x i8] c"ahb-hstimer\00", align 1
@.compoundliteral.100 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.101 = internal global %struct.clk_init_data { ptr @.str.99, ptr @ccu_gate_ops, ptr @.compoundliteral.100, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.102 = private unnamed_addr constant [7 x i8] c"ahb-ve\00", align 1
@.compoundliteral.103 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.104 = internal global %struct.clk_init_data { ptr @.str.102, ptr @ccu_gate_ops, ptr @.compoundliteral.103, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.105 = private unnamed_addr constant [8 x i8] c"ahb-tve\00", align 1
@.compoundliteral.106 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.107 = internal global %struct.clk_init_data { ptr @.str.105, ptr @ccu_gate_ops, ptr @.compoundliteral.106, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.108 = private unnamed_addr constant [8 x i8] c"ahb-lcd\00", align 1
@.compoundliteral.109 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.110 = internal global %struct.clk_init_data { ptr @.str.108, ptr @ccu_gate_ops, ptr @.compoundliteral.109, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.111 = private unnamed_addr constant [8 x i8] c"ahb-csi\00", align 1
@.compoundliteral.112 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.113 = internal global %struct.clk_init_data { ptr @.str.111, ptr @ccu_gate_ops, ptr @.compoundliteral.112, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.114 = private unnamed_addr constant [9 x i8] c"ahb-hdmi\00", align 1
@.compoundliteral.115 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.116 = internal global %struct.clk_init_data { ptr @.str.114, ptr @ccu_gate_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.117 = private unnamed_addr constant [10 x i8] c"ahb-de-be\00", align 1
@.compoundliteral.118 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.119 = internal global %struct.clk_init_data { ptr @.str.117, ptr @ccu_gate_ops, ptr @.compoundliteral.118, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.120 = private unnamed_addr constant [10 x i8] c"ahb-de-fe\00", align 1
@.compoundliteral.121 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.122 = internal global %struct.clk_init_data { ptr @.str.120, ptr @ccu_gate_ops, ptr @.compoundliteral.121, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.123 = private unnamed_addr constant [8 x i8] c"ahb-iep\00", align 1
@.compoundliteral.124 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.125 = internal global %struct.clk_init_data { ptr @.str.123, ptr @ccu_gate_ops, ptr @.compoundliteral.124, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.126 = private unnamed_addr constant [8 x i8] c"ahb-gpu\00", align 1
@.compoundliteral.127 = internal global [1 x ptr] [ptr @.str.38], align 4
@.compoundliteral.128 = internal global %struct.clk_init_data { ptr @.str.126, ptr @ccu_gate_ops, ptr @.compoundliteral.127, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.129 = private unnamed_addr constant [11 x i8] c"apb0-codec\00", align 1
@.compoundliteral.130 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.131 = internal global %struct.clk_init_data { ptr @.str.129, ptr @ccu_gate_ops, ptr @.compoundliteral.130, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.132 = private unnamed_addr constant [11 x i8] c"apb0-spdif\00", align 1
@.compoundliteral.133 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.134 = internal global %struct.clk_init_data { ptr @.str.132, ptr @ccu_gate_ops, ptr @.compoundliteral.133, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.135 = private unnamed_addr constant [9 x i8] c"apb0-i2s\00", align 1
@.compoundliteral.136 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.137 = internal global %struct.clk_init_data { ptr @.str.135, ptr @ccu_gate_ops, ptr @.compoundliteral.136, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.138 = private unnamed_addr constant [9 x i8] c"apb0-pio\00", align 1
@.compoundliteral.139 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.140 = internal global %struct.clk_init_data { ptr @.str.138, ptr @ccu_gate_ops, ptr @.compoundliteral.139, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.141 = private unnamed_addr constant [8 x i8] c"apb0-ir\00", align 1
@.compoundliteral.142 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.143 = internal global %struct.clk_init_data { ptr @.str.141, ptr @ccu_gate_ops, ptr @.compoundliteral.142, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.144 = private unnamed_addr constant [12 x i8] c"apb0-keypad\00", align 1
@.compoundliteral.145 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.146 = internal global %struct.clk_init_data { ptr @.str.144, ptr @ccu_gate_ops, ptr @.compoundliteral.145, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.147 = private unnamed_addr constant [10 x i8] c"apb1-i2c0\00", align 1
@.compoundliteral.148 = internal global [1 x ptr] [ptr @.str.43], align 4
@.compoundliteral.149 = internal global %struct.clk_init_data { ptr @.str.147, ptr @ccu_gate_ops, ptr @.compoundliteral.148, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.150 = private unnamed_addr constant [10 x i8] c"apb1-i2c1\00", align 1
@.compoundliteral.151 = internal global [1 x ptr] [ptr @.str.43], align 4
@.compoundliteral.152 = internal global %struct.clk_init_data { ptr @.str.150, ptr @ccu_gate_ops, ptr @.compoundliteral.151, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.153 = private unnamed_addr constant [10 x i8] c"apb1-i2c2\00", align 1
@.compoundliteral.154 = internal global [1 x ptr] [ptr @.str.43], align 4
@.compoundliteral.155 = internal global %struct.clk_init_data { ptr @.str.153, ptr @ccu_gate_ops, ptr @.compoundliteral.154, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.156 = private unnamed_addr constant [11 x i8] c"apb1-uart0\00", align 1
@.compoundliteral.157 = internal global [1 x ptr] [ptr @.str.43], align 4
@.compoundliteral.158 = internal global %struct.clk_init_data { ptr @.str.156, ptr @ccu_gate_ops, ptr @.compoundliteral.157, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.159 = private unnamed_addr constant [11 x i8] c"apb1-uart1\00", align 1
@.compoundliteral.160 = internal global [1 x ptr] [ptr @.str.43], align 4
@.compoundliteral.161 = internal global %struct.clk_init_data { ptr @.str.159, ptr @ccu_gate_ops, ptr @.compoundliteral.160, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.162 = private unnamed_addr constant [11 x i8] c"apb1-uart2\00", align 1
@.compoundliteral.163 = internal global [1 x ptr] [ptr @.str.43], align 4
@.compoundliteral.164 = internal global %struct.clk_init_data { ptr @.str.162, ptr @ccu_gate_ops, ptr @.compoundliteral.163, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.165 = private unnamed_addr constant [11 x i8] c"apb1-uart3\00", align 1
@.compoundliteral.166 = internal global [1 x ptr] [ptr @.str.43], align 4
@.compoundliteral.167 = internal global %struct.clk_init_data { ptr @.str.165, ptr @ccu_gate_ops, ptr @.compoundliteral.166, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.168 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@mod0_default_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.26, ptr @.str.23], align 4
@.compoundliteral.169 = internal global %struct.clk_init_data { ptr @.str.168, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.170 = private unnamed_addr constant [5 x i8] c"mmc0\00", align 1
@.compoundliteral.171 = internal global %struct.clk_init_data { ptr @.str.170, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.172 = private unnamed_addr constant [5 x i8] c"mmc1\00", align 1
@.compoundliteral.173 = internal global %struct.clk_init_data { ptr @.str.172, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.174 = private unnamed_addr constant [5 x i8] c"mmc2\00", align 1
@.compoundliteral.175 = internal global %struct.clk_init_data { ptr @.str.174, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.176 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.compoundliteral.177 = internal global %struct.clk_init_data { ptr @.str.176, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.178 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.compoundliteral.179 = internal global %struct.clk_init_data { ptr @.str.178, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.180 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.compoundliteral.181 = internal global %struct.clk_init_data { ptr @.str.180, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.182 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.compoundliteral.183 = internal global %struct.clk_init_data { ptr @.str.182, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.184 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@.compoundliteral.185 = internal global %struct.clk_init_data { ptr @.str.184, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.186 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.compoundliteral.187 = internal global %struct.clk_init_data { ptr @.str.186, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.188 = private unnamed_addr constant [4 x i8] c"i2s\00", align 1
@i2s_parents = internal constant [4 x ptr] [ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193], align 4
@.compoundliteral.189 = internal global %struct.clk_init_data { ptr @.str.188, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.190 = private unnamed_addr constant [13 x i8] c"pll-audio-8x\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"pll-audio-4x\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"pll-audio-2x\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"pll-audio\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@spdif_parents = internal constant [4 x ptr] [ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193], align 4
@.compoundliteral.195 = internal global %struct.clk_init_data { ptr @.str.194, ptr @ccu_mux_ops, ptr @spdif_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@keypad_table = internal constant [2 x i8] c"\00\02", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"keypad\00", align 1
@keypad_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.198], align 4
@.compoundliteral.197 = internal global %struct.clk_init_data { ptr @.str.196, ptr @ccu_mp_ops, ptr @keypad_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.198 = private unnamed_addr constant [5 x i8] c"losc\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"usb-ohci\00", align 1
@.compoundliteral.200 = internal global [1 x ptr] [ptr @.str.26], align 4
@.compoundliteral.201 = internal global %struct.clk_init_data { ptr @.str.199, ptr @ccu_gate_ops, ptr @.compoundliteral.200, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.202 = private unnamed_addr constant [9 x i8] c"usb-phy0\00", align 1
@.compoundliteral.203 = internal global [1 x ptr] [ptr @.str.26], align 4
@.compoundliteral.204 = internal global %struct.clk_init_data { ptr @.str.202, ptr @ccu_gate_ops, ptr @.compoundliteral.203, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.205 = private unnamed_addr constant [9 x i8] c"usb-phy1\00", align 1
@.compoundliteral.206 = internal global [1 x ptr] [ptr @.str.26], align 4
@.compoundliteral.207 = internal global %struct.clk_init_data { ptr @.str.205, ptr @ccu_gate_ops, ptr @.compoundliteral.206, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.208 = private unnamed_addr constant [4 x i8] c"gps\00", align 1
@gps_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.26, ptr @.str.29, ptr @.str.14], align 4
@.compoundliteral.209 = internal global %struct.clk_init_data { ptr @.str.208, ptr @ccu_div_ops, ptr @gps_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.210 = private unnamed_addr constant [8 x i8] c"dram-ve\00", align 1
@.compoundliteral.211 = internal global [1 x ptr] [ptr @.str.20], align 4
@.compoundliteral.212 = internal global %struct.clk_init_data { ptr @.str.210, ptr @ccu_gate_ops, ptr @.compoundliteral.211, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.213 = private unnamed_addr constant [9 x i8] c"dram-csi\00", align 1
@.compoundliteral.214 = internal global [1 x ptr] [ptr @.str.20], align 4
@.compoundliteral.215 = internal global %struct.clk_init_data { ptr @.str.213, ptr @ccu_gate_ops, ptr @.compoundliteral.214, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.216 = private unnamed_addr constant [8 x i8] c"dram-ts\00", align 1
@.compoundliteral.217 = internal global [1 x ptr] [ptr @.str.20], align 4
@.compoundliteral.218 = internal global %struct.clk_init_data { ptr @.str.216, ptr @ccu_gate_ops, ptr @.compoundliteral.217, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.219 = private unnamed_addr constant [9 x i8] c"dram-tve\00", align 1
@.compoundliteral.220 = internal global [1 x ptr] [ptr @.str.20], align 4
@.compoundliteral.221 = internal global %struct.clk_init_data { ptr @.str.219, ptr @ccu_gate_ops, ptr @.compoundliteral.220, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.222 = private unnamed_addr constant [11 x i8] c"dram-de-fe\00", align 1
@.compoundliteral.223 = internal global [1 x ptr] [ptr @.str.20], align 4
@.compoundliteral.224 = internal global %struct.clk_init_data { ptr @.str.222, ptr @ccu_gate_ops, ptr @.compoundliteral.223, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.225 = private unnamed_addr constant [11 x i8] c"dram-de-be\00", align 1
@.compoundliteral.226 = internal global [1 x ptr] [ptr @.str.20], align 4
@.compoundliteral.227 = internal global %struct.clk_init_data { ptr @.str.225, ptr @ccu_gate_ops, ptr @.compoundliteral.226, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.228 = private unnamed_addr constant [9 x i8] c"dram-ace\00", align 1
@.compoundliteral.229 = internal global [1 x ptr] [ptr @.str.20], align 4
@.compoundliteral.230 = internal global %struct.clk_init_data { ptr @.str.228, ptr @ccu_gate_ops, ptr @.compoundliteral.229, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.231 = private unnamed_addr constant [9 x i8] c"dram-iep\00", align 1
@.compoundliteral.232 = internal global [1 x ptr] [ptr @.str.20], align 4
@.compoundliteral.233 = internal global %struct.clk_init_data { ptr @.str.231, ptr @ccu_gate_ops, ptr @.compoundliteral.232, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.234 = private unnamed_addr constant [6 x i8] c"de-be\00", align 1
@de_parents = internal constant [3 x ptr] [ptr @.str.11, ptr @.str.29, ptr @.str.23], align 4
@.compoundliteral.235 = internal global %struct.clk_init_data { ptr @.str.234, ptr @ccu_div_ops, ptr @de_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.236 = private unnamed_addr constant [6 x i8] c"de-fe\00", align 1
@.compoundliteral.237 = internal global %struct.clk_init_data { ptr @.str.236, ptr @ccu_div_ops, ptr @de_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.238 = private unnamed_addr constant [14 x i8] c"tcon-ch0-sclk\00", align 1
@tcon_parents = internal constant [4 x ptr] [ptr @.str.11, ptr @.str.29, ptr @.str.240, ptr @.str.241], align 4
@.compoundliteral.239 = internal global %struct.clk_init_data { ptr @.str.238, ptr @ccu_mux_ops, ptr @tcon_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.240 = private unnamed_addr constant [14 x i8] c"pll-video0-2x\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"pll-video1-2x\00", align 1
@.str.242 = private unnamed_addr constant [15 x i8] c"tcon-ch1-sclk2\00", align 1
@.compoundliteral.243 = internal global %struct.clk_init_data { ptr @.str.242, ptr @ccu_div_ops, ptr @tcon_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.244 = private unnamed_addr constant [15 x i8] c"tcon-ch1-sclk1\00", align 1
@.compoundliteral.245 = internal global [1 x ptr] [ptr @.str.242], align 4
@.compoundliteral.246 = internal global %struct.clk_init_data { ptr @.str.244, ptr @ccu_div_ops, ptr @.compoundliteral.245, ptr null, ptr null, i8 1, i32 4 }, align 4
@csi_table = internal constant [5 x i8] c"\00\01\02\05\06", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@csi_parents = internal constant [5 x ptr] [ptr @.str.2, ptr @.str.11, ptr @.str.29, ptr @.str.240, ptr @.str.241], align 4
@.compoundliteral.248 = internal global %struct.clk_init_data { ptr @.str.247, ptr @ccu_div_ops, ptr @csi_parents, ptr null, ptr null, i8 5, i32 0 }, align 4
@.str.249 = private unnamed_addr constant [3 x i8] c"ve\00", align 1
@.compoundliteral.250 = internal global [1 x ptr] [ptr @.str.14], align 4
@.compoundliteral.251 = internal global %struct.clk_init_data { ptr @.str.249, ptr @ccu_gate_ops, ptr @.compoundliteral.250, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.252 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.compoundliteral.253 = internal global [1 x ptr] [ptr @.str.193], align 4
@.compoundliteral.254 = internal global %struct.clk_init_data { ptr @.str.252, ptr @ccu_gate_ops, ptr @.compoundliteral.253, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.255 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.compoundliteral.256 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.257 = internal global %struct.clk_init_data { ptr @.str.255, ptr @ccu_gate_ops, ptr @.compoundliteral.256, ptr null, ptr null, i8 1, i32 0 }, align 4
@hdmi_table = internal constant [2 x i8] c"\00\02", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@hdmi_parents = internal constant [2 x ptr] [ptr @.str.11, ptr @.str.240], align 4
@.compoundliteral.259 = internal global %struct.clk_init_data { ptr @.str.258, ptr @ccu_div_ops, ptr @hdmi_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.260 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@gpu_parents = internal constant [5 x ptr] [ptr @.str.11, ptr @.str.14, ptr @.str.23, ptr @.str.29, ptr @.str.241], align 4
@.compoundliteral.261 = internal global %struct.clk_init_data { ptr @.str.260, ptr @ccu_div_ops, ptr @gpu_parents, ptr null, ptr null, i8 5, i32 0 }, align 4
@.str.262 = private unnamed_addr constant [5 x i8] c"mbus\00", align 1
@mbus_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.26, ptr @.str.20], align 4
@.compoundliteral.263 = internal global %struct.clk_init_data { ptr @.str.262, ptr @ccu_mp_ops, ptr @mbus_parents, ptr null, ptr null, i8 3, i32 2048 }, align 4
@.str.264 = private unnamed_addr constant [4 x i8] c"iep\00", align 1
@.compoundliteral.265 = internal global [1 x ptr] [ptr @.str.234], align 4
@.compoundliteral.266 = internal global %struct.clk_init_data { ptr @.str.264, ptr @ccu_gate_ops, ptr @.compoundliteral.265, ptr null, ptr null, i8 1, i32 0 }, align 4
@pll_audio_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.268 }, i32 1, i32 1 }, align 4
@pll_audio_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.269 }, i32 1, i32 2 }, align 4
@pll_audio_4x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.270 }, i32 1, i32 1 }, align 4
@pll_audio_8x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.271 }, i32 2, i32 1 }, align 4
@pll_video0_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.273 }, i32 2, i32 1 }, align 4
@pll_video1_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.275 }, i32 2, i32 1 }, align 4
@sun5i_a10s_hw_clks = internal global { i32, [101 x ptr] } { i32 101, [101 x ptr] [ptr null, ptr getelementptr (i8, ptr @hosc_clk, i64 24), ptr getelementptr (i8, ptr @pll_core_clk, i64 88), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104), ptr @pll_audio_clk, ptr @pll_audio_2x_clk, ptr @pll_audio_4x_clk, ptr @pll_audio_8x_clk, ptr getelementptr (i8, ptr @pll_video0_clk, i64 76), ptr @pll_video0_2x_clk, ptr getelementptr (i8, ptr @pll_ve_clk, i64 88), ptr getelementptr (i8, ptr @pll_ddr_base_clk, i64 48), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 68), ptr getelementptr (i8, ptr @pll_ddr_other_clk, i64 68), ptr getelementptr (i8, ptr @pll_periph_clk, i64 48), ptr getelementptr (i8, ptr @pll_video1_clk, i64 76), ptr @pll_video1_2x_clk, ptr getelementptr (i8, ptr @cpu_clk, i64 48), ptr getelementptr (i8, ptr @axi_clk, i64 68), ptr getelementptr (i8, ptr @ahb_clk, i64 68), ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb1_clk, i64 92), ptr getelementptr (i8, ptr @axi_dram_clk, i64 24), ptr getelementptr (i8, ptr @ahb_otg_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ehci_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ohci_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ss_clk, i64 24), ptr getelementptr (i8, ptr @ahb_dma_clk, i64 24), ptr getelementptr (i8, ptr @ahb_bist_clk, i64 24), ptr getelementptr (i8, ptr @ahb_mmc0_clk, i64 24), ptr getelementptr (i8, ptr @ahb_mmc1_clk, i64 24), ptr getelementptr (i8, ptr @ahb_mmc2_clk, i64 24), ptr getelementptr (i8, ptr @ahb_nand_clk, i64 24), ptr getelementptr (i8, ptr @ahb_sdram_clk, i64 24), ptr getelementptr (i8, ptr @ahb_emac_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ts_clk, i64 24), ptr getelementptr (i8, ptr @ahb_spi0_clk, i64 24), ptr getelementptr (i8, ptr @ahb_spi1_clk, i64 24), ptr getelementptr (i8, ptr @ahb_spi2_clk, i64 24), ptr getelementptr (i8, ptr @ahb_gps_clk, i64 24), ptr getelementptr (i8, ptr @ahb_hstimer_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ve_clk, i64 24), ptr getelementptr (i8, ptr @ahb_tve_clk, i64 24), ptr getelementptr (i8, ptr @ahb_lcd_clk, i64 24), ptr getelementptr (i8, ptr @ahb_csi_clk, i64 24), ptr getelementptr (i8, ptr @ahb_hdmi_clk, i64 24), ptr getelementptr (i8, ptr @ahb_de_be_clk, i64 24), ptr getelementptr (i8, ptr @ahb_de_fe_clk, i64 24), ptr getelementptr (i8, ptr @ahb_iep_clk, i64 24), ptr getelementptr (i8, ptr @ahb_gpu_clk, i64 24), ptr getelementptr (i8, ptr @apb0_codec_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb0_i2s_clk, i64 24), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 24), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 24), ptr getelementptr (i8, ptr @apb0_keypad_clk, i64 24), ptr getelementptr (i8, ptr @apb1_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @apb1_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @apb1_i2c2_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart0_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart1_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart2_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart3_clk, i64 24), ptr getelementptr (i8, ptr @nand_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_clk, i64 92), ptr getelementptr (i8, ptr @mmc1_clk, i64 92), ptr getelementptr (i8, ptr @mmc2_clk, i64 92), ptr getelementptr (i8, ptr @ts_clk, i64 92), ptr getelementptr (i8, ptr @ss_clk, i64 92), ptr getelementptr (i8, ptr @spi0_clk, i64 92), ptr getelementptr (i8, ptr @spi1_clk, i64 92), ptr getelementptr (i8, ptr @spi2_clk, i64 92), ptr getelementptr (i8, ptr @ir_clk, i64 92), ptr getelementptr (i8, ptr @i2s_clk, i64 48), ptr null, ptr getelementptr (i8, ptr @keypad_clk, i64 92), ptr getelementptr (i8, ptr @usb_ohci_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 24), ptr getelementptr (i8, ptr @gps_clk, i64 68), ptr getelementptr (i8, ptr @dram_ve_clk, i64 24), ptr getelementptr (i8, ptr @dram_csi_clk, i64 24), ptr getelementptr (i8, ptr @dram_ts_clk, i64 24), ptr getelementptr (i8, ptr @dram_tve_clk, i64 24), ptr getelementptr (i8, ptr @dram_de_fe_clk, i64 24), ptr getelementptr (i8, ptr @dram_de_be_clk, i64 24), ptr getelementptr (i8, ptr @dram_ace_clk, i64 24), ptr getelementptr (i8, ptr @dram_iep_clk, i64 24), ptr getelementptr (i8, ptr @de_be_clk, i64 68), ptr getelementptr (i8, ptr @de_fe_clk, i64 68), ptr getelementptr (i8, ptr @tcon_ch0_clk, i64 48), ptr getelementptr (i8, ptr @tcon_ch1_sclk2_clk, i64 68), ptr getelementptr (i8, ptr @tcon_ch1_sclk1_clk, i64 68), ptr getelementptr (i8, ptr @csi_clk, i64 68), ptr getelementptr (i8, ptr @ve_clk, i64 24), ptr getelementptr (i8, ptr @codec_clk, i64 24), ptr getelementptr (i8, ptr @avs_clk, i64 24), ptr getelementptr (i8, ptr @hdmi_clk, i64 68), ptr getelementptr (i8, ptr @gpu_clk, i64 68), ptr getelementptr (i8, ptr @mbus_clk, i64 92), ptr getelementptr (i8, ptr @iep_clk, i64 24)] }, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@clk_parent_pll_audio = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104)], align 4
@.compoundliteral.268 = internal global %struct.clk_init_data { ptr @.str.193, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.269 = internal global %struct.clk_init_data { ptr @.str.192, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.270 = internal global %struct.clk_init_data { ptr @.str.191, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.271 = internal global %struct.clk_init_data { ptr @.str.190, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.272 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_video0_clk, i64 76)], align 4
@.compoundliteral.273 = internal global %struct.clk_init_data { ptr @.str.240, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.272, i8 1, i32 4 }, align 4
@.compoundliteral.274 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_video1_clk, i64 76)], align 4
@.compoundliteral.275 = internal global %struct.clk_init_data { ptr @.str.241, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.274, i8 1, i32 4 }, align 4
@sun5i_a13_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun5i_a10s_ccu_clks, i32 94, ptr @sun5i_a13_hw_clks, ptr @sun5i_a10s_ccu_resets, i32 11 }, align 4
@sun5i_a13_hw_clks = internal global { i32, [101 x ptr] } { i32 101, [101 x ptr] [ptr null, ptr getelementptr (i8, ptr @hosc_clk, i64 24), ptr getelementptr (i8, ptr @pll_core_clk, i64 88), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104), ptr @pll_audio_clk, ptr @pll_audio_2x_clk, ptr @pll_audio_4x_clk, ptr @pll_audio_8x_clk, ptr getelementptr (i8, ptr @pll_video0_clk, i64 76), ptr @pll_video0_2x_clk, ptr getelementptr (i8, ptr @pll_ve_clk, i64 88), ptr getelementptr (i8, ptr @pll_ddr_base_clk, i64 48), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 68), ptr getelementptr (i8, ptr @pll_ddr_other_clk, i64 68), ptr getelementptr (i8, ptr @pll_periph_clk, i64 48), ptr getelementptr (i8, ptr @pll_video1_clk, i64 76), ptr @pll_video1_2x_clk, ptr getelementptr (i8, ptr @cpu_clk, i64 48), ptr getelementptr (i8, ptr @axi_clk, i64 68), ptr getelementptr (i8, ptr @ahb_clk, i64 68), ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb1_clk, i64 92), ptr getelementptr (i8, ptr @axi_dram_clk, i64 24), ptr getelementptr (i8, ptr @ahb_otg_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ehci_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ohci_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ss_clk, i64 24), ptr getelementptr (i8, ptr @ahb_dma_clk, i64 24), ptr getelementptr (i8, ptr @ahb_bist_clk, i64 24), ptr getelementptr (i8, ptr @ahb_mmc0_clk, i64 24), ptr getelementptr (i8, ptr @ahb_mmc1_clk, i64 24), ptr getelementptr (i8, ptr @ahb_mmc2_clk, i64 24), ptr getelementptr (i8, ptr @ahb_nand_clk, i64 24), ptr getelementptr (i8, ptr @ahb_sdram_clk, i64 24), ptr getelementptr (i8, ptr @ahb_emac_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @ahb_spi0_clk, i64 24), ptr getelementptr (i8, ptr @ahb_spi1_clk, i64 24), ptr getelementptr (i8, ptr @ahb_spi2_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @ahb_hstimer_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ve_clk, i64 24), ptr getelementptr (i8, ptr @ahb_tve_clk, i64 24), ptr getelementptr (i8, ptr @ahb_lcd_clk, i64 24), ptr getelementptr (i8, ptr @ahb_csi_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @ahb_de_be_clk, i64 24), ptr getelementptr (i8, ptr @ahb_de_fe_clk, i64 24), ptr getelementptr (i8, ptr @ahb_iep_clk, i64 24), ptr getelementptr (i8, ptr @ahb_gpu_clk, i64 24), ptr getelementptr (i8, ptr @apb0_codec_clk, i64 24), ptr null, ptr null, ptr getelementptr (i8, ptr @apb0_pio_clk, i64 24), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb1_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @apb1_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @apb1_i2c2_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart0_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart1_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart2_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart3_clk, i64 24), ptr getelementptr (i8, ptr @nand_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_clk, i64 92), ptr getelementptr (i8, ptr @mmc1_clk, i64 92), ptr getelementptr (i8, ptr @mmc2_clk, i64 92), ptr null, ptr getelementptr (i8, ptr @ss_clk, i64 92), ptr getelementptr (i8, ptr @spi0_clk, i64 92), ptr getelementptr (i8, ptr @spi1_clk, i64 92), ptr getelementptr (i8, ptr @spi2_clk, i64 92), ptr getelementptr (i8, ptr @ir_clk, i64 92), ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @usb_ohci_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @dram_ve_clk, i64 24), ptr getelementptr (i8, ptr @dram_csi_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @dram_tve_clk, i64 24), ptr getelementptr (i8, ptr @dram_de_fe_clk, i64 24), ptr getelementptr (i8, ptr @dram_de_be_clk, i64 24), ptr getelementptr (i8, ptr @dram_ace_clk, i64 24), ptr getelementptr (i8, ptr @dram_iep_clk, i64 24), ptr getelementptr (i8, ptr @de_be_clk, i64 68), ptr getelementptr (i8, ptr @de_fe_clk, i64 68), ptr getelementptr (i8, ptr @tcon_ch0_clk, i64 48), ptr getelementptr (i8, ptr @tcon_ch1_sclk2_clk, i64 68), ptr getelementptr (i8, ptr @tcon_ch1_sclk1_clk, i64 68), ptr getelementptr (i8, ptr @csi_clk, i64 68), ptr getelementptr (i8, ptr @ve_clk, i64 24), ptr getelementptr (i8, ptr @codec_clk, i64 24), ptr getelementptr (i8, ptr @avs_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @gpu_clk, i64 68), ptr getelementptr (i8, ptr @mbus_clk, i64 92), ptr getelementptr (i8, ptr @iep_clk, i64 24)] }, align 4
@sun5i_gr8_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun5i_a10s_ccu_clks, i32 94, ptr @sun5i_gr8_hw_clks, ptr @sun5i_a10s_ccu_resets, i32 11 }, align 4
@sun5i_gr8_hw_clks = internal global { i32, [101 x ptr] } { i32 101, [101 x ptr] [ptr null, ptr getelementptr (i8, ptr @hosc_clk, i64 24), ptr getelementptr (i8, ptr @pll_core_clk, i64 88), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104), ptr @pll_audio_clk, ptr @pll_audio_2x_clk, ptr @pll_audio_4x_clk, ptr @pll_audio_8x_clk, ptr getelementptr (i8, ptr @pll_video0_clk, i64 76), ptr @pll_video0_2x_clk, ptr getelementptr (i8, ptr @pll_ve_clk, i64 88), ptr getelementptr (i8, ptr @pll_ddr_base_clk, i64 48), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 68), ptr getelementptr (i8, ptr @pll_ddr_other_clk, i64 68), ptr getelementptr (i8, ptr @pll_periph_clk, i64 48), ptr getelementptr (i8, ptr @pll_video1_clk, i64 76), ptr @pll_video1_2x_clk, ptr getelementptr (i8, ptr @cpu_clk, i64 48), ptr getelementptr (i8, ptr @axi_clk, i64 68), ptr getelementptr (i8, ptr @ahb_clk, i64 68), ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb1_clk, i64 92), ptr getelementptr (i8, ptr @axi_dram_clk, i64 24), ptr getelementptr (i8, ptr @ahb_otg_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ehci_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ohci_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ss_clk, i64 24), ptr getelementptr (i8, ptr @ahb_dma_clk, i64 24), ptr getelementptr (i8, ptr @ahb_bist_clk, i64 24), ptr getelementptr (i8, ptr @ahb_mmc0_clk, i64 24), ptr getelementptr (i8, ptr @ahb_mmc1_clk, i64 24), ptr getelementptr (i8, ptr @ahb_mmc2_clk, i64 24), ptr getelementptr (i8, ptr @ahb_nand_clk, i64 24), ptr getelementptr (i8, ptr @ahb_sdram_clk, i64 24), ptr getelementptr (i8, ptr @ahb_emac_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ts_clk, i64 24), ptr getelementptr (i8, ptr @ahb_spi0_clk, i64 24), ptr getelementptr (i8, ptr @ahb_spi1_clk, i64 24), ptr getelementptr (i8, ptr @ahb_spi2_clk, i64 24), ptr getelementptr (i8, ptr @ahb_gps_clk, i64 24), ptr getelementptr (i8, ptr @ahb_hstimer_clk, i64 24), ptr getelementptr (i8, ptr @ahb_ve_clk, i64 24), ptr getelementptr (i8, ptr @ahb_tve_clk, i64 24), ptr getelementptr (i8, ptr @ahb_lcd_clk, i64 24), ptr getelementptr (i8, ptr @ahb_csi_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @ahb_de_be_clk, i64 24), ptr getelementptr (i8, ptr @ahb_de_fe_clk, i64 24), ptr getelementptr (i8, ptr @ahb_iep_clk, i64 24), ptr getelementptr (i8, ptr @ahb_gpu_clk, i64 24), ptr getelementptr (i8, ptr @apb0_codec_clk, i64 24), ptr getelementptr (i8, ptr @apb0_spdif_clk, i64 24), ptr getelementptr (i8, ptr @apb0_i2s_clk, i64 24), ptr getelementptr (i8, ptr @apb0_pio_clk, i64 24), ptr getelementptr (i8, ptr @apb0_ir_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @apb1_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @apb1_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @apb1_i2c2_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart0_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart1_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart2_clk, i64 24), ptr getelementptr (i8, ptr @apb1_uart3_clk, i64 24), ptr getelementptr (i8, ptr @nand_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_clk, i64 92), ptr getelementptr (i8, ptr @mmc1_clk, i64 92), ptr getelementptr (i8, ptr @mmc2_clk, i64 92), ptr getelementptr (i8, ptr @ts_clk, i64 92), ptr getelementptr (i8, ptr @ss_clk, i64 92), ptr getelementptr (i8, ptr @spi0_clk, i64 92), ptr getelementptr (i8, ptr @spi1_clk, i64 92), ptr getelementptr (i8, ptr @spi2_clk, i64 92), ptr getelementptr (i8, ptr @ir_clk, i64 92), ptr getelementptr (i8, ptr @i2s_clk, i64 48), ptr getelementptr (i8, ptr @spdif_clk, i64 48), ptr null, ptr getelementptr (i8, ptr @usb_ohci_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 24), ptr getelementptr (i8, ptr @gps_clk, i64 68), ptr getelementptr (i8, ptr @dram_ve_clk, i64 24), ptr getelementptr (i8, ptr @dram_csi_clk, i64 24), ptr getelementptr (i8, ptr @dram_ts_clk, i64 24), ptr getelementptr (i8, ptr @dram_tve_clk, i64 24), ptr getelementptr (i8, ptr @dram_de_fe_clk, i64 24), ptr getelementptr (i8, ptr @dram_de_be_clk, i64 24), ptr getelementptr (i8, ptr @dram_ace_clk, i64 24), ptr getelementptr (i8, ptr @dram_iep_clk, i64 24), ptr getelementptr (i8, ptr @de_be_clk, i64 68), ptr getelementptr (i8, ptr @de_fe_clk, i64 68), ptr getelementptr (i8, ptr @tcon_ch0_clk, i64 48), ptr getelementptr (i8, ptr @tcon_ch1_sclk2_clk, i64 68), ptr getelementptr (i8, ptr @tcon_ch1_sclk1_clk, i64 68), ptr getelementptr (i8, ptr @csi_clk, i64 68), ptr getelementptr (i8, ptr @ve_clk, i64 24), ptr getelementptr (i8, ptr @codec_clk, i64 24), ptr getelementptr (i8, ptr @avs_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @gpu_clk, i64 68), ptr getelementptr (i8, ptr @mbus_clk, i64 92), ptr getelementptr (i8, ptr @iep_clk, i64 24)] }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_sun5i_a10s_ccu, ptr @__of_table_sun5i_a13_ccu, ptr @__of_table_sun5i_gr8_ccu], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun5i_a10s_ccu_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sun5i_ccu_init(ptr noundef %0, ptr noundef nonnull @sun5i_a10s_ccu_desc) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun5i_a13_ccu_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sun5i_ccu_init(ptr noundef %0, ptr noundef nonnull @sun5i_a13_ccu_desc) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun5i_gr8_ccu_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sun5i_ccu_init(ptr noundef %0, ptr noundef nonnull @sun5i_gr8_ccu_desc) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sun5i_ccu_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %6, %4 ], [ @.str.1, %2 ]
  %9 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %8) #4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #5
  br label %21

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %9, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %16 = and i32 %15, -1006632961
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #4, !srcloc !11
  %17 = getelementptr i8, ptr %9, i32 84
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %19 = and i32 %18, -193
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %20 = or i32 %19, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %20) #4, !srcloc !11
  tail call void @of_sunxi_ccu_probe(ptr noundef %0, ptr noundef %9, ptr noundef %1) #4
  br label %21

21:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2874327}
!9 = !{i64 2150621546}
!10 = !{i64 2150622419}
!11 = !{i64 2873909}
!12 = !{i64 2150622888}
!13 = !{i64 2150623744}
