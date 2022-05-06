; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun8i-a83t.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun8i-a83t.c"
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
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_phase = type { i8, i8, %struct.ccu_common }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ccu_sdm_setting = type { i32, i32, i32, i32 }
%struct.ccu_mux_var_prediv = type { i8, i8, i8 }
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

@__initcall__kmod_sun8i_a83t_ccu__162_923_sun8i_a83t_ccu_driver_init6 = internal global ptr @sun8i_a83t_ccu_driver_init, section ".initcall6.init", align 4
@sun8i_a83t_ccu_driver = internal global %struct.platform_driver { ptr @sun8i_a83t_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun8i_a83t_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun8i_a83t_ccu_driver_exit = internal global ptr @sun8i_a83t_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns163 = internal constant [35 x i8] c"sun8i_a83t_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [56 x i8] c"sun8i_a83t_ccu.file=drivers/clk/sunxi-ng/sun8i-a83t-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [27 x i8] c"sun8i_a83t_ccu.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"sun8i-a83t-ccu\00", align 1
@sun8i_a83t_ccu_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sun8i_a83t_ccu_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun8i_a83t_ccu_clks, i32 101, ptr @sun8i_a83t_hw_clks, ptr @sun8i_a83t_ccu_resets, i32 45 }, align 4
@sun8i_a83t_ccu_clks = internal global [101 x ptr] [ptr getelementptr (i8, ptr @pll_c0cpux_clk, i64 56), ptr getelementptr (i8, ptr @pll_c1cpux_clk, i64 56), ptr getelementptr (i8, ptr @pll_audio_clk, i64 84), ptr getelementptr (i8, ptr @pll_video0_clk, i64 68), ptr getelementptr (i8, ptr @pll_ve_clk, i64 68), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 68), ptr getelementptr (i8, ptr @pll_periph_clk, i64 68), ptr getelementptr (i8, ptr @pll_gpu_clk, i64 68), ptr getelementptr (i8, ptr @pll_hsic_clk, i64 68), ptr getelementptr (i8, ptr @pll_de_clk, i64 68), ptr getelementptr (i8, ptr @pll_video1_clk, i64 68), ptr getelementptr (i8, ptr @c0cpux_clk, i64 28), ptr getelementptr (i8, ptr @c1cpux_clk, i64 28), ptr getelementptr (i8, ptr @axi0_clk, i64 48), ptr getelementptr (i8, ptr @axi1_clk, i64 48), ptr getelementptr (i8, ptr @ahb1_clk, i64 48), ptr getelementptr (i8, ptr @ahb2_clk, i64 28), ptr getelementptr (i8, ptr @apb1_clk, i64 48), ptr getelementptr (i8, ptr @apb2_clk, i64 72), ptr getelementptr (i8, ptr @bus_mipi_dsi_clk, i64 4), ptr getelementptr (i8, ptr @bus_ss_clk, i64 4), ptr getelementptr (i8, ptr @bus_dma_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 4), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 4), ptr getelementptr (i8, ptr @bus_nand_clk, i64 4), ptr getelementptr (i8, ptr @bus_dram_clk, i64 4), ptr getelementptr (i8, ptr @bus_emac_clk, i64 4), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 4), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 4), ptr getelementptr (i8, ptr @bus_otg_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ehci1_clk, i64 4), ptr getelementptr (i8, ptr @bus_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_ve_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon0_clk, i64 4), ptr getelementptr (i8, ptr @bus_tcon1_clk, i64 4), ptr getelementptr (i8, ptr @bus_csi_clk, i64 4), ptr getelementptr (i8, ptr @bus_hdmi_clk, i64 4), ptr getelementptr (i8, ptr @bus_de_clk, i64 4), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 4), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 4), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 4), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 4), ptr getelementptr (i8, ptr @bus_pio_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2s2_clk, i64 4), ptr getelementptr (i8, ptr @bus_tdm_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 4), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 4), ptr getelementptr (i8, ptr @bus_uart4_clk, i64 4), ptr getelementptr (i8, ptr @cci400_clk, i64 48), ptr getelementptr (i8, ptr @nand_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_clk, i64 72), ptr getelementptr (i8, ptr @mmc0_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc0_output_clk, i64 4), ptr getelementptr (i8, ptr @mmc1_clk, i64 72), ptr getelementptr (i8, ptr @mmc1_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc1_output_clk, i64 4), ptr getelementptr (i8, ptr @mmc2_clk, i64 72), ptr getelementptr (i8, ptr @mmc2_sample_clk, i64 4), ptr getelementptr (i8, ptr @mmc2_output_clk, i64 4), ptr getelementptr (i8, ptr @ss_clk, i64 72), ptr getelementptr (i8, ptr @spi0_clk, i64 72), ptr getelementptr (i8, ptr @spi1_clk, i64 72), ptr getelementptr (i8, ptr @i2s0_clk, i64 48), ptr getelementptr (i8, ptr @i2s1_clk, i64 48), ptr getelementptr (i8, ptr @i2s2_clk, i64 48), ptr getelementptr (i8, ptr @tdm_clk, i64 48), ptr getelementptr (i8, ptr @spdif_clk, i64 48), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 4), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 4), ptr getelementptr (i8, ptr @usb_hsic_clk, i64 4), ptr getelementptr (i8, ptr @usb_hsic_12m_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @dram_clk, i64 48), ptr getelementptr (i8, ptr @dram_ve_clk, i64 4), ptr getelementptr (i8, ptr @dram_csi_clk, i64 4), ptr getelementptr (i8, ptr @tcon0_clk, i64 28), ptr getelementptr (i8, ptr @tcon1_clk, i64 48), ptr getelementptr (i8, ptr @csi_misc_clk, i64 4), ptr getelementptr (i8, ptr @mipi_csi_clk, i64 4), ptr getelementptr (i8, ptr @csi_mclk_clk, i64 48), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 48), ptr getelementptr (i8, ptr @ve_clk, i64 48), ptr getelementptr (i8, ptr @avs_clk, i64 4), ptr getelementptr (i8, ptr @hdmi_clk, i64 48), ptr getelementptr (i8, ptr @hdmi_slow_clk, i64 4), ptr getelementptr (i8, ptr @mbus_clk, i64 48), ptr getelementptr (i8, ptr @mipi_dsi0_clk, i64 48), ptr getelementptr (i8, ptr @mipi_dsi1_clk, i64 48), ptr getelementptr (i8, ptr @gpu_core_clk, i64 48), ptr getelementptr (i8, ptr @gpu_memory_clk, i64 48), ptr getelementptr (i8, ptr @gpu_hyd_clk, i64 48)], align 4
@sun8i_a83t_ccu_resets = internal global [45 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 204, i32 1 }, %struct.ccu_reset_map { i16 204, i32 2 }, %struct.ccu_reset_map { i16 204, i32 4 }, %struct.ccu_reset_map { i16 244, i32 -2147483648 }, %struct.ccu_reset_map { i16 252, i32 -2147483648 }, %struct.ccu_reset_map { i16 704, i32 2 }, %struct.ccu_reset_map { i16 704, i32 32 }, %struct.ccu_reset_map { i16 704, i32 64 }, %struct.ccu_reset_map { i16 704, i32 256 }, %struct.ccu_reset_map { i16 704, i32 512 }, %struct.ccu_reset_map { i16 704, i32 1024 }, %struct.ccu_reset_map { i16 704, i32 8192 }, %struct.ccu_reset_map { i16 704, i32 16384 }, %struct.ccu_reset_map { i16 704, i32 131072 }, %struct.ccu_reset_map { i16 704, i32 524288 }, %struct.ccu_reset_map { i16 704, i32 1048576 }, %struct.ccu_reset_map { i16 704, i32 2097152 }, %struct.ccu_reset_map { i16 704, i32 16777216 }, %struct.ccu_reset_map { i16 704, i32 67108864 }, %struct.ccu_reset_map { i16 704, i32 134217728 }, %struct.ccu_reset_map { i16 704, i32 536870912 }, %struct.ccu_reset_map { i16 708, i32 1 }, %struct.ccu_reset_map { i16 708, i32 16 }, %struct.ccu_reset_map { i16 708, i32 32 }, %struct.ccu_reset_map { i16 708, i32 256 }, %struct.ccu_reset_map { i16 708, i32 1024 }, %struct.ccu_reset_map { i16 708, i32 2048 }, %struct.ccu_reset_map { i16 708, i32 4096 }, %struct.ccu_reset_map { i16 708, i32 1048576 }, %struct.ccu_reset_map { i16 708, i32 2097152 }, %struct.ccu_reset_map { i16 708, i32 4194304 }, %struct.ccu_reset_map { i16 712, i32 1 }, %struct.ccu_reset_map { i16 720, i32 2 }, %struct.ccu_reset_map { i16 720, i32 4096 }, %struct.ccu_reset_map { i16 720, i32 8192 }, %struct.ccu_reset_map { i16 720, i32 16384 }, %struct.ccu_reset_map { i16 720, i32 32768 }, %struct.ccu_reset_map { i16 728, i32 1 }, %struct.ccu_reset_map { i16 728, i32 2 }, %struct.ccu_reset_map { i16 728, i32 4 }, %struct.ccu_reset_map { i16 728, i32 65536 }, %struct.ccu_reset_map { i16 728, i32 131072 }, %struct.ccu_reset_map { i16 728, i32 262144 }, %struct.ccu_reset_map { i16 728, i32 524288 }, %struct.ccu_reset_map { i16 728, i32 1048576 }], align 4
@pll_c0cpux_clk = internal global %struct.ccu_mult { i32 -2147483648, i32 1, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 0, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 } } }, align 4
@pll_c1cpux_clk = internal global %struct.ccu_mult { i32 -2147483648, i32 2, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 4, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 } } }, align 4
@pll_audio_clk = internal global %struct.ccu_nm { i32 -2147483648, i32 4, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_div_internal { i8 0, i8 6, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_frac_internal zeroinitializer, %struct.ccu_sdm_internal { ptr @pll_audio_sdm_table, i32 2, i32 16777216, i32 -2147483648, i16 644 }, i32 2, i32 0, i32 0, %struct.ccu_common { ptr null, i16 8, i16 524, i32 0, i32 168, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } } }, align 4
@pll_video0_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 8, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 -1294967296, %struct.ccu_common { ptr null, i16 16, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 } } }, align 4
@pll_ve_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 16, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 24, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, align 4
@pll_ddr_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 32, %struct.ccu_mult_internal { i8 1, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 32, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 } } }, align 4
@pll_periph_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 64, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 40, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, align 4
@pll_gpu_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 128, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 56, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 } } }, align 4
@pll_hsic_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 256, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 68, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 } } }, align 4
@pll_de_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 512, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 18, i8 1, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 0, %struct.ccu_common { ptr null, i16 72, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 } } }, align 4
@pll_video1_clk = internal global %struct.ccu_nkmp { i32 -2147483648, i32 1024, %struct.ccu_mult_internal { i8 0, i8 8, i8 8, i8 12, i8 0 }, %struct.ccu_mult_internal zeroinitializer, %struct.ccu_div_internal { i8 16, i8 1, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, i32 0, i32 -1294967296, %struct.ccu_common { ptr null, i16 76, i16 524, i32 0, i32 32, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 } } }, align 4
@c0cpux_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 12, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 } } }, align 4
@c1cpux_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 28, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 } } }, align 4
@axi0_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 } }, i32 0 }, align 4
@axi1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 80, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 } }, i32 0 }, align 4
@ahb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 2, i32 0, i32 1, i32 2, ptr null }, %struct.ccu_mux_internal { i8 12, i8 2, ptr null, ptr null, i8 0, ptr @ahb1_predivs, i8 2 }, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 } }, i32 0 }, align 4
@ahb2_clk = internal global %struct.ccu_mux { i32 0, %struct.ccu_mux_internal { i8 0, i8 2, ptr null, ptr @ahb2_prediv, i8 1, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 92, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 } } }, align 4
@apb1_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 84, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 } }, i32 0 }, align 4
@apb2_clk = internal global %struct.ccu_mp { i32 0, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 88, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 } } }, align 4
@bus_mipi_dsi_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.56 } } }, align 4
@bus_ss_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 } } }, align 4
@bus_dma_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.62 } } }, align 4
@bus_mmc0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.65 } } }, align 4
@bus_mmc1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.68 } } }, align 4
@bus_mmc2_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 } } }, align 4
@bus_nand_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.74 } } }, align 4
@bus_dram_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 } } }, align 4
@bus_emac_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 } } }, align 4
@bus_hstimer_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 } } }, align 4
@bus_spi0_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.86 } } }, align 4
@bus_spi1_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 } } }, align 4
@bus_otg_clk = internal global %struct.ccu_gate { i32 16777216, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.92 } } }, align 4
@bus_ehci0_clk = internal global %struct.ccu_gate { i32 67108864, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.95 } } }, align 4
@bus_ehci1_clk = internal global %struct.ccu_gate { i32 134217728, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 } } }, align 4
@bus_ohci0_clk = internal global %struct.ccu_gate { i32 536870912, %struct.ccu_common { ptr null, i16 96, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 } } }, align 4
@bus_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.104 } } }, align 4
@bus_tcon0_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.107 } } }, align 4
@bus_tcon1_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 } } }, align 4
@bus_csi_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 } } }, align 4
@bus_hdmi_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 } } }, align 4
@bus_de_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.119 } } }, align 4
@bus_gpu_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 } } }, align 4
@bus_msgbox_clk = internal global %struct.ccu_gate { i32 2097152, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.125 } } }, align 4
@bus_spinlock_clk = internal global %struct.ccu_gate { i32 4194304, %struct.ccu_common { ptr null, i16 100, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 } } }, align 4
@bus_spdif_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 } } }, align 4
@bus_pio_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.134 } } }, align 4
@bus_i2s0_clk = internal global %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 } } }, align 4
@bus_i2s1_clk = internal global %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 } } }, align 4
@bus_i2s2_clk = internal global %struct.ccu_gate { i32 16384, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 } } }, align 4
@bus_tdm_clk = internal global %struct.ccu_gate { i32 32768, %struct.ccu_common { ptr null, i16 104, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.146 } } }, align 4
@bus_i2c0_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 } } }, align 4
@bus_i2c1_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 } } }, align 4
@bus_i2c2_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 } } }, align 4
@bus_uart0_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 } } }, align 4
@bus_uart1_clk = internal global %struct.ccu_gate { i32 131072, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 } } }, align 4
@bus_uart2_clk = internal global %struct.ccu_gate { i32 262144, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.164 } } }, align 4
@bus_uart3_clk = internal global %struct.ccu_gate { i32 524288, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.167 } } }, align 4
@bus_uart4_clk = internal global %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 108, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.170 } } }, align 4
@cci400_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 120, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.172 } }, i32 0 }, align 4
@nand_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 128, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.174 } } }, align 4
@mmc0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.176 } } }, align 4
@mmc0_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.179 } } }, align 4
@mmc0_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 136, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.182 } } }, align 4
@mmc1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.184 } } }, align 4
@mmc1_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.187 } } }, align 4
@mmc1_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 140, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.190 } } }, align 4
@mmc2_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 64, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.192 } } }, align 4
@mmc2_sample_clk = internal global %struct.ccu_phase { i8 20, i8 3, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.195 } } }, align 4
@mmc2_output_clk = internal global %struct.ccu_phase { i8 8, i8 3, %struct.ccu_common { ptr null, i16 144, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.198 } } }, align 4
@ss_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 156, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.200 } } }, align 4
@spi0_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 160, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.202 } } }, align 4
@spi1_clk = internal global %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 16, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 164, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.204 } } }, align 4
@i2s0_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 176, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.207 } }, i32 0 }, align 4
@i2s1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 180, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.210 } }, i32 0 }, align 4
@i2s2_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 184, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.213 } }, i32 0 }, align 4
@tdm_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 188, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.216 } }, i32 0 }, align 4
@spdif_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 192, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.219 } }, i32 0 }, align 4
@usb_phy0_clk = internal global %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.222 } } }, align 4
@usb_phy1_clk = internal global %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.225 } } }, align 4
@usb_hsic_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.228 } } }, align 4
@usb_hsic_12m_clk = internal global %struct.ccu_gate { i32 2048, %struct.ccu_common { ptr null, i16 204, i16 0, i32 2, i32 16, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.231 } } }, align 4
@usb_ohci0_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 204, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.234 } } }, align 4
@dram_clk = internal global %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 244, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.237 } }, i32 0 }, align 4
@dram_ve_clk = internal global %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.240 } } }, align 4
@dram_csi_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 256, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.243 } } }, align 4
@tcon0_clk = internal global %struct.ccu_mux { i32 -2147483648, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 280, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.245 } } }, align 4
@tcon1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 284, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.247 } }, i32 0 }, align 4
@csi_misc_clk = internal global %struct.ccu_gate { i32 65536, %struct.ccu_common { ptr null, i16 304, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.250 } } }, align 4
@mipi_csi_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 304, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.253 } } }, align 4
@csi_mclk_clk = internal global %struct.ccu_div { i32 32768, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 8, i8 3, ptr @csi_mclk_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 308, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.255 } }, i32 0 }, align 4
@csi_sclk_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr @csi_sclk_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 308, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.257 } }, i32 0 }, align 4
@ve_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 16, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 316, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.260 } }, i32 0 }, align 4
@avs_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 324, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.263 } } }, align 4
@hdmi_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 336, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.265 } }, i32 0 }, align 4
@hdmi_slow_clk = internal global %struct.ccu_gate { i32 -2147483648, %struct.ccu_common { ptr null, i16 340, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.268 } } }, align 4
@mbus_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 348, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.270 } }, i32 0 }, align 4
@mipi_dsi0_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @mipi_dsi0_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 360, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.272 } }, i32 0 }, align 4
@mipi_dsi1_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 4, ptr @mipi_dsi1_table, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 364, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.274 } }, i32 0 }, align 4
@gpu_core_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 416, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.277 } }, i32 0 }, align 4
@gpu_memory_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 1, ptr null, ptr null, i8 0, ptr null, i8 0 }, %struct.ccu_common { ptr null, i16 420, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.279 } }, i32 0 }, align 4
@gpu_hyd_clk = internal global %struct.ccu_div { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 3, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 424, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.282 } }, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"pll-c0cpux\00", align 1
@ccu_mult_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"osc24M\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.3 = internal global %struct.clk_init_data { ptr @.str.1, ptr @ccu_mult_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"pll-c1cpux\00", align 1
@.compoundliteral.5 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.6 = internal global %struct.clk_init_data { ptr @.str.4, ptr @ccu_mult_ops, ptr @.compoundliteral.5, ptr null, ptr null, i8 1, i32 1024 }, align 4
@pll_audio_sdm_table = internal global [2 x %struct.ccu_sdm_setting] [%struct.ccu_sdm_setting { i32 45158400, i32 -1073667585, i32 29, i32 54 }, %struct.ccu_sdm_setting { i32 49152000, i32 -1073684153, i32 30, i32 61 }], align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"pll-audio\00", align 1
@ccu_nm_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.8 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.9 = internal global %struct.clk_init_data { ptr @.str.7, ptr @ccu_nm_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"pll-video0\00", align 1
@ccu_nkmp_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.11 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.12 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_nkmp_ops, ptr @.compoundliteral.11, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"pll-ve\00", align 1
@.compoundliteral.14 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.15 = internal global %struct.clk_init_data { ptr @.str.13, ptr @ccu_nkmp_ops, ptr @.compoundliteral.14, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"pll-ddr\00", align 1
@.compoundliteral.17 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.18 = internal global %struct.clk_init_data { ptr @.str.16, ptr @ccu_nkmp_ops, ptr @.compoundliteral.17, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"pll-periph\00", align 1
@.compoundliteral.20 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.21 = internal global %struct.clk_init_data { ptr @.str.19, ptr @ccu_nkmp_ops, ptr @.compoundliteral.20, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"pll-gpu\00", align 1
@.compoundliteral.23 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.24 = internal global %struct.clk_init_data { ptr @.str.22, ptr @ccu_nkmp_ops, ptr @.compoundliteral.23, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"pll-hsic\00", align 1
@.compoundliteral.26 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.27 = internal global %struct.clk_init_data { ptr @.str.25, ptr @ccu_nkmp_ops, ptr @.compoundliteral.26, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"pll-de\00", align 1
@.compoundliteral.29 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.30 = internal global %struct.clk_init_data { ptr @.str.28, ptr @ccu_nkmp_ops, ptr @.compoundliteral.29, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.31 = private unnamed_addr constant [11 x i8] c"pll-video1\00", align 1
@.compoundliteral.32 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.33 = internal global %struct.clk_init_data { ptr @.str.31, ptr @ccu_nkmp_ops, ptr @.compoundliteral.32, ptr null, ptr null, i8 1, i32 1024 }, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"c0cpux\00", align 1
@ccu_mux_ops = external dso_local constant %struct.clk_ops, align 4
@c0cpux_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.1], align 4
@.compoundliteral.35 = internal global %struct.clk_init_data { ptr @.str.34, ptr @ccu_mux_ops, ptr @c0cpux_parents, ptr null, ptr null, i8 2, i32 2052 }, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"c1cpux\00", align 1
@c1cpux_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.4], align 4
@.compoundliteral.37 = internal global %struct.clk_init_data { ptr @.str.36, ptr @ccu_mux_ops, ptr @c1cpux_parents, ptr null, ptr null, i8 2, i32 2052 }, align 4
@.str.38 = private unnamed_addr constant [5 x i8] c"axi0\00", align 1
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.39 = internal global [1 x ptr] [ptr @.str.34], align 4
@.compoundliteral.40 = internal global %struct.clk_init_data { ptr @.str.38, ptr @ccu_div_ops, ptr @.compoundliteral.39, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"axi1\00", align 1
@.compoundliteral.42 = internal global [1 x ptr] [ptr @.str.36], align 4
@.compoundliteral.43 = internal global %struct.clk_init_data { ptr @.str.41, ptr @ccu_div_ops, ptr @.compoundliteral.42, ptr null, ptr null, i8 1, i32 0 }, align 4
@ahb1_predivs = internal constant [2 x %struct.ccu_mux_var_prediv] [%struct.ccu_mux_var_prediv { i8 2, i8 6, i8 2 }, %struct.ccu_mux_var_prediv { i8 3, i8 6, i8 2 }], align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"ahb1\00", align 1
@ahb1_parents = internal constant [4 x ptr] [ptr @.str.46, ptr @.str.2, ptr @.str.19, ptr @.str.19], align 4
@.compoundliteral.45 = internal global %struct.clk_init_data { ptr @.str.44, ptr @ccu_div_ops, ptr @ahb1_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.46 = private unnamed_addr constant [12 x i8] c"osc16M-d512\00", align 1
@ahb2_prediv = internal constant %struct.ccu_mux_fixed_prediv { i8 1, i16 2 }, align 2
@.str.47 = private unnamed_addr constant [5 x i8] c"ahb2\00", align 1
@ahb2_parents = internal constant [2 x ptr] [ptr @.str.44, ptr @.str.19], align 4
@.compoundliteral.48 = internal global %struct.clk_init_data { ptr @.str.47, ptr @ccu_mux_ops, ptr @ahb2_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.49 = private unnamed_addr constant [5 x i8] c"apb1\00", align 1
@.compoundliteral.50 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.51 = internal global %struct.clk_init_data { ptr @.str.49, ptr @ccu_div_ops, ptr @.compoundliteral.50, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.52 = private unnamed_addr constant [5 x i8] c"apb2\00", align 1
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@apb2_parents = internal constant [4 x ptr] [ptr @.str.46, ptr @.str.2, ptr @.str.19, ptr @.str.19], align 4
@.compoundliteral.53 = internal global %struct.clk_init_data { ptr @.str.52, ptr @ccu_mp_ops, ptr @apb2_parents, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.54 = private unnamed_addr constant [13 x i8] c"bus-mipi-dsi\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.55 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.56 = internal global %struct.clk_init_data { ptr @.str.54, ptr @ccu_gate_ops, ptr @.compoundliteral.55, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.57 = private unnamed_addr constant [7 x i8] c"bus-ss\00", align 1
@.compoundliteral.58 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.59 = internal global %struct.clk_init_data { ptr @.str.57, ptr @ccu_gate_ops, ptr @.compoundliteral.58, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.60 = private unnamed_addr constant [8 x i8] c"bus-dma\00", align 1
@.compoundliteral.61 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.62 = internal global %struct.clk_init_data { ptr @.str.60, ptr @ccu_gate_ops, ptr @.compoundliteral.61, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.63 = private unnamed_addr constant [9 x i8] c"bus-mmc0\00", align 1
@.compoundliteral.64 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.65 = internal global %struct.clk_init_data { ptr @.str.63, ptr @ccu_gate_ops, ptr @.compoundliteral.64, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.66 = private unnamed_addr constant [9 x i8] c"bus-mmc1\00", align 1
@.compoundliteral.67 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.68 = internal global %struct.clk_init_data { ptr @.str.66, ptr @ccu_gate_ops, ptr @.compoundliteral.67, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.69 = private unnamed_addr constant [9 x i8] c"bus-mmc2\00", align 1
@.compoundliteral.70 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.71 = internal global %struct.clk_init_data { ptr @.str.69, ptr @ccu_gate_ops, ptr @.compoundliteral.70, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.72 = private unnamed_addr constant [9 x i8] c"bus-nand\00", align 1
@.compoundliteral.73 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.74 = internal global %struct.clk_init_data { ptr @.str.72, ptr @ccu_gate_ops, ptr @.compoundliteral.73, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.75 = private unnamed_addr constant [9 x i8] c"bus-dram\00", align 1
@.compoundliteral.76 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.77 = internal global %struct.clk_init_data { ptr @.str.75, ptr @ccu_gate_ops, ptr @.compoundliteral.76, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.78 = private unnamed_addr constant [9 x i8] c"bus-emac\00", align 1
@.compoundliteral.79 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.80 = internal global %struct.clk_init_data { ptr @.str.78, ptr @ccu_gate_ops, ptr @.compoundliteral.79, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.81 = private unnamed_addr constant [12 x i8] c"bus-hstimer\00", align 1
@.compoundliteral.82 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.83 = internal global %struct.clk_init_data { ptr @.str.81, ptr @ccu_gate_ops, ptr @.compoundliteral.82, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.84 = private unnamed_addr constant [9 x i8] c"bus-spi0\00", align 1
@.compoundliteral.85 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.86 = internal global %struct.clk_init_data { ptr @.str.84, ptr @ccu_gate_ops, ptr @.compoundliteral.85, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.87 = private unnamed_addr constant [9 x i8] c"bus-spi1\00", align 1
@.compoundliteral.88 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.89 = internal global %struct.clk_init_data { ptr @.str.87, ptr @ccu_gate_ops, ptr @.compoundliteral.88, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.90 = private unnamed_addr constant [8 x i8] c"bus-otg\00", align 1
@.compoundliteral.91 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.92 = internal global %struct.clk_init_data { ptr @.str.90, ptr @ccu_gate_ops, ptr @.compoundliteral.91, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.93 = private unnamed_addr constant [10 x i8] c"bus-ehci0\00", align 1
@.compoundliteral.94 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.95 = internal global %struct.clk_init_data { ptr @.str.93, ptr @ccu_gate_ops, ptr @.compoundliteral.94, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.96 = private unnamed_addr constant [10 x i8] c"bus-ehci1\00", align 1
@.compoundliteral.97 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.98 = internal global %struct.clk_init_data { ptr @.str.96, ptr @ccu_gate_ops, ptr @.compoundliteral.97, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.99 = private unnamed_addr constant [10 x i8] c"bus-ohci0\00", align 1
@.compoundliteral.100 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.101 = internal global %struct.clk_init_data { ptr @.str.99, ptr @ccu_gate_ops, ptr @.compoundliteral.100, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.102 = private unnamed_addr constant [7 x i8] c"bus-ve\00", align 1
@.compoundliteral.103 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.104 = internal global %struct.clk_init_data { ptr @.str.102, ptr @ccu_gate_ops, ptr @.compoundliteral.103, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.105 = private unnamed_addr constant [10 x i8] c"bus-tcon0\00", align 1
@.compoundliteral.106 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.107 = internal global %struct.clk_init_data { ptr @.str.105, ptr @ccu_gate_ops, ptr @.compoundliteral.106, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.108 = private unnamed_addr constant [10 x i8] c"bus-tcon1\00", align 1
@.compoundliteral.109 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.110 = internal global %struct.clk_init_data { ptr @.str.108, ptr @ccu_gate_ops, ptr @.compoundliteral.109, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.111 = private unnamed_addr constant [8 x i8] c"bus-csi\00", align 1
@.compoundliteral.112 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.113 = internal global %struct.clk_init_data { ptr @.str.111, ptr @ccu_gate_ops, ptr @.compoundliteral.112, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.114 = private unnamed_addr constant [9 x i8] c"bus-hdmi\00", align 1
@.compoundliteral.115 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.116 = internal global %struct.clk_init_data { ptr @.str.114, ptr @ccu_gate_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.117 = private unnamed_addr constant [7 x i8] c"bus-de\00", align 1
@.compoundliteral.118 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.119 = internal global %struct.clk_init_data { ptr @.str.117, ptr @ccu_gate_ops, ptr @.compoundliteral.118, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.120 = private unnamed_addr constant [8 x i8] c"bus-gpu\00", align 1
@.compoundliteral.121 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.122 = internal global %struct.clk_init_data { ptr @.str.120, ptr @ccu_gate_ops, ptr @.compoundliteral.121, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.123 = private unnamed_addr constant [11 x i8] c"bus-msgbox\00", align 1
@.compoundliteral.124 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.125 = internal global %struct.clk_init_data { ptr @.str.123, ptr @ccu_gate_ops, ptr @.compoundliteral.124, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.126 = private unnamed_addr constant [13 x i8] c"bus-spinlock\00", align 1
@.compoundliteral.127 = internal global [1 x ptr] [ptr @.str.44], align 4
@.compoundliteral.128 = internal global %struct.clk_init_data { ptr @.str.126, ptr @ccu_gate_ops, ptr @.compoundliteral.127, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.129 = private unnamed_addr constant [10 x i8] c"bus-spdif\00", align 1
@.compoundliteral.130 = internal global [1 x ptr] [ptr @.str.49], align 4
@.compoundliteral.131 = internal global %struct.clk_init_data { ptr @.str.129, ptr @ccu_gate_ops, ptr @.compoundliteral.130, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.132 = private unnamed_addr constant [8 x i8] c"bus-pio\00", align 1
@.compoundliteral.133 = internal global [1 x ptr] [ptr @.str.49], align 4
@.compoundliteral.134 = internal global %struct.clk_init_data { ptr @.str.132, ptr @ccu_gate_ops, ptr @.compoundliteral.133, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.135 = private unnamed_addr constant [9 x i8] c"bus-i2s0\00", align 1
@.compoundliteral.136 = internal global [1 x ptr] [ptr @.str.49], align 4
@.compoundliteral.137 = internal global %struct.clk_init_data { ptr @.str.135, ptr @ccu_gate_ops, ptr @.compoundliteral.136, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.138 = private unnamed_addr constant [9 x i8] c"bus-i2s1\00", align 1
@.compoundliteral.139 = internal global [1 x ptr] [ptr @.str.49], align 4
@.compoundliteral.140 = internal global %struct.clk_init_data { ptr @.str.138, ptr @ccu_gate_ops, ptr @.compoundliteral.139, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.141 = private unnamed_addr constant [9 x i8] c"bus-i2s2\00", align 1
@.compoundliteral.142 = internal global [1 x ptr] [ptr @.str.49], align 4
@.compoundliteral.143 = internal global %struct.clk_init_data { ptr @.str.141, ptr @ccu_gate_ops, ptr @.compoundliteral.142, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.144 = private unnamed_addr constant [8 x i8] c"bus-tdm\00", align 1
@.compoundliteral.145 = internal global [1 x ptr] [ptr @.str.49], align 4
@.compoundliteral.146 = internal global %struct.clk_init_data { ptr @.str.144, ptr @ccu_gate_ops, ptr @.compoundliteral.145, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.147 = private unnamed_addr constant [9 x i8] c"bus-i2c0\00", align 1
@.compoundliteral.148 = internal global [1 x ptr] [ptr @.str.52], align 4
@.compoundliteral.149 = internal global %struct.clk_init_data { ptr @.str.147, ptr @ccu_gate_ops, ptr @.compoundliteral.148, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.150 = private unnamed_addr constant [9 x i8] c"bus-i2c1\00", align 1
@.compoundliteral.151 = internal global [1 x ptr] [ptr @.str.52], align 4
@.compoundliteral.152 = internal global %struct.clk_init_data { ptr @.str.150, ptr @ccu_gate_ops, ptr @.compoundliteral.151, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.153 = private unnamed_addr constant [9 x i8] c"bus-i2c2\00", align 1
@.compoundliteral.154 = internal global [1 x ptr] [ptr @.str.52], align 4
@.compoundliteral.155 = internal global %struct.clk_init_data { ptr @.str.153, ptr @ccu_gate_ops, ptr @.compoundliteral.154, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.156 = private unnamed_addr constant [10 x i8] c"bus-uart0\00", align 1
@.compoundliteral.157 = internal global [1 x ptr] [ptr @.str.52], align 4
@.compoundliteral.158 = internal global %struct.clk_init_data { ptr @.str.156, ptr @ccu_gate_ops, ptr @.compoundliteral.157, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.159 = private unnamed_addr constant [10 x i8] c"bus-uart1\00", align 1
@.compoundliteral.160 = internal global [1 x ptr] [ptr @.str.52], align 4
@.compoundliteral.161 = internal global %struct.clk_init_data { ptr @.str.159, ptr @ccu_gate_ops, ptr @.compoundliteral.160, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.162 = private unnamed_addr constant [10 x i8] c"bus-uart2\00", align 1
@.compoundliteral.163 = internal global [1 x ptr] [ptr @.str.52], align 4
@.compoundliteral.164 = internal global %struct.clk_init_data { ptr @.str.162, ptr @ccu_gate_ops, ptr @.compoundliteral.163, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.165 = private unnamed_addr constant [10 x i8] c"bus-uart3\00", align 1
@.compoundliteral.166 = internal global [1 x ptr] [ptr @.str.52], align 4
@.compoundliteral.167 = internal global %struct.clk_init_data { ptr @.str.165, ptr @ccu_gate_ops, ptr @.compoundliteral.166, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.168 = private unnamed_addr constant [10 x i8] c"bus-uart4\00", align 1
@.compoundliteral.169 = internal global [1 x ptr] [ptr @.str.52], align 4
@.compoundliteral.170 = internal global %struct.clk_init_data { ptr @.str.168, ptr @ccu_gate_ops, ptr @.compoundliteral.169, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.171 = private unnamed_addr constant [7 x i8] c"cci400\00", align 1
@cci400_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.19, ptr @.str.25], align 4
@.compoundliteral.172 = internal global %struct.clk_init_data { ptr @.str.171, ptr @ccu_div_ops, ptr @cci400_parents, ptr null, ptr null, i8 3, i32 2048 }, align 4
@.str.173 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@mod0_default_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.19], align 4
@.compoundliteral.174 = internal global %struct.clk_init_data { ptr @.str.173, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.175 = private unnamed_addr constant [5 x i8] c"mmc0\00", align 1
@.compoundliteral.176 = internal global %struct.clk_init_data { ptr @.str.175, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.177 = private unnamed_addr constant [12 x i8] c"mmc0-sample\00", align 1
@ccu_phase_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.178 = internal global [1 x ptr] [ptr @.str.175], align 4
@.compoundliteral.179 = internal global %struct.clk_init_data { ptr @.str.177, ptr @ccu_phase_ops, ptr @.compoundliteral.178, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.180 = private unnamed_addr constant [12 x i8] c"mmc0-output\00", align 1
@.compoundliteral.181 = internal global [1 x ptr] [ptr @.str.175], align 4
@.compoundliteral.182 = internal global %struct.clk_init_data { ptr @.str.180, ptr @ccu_phase_ops, ptr @.compoundliteral.181, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.183 = private unnamed_addr constant [5 x i8] c"mmc1\00", align 1
@.compoundliteral.184 = internal global %struct.clk_init_data { ptr @.str.183, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.185 = private unnamed_addr constant [12 x i8] c"mmc1-sample\00", align 1
@.compoundliteral.186 = internal global [1 x ptr] [ptr @.str.183], align 4
@.compoundliteral.187 = internal global %struct.clk_init_data { ptr @.str.185, ptr @ccu_phase_ops, ptr @.compoundliteral.186, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.188 = private unnamed_addr constant [12 x i8] c"mmc1-output\00", align 1
@.compoundliteral.189 = internal global [1 x ptr] [ptr @.str.183], align 4
@.compoundliteral.190 = internal global %struct.clk_init_data { ptr @.str.188, ptr @ccu_phase_ops, ptr @.compoundliteral.189, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.191 = private unnamed_addr constant [5 x i8] c"mmc2\00", align 1
@ccu_mp_mmc_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.192 = internal global %struct.clk_init_data { ptr @.str.191, ptr @ccu_mp_mmc_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 64 }, align 4
@.str.193 = private unnamed_addr constant [12 x i8] c"mmc2-sample\00", align 1
@.compoundliteral.194 = internal global [1 x ptr] [ptr @.str.191], align 4
@.compoundliteral.195 = internal global %struct.clk_init_data { ptr @.str.193, ptr @ccu_phase_ops, ptr @.compoundliteral.194, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.196 = private unnamed_addr constant [12 x i8] c"mmc2-output\00", align 1
@.compoundliteral.197 = internal global [1 x ptr] [ptr @.str.191], align 4
@.compoundliteral.198 = internal global %struct.clk_init_data { ptr @.str.196, ptr @ccu_phase_ops, ptr @.compoundliteral.197, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.199 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.compoundliteral.200 = internal global %struct.clk_init_data { ptr @.str.199, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.201 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.compoundliteral.202 = internal global %struct.clk_init_data { ptr @.str.201, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.203 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.compoundliteral.204 = internal global %struct.clk_init_data { ptr @.str.203, ptr @ccu_mp_ops, ptr @mod0_default_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.205 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@.compoundliteral.206 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.207 = internal global %struct.clk_init_data { ptr @.str.205, ptr @ccu_div_ops, ptr @.compoundliteral.206, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.208 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.compoundliteral.209 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.210 = internal global %struct.clk_init_data { ptr @.str.208, ptr @ccu_div_ops, ptr @.compoundliteral.209, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.211 = private unnamed_addr constant [5 x i8] c"i2s2\00", align 1
@.compoundliteral.212 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.213 = internal global %struct.clk_init_data { ptr @.str.211, ptr @ccu_div_ops, ptr @.compoundliteral.212, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.214 = private unnamed_addr constant [4 x i8] c"tdm\00", align 1
@.compoundliteral.215 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.216 = internal global %struct.clk_init_data { ptr @.str.214, ptr @ccu_div_ops, ptr @.compoundliteral.215, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.217 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.compoundliteral.218 = internal global [1 x ptr] [ptr @.str.7], align 4
@.compoundliteral.219 = internal global %struct.clk_init_data { ptr @.str.217, ptr @ccu_div_ops, ptr @.compoundliteral.218, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.220 = private unnamed_addr constant [9 x i8] c"usb-phy0\00", align 1
@.compoundliteral.221 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.222 = internal global %struct.clk_init_data { ptr @.str.220, ptr @ccu_gate_ops, ptr @.compoundliteral.221, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.223 = private unnamed_addr constant [9 x i8] c"usb-phy1\00", align 1
@.compoundliteral.224 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.225 = internal global %struct.clk_init_data { ptr @.str.223, ptr @ccu_gate_ops, ptr @.compoundliteral.224, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.226 = private unnamed_addr constant [9 x i8] c"usb-hsic\00", align 1
@.compoundliteral.227 = internal global [1 x ptr] [ptr @.str.25], align 4
@.compoundliteral.228 = internal global %struct.clk_init_data { ptr @.str.226, ptr @ccu_gate_ops, ptr @.compoundliteral.227, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.229 = private unnamed_addr constant [13 x i8] c"usb-hsic-12m\00", align 1
@.compoundliteral.230 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.231 = internal global %struct.clk_init_data { ptr @.str.229, ptr @ccu_gate_ops, ptr @.compoundliteral.230, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.232 = private unnamed_addr constant [10 x i8] c"usb-ohci0\00", align 1
@.compoundliteral.233 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.234 = internal global %struct.clk_init_data { ptr @.str.232, ptr @ccu_gate_ops, ptr @.compoundliteral.233, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.235 = private unnamed_addr constant [5 x i8] c"dram\00", align 1
@.compoundliteral.236 = internal global [1 x ptr] [ptr @.str.16], align 4
@.compoundliteral.237 = internal global %struct.clk_init_data { ptr @.str.235, ptr @ccu_div_ops, ptr @.compoundliteral.236, ptr null, ptr null, i8 1, i32 2048 }, align 4
@.str.238 = private unnamed_addr constant [8 x i8] c"dram-ve\00", align 1
@.compoundliteral.239 = internal global [1 x ptr] [ptr @.str.235], align 4
@.compoundliteral.240 = internal global %struct.clk_init_data { ptr @.str.238, ptr @ccu_gate_ops, ptr @.compoundliteral.239, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.241 = private unnamed_addr constant [9 x i8] c"dram-csi\00", align 1
@.compoundliteral.242 = internal global [1 x ptr] [ptr @.str.235], align 4
@.compoundliteral.243 = internal global %struct.clk_init_data { ptr @.str.241, ptr @ccu_gate_ops, ptr @.compoundliteral.242, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.244 = private unnamed_addr constant [6 x i8] c"tcon0\00", align 1
@tcon0_parents = internal constant [1 x ptr] [ptr @.str.10], align 4
@.compoundliteral.245 = internal global %struct.clk_init_data { ptr @.str.244, ptr @ccu_mux_ops, ptr @tcon0_parents, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.246 = private unnamed_addr constant [6 x i8] c"tcon1\00", align 1
@tcon1_parents = internal constant [1 x ptr] [ptr @.str.31], align 4
@.compoundliteral.247 = internal global %struct.clk_init_data { ptr @.str.246, ptr @ccu_div_ops, ptr @tcon1_parents, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.248 = private unnamed_addr constant [9 x i8] c"csi-misc\00", align 1
@.compoundliteral.249 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.250 = internal global %struct.clk_init_data { ptr @.str.248, ptr @ccu_gate_ops, ptr @.compoundliteral.249, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.251 = private unnamed_addr constant [9 x i8] c"mipi-csi\00", align 1
@.compoundliteral.252 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.253 = internal global %struct.clk_init_data { ptr @.str.251, ptr @ccu_gate_ops, ptr @.compoundliteral.252, ptr null, ptr null, i8 1, i32 0 }, align 4
@csi_mclk_table = internal constant [3 x i8] c"\00\03\05", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"csi-mclk\00", align 1
@csi_mclk_parents = internal constant [3 x ptr] [ptr @.str.10, ptr @.str.28, ptr @.str.2], align 4
@.compoundliteral.255 = internal global %struct.clk_init_data { ptr @.str.254, ptr @ccu_div_ops, ptr @csi_mclk_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@csi_sclk_table = internal constant [2 x i8] c"\00\05", align 1
@.str.256 = private unnamed_addr constant [9 x i8] c"csi-sclk\00", align 1
@csi_sclk_parents = internal constant [2 x ptr] [ptr @.str.19, ptr @.str.13], align 4
@.compoundliteral.257 = internal global %struct.clk_init_data { ptr @.str.256, ptr @ccu_div_ops, ptr @csi_sclk_parents, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.258 = private unnamed_addr constant [3 x i8] c"ve\00", align 1
@.compoundliteral.259 = internal global [1 x ptr] [ptr @.str.13], align 4
@.compoundliteral.260 = internal global %struct.clk_init_data { ptr @.str.258, ptr @ccu_div_ops, ptr @.compoundliteral.259, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.261 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.compoundliteral.262 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.263 = internal global %struct.clk_init_data { ptr @.str.261, ptr @ccu_gate_ops, ptr @.compoundliteral.262, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.264 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@hdmi_parents = internal constant [1 x ptr] [ptr @.str.31], align 4
@.compoundliteral.265 = internal global %struct.clk_init_data { ptr @.str.264, ptr @ccu_div_ops, ptr @hdmi_parents, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.266 = private unnamed_addr constant [10 x i8] c"hdmi-slow\00", align 1
@.compoundliteral.267 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.268 = internal global %struct.clk_init_data { ptr @.str.266, ptr @ccu_gate_ops, ptr @.compoundliteral.267, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.269 = private unnamed_addr constant [5 x i8] c"mbus\00", align 1
@mbus_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.19, ptr @.str.16], align 4
@.compoundliteral.270 = internal global %struct.clk_init_data { ptr @.str.269, ptr @ccu_div_ops, ptr @mbus_parents, ptr null, ptr null, i8 3, i32 2048 }, align 4
@mipi_dsi0_table = internal constant [1 x i8] c"\08", align 1
@.str.271 = private unnamed_addr constant [10 x i8] c"mipi-dsi0\00", align 1
@mipi_dsi0_parents = internal constant [1 x ptr] [ptr @.str.10], align 4
@.compoundliteral.272 = internal global %struct.clk_init_data { ptr @.str.271, ptr @ccu_div_ops, ptr @mipi_dsi0_parents, ptr null, ptr null, i8 1, i32 4 }, align 4
@mipi_dsi1_table = internal constant [2 x i8] c"\00\09", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c"mipi-dsi1\00", align 1
@mipi_dsi1_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.10], align 4
@.compoundliteral.274 = internal global %struct.clk_init_data { ptr @.str.273, ptr @ccu_div_ops, ptr @mipi_dsi1_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.275 = private unnamed_addr constant [9 x i8] c"gpu-core\00", align 1
@.compoundliteral.276 = internal global [1 x ptr] [ptr @.str.22], align 4
@.compoundliteral.277 = internal global %struct.clk_init_data { ptr @.str.275, ptr @ccu_div_ops, ptr @.compoundliteral.276, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.278 = private unnamed_addr constant [11 x i8] c"gpu-memory\00", align 1
@gpu_memory_parents = internal constant [2 x ptr] [ptr @.str.22, ptr @.str.16], align 4
@.compoundliteral.279 = internal global %struct.clk_init_data { ptr @.str.278, ptr @ccu_div_ops, ptr @gpu_memory_parents, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.280 = private unnamed_addr constant [8 x i8] c"gpu-hyd\00", align 1
@.compoundliteral.281 = internal global [1 x ptr] [ptr @.str.22], align 4
@.compoundliteral.282 = internal global %struct.clk_init_data { ptr @.str.280, ptr @ccu_div_ops, ptr @.compoundliteral.281, ptr null, ptr null, i8 1, i32 4 }, align 4
@sun8i_a83t_hw_clks = internal global { i32, [101 x ptr] } { i32 101, [101 x ptr] [ptr getelementptr (i8, ptr @pll_c0cpux_clk, i64 76), ptr getelementptr (i8, ptr @pll_c1cpux_clk, i64 76), ptr getelementptr (i8, ptr @pll_audio_clk, i64 104), ptr getelementptr (i8, ptr @pll_video0_clk, i64 88), ptr getelementptr (i8, ptr @pll_ve_clk, i64 88), ptr getelementptr (i8, ptr @pll_ddr_clk, i64 88), ptr getelementptr (i8, ptr @pll_periph_clk, i64 88), ptr getelementptr (i8, ptr @pll_gpu_clk, i64 88), ptr getelementptr (i8, ptr @pll_hsic_clk, i64 88), ptr getelementptr (i8, ptr @pll_de_clk, i64 88), ptr getelementptr (i8, ptr @pll_video1_clk, i64 88), ptr getelementptr (i8, ptr @c0cpux_clk, i64 48), ptr getelementptr (i8, ptr @c1cpux_clk, i64 48), ptr getelementptr (i8, ptr @axi0_clk, i64 68), ptr getelementptr (i8, ptr @axi1_clk, i64 68), ptr getelementptr (i8, ptr @ahb1_clk, i64 68), ptr getelementptr (i8, ptr @ahb2_clk, i64 48), ptr getelementptr (i8, ptr @apb1_clk, i64 68), ptr getelementptr (i8, ptr @apb2_clk, i64 92), ptr getelementptr (i8, ptr @bus_mipi_dsi_clk, i64 24), ptr getelementptr (i8, ptr @bus_ss_clk, i64 24), ptr getelementptr (i8, ptr @bus_dma_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc1_clk, i64 24), ptr getelementptr (i8, ptr @bus_mmc2_clk, i64 24), ptr getelementptr (i8, ptr @bus_nand_clk, i64 24), ptr getelementptr (i8, ptr @bus_dram_clk, i64 24), ptr getelementptr (i8, ptr @bus_emac_clk, i64 24), ptr getelementptr (i8, ptr @bus_hstimer_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi0_clk, i64 24), ptr getelementptr (i8, ptr @bus_spi1_clk, i64 24), ptr getelementptr (i8, ptr @bus_otg_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ehci1_clk, i64 24), ptr getelementptr (i8, ptr @bus_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_ve_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon0_clk, i64 24), ptr getelementptr (i8, ptr @bus_tcon1_clk, i64 24), ptr getelementptr (i8, ptr @bus_csi_clk, i64 24), ptr getelementptr (i8, ptr @bus_hdmi_clk, i64 24), ptr getelementptr (i8, ptr @bus_de_clk, i64 24), ptr getelementptr (i8, ptr @bus_gpu_clk, i64 24), ptr getelementptr (i8, ptr @bus_msgbox_clk, i64 24), ptr getelementptr (i8, ptr @bus_spinlock_clk, i64 24), ptr getelementptr (i8, ptr @bus_spdif_clk, i64 24), ptr getelementptr (i8, ptr @bus_pio_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2s2_clk, i64 24), ptr getelementptr (i8, ptr @bus_tdm_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c0_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c1_clk, i64 24), ptr getelementptr (i8, ptr @bus_i2c2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart0_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart1_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart2_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart3_clk, i64 24), ptr getelementptr (i8, ptr @bus_uart4_clk, i64 24), ptr getelementptr (i8, ptr @cci400_clk, i64 68), ptr getelementptr (i8, ptr @nand_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_clk, i64 92), ptr getelementptr (i8, ptr @mmc0_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc0_output_clk, i64 24), ptr getelementptr (i8, ptr @mmc1_clk, i64 92), ptr getelementptr (i8, ptr @mmc1_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc1_output_clk, i64 24), ptr getelementptr (i8, ptr @mmc2_clk, i64 92), ptr getelementptr (i8, ptr @mmc2_sample_clk, i64 24), ptr getelementptr (i8, ptr @mmc2_output_clk, i64 24), ptr getelementptr (i8, ptr @ss_clk, i64 92), ptr getelementptr (i8, ptr @spi0_clk, i64 92), ptr getelementptr (i8, ptr @spi1_clk, i64 92), ptr getelementptr (i8, ptr @i2s0_clk, i64 68), ptr getelementptr (i8, ptr @i2s1_clk, i64 68), ptr getelementptr (i8, ptr @i2s2_clk, i64 68), ptr getelementptr (i8, ptr @tdm_clk, i64 68), ptr getelementptr (i8, ptr @spdif_clk, i64 68), ptr getelementptr (i8, ptr @usb_phy0_clk, i64 24), ptr getelementptr (i8, ptr @usb_phy1_clk, i64 24), ptr getelementptr (i8, ptr @usb_hsic_clk, i64 24), ptr getelementptr (i8, ptr @usb_hsic_12m_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @dram_clk, i64 68), ptr getelementptr (i8, ptr @dram_ve_clk, i64 24), ptr getelementptr (i8, ptr @dram_csi_clk, i64 24), ptr getelementptr (i8, ptr @tcon0_clk, i64 48), ptr getelementptr (i8, ptr @tcon1_clk, i64 68), ptr getelementptr (i8, ptr @csi_misc_clk, i64 24), ptr getelementptr (i8, ptr @mipi_csi_clk, i64 24), ptr getelementptr (i8, ptr @csi_mclk_clk, i64 68), ptr getelementptr (i8, ptr @csi_sclk_clk, i64 68), ptr getelementptr (i8, ptr @ve_clk, i64 68), ptr getelementptr (i8, ptr @avs_clk, i64 24), ptr getelementptr (i8, ptr @hdmi_clk, i64 68), ptr getelementptr (i8, ptr @hdmi_slow_clk, i64 24), ptr getelementptr (i8, ptr @mbus_clk, i64 68), ptr getelementptr (i8, ptr @mipi_dsi0_clk, i64 68), ptr getelementptr (i8, ptr @mipi_dsi1_clk, i64 68), ptr getelementptr (i8, ptr @gpu_core_clk, i64 68), ptr getelementptr (i8, ptr @gpu_memory_clk, i64 68), ptr getelementptr (i8, ptr @gpu_hyd_clk, i64 68)] }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_import_ns163, ptr @__UNIQUE_ID_license165, ptr @__exitcall_sun8i_a83t_ccu_driver_exit, ptr @__initcall__kmod_sun8i_a83t_ccu__162_923_sun8i_a83t_ccu_driver_init6, ptr @sun8i_a83t_ccu_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun8i_a83t_ccu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_a83t_ccu_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_a83t_ccu_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_a83t_ccu_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_a83t_ccu_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %28

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %2, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %9 = and i32 %8, -327681
  %10 = or i32 %9, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %10) #3, !srcloc !11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = and i32 %11, -130817
  %16 = or i32 %15, 4352
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %16) #3, !srcloc !11
  br label %17

17:                                               ; preds = %14, %6
  %18 = getelementptr i8, ptr %2, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, -130817
  %24 = or i32 %23, 4352
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %24) #3, !srcloc !11
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %27 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %26, ptr noundef %2, ptr noundef nonnull @sun8i_a83t_ccu_desc) #3
  br label %28

28:                                               ; preds = %25, %4
  %29 = phi i32 [ %5, %4 ], [ %27, %25 ]
  ret i32 %29
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
!8 = !{i64 2869826}
!9 = !{i64 2151534946}
!10 = !{i64 2151535283}
!11 = !{i64 2869408}
!12 = !{i64 2151533448}
!13 = !{i64 2151534509}
