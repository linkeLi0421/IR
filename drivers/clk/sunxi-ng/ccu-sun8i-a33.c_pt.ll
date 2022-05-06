; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun8i-a33.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun8i-a33.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_pll_nb = type { %struct.notifier_block, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ccu_nkmp = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_div_internal, i32, i32, %struct.ccu_common }
%struct.ccu_mult_internal = type { i8, i8, i8, i8, i8 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_mux_nb = type { %struct.notifier_block, ptr, ptr, i32, i8, i8 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_nm = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_frac_internal, %struct.ccu_sdm_internal, i32, i32, i32, %struct.ccu_common }
%struct.ccu_frac_internal = type { i32, i32, [2 x i32] }
%struct.ccu_sdm_internal = type { ptr, i32, i32, i32, i16 }
%struct.ccu_nkm = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_nk = type { i16, i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, i32, %struct.ccu_common }
%struct.ccu_mult = type { i32, i32, %struct.ccu_frac_internal, %struct.ccu_mult_internal, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_mux = type { i32, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_phase = type { i8, i8, %struct.ccu_common }
%struct.ccu_sdm_setting = type { i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ccu_mux_var_prediv = type { i8, i8, i8 }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_sun8i_a33_ccu__162_835_sun8i_a33_ccu_driver_init6 = internal global ptr @sun8i_a33_ccu_driver_init, section ".initcall6.init", align 4
@sun8i_a33_ccu_driver = internal global %struct.platform_driver { ptr @sun8i_a33_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun8i_a33_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun8i_a33_ccu_driver_exit = internal global ptr @sun8i_a33_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns163 = internal constant [34 x i8] c"sun8i_a33_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [54 x i8] c"sun8i_a33_ccu.file=drivers/clk/sunxi-ng/sun8i-a33-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [26 x i8] c"sun8i_a33_ccu.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"sun8i-a33-ccu\00", align 1
@sun8i_a33_ccu_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sun8i_a33_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_a33_ccu_clks, i32 95, ptr @sun8i_a33_hw_clks, ptr @sun8i_a33_ccu_resets, i32 40 }, align 4
@sun8i_a33_pll_cpu_nb = internal global %struct.ccu_pll_nb { %struct.notifier_block zeroinitializer, ptr getelementptr (i8, ptr @pll_cpux_clk, i64 68), i32 -2147483648, i32 268435456 }, align 4
@pll_cpux_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 4, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.277 } } }, align 4
@sun8i_a33_cpu_nb = internal global %struct.ccu_mux_nb { %struct.notifier_block zeroinitializer, ptr getelementptr (i8, ptr @cpux_clk, i64 28), ptr getelementptr (i8, ptr @cpux_clk, i64 4), i32 1, i8 1, i8 0 }, align 4
@sun8i_a33_ccu_clks = internal global [95 x ptr] [ptr getelementptr (i8, ptr @pll_cpux_clk, i64 68), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 84), ptr getelementptr (i8, ptr @pll_video_clk, i64 84), ptr getelementptr (i8, ptr @pll_ve_clk, i64 84), ptr getelementptr (i8, ptr @pll_ddr0_clk, i64 68), ptr getelementptr (i8, ptr @pll_periph_clk, i64 28), ptr getelementptr (i8, ptr @pll_gpu_clk, i64 84), ptr getelementptr (i8, ptr @pll_mipi_clk, i64 68), ptr getelementptr (i8, ptr @pll_hsic_clk, i64 84), ptr getelementptr (i8, ptr @pll_de_clk, i64 84), ptr getelementptr (i8, ptr @pll_ddr1_clk, i64 56), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 28), ptr getelementptr (i8, ptr @cpux_clk, i64 28), ptr getelementptr (i8, ptr @axi_clk, i64 48), ptr getelementptr (i8, ptr @ahb1_clk, i64 48), ptr getelementptr (i8, ptr @apb1_clk, i64 48), ptr getelementptr (i8, ptr @apb2_clk, i64 72), ptr getelementptr (i8, ptr @bus_mipi_dsi_clk, i64 4), ptr getelementptr (i8, ptr @bus_ss_clk, i64 4), ptr getelementptr (i8, ptr @bus_dma_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 4), ptr getelementptr (i8, ptr @bus_nand_clk, i64 4), ptr getelementptr (i8, ptr @bus_dram_clk, i64 4), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 4), ptr getelementptr (i8, ptr @bus_otg_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci_clk, i64 4), ptr getelementptr (i8, ptr @bus_ve_clk, i64 4), ptr getelementptr (i8, ptr @bus_lcd_clk, i64 4), ptr getelementptr (i8, ptr @bus_csi_clk, i64 4), ptr getelementptr (i8, ptr @bus_de_fe_clk, i64 4), ptr getelementptr (i8, ptr @bus_de_be_clk, i64 4), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 4), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 4), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 4), ptr getelementptr (i8, ptr @bus_drc_clk, i64 4), ptr getelementptr (i8, ptr @bus_sat_clk, i64 4), ptr getelementptr (i8, ptr @bus_codec_clk, i64 4), ptr getelementptr (i8, ptr @bus_pio_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart4_clk, i64 4), ptr getelementptr (i8, ptr @nand_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc0_output_clk, i64 4), ptr getelementptr (i8, ptr @mmc1_clk, i64 72), ptr getelementptr (i8, ptr @mmc1_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc1_output_clk, i64 4), ptr getelementptr (i8, ptr @mmc2_clk, i64 72), ptr getelementptr (i8, ptr @mmc2_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc2_output_clk, i64 4), ptr getelementptr (i8, ptr @ss_clk, i64 72), ptr getelementptr (i8, ptr @spi0_clk, i64 72), ptr getelementptr (i8, ptr @spi1_clk, i64 72), ptr getelementptr (i8, ptr @i2s0_clk, i64 28), ptr getelementptr (i8, ptr @i2s1_clk, i64 28), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 4), ptr getelementptr (i8, ptr @usb_hsic_clk, i64 4), ptr getelementptr (i8, ptr @usb_hsic_12M_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci_clk, i64 4), ptr getelementptr (i8, ptr @dram_clk, i64 48), ptr getelementptr (i8, ptr @dram_ve_clk, i64 4), ptr getelementptr (i8, ptr @dram_csi_clk, i64 4), ptr getelementptr (i8, ptr @dram_drc_clk, i64 4), ptr getelementptr (i8, ptr @dram_de_fe_clk, i64 4), ptr getelementptr (i8, ptr @dram_de_be_clk, i64 4), ptr getelementptr (i8, ptr @de_be_clk, i64 48), ptr getelementptr (i8, ptr @de_fe_clk, i64 48), ptr getelementptr (i8, ptr @lcd_ch0_clk, i64 28), ptr getelementptr (i8, ptr @lcd_ch1_clk, i64 48), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 48), ptr getelementptr (i8, ptr @csi_mclk_clk, i64 48), ptr getelementptr (i8, ptr @ve_clk, i64 48), ptr getelementptr (i8, ptr @ac_dig_clk, i64 4), ptr getelementptr (i8, ptr @ac_dig_4x_clk, i64 4), ptr getelementptr (i8, ptr @avs_clk, i64 4), ptr getelementptr (i8, ptr @mbus_clk, i64 48), ptr getelementptr (i8, ptr @dsi_sclk_clk, i64 48), ptr getelementptr (i8, ptr @dsi_dphy_clk, i64 48), ptr getelementptr (i8, ptr @drc_clk, i64 48), ptr getelementptr (i8, ptr @gpu_clk, i64 48), ptr getelementptr (i8, ptr @ats_clk, i64 48)], align 4
@sun8i_a33_ccu_resets = internal global [40 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 204, i32 1 }, %struct.ccu_reset_map { i16 204, i32 2 }, %struct.ccu_reset_map { i16 204, i32 4 }, %struct.ccu_reset_map { i16 252, i32 -2147483648 }, %struct.ccu_reset_map { i16 704, i32 2 }, %struct.ccu_reset_map { i16 704, i32 32 }, %struct.ccu_reset_map { i16 704, i32 64 }, %struct.ccu_reset_map { i16 704, i32 256 }, %struct.ccu_reset_map { i16 704, i32 512 }, %struct.ccu_reset_map { i16 704, i32 1024 }, %struct.ccu_reset_map { i16 704, i32 8192 }, %struct.ccu_reset_map { i16 704, i32 16384 }, %struct.ccu_reset_map { i16 704, i32 524288 }, %struct.ccu_reset_map { i16 704, i32 1048576 }, %struct.ccu_reset_map { i16 704, i32 2097152 }, %struct.ccu_reset_map { i16 704, i32 16777216 }, %struct.ccu_reset_map { i16 704, i32 67108864 }, %struct.ccu_reset_map { i16 704, i32 536870912 }, %struct.ccu_reset_map { i16 708, i32 1 }, %struct.ccu_reset_map { i16 708, i32 16 }, %struct.ccu_reset_map { i16 708, i32 256 }, %struct.ccu_reset_map { i16 708, i32 4096 }, %struct.ccu_reset_map { i16 708, i32 16384 }, %struct.ccu_reset_map { i16 708, i32 1048576 }, %struct.ccu_reset_map { i16 708, i32 2097152 }, %struct.ccu_reset_map { i16 708, i32 4194304 }, %struct.ccu_reset_map { i16 708, i32 33554432 }, %struct.ccu_reset_map { i16 708, i32 67108864 }, %struct.ccu_reset_map { i16 712, i32 1 }, %struct.ccu_reset_map { i16 720, i32 1 }, %struct.ccu_reset_map { i16 720, i32 4096 }, %struct.ccu_reset_map { i16 720, i32 8192 }, %struct.ccu_reset_map { i16 728, i32 1 }, %struct.ccu_reset_map { i16 728, i32 2 }, %struct.ccu_reset_map { i16 728, i32 4 }, %struct.ccu_reset_map { i16 728, i32 65536 }, %struct.ccu_reset_map { i16 728, i32 131072 }, %struct.ccu_reset_map { i16 728, i32 262144 }, %struct.ccu_reset_map { i16 728, i32 524288 }, %struct.ccu_reset_map { i16 728, i32 1048576 }], align 4
@pll_audio_base_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_sdm_internal { ptr @pll_audio_sdm_table, i32 2, i32 16777216, i32 -2147483648, i16 644 }, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 128, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 } } }, align 4
@pll_video_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 16, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 } } }, align 4
@pll_ve_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 24, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } } }, align 4
@pll_ddr0_clk = internal global %struct.ccu_nkm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, i32 0, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 } } }, align 4
@pll_periph_clk = internal global %struct.ccu_nk { i16 0, i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, i32 2, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 8, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, align 4
@pll_gpu_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 56, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 } } }, align 4
@pll_mipi_clk = internal global %struct.ccu_nkm { i32 -2134900736, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 4, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, i32 0, %struct.ccu_common { ptr null, i16 64, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, align 4
@pll_hsic_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 68, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 } } }, align 4
@pll_de_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 72, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 } } }, align 4
@pll_ddr1_clk = internal global %struct.ccu_mult { i32 -2147483648, i32 268435456, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_mult_internal { i8 0, i8 8, i8 6, i8 12, i8 0 }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 76, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 } } }, align 4
@pll_ddr_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 16, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 248, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 } } }, align 4
@cpux_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 } } }, align 4
@axi_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.39 } }, i32 0 }, align 4
@ahb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 12, i8 2, ptr null, ptr null, i8 0, ptr @ahb1_predivs, i8 1 }, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 } }, i32 0 }, align 4
@apb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 0, i32 0, ptr @apb1_div_table }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 } }, i32 0 }, align 4
@apb2_clk = internal global %struct.ccu_mp { i32 0, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 88, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 } } }, align 4
@bus_mipi_dsi_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 } } }, align 4
@bus_ss_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 } } }, align 4
@bus_dma_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.55 } } }, align 4
@bus_mmc0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.58 } } }, align 4
@bus_mmc1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 } } }, align 4
@bus_mmc2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 } } }, align 4
@bus_nand_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 } } }, align 4
@bus_dram_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.70 } } }, align 4
@bus_hstimer_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 } } }, align 4
@bus_spi0_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.76 } } }, align 4
@bus_spi1_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 } } }, align 4
@bus_otg_clk = internal global %struct.ccu_gate { i32 16777216, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 } } }, align 4
@bus_ehci_clk = internal global %struct.ccu_gate { i32 67108864, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 } } }, align 4
@bus_ohci_clk = internal global %struct.ccu_gate { i32 536870912, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 } } }, align 4
@bus_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 } } }, align 4
@bus_lcd_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.94 } } }, align 4
@bus_csi_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.97 } } }, align 4
@bus_de_fe_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.100 } } }, align 4
@bus_de_be_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 } } }, align 4
@bus_gpu_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.106 } } }, align 4
@bus_msgbox_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.109 } } }, align 4
@bus_spinlock_clk = internal global %struct.ccu_gate { i32 4194304, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.112 } } }, align 4
@bus_drc_clk = internal global %struct.ccu_gate { i32 33554432, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.115 } } }, align 4
@bus_sat_clk = internal global %struct.ccu_gate { i32 67108864, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 } } }, align 4
@bus_codec_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.121 } } }, align 4
@bus_pio_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 } } }, align 4
@bus_i2s0_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.127 } } }, align 4
@bus_i2s1_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.130 } } }, align 4
@bus_i2c0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.133 } } }, align 4
@bus_i2c1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.136 } } }, align 4
@bus_i2c2_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.139 } } }, align 4
@bus_uart0_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.142 } } }, align 4
@bus_uart1_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 } } }, align 4
@bus_uart2_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.148 } } }, align 4
@bus_uart3_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.151 } } }, align 4
@bus_uart4_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.154 } } }, align 4
@nand_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 128, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.156 } } }, align 4
@mmc0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 } } }, align 4
@mmc0_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 } } }, align 4
@mmc0_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.164 } } }, align 4
@mmc1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.166 } } }, align 4
@mmc1_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.169 } } }, align 4
@mmc1_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.172 } } }, align 4
@mmc2_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.174 } } }, align 4
@mmc2_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.177 } } }, align 4
@mmc2_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.180 } } }, align 4
@ss_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 156, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.182 } } }, align 4
@spi0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 160, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.184 } } }, align 4
@spi1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 164, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.186 } } }, align 4
@i2s0_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 176, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.188 } } }, align 4
@i2s1_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 180, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.194 } } }, align 4
@usb_phy0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.197 } } }, align 4
@usb_phy1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.200 } } }, align 4
@usb_hsic_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.203 } } }, align 4
@usb_hsic_12M_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.206 } } }, align 4
@usb_ohci_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.209 } } }, align 4
@dram_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 244, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.212 } }, i32 0 }, align 4
@dram_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.215 } } }, align 4
@dram_csi_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.218 } } }, align 4
@dram_drc_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.221 } } }, align 4
@dram_de_fe_clk = internal global %struct.ccu_gate { i32 16777216, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.224 } } }, align 4
@dram_de_be_clk = internal global %struct.ccu_gate { i32 67108864, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.227 } } }, align 4
@de_be_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr @de_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 260, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.229 } }, i32 0 }, align 4
@de_fe_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr @de_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 268, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.232 } }, i32 0 }, align 4
@lcd_ch0_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 24, i8 3, ptr @lcd_ch0_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 280, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.234 } } }, align 4
@lcd_ch1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr @lcd_ch1_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 300, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.237 } }, i32 0 }, align 4
@csi_sclk_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr @csi_sclk_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 308, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.239 } }, i32 0 }, align 4
@csi_mclk_clk = internal global %struct.ccu_div { i32 32768, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 8, i8 3, ptr @csi_mclk_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 308, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.241 } }, i32 0 }, align 4
@ve_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 316, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.244 } }, i32 0 }, align 4
@ac_dig_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 320, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.247 } } }, align 4
@ac_dig_4x_clk = internal global %struct.ccu_gate { i32 1073741824, %struct.ccu_common { ptr null, i16 320, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.250 } } }, align 4
@avs_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 324, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.253 } } }, align 4
@mbus_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 348, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.255 } }, i32 0 }, align 4
@dsi_sclk_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr @dsi_sclk_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 360, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.257 } }, i32 0 }, align 4
@dsi_dphy_clk = internal global %struct.ccu_div { i32 32768, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 8, i8 2, ptr @dsi_dphy_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 360, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.259 } }, i32 0 }, align 4
@drc_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr @de_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 384, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.261 } }, i32 0 }, align 4
@gpu_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.264 } }, i32 0 }, align 4
@ats_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 432, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.266 } }, i32 0 }, align 4
@pll_audio_sdm_table = internal global [2 x %struct.ccu_sdm_setting] [%struct.ccu_sdm_setting { i32 22579200, i32 -1073672828, i32 8, i32 7 }, %struct.ccu_sdm_setting { i32 24576000, i32 -1073697790, i32 14, i32 14 }], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pll-audio-base\00", align 1
@ccu_nm_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"osc24M\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.3 = internal global %struct.clk_init_data { ptr @.str.1, ptr @ccu_nm_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"pll-video\00", align 1
@.compoundliteral.5 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.6 = internal global %struct.clk_init_data { ptr @.str.4, ptr @ccu_nm_ops, ptr @.compoundliteral.5, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"pll-ve\00", align 1
@.compoundliteral.8 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.9 = internal global %struct.clk_init_data { ptr @.str.7, ptr @ccu_nm_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"pll-ddr0\00", align 1
@ccu_nkm_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.11 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.12 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_nkm_ops, ptr @.compoundliteral.11, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"pll-periph\00", align 1
@ccu_nk_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.14 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.15 = internal global %struct.clk_init_data { ptr @.str.13, ptr @ccu_nk_ops, ptr @.compoundliteral.14, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"pll-gpu\00", align 1
@.compoundliteral.17 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.18 = internal global %struct.clk_init_data { ptr @.str.16, ptr @ccu_nm_ops, ptr @.compoundliteral.17, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"pll-mipi\00", align 1
@.compoundliteral.20 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.21 = internal global %struct.clk_init_data { ptr @.str.19, ptr @ccu_nkm_ops, ptr @.compoundliteral.20, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"pll-hsic\00", align 1
@.compoundliteral.23 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.24 = internal global %struct.clk_init_data { ptr @.str.22, ptr @ccu_nm_ops, ptr @.compoundliteral.23, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"pll-de\00", align 1
@.compoundliteral.26 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.27 = internal global %struct.clk_init_data { ptr @.str.25, ptr @ccu_nm_ops, ptr @.compoundliteral.26, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"pll-ddr1\00", align 1
@ccu_mult_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.29 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.30 = internal global %struct.clk_init_data { ptr @.str.28, ptr @ccu_mult_ops, ptr @.compoundliteral.29, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"pll-ddr\00", align 1
@ccu_mux_ops = external dso_local constant %struct.clk_ops, align 4
@pll_ddr_parents = internal constant [2 x ptr] [ptr @.str.10, ptr @.str.28], align 4
@.compoundliteral.32 = internal global %struct.clk_init_data { ptr @.str.31, ptr @ccu_mux_ops, ptr @pll_ddr_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"cpux\00", align 1
@cpux_parents = internal constant [4 x ptr] [ptr @.str.35, ptr @.str.2, ptr @.str.36, ptr @.str.36], align 4
@.compoundliteral.34 = internal global %struct.clk_init_data { ptr @.str.33, ptr @ccu_mux_ops, ptr @cpux_parents, ptr null, ptr null, i8 4, i32 2052 }, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"osc32k\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"pll-cpux\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.38 = internal global [1 x ptr] [ptr @.str.33], align 4
@.compoundliteral.39 = internal global %struct.clk_init_data { ptr @.str.37, ptr @ccu_div_ops, ptr @.compoundliteral.38, ptr null, ptr null, i8 1, i32 0 }, align 4
@ahb1_predivs = internal constant [1 x %struct.ccu_mux_var_prediv] [%struct.ccu_mux_var_prediv { i8 3, i8 6, i8 2 }], align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"ahb1\00", align 1
@ahb1_parents = internal constant [4 x ptr] [ptr @.str.35, ptr @.str.2, ptr @.str.37, ptr @.str.13], align 4
@.compoundliteral.41 = internal global %struct.clk_init_data { ptr @.str.40, ptr @ccu_div_ops, ptr @ahb1_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@apb1_div_table = internal global [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@.str.42 = private unnamed_addr constant [5 x i8] c"apb1\00", align 1
@.compoundliteral.43 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.44 = internal global %struct.clk_init_data { ptr @.str.42, ptr @ccu_div_ops, ptr @.compoundliteral.43, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.45 = private unnamed_addr constant [5 x i8] c"apb2\00", align 1
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@apb2_parents = internal constant [4 x ptr] [ptr @.str.35, ptr @.str.2, ptr @.str.13, ptr @.str.13], align 4
@.compoundliteral.46 = internal global %struct.clk_init_data { ptr @.str.45, ptr @ccu_mp_ops, ptr @apb2_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.47 = private unnamed_addr constant [13 x i8] c"bus-mipi-dsi\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.48 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.49 = internal global %struct.clk_init_data { ptr @.str.47, ptr @ccu_gate_ops, ptr @.compoundliteral.48, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"bus-ss\00", align 1
@.compoundliteral.51 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.52 = internal global %struct.clk_init_data { ptr @.str.50, ptr @ccu_gate_ops, ptr @.compoundliteral.51, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.53 = private unnamed_addr constant [8 x i8] c"bus-dma\00", align 1
@.compoundliteral.54 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.55 = internal global %struct.clk_init_data { ptr @.str.53, ptr @ccu_gate_ops, ptr @.compoundliteral.54, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.56 = private unnamed_addr constant [9 x i8] c"bus-mmc0\00", align 1
@.compoundliteral.57 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.58 = internal global %struct.clk_init_data { ptr @.str.56, ptr @ccu_gate_ops, ptr @.compoundliteral.57, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.59 = private unnamed_addr constant [9 x i8] c"bus-mmc1\00", align 1
@.compoundliteral.60 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.61 = internal global %struct.clk_init_data { ptr @.str.59, ptr @ccu_gate_ops, ptr @.compoundliteral.60, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.62 = private unnamed_addr constant [9 x i8] c"bus-mmc2\00", align 1
@.compoundliteral.63 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.64 = internal global %struct.clk_init_data { ptr @.str.62, ptr @ccu_gate_ops, ptr @.compoundliteral.63, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.65 = private unnamed_addr constant [9 x i8] c"bus-nand\00", align 1
@.compoundliteral.66 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.67 = internal global %struct.clk_init_data { ptr @.str.65, ptr @ccu_gate_ops, ptr @.compoundliteral.66, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.68 = private unnamed_addr constant [9 x i8] c"bus-dram\00", align 1
@.compoundliteral.69 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.70 = internal global %struct.clk_init_data { ptr @.str.68, ptr @ccu_gate_ops, ptr @.compoundliteral.69, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.71 = private unnamed_addr constant [12 x i8] c"bus-hstimer\00", align 1
@.compoundliteral.72 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.73 = internal global %struct.clk_init_data { ptr @.str.71, ptr @ccu_gate_ops, ptr @.compoundliteral.72, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.74 = private unnamed_addr constant [9 x i8] c"bus-spi0\00", align 1
@.compoundliteral.75 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.76 = internal global %struct.clk_init_data { ptr @.str.74, ptr @ccu_gate_ops, ptr @.compoundliteral.75, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.77 = private unnamed_addr constant [9 x i8] c"bus-spi1\00", align 1
@.compoundliteral.78 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.79 = internal global %struct.clk_init_data { ptr @.str.77, ptr @ccu_gate_ops, ptr @.compoundliteral.78, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.80 = private unnamed_addr constant [8 x i8] c"bus-otg\00", align 1
@.compoundliteral.81 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.82 = internal global %struct.clk_init_data { ptr @.str.80, ptr @ccu_gate_ops, ptr @.compoundliteral.81, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.83 = private unnamed_addr constant [9 x i8] c"bus-ehci\00", align 1
@.compoundliteral.84 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.85 = internal global %struct.clk_init_data { ptr @.str.83, ptr @ccu_gate_ops, ptr @.compoundliteral.84, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.86 = private unnamed_addr constant [9 x i8] c"bus-ohci\00", align 1
@.compoundliteral.87 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.88 = internal global %struct.clk_init_data { ptr @.str.86, ptr @ccu_gate_ops, ptr @.compoundliteral.87, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.89 = private unnamed_addr constant [7 x i8] c"bus-ve\00", align 1
@.compoundliteral.90 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.91 = internal global %struct.clk_init_data { ptr @.str.89, ptr @ccu_gate_ops, ptr @.compoundliteral.90, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.92 = private unnamed_addr constant [8 x i8] c"bus-lcd\00", align 1
@.compoundliteral.93 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.94 = internal global %struct.clk_init_data { ptr @.str.92, ptr @ccu_gate_ops, ptr @.compoundliteral.93, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.95 = private unnamed_addr constant [8 x i8] c"bus-csi\00", align 1
@.compoundliteral.96 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.97 = internal global %struct.clk_init_data { ptr @.str.95, ptr @ccu_gate_ops, ptr @.compoundliteral.96, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.98 = private unnamed_addr constant [10 x i8] c"bus-de-fe\00", align 1
@.compoundliteral.99 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.100 = internal global %struct.clk_init_data { ptr @.str.98, ptr @ccu_gate_ops, ptr @.compoundliteral.99, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.101 = private unnamed_addr constant [10 x i8] c"bus-de-be\00", align 1
@.compoundliteral.102 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.103 = internal global %struct.clk_init_data { ptr @.str.101, ptr @ccu_gate_ops, ptr @.compoundliteral.102, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.104 = private unnamed_addr constant [8 x i8] c"bus-gpu\00", align 1
@.compoundliteral.105 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.106 = internal global %struct.clk_init_data { ptr @.str.104, ptr @ccu_gate_ops, ptr @.compoundliteral.105, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.107 = private unnamed_addr constant [11 x i8] c"bus-msgbox\00", align 1
@.compoundliteral.108 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.109 = internal global %struct.clk_init_data { ptr @.str.107, ptr @ccu_gate_ops, ptr @.compoundliteral.108, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.110 = private unnamed_addr constant [13 x i8] c"bus-spinlock\00", align 1
@.compoundliteral.111 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.112 = internal global %struct.clk_init_data { ptr @.str.110, ptr @ccu_gate_ops, ptr @.compoundliteral.111, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.113 = private unnamed_addr constant [8 x i8] c"bus-drc\00", align 1
@.compoundliteral.114 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.115 = internal global %struct.clk_init_data { ptr @.str.113, ptr @ccu_gate_ops, ptr @.compoundliteral.114, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.116 = private unnamed_addr constant [8 x i8] c"bus-sat\00", align 1
@.compoundliteral.117 = internal global [1 x ptr] [ptr @.str.40], align 4
@.compoundliteral.118 = internal global %struct.clk_init_data { ptr @.str.116, ptr @ccu_gate_ops, ptr @.compoundliteral.117, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.119 = private unnamed_addr constant [10 x i8] c"bus-codec\00", align 1
@.compoundliteral.120 = internal global [1 x ptr] [ptr @.str.42], align 4
@.compoundliteral.121 = internal global %struct.clk_init_data { ptr @.str.119, ptr @ccu_gate_ops, ptr @.compoundliteral.120, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.122 = private unnamed_addr constant [8 x i8] c"bus-pio\00", align 1
@.compoundliteral.123 = internal global [1 x ptr] [ptr @.str.42], align 4
@.compoundliteral.124 = internal global %struct.clk_init_data { ptr @.str.122, ptr @ccu_gate_ops, ptr @.compoundliteral.123, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.125 = private unnamed_addr constant [9 x i8] c"bus-i2s0\00", align 1
@.compoundliteral.126 = internal global [1 x ptr] [ptr @.str.42], align 4
@.compoundliteral.127 = internal global %struct.clk_init_data { ptr @.str.125, ptr @ccu_gate_ops, ptr @.compoundliteral.126, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.128 = private unnamed_addr constant [9 x i8] c"bus-i2s1\00", align 1
@.compoundliteral.129 = internal global [1 x ptr] [ptr @.str.42], align 4
@.compoundliteral.130 = internal global %struct.clk_init_data { ptr @.str.128, ptr @ccu_gate_ops, ptr @.compoundliteral.129, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.131 = private unnamed_addr constant [9 x i8] c"bus-i2c0\00", align 1
@.compoundliteral.132 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.133 = internal global %struct.clk_init_data { ptr @.str.131, ptr @ccu_gate_ops, ptr @.compoundliteral.132, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.134 = private unnamed_addr constant [9 x i8] c"bus-i2c1\00", align 1
@.compoundliteral.135 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.136 = internal global %struct.clk_init_data { ptr @.str.134, ptr @ccu_gate_ops, ptr @.compoundliteral.135, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.137 = private unnamed_addr constant [9 x i8] c"bus-i2c2\00", align 1
@.compoundliteral.138 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.139 = internal global %struct.clk_init_data { ptr @.str.137, ptr @ccu_gate_ops, ptr @.compoundliteral.138, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.140 = private unnamed_addr constant [10 x i8] c"bus-uart0\00", align 1
@.compoundliteral.141 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.142 = internal global %struct.clk_init_data { ptr @.str.140, ptr @ccu_gate_ops, ptr @.compoundliteral.141, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.143 = private unnamed_addr constant [10 x i8] c"bus-uart1\00", align 1
@.compoundliteral.144 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.145 = internal global %struct.clk_init_data { ptr @.str.143, ptr @ccu_gate_ops, ptr @.compoundliteral.144, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.146 = private unnamed_addr constant [10 x i8] c"bus-uart2\00", align 1
@.compoundliteral.147 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.148 = internal global %struct.clk_init_data { ptr @.str.146, ptr @ccu_gate_ops, ptr @.compoundliteral.147, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.149 = private unnamed_addr constant [10 x i8] c"bus-uart3\00", align 1
@.compoundliteral.150 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.151 = internal global %struct.clk_init_data { ptr @.str.149, ptr @ccu_gate_ops, ptr @.compoundliteral.150, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.152 = private unnamed_addr constant [10 x i8] c"bus-uart4\00", align 1
@.compoundliteral.153 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.154 = internal global %struct.clk_init_data { ptr @.str.152, ptr @ccu_gate_ops, ptr @.compoundliteral.153, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.155 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@mod0_default_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.13], align 4
@.compoundliteral.156 = internal global %struct.clk_init_data { ptr @.str.155, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.157 = private unnamed_addr constant [5 x i8] c"mmc0\00", align 1
@.compoundliteral.158 = internal global %struct.clk_init_data { ptr @.str.157, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.159 = private unnamed_addr constant [12 x i8] c"mmc0_sample\00", align 1
@ccu_phase_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.160 = internal global [1 x ptr] [ptr @.str.157], align 4
@.compoundliteral.161 = internal global %struct.clk_init_data { ptr @.str.159, ptr @ccu_phase_ops, ptr @.compoundliteral.160, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.162 = private unnamed_addr constant [12 x i8] c"mmc0_output\00", align 1
@.compoundliteral.163 = internal global [1 x ptr] [ptr @.str.157], align 4
@.compoundliteral.164 = internal global %struct.clk_init_data { ptr @.str.162, ptr @ccu_phase_ops, ptr @.compoundliteral.163, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.165 = private unnamed_addr constant [5 x i8] c"mmc1\00", align 1
@.compoundliteral.166 = internal global %struct.clk_init_data { ptr @.str.165, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.167 = private unnamed_addr constant [12 x i8] c"mmc1_sample\00", align 1
@.compoundliteral.168 = internal global [1 x ptr] [ptr @.str.165], align 4
@.compoundliteral.169 = internal global %struct.clk_init_data { ptr @.str.167, ptr @ccu_phase_ops, ptr @.compoundliteral.168, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.170 = private unnamed_addr constant [12 x i8] c"mmc1_output\00", align 1
@.compoundliteral.171 = internal global [1 x ptr] [ptr @.str.165], align 4
@.compoundliteral.172 = internal global %struct.clk_init_data { ptr @.str.170, ptr @ccu_phase_ops, ptr @.compoundliteral.171, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.173 = private unnamed_addr constant [5 x i8] c"mmc2\00", align 1
@.compoundliteral.174 = internal global %struct.clk_init_data { ptr @.str.173, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.175 = private unnamed_addr constant [12 x i8] c"mmc2_sample\00", align 1
@.compoundliteral.176 = internal global [1 x ptr] [ptr @.str.173], align 4
@.compoundliteral.177 = internal global %struct.clk_init_data { ptr @.str.175, ptr @ccu_phase_ops, ptr @.compoundliteral.176, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.178 = private unnamed_addr constant [12 x i8] c"mmc2_output\00", align 1
@.compoundliteral.179 = internal global [1 x ptr] [ptr @.str.173], align 4
@.compoundliteral.180 = internal global %struct.clk_init_data { ptr @.str.178, ptr @ccu_phase_ops, ptr @.compoundliteral.179, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.181 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.compoundliteral.182 = internal global %struct.clk_init_data { ptr @.str.181, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.183 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.compoundliteral.184 = internal global %struct.clk_init_data { ptr @.str.183, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.185 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.compoundliteral.186 = internal global %struct.clk_init_data { ptr @.str.185, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.187 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@i2s_parents = internal constant [4 x ptr] [ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192], align 4
@.compoundliteral.188 = internal global %struct.clk_init_data { ptr @.str.187, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.189 = private unnamed_addr constant [13 x i8] c"pll-audio-8x\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"pll-audio-4x\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"pll-audio-2x\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"pll-audio\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.compoundliteral.194 = internal global %struct.clk_init_data { ptr @.str.193, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.195 = private unnamed_addr constant [9 x i8] c"usb-phy0\00", align 1
@.compoundliteral.196 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.197 = internal global %struct.clk_init_data { ptr @.str.195, ptr @ccu_gate_ops, ptr @.compoundliteral.196, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.198 = private unnamed_addr constant [9 x i8] c"usb-phy1\00", align 1
@.compoundliteral.199 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.200 = internal global %struct.clk_init_data { ptr @.str.198, ptr @ccu_gate_ops, ptr @.compoundliteral.199, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.201 = private unnamed_addr constant [9 x i8] c"usb-hsic\00", align 1
@.compoundliteral.202 = internal global [1 x ptr] [ptr @.str.22], align 4
@.compoundliteral.203 = internal global %struct.clk_init_data { ptr @.str.201, ptr @ccu_gate_ops, ptr @.compoundliteral.202, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.204 = private unnamed_addr constant [13 x i8] c"usb-hsic-12M\00", align 1
@.compoundliteral.205 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.206 = internal global %struct.clk_init_data { ptr @.str.204, ptr @ccu_gate_ops, ptr @.compoundliteral.205, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.207 = private unnamed_addr constant [9 x i8] c"usb-ohci\00", align 1
@.compoundliteral.208 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.209 = internal global %struct.clk_init_data { ptr @.str.207, ptr @ccu_gate_ops, ptr @.compoundliteral.208, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.210 = private unnamed_addr constant [5 x i8] c"dram\00", align 1
@.compoundliteral.211 = internal global [1 x ptr] [ptr @.str.31], align 4
@.compoundliteral.212 = internal global %struct.clk_init_data { ptr @.str.210, ptr @ccu_div_ops, ptr @.compoundliteral.211, ptr null, ptr null, i8 1, i32 2048 }, align 4
@.str.213 = private unnamed_addr constant [8 x i8] c"dram-ve\00", align 1
@.compoundliteral.214 = internal global [1 x ptr] [ptr @.str.210], align 4
@.compoundliteral.215 = internal global %struct.clk_init_data { ptr @.str.213, ptr @ccu_gate_ops, ptr @.compoundliteral.214, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.216 = private unnamed_addr constant [9 x i8] c"dram-csi\00", align 1
@.compoundliteral.217 = internal global [1 x ptr] [ptr @.str.210], align 4
@.compoundliteral.218 = internal global %struct.clk_init_data { ptr @.str.216, ptr @ccu_gate_ops, ptr @.compoundliteral.217, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.219 = private unnamed_addr constant [9 x i8] c"dram-drc\00", align 1
@.compoundliteral.220 = internal global [1 x ptr] [ptr @.str.210], align 4
@.compoundliteral.221 = internal global %struct.clk_init_data { ptr @.str.219, ptr @ccu_gate_ops, ptr @.compoundliteral.220, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.222 = private unnamed_addr constant [11 x i8] c"dram-de-fe\00", align 1
@.compoundliteral.223 = internal global [1 x ptr] [ptr @.str.210], align 4
@.compoundliteral.224 = internal global %struct.clk_init_data { ptr @.str.222, ptr @ccu_gate_ops, ptr @.compoundliteral.223, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.225 = private unnamed_addr constant [11 x i8] c"dram-de-be\00", align 1
@.compoundliteral.226 = internal global [1 x ptr] [ptr @.str.210], align 4
@.compoundliteral.227 = internal global %struct.clk_init_data { ptr @.str.225, ptr @ccu_gate_ops, ptr @.compoundliteral.226, ptr null, ptr null, i8 1, i32 0 }, align 4
@de_table = internal constant [4 x i8] c"\00\02\03\05", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"de-be\00", align 1
@de_parents = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.230, ptr @.str.16, ptr @.str.25], align 4
@.compoundliteral.229 = internal global %struct.clk_init_data { ptr @.str.228, ptr @ccu_div_ops, ptr @de_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.230 = private unnamed_addr constant [14 x i8] c"pll-periph-2x\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"de-fe\00", align 1
@.compoundliteral.232 = internal global %struct.clk_init_data { ptr @.str.231, ptr @ccu_div_ops, ptr @de_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@lcd_ch0_table = internal constant [3 x i8] c"\00\02\04", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c"lcd-ch0\00", align 1
@lcd_ch0_parents = internal constant [3 x ptr] [ptr @.str.4, ptr @.str.235, ptr @.str.19], align 4
@.compoundliteral.234 = internal global %struct.clk_init_data { ptr @.str.233, ptr @ccu_mux_ops, ptr @lcd_ch0_parents, ptr null, ptr null, i8 3, i32 4 }, align 4
@.str.235 = private unnamed_addr constant [13 x i8] c"pll-video-2x\00", align 1
@lcd_ch1_table = internal constant [2 x i8] c"\00\02", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"lcd-ch1\00", align 1
@lcd_ch1_parents = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.235], align 4
@.compoundliteral.237 = internal global %struct.clk_init_data { ptr @.str.236, ptr @ccu_div_ops, ptr @lcd_ch1_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@csi_sclk_table = internal constant [4 x i8] c"\00\03\04\05", align 1
@.str.238 = private unnamed_addr constant [9 x i8] c"csi-sclk\00", align 1
@csi_sclk_parents = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.25, ptr @.str.19, ptr @.str.7], align 4
@.compoundliteral.239 = internal global %struct.clk_init_data { ptr @.str.238, ptr @ccu_div_ops, ptr @csi_sclk_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@csi_mclk_table = internal constant [3 x i8] c"\00\03\05", align 1
@.str.240 = private unnamed_addr constant [9 x i8] c"csi-mclk\00", align 1
@csi_mclk_parents = internal constant [3 x ptr] [ptr @.str.4, ptr @.str.25, ptr @.str.2], align 4
@.compoundliteral.241 = internal global %struct.clk_init_data { ptr @.str.240, ptr @ccu_div_ops, ptr @csi_mclk_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.242 = private unnamed_addr constant [3 x i8] c"ve\00", align 1
@.compoundliteral.243 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.244 = internal global %struct.clk_init_data { ptr @.str.242, ptr @ccu_div_ops, ptr @.compoundliteral.243, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.245 = private unnamed_addr constant [7 x i8] c"ac-dig\00", align 1
@.compoundliteral.246 = internal global [1 x ptr] [ptr @.str.192], align 4
@.compoundliteral.247 = internal global %struct.clk_init_data { ptr @.str.245, ptr @ccu_gate_ops, ptr @.compoundliteral.246, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.248 = private unnamed_addr constant [10 x i8] c"ac-dig-4x\00", align 1
@.compoundliteral.249 = internal global [1 x ptr] [ptr @.str.190], align 4
@.compoundliteral.250 = internal global %struct.clk_init_data { ptr @.str.248, ptr @ccu_gate_ops, ptr @.compoundliteral.249, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.251 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.compoundliteral.252 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.253 = internal global %struct.clk_init_data { ptr @.str.251, ptr @ccu_gate_ops, ptr @.compoundliteral.252, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.254 = private unnamed_addr constant [5 x i8] c"mbus\00", align 1
@mbus_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.230, ptr @.str.10, ptr @.str.28], align 4
@.compoundliteral.255 = internal global %struct.clk_init_data { ptr @.str.254, ptr @ccu_div_ops, ptr @mbus_parents, ptr null, ptr null, i8 4, i32 2048 }, align 4
@dsi_sclk_table = internal constant [2 x i8] c"\00\02", align 1
@.str.256 = private unnamed_addr constant [9 x i8] c"dsi-sclk\00", align 1
@dsi_sclk_parents = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.235], align 4
@.compoundliteral.257 = internal global %struct.clk_init_data { ptr @.str.256, ptr @ccu_div_ops, ptr @dsi_sclk_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@dsi_dphy_table = internal constant [2 x i8] c"\00\02", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"dsi-dphy\00", align 1
@dsi_dphy_parents = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.13], align 4
@.compoundliteral.259 = internal global %struct.clk_init_data { ptr @.str.258, ptr @ccu_div_ops, ptr @dsi_dphy_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.260 = private unnamed_addr constant [4 x i8] c"drc\00", align 1
@.compoundliteral.261 = internal global %struct.clk_init_data { ptr @.str.260, ptr @ccu_div_ops, ptr @de_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.262 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.compoundliteral.263 = internal global [1 x ptr] [ptr @.str.16], align 4
@.compoundliteral.264 = internal global %struct.clk_init_data { ptr @.str.262, ptr @ccu_div_ops, ptr @.compoundliteral.263, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.265 = private unnamed_addr constant [4 x i8] c"ats\00", align 1
@ats_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.13], align 4
@.compoundliteral.266 = internal global %struct.clk_init_data { ptr @.str.265, ptr @ccu_div_ops, ptr @ats_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@pll_audio_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.268 }, i32 1, i32 1 }, align 4
@pll_audio_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.269 }, i32 1, i32 2 }, align 4
@pll_audio_4x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.270 }, i32 1, i32 1 }, align 4
@pll_audio_8x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.271 }, i32 2, i32 1 }, align 4
@pll_video_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.273 }, i32 2, i32 1 }, align 4
@pll_periph_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.275 }, i32 2, i32 1 }, align 4
@sun8i_a33_hw_clks = internal global { i32, [101 x ptr] } { i32 101, [101 x ptr] [ptr getelementptr (i8, ptr @pll_cpux_clk, i64 88), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104), ptr @pll_audio_clk, ptr @pll_audio_2x_clk, ptr @pll_audio_4x_clk, ptr @pll_audio_8x_clk, ptr getelementptr (i8, ptr @pll_video_clk, i64 104), ptr @pll_video_2x_clk, ptr getelementptr (i8, ptr @pll_ve_clk, i64 104), ptr getelementptr (i8, ptr @pll_ddr0_clk, i64 88), ptr getelementptr (i8, ptr @pll_periph_clk, i64 48), ptr @pll_periph_2x_clk, ptr getelementptr (i8, ptr @pll_gpu_clk, i64 104), ptr getelementptr (i8, ptr @pll_mipi_clk, i64 88), ptr getelementptr (i8, ptr @pll_hsic_clk, i64 104), ptr getelementptr (i8, ptr @pll_de_clk, i64 104), ptr getelementptr (i8, ptr @pll_ddr1_clk, i64 76), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 48), ptr getelementptr (i8, ptr @cpux_clk, i64 48), ptr getelementptr (i8, ptr @axi_clk, i64 68), ptr getelementptr (i8, ptr @ahb1_clk, i64 68), ptr getelementptr (i8, ptr @apb1_clk, i64 68), ptr getelementptr (i8, ptr @apb2_clk, i64 92), ptr getelementptr (i8, ptr @bus_mipi_dsi_clk, i64 24), ptr getelementptr (i8, ptr @bus_ss_clk, i64 24), ptr getelementptr (i8, ptr @bus_dma_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 24), ptr getelementptr (i8, ptr @bus_nand_clk, i64 24), ptr getelementptr (i8, ptr @bus_dram_clk, i64 24), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 24), ptr getelementptr (i8, ptr @bus_otg_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci_clk, i64 24), ptr getelementptr (i8, ptr @bus_ve_clk, i64 24), ptr getelementptr (i8, ptr @bus_lcd_clk, i64 24), ptr getelementptr (i8, ptr @bus_csi_clk, i64 24), ptr getelementptr (i8, ptr @bus_de_be_clk, i64 24), ptr getelementptr (i8, ptr @bus_de_fe_clk, i64 24), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 24), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 24), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 24), ptr getelementptr (i8, ptr @bus_drc_clk, i64 24), ptr getelementptr (i8, ptr @bus_sat_clk, i64 24), ptr getelementptr (i8, ptr @bus_codec_clk, i64 24), ptr getelementptr (i8, ptr @bus_pio_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart4_clk, i64 24), ptr getelementptr (i8, ptr @nand_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc0_output_clk, i64 24), ptr getelementptr (i8, ptr @mmc1_clk, i64 92), ptr getelementptr (i8, ptr @mmc1_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc1_output_clk, i64 24), ptr getelementptr (i8, ptr @mmc2_clk, i64 92), ptr getelementptr (i8, ptr @mmc2_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc2_output_clk, i64 24), ptr getelementptr (i8, ptr @ss_clk, i64 92), ptr getelementptr (i8, ptr @spi0_clk, i64 92), ptr getelementptr (i8, ptr @spi1_clk, i64 92), ptr getelementptr (i8, ptr @i2s0_clk, i64 48), ptr getelementptr (i8, ptr @i2s1_clk, i64 48), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 24), ptr getelementptr (i8, ptr @usb_hsic_clk, i64 24), ptr getelementptr (i8, ptr @usb_hsic_12M_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci_clk, i64 24), ptr getelementptr (i8, ptr @dram_clk, i64 68), ptr getelementptr (i8, ptr @dram_ve_clk, i64 24), ptr getelementptr (i8, ptr @dram_csi_clk, i64 24), ptr getelementptr (i8, ptr @dram_drc_clk, i64 24), ptr getelementptr (i8, ptr @dram_de_fe_clk, i64 24), ptr getelementptr (i8, ptr @dram_de_be_clk, i64 24), ptr getelementptr (i8, ptr @de_be_clk, i64 68), ptr getelementptr (i8, ptr @de_fe_clk, i64 68), ptr getelementptr (i8, ptr @lcd_ch0_clk, i64 48), ptr getelementptr (i8, ptr @lcd_ch1_clk, i64 68), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 68), ptr getelementptr (i8, ptr @csi_mclk_clk, i64 68), ptr getelementptr (i8, ptr @ve_clk, i64 68), ptr getelementptr (i8, ptr @ac_dig_clk, i64 24), ptr getelementptr (i8, ptr @ac_dig_4x_clk, i64 24), ptr getelementptr (i8, ptr @avs_clk, i64 24), ptr getelementptr (i8, ptr @mbus_clk, i64 68), ptr getelementptr (i8, ptr @dsi_sclk_clk, i64 68), ptr getelementptr (i8, ptr @dsi_dphy_clk, i64 68), ptr getelementptr (i8, ptr @drc_clk, i64 68), ptr getelementptr (i8, ptr @gpu_clk, i64 68), ptr getelementptr (i8, ptr @ats_clk, i64 68)] }, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@clk_parent_pll_audio = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104)], align 4
@.compoundliteral.268 = internal global %struct.clk_init_data { ptr @.str.192, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.269 = internal global %struct.clk_init_data { ptr @.str.191, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.270 = internal global %struct.clk_init_data { ptr @.str.190, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.271 = internal global %struct.clk_init_data { ptr @.str.189, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.272 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_video_clk, i64 104)], align 4
@.compoundliteral.273 = internal global %struct.clk_init_data { ptr @.str.235, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.272, i8 1, i32 0 }, align 4
@.compoundliteral.274 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_periph_clk, i64 48)], align 4
@.compoundliteral.275 = internal global %struct.clk_init_data { ptr @.str.230, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.274, i8 1, i32 0 }, align 4
@ccu_nkmp_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.276 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.277 = internal global %struct.clk_init_data { ptr @.str.36, ptr @ccu_nkmp_ops, ptr @.compoundliteral.276, ptr null, ptr null, i8 1, i32 0 }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_import_ns163, ptr @__UNIQUE_ID_license165, ptr @__exitcall_sun8i_a33_ccu_driver_exit, ptr @__initcall__kmod_sun8i_a33_ccu__162_835_sun8i_a33_ccu_driver_init6, ptr @sun8i_a33_ccu_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun8i_a33_ccu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_a33_ccu_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_a33_ccu_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_a33_ccu_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_a33_ccu_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %20

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %2, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %9 = and i32 %8, -983041
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #3, !srcloc !11
  %10 = getelementptr i8, ptr %2, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %12 = and i32 %11, -65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #3, !srcloc !11
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %14 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %13, ptr noundef %2, ptr noundef nonnull @sun8i_a33_ccu_desc) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = tail call i32 @ccu_pll_notifier_register(ptr noundef nonnull @sun8i_a33_pll_cpu_nb) #3
  %18 = load ptr, ptr getelementptr inbounds (%struct.ccu_nkmp, ptr @pll_cpux_clk, i32 0, i32 8, i32 6, i32 1), align 4
  %19 = tail call i32 @ccu_mux_notifier_register(ptr noundef %18, ptr noundef nonnull @sun8i_a33_cpu_nb) #3
  br label %20

20:                                               ; preds = %16, %6, %4
  %21 = phi i32 [ %5, %4 ], [ 0, %16 ], [ %14, %6 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_pll_notifier_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!8 = !{i64 2867643}
!9 = !{i64 2151540898}
!10 = !{i64 2151541771}
!11 = !{i64 2867225}
!12 = !{i64 2151542240}
!13 = !{i64 2151542501}
