; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt7986-topckgen.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt7986-topckgen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_mux = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_clk_mt7986_topckgen__162_342_clk_mt7986_topckgen_drv_init6 = internal global ptr @clk_mt7986_topckgen_drv_init, section ".initcall6.init", align 4
@clk_mt7986_topckgen_drv = internal global %struct.platform_driver { ptr @clk_mt7986_topckgen_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt7986_topckgen, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [20 x i8] c"clk-mt7986-topckgen\00", align 1
@of_match_clk_mt7986_topckgen = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7986-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"\013%s(): ioremap failed\0A\00", align 1
@__func__.clk_mt7986_topckgen_probe = private unnamed_addr constant [26 x i8] c"clk_mt7986_topckgen_probe\00", align 1
@top_fixed_clks = internal constant [2 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 0, ptr @.str.3, ptr @.str.4, i32 40000000 }, %struct.mtk_fixed_clk { i32 63, ptr @.str.5, ptr @.str.4, i32 50000000 }], align 4
@top_divs = internal constant [25 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 1, ptr @.str.6, ptr @.str.3, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 2, ptr @.str.7, ptr @.str.3, i32 1, i32 1250 }, %struct.mtk_fixed_factor { i32 3, ptr @.str.8, ptr @.str.3, i32 1, i32 1220 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.9, ptr @.str.10, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 5, ptr @.str.11, ptr @.str.10, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.12, ptr @.str.10, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.13, ptr @.str.10, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.14, ptr @.str.10, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.15, ptr @.str.16, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.17, ptr @.str.16, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.18, ptr @.str.16, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.19, ptr @.str.16, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.20, ptr @.str.16, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.21, ptr @.str.16, i32 1, i32 30 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.22, ptr @.str.23, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.24, ptr @.str.25, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.26, ptr @.str.25, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.27, ptr @.str.25, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.28, ptr @.str.25, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.29, ptr @.str.25, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.30, ptr @.str.25, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.31, ptr @.str.32, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.33, ptr @.str.32, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.34, ptr @.str.32, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.35, ptr @.str.36, i32 1, i32 10 }], align 4
@top_muxes = internal constant [37 x %struct.mtk_mux] [%struct.mtk_mux { i32 26, ptr @.str.37, ptr @nfi1x_parents, i32 4, i32 0, i32 4, i32 8, i32 448, i8 0, i8 3, i8 7, i8 0, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 27, ptr @.str.38, ptr @spinfi_parents, i32 4, i32 0, i32 4, i32 8, i32 448, i8 8, i8 3, i8 15, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 28, ptr @.str.39, ptr @spi_parents, i32 4, i32 0, i32 4, i32 8, i32 448, i8 16, i8 3, i8 23, i8 2, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 29, ptr @.str.40, ptr @spi_parents, i32 4, i32 0, i32 4, i32 8, i32 448, i8 24, i8 3, i8 31, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 30, ptr @.str.41, ptr @uart_parents, i32 4, i32 16, i32 20, i32 24, i32 448, i8 0, i8 2, i8 7, i8 4, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 31, ptr @.str.42, ptr @pwm_parents, i32 4, i32 16, i32 20, i32 24, i32 448, i8 8, i8 2, i8 15, i8 5, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 32, ptr @.str.43, ptr @i2c_parents, i32 4, i32 16, i32 20, i32 24, i32 448, i8 16, i8 2, i8 23, i8 6, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 33, ptr @.str.44, ptr @pextp_tl_ck_parents, i32 4, i32 16, i32 20, i32 24, i32 448, i8 24, i8 2, i8 31, i8 7, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 34, ptr @.str.45, ptr @emmc_250m_parents, i32 4, i32 32, i32 36, i32 40, i32 448, i8 0, i8 1, i8 7, i8 8, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 35, ptr @.str.46, ptr @emmc_416m_parents, i32 4, i32 32, i32 36, i32 40, i32 448, i8 8, i8 1, i8 15, i8 9, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 36, ptr @.str.47, ptr @f_26m_adc_parents, i32 4, i32 32, i32 36, i32 40, i32 448, i8 16, i8 1, i8 23, i8 10, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 37, ptr @.str.48, ptr @f_26m_adc_parents, i32 4, i32 32, i32 36, i32 40, i32 448, i8 24, i8 1, i8 31, i8 11, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 38, ptr @.str.49, ptr @dramc_md32_parents, i32 4, i32 48, i32 52, i32 56, i32 448, i8 0, i8 1, i8 7, i8 12, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 39, ptr @.str.50, ptr @sysaxi_parents, i32 4, i32 48, i32 52, i32 56, i32 448, i8 8, i8 2, i8 15, i8 13, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 40, ptr @.str.51, ptr @sysapb_parents, i32 4, i32 48, i32 52, i32 56, i32 448, i8 16, i8 2, i8 23, i8 14, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 41, ptr @.str.52, ptr @arm_db_main_parents, i32 4, i32 48, i32 52, i32 56, i32 448, i8 24, i8 1, i8 31, i8 15, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 42, ptr @.str.53, ptr @arm_db_jtsel_parents, i32 4, i32 64, i32 68, i32 72, i32 448, i8 0, i8 1, i8 7, i8 16, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 43, ptr @.str.54, ptr @netsys_parents, i32 4, i32 64, i32 68, i32 72, i32 448, i8 8, i8 1, i8 15, i8 17, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 44, ptr @.str.55, ptr @netsys_500m_parents, i32 4, i32 64, i32 68, i32 72, i32 448, i8 16, i8 1, i8 23, i8 18, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 45, ptr @.str.56, ptr @netsys_mcu_parents, i32 4, i32 64, i32 68, i32 72, i32 448, i8 24, i8 3, i8 31, i8 19, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 46, ptr @.str.57, ptr @netsys_2x_parents, i32 4, i32 80, i32 84, i32 88, i32 448, i8 0, i8 2, i8 7, i8 20, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 47, ptr @.str.58, ptr @sgm_325m_parents, i32 4, i32 80, i32 84, i32 88, i32 448, i8 8, i8 1, i8 15, i8 21, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 48, ptr @.str.59, ptr @sgm_reg_parents, i32 4, i32 80, i32 84, i32 88, i32 448, i8 16, i8 1, i8 23, i8 22, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 49, ptr @.str.60, ptr @a1sys_parents, i32 4, i32 80, i32 84, i32 88, i32 448, i8 24, i8 1, i8 31, i8 23, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 50, ptr @.str.61, ptr @conn_mcusys_parents, i32 4, i32 96, i32 100, i32 104, i32 448, i8 0, i8 1, i8 7, i8 24, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 51, ptr @.str.62, ptr @eip_b_parents, i32 4, i32 96, i32 100, i32 104, i32 448, i8 8, i8 1, i8 15, i8 25, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 52, ptr @.str.63, ptr @f_26m_adc_parents, i32 4, i32 96, i32 100, i32 104, i32 448, i8 16, i8 1, i8 23, i8 26, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 53, ptr @.str.64, ptr @f_26m_adc_parents, i32 4, i32 96, i32 100, i32 104, i32 448, i8 24, i8 1, i8 31, i8 27, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 54, ptr @.str.65, ptr @f_26m_adc_parents, i32 4, i32 112, i32 116, i32 120, i32 448, i8 0, i8 1, i8 7, i8 28, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 55, ptr @.str.66, ptr @aud_l_parents, i32 4, i32 112, i32 116, i32 120, i32 448, i8 8, i8 2, i8 15, i8 29, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 56, ptr @.str.67, ptr @a_tuner_parents, i32 4, i32 112, i32 116, i32 120, i32 448, i8 16, i8 2, i8 23, i8 30, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 57, ptr @.str.68, ptr @f_26m_adc_parents, i32 4, i32 112, i32 116, i32 120, i32 452, i8 24, i8 1, i8 31, i8 0, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 58, ptr @.str.69, ptr @u2u3_sys_parents, i32 4, i32 128, i32 132, i32 136, i32 452, i8 0, i8 1, i8 7, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 59, ptr @.str.70, ptr @u2u3_sys_parents, i32 4, i32 128, i32 132, i32 136, i32 452, i8 8, i8 1, i8 15, i8 2, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 60, ptr @.str.71, ptr @da_u2_refsel_parents, i32 4, i32 128, i32 132, i32 136, i32 452, i8 16, i8 1, i8 23, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 61, ptr @.str.72, ptr @da_u2_refsel_parents, i32 4, i32 128, i32 132, i32 136, i32 452, i8 24, i8 1, i8 31, i8 4, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 62, ptr @.str.73, ptr @sgm_reg_parents, i32 4, i32 144, i32 148, i32 152, i32 452, i8 0, i8 1, i8 7, i8 5, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }], align 4
@mt7986_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"top_xtal\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"clkxtal\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"top_jtag\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"top_xtal_d2\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"top_rtc_32k\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"top_rtc_32p7k\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"top_mpll_d2\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mpll\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"top_mpll_d4\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"top_mpll_d8\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"top_mpll_d8_d2\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"top_mpll_d3_d2\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"top_mmpll_d2\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"mmpll\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"top_mmpll_d4\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"top_mmpll_d8\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"top_mmpll_d8_d2\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"top_mmpll_d3_d8\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"top_mmpll_u2phy\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"top_apll2_d4\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"apll2\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"top_net1pll_d4\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"net1pll\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"top_net1pll_d5\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"top_net1pll_d5_d2\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"top_net1pll_d5_d4\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"top_net1pll_d8_d2\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"top_net1pll_d8_d4\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"top_net2pll_d4\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"net2pll\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"top_net2pll_d4_d2\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"top_net2pll_d3_d2\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"top_wedmcupll_d5_d2\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"wedmcupll\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"nfi1x_sel\00", align 1
@nfi1x_parents = internal constant [8 x ptr] [ptr @.str.3, ptr @.str.18, ptr @.str.29, ptr @.str.34, ptr @.str.11, ptr @.str.19, ptr @.str.35, ptr @.str.12], section ".init.rodata", align 4
@mtk_mux_gate_clr_set_upd_ops = external dso_local constant %struct.clk_ops, align 4
@.str.38 = private unnamed_addr constant [11 x i8] c"spinfi_sel\00", align 1
@spinfi_parents = internal constant [8 x ptr] [ptr @.str.6, ptr @.str.3, ptr @.str.28, ptr @.str.11, ptr @.str.19, ptr @.str.35, ptr @.str.20, ptr @.str.12], section ".init.rodata", align 4
@.str.39 = private unnamed_addr constant [8 x i8] c"spi_sel\00", align 1
@spi_parents = internal constant [8 x ptr] [ptr @.str.3, ptr @.str.9, ptr @.str.18, ptr @.str.29, ptr @.str.34, ptr @.str.28, ptr @.str.11, ptr @.str.35], section ".init.rodata", align 4
@.str.40 = private unnamed_addr constant [13 x i8] c"spim_mst_sel\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_parents = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.12, ptr @.str.13], section ".init.rodata", align 4
@.str.42 = private unnamed_addr constant [8 x i8] c"pwm_sel\00", align 1
@pwm_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.29, ptr @.str.28, ptr @.str.11], section ".init.rodata", align 4
@.str.43 = private unnamed_addr constant [8 x i8] c"i2c_sel\00", align 1
@i2c_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.28, ptr @.str.11, ptr @.str.30], section ".init.rodata", align 4
@.str.44 = private unnamed_addr constant [16 x i8] c"pextp_tl_ck_sel\00", align 1
@pextp_tl_ck_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.28, ptr @.str.33, ptr @.str.7], section ".init.rodata", align 4
@.str.45 = private unnamed_addr constant [14 x i8] c"emmc_250m_sel\00", align 1
@emmc_250m_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.27], section ".init.rodata", align 4
@.str.46 = private unnamed_addr constant [14 x i8] c"emmc_416m_sel\00", align 1
@emmc_416m_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.10], section ".init.rodata", align 4
@.str.47 = private unnamed_addr constant [14 x i8] c"f_26m_adc_sel\00", align 1
@f_26m_adc_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.13], section ".init.rodata", align 4
@.str.48 = private unnamed_addr constant [10 x i8] c"dramc_sel\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"dramc_md32_sel\00", align 1
@dramc_md32_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.9], section ".init.rodata", align 4
@.str.50 = private unnamed_addr constant [11 x i8] c"sysaxi_sel\00", align 1
@sysaxi_parents = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.29, ptr @.str.31], section ".init.rodata", align 4
@.str.51 = private unnamed_addr constant [11 x i8] c"sysapb_sel\00", align 1
@sysapb_parents = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.14, ptr @.str.33], section ".init.rodata", align 4
@.str.52 = private unnamed_addr constant [16 x i8] c"arm_db_main_sel\00", align 1
@arm_db_main_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.34], section ".init.rodata", align 4
@.str.53 = private unnamed_addr constant [13 x i8] c"arm_db_jtsel\00", align 1
@arm_db_jtsel_parents = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.3], section ".init.rodata", align 4
@.str.54 = private unnamed_addr constant [11 x i8] c"netsys_sel\00", align 1
@netsys_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.17], section ".init.rodata", align 4
@.str.55 = private unnamed_addr constant [16 x i8] c"netsys_500m_sel\00", align 1
@netsys_500m_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.26], section ".init.rodata", align 4
@.str.56 = private unnamed_addr constant [15 x i8] c"netsys_mcu_sel\00", align 1
@netsys_mcu_parents = internal constant [5 x ptr] [ptr @.str.3, ptr @.str.36, ptr @.str.15, ptr @.str.24, ptr @.str.26], section ".init.rodata", align 4
@.str.57 = private unnamed_addr constant [14 x i8] c"netsys_2x_sel\00", align 1
@netsys_2x_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.32, ptr @.str.36, ptr @.str.15], section ".init.rodata", align 4
@.str.58 = private unnamed_addr constant [13 x i8] c"sgm_325m_sel\00", align 1
@sgm_325m_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.74], section ".init.rodata", align 4
@.str.59 = private unnamed_addr constant [12 x i8] c"sgm_reg_sel\00", align 1
@sgm_reg_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.30], section ".init.rodata", align 4
@.str.60 = private unnamed_addr constant [10 x i8] c"a1sys_sel\00", align 1
@a1sys_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.22], section ".init.rodata", align 4
@.str.61 = private unnamed_addr constant [16 x i8] c"conn_mcusys_sel\00", align 1
@conn_mcusys_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.15], section ".init.rodata", align 4
@.str.62 = private unnamed_addr constant [10 x i8] c"eip_b_sel\00", align 1
@eip_b_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.32], section ".init.rodata", align 4
@.str.63 = private unnamed_addr constant [13 x i8] c"pcie_phy_sel\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"usb3_phy_sel\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"csw_f26m_sel\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"aud_l_sel\00", align 1
@aud_l_parents = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.23, ptr @.str.13], section ".init.rodata", align 4
@.str.67 = private unnamed_addr constant [12 x i8] c"a_tuner_sel\00", align 1
@a_tuner_parents = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.22, ptr @.str.13], section ".init.rodata", align 4
@.str.68 = private unnamed_addr constant [9 x i8] c"u2u3_sel\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"u2u3_sys_sel\00", align 1
@u2u3_sys_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.28], section ".init.rodata", align 4
@.str.70 = private unnamed_addr constant [14 x i8] c"u2u3_xhci_sel\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"da_u2_refsel\00", align 1
@da_u2_refsel_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.21], section ".init.rodata", align 4
@.str.72 = private unnamed_addr constant [16 x i8] c"da_u2_ck_1p_sel\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"ap2cnn_host_sel\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"sgmpll\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_mt7986_topckgen__162_342_clk_mt7986_topckgen_drv_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clk_mt7986_topckgen_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt7986_topckgen_drv, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mt7986_topckgen_probe(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_iomap(ptr noundef %3, i32 noundef 0) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.clk_mt7986_topckgen_probe) #5
  br label %77

8:                                                ; preds = %1
  %9 = tail call ptr @mtk_alloc_clk_data(i32 noundef 64) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %77, label %11

11:                                               ; preds = %8
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @top_fixed_clks, i32 noundef 2, ptr noundef nonnull %9) #4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 25, ptr noundef nonnull %9) #4
  %12 = tail call i32 @mtk_clk_register_muxes(ptr noundef nonnull @top_muxes, i32 noundef 37, ptr noundef %3, ptr noundef nonnull @mt7986_clk_lock, ptr noundef nonnull %9) #4
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr ptr, ptr %13, i32 39
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = tail call i32 @clk_enable(ptr noundef %15) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #4
  br label %22

22:                                               ; preds = %21, %18, %11
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr ptr, ptr %23, i32 40
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_prepare(ptr noundef %25) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = tail call i32 @clk_enable(ptr noundef %25) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %32

32:                                               ; preds = %31, %28, %22
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr ptr, ptr %33, i32 37
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @clk_prepare(ptr noundef %35) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = tail call i32 @clk_enable(ptr noundef %35) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @clk_unprepare(ptr noundef %35) #4
  br label %42

42:                                               ; preds = %41, %38, %32
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr ptr, ptr %43, i32 38
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @clk_prepare(ptr noundef %45) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = tail call i32 @clk_enable(ptr noundef %45) #4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @clk_unprepare(ptr noundef %45) #4
  br label %52

52:                                               ; preds = %51, %48, %42
  %53 = load ptr, ptr %9, align 4
  %54 = getelementptr ptr, ptr %53, i32 54
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @clk_prepare(ptr noundef %55) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = tail call i32 @clk_enable(ptr noundef %55) #4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @clk_unprepare(ptr noundef %55) #4
  br label %62

62:                                               ; preds = %61, %58, %52
  %63 = load ptr, ptr %9, align 4
  %64 = getelementptr ptr, ptr %63, i32 48
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @clk_prepare(ptr noundef %65) #4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = tail call i32 @clk_enable(ptr noundef %65) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @clk_unprepare(ptr noundef %65) #4
  br label %72

72:                                               ; preds = %71, %68, %62
  %73 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %9) #4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.clk_mt7986_topckgen_probe, i32 noundef %73) #5
  tail call void @mtk_free_clk_data(ptr noundef nonnull %9) #4
  br label %77

77:                                               ; preds = %75, %72, %8, %6
  %78 = phi i32 [ %73, %75 ], [ -12, %6 ], [ -12, %8 ], [ 0, %72 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_muxes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_free_clk_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

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
