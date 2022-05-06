; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c"
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
%struct.dsi_pll_7nm = type { %struct.clk_hw, ptr, i64, %struct.spinlock, %struct.pll_7nm_cached_state, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_7nm_cached_state = type { i32, i8, i8, i8, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@dsi_phy_7nm_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_7nm_init, ptr @dsi_7nm_phy_enable, ptr @dsi_7nm_phy_disable, ptr @dsi_7nm_pll_save_state, ptr @dsi_7nm_pll_restore_state, ptr @dsi_7nm_set_continuous_clock }, i32 600000000, i32 -1, [2 x i32] [i32 183059456, i32 183067648], i32 2, i32 1, i8 0, i8 1 }, align 4
@dsi_phy_7nm_8150_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_7nm_init, ptr @dsi_7nm_phy_enable, ptr @dsi_7nm_phy_disable, ptr @dsi_7nm_pll_save_state, ptr @dsi_7nm_pll_restore_state, ptr @dsi_7nm_set_continuous_clock }, i32 1000000000, i32 -794967296, [2 x i32] [i32 183059456, i32 183067648], i32 2, i32 0, i8 0, i8 1 }, align 4
@dsi_phy_7nm_7280_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 37550, i32 0 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_7nm_init, ptr @dsi_7nm_phy_enable, ptr @dsi_7nm_phy_disable, ptr @dsi_7nm_pll_save_state, ptr @dsi_7nm_pll_restore_state, ptr null }, i32 600000000, i32 -1, [2 x i32] [i32 183059456, i32 0], i32 1, i32 1, i8 0, i8 1 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"DSI PLL%d\0A\00", align 1
@pll_7nm_list = internal unnamed_addr global [2 x ptr] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", align 1
@clk_ops_dsi_pll_7nm_vco = internal constant %struct.clk_ops { ptr @dsi_pll_7nm_vco_prepare, ptr @dsi_pll_7nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_7nm_vco_recalc_rate, ptr @dsi_pll_7nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_7nm_vco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"bi_tcxo\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DSI%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dsi%dvco_clk\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"dsi%d_pll_out_div_clk\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"dsi%d_pll_bit_clk\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"dsi%d_phy_pll_out_byteclk\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"dsi%d_pll_by_2_bit_clk\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"dsi%d_pll_post_out_div_clk\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"dsi%d_pclk_mux\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"dsi%d_phy_pll_out_dsiclk\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"\013PLL(%d) lock failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = private unnamed_addr constant [42 x i8] c"\013DSI PLL(%d) lock failed, status=0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"DSI PLL%d returning vco rate = %lu, dec = %x, frac = %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"DSI PLL%d rate=%lu, parent's=%lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"SSC not enabled\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"*ERROR* %s: PHY timing calculation failed\0A\00", align 1
@__func__.dsi_7nm_phy_enable = private unnamed_addr constant [19 x i8] c"dsi_7nm_phy_enable\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"\014PLL turned on before configuring PHY\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\013Ref gen not ready. Aborting\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"*ERROR* %s: set pll usecase failed, %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"DSI%d PHY enabled\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"\014Turning OFF PHY while PLL is on\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"DSI%d PHY disabled\0A\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"DSI PLL%d outdiv %x bit_clk_div %x pix_clk_div %x pll_mux %x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_7nm_init(ptr noundef %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  %4 = alloca [32 x i8], align 1
  %5 = alloca [32 x i8], align 1
  %6 = alloca [32 x i8], align 1
  %7 = alloca [32 x i8], align 1
  %8 = alloca %struct.clk_init_data, align 4
  %9 = alloca [1 x ptr], align 4
  %10 = alloca [4 x ptr], align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 40, i32 noundef 3520) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %186, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %17) #8
  %18 = load i32, ptr %16, align 4
  %19 = getelementptr [2 x ptr], ptr @pll_7nm_list, i32 0, i32 %18
  store ptr %13, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %13, i32 0, i32 3
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %13, i32 0, i32 1
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %23, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #8
  %25 = getelementptr inbounds i8, ptr %8, i32 20
  store i32 1, ptr %25, align 4, !annotation !8
  store ptr %4, ptr %8, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @clk_ops_dsi_pll_7nm_vco, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr @.str.3, ptr %9, align 4
  store ptr %9, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 3
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 4
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 8, ptr %30, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %18) #8
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr inbounds %struct.msm_dsi_phy, ptr %33, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %35) #8
  %37 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %8, ptr %37, align 8
  %38 = call i32 @devm_clk_hw_register(ptr noundef %32, ptr noundef nonnull %13) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  br label %184

41:                                               ; preds = %15
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %44) #8
  %46 = load ptr, ptr %21, align 4
  %47 = getelementptr inbounds %struct.msm_dsi_phy, ptr %46, i32 0, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %48) #8
  %50 = load ptr, ptr %21, align 4
  %51 = getelementptr inbounds %struct.msm_dsi_phy, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 340
  %54 = call ptr @__devm_clk_hw_register_divider(ptr noundef %32, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %53, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 2, ptr noundef null, ptr noundef null) #8
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %181, label %56

56:                                               ; preds = %41
  %57 = load ptr, ptr %21, align 4
  %58 = getelementptr inbounds %struct.msm_dsi_phy, ptr %57, i32 0, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %59) #8
  %61 = load ptr, ptr %21, align 4
  %62 = getelementptr inbounds %struct.msm_dsi_phy, ptr %61, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %63) #8
  %65 = load ptr, ptr %21, align 4
  %66 = getelementptr inbounds %struct.msm_dsi_phy, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 16
  %69 = call ptr @__devm_clk_hw_register_divider(ptr noundef %32, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %68, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef %20) #8
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %181, label %71

71:                                               ; preds = %56
  %72 = load ptr, ptr %21, align 4
  %73 = getelementptr inbounds %struct.msm_dsi_phy, ptr %72, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %74) #8
  %76 = load ptr, ptr %21, align 4
  %77 = getelementptr inbounds %struct.msm_dsi_phy, ptr %76, i32 0, i32 9
  %78 = load i32, ptr %77, align 4
  %79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %78) #8
  %80 = load ptr, ptr %21, align 4
  %81 = getelementptr inbounds %struct.msm_dsi_phy, ptr %80, i32 0, i32 16
  %82 = load i8, ptr %81, align 1, !range !9
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i32 8, i32 7
  %85 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %32, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4, i32 noundef 1, i32 noundef %84) #8
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %181, label %87

87:                                               ; preds = %71
  store ptr %85, ptr %24, align 4
  %88 = load ptr, ptr %21, align 4
  %89 = getelementptr inbounds %struct.msm_dsi_phy, ptr %88, i32 0, i32 9
  %90 = load i32, ptr %89, align 4
  %91 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %90) #8
  %92 = load ptr, ptr %21, align 4
  %93 = getelementptr inbounds %struct.msm_dsi_phy, ptr %92, i32 0, i32 9
  %94 = load i32, ptr %93, align 4
  %95 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %94) #8
  %96 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %32, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, i32 noundef 2) #8
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %181, label %98

98:                                               ; preds = %87
  %99 = load ptr, ptr %21, align 4
  %100 = getelementptr inbounds %struct.msm_dsi_phy, ptr %99, i32 0, i32 9
  %101 = load i32, ptr %100, align 4
  %102 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %101) #8
  %103 = load ptr, ptr %21, align 4
  %104 = getelementptr inbounds %struct.msm_dsi_phy, ptr %103, i32 0, i32 9
  %105 = load i32, ptr %104, align 4
  %106 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %105) #8
  %107 = load ptr, ptr %21, align 4
  %108 = getelementptr inbounds %struct.msm_dsi_phy, ptr %107, i32 0, i32 16
  %109 = load i8, ptr %108, align 1, !range !9
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %98
  %112 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %32, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 2, i32 noundef 7) #8
  br label %115

113:                                              ; preds = %98
  %114 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %32, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, i32 noundef 4) #8
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi ptr [ %112, %111 ], [ %114, %113 ]
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %181, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %21, align 4
  %120 = getelementptr inbounds %struct.msm_dsi_phy, ptr %119, i32 0, i32 16
  %121 = load i8, ptr %120, align 1, !range !9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.msm_dsi_phy, ptr %119, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr i8, ptr %125, i32 20
  %127 = call i32 @msm_readl(ptr noundef %126) #8
  %128 = or i32 %127, 3
  %129 = load ptr, ptr %21, align 4
  %130 = getelementptr inbounds %struct.msm_dsi_phy, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 20
  call void @msm_writel(i32 noundef %128, ptr noundef %132) #8
  br label %162

133:                                              ; preds = %118
  %134 = getelementptr inbounds %struct.msm_dsi_phy, ptr %119, i32 0, i32 9
  %135 = load i32, ptr %134, align 4
  %136 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %135) #8
  %137 = load ptr, ptr %21, align 4
  %138 = getelementptr inbounds %struct.msm_dsi_phy, ptr %137, i32 0, i32 9
  %139 = load i32, ptr %138, align 4
  %140 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %139) #8
  %141 = load ptr, ptr %21, align 4
  %142 = getelementptr inbounds %struct.msm_dsi_phy, ptr %141, i32 0, i32 9
  %143 = load i32, ptr %142, align 4
  %144 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %143) #8
  %145 = load ptr, ptr %21, align 4
  %146 = getelementptr inbounds %struct.msm_dsi_phy, ptr %145, i32 0, i32 9
  %147 = load i32, ptr %146, align 4
  %148 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %147) #8
  %149 = load ptr, ptr %21, align 4
  %150 = getelementptr inbounds %struct.msm_dsi_phy, ptr %149, i32 0, i32 9
  %151 = load i32, ptr %150, align 4
  %152 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %151) #8
  store ptr %3, ptr %10, align 4
  %153 = getelementptr inbounds ptr, ptr %10, i32 1
  store ptr %5, ptr %153, align 4
  %154 = getelementptr inbounds ptr, ptr %10, i32 2
  store ptr %6, ptr %154, align 4
  %155 = getelementptr inbounds ptr, ptr %10, i32 3
  store ptr %7, ptr %155, align 4
  %156 = load ptr, ptr %21, align 4
  %157 = getelementptr inbounds %struct.msm_dsi_phy, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 20
  %160 = call ptr @__devm_clk_hw_register_mux(ptr noundef %32, ptr noundef null, ptr noundef nonnull %2, i8 noundef zeroext 4, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %159, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #8
  %161 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %181, label %162

162:                                              ; preds = %133, %123
  %163 = phi ptr [ @.str.10, %123 ], [ @.str.11, %133 ]
  %164 = load ptr, ptr %21, align 4
  %165 = getelementptr inbounds %struct.msm_dsi_phy, ptr %164, i32 0, i32 9
  %166 = load i32, ptr %165, align 4
  %167 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull %163, i32 noundef %166) #8
  %168 = load ptr, ptr %21, align 4
  %169 = getelementptr inbounds %struct.msm_dsi_phy, ptr %168, i32 0, i32 9
  %170 = load i32, ptr %169, align 4
  %171 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %170) #8
  %172 = load ptr, ptr %21, align 4
  %173 = getelementptr inbounds %struct.msm_dsi_phy, ptr %172, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr i8, ptr %174, i32 16
  %176 = call ptr @__devm_clk_hw_register_divider(ptr noundef %32, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %175, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef %20) #8
  %177 = icmp ugt ptr %176, inttoptr (i32 -4096 to ptr)
  br i1 %177, label %181, label %178

178:                                              ; preds = %162
  %179 = getelementptr %struct.clk_hw_onecell_data, ptr %23, i32 2
  store ptr %176, ptr %179, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  %180 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  store ptr %13, ptr %180, align 4
  call void @msm_dsi_phy_pll_save_state(ptr noundef %0) #8
  br label %186

181:                                              ; preds = %162, %133, %115, %87, %71, %56, %41
  %182 = phi ptr [ %54, %41 ], [ %69, %56 ], [ %85, %71 ], [ %96, %87 ], [ %116, %115 ], [ %160, %133 ], [ %176, %162 ]
  %183 = ptrtoint ptr %182 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  br label %184

184:                                              ; preds = %181, %40
  %185 = phi i32 [ %38, %40 ], [ %183, %181 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %185) #8
  br label %186

186:                                              ; preds = %184, %178, %1
  %187 = phi i32 [ %185, %184 ], [ 0, %178 ], [ -12, %1 ]
  ret i32 %187
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_7nm_phy_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #8
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 16
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @msm_dsi_cphy_timing_calc_v4(ptr noundef %3, ptr noundef %1) #8
  br label %13

11:                                               ; preds = %2
  %12 = tail call i32 @msm_dsi_dphy_timing_calc_v4(ptr noundef %3, ptr noundef %1) #8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dsi_7nm_phy_enable) #8
  br label %241

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 60
  %22 = tail call i32 @msm_readl(ptr noundef %21) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %27

27:                                               ; preds = %25, %19
  %28 = tail call i64 @ktime_get() #8
  %29 = add i64 %28, 1000000
  %30 = getelementptr i8, ptr %5, i32 320
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %39, %27
  %35 = tail call i64 @ktime_get() #8
  %36 = icmp sgt i64 %35, %29
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %44

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 1073740) #8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %34, label %44

44:                                               ; preds = %39, %37, %27
  %45 = phi i32 [ %38, %37 ], [ %31, %27 ], [ %41, %39 ]
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %241

50:                                               ; preds = %44
  %51 = load i32, ptr %1, align 4
  %52 = icmp ult i32 %51, 1500000001
  %53 = load i8, ptr %6, align 1, !range !9
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, i1 %52, i1 false
  %56 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %50
  %63 = select i1 %55, i32 83, i32 82
  %64 = select i1 %55, i32 61, i32 0
  %65 = select i1 %55, i32 57, i32 60
  br label %70

66:                                               ; preds = %50
  %67 = select i1 %55, i32 91, i32 89
  %68 = select i1 %55, i32 3, i32 0
  %69 = select i1 %55, i32 102, i32 136
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i32 [ 136, %62 ], [ %69, %66 ]
  %72 = phi i32 [ %64, %62 ], [ 3, %66 ]
  %73 = phi i32 [ %65, %62 ], [ 60, %66 ]
  %74 = phi i32 [ 0, %62 ], [ %68, %66 ]
  %75 = phi i32 [ %63, %62 ], [ %67, %66 ]
  %76 = select i1 %54, i32 0, i32 17
  %77 = select i1 %54, i32 31, i32 23
  %78 = select i1 %54, i32 92, i32 85
  %79 = select i1 %54, i32 %75, i32 81
  %80 = getelementptr i8, ptr %5, i32 36
  tail call void @msm_writel(i32 noundef 96, ptr noundef %80) #8
  %81 = getelementptr i8, ptr %5, i32 60
  tail call void @msm_writel(i32 noundef 0, ptr noundef %81) #8
  %82 = getelementptr i8, ptr %5, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %82) #8
  %83 = tail call i32 @msm_readl(ptr noundef %5) #8
  %84 = and i32 %83, 240
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = getelementptr i8, ptr %5, i32 276
  tail call void @msm_writel(i32 noundef 4, ptr noundef %87) #8
  br label %88

88:                                               ; preds = %86, %70
  %89 = getelementptr i8, ptr %5, i32 52
  tail call void @msm_writel(i32 noundef 33, ptr noundef %89) #8
  %90 = getelementptr i8, ptr %5, i32 56
  tail call void @msm_writel(i32 noundef 132, ptr noundef %90) #8
  %91 = load i8, ptr %6, align 1, !range !9
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = getelementptr i8, ptr %5, i32 24
  tail call void @msm_writel(i32 noundef 64, ptr noundef %94) #8
  br label %95

95:                                               ; preds = %93, %88
  %96 = getelementptr i8, ptr %5, i32 32
  tail call void @msm_writel(i32 noundef %79, ptr noundef %96) #8
  %97 = getelementptr i8, ptr %5, i32 272
  tail call void @msm_writel(i32 noundef %78, ptr noundef %97) #8
  %98 = getelementptr i8, ptr %5, i32 48
  tail call void @msm_writel(i32 noundef 0, ptr noundef %98) #8
  %99 = getelementptr i8, ptr %5, i32 268
  tail call void @msm_writel(i32 noundef %74, ptr noundef %99) #8
  %100 = getelementptr i8, ptr %5, i32 236
  tail call void @msm_writel(i32 noundef %71, ptr noundef %100) #8
  %101 = getelementptr i8, ptr %5, i32 260
  tail call void @msm_writel(i32 noundef %76, ptr noundef %101) #8
  %102 = load i8, ptr %6, align 1, !range !9
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %95
  %105 = getelementptr i8, ptr %5, i32 264
  tail call void @msm_writel(i32 noundef 1, ptr noundef %105) #8
  br label %106

106:                                              ; preds = %104, %95
  %107 = getelementptr i8, ptr %5, i32 244
  tail call void @msm_writel(i32 noundef %72, ptr noundef %107) #8
  %108 = getelementptr i8, ptr %5, i32 248
  tail call void @msm_writel(i32 noundef %73, ptr noundef %108) #8
  %109 = getelementptr i8, ptr %5, i32 256
  tail call void @msm_writel(i32 noundef 85, ptr noundef %109) #8
  tail call void @msm_writel(i32 noundef 127, ptr noundef %80) #8
  %110 = getelementptr i8, ptr %5, i32 160
  tail call void @msm_writel(i32 noundef %77, ptr noundef %110) #8
  %111 = load i8, ptr %6, align 1, !range !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = getelementptr i8, ptr %5, i32 44
  tail call void @msm_writel(i32 noundef 64, ptr noundef %114) #8
  br label %115

115:                                              ; preds = %113, %106
  %116 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %4, align 4
  %119 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %117, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.msm_dsi_phy, ptr %120, i32 0, i32 9
  %122 = load i32, ptr %121, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %122) #8
  %123 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 14
  %124 = load i32, ptr %123, align 4
  switch i32 %124, label %135 [
    i32 0, label %138
    i32 1, label %125
    i32 2, label %134
  ]

125:                                              ; preds = %115
  %126 = load ptr, ptr %119, align 4
  %127 = getelementptr inbounds %struct.msm_dsi_phy, ptr %126, i32 0, i32 9
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 1
  %130 = srem i32 %129, 2
  %131 = getelementptr [2 x ptr], ptr @pll_7nm_list, i32 0, i32 %130
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %117, i32 0, i32 5
  store ptr %132, ptr %133, align 4
  br label %138

134:                                              ; preds = %115
  br label %138

135:                                              ; preds = %115
  %136 = load ptr, ptr %0, align 4
  %137 = getelementptr inbounds %struct.platform_device, ptr %136, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %137, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dsi_7nm_phy_enable, i32 noundef -22) #8
  br label %241

138:                                              ; preds = %134, %125, %115
  %139 = phi i32 [ 4, %134 ], [ 0, %125 ], [ %124, %115 ]
  %140 = getelementptr i8, ptr %118, i32 20
  tail call void @msm_writel(i32 noundef %139, ptr noundef %140) #8
  %141 = load i8, ptr %6, align 1, !range !9
  %142 = icmp eq i8 %141, 0
  %143 = getelementptr i8, ptr %5, i32 180
  tail call void @msm_writel(i32 noundef 0, ptr noundef %143) #8
  br i1 %142, label %162, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr i8, ptr %5, i32 196
  tail call void @msm_writel(i32 noundef %146, ptr noundef %147) #8
  %148 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 11
  %149 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 11, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr i8, ptr %5, i32 200
  tail call void @msm_writel(i32 noundef %150, ptr noundef %151) #8
  %152 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr i8, ptr %5, i32 204
  tail call void @msm_writel(i32 noundef %153, ptr noundef %154) #8
  %155 = load i32, ptr %148, align 4
  %156 = getelementptr i8, ptr %5, i32 208
  tail call void @msm_writel(i32 noundef %155, ptr noundef %156) #8
  %157 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 7
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr i8, ptr %5, i32 212
  tail call void @msm_writel(i32 noundef %158, ptr noundef %159) #8
  %160 = getelementptr i8, ptr %5, i32 216
  tail call void @msm_writel(i32 noundef 2, ptr noundef %160) #8
  %161 = getelementptr i8, ptr %5, i32 220
  tail call void @msm_writel(i32 noundef 4, ptr noundef %161) #8
  br label %194

162:                                              ; preds = %138
  %163 = load i32, ptr %3, align 4
  %164 = getelementptr i8, ptr %5, i32 184
  tail call void @msm_writel(i32 noundef %163, ptr noundef %164) #8
  %165 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr i8, ptr %5, i32 188
  tail call void @msm_writel(i32 noundef %166, ptr noundef %167) #8
  %168 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr i8, ptr %5, i32 192
  tail call void @msm_writel(i32 noundef %169, ptr noundef %170) #8
  %171 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr i8, ptr %5, i32 196
  tail call void @msm_writel(i32 noundef %172, ptr noundef %173) #8
  %174 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr i8, ptr %5, i32 200
  tail call void @msm_writel(i32 noundef %175, ptr noundef %176) #8
  %177 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 5
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr i8, ptr %5, i32 204
  tail call void @msm_writel(i32 noundef %178, ptr noundef %179) #8
  %180 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 6
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr i8, ptr %5, i32 208
  tail call void @msm_writel(i32 noundef %181, ptr noundef %182) #8
  %183 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 7
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr i8, ptr %5, i32 212
  tail call void @msm_writel(i32 noundef %184, ptr noundef %185) #8
  %186 = getelementptr i8, ptr %5, i32 216
  tail call void @msm_writel(i32 noundef 2, ptr noundef %186) #8
  %187 = getelementptr i8, ptr %5, i32 220
  tail call void @msm_writel(i32 noundef 4, ptr noundef %187) #8
  %188 = getelementptr i8, ptr %5, i32 224
  tail call void @msm_writel(i32 noundef 0, ptr noundef %188) #8
  %189 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 11
  %190 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 11, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr i8, ptr %5, i32 228
  tail call void @msm_writel(i32 noundef %191, ptr noundef %192) #8
  %193 = load i32, ptr %189, align 4
  br label %194

194:                                              ; preds = %162, %144
  %195 = phi i32 [ 232, %162 ], [ 224, %144 ]
  %196 = phi i32 [ %193, %162 ], [ 0, %144 ]
  %197 = getelementptr i8, ptr %5, i32 %195
  tail call void @msm_writel(i32 noundef %196, ptr noundef %197) #8
  %198 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 4
  %199 = load ptr, ptr %198, align 4
  %200 = load ptr, ptr %56, align 4
  %201 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %200, i32 0, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  %205 = getelementptr i8, ptr %199, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %205) #8
  %206 = getelementptr i8, ptr %199, i32 16
  tail call void @msm_writel(i32 noundef 0, ptr noundef %206) #8
  %207 = getelementptr i8, ptr %199, i32 148
  tail call void @msm_writel(i32 noundef 0, ptr noundef %207) #8
  %208 = getelementptr i8, ptr %199, i32 144
  tail call void @msm_writel(i32 noundef 0, ptr noundef %208) #8
  %209 = getelementptr i8, ptr %199, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %209) #8
  %210 = getelementptr i8, ptr %199, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %210) #8
  %211 = getelementptr i8, ptr %199, i32 404
  tail call void @msm_writel(i32 noundef 0, ptr noundef %211) #8
  %212 = getelementptr i8, ptr %199, i32 400
  tail call void @msm_writel(i32 noundef 0, ptr noundef %212) #8
  %213 = getelementptr i8, ptr %199, i32 532
  tail call void @msm_writel(i32 noundef 0, ptr noundef %213) #8
  %214 = getelementptr i8, ptr %199, i32 528
  tail call void @msm_writel(i32 noundef 0, ptr noundef %214) #8
  %215 = load ptr, ptr %198, align 4
  %216 = getelementptr i8, ptr %215, i32 20
  tail call void @msm_writel(i32 noundef 3, ptr noundef %216) #8
  tail call void @msm_writel(i32 noundef 0, ptr noundef %199) #8
  %217 = getelementptr i8, ptr %199, i32 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %217) #8
  %218 = getelementptr i8, ptr %199, i32 8
  tail call void @msm_writel(i32 noundef 10, ptr noundef %218) #8
  %219 = shl nuw nsw i32 %203, 6
  %220 = getelementptr i8, ptr %199, i32 24
  tail call void @msm_writel(i32 noundef %219, ptr noundef %220) #8
  %221 = getelementptr i8, ptr %199, i32 128
  tail call void @msm_writel(i32 noundef 0, ptr noundef %221) #8
  %222 = getelementptr i8, ptr %199, i32 132
  tail call void @msm_writel(i32 noundef 0, ptr noundef %222) #8
  %223 = getelementptr i8, ptr %199, i32 136
  tail call void @msm_writel(i32 noundef 10, ptr noundef %223) #8
  %224 = getelementptr i8, ptr %199, i32 152
  tail call void @msm_writel(i32 noundef %219, ptr noundef %224) #8
  %225 = getelementptr i8, ptr %199, i32 256
  tail call void @msm_writel(i32 noundef 0, ptr noundef %225) #8
  %226 = getelementptr i8, ptr %199, i32 260
  tail call void @msm_writel(i32 noundef 0, ptr noundef %226) #8
  %227 = getelementptr i8, ptr %199, i32 264
  tail call void @msm_writel(i32 noundef 10, ptr noundef %227) #8
  %228 = getelementptr i8, ptr %199, i32 280
  tail call void @msm_writel(i32 noundef %219, ptr noundef %228) #8
  %229 = getelementptr i8, ptr %199, i32 384
  tail call void @msm_writel(i32 noundef 0, ptr noundef %229) #8
  %230 = getelementptr i8, ptr %199, i32 388
  tail call void @msm_writel(i32 noundef 0, ptr noundef %230) #8
  %231 = getelementptr i8, ptr %199, i32 392
  tail call void @msm_writel(i32 noundef 10, ptr noundef %231) #8
  %232 = select i1 %204, i32 4, i32 70
  %233 = getelementptr i8, ptr %199, i32 408
  tail call void @msm_writel(i32 noundef %232, ptr noundef %233) #8
  %234 = getelementptr i8, ptr %199, i32 512
  tail call void @msm_writel(i32 noundef 0, ptr noundef %234) #8
  %235 = getelementptr i8, ptr %199, i32 516
  tail call void @msm_writel(i32 noundef 0, ptr noundef %235) #8
  %236 = getelementptr i8, ptr %199, i32 520
  tail call void @msm_writel(i32 noundef 138, ptr noundef %236) #8
  %237 = select i1 %204, i32 1, i32 65
  %238 = getelementptr i8, ptr %199, i32 536
  tail call void @msm_writel(i32 noundef %237, ptr noundef %238) #8
  %239 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %240 = load i32, ptr %239, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %240) #8
  br label %241

241:                                              ; preds = %194, %135, %48, %16
  %242 = phi i32 [ -22, %16 ], [ -22, %48 ], [ -22, %135 ], [ 0, %194 ]
  ret i32 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_7nm_phy_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #8
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %4, i32 60
  %6 = tail call i32 @msm_readl(ptr noundef %5) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %14) #8
  %15 = getelementptr i8, ptr %3, i32 36
  %16 = tail call i32 @msm_readl(ptr noundef %15) #8
  %17 = and i32 %16, -32
  tail call void @msm_writel(i32 noundef %17, ptr noundef %15) #8
  %18 = getelementptr i8, ptr %3, i32 160
  tail call void @msm_writel(i32 noundef 0, ptr noundef %18) #8
  tail call void @msm_writel(i32 noundef 0, ptr noundef %15) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %19 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %20) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_7nm_pll_save_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 340
  %11 = tail call i32 @msm_readl(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 4, i32 3
  %13 = trunc i32 %11 to i8
  %14 = and i8 %13, 3
  store i8 %14, ptr %12, align 2
  %15 = getelementptr i8, ptr %7, i32 16
  %16 = tail call i32 @msm_readl(ptr noundef %15) #8
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 15
  %19 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 4, i32 1
  store i8 %18, ptr %19, align 4
  %20 = lshr i8 %17, 4
  %21 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 4, i32 2
  store i8 %20, ptr %21, align 1
  %22 = getelementptr i8, ptr %7, i32 20
  %23 = tail call i32 @msm_readl(ptr noundef %22) #8
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 3
  %26 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 4, i32 4
  store i8 %25, ptr %26, align 1
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.msm_dsi_phy, ptr %27, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = load i8, ptr %12, align 2
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr %19, align 4
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %21, align 1
  %35 = zext i8 %34 to i32
  %36 = zext i8 %25 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %36) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_7nm_pll_restore_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 340
  %11 = tail call i32 @msm_readl(ptr noundef %10) #8
  %12 = and i32 %11, -4
  %13 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 4, i32 3
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = or i32 %12, %15
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.msm_dsi_phy, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 340
  tail call void @msm_writel(i32 noundef %16, ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 4, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 4, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 4
  %28 = or i32 %27, %23
  %29 = getelementptr i8, ptr %7, i32 16
  tail call void @msm_writel(i32 noundef %28, ptr noundef %29) #8
  %30 = getelementptr i8, ptr %7, i32 20
  %31 = tail call i32 @msm_readl(ptr noundef %30) #8
  %32 = and i32 %31, -4
  %33 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 4, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %32, %35
  tail call void @msm_writel(i32 noundef %36, ptr noundef %30) #8
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %3, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = tail call i32 @dsi_pll_7nm_vco_set_rate(ptr noundef %37, i32 noundef %40, i32 noundef 19200000)
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %44) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dsi_7nm_set_continuous_clock(ptr nocapture noundef readonly %0, i1 noundef returned zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 164
  %6 = tail call i32 @msm_readl(ptr noundef %5) #8
  %7 = and i32 %6, -97
  %8 = select i1 %1, i32 96, i32 0
  %9 = or i32 %7, %8
  tail call void @msm_writel(i32 noundef %9, ptr noundef %5) #8
  ret i1 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_pll_save_state(ptr noundef) local_unnamed_addr #2

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
declare dso_local ptr @__devm_clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_7nm_vco_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i32 @msm_readl(ptr noundef %6) #8
  %8 = or i32 %7, 32
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  tail call void @msm_writel(i32 noundef %8, ptr noundef %12) #8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 40
  tail call void @msm_writel(i32 noundef 192, ptr noundef %16) #8
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.msm_dsi_phy, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 36
  %27 = tail call i32 @msm_readl(ptr noundef %26) #8
  %28 = or i32 %27, 32
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr inbounds %struct.msm_dsi_phy, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 36
  tail call void @msm_writel(i32 noundef %28, ptr noundef %32) #8
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr inbounds %struct.msm_dsi_phy, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 40
  tail call void @msm_writel(i32 noundef 192, ptr noundef %36) #8
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #8
  br label %38

38:                                               ; preds = %21, %1
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.msm_dsi_phy, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 60
  tail call void @msm_writel(i32 noundef 1, ptr noundef %42) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %43 = tail call i64 @ktime_get() #8
  %44 = add i64 %43, 5000000
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr inbounds %struct.msm_dsi_phy, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 432
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %61, %38
  %53 = tail call i64 @ktime_get() #8
  %54 = icmp sgt i64 %53, %44
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds %struct.msm_dsi_phy, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 432
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %70

61:                                               ; preds = %52
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 21474800) #8
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr inbounds %struct.msm_dsi_phy, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 432
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %52, label %70

70:                                               ; preds = %61, %55, %38
  %71 = phi i32 [ %60, %55 ], [ %49, %38 ], [ %67, %61 ]
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  %74 = load ptr, ptr %2, align 4
  br i1 %73, label %75, label %83

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.msm_dsi_phy, ptr %74, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %77, i32 noundef %71) #9
  %79 = load ptr, ptr %2, align 4
  %80 = getelementptr inbounds %struct.msm_dsi_phy, ptr %79, i32 0, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %81) #9
  br label %138

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.msm_dsi_phy, ptr %74, i32 0, i32 18
  store i8 1, ptr %84, align 4
  %85 = load ptr, ptr %2, align 4
  %86 = getelementptr inbounds %struct.msm_dsi_phy, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 296
  tail call void @msm_writel(i32 noundef 1, ptr noundef %88) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %89 = load ptr, ptr %2, align 4
  %90 = getelementptr inbounds %struct.msm_dsi_phy, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %92) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %93 = load ptr, ptr %18, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %93, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.msm_dsi_phy, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 296
  tail call void @msm_writel(i32 noundef 1, ptr noundef %100) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %101 = load ptr, ptr %96, align 4
  %102 = getelementptr inbounds %struct.msm_dsi_phy, ptr %101, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %104) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  br label %105

105:                                              ; preds = %95, %83
  %106 = load ptr, ptr %2, align 4
  %107 = getelementptr inbounds %struct.msm_dsi_phy, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 48
  tail call void @msm_writel(i32 noundef 4, ptr noundef %109) #8
  %110 = load ptr, ptr %2, align 4
  %111 = getelementptr inbounds %struct.msm_dsi_phy, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 20
  %114 = tail call i32 @msm_readl(ptr noundef %113) #8
  %115 = or i32 %114, 48
  %116 = load ptr, ptr %2, align 4
  %117 = getelementptr inbounds %struct.msm_dsi_phy, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i8, ptr %118, i32 20
  tail call void @msm_writel(i32 noundef %115, ptr noundef %119) #8
  %120 = load ptr, ptr %18, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %138, label %122

122:                                              ; preds = %105
  %123 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %120, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.msm_dsi_phy, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %126, i32 48
  tail call void @msm_writel(i32 noundef 4, ptr noundef %127) #8
  %128 = load ptr, ptr %123, align 4
  %129 = getelementptr inbounds %struct.msm_dsi_phy, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr i8, ptr %130, i32 20
  %132 = tail call i32 @msm_readl(ptr noundef %131) #8
  %133 = or i32 %132, 48
  %134 = load ptr, ptr %123, align 4
  %135 = getelementptr inbounds %struct.msm_dsi_phy, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %136, i32 20
  tail call void @msm_writel(i32 noundef %133, ptr noundef %137) #8
  br label %138

138:                                              ; preds = %122, %105, %75
  %139 = phi i32 [ 0, %105 ], [ 0, %122 ], [ -110, %75 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_pll_7nm_vco_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 @msm_readl(ptr noundef %6) #8
  %8 = and i32 %7, -33
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 20
  tail call void @msm_writel(i32 noundef %8, ptr noundef %12) #8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 60
  tail call void @msm_writel(i32 noundef 0, ptr noundef %16) #8
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.msm_dsi_phy, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %20) #8
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.msm_dsi_phy, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 36
  %25 = tail call i32 @msm_readl(ptr noundef %24) #8
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.msm_dsi_phy, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %29) #8
  %30 = and i32 %25, -33
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.msm_dsi_phy, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 36
  tail call void @msm_writel(i32 noundef %30, ptr noundef %34) #8
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #8
  %36 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.msm_dsi_phy, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 20
  %45 = tail call i32 @msm_readl(ptr noundef %44) #8
  %46 = and i32 %45, -33
  %47 = load ptr, ptr %40, align 4
  %48 = getelementptr inbounds %struct.msm_dsi_phy, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 20
  tail call void @msm_writel(i32 noundef %46, ptr noundef %50) #8
  %51 = load ptr, ptr %36, align 4
  %52 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.msm_dsi_phy, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %56) #8
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr inbounds %struct.msm_dsi_phy, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 36
  %61 = tail call i32 @msm_readl(ptr noundef %60) #8
  %62 = load ptr, ptr %52, align 4
  %63 = getelementptr inbounds %struct.msm_dsi_phy, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %65) #8
  %66 = and i32 %61, -33
  %67 = load ptr, ptr %52, align 4
  %68 = getelementptr inbounds %struct.msm_dsi_phy, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 36
  tail call void @msm_writel(i32 noundef %66, ptr noundef %70) #8
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #8
  br label %72

72:                                               ; preds = %39, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %73 = load ptr, ptr %2, align 4
  %74 = getelementptr inbounds %struct.msm_dsi_phy, ptr %73, i32 0, i32 18
  store i8 0, ptr %74, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_7nm_vco_recalc_rate(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 224
  %8 = tail call i32 @msm_readl(ptr noundef %7) #8
  %9 = and i32 %8, 255
  %10 = getelementptr i8, ptr %6, i32 228
  %11 = tail call i32 @msm_readl(ptr noundef %10) #8
  %12 = getelementptr i8, ptr %6, i32 232
  %13 = tail call i32 @msm_readl(ptr noundef %12) #8
  %14 = shl i32 %13, 8
  %15 = and i32 %14, 65280
  %16 = or i32 %15, %11
  %17 = getelementptr i8, ptr %6, i32 236
  %18 = tail call i32 @msm_readl(ptr noundef %17) #8
  %19 = shl i32 %18, 16
  %20 = and i32 %19, 196608
  %21 = or i32 %16, %20
  %22 = zext i32 %9 to i64
  %23 = mul nuw nsw i64 %22, 38400000
  %24 = zext i32 %21 to i64
  %25 = mul nuw nsw i64 %24, 38400000
  %26 = lshr i64 %25, 18
  %27 = add nuw nsw i64 %26, %23
  %28 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 2
  store i64 %27, ptr %28, align 8
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.msm_dsi_phy, ptr %29, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = trunc i64 %27 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %31, i32 noundef %32, i32 noundef %9, i32 noundef %21) #8
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dsi_pll_7nm_clk_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  %4 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 1
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
define internal i32 @dsi_pll_7nm_vco_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %7, i32 noundef %1, i32 noundef %2) #8
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  %10 = shl nuw nsw i64 %8, 18
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2327733145514495953, i64 %10) #10, !srcloc !21
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2327733145514495953, i64 %10, i64 %11, i32 0) #10, !srcloc !22
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %15, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = icmp ult i32 %1, 1000000001
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = icmp ult i32 %1, -1794967295
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %1, -1274967295
  %26 = select i1 %25, i32 0, i32 64
  br label %27

27:                                               ; preds = %24, %22, %20, %3
  %28 = phi i32 [ 40, %3 ], [ 160, %20 ], [ 32, %22 ], [ %26, %24 ]
  %29 = extractvalue { i64, i32 } %12, 0
  %30 = lshr i64 %29, 25
  %31 = lshr i64 %29, 43
  %32 = trunc i64 %30 to i32
  %33 = trunc i64 %31 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17) #8
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.msm_dsi_phy, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 188
  tail call void @msm_writel(i32 noundef 18, ptr noundef %37) #8
  %38 = getelementptr i8, ptr %36, i32 224
  tail call void @msm_writel(i32 noundef %33, ptr noundef %38) #8
  %39 = and i32 %32, 255
  %40 = getelementptr i8, ptr %36, i32 228
  tail call void @msm_writel(i32 noundef %39, ptr noundef %40) #8
  %41 = lshr i32 %32, 8
  %42 = and i32 %41, 255
  %43 = getelementptr i8, ptr %36, i32 232
  tail call void @msm_writel(i32 noundef %42, ptr noundef %43) #8
  %44 = lshr i32 %32, 16
  %45 = and i32 %44, 3
  %46 = getelementptr i8, ptr %36, i32 236
  tail call void @msm_writel(i32 noundef %45, ptr noundef %46) #8
  %47 = getelementptr i8, ptr %36, i32 344
  tail call void @msm_writel(i32 noundef 64, ptr noundef %47) #8
  %48 = getelementptr i8, ptr %36, i32 404
  tail call void @msm_writel(i32 noundef 6, ptr noundef %48) #8
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds %struct.msm_dsi_phy, ptr %49, i32 0, i32 16
  %51 = load i8, ptr %50, align 1, !range !9
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 16, i32 0
  %54 = getelementptr i8, ptr %36, i32 592
  tail call void @msm_writel(i32 noundef %53, ptr noundef %54) #8
  %55 = getelementptr i8, ptr %36, i32 412
  tail call void @msm_writel(i32 noundef %28, ptr noundef %55) #8
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr inbounds %struct.msm_dsi_phy, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.msm_dsi_phy, ptr %56, i32 0, i32 13
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %60, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %27
  %66 = load i64, ptr %9, align 8
  %67 = icmp ugt i64 %66, 3099999999
  %68 = select i1 %67, i8 3, i8 1
  %69 = icmp ult i64 %66, 1520000000
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = icmp ult i64 %66, 2990000000
  %72 = zext i1 %71 to i32
  br label %73

73:                                               ; preds = %70, %65, %27
  %74 = phi i8 [ 1, %27 ], [ %68, %65 ], [ %68, %70 ]
  %75 = phi i32 [ 0, %27 ], [ 8, %65 ], [ %72, %70 ]
  %76 = zext i8 %74 to i32
  %77 = getelementptr i8, ptr %58, i32 600
  tail call void @msm_writel(i32 noundef %76, ptr noundef %77) #8
  %78 = getelementptr i8, ptr %58, i32 576
  tail call void @msm_writel(i32 noundef %75, ptr noundef %78) #8
  %79 = getelementptr i8, ptr %58, i32 24
  tail call void @msm_writel(i32 noundef 1, ptr noundef %79) #8
  %80 = getelementptr i8, ptr %58, i32 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %80) #8
  %81 = getelementptr i8, ptr %58, i32 16
  tail call void @msm_writel(i32 noundef 0, ptr noundef %81) #8
  %82 = getelementptr i8, ptr %58, i32 32
  tail call void @msm_writel(i32 noundef 0, ptr noundef %82) #8
  %83 = getelementptr i8, ptr %58, i32 36
  tail call void @msm_writel(i32 noundef 78, ptr noundef %83) #8
  %84 = getelementptr i8, ptr %58, i32 68
  tail call void @msm_writel(i32 noundef 64, ptr noundef %84) #8
  %85 = getelementptr i8, ptr %58, i32 104
  tail call void @msm_writel(i32 noundef 186, ptr noundef %85) #8
  %86 = getelementptr i8, ptr %58, i32 120
  tail call void @msm_writel(i32 noundef 12, ptr noundef %86) #8
  %87 = getelementptr i8, ptr %58, i32 168
  tail call void @msm_writel(i32 noundef 0, ptr noundef %87) #8
  %88 = getelementptr i8, ptr %58, i32 184
  tail call void @msm_writel(i32 noundef 0, ptr noundef %88) #8
  %89 = getelementptr i8, ptr %58, i32 200
  tail call void @msm_writel(i32 noundef 8, ptr noundef %89) #8
  %90 = getelementptr i8, ptr %58, i32 352
  tail call void @msm_writel(i32 noundef 10, ptr noundef %90) #8
  %91 = getelementptr i8, ptr %58, i32 360
  tail call void @msm_writel(i32 noundef 192, ptr noundef %91) #8
  %92 = getelementptr i8, ptr %58, i32 368
  tail call void @msm_writel(i32 noundef 132, ptr noundef %92) #8
  tail call void @msm_writel(i32 noundef 130, ptr noundef %92) #8
  %93 = getelementptr i8, ptr %58, i32 376
  tail call void @msm_writel(i32 noundef 76, ptr noundef %93) #8
  %94 = getelementptr i8, ptr %58, i32 400
  tail call void @msm_writel(i32 noundef 128, ptr noundef %94) #8
  %95 = getelementptr i8, ptr %58, i32 144
  tail call void @msm_writel(i32 noundef 41, ptr noundef %95) #8
  tail call void @msm_writel(i32 noundef 47, ptr noundef %95) #8
  %96 = getelementptr i8, ptr %58, i32 148
  tail call void @msm_writel(i32 noundef 42, ptr noundef %96) #8
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr inbounds %struct.msm_dsi_phy, ptr %97, i32 0, i32 13
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %99, i32 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 34, i32 63
  tail call void @msm_writel(i32 noundef %104, ptr noundef %96) #8
  %105 = load ptr, ptr %4, align 4
  %106 = getelementptr inbounds %struct.msm_dsi_phy, ptr %105, i32 0, i32 13
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %107, i32 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %73
  %113 = getelementptr i8, ptr %58, i32 608
  tail call void @msm_writel(i32 noundef 34, ptr noundef %113) #8
  %114 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %0, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %115, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.msm_dsi_phy, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i8, ptr %121, i32 608
  tail call void @msm_writel(i32 noundef 34, ptr noundef %122) #8
  br label %123

123:                                              ; preds = %117, %112, %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_cphy_timing_calc_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2155864250}
!11 = !{i64 3434767}
!12 = !{i64 2155867760}
!13 = !{i64 2155868094}
!14 = !{i64 2155874165}
!15 = !{i64 2155850444}
!16 = !{i64 2155845729}
!17 = !{i64 2155846105}
!18 = !{i64 2155848846}
!19 = !{i64 2155849039}
!20 = !{i64 2155852357}
!21 = !{i64 901554, i64 901581}
!22 = !{i64 902249, i64 902276, i64 902309, i64 902330, i64 902357, i64 902383}
!23 = !{i64 2155843630}
