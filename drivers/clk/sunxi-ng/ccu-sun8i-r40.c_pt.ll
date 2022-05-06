; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun8i-r40.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun8i-r40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_mux = type { i32, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_sdm_setting = type { i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ccu_mux_var_prediv = type { i8, i8, i8 }
%struct.clk_div_table = type { i32, i32 }
%struct.ccu_mux_fixed_prediv = type { i8, i16 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
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

@__initcall__kmod_sun8i_r40_ccu__162_1375_sun8i_r40_ccu_driver_init6 = internal global ptr @sun8i_r40_ccu_driver_init, section ".initcall6.init", align 4
@sun8i_r40_ccu_driver = internal global %struct.platform_driver { ptr @sun8i_r40_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun8i_r40_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun8i_r40_ccu_driver_exit = internal global ptr @sun8i_r40_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns163 = internal constant [34 x i8] c"sun8i_r40_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [54 x i8] c"sun8i_r40_ccu.file=drivers/clk/sunxi-ng/sun8i-r40-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [26 x i8] c"sun8i_r40_ccu.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"sun8i-r40-ccu\00", align 1
@sun8i_r40_ccu_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sun8i_r40_ccu_regmap_config = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @sun8i_r40_ccu_regmap_accessible_reg, ptr @sun8i_r40_ccu_regmap_accessible_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 800, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@sun8i_r40_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_r40_ccu_clks, i32 157, ptr @sun8i_r40_hw_clks, ptr @sun8i_r40_ccu_resets, i32 81 }, align 4
@sun8i_r40_pll_cpu_nb = internal global %struct.ccu_pll_nb { %struct.notifier_block zeroinitializer, ptr getelementptr (i8, ptr @pll_cpu_clk, i64 68), i32 -2147483648, i32 268435456 }, align 4
@pll_cpu_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 4, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.450 } } }, align 4
@sun8i_r40_cpu_nb = internal global %struct.ccu_mux_nb { %struct.notifier_block zeroinitializer, ptr getelementptr (i8, ptr @cpu_clk, i64 28), ptr getelementptr (i8, ptr @cpu_clk, i64 4), i32 1, i8 1, i8 0 }, align 4
@sun8i_r40_ccu_clks = internal global [157 x ptr] [ptr getelementptr (i8, ptr @pll_cpu_clk, i64 68), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 84), ptr getelementptr (i8, ptr @pll_video0_clk, i64 84), ptr getelementptr (i8, ptr @pll_ve_clk, i64 84), ptr getelementptr (i8, ptr @pll_ddr0_clk, i64 68), ptr getelementptr (i8, ptr @pll_periph0_clk, i64 28), ptr getelementptr (i8, ptr @pll_periph0_sata_clk, i64 48), ptr getelementptr (i8, ptr @pll_periph1_clk, i64 28), ptr getelementptr (i8, ptr @pll_video1_clk, i64 84), ptr getelementptr (i8, ptr @pll_sata_clk, i64 68), ptr getelementptr (i8, ptr @pll_sata_out_clk, i64 28), ptr getelementptr (i8, ptr @pll_gpu_clk, i64 84), ptr getelementptr (i8, ptr @pll_mipi_clk, i64 68), ptr getelementptr (i8, ptr @pll_de_clk, i64 84), ptr getelementptr (i8, ptr @pll_ddr1_clk, i64 84), ptr getelementptr (i8, ptr @cpu_clk, i64 28), ptr getelementptr (i8, ptr @axi_clk, i64 48), ptr getelementptr (i8, ptr @ahb1_clk, i64 48), ptr getelementptr (i8, ptr @apb1_clk, i64 48), ptr getelementptr (i8, ptr @apb2_clk, i64 72), ptr getelementptr (i8, ptr @bus_mipi_dsi_clk, i64 4), ptr getelementptr (i8, ptr @bus_ce_clk, i64 4), ptr getelementptr (i8, ptr @bus_dma_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc3_clk, i64 4), ptr getelementptr (i8, ptr @bus_nand_clk, i64 4), ptr getelementptr (i8, ptr @bus_dram_clk, i64 4), ptr getelementptr (i8, ptr @bus_emac_clk, i64 4), ptr getelementptr (i8, ptr @bus_ts_clk, i64 4), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi2_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi3_clk, i64 4), ptr getelementptr (i8, ptr @bus_sata_clk, i64 4), ptr getelementptr (i8, ptr @bus_otg_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci1_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci2_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci1_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci2_clk, i64 4), ptr getelementptr (i8, ptr @bus_ve_clk, i64 4), ptr getelementptr (i8, ptr @bus_mp_clk, i64 4), ptr getelementptr (i8, ptr @bus_deinterlace_clk, i64 4), ptr getelementptr (i8, ptr @bus_csi0_clk, i64 4), ptr getelementptr (i8, ptr @bus_csi1_clk, i64 4), ptr getelementptr (i8, ptr @bus_hdmi0_clk, i64 4), ptr getelementptr (i8, ptr @bus_hdmi1_clk, i64 4), ptr getelementptr (i8, ptr @bus_de_clk, i64 4), ptr getelementptr (i8, ptr @bus_tve0_clk, i64 4), ptr getelementptr (i8, ptr @bus_tve1_clk, i64 4), ptr getelementptr (i8, ptr @bus_tve_top_clk, i64 4), ptr getelementptr (i8, ptr @bus_gmac_clk, i64 4), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 4), ptr getelementptr (i8, ptr @bus_tvd0_clk, i64 4), ptr getelementptr (i8, ptr @bus_tvd1_clk, i64 4), ptr getelementptr (i8, ptr @bus_tvd2_clk, i64 4), ptr getelementptr (i8, ptr @bus_tvd3_clk, i64 4), ptr getelementptr (i8, ptr @bus_tvd_top_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon_lcd0_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon_lcd1_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon_tv0_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon_tv1_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon_top_clk, i64 4), ptr getelementptr (i8, ptr @bus_codec_clk, i64 4), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 4), ptr getelementptr (i8, ptr @bus_ac97_clk, i64 4), ptr getelementptr (i8, ptr @bus_pio_clk, i64 4), ptr getelementptr (i8, ptr @bus_ir0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ir1_clk, i64 4), ptr getelementptr (i8, ptr @bus_ths_clk, i64 4), ptr getelementptr (i8, ptr @bus_keypad_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s2_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c3_clk, i64 4), ptr getelementptr (i8, ptr @bus_can_clk, i64 4), ptr getelementptr (i8, ptr @bus_scr_clk, i64 4), ptr getelementptr (i8, ptr @bus_ps20_clk, i64 4), ptr getelementptr (i8, ptr @bus_ps21_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c4_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart4_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart5_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart6_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart7_clk, i64 4), ptr getelementptr (i8, ptr @bus_dbg_clk, i64 4), ptr getelementptr (i8, ptr @ths_clk, i64 48), ptr getelementptr (i8, ptr @nand_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_clk, i64 72), ptr getelementptr (i8, ptr @mmc1_clk, i64 72), ptr getelementptr (i8, ptr @mmc2_clk, i64 72), ptr getelementptr (i8, ptr @mmc3_clk, i64 72), ptr getelementptr (i8, ptr @ts_clk, i64 72), ptr getelementptr (i8, ptr @ce_clk, i64 72), ptr getelementptr (i8, ptr @spi0_clk, i64 72), ptr getelementptr (i8, ptr @spi1_clk, i64 72), ptr getelementptr (i8, ptr @spi2_clk, i64 72), ptr getelementptr (i8, ptr @spi3_clk, i64 72), ptr getelementptr (i8, ptr @i2s0_clk, i64 28), ptr getelementptr (i8, ptr @i2s1_clk, i64 28), ptr getelementptr (i8, ptr @i2s2_clk, i64 28), ptr getelementptr (i8, ptr @ac97_clk, i64 28), ptr getelementptr (i8, ptr @spdif_clk, i64 28), ptr getelementptr (i8, ptr @keypad_clk, i64 72), ptr getelementptr (i8, ptr @sata_clk, i64 28), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy2_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci1_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 4), ptr getelementptr (i8, ptr @ir0_clk, i64 72), ptr getelementptr (i8, ptr @ir1_clk, i64 72), ptr getelementptr (i8, ptr @dram_clk, i64 48), ptr getelementptr (i8, ptr @dram_ve_clk, i64 4), ptr getelementptr (i8, ptr @dram_csi0_clk, i64 4), ptr getelementptr (i8, ptr @dram_csi1_clk, i64 4), ptr getelementptr (i8, ptr @dram_ts_clk, i64 4), ptr getelementptr (i8, ptr @dram_tvd_clk, i64 4), ptr getelementptr (i8, ptr @dram_mp_clk, i64 4), ptr getelementptr (i8, ptr @dram_deinterlace_clk, i64 4), ptr getelementptr (i8, ptr @de_clk, i64 48), ptr getelementptr (i8, ptr @mp_clk, i64 48), ptr getelementptr (i8, ptr @tcon_lcd0_clk, i64 28), ptr getelementptr (i8, ptr @tcon_lcd1_clk, i64 28), ptr getelementptr (i8, ptr @tcon_tv0_clk, i64 48), ptr getelementptr (i8, ptr @tcon_tv1_clk, i64 48), ptr getelementptr (i8, ptr @deinterlace_clk, i64 48), ptr getelementptr (i8, ptr @csi1_mclk_clk, i64 48), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 48), ptr getelementptr (i8, ptr @csi0_mclk_clk, i64 48), ptr getelementptr (i8, ptr @ve_clk, i64 48), ptr getelementptr (i8, ptr @codec_clk, i64 4), ptr getelementptr (i8, ptr @avs_clk, i64 4), ptr getelementptr (i8, ptr @hdmi_clk, i64 48), ptr getelementptr (i8, ptr @hdmi_slow_clk, i64 4), ptr getelementptr (i8, ptr @mbus_clk, i64 72), ptr getelementptr (i8, ptr @dsi_dphy_clk, i64 48), ptr getelementptr (i8, ptr @tve0_clk, i64 48), ptr getelementptr (i8, ptr @tve1_clk, i64 48), ptr getelementptr (i8, ptr @tvd0_clk, i64 48), ptr getelementptr (i8, ptr @tvd1_clk, i64 48), ptr getelementptr (i8, ptr @tvd2_clk, i64 48), ptr getelementptr (i8, ptr @tvd3_clk, i64 48), ptr getelementptr (i8, ptr @gpu_clk, i64 48), ptr getelementptr (i8, ptr @outa_clk, i64 72), ptr getelementptr (i8, ptr @outb_clk, i64 72)], align 4
@sun8i_r40_ccu_resets = internal global [81 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 204, i32 1 }, %struct.ccu_reset_map { i16 204, i32 2 }, %struct.ccu_reset_map { i16 204, i32 4 }, %struct.ccu_reset_map { i16 244, i32 -2147483648 }, %struct.ccu_reset_map { i16 252, i32 -2147483648 }, %struct.ccu_reset_map { i16 704, i32 2 }, %struct.ccu_reset_map { i16 704, i32 32 }, %struct.ccu_reset_map { i16 704, i32 64 }, %struct.ccu_reset_map { i16 704, i32 256 }, %struct.ccu_reset_map { i16 704, i32 512 }, %struct.ccu_reset_map { i16 704, i32 1024 }, %struct.ccu_reset_map { i16 704, i32 2048 }, %struct.ccu_reset_map { i16 704, i32 8192 }, %struct.ccu_reset_map { i16 704, i32 16384 }, %struct.ccu_reset_map { i16 704, i32 131072 }, %struct.ccu_reset_map { i16 704, i32 262144 }, %struct.ccu_reset_map { i16 704, i32 524288 }, %struct.ccu_reset_map { i16 704, i32 1048576 }, %struct.ccu_reset_map { i16 704, i32 2097152 }, %struct.ccu_reset_map { i16 704, i32 4194304 }, %struct.ccu_reset_map { i16 704, i32 8388608 }, %struct.ccu_reset_map { i16 704, i32 16777216 }, %struct.ccu_reset_map { i16 704, i32 33554432 }, %struct.ccu_reset_map { i16 704, i32 67108864 }, %struct.ccu_reset_map { i16 704, i32 134217728 }, %struct.ccu_reset_map { i16 704, i32 268435456 }, %struct.ccu_reset_map { i16 704, i32 536870912 }, %struct.ccu_reset_map { i16 704, i32 1073741824 }, %struct.ccu_reset_map { i16 704, i32 -2147483648 }, %struct.ccu_reset_map { i16 708, i32 1 }, %struct.ccu_reset_map { i16 708, i32 4 }, %struct.ccu_reset_map { i16 708, i32 32 }, %struct.ccu_reset_map { i16 708, i32 256 }, %struct.ccu_reset_map { i16 708, i32 512 }, %struct.ccu_reset_map { i16 708, i32 1024 }, %struct.ccu_reset_map { i16 708, i32 2048 }, %struct.ccu_reset_map { i16 708, i32 4096 }, %struct.ccu_reset_map { i16 708, i32 8192 }, %struct.ccu_reset_map { i16 708, i32 16384 }, %struct.ccu_reset_map { i16 708, i32 32768 }, %struct.ccu_reset_map { i16 708, i32 131072 }, %struct.ccu_reset_map { i16 708, i32 1048576 }, %struct.ccu_reset_map { i16 708, i32 2097152 }, %struct.ccu_reset_map { i16 708, i32 4194304 }, %struct.ccu_reset_map { i16 708, i32 8388608 }, %struct.ccu_reset_map { i16 708, i32 16777216 }, %struct.ccu_reset_map { i16 708, i32 33554432 }, %struct.ccu_reset_map { i16 708, i32 67108864 }, %struct.ccu_reset_map { i16 708, i32 134217728 }, %struct.ccu_reset_map { i16 708, i32 268435456 }, %struct.ccu_reset_map { i16 708, i32 536870912 }, %struct.ccu_reset_map { i16 708, i32 1073741824 }, %struct.ccu_reset_map { i16 708, i32 -2147483648 }, %struct.ccu_reset_map { i16 712, i32 1 }, %struct.ccu_reset_map { i16 720, i32 1 }, %struct.ccu_reset_map { i16 720, i32 2 }, %struct.ccu_reset_map { i16 720, i32 4 }, %struct.ccu_reset_map { i16 720, i32 64 }, %struct.ccu_reset_map { i16 720, i32 128 }, %struct.ccu_reset_map { i16 720, i32 256 }, %struct.ccu_reset_map { i16 720, i32 1024 }, %struct.ccu_reset_map { i16 720, i32 4096 }, %struct.ccu_reset_map { i16 720, i32 8192 }, %struct.ccu_reset_map { i16 720, i32 16384 }, %struct.ccu_reset_map { i16 728, i32 1 }, %struct.ccu_reset_map { i16 728, i32 2 }, %struct.ccu_reset_map { i16 728, i32 4 }, %struct.ccu_reset_map { i16 728, i32 8 }, %struct.ccu_reset_map { i16 728, i32 16 }, %struct.ccu_reset_map { i16 728, i32 32 }, %struct.ccu_reset_map { i16 728, i32 64 }, %struct.ccu_reset_map { i16 728, i32 128 }, %struct.ccu_reset_map { i16 728, i32 32768 }, %struct.ccu_reset_map { i16 728, i32 65536 }, %struct.ccu_reset_map { i16 728, i32 131072 }, %struct.ccu_reset_map { i16 728, i32 262144 }, %struct.ccu_reset_map { i16 728, i32 524288 }, %struct.ccu_reset_map { i16 728, i32 1048576 }, %struct.ccu_reset_map { i16 728, i32 2097152 }, %struct.ccu_reset_map { i16 728, i32 4194304 }, %struct.ccu_reset_map { i16 728, i32 8388608 }], align 4
@pll_audio_base_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_sdm_internal { ptr @pll_audio_sdm_table, i32 2, i32 16777216, i32 -2147483648, i16 644 }, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 128, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 } } }, align 4
@pll_video0_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 192000000, i32 1008000000, %struct.ccu_common { ptr null, i16 16, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 } } }, align 4
@pll_ve_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 24, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } } }, align 4
@pll_ddr0_clk = internal global %struct.ccu_nkm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, i32 0, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 } } }, align 4
@pll_periph0_clk = internal global %struct.ccu_nk { i16 0, i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, i32 2, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 8, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, align 4
@pll_periph0_sata_clk = internal global %struct.ccu_div { i32 16777216, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 8, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 } }, i32 3 }, align 4
@pll_periph1_clk = internal global %struct.ccu_nk { i16 0, i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, i32 2, %struct.ccu_common { ptr null, i16 44, i16 0, i32 0, i32 8, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, align 4
@pll_video1_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 192000000, i32 1008000000, %struct.ccu_common { ptr null, i16 48, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 } } }, align 4
@pll_sata_clk = internal global %struct.ccu_nkm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, i32 6, %struct.ccu_common { ptr null, i16 52, i16 0, i32 0, i32 8, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 } } }, align 4
@pll_sata_out_clk = internal global %struct.ccu_mux { i32 16384, %struct.ccu_mux_internal { i8 30, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 52, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 } } }, align 4
@pll_gpu_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 56, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 } } }, align 4
@pll_mipi_clk = internal global %struct.ccu_nkm { i32 -2134900736, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 4, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 2, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 21, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 64, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 } } }, align 4
@pll_de_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 72, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 } } }, align 4
@pll_ddr1_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 76, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 } } }, align 4
@cpu_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.42 } } }, align 4
@axi_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.47 } }, i32 0 }, align 4
@ahb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 12, i8 2, ptr null, ptr null, i8 0, ptr @ahb1_predivs, i8 1 }, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 } }, i32 0 }, align 4
@apb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 0, i32 0, ptr @apb1_div_table }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 } }, i32 0 }, align 4
@apb2_clk = internal global %struct.ccu_mp { i32 0, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 88, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 } } }, align 4
@bus_mipi_dsi_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.58 } } }, align 4
@bus_ce_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 } } }, align 4
@bus_dma_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 } } }, align 4
@bus_mmc0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 } } }, align 4
@bus_mmc1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.70 } } }, align 4
@bus_mmc2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 } } }, align 4
@bus_mmc3_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.76 } } }, align 4
@bus_nand_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 } } }, align 4
@bus_dram_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 } } }, align 4
@bus_emac_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 } } }, align 4
@bus_ts_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 } } }, align 4
@bus_hstimer_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 } } }, align 4
@bus_spi0_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.94 } } }, align 4
@bus_spi1_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.97 } } }, align 4
@bus_spi2_clk = internal global %struct.ccu_gate { i32 4194304, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.100 } } }, align 4
@bus_spi3_clk = internal global %struct.ccu_gate { i32 8388608, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 } } }, align 4
@bus_sata_clk = internal global %struct.ccu_gate { i32 16777216, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.106 } } }, align 4
@bus_otg_clk = internal global %struct.ccu_gate { i32 33554432, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.109 } } }, align 4
@bus_ehci0_clk = internal global %struct.ccu_gate { i32 67108864, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.112 } } }, align 4
@bus_ehci1_clk = internal global %struct.ccu_gate { i32 134217728, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.115 } } }, align 4
@bus_ehci2_clk = internal global %struct.ccu_gate { i32 268435456, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 } } }, align 4
@bus_ohci0_clk = internal global %struct.ccu_gate { i32 536870912, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.121 } } }, align 4
@bus_ohci1_clk = internal global %struct.ccu_gate { i32 1073741824, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 } } }, align 4
@bus_ohci2_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.127 } } }, align 4
@bus_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.130 } } }, align 4
@bus_mp_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.133 } } }, align 4
@bus_deinterlace_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.136 } } }, align 4
@bus_csi0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.139 } } }, align 4
@bus_csi1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.142 } } }, align 4
@bus_hdmi0_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 } } }, align 4
@bus_hdmi1_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.148 } } }, align 4
@bus_de_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.151 } } }, align 4
@bus_tve0_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.154 } } }, align 4
@bus_tve1_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.157 } } }, align 4
@bus_tve_top_clk = internal global %struct.ccu_gate { i32 32768, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.160 } } }, align 4
@bus_gmac_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.163 } } }, align 4
@bus_gpu_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.166 } } }, align 4
@bus_tvd0_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.169 } } }, align 4
@bus_tvd1_clk = internal global %struct.ccu_gate { i32 4194304, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.172 } } }, align 4
@bus_tvd2_clk = internal global %struct.ccu_gate { i32 8388608, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.175 } } }, align 4
@bus_tvd3_clk = internal global %struct.ccu_gate { i32 16777216, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.178 } } }, align 4
@bus_tvd_top_clk = internal global %struct.ccu_gate { i32 33554432, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.181 } } }, align 4
@bus_tcon_lcd0_clk = internal global %struct.ccu_gate { i32 67108864, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.184 } } }, align 4
@bus_tcon_lcd1_clk = internal global %struct.ccu_gate { i32 134217728, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.187 } } }, align 4
@bus_tcon_tv0_clk = internal global %struct.ccu_gate { i32 268435456, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.190 } } }, align 4
@bus_tcon_tv1_clk = internal global %struct.ccu_gate { i32 536870912, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.193 } } }, align 4
@bus_tcon_top_clk = internal global %struct.ccu_gate { i32 1073741824, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.196 } } }, align 4
@bus_codec_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.199 } } }, align 4
@bus_spdif_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.202 } } }, align 4
@bus_ac97_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.205 } } }, align 4
@bus_pio_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.208 } } }, align 4
@bus_ir0_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.211 } } }, align 4
@bus_ir1_clk = internal global %struct.ccu_gate { i32 128, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.214 } } }, align 4
@bus_ths_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.217 } } }, align 4
@bus_keypad_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.220 } } }, align 4
@bus_i2s0_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.223 } } }, align 4
@bus_i2s1_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.226 } } }, align 4
@bus_i2s2_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.229 } } }, align 4
@bus_i2c0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.232 } } }, align 4
@bus_i2c1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.235 } } }, align 4
@bus_i2c2_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.238 } } }, align 4
@bus_i2c3_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.241 } } }, align 4
@bus_can_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.244 } } }, align 4
@bus_scr_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.247 } } }, align 4
@bus_ps20_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.250 } } }, align 4
@bus_ps21_clk = internal global %struct.ccu_gate { i32 128, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.253 } } }, align 4
@bus_i2c4_clk = internal global %struct.ccu_gate { i32 32768, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.256 } } }, align 4
@bus_uart0_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.259 } } }, align 4
@bus_uart1_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.262 } } }, align 4
@bus_uart2_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.265 } } }, align 4
@bus_uart3_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.268 } } }, align 4
@bus_uart4_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.271 } } }, align 4
@bus_uart5_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.274 } } }, align 4
@bus_uart6_clk = internal global %struct.ccu_gate { i32 4194304, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.277 } } }, align 4
@bus_uart7_clk = internal global %struct.ccu_gate { i32 8388608, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.280 } } }, align 4
@bus_dbg_clk = internal global %struct.ccu_gate { i32 128, %struct.ccu_common { ptr null, i16 112, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.283 } } }, align 4
@ths_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 116, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.285 } }, i32 0 }, align 4
@nand_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 128, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.287 } } }, align 4
@mmc0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.289 } } }, align 4
@mmc1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.291 } } }, align 4
@mmc2_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.293 } } }, align 4
@mmc3_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 148, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.295 } } }, align 4
@ts_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 152, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.297 } } }, align 4
@ce_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 156, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.299 } } }, align 4
@spi0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 160, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.302 } } }, align 4
@spi1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 164, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.304 } } }, align 4
@spi2_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 168, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.306 } } }, align 4
@spi3_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 172, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.308 } } }, align 4
@i2s0_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 176, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.310 } } }, align 4
@i2s1_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 180, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.316 } } }, align 4
@i2s2_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 184, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.318 } } }, align 4
@ac97_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 188, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.320 } } }, align 4
@spdif_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 192, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.322 } } }, align 4
@keypad_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr @keypad_table, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 196, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.324 } } }, align 4
@sata_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 24, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 200, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.326 } } }, align 4
@usb_phy0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.330 } } }, align 4
@usb_phy1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.333 } } }, align 4
@usb_phy2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.336 } } }, align 4
@usb_ohci0_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.340 } } }, align 4
@usb_ohci1_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.343 } } }, align 4
@usb_ohci2_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.346 } } }, align 4
@ir0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 208, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.348 } } }, align 4
@ir1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 212, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.350 } } }, align 4
@dram_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 20, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 244, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.352 } }, i32 0 }, align 4
@dram_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.355 } } }, align 4
@dram_csi0_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.358 } } }, align 4
@dram_csi1_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.361 } } }, align 4
@dram_ts_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.364 } } }, align 4
@dram_tvd_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.367 } } }, align 4
@dram_mp_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.370 } } }, align 4
@dram_deinterlace_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.373 } } }, align 4
@de_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 260, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.375 } }, i32 0 }, align 4
@mp_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 264, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.377 } }, i32 0 }, align 4
@tcon_lcd0_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 272, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.379 } } }, align 4
@tcon_lcd1_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 276, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.383 } } }, align 4
@tcon_tv0_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 280, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.385 } }, i32 0 }, align 4
@tcon_tv1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 284, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.387 } }, i32 0 }, align 4
@deinterlace_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 292, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.389 } }, i32 0 }, align 4
@csi1_mclk_clk = internal global %struct.ccu_div { i32 32768, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 8, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 304, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.391 } }, i32 0 }, align 4
@csi_sclk_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 308, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.393 } }, i32 0 }, align 4
@csi0_mclk_clk = internal global %struct.ccu_div { i32 32768, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 8, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 308, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.395 } }, i32 0 }, align 4
@ve_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 316, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.398 } }, i32 0 }, align 4
@codec_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 320, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.401 } } }, align 4
@avs_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 324, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.404 } } }, align 4
@hdmi_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 336, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.406 } }, i32 0 }, align 4
@hdmi_slow_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 340, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.409 } } }, align 4
@mbus_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 348, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.411 } } }, align 4
@dsi_dphy_clk = internal global %struct.ccu_div { i32 32768, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 8, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 360, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.413 } }, i32 0 }, align 4
@tve0_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 384, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.415 } }, i32 0 }, align 4
@tve1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 388, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.417 } }, i32 0 }, align 4
@tvd0_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 392, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.419 } }, i32 0 }, align 4
@tvd1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 396, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.421 } }, i32 0 }, align 4
@tvd2_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 400, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.423 } }, i32 0 }, align 4
@tvd3_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 404, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.425 } }, i32 0 }, align 4
@gpu_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.428 } }, i32 0 }, align 4
@outa_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 8, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 20, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr @out_predivs, i8 1, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 496, i16 0, i32 0, i32 4, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.430 } } }, align 4
@outb_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 8, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 20, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr @out_predivs, i8 1, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 500, i16 0, i32 0, i32 4, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.432 } } }, align 4
@pll_audio_sdm_table = internal global [2 x %struct.ccu_sdm_setting] [%struct.ccu_sdm_setting { i32 22579200, i32 -1073672828, i32 8, i32 7 }, %struct.ccu_sdm_setting { i32 24576000, i32 -1073697790, i32 14, i32 14 }], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pll-audio-base\00", align 1
@ccu_nm_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"osc24M\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.3 = internal global %struct.clk_init_data { ptr @.str.1, ptr @ccu_nm_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"pll-video0\00", align 1
@.compoundliteral.5 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.6 = internal global %struct.clk_init_data { ptr @.str.4, ptr @ccu_nm_ops, ptr @.compoundliteral.5, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"pll-ve\00", align 1
@.compoundliteral.8 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.9 = internal global %struct.clk_init_data { ptr @.str.7, ptr @ccu_nm_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"pll-ddr0\00", align 1
@ccu_nkm_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.11 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.12 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_nkm_ops, ptr @.compoundliteral.11, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"pll-periph0\00", align 1
@ccu_nk_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.14 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.15 = internal global %struct.clk_init_data { ptr @.str.13, ptr @ccu_nk_ops, ptr @.compoundliteral.14, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"pll-periph0-sata\00", align 1
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.17 = internal global [1 x ptr] [ptr @.str.13], align 4
@.compoundliteral.18 = internal global %struct.clk_init_data { ptr @.str.16, ptr @ccu_div_ops, ptr @.compoundliteral.17, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"pll-periph1\00", align 1
@.compoundliteral.20 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.21 = internal global %struct.clk_init_data { ptr @.str.19, ptr @ccu_nk_ops, ptr @.compoundliteral.20, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"pll-video1\00", align 1
@.compoundliteral.23 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.24 = internal global %struct.clk_init_data { ptr @.str.22, ptr @ccu_nm_ops, ptr @.compoundliteral.23, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"pll-sata\00", align 1
@.compoundliteral.26 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.27 = internal global %struct.clk_init_data { ptr @.str.25, ptr @ccu_nkm_ops, ptr @.compoundliteral.26, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.28 = private unnamed_addr constant [13 x i8] c"pll-sata-out\00", align 1
@ccu_mux_ops = external dso_local constant %struct.clk_ops, align 4
@pll_sata_out_parents = internal constant [2 x ptr] [ptr @.str.25, ptr @.str.16], align 4
@.compoundliteral.29 = internal global %struct.clk_init_data { ptr @.str.28, ptr @ccu_mux_ops, ptr @pll_sata_out_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.30 = private unnamed_addr constant [8 x i8] c"pll-gpu\00", align 1
@.compoundliteral.31 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.32 = internal global %struct.clk_init_data { ptr @.str.30, ptr @ccu_nm_ops, ptr @.compoundliteral.31, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"pll-mipi\00", align 1
@pll_mipi_parents = internal constant [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.34 = internal global %struct.clk_init_data { ptr @.str.33, ptr @ccu_nkm_ops, ptr @pll_mipi_parents, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"pll-de\00", align 1
@.compoundliteral.36 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.37 = internal global %struct.clk_init_data { ptr @.str.35, ptr @ccu_nm_ops, ptr @.compoundliteral.36, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.38 = private unnamed_addr constant [9 x i8] c"pll-ddr1\00", align 1
@.compoundliteral.39 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.40 = internal global %struct.clk_init_data { ptr @.str.38, ptr @ccu_nm_ops, ptr @.compoundliteral.39, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.41 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@cpu_parents = internal constant [4 x ptr] [ptr @.str.43, ptr @.str.2, ptr @.str.44, ptr @.str.44], align 4
@.compoundliteral.42 = internal global %struct.clk_init_data { ptr @.str.41, ptr @ccu_mux_ops, ptr @cpu_parents, ptr null, ptr null, i8 4, i32 2052 }, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"osc32k\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"pll-cpu\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.compoundliteral.46 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.47 = internal global %struct.clk_init_data { ptr @.str.45, ptr @ccu_div_ops, ptr @.compoundliteral.46, ptr null, ptr null, i8 1, i32 0 }, align 4
@ahb1_predivs = internal constant [1 x %struct.ccu_mux_var_prediv] [%struct.ccu_mux_var_prediv { i8 3, i8 6, i8 2 }], align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"ahb1\00", align 1
@ahb1_parents = internal constant [4 x ptr] [ptr @.str.43, ptr @.str.2, ptr @.str.45, ptr @.str.13], align 4
@.compoundliteral.49 = internal global %struct.clk_init_data { ptr @.str.48, ptr @ccu_div_ops, ptr @ahb1_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@apb1_div_table = internal global [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@.str.50 = private unnamed_addr constant [5 x i8] c"apb1\00", align 1
@.compoundliteral.51 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.52 = internal global %struct.clk_init_data { ptr @.str.50, ptr @ccu_div_ops, ptr @.compoundliteral.51, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.53 = private unnamed_addr constant [5 x i8] c"apb2\00", align 1
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@apb2_parents = internal constant [4 x ptr] [ptr @.str.43, ptr @.str.2, ptr @.str.55, ptr @.str.55], align 4
@.compoundliteral.54 = internal global %struct.clk_init_data { ptr @.str.53, ptr @ccu_mp_ops, ptr @apb2_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.55 = private unnamed_addr constant [15 x i8] c"pll-periph0-2x\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"bus-mipi-dsi\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.57 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.58 = internal global %struct.clk_init_data { ptr @.str.56, ptr @ccu_gate_ops, ptr @.compoundliteral.57, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.59 = private unnamed_addr constant [7 x i8] c"bus-ce\00", align 1
@.compoundliteral.60 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.61 = internal global %struct.clk_init_data { ptr @.str.59, ptr @ccu_gate_ops, ptr @.compoundliteral.60, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.62 = private unnamed_addr constant [8 x i8] c"bus-dma\00", align 1
@.compoundliteral.63 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.64 = internal global %struct.clk_init_data { ptr @.str.62, ptr @ccu_gate_ops, ptr @.compoundliteral.63, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.65 = private unnamed_addr constant [9 x i8] c"bus-mmc0\00", align 1
@.compoundliteral.66 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.67 = internal global %struct.clk_init_data { ptr @.str.65, ptr @ccu_gate_ops, ptr @.compoundliteral.66, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.68 = private unnamed_addr constant [9 x i8] c"bus-mmc1\00", align 1
@.compoundliteral.69 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.70 = internal global %struct.clk_init_data { ptr @.str.68, ptr @ccu_gate_ops, ptr @.compoundliteral.69, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.71 = private unnamed_addr constant [9 x i8] c"bus-mmc2\00", align 1
@.compoundliteral.72 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.73 = internal global %struct.clk_init_data { ptr @.str.71, ptr @ccu_gate_ops, ptr @.compoundliteral.72, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.74 = private unnamed_addr constant [9 x i8] c"bus-mmc3\00", align 1
@.compoundliteral.75 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.76 = internal global %struct.clk_init_data { ptr @.str.74, ptr @ccu_gate_ops, ptr @.compoundliteral.75, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.77 = private unnamed_addr constant [9 x i8] c"bus-nand\00", align 1
@.compoundliteral.78 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.79 = internal global %struct.clk_init_data { ptr @.str.77, ptr @ccu_gate_ops, ptr @.compoundliteral.78, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"bus-dram\00", align 1
@.compoundliteral.81 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.82 = internal global %struct.clk_init_data { ptr @.str.80, ptr @ccu_gate_ops, ptr @.compoundliteral.81, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.83 = private unnamed_addr constant [9 x i8] c"bus-emac\00", align 1
@.compoundliteral.84 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.85 = internal global %struct.clk_init_data { ptr @.str.83, ptr @ccu_gate_ops, ptr @.compoundliteral.84, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.86 = private unnamed_addr constant [7 x i8] c"bus-ts\00", align 1
@.compoundliteral.87 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.88 = internal global %struct.clk_init_data { ptr @.str.86, ptr @ccu_gate_ops, ptr @.compoundliteral.87, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.89 = private unnamed_addr constant [12 x i8] c"bus-hstimer\00", align 1
@.compoundliteral.90 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.91 = internal global %struct.clk_init_data { ptr @.str.89, ptr @ccu_gate_ops, ptr @.compoundliteral.90, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.92 = private unnamed_addr constant [9 x i8] c"bus-spi0\00", align 1
@.compoundliteral.93 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.94 = internal global %struct.clk_init_data { ptr @.str.92, ptr @ccu_gate_ops, ptr @.compoundliteral.93, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.95 = private unnamed_addr constant [9 x i8] c"bus-spi1\00", align 1
@.compoundliteral.96 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.97 = internal global %struct.clk_init_data { ptr @.str.95, ptr @ccu_gate_ops, ptr @.compoundliteral.96, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.98 = private unnamed_addr constant [9 x i8] c"bus-spi2\00", align 1
@.compoundliteral.99 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.100 = internal global %struct.clk_init_data { ptr @.str.98, ptr @ccu_gate_ops, ptr @.compoundliteral.99, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.101 = private unnamed_addr constant [9 x i8] c"bus-spi3\00", align 1
@.compoundliteral.102 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.103 = internal global %struct.clk_init_data { ptr @.str.101, ptr @ccu_gate_ops, ptr @.compoundliteral.102, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.104 = private unnamed_addr constant [9 x i8] c"bus-sata\00", align 1
@.compoundliteral.105 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.106 = internal global %struct.clk_init_data { ptr @.str.104, ptr @ccu_gate_ops, ptr @.compoundliteral.105, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.107 = private unnamed_addr constant [8 x i8] c"bus-otg\00", align 1
@.compoundliteral.108 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.109 = internal global %struct.clk_init_data { ptr @.str.107, ptr @ccu_gate_ops, ptr @.compoundliteral.108, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.110 = private unnamed_addr constant [10 x i8] c"bus-ehci0\00", align 1
@.compoundliteral.111 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.112 = internal global %struct.clk_init_data { ptr @.str.110, ptr @ccu_gate_ops, ptr @.compoundliteral.111, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.113 = private unnamed_addr constant [10 x i8] c"bus-ehci1\00", align 1
@.compoundliteral.114 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.115 = internal global %struct.clk_init_data { ptr @.str.113, ptr @ccu_gate_ops, ptr @.compoundliteral.114, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.116 = private unnamed_addr constant [10 x i8] c"bus-ehci2\00", align 1
@.compoundliteral.117 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.118 = internal global %struct.clk_init_data { ptr @.str.116, ptr @ccu_gate_ops, ptr @.compoundliteral.117, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.119 = private unnamed_addr constant [10 x i8] c"bus-ohci0\00", align 1
@.compoundliteral.120 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.121 = internal global %struct.clk_init_data { ptr @.str.119, ptr @ccu_gate_ops, ptr @.compoundliteral.120, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.122 = private unnamed_addr constant [10 x i8] c"bus-ohci1\00", align 1
@.compoundliteral.123 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.124 = internal global %struct.clk_init_data { ptr @.str.122, ptr @ccu_gate_ops, ptr @.compoundliteral.123, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.125 = private unnamed_addr constant [10 x i8] c"bus-ohci2\00", align 1
@.compoundliteral.126 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.127 = internal global %struct.clk_init_data { ptr @.str.125, ptr @ccu_gate_ops, ptr @.compoundliteral.126, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.128 = private unnamed_addr constant [7 x i8] c"bus-ve\00", align 1
@.compoundliteral.129 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.130 = internal global %struct.clk_init_data { ptr @.str.128, ptr @ccu_gate_ops, ptr @.compoundliteral.129, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.131 = private unnamed_addr constant [7 x i8] c"bus-mp\00", align 1
@.compoundliteral.132 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.133 = internal global %struct.clk_init_data { ptr @.str.131, ptr @ccu_gate_ops, ptr @.compoundliteral.132, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.134 = private unnamed_addr constant [16 x i8] c"bus-deinterlace\00", align 1
@.compoundliteral.135 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.136 = internal global %struct.clk_init_data { ptr @.str.134, ptr @ccu_gate_ops, ptr @.compoundliteral.135, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.137 = private unnamed_addr constant [9 x i8] c"bus-csi0\00", align 1
@.compoundliteral.138 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.139 = internal global %struct.clk_init_data { ptr @.str.137, ptr @ccu_gate_ops, ptr @.compoundliteral.138, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.140 = private unnamed_addr constant [9 x i8] c"bus-csi1\00", align 1
@.compoundliteral.141 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.142 = internal global %struct.clk_init_data { ptr @.str.140, ptr @ccu_gate_ops, ptr @.compoundliteral.141, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.143 = private unnamed_addr constant [10 x i8] c"bus-hdmi0\00", align 1
@.compoundliteral.144 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.145 = internal global %struct.clk_init_data { ptr @.str.143, ptr @ccu_gate_ops, ptr @.compoundliteral.144, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.146 = private unnamed_addr constant [10 x i8] c"bus-hdmi1\00", align 1
@.compoundliteral.147 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.148 = internal global %struct.clk_init_data { ptr @.str.146, ptr @ccu_gate_ops, ptr @.compoundliteral.147, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.149 = private unnamed_addr constant [7 x i8] c"bus-de\00", align 1
@.compoundliteral.150 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.151 = internal global %struct.clk_init_data { ptr @.str.149, ptr @ccu_gate_ops, ptr @.compoundliteral.150, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.152 = private unnamed_addr constant [9 x i8] c"bus-tve0\00", align 1
@.compoundliteral.153 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.154 = internal global %struct.clk_init_data { ptr @.str.152, ptr @ccu_gate_ops, ptr @.compoundliteral.153, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.155 = private unnamed_addr constant [9 x i8] c"bus-tve1\00", align 1
@.compoundliteral.156 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.157 = internal global %struct.clk_init_data { ptr @.str.155, ptr @ccu_gate_ops, ptr @.compoundliteral.156, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.158 = private unnamed_addr constant [12 x i8] c"bus-tve-top\00", align 1
@.compoundliteral.159 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.160 = internal global %struct.clk_init_data { ptr @.str.158, ptr @ccu_gate_ops, ptr @.compoundliteral.159, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.161 = private unnamed_addr constant [9 x i8] c"bus-gmac\00", align 1
@.compoundliteral.162 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.163 = internal global %struct.clk_init_data { ptr @.str.161, ptr @ccu_gate_ops, ptr @.compoundliteral.162, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.164 = private unnamed_addr constant [8 x i8] c"bus-gpu\00", align 1
@.compoundliteral.165 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.166 = internal global %struct.clk_init_data { ptr @.str.164, ptr @ccu_gate_ops, ptr @.compoundliteral.165, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.167 = private unnamed_addr constant [9 x i8] c"bus-tvd0\00", align 1
@.compoundliteral.168 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.169 = internal global %struct.clk_init_data { ptr @.str.167, ptr @ccu_gate_ops, ptr @.compoundliteral.168, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.170 = private unnamed_addr constant [9 x i8] c"bus-tvd1\00", align 1
@.compoundliteral.171 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.172 = internal global %struct.clk_init_data { ptr @.str.170, ptr @ccu_gate_ops, ptr @.compoundliteral.171, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.173 = private unnamed_addr constant [9 x i8] c"bus-tvd2\00", align 1
@.compoundliteral.174 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.175 = internal global %struct.clk_init_data { ptr @.str.173, ptr @ccu_gate_ops, ptr @.compoundliteral.174, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.176 = private unnamed_addr constant [9 x i8] c"bus-tvd3\00", align 1
@.compoundliteral.177 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.178 = internal global %struct.clk_init_data { ptr @.str.176, ptr @ccu_gate_ops, ptr @.compoundliteral.177, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.179 = private unnamed_addr constant [12 x i8] c"bus-tvd-top\00", align 1
@.compoundliteral.180 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.181 = internal global %struct.clk_init_data { ptr @.str.179, ptr @ccu_gate_ops, ptr @.compoundliteral.180, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.182 = private unnamed_addr constant [14 x i8] c"bus-tcon-lcd0\00", align 1
@.compoundliteral.183 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.184 = internal global %struct.clk_init_data { ptr @.str.182, ptr @ccu_gate_ops, ptr @.compoundliteral.183, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.185 = private unnamed_addr constant [14 x i8] c"bus-tcon-lcd1\00", align 1
@.compoundliteral.186 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.187 = internal global %struct.clk_init_data { ptr @.str.185, ptr @ccu_gate_ops, ptr @.compoundliteral.186, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.188 = private unnamed_addr constant [13 x i8] c"bus-tcon-tv0\00", align 1
@.compoundliteral.189 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.190 = internal global %struct.clk_init_data { ptr @.str.188, ptr @ccu_gate_ops, ptr @.compoundliteral.189, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.191 = private unnamed_addr constant [13 x i8] c"bus-tcon-tv1\00", align 1
@.compoundliteral.192 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.193 = internal global %struct.clk_init_data { ptr @.str.191, ptr @ccu_gate_ops, ptr @.compoundliteral.192, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.194 = private unnamed_addr constant [13 x i8] c"bus-tcon-top\00", align 1
@.compoundliteral.195 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.196 = internal global %struct.clk_init_data { ptr @.str.194, ptr @ccu_gate_ops, ptr @.compoundliteral.195, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.197 = private unnamed_addr constant [10 x i8] c"bus-codec\00", align 1
@.compoundliteral.198 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.199 = internal global %struct.clk_init_data { ptr @.str.197, ptr @ccu_gate_ops, ptr @.compoundliteral.198, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.200 = private unnamed_addr constant [10 x i8] c"bus-spdif\00", align 1
@.compoundliteral.201 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.202 = internal global %struct.clk_init_data { ptr @.str.200, ptr @ccu_gate_ops, ptr @.compoundliteral.201, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.203 = private unnamed_addr constant [9 x i8] c"bus-ac97\00", align 1
@.compoundliteral.204 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.205 = internal global %struct.clk_init_data { ptr @.str.203, ptr @ccu_gate_ops, ptr @.compoundliteral.204, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.206 = private unnamed_addr constant [8 x i8] c"bus-pio\00", align 1
@.compoundliteral.207 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.208 = internal global %struct.clk_init_data { ptr @.str.206, ptr @ccu_gate_ops, ptr @.compoundliteral.207, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.209 = private unnamed_addr constant [8 x i8] c"bus-ir0\00", align 1
@.compoundliteral.210 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.211 = internal global %struct.clk_init_data { ptr @.str.209, ptr @ccu_gate_ops, ptr @.compoundliteral.210, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.212 = private unnamed_addr constant [8 x i8] c"bus-ir1\00", align 1
@.compoundliteral.213 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.214 = internal global %struct.clk_init_data { ptr @.str.212, ptr @ccu_gate_ops, ptr @.compoundliteral.213, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.215 = private unnamed_addr constant [8 x i8] c"bus-ths\00", align 1
@.compoundliteral.216 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.217 = internal global %struct.clk_init_data { ptr @.str.215, ptr @ccu_gate_ops, ptr @.compoundliteral.216, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.218 = private unnamed_addr constant [11 x i8] c"bus-keypad\00", align 1
@.compoundliteral.219 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.220 = internal global %struct.clk_init_data { ptr @.str.218, ptr @ccu_gate_ops, ptr @.compoundliteral.219, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.221 = private unnamed_addr constant [9 x i8] c"bus-i2s0\00", align 1
@.compoundliteral.222 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.223 = internal global %struct.clk_init_data { ptr @.str.221, ptr @ccu_gate_ops, ptr @.compoundliteral.222, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.224 = private unnamed_addr constant [9 x i8] c"bus-i2s1\00", align 1
@.compoundliteral.225 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.226 = internal global %struct.clk_init_data { ptr @.str.224, ptr @ccu_gate_ops, ptr @.compoundliteral.225, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.227 = private unnamed_addr constant [9 x i8] c"bus-i2s2\00", align 1
@.compoundliteral.228 = internal global [1 x ptr] [ptr @.str.50], align 4
@.compoundliteral.229 = internal global %struct.clk_init_data { ptr @.str.227, ptr @ccu_gate_ops, ptr @.compoundliteral.228, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.230 = private unnamed_addr constant [9 x i8] c"bus-i2c0\00", align 1
@.compoundliteral.231 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.232 = internal global %struct.clk_init_data { ptr @.str.230, ptr @ccu_gate_ops, ptr @.compoundliteral.231, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.233 = private unnamed_addr constant [9 x i8] c"bus-i2c1\00", align 1
@.compoundliteral.234 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.235 = internal global %struct.clk_init_data { ptr @.str.233, ptr @ccu_gate_ops, ptr @.compoundliteral.234, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.236 = private unnamed_addr constant [9 x i8] c"bus-i2c2\00", align 1
@.compoundliteral.237 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.238 = internal global %struct.clk_init_data { ptr @.str.236, ptr @ccu_gate_ops, ptr @.compoundliteral.237, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.239 = private unnamed_addr constant [9 x i8] c"bus-i2c3\00", align 1
@.compoundliteral.240 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.241 = internal global %struct.clk_init_data { ptr @.str.239, ptr @ccu_gate_ops, ptr @.compoundliteral.240, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.242 = private unnamed_addr constant [8 x i8] c"bus-can\00", align 1
@.compoundliteral.243 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.244 = internal global %struct.clk_init_data { ptr @.str.242, ptr @ccu_gate_ops, ptr @.compoundliteral.243, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.245 = private unnamed_addr constant [8 x i8] c"bus-scr\00", align 1
@.compoundliteral.246 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.247 = internal global %struct.clk_init_data { ptr @.str.245, ptr @ccu_gate_ops, ptr @.compoundliteral.246, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.248 = private unnamed_addr constant [9 x i8] c"bus-ps20\00", align 1
@.compoundliteral.249 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.250 = internal global %struct.clk_init_data { ptr @.str.248, ptr @ccu_gate_ops, ptr @.compoundliteral.249, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.251 = private unnamed_addr constant [9 x i8] c"bus-ps21\00", align 1
@.compoundliteral.252 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.253 = internal global %struct.clk_init_data { ptr @.str.251, ptr @ccu_gate_ops, ptr @.compoundliteral.252, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.254 = private unnamed_addr constant [9 x i8] c"bus-i2c4\00", align 1
@.compoundliteral.255 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.256 = internal global %struct.clk_init_data { ptr @.str.254, ptr @ccu_gate_ops, ptr @.compoundliteral.255, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.257 = private unnamed_addr constant [10 x i8] c"bus-uart0\00", align 1
@.compoundliteral.258 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.259 = internal global %struct.clk_init_data { ptr @.str.257, ptr @ccu_gate_ops, ptr @.compoundliteral.258, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.260 = private unnamed_addr constant [10 x i8] c"bus-uart1\00", align 1
@.compoundliteral.261 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.262 = internal global %struct.clk_init_data { ptr @.str.260, ptr @ccu_gate_ops, ptr @.compoundliteral.261, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.263 = private unnamed_addr constant [10 x i8] c"bus-uart2\00", align 1
@.compoundliteral.264 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.265 = internal global %struct.clk_init_data { ptr @.str.263, ptr @ccu_gate_ops, ptr @.compoundliteral.264, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.266 = private unnamed_addr constant [10 x i8] c"bus-uart3\00", align 1
@.compoundliteral.267 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.268 = internal global %struct.clk_init_data { ptr @.str.266, ptr @ccu_gate_ops, ptr @.compoundliteral.267, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.269 = private unnamed_addr constant [10 x i8] c"bus-uart4\00", align 1
@.compoundliteral.270 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.271 = internal global %struct.clk_init_data { ptr @.str.269, ptr @ccu_gate_ops, ptr @.compoundliteral.270, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.272 = private unnamed_addr constant [10 x i8] c"bus-uart5\00", align 1
@.compoundliteral.273 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.274 = internal global %struct.clk_init_data { ptr @.str.272, ptr @ccu_gate_ops, ptr @.compoundliteral.273, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.275 = private unnamed_addr constant [10 x i8] c"bus-uart6\00", align 1
@.compoundliteral.276 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.277 = internal global %struct.clk_init_data { ptr @.str.275, ptr @ccu_gate_ops, ptr @.compoundliteral.276, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.278 = private unnamed_addr constant [10 x i8] c"bus-uart7\00", align 1
@.compoundliteral.279 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.280 = internal global %struct.clk_init_data { ptr @.str.278, ptr @ccu_gate_ops, ptr @.compoundliteral.279, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.281 = private unnamed_addr constant [8 x i8] c"bus-dbg\00", align 1
@.compoundliteral.282 = internal global [1 x ptr] [ptr @.str.48], align 4
@.compoundliteral.283 = internal global %struct.clk_init_data { ptr @.str.281, ptr @ccu_gate_ops, ptr @.compoundliteral.282, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.284 = private unnamed_addr constant [4 x i8] c"ths\00", align 1
@ths_parents = internal constant [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.285 = internal global %struct.clk_init_data { ptr @.str.284, ptr @ccu_div_ops, ptr @ths_parents, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.286 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@mod0_default_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.13, ptr @.str.19], align 4
@.compoundliteral.287 = internal global %struct.clk_init_data { ptr @.str.286, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.288 = private unnamed_addr constant [5 x i8] c"mmc0\00", align 1
@.compoundliteral.289 = internal global %struct.clk_init_data { ptr @.str.288, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.290 = private unnamed_addr constant [5 x i8] c"mmc1\00", align 1
@.compoundliteral.291 = internal global %struct.clk_init_data { ptr @.str.290, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.292 = private unnamed_addr constant [5 x i8] c"mmc2\00", align 1
@.compoundliteral.293 = internal global %struct.clk_init_data { ptr @.str.292, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.294 = private unnamed_addr constant [5 x i8] c"mmc3\00", align 1
@.compoundliteral.295 = internal global %struct.clk_init_data { ptr @.str.294, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.296 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@ts_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.13], align 4
@.compoundliteral.297 = internal global %struct.clk_init_data { ptr @.str.296, ptr @ccu_mp_ops, ptr @ts_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.298 = private unnamed_addr constant [3 x i8] c"ce\00", align 1
@ce_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.55, ptr @.str.300], align 4
@.compoundliteral.299 = internal global %struct.clk_init_data { ptr @.str.298, ptr @ccu_mp_ops, ptr @ce_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.300 = private unnamed_addr constant [15 x i8] c"pll-periph1-2x\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.compoundliteral.302 = internal global %struct.clk_init_data { ptr @.str.301, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.303 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.compoundliteral.304 = internal global %struct.clk_init_data { ptr @.str.303, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.305 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@.compoundliteral.306 = internal global %struct.clk_init_data { ptr @.str.305, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.307 = private unnamed_addr constant [5 x i8] c"spi3\00", align 1
@.compoundliteral.308 = internal global %struct.clk_init_data { ptr @.str.307, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.309 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@i2s_parents = internal constant [4 x ptr] [ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314], align 4
@.compoundliteral.310 = internal global %struct.clk_init_data { ptr @.str.309, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.311 = private unnamed_addr constant [13 x i8] c"pll-audio-8x\00", align 1
@.str.312 = private unnamed_addr constant [13 x i8] c"pll-audio-4x\00", align 1
@.str.313 = private unnamed_addr constant [13 x i8] c"pll-audio-2x\00", align 1
@.str.314 = private unnamed_addr constant [10 x i8] c"pll-audio\00", align 1
@.str.315 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.compoundliteral.316 = internal global %struct.clk_init_data { ptr @.str.315, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.317 = private unnamed_addr constant [5 x i8] c"i2s2\00", align 1
@.compoundliteral.318 = internal global %struct.clk_init_data { ptr @.str.317, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.319 = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@.compoundliteral.320 = internal global %struct.clk_init_data { ptr @.str.319, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.321 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.compoundliteral.322 = internal global %struct.clk_init_data { ptr @.str.321, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@keypad_table = internal constant [2 x i8] c"\00\02", align 1
@.str.323 = private unnamed_addr constant [7 x i8] c"keypad\00", align 1
@keypad_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.43], align 4
@.compoundliteral.324 = internal global %struct.clk_init_data { ptr @.str.323, ptr @ccu_mp_ops, ptr @keypad_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.325 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@sata_parents = internal constant [2 x ptr] [ptr @.str.28, ptr @.str.327], align 4
@.compoundliteral.326 = internal global %struct.clk_init_data { ptr @.str.325, ptr @ccu_mux_ops, ptr @sata_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.327 = private unnamed_addr constant [9 x i8] c"sata-ext\00", align 1
@.str.328 = private unnamed_addr constant [9 x i8] c"usb-phy0\00", align 1
@.compoundliteral.329 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.330 = internal global %struct.clk_init_data { ptr @.str.328, ptr @ccu_gate_ops, ptr @.compoundliteral.329, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.331 = private unnamed_addr constant [9 x i8] c"usb-phy1\00", align 1
@.compoundliteral.332 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.333 = internal global %struct.clk_init_data { ptr @.str.331, ptr @ccu_gate_ops, ptr @.compoundliteral.332, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.334 = private unnamed_addr constant [9 x i8] c"usb-phy2\00", align 1
@.compoundliteral.335 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.336 = internal global %struct.clk_init_data { ptr @.str.334, ptr @ccu_gate_ops, ptr @.compoundliteral.335, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.337 = private unnamed_addr constant [10 x i8] c"usb-ohci0\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"osc12M\00", align 1
@.compoundliteral.339 = internal global [1 x ptr] [ptr @.str.338], align 4
@.compoundliteral.340 = internal global %struct.clk_init_data { ptr @.str.337, ptr @ccu_gate_ops, ptr @.compoundliteral.339, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.341 = private unnamed_addr constant [10 x i8] c"usb-ohci1\00", align 1
@.compoundliteral.342 = internal global [1 x ptr] [ptr @.str.338], align 4
@.compoundliteral.343 = internal global %struct.clk_init_data { ptr @.str.341, ptr @ccu_gate_ops, ptr @.compoundliteral.342, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.344 = private unnamed_addr constant [10 x i8] c"usb-ohci2\00", align 1
@.compoundliteral.345 = internal global [1 x ptr] [ptr @.str.338], align 4
@.compoundliteral.346 = internal global %struct.clk_init_data { ptr @.str.344, ptr @ccu_gate_ops, ptr @.compoundliteral.345, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.347 = private unnamed_addr constant [4 x i8] c"ir0\00", align 1
@ir_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.13, ptr @.str.19, ptr @.str.43], align 4
@.compoundliteral.348 = internal global %struct.clk_init_data { ptr @.str.347, ptr @ccu_mp_ops, ptr @ir_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.349 = private unnamed_addr constant [4 x i8] c"ir1\00", align 1
@.compoundliteral.350 = internal global %struct.clk_init_data { ptr @.str.349, ptr @ccu_mp_ops, ptr @ir_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.351 = private unnamed_addr constant [5 x i8] c"dram\00", align 1
@dram_parents = internal constant [2 x ptr] [ptr @.str.10, ptr @.str.38], align 4
@.compoundliteral.352 = internal global %struct.clk_init_data { ptr @.str.351, ptr @ccu_div_ops, ptr @dram_parents, ptr null, ptr null, i8 2, i32 2048 }, align 4
@.str.353 = private unnamed_addr constant [8 x i8] c"dram-ve\00", align 1
@.compoundliteral.354 = internal global [1 x ptr] [ptr @.str.351], align 4
@.compoundliteral.355 = internal global %struct.clk_init_data { ptr @.str.353, ptr @ccu_gate_ops, ptr @.compoundliteral.354, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.356 = private unnamed_addr constant [10 x i8] c"dram-csi0\00", align 1
@.compoundliteral.357 = internal global [1 x ptr] [ptr @.str.351], align 4
@.compoundliteral.358 = internal global %struct.clk_init_data { ptr @.str.356, ptr @ccu_gate_ops, ptr @.compoundliteral.357, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.359 = private unnamed_addr constant [10 x i8] c"dram-csi1\00", align 1
@.compoundliteral.360 = internal global [1 x ptr] [ptr @.str.351], align 4
@.compoundliteral.361 = internal global %struct.clk_init_data { ptr @.str.359, ptr @ccu_gate_ops, ptr @.compoundliteral.360, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.362 = private unnamed_addr constant [8 x i8] c"dram-ts\00", align 1
@.compoundliteral.363 = internal global [1 x ptr] [ptr @.str.351], align 4
@.compoundliteral.364 = internal global %struct.clk_init_data { ptr @.str.362, ptr @ccu_gate_ops, ptr @.compoundliteral.363, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.365 = private unnamed_addr constant [9 x i8] c"dram-tvd\00", align 1
@.compoundliteral.366 = internal global [1 x ptr] [ptr @.str.351], align 4
@.compoundliteral.367 = internal global %struct.clk_init_data { ptr @.str.365, ptr @ccu_gate_ops, ptr @.compoundliteral.366, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.368 = private unnamed_addr constant [8 x i8] c"dram-mp\00", align 1
@.compoundliteral.369 = internal global [1 x ptr] [ptr @.str.351], align 4
@.compoundliteral.370 = internal global %struct.clk_init_data { ptr @.str.368, ptr @ccu_gate_ops, ptr @.compoundliteral.369, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.371 = private unnamed_addr constant [17 x i8] c"dram-deinterlace\00", align 1
@.compoundliteral.372 = internal global [1 x ptr] [ptr @.str.351], align 4
@.compoundliteral.373 = internal global %struct.clk_init_data { ptr @.str.371, ptr @ccu_gate_ops, ptr @.compoundliteral.372, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.374 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@de_parents = internal constant [2 x ptr] [ptr @.str.55, ptr @.str.35], align 4
@.compoundliteral.375 = internal global %struct.clk_init_data { ptr @.str.374, ptr @ccu_div_ops, ptr @de_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.376 = private unnamed_addr constant [3 x i8] c"mp\00", align 1
@.compoundliteral.377 = internal global %struct.clk_init_data { ptr @.str.376, ptr @ccu_div_ops, ptr @de_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.378 = private unnamed_addr constant [10 x i8] c"tcon-lcd0\00", align 1
@tcon_parents = internal constant [5 x ptr] [ptr @.str.4, ptr @.str.22, ptr @.str.380, ptr @.str.381, ptr @.str.33], align 4
@.compoundliteral.379 = internal global %struct.clk_init_data { ptr @.str.378, ptr @ccu_mux_ops, ptr @tcon_parents, ptr null, ptr null, i8 5, i32 4 }, align 4
@.str.380 = private unnamed_addr constant [14 x i8] c"pll-video0-2x\00", align 1
@.str.381 = private unnamed_addr constant [14 x i8] c"pll-video1-2x\00", align 1
@.str.382 = private unnamed_addr constant [10 x i8] c"tcon-lcd1\00", align 1
@.compoundliteral.383 = internal global %struct.clk_init_data { ptr @.str.382, ptr @ccu_mux_ops, ptr @tcon_parents, ptr null, ptr null, i8 5, i32 4 }, align 4
@.str.384 = private unnamed_addr constant [9 x i8] c"tcon-tv0\00", align 1
@.compoundliteral.385 = internal global %struct.clk_init_data { ptr @.str.384, ptr @ccu_div_ops, ptr @tcon_parents, ptr null, ptr null, i8 5, i32 4 }, align 4
@.str.386 = private unnamed_addr constant [9 x i8] c"tcon-tv1\00", align 1
@.compoundliteral.387 = internal global %struct.clk_init_data { ptr @.str.386, ptr @ccu_div_ops, ptr @tcon_parents, ptr null, ptr null, i8 5, i32 4 }, align 4
@.str.388 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@deinterlace_parents = internal constant [2 x ptr] [ptr @.str.13, ptr @.str.19], align 4
@.compoundliteral.389 = internal global %struct.clk_init_data { ptr @.str.388, ptr @ccu_div_ops, ptr @deinterlace_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.390 = private unnamed_addr constant [10 x i8] c"csi1-mclk\00", align 1
@csi_mclk_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.22, ptr @.str.19], align 4
@.compoundliteral.391 = internal global %struct.clk_init_data { ptr @.str.390, ptr @ccu_div_ops, ptr @csi_mclk_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.392 = private unnamed_addr constant [9 x i8] c"csi-sclk\00", align 1
@csi_sclk_parents = internal constant [2 x ptr] [ptr @.str.13, ptr @.str.19], align 4
@.compoundliteral.393 = internal global %struct.clk_init_data { ptr @.str.392, ptr @ccu_div_ops, ptr @csi_sclk_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.394 = private unnamed_addr constant [10 x i8] c"csi0-mclk\00", align 1
@.compoundliteral.395 = internal global %struct.clk_init_data { ptr @.str.394, ptr @ccu_div_ops, ptr @csi_mclk_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.396 = private unnamed_addr constant [3 x i8] c"ve\00", align 1
@.compoundliteral.397 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.398 = internal global %struct.clk_init_data { ptr @.str.396, ptr @ccu_div_ops, ptr @.compoundliteral.397, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.399 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.compoundliteral.400 = internal global [1 x ptr] [ptr @.str.314], align 4
@.compoundliteral.401 = internal global %struct.clk_init_data { ptr @.str.399, ptr @ccu_gate_ops, ptr @.compoundliteral.400, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.402 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.compoundliteral.403 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.404 = internal global %struct.clk_init_data { ptr @.str.402, ptr @ccu_gate_ops, ptr @.compoundliteral.403, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.405 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@hdmi_parents = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.22], align 4
@.compoundliteral.406 = internal global %struct.clk_init_data { ptr @.str.405, ptr @ccu_div_ops, ptr @hdmi_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.407 = private unnamed_addr constant [10 x i8] c"hdmi-slow\00", align 1
@.compoundliteral.408 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.409 = internal global %struct.clk_init_data { ptr @.str.407, ptr @ccu_gate_ops, ptr @.compoundliteral.408, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.410 = private unnamed_addr constant [5 x i8] c"mbus\00", align 1
@mbus_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.55, ptr @.str.10], align 4
@.compoundliteral.411 = internal global %struct.clk_init_data { ptr @.str.410, ptr @ccu_mp_ops, ptr @mbus_parents, ptr null, ptr null, i8 3, i32 2048 }, align 4
@.str.412 = private unnamed_addr constant [9 x i8] c"dsi-dphy\00", align 1
@dsi_dphy_parents = internal constant [3 x ptr] [ptr @.str.4, ptr @.str.22, ptr @.str.13], align 4
@.compoundliteral.413 = internal global %struct.clk_init_data { ptr @.str.412, ptr @ccu_div_ops, ptr @dsi_dphy_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.414 = private unnamed_addr constant [5 x i8] c"tve0\00", align 1
@.compoundliteral.415 = internal global %struct.clk_init_data { ptr @.str.414, ptr @ccu_div_ops, ptr @tcon_parents, ptr null, ptr null, i8 5, i32 0 }, align 4
@.str.416 = private unnamed_addr constant [5 x i8] c"tve1\00", align 1
@.compoundliteral.417 = internal global %struct.clk_init_data { ptr @.str.416, ptr @ccu_div_ops, ptr @tcon_parents, ptr null, ptr null, i8 5, i32 0 }, align 4
@.str.418 = private unnamed_addr constant [5 x i8] c"tvd0\00", align 1
@tvd_parents = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.22, ptr @.str.380, ptr @.str.381], align 4
@.compoundliteral.419 = internal global %struct.clk_init_data { ptr @.str.418, ptr @ccu_div_ops, ptr @tvd_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.420 = private unnamed_addr constant [5 x i8] c"tvd1\00", align 1
@.compoundliteral.421 = internal global %struct.clk_init_data { ptr @.str.420, ptr @ccu_div_ops, ptr @tvd_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.422 = private unnamed_addr constant [5 x i8] c"tvd2\00", align 1
@.compoundliteral.423 = internal global %struct.clk_init_data { ptr @.str.422, ptr @ccu_div_ops, ptr @tvd_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.424 = private unnamed_addr constant [5 x i8] c"tvd3\00", align 1
@.compoundliteral.425 = internal global %struct.clk_init_data { ptr @.str.424, ptr @ccu_div_ops, ptr @tvd_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.426 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.compoundliteral.427 = internal global [1 x ptr] [ptr @.str.30], align 4
@.compoundliteral.428 = internal global %struct.clk_init_data { ptr @.str.426, ptr @ccu_div_ops, ptr @.compoundliteral.427, ptr null, ptr null, i8 1, i32 4 }, align 4
@out_predivs = internal constant [1 x %struct.ccu_mux_fixed_prediv] [%struct.ccu_mux_fixed_prediv { i8 0, i16 750 }], align 2
@.str.429 = private unnamed_addr constant [5 x i8] c"outa\00", align 1
@out_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.43, ptr @.str.2], align 4
@.compoundliteral.430 = internal global %struct.clk_init_data { ptr @.str.429, ptr @ccu_mp_ops, ptr @out_parents, ptr null, ptr null, i8 3, i32 4 }, align 4
@.str.431 = private unnamed_addr constant [5 x i8] c"outb\00", align 1
@.compoundliteral.432 = internal global %struct.clk_init_data { ptr @.str.431, ptr @ccu_mp_ops, ptr @out_parents, ptr null, ptr null, i8 3, i32 4 }, align 4
@osc12M_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.436 }, i32 1, i32 2 }, align 4
@pll_audio_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.437 }, i32 1, i32 1 }, align 4
@pll_audio_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.438 }, i32 1, i32 2 }, align 4
@pll_audio_4x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.439 }, i32 1, i32 1 }, align 4
@pll_audio_8x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.440 }, i32 2, i32 1 }, align 4
@pll_video0_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.442 }, i32 2, i32 1 }, align 4
@pll_periph0_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.444 }, i32 2, i32 1 }, align 4
@pll_periph1_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.446 }, i32 2, i32 1 }, align 4
@pll_video1_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.448 }, i32 2, i32 1 }, align 4
@sun8i_r40_hw_clks = internal global { i32, [166 x ptr] } { i32 166, [166 x ptr] [ptr @osc12M_clk, ptr getelementptr (i8, ptr @pll_cpu_clk, i64 88), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104), ptr @pll_audio_clk, ptr @pll_audio_2x_clk, ptr @pll_audio_4x_clk, ptr @pll_audio_8x_clk, ptr getelementptr (i8, ptr @pll_video0_clk, i64 104), ptr @pll_video0_2x_clk, ptr getelementptr (i8, ptr @pll_ve_clk, i64 104), ptr getelementptr (i8, ptr @pll_ddr0_clk, i64 88), ptr getelementptr (i8, ptr @pll_periph0_clk, i64 48), ptr getelementptr (i8, ptr @pll_periph0_sata_clk, i64 68), ptr @pll_periph0_2x_clk, ptr getelementptr (i8, ptr @pll_periph1_clk, i64 48), ptr @pll_periph1_2x_clk, ptr getelementptr (i8, ptr @pll_video1_clk, i64 104), ptr @pll_video1_2x_clk, ptr getelementptr (i8, ptr @pll_sata_clk, i64 88), ptr getelementptr (i8, ptr @pll_sata_out_clk, i64 48), ptr getelementptr (i8, ptr @pll_gpu_clk, i64 104), ptr getelementptr (i8, ptr @pll_mipi_clk, i64 88), ptr getelementptr (i8, ptr @pll_de_clk, i64 104), ptr getelementptr (i8, ptr @pll_ddr1_clk, i64 104), ptr getelementptr (i8, ptr @cpu_clk, i64 48), ptr getelementptr (i8, ptr @axi_clk, i64 68), ptr getelementptr (i8, ptr @ahb1_clk, i64 68), ptr getelementptr (i8, ptr @apb1_clk, i64 68), ptr getelementptr (i8, ptr @apb2_clk, i64 92), ptr getelementptr (i8, ptr @bus_mipi_dsi_clk, i64 24), ptr getelementptr (i8, ptr @bus_ce_clk, i64 24), ptr getelementptr (i8, ptr @bus_dma_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc3_clk, i64 24), ptr getelementptr (i8, ptr @bus_nand_clk, i64 24), ptr getelementptr (i8, ptr @bus_dram_clk, i64 24), ptr getelementptr (i8, ptr @bus_emac_clk, i64 24), ptr getelementptr (i8, ptr @bus_ts_clk, i64 24), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi2_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi3_clk, i64 24), ptr getelementptr (i8, ptr @bus_sata_clk, i64 24), ptr getelementptr (i8, ptr @bus_otg_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci1_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci2_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci1_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci2_clk, i64 24), ptr getelementptr (i8, ptr @bus_ve_clk, i64 24), ptr getelementptr (i8, ptr @bus_mp_clk, i64 24), ptr getelementptr (i8, ptr @bus_deinterlace_clk, i64 24), ptr getelementptr (i8, ptr @bus_csi0_clk, i64 24), ptr getelementptr (i8, ptr @bus_csi1_clk, i64 24), ptr getelementptr (i8, ptr @bus_hdmi1_clk, i64 24), ptr getelementptr (i8, ptr @bus_hdmi0_clk, i64 24), ptr getelementptr (i8, ptr @bus_de_clk, i64 24), ptr getelementptr (i8, ptr @bus_tve0_clk, i64 24), ptr getelementptr (i8, ptr @bus_tve1_clk, i64 24), ptr getelementptr (i8, ptr @bus_tve_top_clk, i64 24), ptr getelementptr (i8, ptr @bus_gmac_clk, i64 24), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 24), ptr getelementptr (i8, ptr @bus_tvd0_clk, i64 24), ptr getelementptr (i8, ptr @bus_tvd1_clk, i64 24), ptr getelementptr (i8, ptr @bus_tvd2_clk, i64 24), ptr getelementptr (i8, ptr @bus_tvd3_clk, i64 24), ptr getelementptr (i8, ptr @bus_tvd_top_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon_lcd0_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon_lcd1_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon_tv0_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon_tv1_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon_top_clk, i64 24), ptr getelementptr (i8, ptr @bus_codec_clk, i64 24), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 24), ptr getelementptr (i8, ptr @bus_ac97_clk, i64 24), ptr getelementptr (i8, ptr @bus_pio_clk, i64 24), ptr getelementptr (i8, ptr @bus_ir0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ir1_clk, i64 24), ptr getelementptr (i8, ptr @bus_ths_clk, i64 24), ptr getelementptr (i8, ptr @bus_keypad_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s2_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c3_clk, i64 24), ptr getelementptr (i8, ptr @bus_can_clk, i64 24), ptr getelementptr (i8, ptr @bus_scr_clk, i64 24), ptr getelementptr (i8, ptr @bus_ps20_clk, i64 24), ptr getelementptr (i8, ptr @bus_ps21_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c4_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart4_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart5_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart6_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart7_clk, i64 24), ptr getelementptr (i8, ptr @bus_dbg_clk, i64 24), ptr getelementptr (i8, ptr @ths_clk, i64 68), ptr getelementptr (i8, ptr @nand_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_clk, i64 92), ptr getelementptr (i8, ptr @mmc1_clk, i64 92), ptr getelementptr (i8, ptr @mmc2_clk, i64 92), ptr getelementptr (i8, ptr @mmc3_clk, i64 92), ptr getelementptr (i8, ptr @ts_clk, i64 92), ptr getelementptr (i8, ptr @ce_clk, i64 92), ptr getelementptr (i8, ptr @spi0_clk, i64 92), ptr getelementptr (i8, ptr @spi1_clk, i64 92), ptr getelementptr (i8, ptr @spi2_clk, i64 92), ptr getelementptr (i8, ptr @spi3_clk, i64 92), ptr getelementptr (i8, ptr @i2s0_clk, i64 48), ptr getelementptr (i8, ptr @i2s1_clk, i64 48), ptr getelementptr (i8, ptr @i2s2_clk, i64 48), ptr getelementptr (i8, ptr @ac97_clk, i64 48), ptr getelementptr (i8, ptr @spdif_clk, i64 48), ptr getelementptr (i8, ptr @keypad_clk, i64 92), ptr getelementptr (i8, ptr @sata_clk, i64 48), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy2_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci1_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 24), ptr getelementptr (i8, ptr @ir0_clk, i64 92), ptr getelementptr (i8, ptr @ir1_clk, i64 92), ptr getelementptr (i8, ptr @dram_clk, i64 68), ptr getelementptr (i8, ptr @dram_ve_clk, i64 24), ptr getelementptr (i8, ptr @dram_csi0_clk, i64 24), ptr getelementptr (i8, ptr @dram_csi1_clk, i64 24), ptr getelementptr (i8, ptr @dram_ts_clk, i64 24), ptr getelementptr (i8, ptr @dram_tvd_clk, i64 24), ptr getelementptr (i8, ptr @dram_mp_clk, i64 24), ptr getelementptr (i8, ptr @dram_deinterlace_clk, i64 24), ptr getelementptr (i8, ptr @de_clk, i64 68), ptr getelementptr (i8, ptr @mp_clk, i64 68), ptr getelementptr (i8, ptr @tcon_lcd0_clk, i64 48), ptr getelementptr (i8, ptr @tcon_lcd1_clk, i64 48), ptr getelementptr (i8, ptr @tcon_tv0_clk, i64 68), ptr getelementptr (i8, ptr @tcon_tv1_clk, i64 68), ptr getelementptr (i8, ptr @deinterlace_clk, i64 68), ptr getelementptr (i8, ptr @csi1_mclk_clk, i64 68), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 68), ptr getelementptr (i8, ptr @csi0_mclk_clk, i64 68), ptr getelementptr (i8, ptr @ve_clk, i64 68), ptr getelementptr (i8, ptr @codec_clk, i64 24), ptr getelementptr (i8, ptr @avs_clk, i64 24), ptr getelementptr (i8, ptr @hdmi_clk, i64 68), ptr getelementptr (i8, ptr @hdmi_slow_clk, i64 24), ptr getelementptr (i8, ptr @mbus_clk, i64 92), ptr getelementptr (i8, ptr @dsi_dphy_clk, i64 68), ptr getelementptr (i8, ptr @tve0_clk, i64 68), ptr getelementptr (i8, ptr @tve1_clk, i64 68), ptr getelementptr (i8, ptr @tvd0_clk, i64 68), ptr getelementptr (i8, ptr @tvd1_clk, i64 68), ptr getelementptr (i8, ptr @tvd2_clk, i64 68), ptr getelementptr (i8, ptr @tvd3_clk, i64 68), ptr getelementptr (i8, ptr @gpu_clk, i64 68), ptr getelementptr (i8, ptr @outa_clk, i64 92), ptr getelementptr (i8, ptr @outb_clk, i64 92)] }, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.434 = private unnamed_addr constant [5 x i8] c"hosc\00", align 1
@.compoundliteral.435 = internal constant [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.434, ptr null, i32 0 }], align 4
@.compoundliteral.436 = internal global %struct.clk_init_data { ptr @.str.338, ptr @clk_fixed_factor_ops, ptr null, ptr @.compoundliteral.435, ptr null, i8 1, i32 0 }, align 4
@clk_parent_pll_audio = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104)], align 4
@.compoundliteral.437 = internal global %struct.clk_init_data { ptr @.str.314, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.438 = internal global %struct.clk_init_data { ptr @.str.313, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.439 = internal global %struct.clk_init_data { ptr @.str.312, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.440 = internal global %struct.clk_init_data { ptr @.str.311, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.441 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_video0_clk, i64 104)], align 4
@.compoundliteral.442 = internal global %struct.clk_init_data { ptr @.str.380, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.441, i8 1, i32 0 }, align 4
@.compoundliteral.443 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_periph0_clk, i64 48)], align 4
@.compoundliteral.444 = internal global %struct.clk_init_data { ptr @.str.55, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.443, i8 1, i32 0 }, align 4
@.compoundliteral.445 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_periph1_clk, i64 48)], align 4
@.compoundliteral.446 = internal global %struct.clk_init_data { ptr @.str.300, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.445, i8 1, i32 0 }, align 4
@.compoundliteral.447 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_video1_clk, i64 104)], align 4
@.compoundliteral.448 = internal global %struct.clk_init_data { ptr @.str.381, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.447, i8 1, i32 0 }, align 4
@ccu_nkmp_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.449 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.450 = internal global %struct.clk_init_data { ptr @.str.44, ptr @ccu_nkmp_ops, ptr @.compoundliteral.449, ptr null, ptr null, i8 1, i32 1024 }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_import_ns163, ptr @__UNIQUE_ID_license165, ptr @__exitcall_sun8i_r40_ccu_driver_exit, ptr @__initcall__kmod_sun8i_r40_ccu__162_1375_sun8i_r40_ccu_driver_init6, ptr @sun8i_r40_ccu_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun8i_r40_ccu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_r40_ccu_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_r40_ccu_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_r40_ccu_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_r40_ccu_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %29

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %2, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = and i32 %8, -983041
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #4, !srcloc !11
  %10 = getelementptr i8, ptr %2, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %12 = and i32 %11, -65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #4, !srcloc !11
  %13 = getelementptr i8, ptr %2, i32 204
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %15 = and i32 %14, -66060289
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %16 = getelementptr i8, ptr %2, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 380240128) #4, !srcloc !11
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %18 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %17, ptr noundef null, ptr noundef %2, ptr noundef nonnull @sun8i_r40_ccu_regmap_config, ptr noundef null, ptr noundef null) #4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = ptrtoint ptr %18 to i32
  br label %29

22:                                               ; preds = %6
  %23 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %17, ptr noundef %2, ptr noundef nonnull @sun8i_r40_ccu_desc) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = tail call i32 @ccu_pll_notifier_register(ptr noundef nonnull @sun8i_r40_pll_cpu_nb) #4
  %27 = load ptr, ptr getelementptr inbounds (%struct.ccu_nkmp, ptr @pll_cpu_clk, i32 0, i32 8, i32 6, i32 1), align 4
  %28 = tail call i32 @ccu_mux_notifier_register(ptr noundef %27, ptr noundef nonnull @sun8i_r40_cpu_nb) #4
  br label %29

29:                                               ; preds = %25, %22, %20, %4
  %30 = phi i32 [ %5, %4 ], [ %21, %20 ], [ 0, %25 ], [ %23, %22 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_pll_notifier_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sun8i_r40_ccu_regmap_accessible_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 356
  ret i1 %3
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!8 = !{i64 2885508}
!9 = !{i64 2151721965}
!10 = !{i64 2151722838}
!11 = !{i64 2885090}
!12 = !{i64 2151723307}
!13 = !{i64 2151723568}
!14 = !{i64 2151724013}
!15 = !{i64 2151724874}
!16 = !{i64 2151725313}
