; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt7986-infracfg.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt7986-infracfg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_mux = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_clk_mt7986_infracfg__162_224_clk_mt7986_infracfg_drv_init6 = internal global ptr @clk_mt7986_infracfg_drv_init, section ".initcall6.init", align 4
@clk_mt7986_infracfg_drv = internal global %struct.platform_driver { ptr @clk_mt7986_infracfg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt7986_infracfg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [20 x i8] c"clk-mt7986-infracfg\00", align 1
@of_match_clk_mt7986_infracfg = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7986-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"\013%s(): ioremap failed\0A\00", align 1
@__func__.clk_mt7986_infracfg_probe = private unnamed_addr constant [26 x i8] c"clk_mt7986_infracfg_probe\00", align 1
@infra_divs = internal constant [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 0, ptr @.str.3, ptr @.str.4, i32 1, i32 2 }], align 4
@infra_muxes = internal constant [9 x %struct.mtk_mux] [%struct.mtk_mux { i32 1, ptr @.str.5, ptr @infra_uart_parent, i32 4, i32 24, i32 16, i32 20, i32 -1, i8 0, i8 1, i8 -1, i8 -1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 2, ptr @.str.6, ptr @infra_uart_parent, i32 4, i32 24, i32 16, i32 20, i32 -1, i8 1, i8 1, i8 -1, i8 -1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 3, ptr @.str.7, ptr @infra_uart_parent, i32 4, i32 24, i32 16, i32 20, i32 -1, i8 2, i8 1, i8 -1, i8 -1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 4, ptr @.str.8, ptr @infra_spi_parents, i32 4, i32 24, i32 16, i32 20, i32 -1, i8 4, i8 1, i8 -1, i8 -1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 5, ptr @.str.9, ptr @infra_spi_parents, i32 4, i32 24, i32 16, i32 20, i32 -1, i8 5, i8 1, i8 -1, i8 -1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 6, ptr @.str.10, ptr @infra_pwm_bsel_parents, i32 4, i32 24, i32 16, i32 20, i32 -1, i8 9, i8 2, i8 -1, i8 -1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 7, ptr @.str.11, ptr @infra_pwm_bsel_parents, i32 4, i32 24, i32 16, i32 20, i32 -1, i8 11, i8 2, i8 -1, i8 -1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 8, ptr @.str.12, ptr @infra_pwm_bsel_parents, i32 4, i32 24, i32 16, i32 20, i32 -1, i8 13, i8 2, i8 -1, i8 -1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 9, ptr @.str.13, ptr @infra_pcie_parents, i32 4, i32 40, i32 32, i32 36, i32 -1, i8 0, i8 2, i8 -1, i8 -1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }], align 4
@mt7986_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@infra_clks = internal constant [46 x %struct.mtk_gate] [%struct.mtk_gate { i32 10, ptr @.str.22, ptr @.str.3, ptr @infra0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.23, ptr @.str.3, ptr @infra0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.24, ptr @.str.12, ptr @infra0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.25, ptr @.str.10, ptr @infra0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.26, ptr @.str.11, ptr @infra0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.27, ptr @.str.4, ptr @infra0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.28, ptr @.str.29, ptr @infra0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.30, ptr @.str.4, ptr @infra0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.31, ptr @.str.14, ptr @infra0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.32, ptr @.str.33, ptr @infra0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.34, ptr @.str.35, ptr @infra0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.36, ptr @.str.37, ptr @infra0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.38, ptr @.str.14, ptr @infra0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.39, ptr @.str.3, ptr @infra0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.40, ptr @.str.3, ptr @infra0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.41, ptr @.str.3, ptr @infra0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.42, ptr @.str.14, ptr @infra0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 55, ptr @.str.43, ptr @.str.4, ptr @infra0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.44, ptr @.str.14, ptr @infra1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.45, ptr @.str.16, ptr @infra1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.46, ptr @.str.5, ptr @infra1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.47, ptr @.str.6, ptr @infra1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.48, ptr @.str.7, ptr @infra1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.49, ptr @.str.50, ptr @infra1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.51, ptr @.str.52, ptr @infra1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.53, ptr @.str.3, ptr @infra1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.54, ptr @.str.8, ptr @infra1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.55, ptr @.str.9, ptr @infra1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.56, ptr @.str.3, ptr @infra1_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.57, ptr @.str.3, ptr @infra1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.58, ptr @.str.59, ptr @infra1_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.60, ptr @.str.61, ptr @infra1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.62, ptr @.str.63, ptr @infra1_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 42, ptr @.str.64, ptr @.str.4, ptr @infra1_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.65, ptr @.str.3, ptr @infra1_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.66, ptr @.str.14, ptr @infra1_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 45, ptr @.str.67, ptr @.str.14, ptr @infra1_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 46, ptr @.str.68, ptr @.str.50, ptr @infra1_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.69, ptr @.str.4, ptr @infra2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.70, ptr @.str.3, ptr @infra2_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.71, ptr @.str.72, ptr @infra2_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.73, ptr @.str.74, ptr @infra2_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 51, ptr @.str.75, ptr @.str.21, ptr @infra2_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 52, ptr @.str.76, ptr @.str.20, ptr @infra2_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 53, ptr @.str.77, ptr @.str.14, ptr @infra2_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 54, ptr @.str.78, ptr @.str.4, ptr @infra2_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }], align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"infra_sysaxi_d2\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sysaxi_sel\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"infra_uart0_sel\00", align 1
@infra_uart_parent = internal constant [2 x ptr] [ptr @.str.14, ptr @.str.15], section ".init.rodata", align 4
@mtk_mux_gate_clr_set_upd_ops = external dso_local constant %struct.clk_ops, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"infra_uart1_sel\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"infra_uart2_sel\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"infra_spi0_sel\00", align 1
@infra_spi_parents = internal constant [2 x ptr] [ptr @.str.16, ptr @.str.17], section ".init.rodata", align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"infra_spi1_sel\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"infra_pwm1_sel\00", align 1
@infra_pwm_bsel_parents = internal constant [4 x ptr] [ptr @.str.18, ptr @.str.14, ptr @.str.3, ptr @.str.19], section ".init.rodata", align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"infra_pwm2_sel\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"infra_pwm_bsel\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"infra_pcie_sel\00", align 1
@infra_pcie_parents = internal constant [4 x ptr] [ptr @.str.18, ptr @.str.14, ptr @.str.20, ptr @.str.21], section ".init.rodata", align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"csw_f26m_sel\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"i2c_sel\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"spi_sel\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"top_rtc_32p7k\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"pwm_sel\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"top_xtal\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"pextp_tl_ck_sel\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"infra_gpt_sta\00", align 1
@infra0_cg_regs = internal constant %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, align 4
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"infra_pwm_hck\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"infra_pwm_sta\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"infra_pwm1\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"infra_pwm2\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"infra_cq_dma\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"infra_eip97\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"eip_b_sel\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"infra_aud_bus\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"infra_aud_26m\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"infra_aud_l\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"aud_l_sel\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"infra_aud_aud\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"a1sys_sel\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"infra_aud_eg2\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"a_tuner_sel\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"infra_dramc_26m\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"infra_dbg\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"infra_ap_dma\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"infra_sej\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"infra_sej_13m\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"infra_trng\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"infra_therm\00", align 1
@infra1_cg_regs = internal constant %struct.mtk_gate_regs { i32 88, i32 84, i32 80 }, align 4
@.str.45 = private unnamed_addr constant [11 x i8] c"infra_i2c0\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"infra_uart0\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"infra_uart1\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"infra_uart2\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"infra_nfi1\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"nfi1x_sel\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"infra_spinfi1\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"spinfi_sel\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"infra_nfi_hck\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"infra_spi0\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"infra_spi1\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"infra_spi0_hck\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"infra_spi1_hck\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"infra_frtc\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"top_rtc_32k\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"infra_msdc\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"emmc_416m_sel\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"infra_msdc_hck\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"emmc_250m_sel\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"infra_msdc_133m\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"infra_msdc_66m\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"infra_adc_26m\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"infra_adc_frc\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"infra_fbist2fpc\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"infra_iusb_133\00", align 1
@infra2_cg_regs = internal constant %struct.mtk_gate_regs { i32 104, i32 100, i32 96 }, align 4
@.str.70 = private unnamed_addr constant [15 x i8] c"infra_iusb_66m\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"infra_iusb_sys\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"u2u3_sys_sel\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"infra_iusb\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"u2u3_sel\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"infra_ipcie\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"infra_ipcie_pipe\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"infra_ipcier\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"infra_ipcieb\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_mt7986_infracfg__162_224_clk_mt7986_infracfg_drv_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clk_mt7986_infracfg_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt7986_infracfg_drv, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mt7986_infracfg_probe(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_iomap(ptr noundef %3, i32 noundef 0) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.clk_mt7986_infracfg_probe) #5
  br label %18

8:                                                ; preds = %1
  %9 = tail call ptr @mtk_alloc_clk_data(i32 noundef 56) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @infra_divs, i32 noundef 1, ptr noundef nonnull %9) #4
  %12 = tail call i32 @mtk_clk_register_muxes(ptr noundef nonnull @infra_muxes, i32 noundef 9, ptr noundef %3, ptr noundef nonnull @mt7986_clk_lock, ptr noundef nonnull %9) #4
  %13 = tail call i32 @mtk_clk_register_gates(ptr noundef %3, ptr noundef nonnull @infra_clks, i32 noundef 46, ptr noundef nonnull %9) #4
  %14 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %9) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.clk_mt7986_infracfg_probe, i32 noundef %14) #5
  tail call void @mtk_free_clk_data(ptr noundef nonnull %9) #4
  br label %18

18:                                               ; preds = %16, %11, %8, %6
  %19 = phi i32 [ %14, %16 ], [ -12, %6 ], [ -12, %8 ], [ 0, %11 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_muxes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_free_clk_data(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
