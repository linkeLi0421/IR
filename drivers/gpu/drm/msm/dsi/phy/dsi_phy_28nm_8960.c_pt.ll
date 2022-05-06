; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_phy_cfg = type { %struct.dsi_reg_config, %struct.msm_dsi_phy_ops, i32, i32, [2 x i32], i32, i32, i8, i8 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.dsi_pll_28nm = type { %struct.clk_hw, ptr, %struct.pll_28nm_cached_state }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_28nm_cached_state = type { i32, i8, i8, i8 }
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_bytediv = type { %struct.clk_hw, ptr }

@dsi_phy_28nm_8960_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_28nm_8960_init, ptr @dsi_28nm_phy_enable, ptr @dsi_28nm_phy_disable, ptr @dsi_28nm_pll_save_state, ptr @dsi_28nm_pll_restore_state, ptr null }, i32 600000000, i32 1200000000, [2 x i32] [i32 74449664, i32 92275456], i32 2, i32 0, i8 1, i8 0 }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", align 1
@clk_ops_dsi_pll_28nm_vco = internal constant %struct.clk_ops { ptr @dsi_pll_28nm_vco_prepare, ptr @dsi_pll_28nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_is_enabled, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_recalc_rate, ptr @dsi_pll_28nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pxo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"dsi%dvco_clk\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dsi%dpllbyte\00", align 1
@clk_bytediv_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_bytediv_recalc_rate, ptr @clk_bytediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_bytediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"dsi%dpll\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"id=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"*ERROR* DSI PLL lock failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"DSI PLL lock success\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"DSI PLL is %slocked\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"*not* \00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"returning vco rate = %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"rate=%lu, parent's=%lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", align 1
@__func__.dsi_28nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_28nm_phy_enable\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_8960_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca [1 x ptr], align 4
  %5 = alloca %struct.clk_init_data, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %87, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 24, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %87, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %10, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %15, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %3, i32 20
  store i32 1, ptr %18, align 4
  store ptr @clk_ops_dsi_pll_28nm_vco, ptr %17, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr @.str.2, ptr %4, align 4
  store ptr %4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 3
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 4
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 8, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #7
  %25 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %26) #7
  %27 = call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef 16, i32 noundef 3520) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %81, label %29

29:                                               ; preds = %12
  %30 = call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef 32, i32 noundef 3520) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %81, label %32

32:                                               ; preds = %29
  %33 = call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef 32, i32 noundef 3520) #7
  store ptr %33, ptr %2, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %81, label %35

35:                                               ; preds = %32
  %36 = call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef 32, i32 noundef 3520) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %81, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %25, align 4
  %40 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %30, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %39) #7
  store ptr %30, ptr %3, align 4
  %41 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %3, ptr %41, align 4
  %42 = call i32 @devm_clk_hw_register(ptr noundef %24, ptr noundef nonnull %10) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.clk_hw, ptr %27, i32 0, i32 2
  store ptr %5, ptr %45, align 4
  %46 = load ptr, ptr %13, align 4
  %47 = getelementptr inbounds %struct.msm_dsi_phy, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 36
  %50 = getelementptr inbounds %struct.clk_bytediv, ptr %27, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.msm_dsi_phy, ptr %46, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  %53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %33, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %52) #7
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr inbounds %struct.msm_dsi_phy, ptr %54, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  %58 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %36, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %57) #7
  store ptr %36, ptr %5, align 4
  %59 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @clk_bytediv_ops, ptr %59, align 4
  %60 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 4, ptr %60, align 4
  %61 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %2, ptr %61, align 4
  %62 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %62, align 4
  %63 = call i32 @devm_clk_hw_register(ptr noundef %24, ptr noundef nonnull %27) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %44
  store ptr %27, ptr %16, align 4
  %66 = load ptr, ptr %13, align 4
  %67 = getelementptr inbounds %struct.msm_dsi_phy, ptr %66, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  %70 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %36, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %69) #7
  %71 = load ptr, ptr %2, align 4
  %72 = load ptr, ptr %13, align 4
  %73 = getelementptr inbounds %struct.msm_dsi_phy, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 40
  %76 = call ptr @__devm_clk_hw_register_divider(ptr noundef %24, ptr noundef null, ptr noundef nonnull %36, ptr noundef %71, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %75, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %83, label %78

78:                                               ; preds = %65
  %79 = getelementptr %struct.clk_hw_onecell_data, ptr %15, i32 2
  store ptr %76, ptr %79, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %80 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  store ptr %10, ptr %80, align 4
  br label %87

81:                                               ; preds = %44, %38, %35, %32, %29, %12
  %82 = phi i32 [ %63, %44 ], [ %42, %38 ], [ -12, %35 ], [ -12, %32 ], [ -12, %29 ], [ -12, %12 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %85

83:                                               ; preds = %65
  %84 = ptrtoint ptr %76 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %86) #7
  br label %87

87:                                               ; preds = %85, %78, %8, %1
  %88 = phi i32 [ %86, %85 ], [ 0, %78 ], [ -19, %1 ], [ -12, %8 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_28nm_phy_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #7
  %6 = tail call i32 @msm_dsi_dphy_timing_calc(ptr noundef %3, ptr noundef %1) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dsi_28nm_phy_enable) #7
  br label %130

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %13) #7
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void @msm_writel(i32 noundef 1, ptr noundef %14) #7
  %15 = getelementptr i8, ptr %13, i32 8
  tail call void @msm_writel(i32 noundef 1, ptr noundef %15) #7
  %16 = getelementptr i8, ptr %13, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %16) #7
  %17 = getelementptr i8, ptr %13, i32 16
  tail call void @msm_writel(i32 noundef 256, ptr noundef %17) #7
  %18 = getelementptr i8, ptr %5, i32 432
  tail call void @msm_writel(i32 noundef 4, ptr noundef %18) #7
  %19 = getelementptr i8, ptr %5, i32 384
  tail call void @msm_writel(i32 noundef 255, ptr noundef %19) #7
  %20 = getelementptr i8, ptr %5, i32 388
  tail call void @msm_writel(i32 noundef 0, ptr noundef %20) #7
  %21 = getelementptr i8, ptr %5, i32 392
  tail call void @msm_writel(i32 noundef 6, ptr noundef %21) #7
  %22 = getelementptr i8, ptr %5, i32 368
  tail call void @msm_writel(i32 noundef 95, ptr noundef %22) #7
  %23 = getelementptr i8, ptr %5, i32 372
  tail call void @msm_writel(i32 noundef 0, ptr noundef %23) #7
  %24 = getelementptr i8, ptr %5, i32 376
  tail call void @msm_writel(i32 noundef 0, ptr noundef %24) #7
  %25 = getelementptr i8, ptr %5, i32 380
  tail call void @msm_writel(i32 noundef 16, ptr noundef %25) #7
  %26 = load ptr, ptr %12, align 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %26) #7
  %27 = getelementptr i8, ptr %26, i32 4
  tail call void @msm_writel(i32 noundef 10, ptr noundef %27) #7
  %28 = getelementptr i8, ptr %26, i32 8
  tail call void @msm_writel(i32 noundef 4, ptr noundef %28) #7
  %29 = getelementptr i8, ptr %26, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %29) #7
  %30 = getelementptr i8, ptr %26, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %30) #7
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr i8, ptr %31, i32 24
  tail call void @msm_writel(i32 noundef 3, ptr noundef %32) #7
  %33 = getelementptr i8, ptr %31, i32 52
  tail call void @msm_writel(i32 noundef 0, ptr noundef %33) #7
  %34 = getelementptr i8, ptr %31, i32 60
  tail call void @msm_writel(i32 noundef 90, ptr noundef %34) #7
  %35 = getelementptr i8, ptr %31, i32 68
  tail call void @msm_writel(i32 noundef 16, ptr noundef %35) #7
  %36 = getelementptr i8, ptr %31, i32 72
  tail call void @msm_writel(i32 noundef 1, ptr noundef %36) #7
  %37 = getelementptr i8, ptr %31, i32 56
  tail call void @msm_writel(i32 noundef 1, ptr noundef %37) #7
  %38 = getelementptr i8, ptr %31, i32 40
  tail call void @msm_writel(i32 noundef 1, ptr noundef %38) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %38) #7
  %39 = getelementptr i8, ptr %31, i32 80
  br label %40

40:                                               ; preds = %45, %11
  %41 = phi i32 [ 5000, %11 ], [ %47, %45 ]
  %42 = tail call i32 @msm_readl(ptr noundef %39) #7
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #7
  %47 = add nsw i32 %41, -1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %40

49:                                               ; preds = %45, %40
  %50 = load ptr, ptr %4, align 4
  tail call void @msm_writel(i32 noundef 128, ptr noundef %50) #7
  %51 = getelementptr i8, ptr %50, i32 4
  tail call void @msm_writel(i32 noundef 69, ptr noundef %51) #7
  %52 = getelementptr i8, ptr %50, i32 8
  tail call void @msm_writel(i32 noundef 0, ptr noundef %52) #7
  %53 = getelementptr i8, ptr %50, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %53) #7
  %54 = getelementptr i8, ptr %50, i32 20
  tail call void @msm_writel(i32 noundef 1, ptr noundef %54) #7
  %55 = getelementptr i8, ptr %50, i32 24
  tail call void @msm_writel(i32 noundef 102, ptr noundef %55) #7
  %56 = getelementptr i8, ptr %50, i32 64
  tail call void @msm_writel(i32 noundef 128, ptr noundef %56) #7
  %57 = getelementptr i8, ptr %50, i32 68
  tail call void @msm_writel(i32 noundef 69, ptr noundef %57) #7
  %58 = getelementptr i8, ptr %50, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %58) #7
  %59 = getelementptr i8, ptr %50, i32 76
  tail call void @msm_writel(i32 noundef 0, ptr noundef %59) #7
  %60 = getelementptr i8, ptr %50, i32 84
  tail call void @msm_writel(i32 noundef 1, ptr noundef %60) #7
  %61 = getelementptr i8, ptr %50, i32 88
  tail call void @msm_writel(i32 noundef 102, ptr noundef %61) #7
  %62 = getelementptr i8, ptr %50, i32 128
  tail call void @msm_writel(i32 noundef 128, ptr noundef %62) #7
  %63 = getelementptr i8, ptr %50, i32 132
  tail call void @msm_writel(i32 noundef 69, ptr noundef %63) #7
  %64 = getelementptr i8, ptr %50, i32 136
  tail call void @msm_writel(i32 noundef 0, ptr noundef %64) #7
  %65 = getelementptr i8, ptr %50, i32 140
  tail call void @msm_writel(i32 noundef 0, ptr noundef %65) #7
  %66 = getelementptr i8, ptr %50, i32 148
  tail call void @msm_writel(i32 noundef 1, ptr noundef %66) #7
  %67 = getelementptr i8, ptr %50, i32 152
  tail call void @msm_writel(i32 noundef 102, ptr noundef %67) #7
  %68 = getelementptr i8, ptr %50, i32 192
  tail call void @msm_writel(i32 noundef 128, ptr noundef %68) #7
  %69 = getelementptr i8, ptr %50, i32 196
  tail call void @msm_writel(i32 noundef 69, ptr noundef %69) #7
  %70 = getelementptr i8, ptr %50, i32 200
  tail call void @msm_writel(i32 noundef 0, ptr noundef %70) #7
  %71 = getelementptr i8, ptr %50, i32 204
  tail call void @msm_writel(i32 noundef 0, ptr noundef %71) #7
  %72 = getelementptr i8, ptr %50, i32 212
  tail call void @msm_writel(i32 noundef 1, ptr noundef %72) #7
  %73 = getelementptr i8, ptr %50, i32 216
  tail call void @msm_writel(i32 noundef 102, ptr noundef %73) #7
  %74 = getelementptr i8, ptr %50, i32 256
  tail call void @msm_writel(i32 noundef 64, ptr noundef %74) #7
  %75 = getelementptr i8, ptr %50, i32 260
  tail call void @msm_writel(i32 noundef 103, ptr noundef %75) #7
  %76 = getelementptr i8, ptr %50, i32 264
  tail call void @msm_writel(i32 noundef 0, ptr noundef %76) #7
  %77 = getelementptr i8, ptr %50, i32 268
  tail call void @msm_writel(i32 noundef 0, ptr noundef %77) #7
  %78 = getelementptr i8, ptr %50, i32 276
  tail call void @msm_writel(i32 noundef 1, ptr noundef %78) #7
  %79 = getelementptr i8, ptr %50, i32 280
  tail call void @msm_writel(i32 noundef 136, ptr noundef %79) #7
  %80 = getelementptr i8, ptr %5, i32 412
  tail call void @msm_writel(i32 noundef 15, ptr noundef %80) #7
  %81 = getelementptr i8, ptr %5, i32 400
  tail call void @msm_writel(i32 noundef 3, ptr noundef %81) #7
  %82 = getelementptr i8, ptr %5, i32 396
  tail call void @msm_writel(i32 noundef 3, ptr noundef %82) #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %80) #7
  %83 = load ptr, ptr %4, align 4
  %84 = load i32, ptr %3, align 4
  %85 = and i32 %84, 255
  %86 = getelementptr i8, ptr %83, i32 320
  tail call void @msm_writel(i32 noundef %85, ptr noundef %86) #7
  %87 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 255
  %90 = getelementptr i8, ptr %83, i32 324
  tail call void @msm_writel(i32 noundef %89, ptr noundef %90) #7
  %91 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 255
  %94 = getelementptr i8, ptr %83, i32 328
  tail call void @msm_writel(i32 noundef %93, ptr noundef %94) #7
  %95 = getelementptr i8, ptr %83, i32 332
  tail call void @msm_writel(i32 noundef 0, ptr noundef %95) #7
  %96 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 255
  %99 = getelementptr i8, ptr %83, i32 336
  tail call void @msm_writel(i32 noundef %98, ptr noundef %99) #7
  %100 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 255
  %103 = getelementptr i8, ptr %83, i32 340
  tail call void @msm_writel(i32 noundef %102, ptr noundef %103) #7
  %104 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 255
  %107 = getelementptr i8, ptr %83, i32 344
  tail call void @msm_writel(i32 noundef %106, ptr noundef %107) #7
  %108 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 255
  %111 = getelementptr i8, ptr %83, i32 348
  tail call void @msm_writel(i32 noundef %110, ptr noundef %111) #7
  %112 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 7
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 255
  %115 = getelementptr i8, ptr %83, i32 352
  tail call void @msm_writel(i32 noundef %114, ptr noundef %115) #7
  %116 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 8
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 7
  %119 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 9
  %120 = load i32, ptr %119, align 4
  %121 = shl i32 %120, 4
  %122 = and i32 %121, 112
  %123 = or i32 %122, %118
  %124 = getelementptr i8, ptr %83, i32 356
  tail call void @msm_writel(i32 noundef %123, ptr noundef %124) #7
  %125 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 10
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 7
  %128 = getelementptr i8, ptr %83, i32 360
  tail call void @msm_writel(i32 noundef %127, ptr noundef %128) #7
  %129 = getelementptr i8, ptr %83, i32 364
  tail call void @msm_writel(i32 noundef 0, ptr noundef %129) #7
  br label %130

130:                                              ; preds = %49, %8
  %131 = phi i32 [ -22, %8 ], [ 0, %49 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_28nm_phy_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 368
  tail call void @msm_writel(i32 noundef 0, ptr noundef %4) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_28nm_pll_save_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 40
  %10 = tail call i32 @msm_readl(ptr noundef %9) #7
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 1
  store i8 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %8, i32 36
  %14 = tail call i32 @msm_readl(ptr noundef %13) #7
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 2
  store i8 %15, ptr %16, align 1
  %17 = getelementptr i8, ptr %8, i32 32
  %18 = tail call i32 @msm_readl(ptr noundef %17) #7
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 3
  store i8 %19, ptr %20, align 2
  %21 = load ptr, ptr %2, align 4
  %22 = tail call i32 @clk_hw_get_rate(ptr noundef %21) #7
  store i32 %22, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_28nm_pll_restore_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %4, align 4
  %10 = tail call i32 @dsi_pll_28nm_clk_set_rate(ptr noundef %3, i32 noundef %9, i32 noundef 0)
  %11 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = getelementptr i8, ptr %8, i32 40
  tail call void @msm_writel(i32 noundef %13, ptr noundef %14) #7
  %15 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %8, i32 36
  tail call void @msm_writel(i32 noundef %17, ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 3
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = getelementptr i8, ptr %8, i32 32
  tail call void @msm_writel(i32 noundef %21, ptr noundef %22) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_vco_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %9) #7
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.msm_dsi_phy, ptr %10, i32 0, i32 18
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %41, !prof !10

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %7, i32 36
  %16 = tail call i32 @msm_readl(ptr noundef %15) #7
  %17 = add i32 %16, 1
  %18 = lshr i32 %17, 3
  %19 = getelementptr i8, ptr %7, i32 32
  %20 = tail call i32 @msm_readl(ptr noundef %19) #7
  %21 = and i32 %20, -16
  %22 = add nsw i32 %18, -1
  %23 = or i32 %22, %21
  tail call void @msm_writel(i32 noundef %23, ptr noundef %19) #7
  tail call void @msm_writel(i32 noundef 1, ptr noundef %7) #7
  br label %24

24:                                               ; preds = %33, %14
  %25 = phi i32 [ 1000, %14 ], [ %34, %33 ]
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.msm_dsi_phy, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 128
  %30 = tail call i32 @msm_readl(ptr noundef %29) #7
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = add nsw i32 %25, -1
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 21474800) #7
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %24

37:                                               ; preds = %33
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #7
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #7
  br label %41

38:                                               ; preds = %24
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #7
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.msm_dsi_phy, ptr %39, i32 0, i32 18
  store i8 1, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %37, %1
  %42 = phi i32 [ -22, %37 ], [ 0, %38 ], [ 0, %1 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_pll_28nm_vco_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %5) #7
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 18
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10, !prof !11

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %12) #7
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 18
  store i8 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %12, %1
  %4 = phi i32 [ 8000, %1 ], [ %13, %12 ]
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 128
  %9 = tail call i32 @msm_readl(ptr noundef %8) #7
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = add nsw i32 %4, -1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #7
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %3

16:                                               ; preds = %12, %3
  %17 = phi ptr [ @.str.12, %12 ], [ @.str.11, %3 ]
  %18 = xor i1 %11, true
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull %17) #7
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @msm_readl(ptr noundef %6) #7
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %6, i32 4
  %12 = tail call i32 @msm_readl(ptr noundef %11) #7
  %13 = and i32 %12, 255
  %14 = getelementptr i8, ptr %6, i32 8
  %15 = tail call i32 @msm_readl(ptr noundef %14) #7
  %16 = shl i32 %15, 8
  %17 = and i32 %16, 1792
  %18 = add nuw nsw i32 %13, 1
  %19 = add nuw nsw i32 %18, %17
  %20 = getelementptr i8, ptr %6, i32 12
  %21 = tail call i32 @msm_readl(ptr noundef %20) #7
  %22 = and i32 %21, 63
  %23 = add nuw nsw i32 %22, 1
  %24 = udiv i32 %1, %23
  %25 = shl i32 %24, 1
  %26 = mul i32 %25, %19
  br label %27

27:                                               ; preds = %10, %2
  %28 = phi i32 [ %26, %10 ], [ 0, %2 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %28) #7
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  %4 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %1)
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %9, %3 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %1, i32 noundef %2) #7
  %8 = udiv i32 %1, 10
  %9 = mul i32 %8, 27
  %10 = udiv i32 %9, 5400000
  %11 = add nsw i32 %10, -1
  %12 = and i32 %11, 255
  %13 = getelementptr i8, ptr %7, i32 4
  tail call void @msm_writel(i32 noundef %12, ptr noundef %13) #7
  %14 = getelementptr i8, ptr %7, i32 8
  %15 = tail call i32 @msm_readl(ptr noundef %14) #7
  %16 = lshr i32 %11, 8
  %17 = and i32 %16, 7
  %18 = or i32 %15, %17
  tail call void @msm_writel(i32 noundef %18, ptr noundef %14) #7
  %19 = getelementptr i8, ptr %7, i32 12
  %20 = tail call i32 @msm_readl(ptr noundef %19) #7
  %21 = or i32 %20, 26
  tail call void @msm_writel(i32 noundef %21, ptr noundef %19) #7
  %22 = getelementptr i8, ptr %7, i32 24
  tail call void @msm_writel(i32 noundef 15, ptr noundef %22) #7
  %23 = getelementptr i8, ptr %7, i32 32
  %24 = tail call i32 @msm_readl(ptr noundef %23) #7
  %25 = or i32 %24, 112
  tail call void @msm_writel(i32 noundef %25, ptr noundef %23) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_bytediv_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_bytediv, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @msm_readl(ptr noundef %4) #7
  %6 = and i32 %5, 255
  %7 = add nuw nsw i32 %6, 1
  %8 = udiv i32 %1, %7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_bytediv_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = shl i32 %1, 3
  %5 = icmp ult i32 %4, 125000000
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = icmp ult i32 %4, 250000000
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = icmp ult i32 %4, 600000000
  %10 = select i1 %9, i32 16, i32 8
  br label %11

11:                                               ; preds = %8, %6, %3
  %12 = phi i32 [ 64, %3 ], [ 32, %6 ], [ %10, %8 ]
  %13 = mul i32 %12, %1
  %14 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %15 = tail call i32 @clk_hw_round_rate(ptr noundef %14, i32 noundef %13) #7
  store i32 %15, ptr %2, align 4
  %16 = udiv i32 %15, %12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_bytediv_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = shl i32 %1, 3
  %5 = icmp ult i32 %4, 125000000
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = icmp ult i32 %4, 250000000
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = icmp ult i32 %4, 600000000
  %10 = select i1 %9, i32 15, i32 7
  br label %11

11:                                               ; preds = %8, %6, %3
  %12 = phi i32 [ 63, %3 ], [ 31, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.clk_bytediv, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @msm_readl(ptr noundef %14) #7
  %16 = or i32 %15, %12
  %17 = load ptr, ptr %13, align 4
  tail call void @msm_writel(i32 noundef %16, ptr noundef %17) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!8 = !{i64 2155829779}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
