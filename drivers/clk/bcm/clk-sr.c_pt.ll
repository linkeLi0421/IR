; ModuleID = '/llk/IR/drivers/clk/bcm/clk-sr.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-sr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iproc_pll_ctrl = type { i32, %struct.iproc_pll_aon_pwr_ctrl, %struct.iproc_asiu_gate, %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_sw_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_pll_vco_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op }
%struct.iproc_pll_aon_pwr_ctrl = type { i32, i32, i32, i32 }
%struct.iproc_asiu_gate = type { i32, i32 }
%struct.iproc_pll_reset_ctrl = type { i32, i32, i32 }
%struct.iproc_pll_dig_filter_ctrl = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iproc_pll_sw_ctrl = type { i32, i32 }
%struct.iproc_pll_vco_ctrl = type { i32, i32 }
%struct.iproc_clk_reg_op = type { i32, i32, i32 }
%struct.iproc_clk_ctrl = type { i32, i32, %struct.iproc_clk_enable_ctrl, %struct.iproc_clk_reg_op }
%struct.iproc_clk_enable_ctrl = type { i32, i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__of_table_sr_genpll3_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll3_clk_init }, section "__clk_of_table", align 4
@__initcall__kmod_clk_sr__166_421_sr_clk_driver_init6 = internal global ptr @sr_clk_driver_init, section ".initcall6.init", align 4
@sr_genpll3 = internal constant %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 19, i32 18 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@sr_genpll3_clk = internal constant [3 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }], align 4
@sr_clk_driver = internal global %struct.platform_driver { ptr @sr_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sr_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"sr-clk\00", align 1
@sr_clk_dt_ids = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll0_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll2_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll4_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-genpll5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_genpll5_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-lcpll0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_lcpll0_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-lcpll1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_lcpll1_clk_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-lcpll-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sr_lcpll_pcie_clk_init }, %struct.of_device_id zeroinitializer], align 4
@sr_genpll0 = internal constant %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 5, i32 1, i32 0 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@sr_genpll0_clk = internal constant [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 24, i32 20, i32 9 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 28, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 28, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 6, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 11, i32 5, i32 17 }, %struct.iproc_clk_reg_op { i32 28, i32 20, i32 9 } }], align 4
@sr_genpll2 = internal constant %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 13, i32 12 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@sr_genpll2_clk = internal constant [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 24, i32 20, i32 9 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 28, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 28, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 6, i32 0, %struct.iproc_clk_enable_ctrl { i32 4, i32 11, i32 5, i32 17 }, %struct.iproc_clk_reg_op { i32 28, i32 20, i32 9 } }], align 4
@sr_genpll4 = internal constant %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 25, i32 24 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@sr_genpll4_clk = internal constant [6 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 24, i32 20, i32 9 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 28, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 28, i32 10, i32 9 } }], align 4
@sr_genpll5 = internal constant %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 1, i32 0 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 12, i32 11 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 48, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@sr_genpll5_clk = internal constant [4 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 0, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 0, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 12 }, %struct.iproc_clk_reg_op { i32 24, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 0, %struct.iproc_clk_enable_ctrl { i32 4, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 24, i32 20, i32 9 } }], align 4
@sr_lcpll0 = internal constant %struct.iproc_pll_ctrl { i32 17, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 19, i32 18 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 31, i32 30 }, %struct.iproc_pll_dig_filter_ctrl zeroinitializer, %struct.iproc_pll_sw_ctrl { i32 4, i32 31 }, %struct.iproc_clk_reg_op { i32 4, i32 16, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 4, i32 26, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 56, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@sr_lcpll0_clk = internal constant [5 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 20, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 20, i32 20, i32 9 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 9 } }], align 4
@sr_lcpll1 = internal constant %struct.iproc_pll_ctrl { i32 17, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 22, i32 21 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 31, i32 30 }, %struct.iproc_pll_dig_filter_ctrl zeroinitializer, %struct.iproc_pll_sw_ctrl { i32 4, i32 31 }, %struct.iproc_clk_reg_op { i32 4, i32 16, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 4, i32 26, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 56, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@sr_lcpll1_clk = internal constant [4 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 9 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 20, i32 10, i32 9 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 20, i32 20, i32 9 } }], align 4
@sr_lcpll_pcie = internal constant %struct.iproc_pll_ctrl { i32 17, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 25, i32 24 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 31, i32 30 }, %struct.iproc_pll_dig_filter_ctrl zeroinitializer, %struct.iproc_pll_sw_ctrl { i32 4, i32 31 }, %struct.iproc_clk_reg_op { i32 4, i32 16, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 4, i32 26, i32 4 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 56, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@sr_lcpll_pcie_clk = internal constant [2 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 9 } }], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_sr__166_421_sr_clk_driver_init6, ptr @__of_table_sr_genpll3_clk], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sr_genpll3_clk_init(ptr noundef %0) #0 {
  tail call void @iproc_pll_clk_setup(ptr noundef %0, ptr noundef nonnull @sr_genpll3, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll3_clk, i32 noundef 3) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sr_clk_driver_init() #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sr_clk_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_pll_clk_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_clk_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #3
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -19, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_genpll0_clk_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %3, ptr noundef nonnull @sr_genpll0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll0_clk, i32 noundef 7) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_genpll2_clk_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %3, ptr noundef nonnull @sr_genpll2, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll2_clk, i32 noundef 7) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_genpll4_clk_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %3, ptr noundef nonnull @sr_genpll4, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll4_clk, i32 noundef 6) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_genpll5_clk_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %3, ptr noundef nonnull @sr_genpll5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_genpll5_clk, i32 noundef 4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_lcpll0_clk_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %3, ptr noundef nonnull @sr_lcpll0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_lcpll0_clk, i32 noundef 5) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_lcpll1_clk_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %3, ptr noundef nonnull @sr_lcpll1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_lcpll1_clk, i32 noundef 4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_lcpll_pcie_clk_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @iproc_pll_clk_setup(ptr noundef %3, ptr noundef nonnull @sr_lcpll_pcie, ptr noundef null, i32 noundef 0, ptr noundef nonnull @sr_lcpll_pcie_clk, i32 noundef 2) #3
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
