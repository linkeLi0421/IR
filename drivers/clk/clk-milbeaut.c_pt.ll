; ModuleID = '/llk/IR/drivers/clk/clk-milbeaut.c_pt.bc'
source_filename = "../drivers/clk/clk-milbeaut.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.m10v_clk_div_factors = type { ptr, ptr, i32, i8, i8, ptr, i32, i32 }
%struct.m10v_clk_div_fixed_data = type { ptr, ptr, i8, i8, i32 }
%struct.m10v_clk_mux_factors = type { ptr, ptr, i8, i32, i8, i8, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.m10v_clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }

@__initcall__kmod_clk_milbeaut__166_608_m10v_clk_driver_init6 = internal global ptr @m10v_clk_driver_init, section ".initcall6.init", align 4
@__of_table_m10v_cc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,milbeaut-m10v-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @m10v_cc_of_clk_init_driver }, section "__clk_of_table", align 4
@m10v_clk_driver = internal global %struct.platform_driver { ptr @m10v_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @m10v_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"m10v-ccu\00", align 1
@m10v_clk_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,milbeaut-m10v-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@m10v_div_factor_data = internal unnamed_addr constant [12 x %struct.m10v_clk_div_factors] [%struct.m10v_clk_div_factors { ptr @.str.2, ptr @.str.3, i32 0, i8 28, i8 3, ptr @emmcclk_table, i32 0, i32 0 }, %struct.m10v_clk_div_factors { ptr @.str.4, ptr @.str.5, i32 36, i8 7, i8 3, ptr @mclk400_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.6, ptr @.str.5, i32 36, i8 3, i8 4, ptr @mclk200_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.7, ptr @.str.5, i32 36, i8 0, i8 3, ptr @aclk400_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.8, ptr @.str.9, i32 44, i8 0, i8 2, ptr @aclk300_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.10, ptr @.str.5, i32 32, i8 20, i8 4, ptr @aclk_table, i32 0, i32 1 }, %struct.m10v_clk_div_factors { ptr @.str.11, ptr @.str.5, i32 32, i8 16, i8 4, ptr @aclkexs_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.12, ptr @.str.5, i32 32, i8 7, i8 5, ptr @hclk_table, i32 0, i32 2 }, %struct.m10v_clk_div_factors { ptr @.str.13, ptr @.str.5, i32 32, i8 12, i8 4, ptr @hclkbmh_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.14, ptr @.str.5, i32 32, i8 0, i8 7, ptr @pclk_table, i32 0, i32 3 }, %struct.m10v_clk_div_factors { ptr @.str.15, ptr @.str.16, i32 0, i8 3, i8 5, ptr @uhs1clk0_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.17, ptr @.str.18, i32 0, i8 18, i8 4, ptr @uhs2clk_table, i32 0, i32 -1 }], align 4
@m10v_clk_data = internal unnamed_addr global ptr null, align 4
@m10v_div_fixed_data = internal unnamed_addr constant [24 x %struct.m10v_clk_div_fixed_data] [%struct.m10v_clk_div_fixed_data { ptr @.str.19, ptr null, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.20, ptr null, i8 20, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.5, ptr @.str.21, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.9, ptr @.str.22, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.23, ptr @.str.24, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.18, ptr @.str.24, i8 3, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.25, ptr @.str.16, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.26, ptr @.str.16, i8 5, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.27, ptr @.str.9, i8 12, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.28, ptr @.str.5, i8 16, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.29, ptr @.str.30, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.31, ptr @.str.30, i8 4, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.32, ptr @.str.25, i8 8, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.33, ptr @.str.16, i8 4, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.34, ptr @.str.16, i8 8, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.35, ptr @.str.16, i8 16, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.36, ptr @.str.16, i8 8, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.37, ptr @.str.16, i8 16, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.38, ptr @.str.25, i8 8, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.39, ptr @.str.25, i8 10, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.40, ptr @.str.25, i8 13, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.41, ptr @.str.25, i8 16, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.42, ptr @.str.25, i8 40, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.43, ptr @.str.26, i8 10, i8 1, i32 -1 }], align 4
@m10v_mux_factor_data = internal unnamed_addr constant [4 x %struct.m10v_clk_mux_factors] [%struct.m10v_clk_mux_factors { ptr @.str.44, ptr @spi_mux_names, i8 3, i32 28, i8 3, i8 7, ptr @spi_mux_table, i32 0, i32 5 }, %struct.m10v_clk_mux_factors { ptr @.str.45, ptr @uhs1clk2_mux_names, i8 4, i32 0, i8 13, i8 31, ptr @uhs1clk2_mux_table, i32 0, i32 7 }, %struct.m10v_clk_mux_factors { ptr @.str.46, ptr @uhs1clk1_mux_names, i8 3, i32 0, i8 8, i8 31, ptr @uhs1clk1_mux_table, i32 0, i32 -1 }, %struct.m10v_clk_mux_factors { ptr @.str.47, ptr @nfclk_mux_names, i8 6, i32 0, i8 22, i8 127, ptr @nfclk_mux_table, i32 0, i32 6 }], align 4
@m10v_crglock = internal global %struct.spinlock zeroinitializer, align 4
@m10v_clk_divider_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m10v_clk_divider_recalc_rate, ptr @m10v_clk_divider_round_rate, ptr null, ptr null, ptr null, ptr @m10v_clk_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"\013%s:%s couldn't stabilize\0A\00", align 1
@__func__.m10v_clk_divider_set_rate = private unnamed_addr constant [26 x i8] c"m10v_clk_divider_set_rate\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"emmc\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pll11\00", align 1
@emmcclk_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 8 }, %struct.clk_div_table { i32 1, i32 9 }, %struct.clk_div_table { i32 2, i32 10 }, %struct.clk_div_table { i32 3, i32 15 }, %struct.clk_div_table zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"mclk400\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pll1-2\00", align 1
@mclk400_table = internal constant [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"mclk200\00", align 1
@mclk200_table = internal constant [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"aclk400\00", align 1
@aclk400_table = internal constant [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"aclk300\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"pll2-2\00", align 1
@aclk300_table = internal constant [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@aclk_table = internal constant [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"aclkexs\00", align 1
@aclkexs_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@hclk_table = internal constant [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"hclkbmh\00", align 1
@hclkbmh_table = internal constant [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@pclk_table = internal constant [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table { i32 31, i32 32 }, %struct.clk_div_table zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"uhs1clk0\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pll7\00", align 1
@uhs1clk0_table = internal constant [6 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"uhs2clk\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pll6-3\00", align 1
@uhs2clk_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 9 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 11 }, %struct.clk_div_table { i32 3, i32 12 }, %struct.clk_div_table { i32 4, i32 13 }, %struct.clk_div_table { i32 5, i32 14 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"pcisuppclk\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"pll6-2\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"pll6\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"pll7-2\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"pll7-5\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"ca7wd\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"pclkca7wd\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"spi-parent0\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"pll10-2\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"spi-parent1\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"spi-parent2\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"uhs1clk2-parent0\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"uhs1clk2-parent1\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"uhs1clk2-parent2\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"uhs1clk1-parent0\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"uhs1clk1-parent1\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"nfclk-parent0\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"nfclk-parent1\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"nfclk-parent2\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"nfclk-parent3\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"nfclk-parent4\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"nfclk-parent5\00", align 1
@m10v_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @m10v_mux_set_parent, ptr @m10v_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.44 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@spi_mux_names = internal constant [3 x ptr] [ptr @.str.29, ptr @.str.31, ptr @.str.32], align 4
@spi_mux_table = internal global [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"uhs1clk2\00", align 1
@uhs1clk2_mux_names = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.23], align 4
@uhs1clk2_mux_table = internal global [4 x i32] [i32 2, i32 3, i32 4, i32 8], align 4
@.str.46 = private unnamed_addr constant [9 x i8] c"uhs1clk1\00", align 1
@uhs1clk1_mux_names = internal constant [3 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.23], align 4
@uhs1clk1_mux_table = internal global [3 x i32] [i32 3, i32 4, i32 8], align 4
@.str.47 = private unnamed_addr constant [6 x i8] c"nfclk\00", align 1
@nfclk_mux_names = internal constant [6 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4
@nfclk_mux_table = internal global [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 8], align 4
@m10v_pll_fixed_data = internal unnamed_addr constant [8 x %struct.m10v_clk_div_fixed_data] [%struct.m10v_clk_div_fixed_data { ptr @.str.21, ptr null, i8 1, i8 40, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.22, ptr null, i8 1, i8 30, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.24, ptr null, i8 1, i8 35, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.16, ptr null, i8 1, i8 40, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.49, ptr null, i8 1, i8 33, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.50, ptr null, i8 5, i8 108, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.30, ptr @.str.50, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.3, ptr null, i8 2, i8 75, i32 -1 }], align 4
@.str.48 = private unnamed_addr constant [5 x i8] c"rclk\00", align 1
@rclk_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 8 }, %struct.clk_div_table { i32 1, i32 16 }, %struct.clk_div_table { i32 2, i32 24 }, %struct.clk_div_table { i32 3, i32 32 }, %struct.clk_div_table zeroinitializer], align 4
@.str.49 = private unnamed_addr constant [5 x i8] c"pll9\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"pll10\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_milbeaut__166_608_m10v_clk_driver_init6, ptr @__of_table_m10v_cc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @m10v_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @m10v_clk_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @m10v_cc_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #8
  tail call fastcc void @m10v_cc_init(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m10v_clk_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.clk_init_data, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %9 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %8) #8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = ptrtoint ptr %9 to i32
  br label %178

13:                                               ; preds = %1
  %14 = tail call ptr @of_clk_get_parent_name(ptr noundef %7, i32 noundef 0) #8
  %15 = getelementptr inbounds i8, ptr %4, i32 12
  %16 = getelementptr i8, ptr %9, i32 40
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  br label %21

21:                                               ; preds = %68, %13
  %22 = phi i32 [ 0, %13 ], [ %69, %68 ]
  %23 = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %22
  %24 = load ptr, ptr @m10v_clk_data, align 4
  %25 = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %22, i32 2
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %28 [
    i32 32, label %27
    i32 36, label %27
  ]

27:                                               ; preds = %21, %21
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi ptr [ %16, %27 ], [ null, %21 ]
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %22, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %22, i32 3
  %34 = load i8, ptr %33, align 4
  %35 = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %22, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %22, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %22, i32 5
  %40 = load ptr, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr %32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %15, i8 0, i32 12, i1 false) #8, !annotation !8
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %42 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 32) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %28
  %45 = trunc i32 %38 to i8
  %46 = getelementptr i8, ptr %9, i32 %26
  store ptr %30, ptr %4, align 4
  store ptr @m10v_clk_divider_ops, ptr %17, align 4
  store i32 4, ptr %18, align 4
  store ptr %3, ptr %19, align 4
  store i8 1, ptr %20, align 4
  %47 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 2
  store i8 %34, ptr %48, align 8
  %49 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 3
  store i8 %36, ptr %49, align 1
  %50 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 4
  store i8 %45, ptr %50, align 2
  %51 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 6
  store ptr @m10v_crglock, ptr %51, align 8
  %52 = getelementptr inbounds %struct.clk_hw, ptr %42, i32 0, i32 2
  store ptr %4, ptr %52, align 8
  %53 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 5
  store ptr %40, ptr %53, align 4
  %54 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 7
  store ptr %29, ptr %54, align 4
  %55 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %42) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %44
  call void @kfree(ptr noundef nonnull %42) #8
  %58 = inttoptr i32 %55 to ptr
  br label %59

59:                                               ; preds = %57, %44, %28
  %60 = phi ptr [ %58, %57 ], [ %42, %44 ], [ inttoptr (i32 -12 to ptr), %28 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %61 = lshr i32 673, %22
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %22, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.clk_hw_onecell_data, ptr %24, i32 0, i32 1, i32 %66
  store ptr %60, ptr %67, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = add nuw nsw i32 %22, 1
  %70 = icmp eq i32 %69, 12
  br i1 %70, label %77, label %21

71:                                               ; preds = %77
  %72 = getelementptr inbounds i8, ptr %2, i32 12
  %73 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %74 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %75 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %76 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  br label %100

77:                                               ; preds = %77, %68
  %78 = phi i32 [ %93, %77 ], [ 0, %68 ]
  %79 = getelementptr [24 x %struct.m10v_clk_div_fixed_data], ptr @m10v_div_fixed_data, i32 0, i32 %78
  %80 = getelementptr [24 x %struct.m10v_clk_div_fixed_data], ptr @m10v_div_fixed_data, i32 0, i32 %78, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = and i32 %78, 268435454
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, ptr %14, ptr %81
  %85 = load ptr, ptr %79, align 4
  %86 = getelementptr [24 x %struct.m10v_clk_div_fixed_data], ptr @m10v_div_fixed_data, i32 0, i32 %78, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr [24 x %struct.m10v_clk_div_fixed_data], ptr @m10v_div_fixed_data, i32 0, i32 %78, i32 2
  %90 = load i8, ptr %89, align 4
  %91 = zext i8 %90 to i32
  %92 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %85, ptr noundef %84, i32 noundef 0, i32 noundef %88, i32 noundef %91) #8
  %93 = add nuw nsw i32 %78, 1
  %94 = icmp eq i32 %93, 24
  br i1 %94, label %71, label %77

95:                                               ; preds = %144
  %96 = load ptr, ptr @m10v_clk_data, align 4
  %97 = getelementptr %struct.clk_hw_onecell_data, ptr %96, i32 0, i32 1, i32 0
  %98 = load ptr, ptr %97, align 4
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %175, label %147

100:                                              ; preds = %144, %71
  %101 = phi i32 [ 0, %71 ], [ %145, %144 ]
  %102 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %101
  %103 = load ptr, ptr @m10v_clk_data, align 4
  %104 = load ptr, ptr %102, align 4
  %105 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %101, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %101, i32 2
  %108 = load i8, ptr %107, align 4
  %109 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %101, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %101, i32 4
  %112 = load i8, ptr %111, align 4
  %113 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %101, i32 5
  %114 = load i8, ptr %113, align 1
  %115 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %101, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %101, i32 6
  %118 = load ptr, ptr %117, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %72, i8 0, i32 12, i1 false) #8, !annotation !8
  %119 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %120 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %119, i32 noundef 3520, i32 noundef 32) #10
  %121 = icmp eq ptr %120, null
  br i1 %121, label %137, label %122

122:                                              ; preds = %100
  %123 = trunc i32 %116 to i8
  %124 = zext i8 %114 to i32
  %125 = getelementptr i8, ptr %9, i32 %110
  store ptr %104, ptr %2, align 4
  store ptr @m10v_mux_ops, ptr %73, align 4
  store i32 4, ptr %74, align 4
  store ptr %106, ptr %75, align 4
  store i8 %108, ptr %76, align 4
  %126 = getelementptr inbounds %struct.clk_mux, ptr %120, i32 0, i32 1
  store ptr %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.clk_mux, ptr %120, i32 0, i32 4
  store i8 %112, ptr %127, align 8
  %128 = getelementptr inbounds %struct.clk_mux, ptr %120, i32 0, i32 3
  store i32 %124, ptr %128, align 4
  %129 = getelementptr inbounds %struct.clk_mux, ptr %120, i32 0, i32 5
  store i8 %123, ptr %129, align 1
  %130 = getelementptr inbounds %struct.clk_mux, ptr %120, i32 0, i32 6
  store ptr @m10v_crglock, ptr %130, align 4
  %131 = getelementptr inbounds %struct.clk_mux, ptr %120, i32 0, i32 2
  store ptr %118, ptr %131, align 8
  %132 = getelementptr inbounds %struct.clk_hw, ptr %120, i32 0, i32 2
  store ptr %2, ptr %132, align 8
  %133 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %120) #8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %122
  call void @kfree(ptr noundef nonnull %120) #8
  %136 = inttoptr i32 %133 to ptr
  br label %137

137:                                              ; preds = %135, %122, %100
  %138 = phi ptr [ %136, %135 ], [ %120, %122 ], [ inttoptr (i32 -12 to ptr), %100 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #8
  %139 = icmp eq i32 %101, 2
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %101, i32 8
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr %struct.clk_hw_onecell_data, ptr %103, i32 0, i32 1, i32 %142
  store ptr %138, ptr %143, align 4
  br label %144

144:                                              ; preds = %140, %137
  %145 = add nuw nsw i32 %101, 1
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %95, label %100

147:                                              ; preds = %95
  %148 = getelementptr %struct.clk_hw_onecell_data, ptr %96, i32 0, i32 1, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %175, label %151

151:                                              ; preds = %147
  %152 = getelementptr %struct.clk_hw_onecell_data, ptr %96, i32 0, i32 1, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = icmp ugt ptr %153, inttoptr (i32 -4096 to ptr)
  br i1 %154, label %175, label %155

155:                                              ; preds = %151
  %156 = getelementptr %struct.clk_hw_onecell_data, ptr %96, i32 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 4
  %158 = icmp ugt ptr %157, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %175, label %159

159:                                              ; preds = %155
  %160 = getelementptr %struct.clk_hw_onecell_data, ptr %96, i32 0, i32 1, i32 4
  %161 = load ptr, ptr %160, align 4
  %162 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %175, label %163

163:                                              ; preds = %159
  %164 = getelementptr %struct.clk_hw_onecell_data, ptr %96, i32 0, i32 1, i32 5
  %165 = load ptr, ptr %164, align 4
  %166 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = getelementptr %struct.clk_hw_onecell_data, ptr %96, i32 0, i32 1, i32 6
  %169 = load ptr, ptr %168, align 4
  %170 = icmp ugt ptr %169, inttoptr (i32 -4096 to ptr)
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = getelementptr %struct.clk_hw_onecell_data, ptr %96, i32 0, i32 1, i32 7
  %173 = load ptr, ptr %172, align 4
  %174 = icmp ugt ptr %173, inttoptr (i32 -4096 to ptr)
  br i1 %174, label %175, label %178

175:                                              ; preds = %171, %167, %163, %159, %155, %151, %147, %95
  %176 = phi ptr [ %98, %95 ], [ %149, %147 ], [ %153, %151 ], [ %157, %155 ], [ %161, %159 ], [ %165, %163 ], [ %169, %167 ], [ %173, %171 ]
  %177 = ptrtoint ptr %176 to i32
  br label %178

178:                                              ; preds = %175, %171, %11
  %179 = phi i32 [ %12, %11 ], [ %177, %175 ], [ 0, %171 ]
  ret i32 %179
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m10v_clk_divider_recalc_rate(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %6 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %5, %8
  %10 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %9, %14
  %16 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = tail call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %15, ptr noundef %17, i32 noundef %20, i32 noundef %12) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m10v_clk_divider_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %13 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = lshr i32 %12, %15
  %17 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nsw i32 -1, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %16, %21
  %23 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %4, align 2
  %26 = zext i8 %25 to i32
  %27 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #8
  %28 = tail call i32 @divider_ro_round_rate_parent(ptr noundef %0, ptr noundef %27, i32 noundef %1, ptr noundef %2, ptr noundef %24, i8 noundef zeroext %18, i32 noundef %26, i32 noundef %22) #8
  br label %36

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #8
  %35 = tail call i32 @divider_round_rate_parent(ptr noundef %0, ptr noundef %34, i32 noundef %1, ptr noundef %2, ptr noundef %31, i8 noundef zeroext %33, i32 noundef %6) #8
  br label %36

36:                                               ; preds = %29, %9
  %37 = phi i32 [ %28, %9 ], [ %35, %29 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m10v_clk_divider_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @divider_get_val(i32 noundef %1, i32 noundef %2, ptr noundef %10, i8 noundef zeroext %5, i32 noundef %13) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %69, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %18) #8
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ 0, %16 ]
  %24 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %27 = load i8, ptr %4, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = shl i32 %30, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %26, %35
  %37 = or i32 %14, %8
  %38 = shl i32 %37, %33
  %39 = or i32 %36, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %40 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #8, !srcloc !14
  %41 = getelementptr inbounds %struct.m10v_clk_divider, ptr %0, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %65, label %44

44:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %45 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 1) #8, !srcloc !14
  %46 = tail call i64 @ktime_get() #8
  %47 = add i64 %46, 250000
  %48 = load ptr, ptr %41, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %58, %44
  %52 = tail call i64 @ktime_get() #8
  %53 = icmp sgt i64 %52, %47
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load ptr, ptr %41, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %62

58:                                               ; preds = %51
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %59 = load ptr, ptr %41, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %51

62:                                               ; preds = %54
  %63 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m10v_clk_divider_set_rate, ptr noundef %63) #11
  br label %65

65:                                               ; preds = %62, %58, %54, %44, %22
  %66 = load ptr, ptr %17, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %66, i32 noundef %23) #8
  br label %69

69:                                               ; preds = %68, %65, %3
  %70 = phi i32 [ %14, %3 ], [ 0, %65 ], [ 0, %68 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_ro_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m10v_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = tail call i32 @clk_mux_index_to_val(ptr noundef %4, i32 noundef %7, i8 noundef zeroext %1) #8
  %9 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #8, !range !18
  %12 = lshr i32 -2147483648, %11
  %13 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %14) #8
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %20 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %23 = load i32, ptr %9, align 4
  %24 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = shl i32 %23, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %22, %28
  %30 = or i32 %12, %8
  %31 = shl i32 %30, %26
  %32 = or i32 %29, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %33 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #8, !srcloc !14
  %34 = load ptr, ptr %13, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %34, i32 noundef %19) #8
  br label %37

37:                                               ; preds = %36, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @m10v_mux_get_parent(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %5 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = lshr i32 %4, %7
  %9 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, %10
  %12 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call i32 @clk_mux_val_to_index(ptr noundef %0, ptr noundef %13, i32 noundef %16, i32 noundef %11) #8
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @m10v_cc_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.clk_init_data, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #10
  store ptr %5, ptr @m10v_clk_data, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %66, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load ptr, ptr @m10v_clk_data, align 4
  tail call void @kfree(ptr noundef %11) #8
  br label %66

12:                                               ; preds = %7
  %13 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %14 = icmp eq ptr %13, null
  %15 = load ptr, ptr @m10v_clk_data, align 4
  br i1 %14, label %16, label %17

16:                                               ; preds = %12
  tail call void @kfree(ptr noundef %15) #8
  tail call void @iounmap(ptr noundef nonnull %8) #8
  br label %66

17:                                               ; preds = %17, %12
  %18 = phi i32 [ %20, %17 ], [ 0, %12 ]
  %19 = getelementptr %struct.clk_hw_onecell_data, ptr %15, i32 0, i32 1, i32 %18
  store ptr inttoptr (i32 -517 to ptr), ptr %19, align 4
  %20 = add nuw nsw i32 %18, 1
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %17

22:                                               ; preds = %22, %17
  %23 = phi i32 [ %37, %22 ], [ 0, %17 ]
  %24 = getelementptr [8 x %struct.m10v_clk_div_fixed_data], ptr @m10v_pll_fixed_data, i32 0, i32 %23
  %25 = getelementptr [8 x %struct.m10v_clk_div_fixed_data], ptr @m10v_pll_fixed_data, i32 0, i32 %23, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq i32 %23, 6
  %28 = select i1 %27, ptr %26, ptr %13
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr [8 x %struct.m10v_clk_div_fixed_data], ptr @m10v_pll_fixed_data, i32 0, i32 %23, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr [8 x %struct.m10v_clk_div_fixed_data], ptr @m10v_pll_fixed_data, i32 0, i32 %23, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %29, ptr noundef %28, i32 noundef 0, i32 noundef %32, i32 noundef %35) #8
  %37 = add nuw nsw i32 %23, 1
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %22

39:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store ptr @.str.30, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  %40 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %40, i8 0, i32 12, i1 false) #8, !annotation !8
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 32) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %61, label %44

44:                                               ; preds = %39
  store ptr @.str.48, ptr %3, align 4
  %45 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @m10v_clk_divider_ops, ptr %45, align 4
  %46 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 1
  store ptr %8, ptr %49, align 4
  %50 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 2
  store i8 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 3
  store i8 3, ptr %51, align 1
  %52 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 4
  store i8 0, ptr %52, align 2
  %53 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 6
  store ptr @m10v_crglock, ptr %53, align 8
  %54 = getelementptr inbounds %struct.clk_hw, ptr %42, i32 0, i32 2
  store ptr %3, ptr %54, align 8
  %55 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 5
  store ptr @rclk_table, ptr %55, align 4
  %56 = getelementptr inbounds %struct.m10v_clk_divider, ptr %42, i32 0, i32 7
  store ptr null, ptr %56, align 4
  %57 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %42) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %44
  call void @kfree(ptr noundef nonnull %42) #8
  %60 = inttoptr i32 %57 to ptr
  br label %61

61:                                               ; preds = %59, %44, %39
  %62 = phi ptr [ %60, %59 ], [ %42, %44 ], [ inttoptr (i32 -12 to ptr), %39 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %63 = load ptr, ptr @m10v_clk_data, align 4
  %64 = getelementptr %struct.clk_hw_onecell_data, ptr %63, i32 5
  store ptr %62, ptr %64, align 4
  store i32 8, ptr %63, align 4
  %65 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %63) #8
  br label %66

66:                                               ; preds = %61, %16, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i64 2858131}
!10 = !{i64 2151501597}
!11 = !{i64 2151503257}
!12 = !{i64 2151505293}
!13 = !{i64 2151505509}
!14 = !{i64 2857713}
!15 = !{i64 2151505825}
!16 = !{i64 2151507310}
!17 = !{i64 2151507665}
!18 = !{i32 0, i32 33}
!19 = !{i64 2151499567}
!20 = !{i64 2151499743}
!21 = !{i64 2151497677}
