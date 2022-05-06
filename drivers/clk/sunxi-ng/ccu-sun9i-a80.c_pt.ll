; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun9i-a80.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun9i-a80.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_mult = type { i32, i32, %struct.ccu_frac_internal, %struct.ccu_mult_internal, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_frac_internal = type { i32, i32, [2 x i32] }
%struct.ccu_mult_internal = type { i8, i8, i8, i8, i8 }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_nm = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_frac_internal, %struct.ccu_sdm_internal, i32, i32, i32, %struct.ccu_common }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_sdm_internal = type { ptr, i32, i32, i32, i16 }
%struct.ccu_nkmp = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_div_internal, i32, i32, %struct.ccu_common }
%struct.ccu_mux = type { i32, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_phase = type { i8, i8, %struct.ccu_common }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.ccu_mux_fixed_prediv = type { i8, i16 }
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

@__initcall__kmod_sun9i_a80_ccu__162_1248_sun9i_a80_ccu_driver_init6 = internal global ptr @sun9i_a80_ccu_driver_init, section ".initcall6.init", align 4
@sun9i_a80_ccu_driver = internal global %struct.platform_driver { ptr @sun9i_a80_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun9i_a80_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun9i_a80_ccu_driver_exit = internal global ptr @sun9i_a80_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns163 = internal constant [34 x i8] c"sun9i_a80_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [54 x i8] c"sun9i_a80_ccu.file=drivers/clk/sunxi-ng/sun9i-a80-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [26 x i8] c"sun9i_a80_ccu.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"sun9i-a80-ccu\00", align 1
@sun9i_a80_ccu_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sun9i_a80_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun9i_a80_ccu_clks, i32 130, ptr @sun9i_a80_hw_clks, ptr @sun9i_a80_ccu_resets, i32 51 }, align 4
@sun9i_a80_ccu_clks = internal global [130 x ptr] [ptr getelementptr (i8, ptr @pll_c0cpux_clk, i64 56), ptr getelementptr (i8, ptr @pll_c1cpux_clk, i64 56), ptr getelementptr (i8, ptr @pll_audio_clk, i64 84), ptr getelementptr (i8, ptr @pll_periph0_clk, i64 68), ptr getelementptr (i8, ptr @pll_ve_clk, i64 68), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 68), ptr getelementptr (i8, ptr @pll_video0_clk, i64 84), ptr getelementptr (i8, ptr @pll_video1_clk, i64 68), ptr getelementptr (i8, ptr @pll_gpu_clk, i64 68), ptr getelementptr (i8, ptr @pll_de_clk, i64 68), ptr getelementptr (i8, ptr @pll_isp_clk, i64 68), ptr getelementptr (i8, ptr @pll_periph1_clk, i64 68), ptr getelementptr (i8, ptr @c0cpux_clk, i64 28), ptr getelementptr (i8, ptr @c1cpux_clk, i64 28), ptr getelementptr (i8, ptr @atb0_clk, i64 48), ptr getelementptr (i8, ptr @axi0_clk, i64 48), ptr getelementptr (i8, ptr @atb1_clk, i64 48), ptr getelementptr (i8, ptr @axi1_clk, i64 48), ptr getelementptr (i8, ptr @gtbus_clk, i64 48), ptr getelementptr (i8, ptr @ahb0_clk, i64 48), ptr getelementptr (i8, ptr @ahb1_clk, i64 48), ptr getelementptr (i8, ptr @ahb2_clk, i64 48), ptr getelementptr (i8, ptr @apb0_clk, i64 48), ptr getelementptr (i8, ptr @apb1_clk, i64 48), ptr getelementptr (i8, ptr @cci400_clk, i64 48), ptr getelementptr (i8, ptr @ats_clk, i64 48), ptr getelementptr (i8, ptr @trace_clk, i64 48), ptr getelementptr (i8, ptr @out_a_clk, i64 72), ptr getelementptr (i8, ptr @out_b_clk, i64 72), ptr getelementptr (i8, ptr @nand0_0_clk, i64 72), ptr getelementptr (i8, ptr @nand0_1_clk, i64 72), ptr getelementptr (i8, ptr @nand1_0_clk, i64 72), ptr getelementptr (i8, ptr @nand1_1_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc0_output_clk, i64 4), ptr getelementptr (i8, ptr @mmc1_clk, i64 72), ptr getelementptr (i8, ptr @mmc1_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc1_output_clk, i64 4), ptr getelementptr (i8, ptr @mmc2_clk, i64 72), ptr getelementptr (i8, ptr @mmc2_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc2_output_clk, i64 4), ptr getelementptr (i8, ptr @mmc3_clk, i64 72), ptr getelementptr (i8, ptr @mmc3_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc3_output_clk, i64 4), ptr getelementptr (i8, ptr @ts_clk, i64 72), ptr getelementptr (i8, ptr @ss_clk, i64 72), ptr getelementptr (i8, ptr @spi0_clk, i64 72), ptr getelementptr (i8, ptr @spi1_clk, i64 72), ptr getelementptr (i8, ptr @spi2_clk, i64 72), ptr getelementptr (i8, ptr @spi3_clk, i64 72), ptr getelementptr (i8, ptr @i2s0_clk, i64 48), ptr getelementptr (i8, ptr @i2s1_clk, i64 48), ptr getelementptr (i8, ptr @spdif_clk, i64 48), ptr getelementptr (i8, ptr @sdram_clk, i64 48), ptr getelementptr (i8, ptr @de_clk, i64 48), ptr getelementptr (i8, ptr @edp_clk, i64 4), ptr getelementptr (i8, ptr @mp_clk, i64 48), ptr getelementptr (i8, ptr @lcd0_clk, i64 48), ptr getelementptr (i8, ptr @lcd1_clk, i64 48), ptr getelementptr (i8, ptr @mipi_dsi0_clk, i64 48), ptr getelementptr (i8, ptr @mipi_dsi1_clk, i64 48), ptr getelementptr (i8, ptr @hdmi_clk, i64 48), ptr getelementptr (i8, ptr @hdmi_slow_clk, i64 4), ptr getelementptr (i8, ptr @mipi_csi_clk, i64 48), ptr getelementptr (i8, ptr @csi_isp_clk, i64 48), ptr getelementptr (i8, ptr @csi_misc_clk, i64 4), ptr getelementptr (i8, ptr @csi0_mclk_clk, i64 48), ptr getelementptr (i8, ptr @csi1_mclk_clk, i64 48), ptr getelementptr (i8, ptr @fd_clk, i64 48), ptr getelementptr (i8, ptr @ve_clk, i64 48), ptr getelementptr (i8, ptr @avs_clk, i64 4), ptr getelementptr (i8, ptr @gpu_core_clk, i64 48), ptr getelementptr (i8, ptr @gpu_memory_clk, i64 48), ptr getelementptr (i8, ptr @gpu_axi_clk, i64 48), ptr getelementptr (i8, ptr @sata_clk, i64 48), ptr getelementptr (i8, ptr @ac97_clk, i64 48), ptr getelementptr (i8, ptr @mipi_hsi_clk, i64 48), ptr getelementptr (i8, ptr @gpadc_clk, i64 72), ptr getelementptr (i8, ptr @cir_tx_clk, i64 72), ptr getelementptr (i8, ptr @bus_fd_clk, i64 4), ptr getelementptr (i8, ptr @bus_ve_clk, i64 4), ptr getelementptr (i8, ptr @bus_gpu_ctrl_clk, i64 4), ptr getelementptr (i8, ptr @bus_ss_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc_clk, i64 4), ptr getelementptr (i8, ptr @bus_nand0_clk, i64 4), ptr getelementptr (i8, ptr @bus_nand1_clk, i64 4), ptr getelementptr (i8, ptr @bus_sdram_clk, i64 4), ptr getelementptr (i8, ptr @bus_mipi_hsi_clk, i64 4), ptr getelementptr (i8, ptr @bus_sata_clk, i64 4), ptr getelementptr (i8, ptr @bus_ts_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi2_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi3_clk, i64 4), ptr getelementptr (i8, ptr @bus_otg_clk, i64 4), ptr getelementptr (i8, ptr @bus_usb_clk, i64 4), ptr getelementptr (i8, ptr @bus_gmac_clk, i64 4), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 4), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 4), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 4), ptr getelementptr (i8, ptr @bus_dma_clk, i64 4), ptr getelementptr (i8, ptr @bus_lcd0_clk, i64 4), ptr getelementptr (i8, ptr @bus_lcd1_clk, i64 4), ptr getelementptr (i8, ptr @bus_edp_clk, i64 4), ptr getelementptr (i8, ptr @bus_csi_clk, i64 4), ptr getelementptr (i8, ptr @bus_hdmi_clk, i64 4), ptr getelementptr (i8, ptr @bus_de_clk, i64 4), ptr getelementptr (i8, ptr @bus_mp_clk, i64 4), ptr getelementptr (i8, ptr @bus_mipi_dsi_clk, i64 4), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 4), ptr getelementptr (i8, ptr @bus_pio_clk, i64 4), ptr getelementptr (i8, ptr @bus_ac97_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 4), ptr getelementptr (i8, ptr @bus_lradc_clk, i64 4), ptr getelementptr (i8, ptr @bus_gpadc_clk, i64 4), ptr getelementptr (i8, ptr @bus_twd_clk, i64 4), ptr getelementptr (i8, ptr @bus_cir_tx_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c3_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c4_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart4_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart5_clk, i64 4)], align 4
@sun9i_a80_ccu_resets = internal global [51 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 1440, i32 1 }, %struct.ccu_reset_map { i16 1440, i32 2 }, %struct.ccu_reset_map { i16 1440, i32 8 }, %struct.ccu_reset_map { i16 1440, i32 32 }, %struct.ccu_reset_map { i16 1440, i32 256 }, %struct.ccu_reset_map { i16 1440, i32 4096 }, %struct.ccu_reset_map { i16 1440, i32 8192 }, %struct.ccu_reset_map { i16 1440, i32 16384 }, %struct.ccu_reset_map { i16 1440, i32 65536 }, %struct.ccu_reset_map { i16 1440, i32 262144 }, %struct.ccu_reset_map { i16 1440, i32 1048576 }, %struct.ccu_reset_map { i16 1440, i32 2097152 }, %struct.ccu_reset_map { i16 1440, i32 4194304 }, %struct.ccu_reset_map { i16 1440, i32 8388608 }, %struct.ccu_reset_map { i16 1444, i32 1 }, %struct.ccu_reset_map { i16 1444, i32 2 }, %struct.ccu_reset_map { i16 1444, i32 512 }, %struct.ccu_reset_map { i16 1444, i32 131072 }, %struct.ccu_reset_map { i16 1444, i32 2097152 }, %struct.ccu_reset_map { i16 1444, i32 4194304 }, %struct.ccu_reset_map { i16 1444, i32 8388608 }, %struct.ccu_reset_map { i16 1444, i32 16777216 }, %struct.ccu_reset_map { i16 1448, i32 1 }, %struct.ccu_reset_map { i16 1448, i32 2 }, %struct.ccu_reset_map { i16 1448, i32 4 }, %struct.ccu_reset_map { i16 1448, i32 8 }, %struct.ccu_reset_map { i16 1448, i32 16 }, %struct.ccu_reset_map { i16 1448, i32 32 }, %struct.ccu_reset_map { i16 1448, i32 64 }, %struct.ccu_reset_map { i16 1448, i32 128 }, %struct.ccu_reset_map { i16 1448, i32 256 }, %struct.ccu_reset_map { i16 1448, i32 512 }, %struct.ccu_reset_map { i16 1448, i32 2048 }, %struct.ccu_reset_map { i16 1456, i32 2 }, %struct.ccu_reset_map { i16 1456, i32 2048 }, %struct.ccu_reset_map { i16 1456, i32 4096 }, %struct.ccu_reset_map { i16 1456, i32 8192 }, %struct.ccu_reset_map { i16 1456, i32 32768 }, %struct.ccu_reset_map { i16 1456, i32 131072 }, %struct.ccu_reset_map { i16 1456, i32 524288 }, %struct.ccu_reset_map { i16 1460, i32 1 }, %struct.ccu_reset_map { i16 1460, i32 2 }, %struct.ccu_reset_map { i16 1460, i32 4 }, %struct.ccu_reset_map { i16 1460, i32 8 }, %struct.ccu_reset_map { i16 1460, i32 16 }, %struct.ccu_reset_map { i16 1460, i32 65536 }, %struct.ccu_reset_map { i16 1460, i32 131072 }, %struct.ccu_reset_map { i16 1460, i32 262144 }, %struct.ccu_reset_map { i16 1460, i32 524288 }, %struct.ccu_reset_map { i16 1460, i32 1048576 }, %struct.ccu_reset_map { i16 1460, i32 2097152 }], align 4
@pll_c0cpux_clk = internal global %struct.ccu_mult { i32 -2147483648, i32 1, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 0, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 } } }, align 4
@pll_c1cpux_clk = internal global %struct.ccu_mult { i32 -2147483648, i32 2, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 4, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 } } }, align 4
@pll_audio_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 4, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_div_internal { i8 0, i8 6, i32 0, i32 0, i32 0, ptr null }, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 8, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } } }, align 4
@pll_periph0_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 8, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 12, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 } } }, align 4
@pll_ve_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 16, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 16, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, align 4
@pll_ddr_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 32, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 20, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 } } }, align 4
@pll_video0_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 64, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 24, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, align 4
@pll_video1_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 128, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 28, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 } } }, align 4
@pll_gpu_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 256, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 32, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 } } }, align 4
@pll_de_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 512, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 36, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 } } }, align 4
@pll_isp_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 1024, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 40, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 } } }, align 4
@pll_periph1_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 2048, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 40, i16 156, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 } } }, align 4
@c0cpux_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 0, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 } } }, align 4
@c1cpux_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 8, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 } } }, align 4
@atb0_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 } }, i32 0 }, align 4
@axi0_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 0, i32 0, ptr @axi_div_table }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 } }, i32 0 }, align 4
@atb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 88, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 } }, i32 0 }, align 4
@axi1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 0, i32 0, ptr @axi_div_table }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 88, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 } }, i32 0 }, align 4
@gtbus_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 92, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 } }, i32 0 }, align 4
@ahb0_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.56 } }, i32 0 }, align 4
@ahb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.58 } }, i32 0 }, align 4
@ahb2_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.60 } }, i32 0 }, align 4
@apb0_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 112, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.62 } }, i32 0 }, align 4
@apb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 116, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 } }, i32 0 }, align 4
@cci400_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 120, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 } }, i32 0 }, align 4
@ats_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 128, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.68 } }, i32 0 }, align 4
@trace_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 132, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.70 } }, i32 0 }, align 4
@out_a_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 8, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 20, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr @out_prediv, i8 1, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 384, i16 0, i32 0, i32 4, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.72 } } }, align 4
@out_b_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 8, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 20, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr @out_prediv, i8 1, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 388, i16 0, i32 0, i32 4, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 } } }, align 4
@nand0_0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1024, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 } } }, align 4
@nand0_1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1028, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 } } }, align 4
@nand1_0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1032, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.81 } } }, align 4
@nand1_1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1036, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 } } }, align 4
@mmc0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1040, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 } } }, align 4
@mmc0_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 1040, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 } } }, align 4
@mmc0_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 1040, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 } } }, align 4
@mmc1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1044, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 } } }, align 4
@mmc1_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 1044, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.96 } } }, align 4
@mmc1_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 1044, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.99 } } }, align 4
@mmc2_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1048, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 } } }, align 4
@mmc2_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 1048, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.104 } } }, align 4
@mmc2_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 1048, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.107 } } }, align 4
@mmc3_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1052, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.109 } } }, align 4
@mmc3_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 1052, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.112 } } }, align 4
@mmc3_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 1052, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.115 } } }, align 4
@ts_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1064, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.117 } } }, align 4
@ss_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @ss_table, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1068, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.119 } } }, align 4
@spi0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1072, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 } } }, align 4
@spi1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1076, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 } } }, align 4
@spi2_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1080, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.126 } } }, align 4
@spi3_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1084, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 } } }, align 4
@i2s0_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1088, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 } }, i32 0 }, align 4
@i2s1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1092, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.134 } }, i32 0 }, align 4
@spdif_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 } }, i32 0 }, align 4
@sdram_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 12, i8 4, ptr @sdram_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1156, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.139 } }, i32 0 }, align 4
@de_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1168, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.142 } }, i32 0 }, align 4
@edp_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 1172, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 } } }, align 4
@mp_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @mp_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1176, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.147 } }, i32 0 }, align 4
@lcd0_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @display_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1180, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 } }, i32 0 }, align 4
@lcd1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @display_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1184, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.151 } }, i32 0 }, align 4
@mipi_dsi0_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @display_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1192, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.153 } }, i32 0 }, align 4
@mipi_dsi1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @mipi_dsi1_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1196, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 } }, i32 0 }, align 4
@hdmi_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @display_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1200, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.157 } }, i32 0 }, align 4
@hdmi_slow_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 1204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.160 } } }, align 4
@mipi_csi_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1212, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.163 } }, i32 0 }, align 4
@csi_isp_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1216, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.166 } }, i32 0 }, align 4
@csi_misc_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 1216, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.169 } } }, align 4
@csi0_mclk_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @mipi_dsi1_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1220, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.171 } }, i32 0 }, align 4
@csi1_mclk_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @mipi_dsi1_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1224, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.173 } }, i32 0 }, align 4
@fd_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @fd_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1228, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.175 } }, i32 0 }, align 4
@ve_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1232, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.178 } }, i32 0 }, align 4
@avs_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 1236, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.181 } } }, align 4
@gpu_core_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1264, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.184 } }, i32 0 }, align 4
@gpu_memory_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1268, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.187 } }, i32 0 }, align 4
@gpu_axi_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @gpu_axi_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1272, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.189 } }, i32 0 }, align 4
@sata_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1280, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.192 } }, i32 0 }, align 4
@ac97_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 1284, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.195 } }, i32 0 }, align 4
@mipi_hsi_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 1288, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.197 } }, i32 0 }, align 4
@gpadc_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @gpadc_table, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1292, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.199 } } }, align 4
@cir_tx_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @cir_tx_table, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 1296, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.201 } } }, align 4
@bus_fd_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.204 } } }, align 4
@bus_ve_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.207 } } }, align 4
@bus_gpu_ctrl_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.210 } } }, align 4
@bus_ss_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.213 } } }, align 4
@bus_mmc_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.216 } } }, align 4
@bus_nand0_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.219 } } }, align 4
@bus_nand1_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.222 } } }, align 4
@bus_sdram_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.225 } } }, align 4
@bus_mipi_hsi_clk = internal global %struct.ccu_gate { i32 32768, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.228 } } }, align 4
@bus_sata_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.231 } } }, align 4
@bus_ts_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.234 } } }, align 4
@bus_spi0_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.237 } } }, align 4
@bus_spi1_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.240 } } }, align 4
@bus_spi2_clk = internal global %struct.ccu_gate { i32 4194304, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.243 } } }, align 4
@bus_spi3_clk = internal global %struct.ccu_gate { i32 8388608, %struct.ccu_common { ptr null, i16 1408, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.246 } } }, align 4
@bus_otg_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 1412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.249 } } }, align 4
@bus_usb_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 1412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.252 } } }, align 4
@bus_gmac_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 1412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.255 } } }, align 4
@bus_msgbox_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 1412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.258 } } }, align 4
@bus_spinlock_clk = internal global %struct.ccu_gate { i32 4194304, %struct.ccu_common { ptr null, i16 1412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.261 } } }, align 4
@bus_hstimer_clk = internal global %struct.ccu_gate { i32 8388608, %struct.ccu_common { ptr null, i16 1412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.264 } } }, align 4
@bus_dma_clk = internal global %struct.ccu_gate { i32 16777216, %struct.ccu_common { ptr null, i16 1412, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.267 } } }, align 4
@bus_lcd0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 1416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.270 } } }, align 4
@bus_lcd1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 1416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.273 } } }, align 4
@bus_edp_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 1416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.276 } } }, align 4
@bus_csi_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 1416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.279 } } }, align 4
@bus_hdmi_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 1416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.282 } } }, align 4
@bus_de_clk = internal global %struct.ccu_gate { i32 128, %struct.ccu_common { ptr null, i16 1416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.285 } } }, align 4
@bus_mp_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 1416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.288 } } }, align 4
@bus_mipi_dsi_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 1416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.291 } } }, align 4
@bus_spdif_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 1424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.294 } } }, align 4
@bus_pio_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 1424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.297 } } }, align 4
@bus_ac97_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 1424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.300 } } }, align 4
@bus_i2s0_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 1424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.303 } } }, align 4
@bus_i2s1_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 1424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.306 } } }, align 4
@bus_lradc_clk = internal global %struct.ccu_gate { i32 32768, %struct.ccu_common { ptr null, i16 1424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.309 } } }, align 4
@bus_gpadc_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 1424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.312 } } }, align 4
@bus_twd_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 1424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.315 } } }, align 4
@bus_cir_tx_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 1424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.318 } } }, align 4
@bus_i2c0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.321 } } }, align 4
@bus_i2c1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.324 } } }, align 4
@bus_i2c2_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.327 } } }, align 4
@bus_i2c3_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.330 } } }, align 4
@bus_i2c4_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.333 } } }, align 4
@bus_uart0_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.336 } } }, align 4
@bus_uart1_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.339 } } }, align 4
@bus_uart2_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.342 } } }, align 4
@bus_uart3_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.345 } } }, align 4
@bus_uart4_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.348 } } }, align 4
@bus_uart5_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 1428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.351 } } }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"pll-c0cpux\00", align 1
@ccu_mult_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"osc24M\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.3 = internal global %struct.clk_init_data { ptr @.str.1, ptr @ccu_mult_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"pll-c1cpux\00", align 1
@.compoundliteral.5 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.6 = internal global %struct.clk_init_data { ptr @.str.4, ptr @ccu_mult_ops, ptr @.compoundliteral.5, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"pll-audio\00", align 1
@ccu_nm_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.8 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.9 = internal global %struct.clk_init_data { ptr @.str.7, ptr @ccu_nm_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"pll-periph0\00", align 1
@ccu_nkmp_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.11 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.12 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_nkmp_ops, ptr @.compoundliteral.11, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"pll-ve\00", align 1
@.compoundliteral.14 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.15 = internal global %struct.clk_init_data { ptr @.str.13, ptr @ccu_nkmp_ops, ptr @.compoundliteral.14, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"pll-ddr\00", align 1
@.compoundliteral.17 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.18 = internal global %struct.clk_init_data { ptr @.str.16, ptr @ccu_nkmp_ops, ptr @.compoundliteral.17, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"pll-video0\00", align 1
@.compoundliteral.20 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.21 = internal global %struct.clk_init_data { ptr @.str.19, ptr @ccu_nm_ops, ptr @.compoundliteral.20, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"pll-video1\00", align 1
@.compoundliteral.23 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.24 = internal global %struct.clk_init_data { ptr @.str.22, ptr @ccu_nkmp_ops, ptr @.compoundliteral.23, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"pll-gpu\00", align 1
@.compoundliteral.26 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.27 = internal global %struct.clk_init_data { ptr @.str.25, ptr @ccu_nkmp_ops, ptr @.compoundliteral.26, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"pll-de\00", align 1
@.compoundliteral.29 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.30 = internal global %struct.clk_init_data { ptr @.str.28, ptr @ccu_nkmp_ops, ptr @.compoundliteral.29, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"pll-isp\00", align 1
@.compoundliteral.32 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.33 = internal global %struct.clk_init_data { ptr @.str.31, ptr @ccu_nkmp_ops, ptr @.compoundliteral.32, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"pll-periph1\00", align 1
@.compoundliteral.35 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.36 = internal global %struct.clk_init_data { ptr @.str.34, ptr @ccu_nkmp_ops, ptr @.compoundliteral.35, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"c0cpux\00", align 1
@ccu_mux_ops = external dso_local constant %struct.clk_ops, align 4
@c0cpux_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.1], align 4
@.compoundliteral.38 = internal global %struct.clk_init_data { ptr @.str.37, ptr @ccu_mux_ops, ptr @c0cpux_parents, ptr null, ptr null, i8 2, i32 2052 }, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"c1cpux\00", align 1
@c1cpux_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.4], align 4
@.compoundliteral.40 = internal global %struct.clk_init_data { ptr @.str.39, ptr @ccu_mux_ops, ptr @c1cpux_parents, ptr null, ptr null, i8 2, i32 2052 }, align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"atb0\00", align 1
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.42 = internal global [1 x ptr] [ptr @.str.37], align 4
@.compoundliteral.43 = internal global %struct.clk_init_data { ptr @.str.41, ptr @ccu_div_ops, ptr @.compoundliteral.42, ptr null, ptr null, i8 1, i32 0 }, align 4
@axi_div_table = internal global [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 4 }, %struct.clk_div_table { i32 5, i32 4 }, %struct.clk_div_table { i32 6, i32 4 }, %struct.clk_div_table { i32 7, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.44 = private unnamed_addr constant [5 x i8] c"axi0\00", align 1
@.compoundliteral.45 = internal global [1 x ptr] [ptr @.str.37], align 4
@.compoundliteral.46 = internal global %struct.clk_init_data { ptr @.str.44, ptr @ccu_div_ops, ptr @.compoundliteral.45, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.47 = private unnamed_addr constant [5 x i8] c"atb1\00", align 1
@.compoundliteral.48 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.49 = internal global %struct.clk_init_data { ptr @.str.47, ptr @ccu_div_ops, ptr @.compoundliteral.48, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.50 = private unnamed_addr constant [5 x i8] c"axi1\00", align 1
@.compoundliteral.51 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.52 = internal global %struct.clk_init_data { ptr @.str.50, ptr @ccu_div_ops, ptr @.compoundliteral.51, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"gtbus\00", align 1
@gtbus_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.10, ptr @.str.34, ptr @.str.34], align 4
@.compoundliteral.54 = internal global %struct.clk_init_data { ptr @.str.53, ptr @ccu_div_ops, ptr @gtbus_parents, ptr null, ptr null, i8 4, i32 2048 }, align 4
@.str.55 = private unnamed_addr constant [5 x i8] c"ahb0\00", align 1
@ahb_parents = internal constant [4 x ptr] [ptr @.str.53, ptr @.str.10, ptr @.str.34, ptr @.str.34], align 4
@.compoundliteral.56 = internal global %struct.clk_init_data { ptr @.str.55, ptr @ccu_div_ops, ptr @ahb_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.57 = private unnamed_addr constant [5 x i8] c"ahb1\00", align 1
@.compoundliteral.58 = internal global %struct.clk_init_data { ptr @.str.57, ptr @ccu_div_ops, ptr @ahb_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.59 = private unnamed_addr constant [5 x i8] c"ahb2\00", align 1
@.compoundliteral.60 = internal global %struct.clk_init_data { ptr @.str.59, ptr @ccu_div_ops, ptr @ahb_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.61 = private unnamed_addr constant [5 x i8] c"apb0\00", align 1
@apb_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.10], align 4
@.compoundliteral.62 = internal global %struct.clk_init_data { ptr @.str.61, ptr @ccu_div_ops, ptr @apb_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.63 = private unnamed_addr constant [5 x i8] c"apb1\00", align 1
@.compoundliteral.64 = internal global %struct.clk_init_data { ptr @.str.63, ptr @ccu_div_ops, ptr @apb_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.65 = private unnamed_addr constant [7 x i8] c"cci400\00", align 1
@.compoundliteral.66 = internal global %struct.clk_init_data { ptr @.str.65, ptr @ccu_div_ops, ptr @ahb_parents, ptr null, ptr null, i8 4, i32 2048 }, align 4
@.str.67 = private unnamed_addr constant [4 x i8] c"ats\00", align 1
@.compoundliteral.68 = internal global %struct.clk_init_data { ptr @.str.67, ptr @ccu_div_ops, ptr @apb_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.69 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.compoundliteral.70 = internal global %struct.clk_init_data { ptr @.str.69, ptr @ccu_div_ops, ptr @apb_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@out_prediv = internal constant %struct.ccu_mux_fixed_prediv { i8 0, i16 750 }, align 2
@.str.71 = private unnamed_addr constant [6 x i8] c"out-a\00", align 1
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@out_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.73, ptr @.str.2], align 4
@.compoundliteral.72 = internal global %struct.clk_init_data { ptr @.str.71, ptr @ccu_mp_ops, ptr @out_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.73 = private unnamed_addr constant [7 x i8] c"osc32k\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"out-b\00", align 1
@.compoundliteral.75 = internal global %struct.clk_init_data { ptr @.str.74, ptr @ccu_mp_ops, ptr @out_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.76 = private unnamed_addr constant [8 x i8] c"nand0-0\00", align 1
@mod0_default_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.10], align 4
@.compoundliteral.77 = internal global %struct.clk_init_data { ptr @.str.76, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.78 = private unnamed_addr constant [8 x i8] c"nand0-1\00", align 1
@.compoundliteral.79 = internal global %struct.clk_init_data { ptr @.str.78, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.80 = private unnamed_addr constant [8 x i8] c"nand1-0\00", align 1
@.compoundliteral.81 = internal global %struct.clk_init_data { ptr @.str.80, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.82 = private unnamed_addr constant [8 x i8] c"nand1-1\00", align 1
@.compoundliteral.83 = internal global %struct.clk_init_data { ptr @.str.82, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.84 = private unnamed_addr constant [5 x i8] c"mmc0\00", align 1
@.compoundliteral.85 = internal global %struct.clk_init_data { ptr @.str.84, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.86 = private unnamed_addr constant [12 x i8] c"mmc0-sample\00", align 1
@ccu_phase_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.87 = internal global [1 x ptr] [ptr @.str.84], align 4
@.compoundliteral.88 = internal global %struct.clk_init_data { ptr @.str.86, ptr @ccu_phase_ops, ptr @.compoundliteral.87, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.89 = private unnamed_addr constant [12 x i8] c"mmc0-output\00", align 1
@.compoundliteral.90 = internal global [1 x ptr] [ptr @.str.84], align 4
@.compoundliteral.91 = internal global %struct.clk_init_data { ptr @.str.89, ptr @ccu_phase_ops, ptr @.compoundliteral.90, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.92 = private unnamed_addr constant [5 x i8] c"mmc1\00", align 1
@.compoundliteral.93 = internal global %struct.clk_init_data { ptr @.str.92, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.94 = private unnamed_addr constant [12 x i8] c"mmc1-sample\00", align 1
@.compoundliteral.95 = internal global [1 x ptr] [ptr @.str.92], align 4
@.compoundliteral.96 = internal global %struct.clk_init_data { ptr @.str.94, ptr @ccu_phase_ops, ptr @.compoundliteral.95, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.97 = private unnamed_addr constant [12 x i8] c"mmc1-output\00", align 1
@.compoundliteral.98 = internal global [1 x ptr] [ptr @.str.92], align 4
@.compoundliteral.99 = internal global %struct.clk_init_data { ptr @.str.97, ptr @ccu_phase_ops, ptr @.compoundliteral.98, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.100 = private unnamed_addr constant [5 x i8] c"mmc2\00", align 1
@.compoundliteral.101 = internal global %struct.clk_init_data { ptr @.str.100, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.102 = private unnamed_addr constant [12 x i8] c"mmc2-sample\00", align 1
@.compoundliteral.103 = internal global [1 x ptr] [ptr @.str.100], align 4
@.compoundliteral.104 = internal global %struct.clk_init_data { ptr @.str.102, ptr @ccu_phase_ops, ptr @.compoundliteral.103, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.105 = private unnamed_addr constant [12 x i8] c"mmc2-output\00", align 1
@.compoundliteral.106 = internal global [1 x ptr] [ptr @.str.100], align 4
@.compoundliteral.107 = internal global %struct.clk_init_data { ptr @.str.105, ptr @ccu_phase_ops, ptr @.compoundliteral.106, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.108 = private unnamed_addr constant [5 x i8] c"mmc3\00", align 1
@.compoundliteral.109 = internal global %struct.clk_init_data { ptr @.str.108, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.110 = private unnamed_addr constant [12 x i8] c"mmc3-sample\00", align 1
@.compoundliteral.111 = internal global [1 x ptr] [ptr @.str.108], align 4
@.compoundliteral.112 = internal global %struct.clk_init_data { ptr @.str.110, ptr @ccu_phase_ops, ptr @.compoundliteral.111, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.113 = private unnamed_addr constant [12 x i8] c"mmc3-output\00", align 1
@.compoundliteral.114 = internal global [1 x ptr] [ptr @.str.108], align 4
@.compoundliteral.115 = internal global %struct.clk_init_data { ptr @.str.113, ptr @ccu_phase_ops, ptr @.compoundliteral.114, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.116 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.compoundliteral.117 = internal global %struct.clk_init_data { ptr @.str.116, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@ss_table = internal constant [3 x i8] c"\00\01\0D", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@ss_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.120, ptr @.str.34], align 4
@.compoundliteral.119 = internal global %struct.clk_init_data { ptr @.str.118, ptr @ccu_mp_ops, ptr @ss_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.120 = private unnamed_addr constant [11 x i8] c"pll-periph\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.compoundliteral.122 = internal global %struct.clk_init_data { ptr @.str.121, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.123 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.compoundliteral.124 = internal global %struct.clk_init_data { ptr @.str.123, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.125 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@.compoundliteral.126 = internal global %struct.clk_init_data { ptr @.str.125, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.127 = private unnamed_addr constant [5 x i8] c"spi3\00", align 1
@.compoundliteral.128 = internal global %struct.clk_init_data { ptr @.str.127, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.129 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@.compoundliteral.130 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.131 = internal global %struct.clk_init_data { ptr @.str.129, ptr @ccu_div_ops, ptr @.compoundliteral.130, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.132 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.compoundliteral.133 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.134 = internal global %struct.clk_init_data { ptr @.str.132, ptr @ccu_div_ops, ptr @.compoundliteral.133, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.135 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.compoundliteral.136 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.137 = internal global %struct.clk_init_data { ptr @.str.135, ptr @ccu_div_ops, ptr @.compoundliteral.136, ptr null, ptr null, i8 1, i32 4 }, align 4
@sdram_table = internal constant [2 x i8] c"\00\03", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"sdram\00", align 1
@sdram_parents = internal constant [2 x ptr] [ptr @.str.10, ptr @.str.16], align 4
@.compoundliteral.139 = internal global %struct.clk_init_data { ptr @.str.138, ptr @ccu_div_ops, ptr @sdram_parents, ptr null, ptr null, i8 2, i32 2048 }, align 4
@.str.140 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.compoundliteral.141 = internal global [1 x ptr] [ptr @.str.28], align 4
@.compoundliteral.142 = internal global %struct.clk_init_data { ptr @.str.140, ptr @ccu_div_ops, ptr @.compoundliteral.141, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.143 = private unnamed_addr constant [4 x i8] c"edp\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.144 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.145 = internal global %struct.clk_init_data { ptr @.str.143, ptr @ccu_gate_ops, ptr @.compoundliteral.144, ptr null, ptr null, i8 1, i32 0 }, align 4
@mp_table = internal constant [3 x i8] c"\09\0A\0B", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"mp\00", align 1
@mp_parents = internal constant [3 x ptr] [ptr @.str.22, ptr @.str.25, ptr @.str.28], align 4
@.compoundliteral.147 = internal global %struct.clk_init_data { ptr @.str.146, ptr @ccu_div_ops, ptr @mp_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@display_table = internal constant [2 x i8] c"\08\09", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"lcd0\00", align 1
@display_parents = internal constant [2 x ptr] [ptr @.str.19, ptr @.str.22], align 4
@.compoundliteral.149 = internal global %struct.clk_init_data { ptr @.str.148, ptr @ccu_div_ops, ptr @display_parents, ptr null, ptr null, i8 2, i32 132 }, align 4
@.str.150 = private unnamed_addr constant [5 x i8] c"lcd1\00", align 1
@.compoundliteral.151 = internal global %struct.clk_init_data { ptr @.str.150, ptr @ccu_div_ops, ptr @display_parents, ptr null, ptr null, i8 2, i32 132 }, align 4
@.str.152 = private unnamed_addr constant [10 x i8] c"mipi-dsi0\00", align 1
@.compoundliteral.153 = internal global %struct.clk_init_data { ptr @.str.152, ptr @ccu_div_ops, ptr @display_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@mipi_dsi1_table = internal constant [2 x i8] c"\00\09", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"mipi-dsi1\00", align 1
@mipi_dsi1_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.22], align 4
@.compoundliteral.155 = internal global %struct.clk_init_data { ptr @.str.154, ptr @ccu_div_ops, ptr @mipi_dsi1_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.156 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.compoundliteral.157 = internal global %struct.clk_init_data { ptr @.str.156, ptr @ccu_div_ops, ptr @display_parents, ptr null, ptr null, i8 2, i32 132 }, align 4
@.str.158 = private unnamed_addr constant [10 x i8] c"hdmi-slow\00", align 1
@.compoundliteral.159 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.160 = internal global %struct.clk_init_data { ptr @.str.158, ptr @ccu_gate_ops, ptr @.compoundliteral.159, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.161 = private unnamed_addr constant [9 x i8] c"mipi-csi\00", align 1
@.compoundliteral.162 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.163 = internal global %struct.clk_init_data { ptr @.str.161, ptr @ccu_div_ops, ptr @.compoundliteral.162, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.164 = private unnamed_addr constant [8 x i8] c"csi-isp\00", align 1
@.compoundliteral.165 = internal global [1 x ptr] [ptr @.str.31], align 4
@.compoundliteral.166 = internal global %struct.clk_init_data { ptr @.str.164, ptr @ccu_div_ops, ptr @.compoundliteral.165, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.167 = private unnamed_addr constant [9 x i8] c"csi-misc\00", align 1
@.compoundliteral.168 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.169 = internal global %struct.clk_init_data { ptr @.str.167, ptr @ccu_gate_ops, ptr @.compoundliteral.168, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.170 = private unnamed_addr constant [10 x i8] c"csi0-mclk\00", align 1
@.compoundliteral.171 = internal global %struct.clk_init_data { ptr @.str.170, ptr @ccu_div_ops, ptr @mipi_dsi1_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.172 = private unnamed_addr constant [10 x i8] c"csi1-mclk\00", align 1
@.compoundliteral.173 = internal global %struct.clk_init_data { ptr @.str.172, ptr @ccu_div_ops, ptr @mipi_dsi1_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@fd_table = internal constant [2 x i8] c"\01\0C", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@fd_parents = internal constant [2 x ptr] [ptr @.str.10, ptr @.str.31], align 4
@.compoundliteral.175 = internal global %struct.clk_init_data { ptr @.str.174, ptr @ccu_div_ops, ptr @fd_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.176 = private unnamed_addr constant [3 x i8] c"ve\00", align 1
@.compoundliteral.177 = internal global [1 x ptr] [ptr @.str.13], align 4
@.compoundliteral.178 = internal global %struct.clk_init_data { ptr @.str.176, ptr @ccu_div_ops, ptr @.compoundliteral.177, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.179 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.compoundliteral.180 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.181 = internal global %struct.clk_init_data { ptr @.str.179, ptr @ccu_gate_ops, ptr @.compoundliteral.180, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.182 = private unnamed_addr constant [9 x i8] c"gpu-core\00", align 1
@.compoundliteral.183 = internal global [1 x ptr] [ptr @.str.25], align 4
@.compoundliteral.184 = internal global %struct.clk_init_data { ptr @.str.182, ptr @ccu_div_ops, ptr @.compoundliteral.183, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.185 = private unnamed_addr constant [11 x i8] c"gpu-memory\00", align 1
@.compoundliteral.186 = internal global [1 x ptr] [ptr @.str.25], align 4
@.compoundliteral.187 = internal global %struct.clk_init_data { ptr @.str.185, ptr @ccu_div_ops, ptr @.compoundliteral.186, ptr null, ptr null, i8 1, i32 4 }, align 4
@gpu_axi_table = internal constant [2 x i8] c"\01\0A", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"gpu-axi\00", align 1
@gpu_axi_parents = internal constant [2 x ptr] [ptr @.str.10, ptr @.str.25], align 4
@.compoundliteral.189 = internal global %struct.clk_init_data { ptr @.str.188, ptr @ccu_div_ops, ptr @gpu_axi_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.190 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.compoundliteral.191 = internal global [1 x ptr] [ptr @.str.10], align 4
@.compoundliteral.192 = internal global %struct.clk_init_data { ptr @.str.190, ptr @ccu_div_ops, ptr @.compoundliteral.191, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.193 = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@.compoundliteral.194 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.195 = internal global %struct.clk_init_data { ptr @.str.193, ptr @ccu_div_ops, ptr @.compoundliteral.194, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.196 = private unnamed_addr constant [9 x i8] c"mipi-hsi\00", align 1
@.compoundliteral.197 = internal global %struct.clk_init_data { ptr @.str.196, ptr @ccu_div_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@gpadc_table = internal constant [3 x i8] c"\00\04\07", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"gpadc\00", align 1
@gpadc_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.7, ptr @.str.73], align 4
@.compoundliteral.199 = internal global %struct.clk_init_data { ptr @.str.198, ptr @ccu_mp_ops, ptr @gpadc_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@cir_tx_table = internal constant [2 x i8] c"\00\07", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"cir-tx\00", align 1
@cir_tx_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.73], align 4
@.compoundliteral.201 = internal global %struct.clk_init_data { ptr @.str.200, ptr @ccu_mp_ops, ptr @cir_tx_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.202 = private unnamed_addr constant [7 x i8] c"bus-fd\00", align 1
@.compoundliteral.203 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.204 = internal global %struct.clk_init_data { ptr @.str.202, ptr @ccu_gate_ops, ptr @.compoundliteral.203, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.205 = private unnamed_addr constant [7 x i8] c"bus-ve\00", align 1
@.compoundliteral.206 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.207 = internal global %struct.clk_init_data { ptr @.str.205, ptr @ccu_gate_ops, ptr @.compoundliteral.206, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.208 = private unnamed_addr constant [13 x i8] c"bus-gpu-ctrl\00", align 1
@.compoundliteral.209 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.210 = internal global %struct.clk_init_data { ptr @.str.208, ptr @ccu_gate_ops, ptr @.compoundliteral.209, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.211 = private unnamed_addr constant [7 x i8] c"bus-ss\00", align 1
@.compoundliteral.212 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.213 = internal global %struct.clk_init_data { ptr @.str.211, ptr @ccu_gate_ops, ptr @.compoundliteral.212, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.214 = private unnamed_addr constant [8 x i8] c"bus-mmc\00", align 1
@.compoundliteral.215 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.216 = internal global %struct.clk_init_data { ptr @.str.214, ptr @ccu_gate_ops, ptr @.compoundliteral.215, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.217 = private unnamed_addr constant [10 x i8] c"bus-nand0\00", align 1
@.compoundliteral.218 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.219 = internal global %struct.clk_init_data { ptr @.str.217, ptr @ccu_gate_ops, ptr @.compoundliteral.218, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.220 = private unnamed_addr constant [10 x i8] c"bus-nand1\00", align 1
@.compoundliteral.221 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.222 = internal global %struct.clk_init_data { ptr @.str.220, ptr @ccu_gate_ops, ptr @.compoundliteral.221, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.223 = private unnamed_addr constant [10 x i8] c"bus-sdram\00", align 1
@.compoundliteral.224 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.225 = internal global %struct.clk_init_data { ptr @.str.223, ptr @ccu_gate_ops, ptr @.compoundliteral.224, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.226 = private unnamed_addr constant [13 x i8] c"bus-mipi-hsi\00", align 1
@.compoundliteral.227 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.228 = internal global %struct.clk_init_data { ptr @.str.226, ptr @ccu_gate_ops, ptr @.compoundliteral.227, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.229 = private unnamed_addr constant [9 x i8] c"bus-sata\00", align 1
@.compoundliteral.230 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.231 = internal global %struct.clk_init_data { ptr @.str.229, ptr @ccu_gate_ops, ptr @.compoundliteral.230, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.232 = private unnamed_addr constant [7 x i8] c"bus-ts\00", align 1
@.compoundliteral.233 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.234 = internal global %struct.clk_init_data { ptr @.str.232, ptr @ccu_gate_ops, ptr @.compoundliteral.233, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.235 = private unnamed_addr constant [9 x i8] c"bus-spi0\00", align 1
@.compoundliteral.236 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.237 = internal global %struct.clk_init_data { ptr @.str.235, ptr @ccu_gate_ops, ptr @.compoundliteral.236, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.238 = private unnamed_addr constant [9 x i8] c"bus-spi1\00", align 1
@.compoundliteral.239 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.240 = internal global %struct.clk_init_data { ptr @.str.238, ptr @ccu_gate_ops, ptr @.compoundliteral.239, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.241 = private unnamed_addr constant [9 x i8] c"bus-spi2\00", align 1
@.compoundliteral.242 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.243 = internal global %struct.clk_init_data { ptr @.str.241, ptr @ccu_gate_ops, ptr @.compoundliteral.242, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.244 = private unnamed_addr constant [9 x i8] c"bus-spi3\00", align 1
@.compoundliteral.245 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.246 = internal global %struct.clk_init_data { ptr @.str.244, ptr @ccu_gate_ops, ptr @.compoundliteral.245, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.247 = private unnamed_addr constant [8 x i8] c"bus-otg\00", align 1
@.compoundliteral.248 = internal global [1 x ptr] [ptr @.str.57], align 4
@.compoundliteral.249 = internal global %struct.clk_init_data { ptr @.str.247, ptr @ccu_gate_ops, ptr @.compoundliteral.248, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.250 = private unnamed_addr constant [8 x i8] c"bus-usb\00", align 1
@.compoundliteral.251 = internal global [1 x ptr] [ptr @.str.57], align 4
@.compoundliteral.252 = internal global %struct.clk_init_data { ptr @.str.250, ptr @ccu_gate_ops, ptr @.compoundliteral.251, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.253 = private unnamed_addr constant [9 x i8] c"bus-gmac\00", align 1
@.compoundliteral.254 = internal global [1 x ptr] [ptr @.str.57], align 4
@.compoundliteral.255 = internal global %struct.clk_init_data { ptr @.str.253, ptr @ccu_gate_ops, ptr @.compoundliteral.254, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.256 = private unnamed_addr constant [11 x i8] c"bus-msgbox\00", align 1
@.compoundliteral.257 = internal global [1 x ptr] [ptr @.str.57], align 4
@.compoundliteral.258 = internal global %struct.clk_init_data { ptr @.str.256, ptr @ccu_gate_ops, ptr @.compoundliteral.257, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.259 = private unnamed_addr constant [13 x i8] c"bus-spinlock\00", align 1
@.compoundliteral.260 = internal global [1 x ptr] [ptr @.str.57], align 4
@.compoundliteral.261 = internal global %struct.clk_init_data { ptr @.str.259, ptr @ccu_gate_ops, ptr @.compoundliteral.260, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.262 = private unnamed_addr constant [12 x i8] c"bus-hstimer\00", align 1
@.compoundliteral.263 = internal global [1 x ptr] [ptr @.str.57], align 4
@.compoundliteral.264 = internal global %struct.clk_init_data { ptr @.str.262, ptr @ccu_gate_ops, ptr @.compoundliteral.263, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.265 = private unnamed_addr constant [8 x i8] c"bus-dma\00", align 1
@.compoundliteral.266 = internal global [1 x ptr] [ptr @.str.57], align 4
@.compoundliteral.267 = internal global %struct.clk_init_data { ptr @.str.265, ptr @ccu_gate_ops, ptr @.compoundliteral.266, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.268 = private unnamed_addr constant [9 x i8] c"bus-lcd0\00", align 1
@.compoundliteral.269 = internal global [1 x ptr] [ptr @.str.59], align 4
@.compoundliteral.270 = internal global %struct.clk_init_data { ptr @.str.268, ptr @ccu_gate_ops, ptr @.compoundliteral.269, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.271 = private unnamed_addr constant [9 x i8] c"bus-lcd1\00", align 1
@.compoundliteral.272 = internal global [1 x ptr] [ptr @.str.59], align 4
@.compoundliteral.273 = internal global %struct.clk_init_data { ptr @.str.271, ptr @ccu_gate_ops, ptr @.compoundliteral.272, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.274 = private unnamed_addr constant [8 x i8] c"bus-edp\00", align 1
@.compoundliteral.275 = internal global [1 x ptr] [ptr @.str.59], align 4
@.compoundliteral.276 = internal global %struct.clk_init_data { ptr @.str.274, ptr @ccu_gate_ops, ptr @.compoundliteral.275, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.277 = private unnamed_addr constant [8 x i8] c"bus-csi\00", align 1
@.compoundliteral.278 = internal global [1 x ptr] [ptr @.str.59], align 4
@.compoundliteral.279 = internal global %struct.clk_init_data { ptr @.str.277, ptr @ccu_gate_ops, ptr @.compoundliteral.278, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.280 = private unnamed_addr constant [9 x i8] c"bus-hdmi\00", align 1
@.compoundliteral.281 = internal global [1 x ptr] [ptr @.str.59], align 4
@.compoundliteral.282 = internal global %struct.clk_init_data { ptr @.str.280, ptr @ccu_gate_ops, ptr @.compoundliteral.281, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.283 = private unnamed_addr constant [7 x i8] c"bus-de\00", align 1
@.compoundliteral.284 = internal global [1 x ptr] [ptr @.str.59], align 4
@.compoundliteral.285 = internal global %struct.clk_init_data { ptr @.str.283, ptr @ccu_gate_ops, ptr @.compoundliteral.284, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.286 = private unnamed_addr constant [7 x i8] c"bus-mp\00", align 1
@.compoundliteral.287 = internal global [1 x ptr] [ptr @.str.59], align 4
@.compoundliteral.288 = internal global %struct.clk_init_data { ptr @.str.286, ptr @ccu_gate_ops, ptr @.compoundliteral.287, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.289 = private unnamed_addr constant [13 x i8] c"bus-mipi-dsi\00", align 1
@.compoundliteral.290 = internal global [1 x ptr] [ptr @.str.59], align 4
@.compoundliteral.291 = internal global %struct.clk_init_data { ptr @.str.289, ptr @ccu_gate_ops, ptr @.compoundliteral.290, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.292 = private unnamed_addr constant [10 x i8] c"bus-spdif\00", align 1
@.compoundliteral.293 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.294 = internal global %struct.clk_init_data { ptr @.str.292, ptr @ccu_gate_ops, ptr @.compoundliteral.293, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.295 = private unnamed_addr constant [8 x i8] c"bus-pio\00", align 1
@.compoundliteral.296 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.297 = internal global %struct.clk_init_data { ptr @.str.295, ptr @ccu_gate_ops, ptr @.compoundliteral.296, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.298 = private unnamed_addr constant [9 x i8] c"bus-ac97\00", align 1
@.compoundliteral.299 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.300 = internal global %struct.clk_init_data { ptr @.str.298, ptr @ccu_gate_ops, ptr @.compoundliteral.299, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.301 = private unnamed_addr constant [9 x i8] c"bus-i2s0\00", align 1
@.compoundliteral.302 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.303 = internal global %struct.clk_init_data { ptr @.str.301, ptr @ccu_gate_ops, ptr @.compoundliteral.302, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.304 = private unnamed_addr constant [9 x i8] c"bus-i2s1\00", align 1
@.compoundliteral.305 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.306 = internal global %struct.clk_init_data { ptr @.str.304, ptr @ccu_gate_ops, ptr @.compoundliteral.305, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.307 = private unnamed_addr constant [10 x i8] c"bus-lradc\00", align 1
@.compoundliteral.308 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.309 = internal global %struct.clk_init_data { ptr @.str.307, ptr @ccu_gate_ops, ptr @.compoundliteral.308, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.310 = private unnamed_addr constant [10 x i8] c"bus-gpadc\00", align 1
@.compoundliteral.311 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.312 = internal global %struct.clk_init_data { ptr @.str.310, ptr @ccu_gate_ops, ptr @.compoundliteral.311, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.313 = private unnamed_addr constant [8 x i8] c"bus-twd\00", align 1
@.compoundliteral.314 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.315 = internal global %struct.clk_init_data { ptr @.str.313, ptr @ccu_gate_ops, ptr @.compoundliteral.314, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.316 = private unnamed_addr constant [11 x i8] c"bus-cir-tx\00", align 1
@.compoundliteral.317 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.318 = internal global %struct.clk_init_data { ptr @.str.316, ptr @ccu_gate_ops, ptr @.compoundliteral.317, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.319 = private unnamed_addr constant [9 x i8] c"bus-i2c0\00", align 1
@.compoundliteral.320 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.321 = internal global %struct.clk_init_data { ptr @.str.319, ptr @ccu_gate_ops, ptr @.compoundliteral.320, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.322 = private unnamed_addr constant [9 x i8] c"bus-i2c1\00", align 1
@.compoundliteral.323 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.324 = internal global %struct.clk_init_data { ptr @.str.322, ptr @ccu_gate_ops, ptr @.compoundliteral.323, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.325 = private unnamed_addr constant [9 x i8] c"bus-i2c2\00", align 1
@.compoundliteral.326 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.327 = internal global %struct.clk_init_data { ptr @.str.325, ptr @ccu_gate_ops, ptr @.compoundliteral.326, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.328 = private unnamed_addr constant [9 x i8] c"bus-i2c3\00", align 1
@.compoundliteral.329 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.330 = internal global %struct.clk_init_data { ptr @.str.328, ptr @ccu_gate_ops, ptr @.compoundliteral.329, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.331 = private unnamed_addr constant [9 x i8] c"bus-i2c4\00", align 1
@.compoundliteral.332 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.333 = internal global %struct.clk_init_data { ptr @.str.331, ptr @ccu_gate_ops, ptr @.compoundliteral.332, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.334 = private unnamed_addr constant [10 x i8] c"bus-uart0\00", align 1
@.compoundliteral.335 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.336 = internal global %struct.clk_init_data { ptr @.str.334, ptr @ccu_gate_ops, ptr @.compoundliteral.335, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.337 = private unnamed_addr constant [10 x i8] c"bus-uart1\00", align 1
@.compoundliteral.338 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.339 = internal global %struct.clk_init_data { ptr @.str.337, ptr @ccu_gate_ops, ptr @.compoundliteral.338, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.340 = private unnamed_addr constant [10 x i8] c"bus-uart2\00", align 1
@.compoundliteral.341 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.342 = internal global %struct.clk_init_data { ptr @.str.340, ptr @ccu_gate_ops, ptr @.compoundliteral.341, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.343 = private unnamed_addr constant [10 x i8] c"bus-uart3\00", align 1
@.compoundliteral.344 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.345 = internal global %struct.clk_init_data { ptr @.str.343, ptr @ccu_gate_ops, ptr @.compoundliteral.344, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.346 = private unnamed_addr constant [10 x i8] c"bus-uart4\00", align 1
@.compoundliteral.347 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.348 = internal global %struct.clk_init_data { ptr @.str.346, ptr @ccu_gate_ops, ptr @.compoundliteral.347, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.349 = private unnamed_addr constant [10 x i8] c"bus-uart5\00", align 1
@.compoundliteral.350 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.351 = internal global %struct.clk_init_data { ptr @.str.349, ptr @ccu_gate_ops, ptr @.compoundliteral.350, ptr null, ptr null, i8 1, i32 0 }, align 4
@sun9i_a80_hw_clks = internal global { i32, [130 x ptr] } { i32 130, [130 x ptr] [ptr getelementptr (i8, ptr @pll_c0cpux_clk, i64 76), ptr getelementptr (i8, ptr @pll_c1cpux_clk, i64 76), ptr getelementptr (i8, ptr @pll_audio_clk, i64 104), ptr getelementptr (i8, ptr @pll_periph0_clk, i64 88), ptr getelementptr (i8, ptr @pll_ve_clk, i64 88), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 88), ptr getelementptr (i8, ptr @pll_video0_clk, i64 104), ptr getelementptr (i8, ptr @pll_video1_clk, i64 88), ptr getelementptr (i8, ptr @pll_gpu_clk, i64 88), ptr getelementptr (i8, ptr @pll_de_clk, i64 88), ptr getelementptr (i8, ptr @pll_isp_clk, i64 88), ptr getelementptr (i8, ptr @pll_periph1_clk, i64 88), ptr getelementptr (i8, ptr @c0cpux_clk, i64 48), ptr getelementptr (i8, ptr @c1cpux_clk, i64 48), ptr getelementptr (i8, ptr @atb0_clk, i64 68), ptr getelementptr (i8, ptr @axi0_clk, i64 68), ptr getelementptr (i8, ptr @atb1_clk, i64 68), ptr getelementptr (i8, ptr @axi1_clk, i64 68), ptr getelementptr (i8, ptr @gtbus_clk, i64 68), ptr getelementptr (i8, ptr @ahb0_clk, i64 68), ptr getelementptr (i8, ptr @ahb1_clk, i64 68), ptr getelementptr (i8, ptr @ahb2_clk, i64 68), ptr getelementptr (i8, ptr @apb0_clk, i64 68), ptr getelementptr (i8, ptr @apb1_clk, i64 68), ptr getelementptr (i8, ptr @cci400_clk, i64 68), ptr getelementptr (i8, ptr @ats_clk, i64 68), ptr getelementptr (i8, ptr @trace_clk, i64 68), ptr getelementptr (i8, ptr @out_a_clk, i64 92), ptr getelementptr (i8, ptr @out_b_clk, i64 92), ptr getelementptr (i8, ptr @nand0_0_clk, i64 92), ptr getelementptr (i8, ptr @nand0_1_clk, i64 92), ptr getelementptr (i8, ptr @nand1_0_clk, i64 92), ptr getelementptr (i8, ptr @nand1_1_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc0_output_clk, i64 24), ptr getelementptr (i8, ptr @mmc1_clk, i64 92), ptr getelementptr (i8, ptr @mmc1_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc1_output_clk, i64 24), ptr getelementptr (i8, ptr @mmc2_clk, i64 92), ptr getelementptr (i8, ptr @mmc2_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc2_output_clk, i64 24), ptr getelementptr (i8, ptr @mmc3_clk, i64 92), ptr getelementptr (i8, ptr @mmc3_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc3_output_clk, i64 24), ptr getelementptr (i8, ptr @ts_clk, i64 92), ptr getelementptr (i8, ptr @ss_clk, i64 92), ptr getelementptr (i8, ptr @spi0_clk, i64 92), ptr getelementptr (i8, ptr @spi1_clk, i64 92), ptr getelementptr (i8, ptr @spi2_clk, i64 92), ptr getelementptr (i8, ptr @spi3_clk, i64 92), ptr getelementptr (i8, ptr @i2s0_clk, i64 68), ptr getelementptr (i8, ptr @i2s1_clk, i64 68), ptr getelementptr (i8, ptr @spdif_clk, i64 68), ptr getelementptr (i8, ptr @sdram_clk, i64 68), ptr getelementptr (i8, ptr @de_clk, i64 68), ptr getelementptr (i8, ptr @edp_clk, i64 24), ptr getelementptr (i8, ptr @mp_clk, i64 68), ptr getelementptr (i8, ptr @lcd0_clk, i64 68), ptr getelementptr (i8, ptr @lcd1_clk, i64 68), ptr getelementptr (i8, ptr @mipi_dsi0_clk, i64 68), ptr getelementptr (i8, ptr @mipi_dsi1_clk, i64 68), ptr getelementptr (i8, ptr @hdmi_clk, i64 68), ptr getelementptr (i8, ptr @hdmi_slow_clk, i64 24), ptr getelementptr (i8, ptr @mipi_csi_clk, i64 68), ptr getelementptr (i8, ptr @csi_isp_clk, i64 68), ptr getelementptr (i8, ptr @csi_misc_clk, i64 24), ptr getelementptr (i8, ptr @csi0_mclk_clk, i64 68), ptr getelementptr (i8, ptr @csi1_mclk_clk, i64 68), ptr getelementptr (i8, ptr @fd_clk, i64 68), ptr getelementptr (i8, ptr @ve_clk, i64 68), ptr getelementptr (i8, ptr @avs_clk, i64 24), ptr getelementptr (i8, ptr @gpu_core_clk, i64 68), ptr getelementptr (i8, ptr @gpu_memory_clk, i64 68), ptr getelementptr (i8, ptr @gpu_axi_clk, i64 68), ptr getelementptr (i8, ptr @sata_clk, i64 68), ptr getelementptr (i8, ptr @ac97_clk, i64 68), ptr getelementptr (i8, ptr @mipi_hsi_clk, i64 68), ptr getelementptr (i8, ptr @gpadc_clk, i64 92), ptr getelementptr (i8, ptr @cir_tx_clk, i64 92), ptr getelementptr (i8, ptr @bus_fd_clk, i64 24), ptr getelementptr (i8, ptr @bus_ve_clk, i64 24), ptr getelementptr (i8, ptr @bus_gpu_ctrl_clk, i64 24), ptr getelementptr (i8, ptr @bus_ss_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc_clk, i64 24), ptr getelementptr (i8, ptr @bus_nand0_clk, i64 24), ptr getelementptr (i8, ptr @bus_nand1_clk, i64 24), ptr getelementptr (i8, ptr @bus_sdram_clk, i64 24), ptr getelementptr (i8, ptr @bus_mipi_hsi_clk, i64 24), ptr getelementptr (i8, ptr @bus_sata_clk, i64 24), ptr getelementptr (i8, ptr @bus_ts_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi2_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi3_clk, i64 24), ptr getelementptr (i8, ptr @bus_otg_clk, i64 24), ptr getelementptr (i8, ptr @bus_usb_clk, i64 24), ptr getelementptr (i8, ptr @bus_gmac_clk, i64 24), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 24), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 24), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 24), ptr getelementptr (i8, ptr @bus_dma_clk, i64 24), ptr getelementptr (i8, ptr @bus_lcd0_clk, i64 24), ptr getelementptr (i8, ptr @bus_lcd1_clk, i64 24), ptr getelementptr (i8, ptr @bus_edp_clk, i64 24), ptr getelementptr (i8, ptr @bus_csi_clk, i64 24), ptr getelementptr (i8, ptr @bus_hdmi_clk, i64 24), ptr getelementptr (i8, ptr @bus_de_clk, i64 24), ptr getelementptr (i8, ptr @bus_mp_clk, i64 24), ptr getelementptr (i8, ptr @bus_mipi_dsi_clk, i64 24), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 24), ptr getelementptr (i8, ptr @bus_pio_clk, i64 24), ptr getelementptr (i8, ptr @bus_ac97_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 24), ptr getelementptr (i8, ptr @bus_lradc_clk, i64 24), ptr getelementptr (i8, ptr @bus_gpadc_clk, i64 24), ptr getelementptr (i8, ptr @bus_twd_clk, i64 24), ptr getelementptr (i8, ptr @bus_cir_tx_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c3_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c4_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart4_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart5_clk, i64 24)] }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_import_ns163, ptr @__UNIQUE_ID_license165, ptr @__exitcall_sun9i_a80_ccu_driver_exit, ptr @__initcall__kmod_sun9i_a80_ccu__162_1248_sun9i_a80_ccu_driver_init6, ptr @sun9i_a80_ccu_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun9i_a80_ccu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun9i_a80_ccu_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_ccu_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun9i_a80_ccu_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_a80_ccu_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %27

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %2, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %9 = and i32 %8, -327681
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #3, !srcloc !11
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = and i32 %10, -130817
  %15 = or i32 %14, 4352
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %15) #3, !srcloc !11
  br label %16

16:                                               ; preds = %13, %6
  %17 = getelementptr i8, ptr %2, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %19 = and i32 %18, 65536
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = and i32 %18, -130817
  %23 = or i32 %22, 4352
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %23) #3, !srcloc !11
  br label %24

24:                                               ; preds = %21, %16
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %26 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %25, ptr noundef %2, ptr noundef nonnull @sun9i_a80_ccu_desc) #3
  br label %27

27:                                               ; preds = %24, %4
  %28 = phi i32 [ %5, %4 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2878072}
!9 = !{i64 2151581781}
!10 = !{i64 2151582118}
!11 = !{i64 2877654}
!12 = !{i64 2151580283}
!13 = !{i64 2151581344}
