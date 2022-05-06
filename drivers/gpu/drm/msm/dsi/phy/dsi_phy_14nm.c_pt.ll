; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c"
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
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
%struct.dsi_pll_14nm = type { %struct.clk_hw, ptr, %struct.spinlock, %struct.pll_14nm_cached_state, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_14nm_cached_state = type { i32, i8, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.dsi_pll_14nm_postdiv = type { %struct.clk_hw, i8, i8, i8, ptr }
%struct.dsi_pll_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dsi_phy_14nm_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_14nm_init, ptr @dsi_14nm_phy_enable, ptr @dsi_14nm_phy_disable, ptr @dsi_14nm_pll_save_state, ptr @dsi_14nm_pll_restore_state, ptr null }, i32 1300000000, i32 -1694967296, [2 x i32] [i32 10044416, i32 10052608], i32 2, i32 0, i8 0, i8 1 }, align 4
@dsi_phy_14nm_660_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 73400, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_14nm_init, ptr @dsi_14nm_phy_enable, ptr @dsi_14nm_phy_disable, ptr @dsi_14nm_pll_save_state, ptr @dsi_14nm_pll_restore_state, ptr null }, i32 1300000000, i32 -1694967296, [2 x i32] [i32 211371008, i32 211378176], i32 2, i32 0, i8 0, i8 1 }, align 4
@dsi_phy_14nm_8953_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_14nm_init, ptr @dsi_14nm_phy_enable, ptr @dsi_14nm_phy_disable, ptr @dsi_14nm_pll_save_state, ptr @dsi_14nm_pll_restore_state, ptr null }, i32 1300000000, i32 -1694967296, [2 x i32] [i32 27870208, i32 27878400], i32 2, i32 0, i8 0, i8 1 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"PLL%d\0A\00", align 1
@pll_14nm_list = internal unnamed_addr global [2 x ptr] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", align 1
@clk_ops_dsi_pll_14nm_vco = internal constant %struct.clk_ops { ptr @dsi_pll_14nm_vco_prepare, ptr @dsi_pll_14nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_14nm_vco_recalc_rate, ptr @dsi_pll_14nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_14nm_vco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DSI%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dsi%dvco_clk\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dsi%dn1_postdiv_clk\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"dsi%dpllbyte\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"dsi%dn1_postdivby2_clk\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dsi%dpll\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"*ERROR* DSI PLL lock failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"DSI PLL lock success\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"DSI PLL is %slocked, %sready\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"*not* \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"dec_start = %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"div_frac_start = %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"returning vco rate = %lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"DSI PLL%d rate=%lu, parent's=%lu\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"vco_clk_rate=%lld ref_clk_rate=%lld\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"vco=%lld ref=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"ssc freq=%d spread=%d period=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"step_size=%lld\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"DSI%d PLL\0A\00", align 1
@clk_ops_dsi_pll_14nm_postdiv = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_14nm_postdiv_recalc_rate, ptr @dsi_pll_14nm_postdiv_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_14nm_postdiv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.25 = private unnamed_addr constant [27 x i8] c"DSI%d PLL parent rate=%lu\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"DSI%d PLL parent rate=%lu parent rate %lu\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", align 1
@__func__.dsi_14nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_14nm_phy_enable\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"*ERROR* %s: set pll usecase failed, %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"DSI%d PLL save state %x %x\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"DSI%d PLL restore state %x %x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_init(ptr noundef %0) #0 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca [1 x ptr], align 4
  %4 = alloca %struct.clk_init_data, align 4
  %5 = alloca [1 x ptr], align 4
  %6 = alloca [32 x i8], align 1
  %7 = alloca [32 x i8], align 1
  %8 = alloca [32 x i8], align 1
  %9 = alloca %struct.clk_init_data, align 4
  %10 = alloca [1 x ptr], align 4
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %140, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 32, i32 noundef 3520) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %140, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %19) #7
  %20 = load i32, ptr %18, align 4
  %21 = getelementptr [2 x ptr], ptr @pll_14nm_list, i32 0, i32 %20
  store ptr %15, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %15, i32 0, i32 2
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %15, i32 0, i32 1
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %25, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %8, i8 0, i32 32, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #7
  %27 = getelementptr inbounds i8, ptr %9, i32 20
  store i32 1, ptr %27, align 4, !annotation !8
  store ptr %8, ptr %9, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @clk_ops_dsi_pll_14nm_vco, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr @.str.3, ptr %10, align 4
  store ptr %10, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 3
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 4
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 8, ptr %32, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %20) #7
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr inbounds %struct.msm_dsi_phy, ptr %35, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %8, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %37) #7
  %39 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %9, ptr %39, align 4
  %40 = call i32 @devm_clk_hw_register(ptr noundef %34, ptr noundef nonnull %15) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  br label %136

43:                                               ; preds = %17
  %44 = load ptr, ptr %23, align 4
  %45 = getelementptr inbounds %struct.msm_dsi_phy, ptr %44, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %46) #7
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr inbounds %struct.msm_dsi_phy, ptr %48, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %50) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %52 = load ptr, ptr %23, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #7
  %55 = getelementptr inbounds i8, ptr %4, i32 20
  store i32 1, ptr %55, align 4, !annotation !8
  store ptr %6, ptr %4, align 4
  %56 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @clk_ops_dsi_pll_14nm_postdiv, ptr %56, align 4
  %57 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr %7, ptr %5, align 4
  store ptr %5, ptr %57, align 4
  %58 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 3
  store ptr null, ptr %58, align 4
  %59 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 4
  store ptr null, ptr %59, align 4
  %60 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 4, ptr %60, align 4
  %61 = call noalias ptr @devm_kmalloc(ptr noundef %54, i32 noundef 20, i32 noundef 3520) #7
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %131

64:                                               ; preds = %43
  %65 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %61, i32 0, i32 4
  store ptr %15, ptr %65, align 4
  %66 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %61, i32 0, i32 1
  store i8 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %61, i32 0, i32 2
  store i8 4, ptr %67, align 1
  %68 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %61, i32 0, i32 3
  store i8 1, ptr %68, align 2
  %69 = getelementptr inbounds %struct.clk_hw, ptr %61, i32 0, i32 2
  store ptr %4, ptr %69, align 4
  %70 = call i32 @devm_clk_hw_register(ptr noundef %54, ptr noundef nonnull %61) #7
  %71 = icmp eq i32 %70, 0
  %72 = inttoptr i32 %70 to ptr
  %73 = select i1 %71, ptr %61, ptr %72
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %132, label %75

75:                                               ; preds = %64
  %76 = load ptr, ptr %23, align 4
  %77 = getelementptr inbounds %struct.msm_dsi_phy, ptr %76, i32 0, i32 9
  %78 = load i32, ptr %77, align 4
  %79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %78) #7
  %80 = load ptr, ptr %23, align 4
  %81 = getelementptr inbounds %struct.msm_dsi_phy, ptr %80, i32 0, i32 9
  %82 = load i32, ptr %81, align 4
  %83 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %82) #7
  %84 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %34, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 4, i32 noundef 1, i32 noundef 8) #7
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %132, label %86

86:                                               ; preds = %75
  store ptr %84, ptr %26, align 4
  %87 = load ptr, ptr %23, align 4
  %88 = getelementptr inbounds %struct.msm_dsi_phy, ptr %87, i32 0, i32 9
  %89 = load i32, ptr %88, align 4
  %90 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %89) #7
  %91 = load ptr, ptr %23, align 4
  %92 = getelementptr inbounds %struct.msm_dsi_phy, ptr %91, i32 0, i32 9
  %93 = load i32, ptr %92, align 4
  %94 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %93) #7
  %95 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %34, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 1, i32 noundef 2) #7
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %132, label %97

97:                                               ; preds = %86
  %98 = load ptr, ptr %23, align 4
  %99 = getelementptr inbounds %struct.msm_dsi_phy, ptr %98, i32 0, i32 9
  %100 = load i32, ptr %99, align 4
  %101 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %100) #7
  %102 = load ptr, ptr %23, align 4
  %103 = getelementptr inbounds %struct.msm_dsi_phy, ptr %102, i32 0, i32 9
  %104 = load i32, ptr %103, align 4
  %105 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %104) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %106 = load ptr, ptr %23, align 4
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.platform_device, ptr %107, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #7
  %109 = getelementptr inbounds i8, ptr %2, i32 20
  store i32 1, ptr %109, align 4, !annotation !8
  store ptr %6, ptr %2, align 4
  %110 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @clk_ops_dsi_pll_14nm_postdiv, ptr %110, align 4
  %111 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %7, ptr %3, align 4
  store ptr %3, ptr %111, align 4
  %112 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 3
  store ptr null, ptr %112, align 4
  %113 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 4
  store ptr null, ptr %113, align 4
  %114 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 0, ptr %114, align 4
  %115 = call noalias ptr @devm_kmalloc(ptr noundef %108, i32 noundef 20, i32 noundef 3520) #7
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %97
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %131

118:                                              ; preds = %97
  %119 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %115, i32 0, i32 4
  store ptr %15, ptr %119, align 4
  %120 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %115, i32 0, i32 1
  store i8 4, ptr %120, align 4
  %121 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %115, i32 0, i32 2
  store i8 4, ptr %121, align 1
  %122 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %115, i32 0, i32 3
  store i8 1, ptr %122, align 2
  %123 = getelementptr inbounds %struct.clk_hw, ptr %115, i32 0, i32 2
  store ptr %2, ptr %123, align 4
  %124 = call i32 @devm_clk_hw_register(ptr noundef %108, ptr noundef nonnull %115) #7
  %125 = icmp eq i32 %124, 0
  %126 = inttoptr i32 %124 to ptr
  %127 = select i1 %125, ptr %115, ptr %126
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %128 = icmp ugt ptr %127, inttoptr (i32 -4096 to ptr)
  br i1 %128, label %132, label %129

129:                                              ; preds = %118
  %130 = getelementptr %struct.clk_hw_onecell_data, ptr %25, i32 2
  store ptr %127, ptr %130, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  br label %138

131:                                              ; preds = %117, %63
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  br label %136

132:                                              ; preds = %118, %86, %75, %64
  %133 = phi ptr [ %73, %64 ], [ %84, %75 ], [ %95, %86 ], [ %127, %118 ]
  %134 = ptrtoint ptr %133 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  %135 = icmp eq ptr %133, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %132, %131, %42
  %137 = phi i32 [ %40, %42 ], [ %134, %132 ], [ -12, %131 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %137) #7
  br label %140

138:                                              ; preds = %132, %129
  %139 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  store ptr %15, ptr %139, align 4
  br label %140

140:                                              ; preds = %138, %136, %13, %1
  %141 = phi i32 [ %137, %136 ], [ 0, %138 ], [ -19, %1 ], [ -12, %13 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_14nm_phy_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @msm_dsi_dphy_timing_calc_v2(ptr noundef %3, ptr noundef %1) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dsi_14nm_phy_enable) #7
  br label %149

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 28, i32 60
  %18 = getelementptr i8, ptr %5, i32 76
  tail call void @msm_writel(i32 noundef %17, ptr noundef %18) #7
  %19 = getelementptr i8, ptr %5, i32 24
  tail call void @msm_writel(i32 noundef 1, ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 4
  %21 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 2
  %22 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 5
  %23 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 1
  %24 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 6
  %25 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 12
  %26 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 7
  %27 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 14
  %28 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 13
  %29 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 16
  %30 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 15
  %31 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 3
  %32 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 8
  %33 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 9
  %34 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 10
  br label %35

35:                                               ; preds = %35, %13
  %36 = phi i32 [ 0, %13 ], [ %105, %35 ]
  %37 = shl i32 %36, 7
  %38 = or i32 %37, 100
  %39 = getelementptr i8, ptr %7, i32 %38
  tail call void @msm_writel(i32 noundef 29, ptr noundef %39) #7
  %40 = or i32 %37, 56
  %41 = getelementptr i8, ptr %7, i32 %40
  tail call void @msm_writel(i32 noundef 255, ptr noundef %41) #7
  %42 = icmp eq i32 %36, 4
  %43 = select i1 %42, i32 0, i32 6
  %44 = or i32 %37, 60
  %45 = getelementptr i8, ptr %7, i32 %44
  tail call void @msm_writel(i32 noundef %43, ptr noundef %45) #7
  %46 = select i1 %42, i32 143, i32 15
  %47 = or i32 %37, 12
  %48 = getelementptr i8, ptr %7, i32 %47
  tail call void @msm_writel(i32 noundef %46, ptr noundef %48) #7
  %49 = or i32 %37, 8
  %50 = getelementptr i8, ptr %7, i32 %49
  tail call void @msm_writel(i32 noundef 16, ptr noundef %50) #7
  %51 = or i32 %37, 16
  %52 = getelementptr i8, ptr %7, i32 %51
  tail call void @msm_writel(i32 noundef 0, ptr noundef %52) #7
  %53 = or i32 %37, 20
  %54 = getelementptr i8, ptr %7, i32 %53
  tail call void @msm_writel(i32 noundef 136, ptr noundef %54) #7
  %55 = load ptr, ptr %6, align 4
  %56 = select i1 %42, ptr %3, ptr %20
  %57 = load i32, ptr %56, align 4
  %58 = select i1 %42, ptr %21, ptr %22
  %59 = load i32, ptr %58, align 4
  %60 = select i1 %42, ptr %23, ptr %24
  %61 = load i32, ptr %60, align 4
  %62 = select i1 %42, ptr %25, ptr %26
  %63 = load i32, ptr %62, align 4
  %64 = select i1 %42, ptr %27, ptr %28
  %65 = load i32, ptr %64, align 4
  %66 = select i1 %42, ptr %29, ptr %30
  %67 = load i8, ptr %66, align 1
  %68 = load i32, ptr %31, align 4
  %69 = and i32 %68, 255
  %70 = or i32 %37, 24
  %71 = getelementptr i8, ptr %55, i32 %70
  tail call void @msm_writel(i32 noundef %69, ptr noundef %71) #7
  %72 = and i32 %57, 255
  %73 = or i32 %37, 28
  %74 = getelementptr i8, ptr %55, i32 %73
  tail call void @msm_writel(i32 noundef %72, ptr noundef %74) #7
  %75 = and i32 %59, 255
  %76 = or i32 %37, 32
  %77 = getelementptr i8, ptr %55, i32 %76
  tail call void @msm_writel(i32 noundef %75, ptr noundef %77) #7
  %78 = and i32 %61, 255
  %79 = or i32 %37, 36
  %80 = getelementptr i8, ptr %55, i32 %79
  tail call void @msm_writel(i32 noundef %78, ptr noundef %80) #7
  %81 = and i32 %63, 255
  %82 = or i32 %37, 40
  %83 = getelementptr i8, ptr %55, i32 %82
  tail call void @msm_writel(i32 noundef %81, ptr noundef %83) #7
  %84 = shl i32 %65, 6
  %85 = and i32 %84, 192
  %86 = getelementptr i8, ptr %55, i32 %37
  tail call void @msm_writel(i32 noundef %85, ptr noundef %86) #7
  %87 = icmp ne i8 %67, 0
  %88 = zext i1 %87 to i32
  %89 = or i32 %37, 4
  %90 = getelementptr i8, ptr %55, i32 %89
  tail call void @msm_writel(i32 noundef %88, ptr noundef %90) #7
  %91 = load i32, ptr %32, align 4
  %92 = and i32 %91, 7
  %93 = load i32, ptr %33, align 4
  %94 = shl i32 %93, 4
  %95 = and i32 %94, 112
  %96 = or i32 %95, %92
  %97 = or i32 %37, 44
  %98 = getelementptr i8, ptr %55, i32 %97
  tail call void @msm_writel(i32 noundef %96, ptr noundef %98) #7
  %99 = load i32, ptr %34, align 4
  %100 = and i32 %99, 7
  %101 = or i32 %37, 48
  %102 = getelementptr i8, ptr %55, i32 %101
  tail call void @msm_writel(i32 noundef %100, ptr noundef %102) #7
  %103 = or i32 %37, 52
  %104 = getelementptr i8, ptr %55, i32 %103
  tail call void @msm_writel(i32 noundef 160, ptr noundef %104) #7
  %105 = add nuw nsw i32 %36, 1
  %106 = icmp eq i32 %105, 5
  br i1 %106, label %107, label %35

107:                                              ; preds = %35
  %108 = getelementptr i8, ptr %5, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %108) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %109 = getelementptr i8, ptr %5, i32 32
  tail call void @msm_writel(i32 noundef 128, ptr noundef %109) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 21474800) #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %109) #7
  %111 = tail call i32 @msm_readl(ptr noundef %19) #7
  %112 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load i32, ptr %14, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = or i32 %111, 4
  br label %122

120:                                              ; preds = %115, %107
  %121 = and i32 %111, -5
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  tail call void @msm_writel(i32 noundef %123, ptr noundef %19) #7
  %124 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = load i32, ptr %14, align 4
  switch i32 %126, label %141 [
    i32 0, label %144
    i32 1, label %127
    i32 2, label %139
  ]

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.msm_dsi_phy, ptr %131, i32 0, i32 9
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  %135 = srem i32 %134, 2
  %136 = getelementptr [2 x ptr], ptr @pll_14nm_list, i32 0, i32 %135
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %129, i32 0, i32 4
  store ptr %137, ptr %138, align 4
  br label %144

139:                                              ; preds = %122
  %140 = getelementptr i8, ptr %125, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %140) #7
  br label %144

141:                                              ; preds = %122
  %142 = load ptr, ptr %0, align 4
  %143 = getelementptr inbounds %struct.platform_device, ptr %142, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %143, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dsi_14nm_phy_enable, i32 noundef -22) #7
  br label %149

144:                                              ; preds = %139, %127, %122
  %145 = phi i32 [ 264, %139 ], [ 28, %127 ], [ 28, %122 ]
  %146 = phi i32 [ 3, %139 ], [ 3, %127 ], [ 1, %122 ]
  %147 = getelementptr i8, ptr %125, i32 %145
  tail call void @msm_writel(i32 noundef %146, ptr noundef %147) #7
  %148 = getelementptr i8, ptr %5, i32 28
  tail call void @msm_writel(i32 noundef 255, ptr noundef %148) #7
  br label %149

149:                                              ; preds = %144, %141, %10
  %150 = phi i32 [ -22, %10 ], [ -22, %141 ], [ 0, %144 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_14nm_phy_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  tail call void @msm_writel(i32 noundef 0, ptr noundef %4) #7
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %6) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_14nm_pll_save_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 @msm_readl(ptr noundef %9) #7
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 15
  %13 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %3, i32 0, i32 3, i32 2
  store i8 %12, ptr %13, align 1
  %14 = lshr i8 %11, 4
  %15 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %3, i32 0, i32 3, i32 1
  store i8 %14, ptr %15, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.msm_dsi_phy, ptr %16, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = zext i8 %12 to i32
  %20 = zext i8 %14 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %18, i32 noundef %19, i32 noundef %20) #7
  %21 = load ptr, ptr %2, align 4
  %22 = tail call i32 @clk_hw_get_rate(ptr noundef %21) #7
  store i32 %22, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_14nm_pll_restore_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %4, align 4
  %10 = tail call i32 @dsi_pll_14nm_vco_set_rate(ptr noundef %3, i32 noundef %9, i32 noundef 0)
  %11 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %3, i32 0, i32 3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %3, i32 0, i32 3, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 4
  %18 = or i32 %17, %13
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.msm_dsi_phy, ptr %19, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %21, i32 noundef %13, i32 noundef %16) #7
  %22 = getelementptr i8, ptr %8, i32 16
  tail call void @msm_writel(i32 noundef %18, ptr noundef %22) #7
  %23 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.msm_dsi_phy, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 16
  tail call void @msm_writel(i32 noundef %18, ptr noundef %33) #7
  br label %34

34:                                               ; preds = %26, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_vco_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #7
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.msm_dsi_phy, ptr %8, i32 0, i32 18
  %10 = load i8, ptr %9, align 4, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %175, !prof !13

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %5, i32 92
  tail call void @msm_writel(i32 noundef 16, ptr noundef %13) #7
  %14 = getelementptr i8, ptr %7, i32 72
  tail call void @msm_writel(i32 noundef 1, ptr noundef %14) #7
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.msm_dsi_phy, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 204
  %19 = tail call i32 @msm_readl(ptr noundef %18) #7
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %12
  %23 = tail call i32 @msm_readl(ptr noundef %18) #7
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %96, label %172

26:                                               ; preds = %12
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  %28 = tail call i32 @msm_readl(ptr noundef %18) #7
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %22

31:                                               ; preds = %26
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #7
  %33 = tail call i32 @msm_readl(ptr noundef %18) #7
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %22

36:                                               ; preds = %31
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #7
  %38 = tail call i32 @msm_readl(ptr noundef %18) #7
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %22

41:                                               ; preds = %36
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #7
  %43 = tail call i32 @msm_readl(ptr noundef %18) #7
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %22

46:                                               ; preds = %41
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #7
  %48 = tail call i32 @msm_readl(ptr noundef %18) #7
  %49 = and i32 %48, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %22

51:                                               ; preds = %46
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #7
  %53 = tail call i32 @msm_readl(ptr noundef %18) #7
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %22

56:                                               ; preds = %51
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #7
  %58 = tail call i32 @msm_readl(ptr noundef %18) #7
  %59 = and i32 %58, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %22

61:                                               ; preds = %56
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #7
  %63 = tail call i32 @msm_readl(ptr noundef %18) #7
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %22

66:                                               ; preds = %61
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #7
  %68 = tail call i32 @msm_readl(ptr noundef %18) #7
  %69 = and i32 %68, 32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %22

71:                                               ; preds = %66
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #7
  %73 = tail call i32 @msm_readl(ptr noundef %18) #7
  %74 = and i32 %73, 32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %22

76:                                               ; preds = %71
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #7
  %78 = tail call i32 @msm_readl(ptr noundef %18) #7
  %79 = and i32 %78, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %22

81:                                               ; preds = %76
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #7
  %83 = tail call i32 @msm_readl(ptr noundef %18) #7
  %84 = and i32 %83, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %22

86:                                               ; preds = %81
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #7
  %88 = tail call i32 @msm_readl(ptr noundef %18) #7
  %89 = and i32 %88, 32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %22

91:                                               ; preds = %86
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748000) #7
  %93 = tail call i32 @msm_readl(ptr noundef %18) #7
  %94 = and i32 %93, 32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %166, label %22

96:                                               ; preds = %22
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #7
  %98 = tail call i32 @msm_readl(ptr noundef %18) #7
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %172

101:                                              ; preds = %96
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #7
  %103 = tail call i32 @msm_readl(ptr noundef %18) #7
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %172

106:                                              ; preds = %101
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #7
  %108 = tail call i32 @msm_readl(ptr noundef %18) #7
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %172

111:                                              ; preds = %106
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #7
  %113 = tail call i32 @msm_readl(ptr noundef %18) #7
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %172

116:                                              ; preds = %111
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #7
  %118 = tail call i32 @msm_readl(ptr noundef %18) #7
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %172

121:                                              ; preds = %116
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #7
  %123 = tail call i32 @msm_readl(ptr noundef %18) #7
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %172

126:                                              ; preds = %121
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #7
  %128 = tail call i32 @msm_readl(ptr noundef %18) #7
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %172

131:                                              ; preds = %126
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #7
  %133 = tail call i32 @msm_readl(ptr noundef %18) #7
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %172

136:                                              ; preds = %131
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #7
  %138 = tail call i32 @msm_readl(ptr noundef %18) #7
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %172

141:                                              ; preds = %136
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #7
  %143 = tail call i32 @msm_readl(ptr noundef %18) #7
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %141
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #7
  %148 = tail call i32 @msm_readl(ptr noundef %18) #7
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %146
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #7
  %153 = tail call i32 @msm_readl(ptr noundef %18) #7
  %154 = and i32 %153, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %151
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #7
  %158 = tail call i32 @msm_readl(ptr noundef %18) #7
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 214748000) #7
  %163 = tail call i32 @msm_readl(ptr noundef %18) #7
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161, %91
  %167 = phi ptr [ @.str.15, %91 ], [ @.str.14, %161 ]
  %168 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %168(i32 noundef 214748000) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull %167, ptr noundef nonnull @.str.15) #7
  %169 = load ptr, ptr %2, align 4
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.platform_device, ptr %170, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %171, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #7
  br label %175

172:                                              ; preds = %161, %156, %151, %146, %141, %136, %131, %126, %121, %116, %111, %106, %101, %96, %22
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #7
  %173 = load ptr, ptr %2, align 4
  %174 = getelementptr inbounds %struct.msm_dsi_phy, ptr %173, i32 0, i32 18
  store i8 1, ptr %174, align 4
  br label %175

175:                                              ; preds = %172, %166, %1
  %176 = phi i32 [ -22, %166 ], [ 0, %172 ], [ 0, %1 ]
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_pll_14nm_vco_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #7
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 18
  %8 = load i8, ptr %7, align 4, !range !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10, !prof !14

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %5, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %11) #7
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.msm_dsi_phy, ptr %12, i32 0, i32 18
  store i8 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_vco_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = zext i32 %1 to i64
  %8 = getelementptr i8, ptr %6, i32 144
  %9 = tail call i32 @msm_readl(ptr noundef %8) #7
  %10 = and i32 %9, 255
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %10) #7
  %11 = getelementptr i8, ptr %6, i32 188
  %12 = tail call i32 @msm_readl(ptr noundef %11) #7
  %13 = shl i32 %12, 16
  %14 = and i32 %13, 983040
  %15 = getelementptr i8, ptr %6, i32 184
  %16 = tail call i32 @msm_readl(ptr noundef %15) #7
  %17 = shl i32 %16, 8
  %18 = and i32 %17, 65280
  %19 = or i32 %18, %14
  %20 = getelementptr i8, ptr %6, i32 180
  %21 = tail call i32 @msm_readl(ptr noundef %20) #7
  %22 = and i32 %21, 255
  %23 = or i32 %19, %22
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %23) #7
  %24 = zext i32 %10 to i64
  %25 = mul nuw nsw i64 %24, %7
  %26 = zext i32 %23 to i64
  %27 = mul nuw nsw i64 %26, %7
  %28 = lshr i64 %27, 20
  %29 = add nuw nsw i64 %25, 999
  %30 = add nuw nsw i64 %29, %28
  %31 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %30, i32 0) #8, !srcloc !15
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = extractvalue { i64, i32 } %31, 1
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %30, i64 %32, i32 %33) #8, !srcloc !16
  %35 = extractvalue { i64, i32 } %34, 0
  %36 = lshr i64 %35, 9
  %37 = trunc i64 %36 to i32
  %38 = mul i32 %37, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %38) #7
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dsi_pll_14nm_clk_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  %4 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %0, i32 0, i32 1
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
define internal i32 @dsi_pll_14nm_vco_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.dsi_pll_config, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %8, i32 noundef %1, i32 noundef %2) #7
  %9 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 2
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 1
  store i32 1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 3
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 5
  store i32 5, ptr %12, align 8
  %13 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 6
  store i32 31500, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 4
  store i32 37, ptr %14, align 4
  %15 = zext i32 %1 to i64
  store i64 %15, ptr %4, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i64 noundef %15, i64 noundef 19200000) #7
  %16 = shl nuw nsw i64 %15, 20
  %17 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2327733145514495953, i64 %16) #8, !srcloc !17
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2327733145514495953, i64 %16, i64 %17, i32 0) #8, !srcloc !16
  %19 = extractvalue { i64, i32 } %18, 0
  %20 = lshr i64 %19, 24
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 1048575
  %23 = lshr i64 %19, 44
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 7
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 8
  store i32 %22, ptr %26, align 4
  %27 = lshr i64 %19, 37
  %28 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %27, i64 3689348814741910323) #8, !srcloc !18
  %29 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %27, i64 %28) #8, !srcloc !19
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 11
  store i32 %30, ptr %31, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, i64 noundef %15, i32 noundef 19200000) #7
  %32 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 9
  store i32 304, ptr %32, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef 31500, i32 noundef 5, i32 noundef 304) #7
  %33 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 7870610804782742023, i64 %15) #8, !srcloc !17
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 7870610804782742023, i64 %15, i64 %33, i32 0) #8, !srcloc !16
  %35 = extractvalue { i64, i32 } %34, 0
  %36 = shl i64 %35, 7
  %37 = and i64 %36, -1048576
  %38 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %37, i32 0) #8, !srcloc !15
  %39 = extractvalue { i64, i32 } %38, 0
  %40 = extractvalue { i64, i32 } %38, 1
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %37, i64 %39, i32 %40) #8, !srcloc !16
  %42 = extractvalue { i64, i32 } %41, 0
  %43 = lshr i64 %42, 9
  %44 = mul nuw nsw i64 %43, 5
  %45 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %44, i32 0) #8, !srcloc !15
  %46 = extractvalue { i64, i32 } %45, 0
  %47 = extractvalue { i64, i32 } %45, 1
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %44, i64 %46, i32 %47) #8, !srcloc !16
  %49 = extractvalue { i64, i32 } %48, 0
  %50 = lshr i64 %49, 9
  %51 = mul nuw nsw i64 %50, 38
  %52 = trunc i64 %51 to i32
  %53 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 7741584398146959367, i64 %51) #8, !srcloc !17
  %54 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 7741584398146959367, i64 %51, i64 %53) #8, !srcloc !19
  %55 = lshr i64 %54, 7
  %56 = trunc i64 %55 to i32
  %57 = mul i32 %56, -305
  %58 = sub i32 0, %52
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = add nuw nsw i64 %55, %60
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i64 noundef %61) #7
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 65535
  %64 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 10
  store i32 %63, ptr %64, align 4
  %65 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 96000000) #8
  %66 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 96000000, i64 %65, i32 0) #8
  %67 = extractvalue { i64, i32 } %66, 0
  %68 = trunc i64 %67 to i32
  %69 = lshr i32 %68, 18
  %70 = and i32 %69, 1023
  %71 = add nsw i32 %70, -2
  %72 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 12
  store i32 %71, ptr %72, align 4
  %73 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %15) #8, !srcloc !17
  %74 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %15, i64 %73, i32 0) #8, !srcloc !16
  %75 = extractvalue { i64, i32 } %74, 0
  %76 = lshr i64 %75, 18
  %77 = mul nuw nsw i64 %76, 5
  %78 = lshr i64 %77, 1
  %79 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %78, i64 3689348814741910323) #8, !srcloc !18
  %80 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %78, i64 %79) #8, !srcloc !19
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 13
  store i32 %81, ptr %82, align 8
  %83 = add nsw i32 %70, -1
  %84 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 14
  store i32 %83, ptr %84, align 4
  %85 = add i32 %1, -1300000001
  %86 = icmp ult i32 %85, 500000000
  br i1 %86, label %94, label %87

87:                                               ; preds = %3
  %88 = add i32 %1, -1800000001
  %89 = icmp ult i32 %88, 499999999
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = add i32 %1, 1994967295
  %92 = icmp ult i32 %91, 299999999
  %93 = select i1 %92, i32 25, i32 0
  br label %94

94:                                               ; preds = %90, %87, %3
  %95 = phi i32 [ 60, %3 ], [ 40, %87 ], [ %93, %90 ]
  %96 = getelementptr inbounds %struct.dsi_pll_config, ptr %4, i32 0, i32 15
  store i32 %95, ptr %96, align 8
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr inbounds %struct.msm_dsi_phy, ptr %97, i32 0, i32 14
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %0, i32 0, i32 4
  %103 = load ptr, ptr %102, align 4
  call fastcc void @pll_db_commit_14nm(ptr noundef %103, ptr noundef nonnull %4)
  br label %104

104:                                              ; preds = %101, %94
  call fastcc void @pll_db_commit_14nm(ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pll_db_commit_14nm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %10) #7
  %11 = getelementptr i8, ptr %8, i32 76
  tail call void @msm_writel(i32 noundef 60, ptr noundef %11) #7
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.msm_dsi_phy, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %15) #7
  %16 = getelementptr i8, ptr %14, i32 192
  tail call void @msm_writel(i32 noundef 1, ptr noundef %16) #7
  %17 = getelementptr i8, ptr %14, i32 44
  tail call void @msm_writel(i32 noundef 48, ptr noundef %17) #7
  %18 = getelementptr i8, ptr %14, i32 48
  tail call void @msm_writel(i32 noundef 32, ptr noundef %18) #7
  %19 = getelementptr i8, ptr %14, i32 60
  tail call void @msm_writel(i32 noundef 5, ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 255
  %23 = getelementptr i8, ptr %14, i32 108
  tail call void @msm_writel(i32 noundef %22, ptr noundef %23) #7
  %24 = load i32, ptr %20, align 4
  %25 = lshr i32 %24, 8
  %26 = and i32 %25, 3
  %27 = getelementptr i8, ptr %14, i32 112
  tail call void @msm_writel(i32 noundef %26, ptr noundef %27) #7
  %28 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 255
  %31 = getelementptr i8, ptr %14, i32 64
  tail call void @msm_writel(i32 noundef %30, ptr noundef %31) #7
  %32 = load i32, ptr %28, align 4
  %33 = lshr i32 %32, 8
  %34 = and i32 %33, 3
  %35 = getelementptr i8, ptr %14, i32 68
  tail call void @msm_writel(i32 noundef %34, ptr noundef %35) #7
  %36 = getelementptr i8, ptr %14, i32 232
  tail call void @msm_writel(i32 noundef 16, ptr noundef %36) #7
  tail call void @msm_writel(i32 noundef 4, ptr noundef %14) #7
  %37 = getelementptr i8, ptr %14, i32 4
  tail call void @msm_writel(i32 noundef 4, ptr noundef %37) #7
  %38 = getelementptr i8, ptr %14, i32 240
  tail call void @msm_writel(i32 noundef 9, ptr noundef %38) #7
  %39 = getelementptr i8, ptr %14, i32 248
  tail call void @msm_writel(i32 noundef 0, ptr noundef %39) #7
  %40 = getelementptr i8, ptr %14, i32 244
  tail call void @msm_writel(i32 noundef 0, ptr noundef %40) #7
  %41 = getelementptr i8, ptr %14, i32 252
  tail call void @msm_writel(i32 noundef 36, ptr noundef %41) #7
  %42 = getelementptr i8, ptr %14, i32 256
  tail call void @msm_writel(i32 noundef 27, ptr noundef %42) #7
  %43 = getelementptr i8, ptr %14, i32 16
  tail call void @msm_writel(i32 noundef 7, ptr noundef %43) #7
  %44 = getelementptr i8, ptr %14, i32 196
  tail call void @msm_writel(i32 noundef 18, ptr noundef %44) #7
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.msm_dsi_phy, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %48) #7
  %49 = getelementptr i8, ptr %47, i32 32
  tail call void @msm_writel(i32 noundef 32, ptr noundef %49) #7
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %49) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %51 = getelementptr i8, ptr %8, i32 20
  tail call void @msm_writel(i32 noundef 1, ptr noundef %51) #7
  %52 = getelementptr i8, ptr %8, i32 28
  tail call void @msm_writel(i32 noundef 255, ptr noundef %52) #7
  %53 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 7
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 255
  %56 = getelementptr i8, ptr %6, i32 144
  tail call void @msm_writel(i32 noundef %55, ptr noundef %56) #7
  %57 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 255
  %60 = getelementptr i8, ptr %6, i32 180
  tail call void @msm_writel(i32 noundef %59, ptr noundef %60) #7
  %61 = load i32, ptr %57, align 4
  %62 = lshr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = getelementptr i8, ptr %6, i32 184
  tail call void @msm_writel(i32 noundef %63, ptr noundef %64) #7
  %65 = load i32, ptr %57, align 4
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 15
  %68 = getelementptr i8, ptr %6, i32 188
  tail call void @msm_writel(i32 noundef %67, ptr noundef %68) #7
  %69 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 11
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 255
  %72 = getelementptr i8, ptr %6, i32 124
  tail call void @msm_writel(i32 noundef %71, ptr noundef %72) #7
  %73 = load i32, ptr %69, align 8
  %74 = lshr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = getelementptr i8, ptr %6, i32 128
  tail call void @msm_writel(i32 noundef %75, ptr noundef %76) #7
  %77 = load i32, ptr %69, align 8
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 3
  %80 = getelementptr i8, ptr %6, i32 132
  tail call void @msm_writel(i32 noundef %79, ptr noundef %80) #7
  %81 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = shl i32 %82, 1
  %84 = and i32 %83, 254
  %85 = getelementptr i8, ptr %6, i32 136
  tail call void @msm_writel(i32 noundef %84, ptr noundef %85) #7
  %86 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 13
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 255
  %89 = getelementptr i8, ptr %6, i32 116
  tail call void @msm_writel(i32 noundef %88, ptr noundef %89) #7
  %90 = load i32, ptr %86, align 8
  %91 = lshr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = getelementptr i8, ptr %6, i32 120
  tail call void @msm_writel(i32 noundef %92, ptr noundef %93) #7
  %94 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 15
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 255
  %97 = getelementptr i8, ptr %6, i32 72
  tail call void @msm_writel(i32 noundef %96, ptr noundef %97) #7
  %98 = load i32, ptr %94, align 8
  %99 = lshr i32 %98, 8
  %100 = and i32 %99, 3
  %101 = getelementptr i8, ptr %6, i32 76
  tail call void @msm_writel(i32 noundef %100, ptr noundef %101) #7
  %102 = getelementptr i8, ptr %6, i32 260
  tail call void @msm_writel(i32 noundef 3, ptr noundef %102) #7
  %103 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 1
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %140, label %106

106:                                              ; preds = %2
  %107 = load ptr, ptr %3, align 4
  %108 = getelementptr inbounds %struct.msm_dsi_phy, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 255
  %113 = getelementptr i8, ptr %109, i32 152
  tail call void @msm_writel(i32 noundef %112, ptr noundef %113) #7
  %114 = load i32, ptr %110, align 4
  %115 = lshr i32 %114, 8
  %116 = and i32 %115, 3
  %117 = getelementptr i8, ptr %109, i32 156
  tail call void @msm_writel(i32 noundef %116, ptr noundef %117) #7
  %118 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 9
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 255
  %121 = getelementptr i8, ptr %109, i32 160
  tail call void @msm_writel(i32 noundef %120, ptr noundef %121) #7
  %122 = load i32, ptr %118, align 8
  %123 = lshr i32 %122, 8
  %124 = and i32 %123, 255
  %125 = getelementptr i8, ptr %109, i32 164
  tail call void @msm_writel(i32 noundef %124, ptr noundef %125) #7
  %126 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 10
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 255
  %129 = getelementptr i8, ptr %109, i32 168
  tail call void @msm_writel(i32 noundef %128, ptr noundef %129) #7
  %130 = load i32, ptr %126, align 4
  %131 = lshr i32 %130, 8
  %132 = and i32 %131, 255
  %133 = getelementptr i8, ptr %109, i32 172
  tail call void @msm_writel(i32 noundef %132, ptr noundef %133) #7
  %134 = getelementptr inbounds %struct.dsi_pll_config, ptr %1, i32 0, i32 3
  %135 = load i32, ptr %134, align 8
  %136 = shl i32 %135, 1
  %137 = and i32 %136, 2
  %138 = or i32 %137, 1
  %139 = getelementptr i8, ptr %109, i32 148
  tail call void @msm_writel(i32 noundef %138, ptr noundef %139) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  br label %140

140:                                              ; preds = %106, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_postdiv_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %14, i32 noundef %1) #7
  %15 = getelementptr i8, ptr %8, i32 16
  %16 = tail call i32 @msm_readl(ptr noundef %15) #7
  %17 = zext i8 %10 to i32
  %18 = lshr i32 %16, %17
  %19 = zext i8 %12 to i32
  %20 = shl nsw i32 -1, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 3
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = tail call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %22, ptr noundef null, i32 noundef %25, i32 noundef %19) #7
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_postdiv_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %9, i32 noundef %1) #7
  %10 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %16 = tail call i32 @divider_round_rate_parent(ptr noundef %0, ptr noundef %15, i32 noundef %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext %11, i32 noundef %14) #7
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_postdiv_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %5, i32 0, i32 2
  %11 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.msm_dsi_phy, ptr %7, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %16, i32 noundef %1, i32 noundef %2) #7
  %17 = load i8, ptr %13, align 1
  %18 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %0, i32 0, i32 3
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = tail call i32 @divider_get_val(i32 noundef %1, i32 noundef %2, ptr noundef null, i8 noundef zeroext %17, i32 noundef %20) #7
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #7
  %23 = getelementptr i8, ptr %9, i32 16
  %24 = tail call i32 @msm_readl(ptr noundef %23) #7
  %25 = zext i8 %14 to i32
  %26 = shl nsw i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = zext i8 %12 to i32
  %29 = shl i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %24, %30
  %32 = shl i32 %21, %28
  %33 = or i32 %31, %32
  tail call void @msm_writel(i32 noundef %33, ptr noundef %23) #7
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.msm_dsi_phy, ptr %34, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %5, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 16
  tail call void @msm_writel(i32 noundef %33, ptr noundef %45) #7
  br label %46

46:                                               ; preds = %38, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %22) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc_v2(ptr noundef, ptr noundef) local_unnamed_addr #2

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
attributes #8 = { nounwind readnone }

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
!9 = !{i64 2155875701}
!10 = !{i64 2155875885}
!11 = !{i64 2155877102}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 899017, i64 899044, i64 899066, i64 899094}
!16 = !{i64 899425, i64 899452, i64 899485, i64 899506, i64 899533, i64 899559}
!17 = !{i64 898730, i64 898757}
!18 = !{i64 898900, i64 898927}
!19 = !{i64 899240, i64 899267, i64 899301, i64 899322}
!20 = !{i64 2155846913}
!21 = !{i64 2155847098}
!22 = !{i64 2155844876}
!23 = !{i64 2155848383}
