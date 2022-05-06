; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun8i-h3.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun8i-h3.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ccu_pll_nb = type { %struct.notifier_block, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ccu_nkmp = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_div_internal, i32, i32, %struct.ccu_common }
%struct.ccu_mult_internal = type { i8, i8, i8, i8, i8 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_mux_nb = type { %struct.notifier_block, ptr, ptr, i32, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ccu_mux = type { i32, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_nm = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_frac_internal, %struct.ccu_sdm_internal, i32, i32, i32, %struct.ccu_common }
%struct.ccu_frac_internal = type { i32, i32, [2 x i32] }
%struct.ccu_sdm_internal = type { ptr, i32, i32, i32, i16 }
%struct.ccu_nkm = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_nk = type { i16, i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, i32, %struct.ccu_common }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_phase = type { i8, i8, %struct.ccu_common }
%struct.ccu_sdm_setting = type { i32, i32, i32, i32 }
%struct.ccu_mux_var_prediv = type { i8, i8, i8 }
%struct.clk_div_table = type { i32, i32 }
%struct.ccu_mux_fixed_prediv = type { i8, i16 }
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

@__initcall__kmod_sun8i_h3_ccu__162_1196_sun8i_h3_ccu_driver_init6 = internal global ptr @sun8i_h3_ccu_driver_init, section ".initcall6.init", align 4
@sun8i_h3_ccu_driver = internal global %struct.platform_driver { ptr @sun8i_h3_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun8i_h3_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun8i_h3_ccu_driver_exit = internal global ptr @sun8i_h3_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns163 = internal constant [33 x i8] c"sun8i_h3_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [52 x i8] c"sun8i_h3_ccu.file=drivers/clk/sunxi-ng/sun8i-h3-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [25 x i8] c"sun8i_h3_ccu.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"sun8i-h3-ccu\00", align 1
@sun8i_h3_ccu_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_ccu_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h5_ccu_desc }, %struct.of_device_id zeroinitializer], align 4
@sun8i_h3_pll_cpu_nb = internal global %struct.ccu_pll_nb { %struct.notifier_block zeroinitializer, ptr getelementptr (i8, ptr @pll_cpux_clk, i64 68), i32 -2147483648, i32 268435456 }, align 4
@pll_cpux_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 } } }, align 4
@sun8i_h3_cpu_nb = internal global %struct.ccu_mux_nb { %struct.notifier_block zeroinitializer, ptr getelementptr (i8, ptr @cpux_clk, i64 28), ptr getelementptr (i8, ptr @cpux_clk, i64 4), i32 1, i8 1, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pll-cpux\00", align 1
@ccu_nkmp_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"osc24M\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.3 = internal global %struct.clk_init_data { ptr @.str.1, ptr @ccu_nkmp_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 1024 }, align 4
@cpux_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 } } }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"cpux\00", align 1
@ccu_mux_ops = external dso_local constant %struct.clk_ops, align 4
@cpux_parents = internal constant [4 x ptr] [ptr @.str.6, ptr @.str.2, ptr @.str.1, ptr @.str.1], align 4
@.compoundliteral.5 = internal global %struct.clk_init_data { ptr @.str.4, ptr @ccu_mux_ops, ptr @cpux_parents, ptr null, ptr null, i8 4, i32 2052 }, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"osc32k\00", align 1
@sun8i_h3_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_h3_ccu_clks, i32 110, ptr @sun8i_h3_hw_clks, ptr @sun8i_h3_ccu_resets, i32 54 }, align 4
@sun50i_h5_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun50i_h5_ccu_clks, i32 105, ptr @sun50i_h5_hw_clks, ptr @sun50i_h5_ccu_resets, i32 55 }, align 4
@sun8i_h3_ccu_clks = internal global [110 x ptr] [ptr getelementptr (i8, ptr @pll_cpux_clk, i64 68), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 84), ptr getelementptr (i8, ptr @pll_video_clk, i64 84), ptr getelementptr (i8, ptr @pll_ve_clk, i64 84), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 68), ptr getelementptr (i8, ptr @pll_periph0_clk, i64 28), ptr getelementptr (i8, ptr @pll_gpu_clk, i64 84), ptr getelementptr (i8, ptr @pll_periph1_clk, i64 28), ptr getelementptr (i8, ptr @pll_de_clk, i64 84), ptr getelementptr (i8, ptr @cpux_clk, i64 28), ptr getelementptr (i8, ptr @axi_clk, i64 48), ptr getelementptr (i8, ptr @ahb1_clk, i64 48), ptr getelementptr (i8, ptr @apb1_clk, i64 48), ptr getelementptr (i8, ptr @apb2_clk, i64 72), ptr getelementptr (i8, ptr @ahb2_clk, i64 28), ptr getelementptr (i8, ptr @bus_ce_clk, i64 4), ptr getelementptr (i8, ptr @bus_dma_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 4), ptr getelementptr (i8, ptr @bus_nand_clk, i64 4), ptr getelementptr (i8, ptr @bus_dram_clk, i64 4), ptr getelementptr (i8, ptr @bus_emac_clk, i64 4), ptr getelementptr (i8, ptr @bus_ts_clk, i64 4), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 4), ptr getelementptr (i8, ptr @bus_otg_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci1_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci2_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci3_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci1_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci2_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci3_clk, i64 4), ptr getelementptr (i8, ptr @bus_ve_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon0_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon1_clk, i64 4), ptr getelementptr (i8, ptr @bus_deinterlace_clk, i64 4), ptr getelementptr (i8, ptr @bus_csi_clk, i64 4), ptr getelementptr (i8, ptr @bus_tve_clk, i64 4), ptr getelementptr (i8, ptr @bus_hdmi_clk, i64 4), ptr getelementptr (i8, ptr @bus_de_clk, i64 4), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 4), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 4), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 4), ptr getelementptr (i8, ptr @bus_codec_clk, i64 4), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 4), ptr getelementptr (i8, ptr @bus_pio_clk, i64 4), ptr getelementptr (i8, ptr @bus_ths_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s2_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 4), ptr getelementptr (i8, ptr @bus_scr0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ephy_clk, i64 4), ptr getelementptr (i8, ptr @bus_dbg_clk, i64 4), ptr getelementptr (i8, ptr @ths_clk, i64 48), ptr getelementptr (i8, ptr @nand_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc0_output_clk, i64 4), ptr getelementptr (i8, ptr @mmc1_clk, i64 72), ptr getelementptr (i8, ptr @mmc1_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc1_output_clk, i64 4), ptr getelementptr (i8, ptr @mmc2_clk, i64 72), ptr getelementptr (i8, ptr @mmc2_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc2_output_clk, i64 4), ptr getelementptr (i8, ptr @ts_clk, i64 72), ptr getelementptr (i8, ptr @ce_clk, i64 72), ptr getelementptr (i8, ptr @spi0_clk, i64 72), ptr getelementptr (i8, ptr @spi1_clk, i64 72), ptr getelementptr (i8, ptr @i2s0_clk, i64 28), ptr getelementptr (i8, ptr @i2s1_clk, i64 28), ptr getelementptr (i8, ptr @i2s2_clk, i64 28), ptr getelementptr (i8, ptr @spdif_clk, i64 48), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy2_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy3_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci1_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci3_clk, i64 4), ptr getelementptr (i8, ptr @dram_clk, i64 48), ptr getelementptr (i8, ptr @dram_ve_clk, i64 4), ptr getelementptr (i8, ptr @dram_csi_clk, i64 4), ptr getelementptr (i8, ptr @dram_deinterlace_clk, i64 4), ptr getelementptr (i8, ptr @dram_ts_clk, i64 4), ptr getelementptr (i8, ptr @de_clk, i64 48), ptr getelementptr (i8, ptr @tcon_clk, i64 48), ptr getelementptr (i8, ptr @tve_clk, i64 48), ptr getelementptr (i8, ptr @deinterlace_clk, i64 48), ptr getelementptr (i8, ptr @csi_misc_clk, i64 4), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 48), ptr getelementptr (i8, ptr @csi_mclk_clk, i64 48), ptr getelementptr (i8, ptr @ve_clk, i64 48), ptr getelementptr (i8, ptr @ac_dig_clk, i64 4), ptr getelementptr (i8, ptr @avs_clk, i64 4), ptr getelementptr (i8, ptr @hdmi_clk, i64 48), ptr getelementptr (i8, ptr @hdmi_ddc_clk, i64 4), ptr getelementptr (i8, ptr @mbus_clk, i64 48), ptr getelementptr (i8, ptr @gpu_clk, i64 48)], align 4
@sun8i_h3_ccu_resets = internal global [54 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 204, i32 1 }, %struct.ccu_reset_map { i16 204, i32 2 }, %struct.ccu_reset_map { i16 204, i32 4 }, %struct.ccu_reset_map { i16 204, i32 8 }, %struct.ccu_reset_map { i16 252, i32 -2147483648 }, %struct.ccu_reset_map { i16 704, i32 32 }, %struct.ccu_reset_map { i16 704, i32 64 }, %struct.ccu_reset_map { i16 704, i32 256 }, %struct.ccu_reset_map { i16 704, i32 512 }, %struct.ccu_reset_map { i16 704, i32 1024 }, %struct.ccu_reset_map { i16 704, i32 8192 }, %struct.ccu_reset_map { i16 704, i32 16384 }, %struct.ccu_reset_map { i16 704, i32 131072 }, %struct.ccu_reset_map { i16 704, i32 262144 }, %struct.ccu_reset_map { i16 704, i32 524288 }, %struct.ccu_reset_map { i16 704, i32 1048576 }, %struct.ccu_reset_map { i16 704, i32 2097152 }, %struct.ccu_reset_map { i16 704, i32 8388608 }, %struct.ccu_reset_map { i16 704, i32 16777216 }, %struct.ccu_reset_map { i16 704, i32 33554432 }, %struct.ccu_reset_map { i16 704, i32 67108864 }, %struct.ccu_reset_map { i16 704, i32 134217728 }, %struct.ccu_reset_map { i16 704, i32 268435456 }, %struct.ccu_reset_map { i16 704, i32 536870912 }, %struct.ccu_reset_map { i16 704, i32 1073741824 }, %struct.ccu_reset_map { i16 704, i32 -2147483648 }, %struct.ccu_reset_map { i16 708, i32 1 }, %struct.ccu_reset_map { i16 708, i32 8 }, %struct.ccu_reset_map { i16 708, i32 16 }, %struct.ccu_reset_map { i16 708, i32 32 }, %struct.ccu_reset_map { i16 708, i32 256 }, %struct.ccu_reset_map { i16 708, i32 512 }, %struct.ccu_reset_map { i16 708, i32 1024 }, %struct.ccu_reset_map { i16 708, i32 2048 }, %struct.ccu_reset_map { i16 708, i32 4096 }, %struct.ccu_reset_map { i16 708, i32 1048576 }, %struct.ccu_reset_map { i16 708, i32 2097152 }, %struct.ccu_reset_map { i16 708, i32 4194304 }, %struct.ccu_reset_map { i16 708, i32 -2147483648 }, %struct.ccu_reset_map { i16 712, i32 4 }, %struct.ccu_reset_map { i16 720, i32 1 }, %struct.ccu_reset_map { i16 720, i32 2 }, %struct.ccu_reset_map { i16 720, i32 256 }, %struct.ccu_reset_map { i16 720, i32 4096 }, %struct.ccu_reset_map { i16 720, i32 8192 }, %struct.ccu_reset_map { i16 720, i32 16384 }, %struct.ccu_reset_map { i16 728, i32 1 }, %struct.ccu_reset_map { i16 728, i32 2 }, %struct.ccu_reset_map { i16 728, i32 4 }, %struct.ccu_reset_map { i16 728, i32 65536 }, %struct.ccu_reset_map { i16 728, i32 131072 }, %struct.ccu_reset_map { i16 728, i32 262144 }, %struct.ccu_reset_map { i16 728, i32 524288 }, %struct.ccu_reset_map { i16 728, i32 1048576 }], align 4
@pll_audio_base_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_sdm_internal { ptr @pll_audio_sdm_table, i32 2, i32 16777216, i32 -2147483648, i16 644 }, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 128, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } } }, align 4
@pll_video_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 192000000, i32 912000000, %struct.ccu_common { ptr null, i16 16, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 } } }, align 4
@pll_ve_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 24, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, align 4
@pll_ddr_clk = internal global %struct.ccu_nkm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, i32 0, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 } } }, align 4
@pll_periph0_clk = internal global %struct.ccu_nk { i16 0, i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, i32 2, %struct.ccu_common { ptr null, i16 40, i16 0, i32 0, i32 8, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, align 4
@pll_gpu_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 56, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 } } }, align 4
@pll_periph1_clk = internal global %struct.ccu_nk { i16 0, i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 5, i8 1, i8 0 }, %struct.ccu_mult_internal { i8 1, i8 4, i8 2, i8 1, i8 0 }, i32 2, %struct.ccu_common { ptr null, i16 68, i16 0, i32 0, i32 8, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 } } }, align 4
@pll_de_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 268435456, %struct.ccu_mult_internal { i8 1, i8 8, i8 7, i8 1, i8 0 }, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal { i32 16777216, i32 33554432, [2 x i32] [i32 270000000, i32 297000000] }, %struct.ccu_sdm_internal zeroinitializer, i32 0, i32 0, i32 0, %struct.ccu_common { ptr null, i16 72, i16 0, i32 0, i32 1, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 } } }, align 4
@axi_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 } }, i32 0 }, align 4
@ahb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 12, i8 2, ptr null, ptr null, i8 0, ptr @ahb1_predivs, i8 1 }, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 2, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 } }, i32 0 }, align 4
@apb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 0, i32 0, ptr @apb1_div_table }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 } }, i32 0 }, align 4
@apb2_clk = internal global %struct.ccu_mp { i32 0, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 88, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 } } }, align 4
@ahb2_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 0, i8 1, ptr null, ptr @ahb2_fixed_predivs, i8 1, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 92, i16 0, i32 0, i32 4, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.42 } } }, align 4
@bus_ce_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 } } }, align 4
@bus_dma_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 } } }, align 4
@bus_mmc0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 } } }, align 4
@bus_mmc1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 } } }, align 4
@bus_mmc2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 } } }, align 4
@bus_nand_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.60 } } }, align 4
@bus_dram_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.63 } } }, align 4
@bus_emac_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 } } }, align 4
@bus_ts_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 } } }, align 4
@bus_hstimer_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.72 } } }, align 4
@bus_spi0_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 } } }, align 4
@bus_spi1_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.78 } } }, align 4
@bus_otg_clk = internal global %struct.ccu_gate { i32 8388608, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.81 } } }, align 4
@bus_ehci0_clk = internal global %struct.ccu_gate { i32 16777216, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.84 } } }, align 4
@bus_ehci1_clk = internal global %struct.ccu_gate { i32 33554432, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.87 } } }, align 4
@bus_ehci2_clk = internal global %struct.ccu_gate { i32 67108864, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.90 } } }, align 4
@bus_ehci3_clk = internal global %struct.ccu_gate { i32 134217728, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 } } }, align 4
@bus_ohci0_clk = internal global %struct.ccu_gate { i32 268435456, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.96 } } }, align 4
@bus_ohci1_clk = internal global %struct.ccu_gate { i32 536870912, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.99 } } }, align 4
@bus_ohci2_clk = internal global %struct.ccu_gate { i32 1073741824, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.102 } } }, align 4
@bus_ohci3_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.105 } } }, align 4
@bus_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.108 } } }, align 4
@bus_tcon0_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.111 } } }, align 4
@bus_tcon1_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.114 } } }, align 4
@bus_deinterlace_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.117 } } }, align 4
@bus_csi_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.120 } } }, align 4
@bus_tve_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.123 } } }, align 4
@bus_hdmi_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.126 } } }, align 4
@bus_de_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.129 } } }, align 4
@bus_gpu_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.132 } } }, align 4
@bus_msgbox_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.135 } } }, align 4
@bus_spinlock_clk = internal global %struct.ccu_gate { i32 4194304, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.138 } } }, align 4
@bus_codec_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.141 } } }, align 4
@bus_spdif_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.144 } } }, align 4
@bus_pio_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.147 } } }, align 4
@bus_ths_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.150 } } }, align 4
@bus_i2s0_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.153 } } }, align 4
@bus_i2s1_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.156 } } }, align 4
@bus_i2s2_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.159 } } }, align 4
@bus_i2c0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.162 } } }, align 4
@bus_i2c1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.165 } } }, align 4
@bus_i2c2_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.168 } } }, align 4
@bus_uart0_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.171 } } }, align 4
@bus_uart1_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.174 } } }, align 4
@bus_uart2_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.177 } } }, align 4
@bus_uart3_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.180 } } }, align 4
@bus_scr0_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.183 } } }, align 4
@bus_ephy_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 112, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.186 } } }, align 4
@bus_dbg_clk = internal global %struct.ccu_gate { i32 128, %struct.ccu_common { ptr null, i16 112, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.189 } } }, align 4
@ths_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 0, i32 0, ptr @ths_div_table }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 116, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.192 } }, i32 0 }, align 4
@nand_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 128, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.194 } } }, align 4
@mmc0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.196 } } }, align 4
@mmc0_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.199 } } }, align 4
@mmc0_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.202 } } }, align 4
@mmc1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.204 } } }, align 4
@mmc1_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.207 } } }, align 4
@mmc1_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.210 } } }, align 4
@mmc2_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.212 } } }, align 4
@mmc2_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.215 } } }, align 4
@mmc2_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.218 } } }, align 4
@ts_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 152, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.220 } } }, align 4
@ce_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 156, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.222 } } }, align 4
@spi0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 160, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.224 } } }, align 4
@spi1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 164, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.226 } } }, align 4
@i2s0_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 176, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.228 } } }, align 4
@i2s1_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 180, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.234 } } }, align 4
@i2s2_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 16, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 184, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.236 } } }, align 4
@spdif_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 192, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.239 } }, i32 0 }, align 4
@usb_phy0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.242 } } }, align 4
@usb_phy1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.245 } } }, align 4
@usb_phy2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.248 } } }, align 4
@usb_phy3_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.251 } } }, align 4
@usb_ohci0_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.254 } } }, align 4
@usb_ohci1_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.257 } } }, align 4
@usb_ohci2_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.260 } } }, align 4
@usb_ohci3_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.263 } } }, align 4
@dram_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 20, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 244, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.265 } }, i32 0 }, align 4
@dram_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.269 } } }, align 4
@dram_csi_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.272 } } }, align 4
@dram_deinterlace_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.275 } } }, align 4
@dram_ts_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.278 } } }, align 4
@de_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 260, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.280 } }, i32 0 }, align 4
@tcon_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 280, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.282 } }, i32 0 }, align 4
@tve_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 288, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.284 } }, i32 0 }, align 4
@deinterlace_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 292, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.286 } }, i32 0 }, align 4
@csi_misc_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 304, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.289 } } }, align 4
@csi_sclk_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 308, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.291 } }, i32 0 }, align 4
@csi_mclk_clk = internal global %struct.ccu_div { i32 32768, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 8, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 308, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.293 } }, i32 0 }, align 4
@ve_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 316, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.296 } }, i32 0 }, align 4
@ac_dig_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 320, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.299 } } }, align 4
@avs_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 324, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.302 } } }, align 4
@hdmi_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 336, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.304 } }, i32 0 }, align 4
@hdmi_ddc_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 340, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.307 } } }, align 4
@mbus_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 348, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.309 } }, i32 0 }, align 4
@gpu_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.312 } }, i32 0 }, align 4
@pll_audio_sdm_table = internal global [2 x %struct.ccu_sdm_setting] [%struct.ccu_sdm_setting { i32 22579200, i32 -1073672828, i32 8, i32 7 }, %struct.ccu_sdm_setting { i32 24576000, i32 -1073697790, i32 14, i32 14 }], align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"pll-audio-base\00", align 1
@ccu_nm_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.8 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.9 = internal global %struct.clk_init_data { ptr @.str.7, ptr @ccu_nm_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"pll-video\00", align 1
@.compoundliteral.11 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.12 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_nm_ops, ptr @.compoundliteral.11, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"pll-ve\00", align 1
@.compoundliteral.14 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.15 = internal global %struct.clk_init_data { ptr @.str.13, ptr @ccu_nm_ops, ptr @.compoundliteral.14, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"pll-ddr\00", align 1
@ccu_nkm_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.17 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.18 = internal global %struct.clk_init_data { ptr @.str.16, ptr @ccu_nkm_ops, ptr @.compoundliteral.17, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"pll-periph0\00", align 1
@ccu_nk_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.20 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.21 = internal global %struct.clk_init_data { ptr @.str.19, ptr @ccu_nk_ops, ptr @.compoundliteral.20, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"pll-gpu\00", align 1
@.compoundliteral.23 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.24 = internal global %struct.clk_init_data { ptr @.str.22, ptr @ccu_nm_ops, ptr @.compoundliteral.23, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"pll-periph1\00", align 1
@.compoundliteral.26 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.27 = internal global %struct.clk_init_data { ptr @.str.25, ptr @ccu_nk_ops, ptr @.compoundliteral.26, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"pll-de\00", align 1
@.compoundliteral.29 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.30 = internal global %struct.clk_init_data { ptr @.str.28, ptr @ccu_nm_ops, ptr @.compoundliteral.29, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.31 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.32 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.33 = internal global %struct.clk_init_data { ptr @.str.31, ptr @ccu_div_ops, ptr @.compoundliteral.32, ptr null, ptr null, i8 1, i32 0 }, align 4
@ahb1_predivs = internal constant [1 x %struct.ccu_mux_var_prediv] [%struct.ccu_mux_var_prediv { i8 3, i8 6, i8 2 }], align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"ahb1\00", align 1
@ahb1_parents = internal constant [4 x ptr] [ptr @.str.6, ptr @.str.2, ptr @.str.31, ptr @.str.19], align 4
@.compoundliteral.35 = internal global %struct.clk_init_data { ptr @.str.34, ptr @ccu_div_ops, ptr @ahb1_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@apb1_div_table = internal global [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"apb1\00", align 1
@.compoundliteral.37 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.38 = internal global %struct.clk_init_data { ptr @.str.36, ptr @ccu_div_ops, ptr @.compoundliteral.37, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.39 = private unnamed_addr constant [5 x i8] c"apb2\00", align 1
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@apb2_parents = internal constant [4 x ptr] [ptr @.str.6, ptr @.str.2, ptr @.str.19, ptr @.str.19], align 4
@.compoundliteral.40 = internal global %struct.clk_init_data { ptr @.str.39, ptr @ccu_mp_ops, ptr @apb2_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@ahb2_fixed_predivs = internal constant [1 x %struct.ccu_mux_fixed_prediv] [%struct.ccu_mux_fixed_prediv { i8 1, i16 2 }], align 2
@.str.41 = private unnamed_addr constant [5 x i8] c"ahb2\00", align 1
@ahb2_parents = internal constant [2 x ptr] [ptr @.str.34, ptr @.str.19], align 4
@.compoundliteral.42 = internal global %struct.clk_init_data { ptr @.str.41, ptr @ccu_mux_ops, ptr @ahb2_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"bus-ce\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.44 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.45 = internal global %struct.clk_init_data { ptr @.str.43, ptr @ccu_gate_ops, ptr @.compoundliteral.44, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.46 = private unnamed_addr constant [8 x i8] c"bus-dma\00", align 1
@.compoundliteral.47 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.48 = internal global %struct.clk_init_data { ptr @.str.46, ptr @ccu_gate_ops, ptr @.compoundliteral.47, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.49 = private unnamed_addr constant [9 x i8] c"bus-mmc0\00", align 1
@.compoundliteral.50 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.51 = internal global %struct.clk_init_data { ptr @.str.49, ptr @ccu_gate_ops, ptr @.compoundliteral.50, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.52 = private unnamed_addr constant [9 x i8] c"bus-mmc1\00", align 1
@.compoundliteral.53 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.54 = internal global %struct.clk_init_data { ptr @.str.52, ptr @ccu_gate_ops, ptr @.compoundliteral.53, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.55 = private unnamed_addr constant [9 x i8] c"bus-mmc2\00", align 1
@.compoundliteral.56 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.57 = internal global %struct.clk_init_data { ptr @.str.55, ptr @ccu_gate_ops, ptr @.compoundliteral.56, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.58 = private unnamed_addr constant [9 x i8] c"bus-nand\00", align 1
@.compoundliteral.59 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.60 = internal global %struct.clk_init_data { ptr @.str.58, ptr @ccu_gate_ops, ptr @.compoundliteral.59, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.61 = private unnamed_addr constant [9 x i8] c"bus-dram\00", align 1
@.compoundliteral.62 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.63 = internal global %struct.clk_init_data { ptr @.str.61, ptr @ccu_gate_ops, ptr @.compoundliteral.62, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.64 = private unnamed_addr constant [9 x i8] c"bus-emac\00", align 1
@.compoundliteral.65 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.66 = internal global %struct.clk_init_data { ptr @.str.64, ptr @ccu_gate_ops, ptr @.compoundliteral.65, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.67 = private unnamed_addr constant [7 x i8] c"bus-ts\00", align 1
@.compoundliteral.68 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.69 = internal global %struct.clk_init_data { ptr @.str.67, ptr @ccu_gate_ops, ptr @.compoundliteral.68, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.70 = private unnamed_addr constant [12 x i8] c"bus-hstimer\00", align 1
@.compoundliteral.71 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.72 = internal global %struct.clk_init_data { ptr @.str.70, ptr @ccu_gate_ops, ptr @.compoundliteral.71, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.73 = private unnamed_addr constant [9 x i8] c"bus-spi0\00", align 1
@.compoundliteral.74 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.75 = internal global %struct.clk_init_data { ptr @.str.73, ptr @ccu_gate_ops, ptr @.compoundliteral.74, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.76 = private unnamed_addr constant [9 x i8] c"bus-spi1\00", align 1
@.compoundliteral.77 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.78 = internal global %struct.clk_init_data { ptr @.str.76, ptr @ccu_gate_ops, ptr @.compoundliteral.77, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.79 = private unnamed_addr constant [8 x i8] c"bus-otg\00", align 1
@.compoundliteral.80 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.81 = internal global %struct.clk_init_data { ptr @.str.79, ptr @ccu_gate_ops, ptr @.compoundliteral.80, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.82 = private unnamed_addr constant [10 x i8] c"bus-ehci0\00", align 1
@.compoundliteral.83 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.84 = internal global %struct.clk_init_data { ptr @.str.82, ptr @ccu_gate_ops, ptr @.compoundliteral.83, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.85 = private unnamed_addr constant [10 x i8] c"bus-ehci1\00", align 1
@.compoundliteral.86 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.87 = internal global %struct.clk_init_data { ptr @.str.85, ptr @ccu_gate_ops, ptr @.compoundliteral.86, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.88 = private unnamed_addr constant [10 x i8] c"bus-ehci2\00", align 1
@.compoundliteral.89 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.90 = internal global %struct.clk_init_data { ptr @.str.88, ptr @ccu_gate_ops, ptr @.compoundliteral.89, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.91 = private unnamed_addr constant [10 x i8] c"bus-ehci3\00", align 1
@.compoundliteral.92 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.93 = internal global %struct.clk_init_data { ptr @.str.91, ptr @ccu_gate_ops, ptr @.compoundliteral.92, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.94 = private unnamed_addr constant [10 x i8] c"bus-ohci0\00", align 1
@.compoundliteral.95 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.96 = internal global %struct.clk_init_data { ptr @.str.94, ptr @ccu_gate_ops, ptr @.compoundliteral.95, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.97 = private unnamed_addr constant [10 x i8] c"bus-ohci1\00", align 1
@.compoundliteral.98 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.99 = internal global %struct.clk_init_data { ptr @.str.97, ptr @ccu_gate_ops, ptr @.compoundliteral.98, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.100 = private unnamed_addr constant [10 x i8] c"bus-ohci2\00", align 1
@.compoundliteral.101 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.102 = internal global %struct.clk_init_data { ptr @.str.100, ptr @ccu_gate_ops, ptr @.compoundliteral.101, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.103 = private unnamed_addr constant [10 x i8] c"bus-ohci3\00", align 1
@.compoundliteral.104 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.105 = internal global %struct.clk_init_data { ptr @.str.103, ptr @ccu_gate_ops, ptr @.compoundliteral.104, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.106 = private unnamed_addr constant [7 x i8] c"bus-ve\00", align 1
@.compoundliteral.107 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.108 = internal global %struct.clk_init_data { ptr @.str.106, ptr @ccu_gate_ops, ptr @.compoundliteral.107, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.109 = private unnamed_addr constant [10 x i8] c"bus-tcon0\00", align 1
@.compoundliteral.110 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.111 = internal global %struct.clk_init_data { ptr @.str.109, ptr @ccu_gate_ops, ptr @.compoundliteral.110, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.112 = private unnamed_addr constant [10 x i8] c"bus-tcon1\00", align 1
@.compoundliteral.113 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.114 = internal global %struct.clk_init_data { ptr @.str.112, ptr @ccu_gate_ops, ptr @.compoundliteral.113, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.115 = private unnamed_addr constant [16 x i8] c"bus-deinterlace\00", align 1
@.compoundliteral.116 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.117 = internal global %struct.clk_init_data { ptr @.str.115, ptr @ccu_gate_ops, ptr @.compoundliteral.116, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.118 = private unnamed_addr constant [8 x i8] c"bus-csi\00", align 1
@.compoundliteral.119 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.120 = internal global %struct.clk_init_data { ptr @.str.118, ptr @ccu_gate_ops, ptr @.compoundliteral.119, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.121 = private unnamed_addr constant [8 x i8] c"bus-tve\00", align 1
@.compoundliteral.122 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.123 = internal global %struct.clk_init_data { ptr @.str.121, ptr @ccu_gate_ops, ptr @.compoundliteral.122, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.124 = private unnamed_addr constant [9 x i8] c"bus-hdmi\00", align 1
@.compoundliteral.125 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.126 = internal global %struct.clk_init_data { ptr @.str.124, ptr @ccu_gate_ops, ptr @.compoundliteral.125, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.127 = private unnamed_addr constant [7 x i8] c"bus-de\00", align 1
@.compoundliteral.128 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.129 = internal global %struct.clk_init_data { ptr @.str.127, ptr @ccu_gate_ops, ptr @.compoundliteral.128, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.130 = private unnamed_addr constant [8 x i8] c"bus-gpu\00", align 1
@.compoundliteral.131 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.132 = internal global %struct.clk_init_data { ptr @.str.130, ptr @ccu_gate_ops, ptr @.compoundliteral.131, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.133 = private unnamed_addr constant [11 x i8] c"bus-msgbox\00", align 1
@.compoundliteral.134 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.135 = internal global %struct.clk_init_data { ptr @.str.133, ptr @ccu_gate_ops, ptr @.compoundliteral.134, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.136 = private unnamed_addr constant [13 x i8] c"bus-spinlock\00", align 1
@.compoundliteral.137 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.138 = internal global %struct.clk_init_data { ptr @.str.136, ptr @ccu_gate_ops, ptr @.compoundliteral.137, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.139 = private unnamed_addr constant [10 x i8] c"bus-codec\00", align 1
@.compoundliteral.140 = internal global [1 x ptr] [ptr @.str.36], align 4
@.compoundliteral.141 = internal global %struct.clk_init_data { ptr @.str.139, ptr @ccu_gate_ops, ptr @.compoundliteral.140, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.142 = private unnamed_addr constant [10 x i8] c"bus-spdif\00", align 1
@.compoundliteral.143 = internal global [1 x ptr] [ptr @.str.36], align 4
@.compoundliteral.144 = internal global %struct.clk_init_data { ptr @.str.142, ptr @ccu_gate_ops, ptr @.compoundliteral.143, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.145 = private unnamed_addr constant [8 x i8] c"bus-pio\00", align 1
@.compoundliteral.146 = internal global [1 x ptr] [ptr @.str.36], align 4
@.compoundliteral.147 = internal global %struct.clk_init_data { ptr @.str.145, ptr @ccu_gate_ops, ptr @.compoundliteral.146, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.148 = private unnamed_addr constant [8 x i8] c"bus-ths\00", align 1
@.compoundliteral.149 = internal global [1 x ptr] [ptr @.str.36], align 4
@.compoundliteral.150 = internal global %struct.clk_init_data { ptr @.str.148, ptr @ccu_gate_ops, ptr @.compoundliteral.149, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.151 = private unnamed_addr constant [9 x i8] c"bus-i2s0\00", align 1
@.compoundliteral.152 = internal global [1 x ptr] [ptr @.str.36], align 4
@.compoundliteral.153 = internal global %struct.clk_init_data { ptr @.str.151, ptr @ccu_gate_ops, ptr @.compoundliteral.152, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.154 = private unnamed_addr constant [9 x i8] c"bus-i2s1\00", align 1
@.compoundliteral.155 = internal global [1 x ptr] [ptr @.str.36], align 4
@.compoundliteral.156 = internal global %struct.clk_init_data { ptr @.str.154, ptr @ccu_gate_ops, ptr @.compoundliteral.155, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.157 = private unnamed_addr constant [9 x i8] c"bus-i2s2\00", align 1
@.compoundliteral.158 = internal global [1 x ptr] [ptr @.str.36], align 4
@.compoundliteral.159 = internal global %struct.clk_init_data { ptr @.str.157, ptr @ccu_gate_ops, ptr @.compoundliteral.158, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.160 = private unnamed_addr constant [9 x i8] c"bus-i2c0\00", align 1
@.compoundliteral.161 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.162 = internal global %struct.clk_init_data { ptr @.str.160, ptr @ccu_gate_ops, ptr @.compoundliteral.161, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.163 = private unnamed_addr constant [9 x i8] c"bus-i2c1\00", align 1
@.compoundliteral.164 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.165 = internal global %struct.clk_init_data { ptr @.str.163, ptr @ccu_gate_ops, ptr @.compoundliteral.164, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.166 = private unnamed_addr constant [9 x i8] c"bus-i2c2\00", align 1
@.compoundliteral.167 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.168 = internal global %struct.clk_init_data { ptr @.str.166, ptr @ccu_gate_ops, ptr @.compoundliteral.167, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.169 = private unnamed_addr constant [10 x i8] c"bus-uart0\00", align 1
@.compoundliteral.170 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.171 = internal global %struct.clk_init_data { ptr @.str.169, ptr @ccu_gate_ops, ptr @.compoundliteral.170, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.172 = private unnamed_addr constant [10 x i8] c"bus-uart1\00", align 1
@.compoundliteral.173 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.174 = internal global %struct.clk_init_data { ptr @.str.172, ptr @ccu_gate_ops, ptr @.compoundliteral.173, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.175 = private unnamed_addr constant [10 x i8] c"bus-uart2\00", align 1
@.compoundliteral.176 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.177 = internal global %struct.clk_init_data { ptr @.str.175, ptr @ccu_gate_ops, ptr @.compoundliteral.176, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.178 = private unnamed_addr constant [10 x i8] c"bus-uart3\00", align 1
@.compoundliteral.179 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.180 = internal global %struct.clk_init_data { ptr @.str.178, ptr @ccu_gate_ops, ptr @.compoundliteral.179, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.181 = private unnamed_addr constant [9 x i8] c"bus-scr0\00", align 1
@.compoundliteral.182 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.183 = internal global %struct.clk_init_data { ptr @.str.181, ptr @ccu_gate_ops, ptr @.compoundliteral.182, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.184 = private unnamed_addr constant [9 x i8] c"bus-ephy\00", align 1
@.compoundliteral.185 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.186 = internal global %struct.clk_init_data { ptr @.str.184, ptr @ccu_gate_ops, ptr @.compoundliteral.185, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.187 = private unnamed_addr constant [8 x i8] c"bus-dbg\00", align 1
@.compoundliteral.188 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.189 = internal global %struct.clk_init_data { ptr @.str.187, ptr @ccu_gate_ops, ptr @.compoundliteral.188, ptr null, ptr null, i8 1, i32 0 }, align 4
@ths_div_table = internal global [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table zeroinitializer], align 4
@.str.190 = private unnamed_addr constant [4 x i8] c"ths\00", align 1
@.compoundliteral.191 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.192 = internal global %struct.clk_init_data { ptr @.str.190, ptr @ccu_div_ops, ptr @.compoundliteral.191, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.193 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@mod0_default_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.19, ptr @.str.25], align 4
@.compoundliteral.194 = internal global %struct.clk_init_data { ptr @.str.193, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.195 = private unnamed_addr constant [5 x i8] c"mmc0\00", align 1
@.compoundliteral.196 = internal global %struct.clk_init_data { ptr @.str.195, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.197 = private unnamed_addr constant [12 x i8] c"mmc0_sample\00", align 1
@ccu_phase_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.198 = internal global [1 x ptr] [ptr @.str.195], align 4
@.compoundliteral.199 = internal global %struct.clk_init_data { ptr @.str.197, ptr @ccu_phase_ops, ptr @.compoundliteral.198, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.200 = private unnamed_addr constant [12 x i8] c"mmc0_output\00", align 1
@.compoundliteral.201 = internal global [1 x ptr] [ptr @.str.195], align 4
@.compoundliteral.202 = internal global %struct.clk_init_data { ptr @.str.200, ptr @ccu_phase_ops, ptr @.compoundliteral.201, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.203 = private unnamed_addr constant [5 x i8] c"mmc1\00", align 1
@.compoundliteral.204 = internal global %struct.clk_init_data { ptr @.str.203, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.205 = private unnamed_addr constant [12 x i8] c"mmc1_sample\00", align 1
@.compoundliteral.206 = internal global [1 x ptr] [ptr @.str.203], align 4
@.compoundliteral.207 = internal global %struct.clk_init_data { ptr @.str.205, ptr @ccu_phase_ops, ptr @.compoundliteral.206, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.208 = private unnamed_addr constant [12 x i8] c"mmc1_output\00", align 1
@.compoundliteral.209 = internal global [1 x ptr] [ptr @.str.203], align 4
@.compoundliteral.210 = internal global %struct.clk_init_data { ptr @.str.208, ptr @ccu_phase_ops, ptr @.compoundliteral.209, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.211 = private unnamed_addr constant [5 x i8] c"mmc2\00", align 1
@.compoundliteral.212 = internal global %struct.clk_init_data { ptr @.str.211, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.213 = private unnamed_addr constant [12 x i8] c"mmc2_sample\00", align 1
@.compoundliteral.214 = internal global [1 x ptr] [ptr @.str.211], align 4
@.compoundliteral.215 = internal global %struct.clk_init_data { ptr @.str.213, ptr @ccu_phase_ops, ptr @.compoundliteral.214, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.216 = private unnamed_addr constant [12 x i8] c"mmc2_output\00", align 1
@.compoundliteral.217 = internal global [1 x ptr] [ptr @.str.211], align 4
@.compoundliteral.218 = internal global %struct.clk_init_data { ptr @.str.216, ptr @ccu_phase_ops, ptr @.compoundliteral.217, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.219 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@ts_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.19], align 4
@.compoundliteral.220 = internal global %struct.clk_init_data { ptr @.str.219, ptr @ccu_mp_ops, ptr @ts_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.221 = private unnamed_addr constant [3 x i8] c"ce\00", align 1
@.compoundliteral.222 = internal global %struct.clk_init_data { ptr @.str.221, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.223 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.compoundliteral.224 = internal global %struct.clk_init_data { ptr @.str.223, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.225 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.compoundliteral.226 = internal global %struct.clk_init_data { ptr @.str.225, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.227 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@i2s_parents = internal constant [4 x ptr] [ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232], align 4
@.compoundliteral.228 = internal global %struct.clk_init_data { ptr @.str.227, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.229 = private unnamed_addr constant [13 x i8] c"pll-audio-8x\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"pll-audio-4x\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"pll-audio-2x\00", align 1
@.str.232 = private unnamed_addr constant [10 x i8] c"pll-audio\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.compoundliteral.234 = internal global %struct.clk_init_data { ptr @.str.233, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.235 = private unnamed_addr constant [5 x i8] c"i2s2\00", align 1
@.compoundliteral.236 = internal global %struct.clk_init_data { ptr @.str.235, ptr @ccu_mux_ops, ptr @i2s_parents, ptr null, ptr null, i8 4, i32 4 }, align 4
@.str.237 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.compoundliteral.238 = internal global [1 x ptr] [ptr @.str.232], align 4
@.compoundliteral.239 = internal global %struct.clk_init_data { ptr @.str.237, ptr @ccu_div_ops, ptr @.compoundliteral.238, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.240 = private unnamed_addr constant [9 x i8] c"usb-phy0\00", align 1
@.compoundliteral.241 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.242 = internal global %struct.clk_init_data { ptr @.str.240, ptr @ccu_gate_ops, ptr @.compoundliteral.241, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.243 = private unnamed_addr constant [9 x i8] c"usb-phy1\00", align 1
@.compoundliteral.244 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.245 = internal global %struct.clk_init_data { ptr @.str.243, ptr @ccu_gate_ops, ptr @.compoundliteral.244, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.246 = private unnamed_addr constant [9 x i8] c"usb-phy2\00", align 1
@.compoundliteral.247 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.248 = internal global %struct.clk_init_data { ptr @.str.246, ptr @ccu_gate_ops, ptr @.compoundliteral.247, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.249 = private unnamed_addr constant [9 x i8] c"usb-phy3\00", align 1
@.compoundliteral.250 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.251 = internal global %struct.clk_init_data { ptr @.str.249, ptr @ccu_gate_ops, ptr @.compoundliteral.250, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.252 = private unnamed_addr constant [10 x i8] c"usb-ohci0\00", align 1
@.compoundliteral.253 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.254 = internal global %struct.clk_init_data { ptr @.str.252, ptr @ccu_gate_ops, ptr @.compoundliteral.253, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.255 = private unnamed_addr constant [10 x i8] c"usb-ohci1\00", align 1
@.compoundliteral.256 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.257 = internal global %struct.clk_init_data { ptr @.str.255, ptr @ccu_gate_ops, ptr @.compoundliteral.256, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.258 = private unnamed_addr constant [10 x i8] c"usb-ohci2\00", align 1
@.compoundliteral.259 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.260 = internal global %struct.clk_init_data { ptr @.str.258, ptr @ccu_gate_ops, ptr @.compoundliteral.259, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.261 = private unnamed_addr constant [10 x i8] c"usb-ohci3\00", align 1
@.compoundliteral.262 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.263 = internal global %struct.clk_init_data { ptr @.str.261, ptr @ccu_gate_ops, ptr @.compoundliteral.262, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.264 = private unnamed_addr constant [5 x i8] c"dram\00", align 1
@dram_parents = internal constant [2 x ptr] [ptr @.str.16, ptr @.str.266], align 4
@.compoundliteral.265 = internal global %struct.clk_init_data { ptr @.str.264, ptr @ccu_div_ops, ptr @dram_parents, ptr null, ptr null, i8 2, i32 2048 }, align 4
@.str.266 = private unnamed_addr constant [15 x i8] c"pll-periph0-2x\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"dram-ve\00", align 1
@.compoundliteral.268 = internal global [1 x ptr] [ptr @.str.264], align 4
@.compoundliteral.269 = internal global %struct.clk_init_data { ptr @.str.267, ptr @ccu_gate_ops, ptr @.compoundliteral.268, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.270 = private unnamed_addr constant [9 x i8] c"dram-csi\00", align 1
@.compoundliteral.271 = internal global [1 x ptr] [ptr @.str.264], align 4
@.compoundliteral.272 = internal global %struct.clk_init_data { ptr @.str.270, ptr @ccu_gate_ops, ptr @.compoundliteral.271, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.273 = private unnamed_addr constant [17 x i8] c"dram-deinterlace\00", align 1
@.compoundliteral.274 = internal global [1 x ptr] [ptr @.str.264], align 4
@.compoundliteral.275 = internal global %struct.clk_init_data { ptr @.str.273, ptr @ccu_gate_ops, ptr @.compoundliteral.274, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.276 = private unnamed_addr constant [8 x i8] c"dram-ts\00", align 1
@.compoundliteral.277 = internal global [1 x ptr] [ptr @.str.264], align 4
@.compoundliteral.278 = internal global %struct.clk_init_data { ptr @.str.276, ptr @ccu_gate_ops, ptr @.compoundliteral.277, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.279 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@de_parents = internal constant [2 x ptr] [ptr @.str.266, ptr @.str.28], align 4
@.compoundliteral.280 = internal global %struct.clk_init_data { ptr @.str.279, ptr @ccu_div_ops, ptr @de_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.281 = private unnamed_addr constant [5 x i8] c"tcon\00", align 1
@tcon_parents = internal constant [1 x ptr] [ptr @.str.10], align 4
@.compoundliteral.282 = internal global %struct.clk_init_data { ptr @.str.281, ptr @ccu_div_ops, ptr @tcon_parents, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.283 = private unnamed_addr constant [4 x i8] c"tve\00", align 1
@tve_parents = internal constant [2 x ptr] [ptr @.str.28, ptr @.str.25], align 4
@.compoundliteral.284 = internal global %struct.clk_init_data { ptr @.str.283, ptr @ccu_div_ops, ptr @tve_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.285 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@deinterlace_parents = internal constant [2 x ptr] [ptr @.str.19, ptr @.str.25], align 4
@.compoundliteral.286 = internal global %struct.clk_init_data { ptr @.str.285, ptr @ccu_div_ops, ptr @deinterlace_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.287 = private unnamed_addr constant [9 x i8] c"csi-misc\00", align 1
@.compoundliteral.288 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.289 = internal global %struct.clk_init_data { ptr @.str.287, ptr @ccu_gate_ops, ptr @.compoundliteral.288, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.290 = private unnamed_addr constant [9 x i8] c"csi-sclk\00", align 1
@csi_sclk_parents = internal constant [2 x ptr] [ptr @.str.19, ptr @.str.25], align 4
@.compoundliteral.291 = internal global %struct.clk_init_data { ptr @.str.290, ptr @ccu_div_ops, ptr @csi_sclk_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.292 = private unnamed_addr constant [9 x i8] c"csi-mclk\00", align 1
@csi_mclk_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.10, ptr @.str.25], align 4
@.compoundliteral.293 = internal global %struct.clk_init_data { ptr @.str.292, ptr @ccu_div_ops, ptr @csi_mclk_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.294 = private unnamed_addr constant [3 x i8] c"ve\00", align 1
@.compoundliteral.295 = internal global [1 x ptr] [ptr @.str.13], align 4
@.compoundliteral.296 = internal global %struct.clk_init_data { ptr @.str.294, ptr @ccu_div_ops, ptr @.compoundliteral.295, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.297 = private unnamed_addr constant [7 x i8] c"ac-dig\00", align 1
@.compoundliteral.298 = internal global [1 x ptr] [ptr @.str.232], align 4
@.compoundliteral.299 = internal global %struct.clk_init_data { ptr @.str.297, ptr @ccu_gate_ops, ptr @.compoundliteral.298, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.300 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.compoundliteral.301 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.302 = internal global %struct.clk_init_data { ptr @.str.300, ptr @ccu_gate_ops, ptr @.compoundliteral.301, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.303 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@hdmi_parents = internal constant [1 x ptr] [ptr @.str.10], align 4
@.compoundliteral.304 = internal global %struct.clk_init_data { ptr @.str.303, ptr @ccu_div_ops, ptr @hdmi_parents, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.305 = private unnamed_addr constant [9 x i8] c"hdmi-ddc\00", align 1
@.compoundliteral.306 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.307 = internal global %struct.clk_init_data { ptr @.str.305, ptr @ccu_gate_ops, ptr @.compoundliteral.306, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.308 = private unnamed_addr constant [5 x i8] c"mbus\00", align 1
@mbus_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.266, ptr @.str.16], align 4
@.compoundliteral.309 = internal global %struct.clk_init_data { ptr @.str.308, ptr @ccu_div_ops, ptr @mbus_parents, ptr null, ptr null, i8 3, i32 2048 }, align 4
@.str.310 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.compoundliteral.311 = internal global [1 x ptr] [ptr @.str.22], align 4
@.compoundliteral.312 = internal global %struct.clk_init_data { ptr @.str.310, ptr @ccu_div_ops, ptr @.compoundliteral.311, ptr null, ptr null, i8 1, i32 4 }, align 4
@pll_audio_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.314 }, i32 1, i32 1 }, align 4
@pll_audio_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.315 }, i32 1, i32 2 }, align 4
@pll_audio_4x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.316 }, i32 1, i32 1 }, align 4
@pll_audio_8x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.317 }, i32 2, i32 1 }, align 4
@pll_periph0_2x_clk = internal global %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.319 }, i32 2, i32 1 }, align 4
@sun8i_h3_hw_clks = internal global { i32, [115 x ptr] } { i32 115, [115 x ptr] [ptr getelementptr (i8, ptr @pll_cpux_clk, i64 88), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104), ptr @pll_audio_clk, ptr @pll_audio_2x_clk, ptr @pll_audio_4x_clk, ptr @pll_audio_8x_clk, ptr getelementptr (i8, ptr @pll_video_clk, i64 104), ptr getelementptr (i8, ptr @pll_ve_clk, i64 104), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 88), ptr getelementptr (i8, ptr @pll_periph0_clk, i64 48), ptr @pll_periph0_2x_clk, ptr getelementptr (i8, ptr @pll_gpu_clk, i64 104), ptr getelementptr (i8, ptr @pll_periph1_clk, i64 48), ptr getelementptr (i8, ptr @pll_de_clk, i64 104), ptr getelementptr (i8, ptr @cpux_clk, i64 48), ptr getelementptr (i8, ptr @axi_clk, i64 68), ptr getelementptr (i8, ptr @ahb1_clk, i64 68), ptr getelementptr (i8, ptr @apb1_clk, i64 68), ptr getelementptr (i8, ptr @apb2_clk, i64 92), ptr getelementptr (i8, ptr @ahb2_clk, i64 48), ptr getelementptr (i8, ptr @bus_ce_clk, i64 24), ptr getelementptr (i8, ptr @bus_dma_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 24), ptr getelementptr (i8, ptr @bus_nand_clk, i64 24), ptr getelementptr (i8, ptr @bus_dram_clk, i64 24), ptr getelementptr (i8, ptr @bus_emac_clk, i64 24), ptr getelementptr (i8, ptr @bus_ts_clk, i64 24), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 24), ptr getelementptr (i8, ptr @bus_otg_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci1_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci2_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci3_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci1_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci2_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci3_clk, i64 24), ptr getelementptr (i8, ptr @bus_ve_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon0_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon1_clk, i64 24), ptr getelementptr (i8, ptr @bus_deinterlace_clk, i64 24), ptr getelementptr (i8, ptr @bus_csi_clk, i64 24), ptr getelementptr (i8, ptr @bus_tve_clk, i64 24), ptr getelementptr (i8, ptr @bus_hdmi_clk, i64 24), ptr getelementptr (i8, ptr @bus_de_clk, i64 24), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 24), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 24), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 24), ptr getelementptr (i8, ptr @bus_codec_clk, i64 24), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 24), ptr getelementptr (i8, ptr @bus_pio_clk, i64 24), ptr getelementptr (i8, ptr @bus_ths_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s2_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 24), ptr getelementptr (i8, ptr @bus_scr0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ephy_clk, i64 24), ptr getelementptr (i8, ptr @bus_dbg_clk, i64 24), ptr getelementptr (i8, ptr @ths_clk, i64 68), ptr getelementptr (i8, ptr @nand_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc0_output_clk, i64 24), ptr getelementptr (i8, ptr @mmc1_clk, i64 92), ptr getelementptr (i8, ptr @mmc1_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc1_output_clk, i64 24), ptr getelementptr (i8, ptr @mmc2_clk, i64 92), ptr getelementptr (i8, ptr @mmc2_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc2_output_clk, i64 24), ptr getelementptr (i8, ptr @ts_clk, i64 92), ptr getelementptr (i8, ptr @ce_clk, i64 92), ptr getelementptr (i8, ptr @spi0_clk, i64 92), ptr getelementptr (i8, ptr @spi1_clk, i64 92), ptr getelementptr (i8, ptr @i2s0_clk, i64 48), ptr getelementptr (i8, ptr @i2s1_clk, i64 48), ptr getelementptr (i8, ptr @i2s2_clk, i64 48), ptr getelementptr (i8, ptr @spdif_clk, i64 68), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy2_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy3_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci1_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci3_clk, i64 24), ptr getelementptr (i8, ptr @dram_clk, i64 68), ptr getelementptr (i8, ptr @dram_ve_clk, i64 24), ptr getelementptr (i8, ptr @dram_csi_clk, i64 24), ptr getelementptr (i8, ptr @dram_deinterlace_clk, i64 24), ptr getelementptr (i8, ptr @dram_ts_clk, i64 24), ptr getelementptr (i8, ptr @de_clk, i64 68), ptr getelementptr (i8, ptr @tcon_clk, i64 68), ptr getelementptr (i8, ptr @tve_clk, i64 68), ptr getelementptr (i8, ptr @deinterlace_clk, i64 68), ptr getelementptr (i8, ptr @csi_misc_clk, i64 24), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 68), ptr getelementptr (i8, ptr @csi_mclk_clk, i64 68), ptr getelementptr (i8, ptr @ve_clk, i64 68), ptr getelementptr (i8, ptr @ac_dig_clk, i64 24), ptr getelementptr (i8, ptr @avs_clk, i64 24), ptr getelementptr (i8, ptr @hdmi_clk, i64 68), ptr getelementptr (i8, ptr @hdmi_ddc_clk, i64 24), ptr getelementptr (i8, ptr @mbus_clk, i64 68), ptr getelementptr (i8, ptr @gpu_clk, i64 68)] }, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@clk_parent_pll_audio = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104)], align 4
@.compoundliteral.314 = internal global %struct.clk_init_data { ptr @.str.232, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.315 = internal global %struct.clk_init_data { ptr @.str.231, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.316 = internal global %struct.clk_init_data { ptr @.str.230, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.317 = internal global %struct.clk_init_data { ptr @.str.229, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @clk_parent_pll_audio, i8 1, i32 4 }, align 4
@.compoundliteral.318 = internal global [1 x ptr] [ptr getelementptr (i8, ptr @pll_periph0_clk, i64 48)], align 4
@.compoundliteral.319 = internal global %struct.clk_init_data { ptr @.str.266, ptr @clk_fixed_factor_ops, ptr null, ptr null, ptr @.compoundliteral.318, i8 1, i32 0 }, align 4
@sun50i_h5_ccu_clks = internal global [105 x ptr] [ptr getelementptr (i8, ptr @pll_cpux_clk, i64 68), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 84), ptr getelementptr (i8, ptr @pll_video_clk, i64 84), ptr getelementptr (i8, ptr @pll_ve_clk, i64 84), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 68), ptr getelementptr (i8, ptr @pll_periph0_clk, i64 28), ptr getelementptr (i8, ptr @pll_gpu_clk, i64 84), ptr getelementptr (i8, ptr @pll_periph1_clk, i64 28), ptr getelementptr (i8, ptr @pll_de_clk, i64 84), ptr getelementptr (i8, ptr @cpux_clk, i64 28), ptr getelementptr (i8, ptr @axi_clk, i64 48), ptr getelementptr (i8, ptr @ahb1_clk, i64 48), ptr getelementptr (i8, ptr @apb1_clk, i64 48), ptr getelementptr (i8, ptr @apb2_clk, i64 72), ptr getelementptr (i8, ptr @ahb2_clk, i64 28), ptr getelementptr (i8, ptr @bus_ce_clk, i64 4), ptr getelementptr (i8, ptr @bus_dma_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 4), ptr getelementptr (i8, ptr @bus_nand_clk, i64 4), ptr getelementptr (i8, ptr @bus_dram_clk, i64 4), ptr getelementptr (i8, ptr @bus_emac_clk, i64 4), ptr getelementptr (i8, ptr @bus_ts_clk, i64 4), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 4), ptr getelementptr (i8, ptr @bus_otg_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci1_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci2_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci3_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci1_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci2_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci3_clk, i64 4), ptr getelementptr (i8, ptr @bus_ve_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon0_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon1_clk, i64 4), ptr getelementptr (i8, ptr @bus_deinterlace_clk, i64 4), ptr getelementptr (i8, ptr @bus_csi_clk, i64 4), ptr getelementptr (i8, ptr @bus_tve_clk, i64 4), ptr getelementptr (i8, ptr @bus_hdmi_clk, i64 4), ptr getelementptr (i8, ptr @bus_de_clk, i64 4), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 4), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 4), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 4), ptr getelementptr (i8, ptr @bus_codec_clk, i64 4), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 4), ptr getelementptr (i8, ptr @bus_pio_clk, i64 4), ptr getelementptr (i8, ptr @bus_ths_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s2_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 4), ptr getelementptr (i8, ptr @bus_scr0_clk, i64 4), ptr getelementptr (i8, ptr @bus_scr1_clk, i64 4), ptr getelementptr (i8, ptr @bus_ephy_clk, i64 4), ptr getelementptr (i8, ptr @bus_dbg_clk, i64 4), ptr getelementptr (i8, ptr @ths_clk, i64 48), ptr getelementptr (i8, ptr @nand_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_clk, i64 72), ptr getelementptr (i8, ptr @mmc1_clk, i64 72), ptr getelementptr (i8, ptr @mmc2_clk, i64 72), ptr getelementptr (i8, ptr @ts_clk, i64 72), ptr getelementptr (i8, ptr @ce_clk, i64 72), ptr getelementptr (i8, ptr @spi0_clk, i64 72), ptr getelementptr (i8, ptr @spi1_clk, i64 72), ptr getelementptr (i8, ptr @i2s0_clk, i64 28), ptr getelementptr (i8, ptr @i2s1_clk, i64 28), ptr getelementptr (i8, ptr @i2s2_clk, i64 28), ptr getelementptr (i8, ptr @spdif_clk, i64 48), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy2_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy3_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci1_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci3_clk, i64 4), ptr getelementptr (i8, ptr @dram_clk, i64 48), ptr getelementptr (i8, ptr @dram_ve_clk, i64 4), ptr getelementptr (i8, ptr @dram_csi_clk, i64 4), ptr getelementptr (i8, ptr @dram_deinterlace_clk, i64 4), ptr getelementptr (i8, ptr @dram_ts_clk, i64 4), ptr getelementptr (i8, ptr @de_clk, i64 48), ptr getelementptr (i8, ptr @tcon_clk, i64 48), ptr getelementptr (i8, ptr @tve_clk, i64 48), ptr getelementptr (i8, ptr @deinterlace_clk, i64 48), ptr getelementptr (i8, ptr @csi_misc_clk, i64 4), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 48), ptr getelementptr (i8, ptr @csi_mclk_clk, i64 48), ptr getelementptr (i8, ptr @ve_clk, i64 48), ptr getelementptr (i8, ptr @ac_dig_clk, i64 4), ptr getelementptr (i8, ptr @avs_clk, i64 4), ptr getelementptr (i8, ptr @hdmi_clk, i64 48), ptr getelementptr (i8, ptr @hdmi_ddc_clk, i64 4), ptr getelementptr (i8, ptr @mbus_clk, i64 48), ptr getelementptr (i8, ptr @gpu_clk, i64 48)], align 4
@sun50i_h5_ccu_resets = internal global [55 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 204, i32 1 }, %struct.ccu_reset_map { i16 204, i32 2 }, %struct.ccu_reset_map { i16 204, i32 4 }, %struct.ccu_reset_map { i16 204, i32 8 }, %struct.ccu_reset_map { i16 252, i32 -2147483648 }, %struct.ccu_reset_map { i16 704, i32 32 }, %struct.ccu_reset_map { i16 704, i32 64 }, %struct.ccu_reset_map { i16 704, i32 256 }, %struct.ccu_reset_map { i16 704, i32 512 }, %struct.ccu_reset_map { i16 704, i32 1024 }, %struct.ccu_reset_map { i16 704, i32 8192 }, %struct.ccu_reset_map { i16 704, i32 16384 }, %struct.ccu_reset_map { i16 704, i32 131072 }, %struct.ccu_reset_map { i16 704, i32 262144 }, %struct.ccu_reset_map { i16 704, i32 524288 }, %struct.ccu_reset_map { i16 704, i32 1048576 }, %struct.ccu_reset_map { i16 704, i32 2097152 }, %struct.ccu_reset_map { i16 704, i32 8388608 }, %struct.ccu_reset_map { i16 704, i32 16777216 }, %struct.ccu_reset_map { i16 704, i32 33554432 }, %struct.ccu_reset_map { i16 704, i32 67108864 }, %struct.ccu_reset_map { i16 704, i32 134217728 }, %struct.ccu_reset_map { i16 704, i32 268435456 }, %struct.ccu_reset_map { i16 704, i32 536870912 }, %struct.ccu_reset_map { i16 704, i32 1073741824 }, %struct.ccu_reset_map { i16 704, i32 -2147483648 }, %struct.ccu_reset_map { i16 708, i32 1 }, %struct.ccu_reset_map { i16 708, i32 8 }, %struct.ccu_reset_map { i16 708, i32 16 }, %struct.ccu_reset_map { i16 708, i32 32 }, %struct.ccu_reset_map { i16 708, i32 256 }, %struct.ccu_reset_map { i16 708, i32 512 }, %struct.ccu_reset_map { i16 708, i32 1024 }, %struct.ccu_reset_map { i16 708, i32 2048 }, %struct.ccu_reset_map { i16 708, i32 4096 }, %struct.ccu_reset_map { i16 708, i32 1048576 }, %struct.ccu_reset_map { i16 708, i32 2097152 }, %struct.ccu_reset_map { i16 708, i32 4194304 }, %struct.ccu_reset_map { i16 708, i32 -2147483648 }, %struct.ccu_reset_map { i16 712, i32 4 }, %struct.ccu_reset_map { i16 720, i32 1 }, %struct.ccu_reset_map { i16 720, i32 2 }, %struct.ccu_reset_map { i16 720, i32 256 }, %struct.ccu_reset_map { i16 720, i32 4096 }, %struct.ccu_reset_map { i16 720, i32 8192 }, %struct.ccu_reset_map { i16 720, i32 16384 }, %struct.ccu_reset_map { i16 728, i32 1 }, %struct.ccu_reset_map { i16 728, i32 2 }, %struct.ccu_reset_map { i16 728, i32 4 }, %struct.ccu_reset_map { i16 728, i32 65536 }, %struct.ccu_reset_map { i16 728, i32 131072 }, %struct.ccu_reset_map { i16 728, i32 262144 }, %struct.ccu_reset_map { i16 728, i32 524288 }, %struct.ccu_reset_map { i16 728, i32 1048576 }, %struct.ccu_reset_map { i16 728, i32 1048576 }], align 4
@bus_scr1_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.322 } } }, align 4
@.str.320 = private unnamed_addr constant [9 x i8] c"bus-scr1\00", align 1
@.compoundliteral.321 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.322 = internal global %struct.clk_init_data { ptr @.str.320, ptr @ccu_gate_ops, ptr @.compoundliteral.321, ptr null, ptr null, i8 1, i32 0 }, align 4
@sun50i_h5_hw_clks = internal global { i32, [116 x ptr] } { i32 116, [116 x ptr] [ptr getelementptr (i8, ptr @pll_cpux_clk, i64 88), ptr getelementptr (i8, ptr @pll_audio_base_clk, i64 104), ptr @pll_audio_clk, ptr @pll_audio_2x_clk, ptr @pll_audio_4x_clk, ptr @pll_audio_8x_clk, ptr getelementptr (i8, ptr @pll_video_clk, i64 104), ptr getelementptr (i8, ptr @pll_ve_clk, i64 104), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 88), ptr getelementptr (i8, ptr @pll_periph0_clk, i64 48), ptr @pll_periph0_2x_clk, ptr getelementptr (i8, ptr @pll_gpu_clk, i64 104), ptr getelementptr (i8, ptr @pll_periph1_clk, i64 48), ptr getelementptr (i8, ptr @pll_de_clk, i64 104), ptr getelementptr (i8, ptr @cpux_clk, i64 48), ptr getelementptr (i8, ptr @axi_clk, i64 68), ptr getelementptr (i8, ptr @ahb1_clk, i64 68), ptr getelementptr (i8, ptr @apb1_clk, i64 68), ptr getelementptr (i8, ptr @apb2_clk, i64 92), ptr getelementptr (i8, ptr @ahb2_clk, i64 48), ptr getelementptr (i8, ptr @bus_ce_clk, i64 24), ptr getelementptr (i8, ptr @bus_dma_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 24), ptr getelementptr (i8, ptr @bus_nand_clk, i64 24), ptr getelementptr (i8, ptr @bus_dram_clk, i64 24), ptr getelementptr (i8, ptr @bus_emac_clk, i64 24), ptr getelementptr (i8, ptr @bus_ts_clk, i64 24), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 24), ptr getelementptr (i8, ptr @bus_otg_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci1_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci2_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci3_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci1_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci2_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci3_clk, i64 24), ptr getelementptr (i8, ptr @bus_ve_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon0_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon1_clk, i64 24), ptr getelementptr (i8, ptr @bus_deinterlace_clk, i64 24), ptr getelementptr (i8, ptr @bus_csi_clk, i64 24), ptr getelementptr (i8, ptr @bus_tve_clk, i64 24), ptr getelementptr (i8, ptr @bus_hdmi_clk, i64 24), ptr getelementptr (i8, ptr @bus_de_clk, i64 24), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 24), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 24), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 24), ptr getelementptr (i8, ptr @bus_codec_clk, i64 24), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 24), ptr getelementptr (i8, ptr @bus_pio_clk, i64 24), ptr getelementptr (i8, ptr @bus_ths_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s2_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 24), ptr getelementptr (i8, ptr @bus_scr0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ephy_clk, i64 24), ptr getelementptr (i8, ptr @bus_dbg_clk, i64 24), ptr getelementptr (i8, ptr @ths_clk, i64 68), ptr getelementptr (i8, ptr @nand_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_clk, i64 92), ptr null, ptr null, ptr getelementptr (i8, ptr @mmc1_clk, i64 92), ptr null, ptr null, ptr getelementptr (i8, ptr @mmc2_clk, i64 92), ptr null, ptr null, ptr getelementptr (i8, ptr @ts_clk, i64 92), ptr getelementptr (i8, ptr @ce_clk, i64 92), ptr getelementptr (i8, ptr @spi0_clk, i64 92), ptr getelementptr (i8, ptr @spi1_clk, i64 92), ptr getelementptr (i8, ptr @i2s0_clk, i64 48), ptr getelementptr (i8, ptr @i2s1_clk, i64 48), ptr getelementptr (i8, ptr @i2s2_clk, i64 48), ptr getelementptr (i8, ptr @spdif_clk, i64 68), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy2_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy3_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci1_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci3_clk, i64 24), ptr getelementptr (i8, ptr @dram_clk, i64 68), ptr getelementptr (i8, ptr @dram_ve_clk, i64 24), ptr getelementptr (i8, ptr @dram_csi_clk, i64 24), ptr getelementptr (i8, ptr @dram_deinterlace_clk, i64 24), ptr getelementptr (i8, ptr @dram_ts_clk, i64 24), ptr getelementptr (i8, ptr @de_clk, i64 68), ptr getelementptr (i8, ptr @tcon_clk, i64 68), ptr getelementptr (i8, ptr @tve_clk, i64 68), ptr getelementptr (i8, ptr @deinterlace_clk, i64 68), ptr getelementptr (i8, ptr @csi_misc_clk, i64 24), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 68), ptr getelementptr (i8, ptr @csi_mclk_clk, i64 68), ptr getelementptr (i8, ptr @ve_clk, i64 68), ptr getelementptr (i8, ptr @ac_dig_clk, i64 24), ptr getelementptr (i8, ptr @avs_clk, i64 24), ptr getelementptr (i8, ptr @hdmi_clk, i64 68), ptr getelementptr (i8, ptr @hdmi_ddc_clk, i64 24), ptr getelementptr (i8, ptr @mbus_clk, i64 68), ptr getelementptr (i8, ptr @gpu_clk, i64 68), ptr getelementptr (i8, ptr @bus_scr1_clk, i64 24)] }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_import_ns163, ptr @__UNIQUE_ID_license165, ptr @__exitcall_sun8i_h3_ccu_driver_exit, ptr @__initcall__kmod_sun8i_h3_ccu__162_1196_sun8i_h3_ccu_driver_init6, ptr @sun8i_h3_ccu_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun8i_h3_ccu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_h3_ccu_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_h3_ccu_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_h3_ccu_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_h3_ccu_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %20

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %13 = and i32 %12, -983041
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #3, !srcloc !11
  %14 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %2, ptr noundef %6, ptr noundef nonnull %3) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = tail call i32 @ccu_pll_notifier_register(ptr noundef nonnull @sun8i_h3_pll_cpu_nb) #3
  %18 = load ptr, ptr getelementptr inbounds (%struct.ccu_nkmp, ptr @pll_cpux_clk, i32 0, i32 8, i32 6, i32 1), align 4
  %19 = tail call i32 @ccu_mux_notifier_register(ptr noundef %18, ptr noundef nonnull @sun8i_h3_cpu_nb) #3
  br label %20

20:                                               ; preds = %16, %10, %8, %1
  %21 = phi i32 [ %9, %8 ], [ 0, %16 ], [ -22, %1 ], [ %14, %10 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2879503}
!9 = !{i64 2151621089}
!10 = !{i64 2151621962}
!11 = !{i64 2879085}
