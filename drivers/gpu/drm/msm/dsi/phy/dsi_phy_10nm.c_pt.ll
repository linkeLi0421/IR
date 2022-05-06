; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c"
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
%struct.dsi_pll_10nm = type { %struct.clk_hw, ptr, i64, %struct.spinlock, %struct.pll_10nm_cached_state, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_10nm_cached_state = type { i32, i8, i8, i8, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@dsi_phy_10nm_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_10nm_init, ptr @dsi_10nm_phy_enable, ptr @dsi_10nm_phy_disable, ptr @dsi_10nm_pll_save_state, ptr @dsi_10nm_pll_restore_state, ptr null }, i32 1000000000, i32 -794967296, [2 x i32] [i32 183059456, i32 183067648], i32 2, i32 0, i8 0, i8 1 }, align 4
@dsi_phy_10nm_8998_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_10nm_init, ptr @dsi_10nm_phy_enable, ptr @dsi_10nm_phy_disable, ptr @dsi_10nm_pll_save_state, ptr @dsi_10nm_pll_restore_state, ptr null }, i32 1000000000, i32 -794967296, [2 x i32] [i32 211371008, i32 211379200], i32 2, i32 1, i8 0, i8 1 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"DSI PLL%d\0A\00", align 1
@pll_10nm_list = internal unnamed_addr global [2 x ptr] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", align 1
@clk_ops_dsi_pll_10nm_vco = internal constant %struct.clk_ops { ptr @dsi_pll_10nm_vco_prepare, ptr @dsi_pll_10nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_10nm_vco_recalc_rate, ptr @dsi_pll_10nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_10nm_vco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DSI%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dsi%dvco_clk\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"dsi%d_pll_out_div_clk\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"dsi%d_pll_bit_clk\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"dsi%d_phy_pll_out_byteclk\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"dsi%d_pll_by_2_bit_clk\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"dsi%d_pll_post_out_div_clk\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"dsi%d_pclk_mux\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"dsi%d_phy_pll_out_dsiclk\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"*ERROR* PLL(%d) lock failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"*ERROR* DSI PLL(%d) lock failed, status=0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"DSI PLL%d returning vco rate = %lu, dec = %x, frac = %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"DSI PLL%d rate=%lu, parent's=%lu\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"SSC not enabled\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", align 1
@__func__.dsi_10nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_10nm_phy_enable\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"\014PLL turned on before configuring PHY\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\013Ref gen not ready. Aborting\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"*ERROR* %s: set pll usecase failed, %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"DSI%d PHY enabled\0A\00", align 1
@__const.dsi_phy_hw_v3_0_lane_settings.tx_dctrl = private unnamed_addr constant [5 x i8] c"\00\00\00\04\01", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"\014Turning OFF PHY while PLL is on\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"DSI%d PHY disabled\0A\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"DSI PLL%d outdiv %x bit_clk_div %x pix_clk_div %x pll_mux %x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_10nm_init(ptr noundef %0) #0 {
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
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 40, i32 noundef 3520) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %157, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %17) #9
  %18 = load i32, ptr %16, align 4
  %19 = getelementptr [2 x ptr], ptr @pll_10nm_list, i32 0, i32 %18
  store ptr %13, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %13, i32 0, i32 3
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %13, i32 0, i32 1
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %23, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #9
  %25 = getelementptr inbounds i8, ptr %8, i32 20
  store i32 1, ptr %25, align 4, !annotation !8
  store ptr %4, ptr %8, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @clk_ops_dsi_pll_10nm_vco, ptr %26, align 4
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
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %18) #9
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr inbounds %struct.msm_dsi_phy, ptr %33, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %35) #9
  %37 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %8, ptr %37, align 8
  %38 = call i32 @devm_clk_hw_register(ptr noundef %32, ptr noundef nonnull %13) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  br label %155

41:                                               ; preds = %15
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %44) #9
  %46 = load ptr, ptr %21, align 4
  %47 = getelementptr inbounds %struct.msm_dsi_phy, ptr %46, i32 0, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %48) #9
  %50 = load ptr, ptr %21, align 4
  %51 = getelementptr inbounds %struct.msm_dsi_phy, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 320
  %54 = call ptr @__devm_clk_hw_register_divider(ptr noundef %32, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %53, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 2, ptr noundef null, ptr noundef null) #9
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %152, label %56

56:                                               ; preds = %41
  %57 = load ptr, ptr %21, align 4
  %58 = getelementptr inbounds %struct.msm_dsi_phy, ptr %57, i32 0, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %59) #9
  %61 = load ptr, ptr %21, align 4
  %62 = getelementptr inbounds %struct.msm_dsi_phy, ptr %61, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %63) #9
  %65 = load ptr, ptr %21, align 4
  %66 = getelementptr inbounds %struct.msm_dsi_phy, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 16
  %69 = call ptr @__devm_clk_hw_register_divider(ptr noundef %32, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %68, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef %20) #9
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %152, label %71

71:                                               ; preds = %56
  %72 = load ptr, ptr %21, align 4
  %73 = getelementptr inbounds %struct.msm_dsi_phy, ptr %72, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %74) #9
  %76 = load ptr, ptr %21, align 4
  %77 = getelementptr inbounds %struct.msm_dsi_phy, ptr %76, i32 0, i32 9
  %78 = load i32, ptr %77, align 4
  %79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %78) #9
  %80 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %32, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4, i32 noundef 1, i32 noundef 8) #9
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %152, label %82

82:                                               ; preds = %71
  store ptr %80, ptr %24, align 4
  %83 = load ptr, ptr %21, align 4
  %84 = getelementptr inbounds %struct.msm_dsi_phy, ptr %83, i32 0, i32 9
  %85 = load i32, ptr %84, align 4
  %86 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %85) #9
  %87 = load ptr, ptr %21, align 4
  %88 = getelementptr inbounds %struct.msm_dsi_phy, ptr %87, i32 0, i32 9
  %89 = load i32, ptr %88, align 4
  %90 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %89) #9
  %91 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %32, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, i32 noundef 2) #9
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %152, label %93

93:                                               ; preds = %82
  %94 = load ptr, ptr %21, align 4
  %95 = getelementptr inbounds %struct.msm_dsi_phy, ptr %94, i32 0, i32 9
  %96 = load i32, ptr %95, align 4
  %97 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %96) #9
  %98 = load ptr, ptr %21, align 4
  %99 = getelementptr inbounds %struct.msm_dsi_phy, ptr %98, i32 0, i32 9
  %100 = load i32, ptr %99, align 4
  %101 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %100) #9
  %102 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %32, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, i32 noundef 4) #9
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %152, label %104

104:                                              ; preds = %93
  %105 = load ptr, ptr %21, align 4
  %106 = getelementptr inbounds %struct.msm_dsi_phy, ptr %105, i32 0, i32 9
  %107 = load i32, ptr %106, align 4
  %108 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %107) #9
  %109 = load ptr, ptr %21, align 4
  %110 = getelementptr inbounds %struct.msm_dsi_phy, ptr %109, i32 0, i32 9
  %111 = load i32, ptr %110, align 4
  %112 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %111) #9
  %113 = load ptr, ptr %21, align 4
  %114 = getelementptr inbounds %struct.msm_dsi_phy, ptr %113, i32 0, i32 9
  %115 = load i32, ptr %114, align 4
  %116 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %115) #9
  %117 = load ptr, ptr %21, align 4
  %118 = getelementptr inbounds %struct.msm_dsi_phy, ptr %117, i32 0, i32 9
  %119 = load i32, ptr %118, align 4
  %120 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %119) #9
  %121 = load ptr, ptr %21, align 4
  %122 = getelementptr inbounds %struct.msm_dsi_phy, ptr %121, i32 0, i32 9
  %123 = load i32, ptr %122, align 4
  %124 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %123) #9
  store ptr %3, ptr %10, align 4
  %125 = getelementptr inbounds ptr, ptr %10, i32 1
  store ptr %5, ptr %125, align 4
  %126 = getelementptr inbounds ptr, ptr %10, i32 2
  store ptr %6, ptr %126, align 4
  %127 = getelementptr inbounds ptr, ptr %10, i32 3
  store ptr %7, ptr %127, align 4
  %128 = load ptr, ptr %21, align 4
  %129 = getelementptr inbounds %struct.msm_dsi_phy, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr i8, ptr %130, i32 20
  %132 = call ptr @__devm_clk_hw_register_mux(ptr noundef %32, ptr noundef null, ptr noundef nonnull %2, i8 noundef zeroext 4, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %131, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #9
  %133 = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %152, label %134

134:                                              ; preds = %104
  %135 = load ptr, ptr %21, align 4
  %136 = getelementptr inbounds %struct.msm_dsi_phy, ptr %135, i32 0, i32 9
  %137 = load i32, ptr %136, align 4
  %138 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %137) #9
  %139 = load ptr, ptr %21, align 4
  %140 = getelementptr inbounds %struct.msm_dsi_phy, ptr %139, i32 0, i32 9
  %141 = load i32, ptr %140, align 4
  %142 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %141) #9
  %143 = load ptr, ptr %21, align 4
  %144 = getelementptr inbounds %struct.msm_dsi_phy, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr i8, ptr %145, i32 16
  %147 = call ptr @__devm_clk_hw_register_divider(ptr noundef %32, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %146, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef %20) #9
  %148 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %152, label %149

149:                                              ; preds = %134
  %150 = getelementptr %struct.clk_hw_onecell_data, ptr %23, i32 2
  store ptr %147, ptr %150, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  %151 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  store ptr %13, ptr %151, align 4
  call void @msm_dsi_phy_pll_save_state(ptr noundef %0) #9
  br label %157

152:                                              ; preds = %134, %104, %93, %82, %71, %56, %41
  %153 = phi ptr [ %54, %41 ], [ %69, %56 ], [ %80, %71 ], [ %91, %82 ], [ %102, %93 ], [ %132, %104 ], [ %147, %134 ]
  %154 = ptrtoint ptr %153 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  br label %155

155:                                              ; preds = %152, %40
  %156 = phi i32 [ %38, %40 ], [ %154, %152 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %156) #9
  br label %157

157:                                              ; preds = %155, %149, %1
  %158 = phi i32 [ %156, %155 ], [ 0, %149 ], [ -12, %1 ]
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_10nm_phy_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [5 x i8], align 1
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19) #9
  %7 = tail call i32 @msm_dsi_dphy_timing_calc_v3(ptr noundef %4, ptr noundef %1) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dsi_10nm_phy_enable) #9
  br label %185

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 56
  %15 = tail call i32 @msm_readl(ptr noundef %14) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %20

20:                                               ; preds = %18, %12
  %21 = tail call i64 @ktime_get() #9
  %22 = add i64 %21, 1000000
  %23 = getelementptr i8, ptr %6, i32 236
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %32, %20
  %28 = tail call i64 @ktime_get() #9
  %29 = icmp sgt i64 %28, %22
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  br label %37

32:                                               ; preds = %27
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1073740) #9
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %27, label %37

37:                                               ; preds = %32, %30, %20
  %38 = phi i32 [ %31, %30 ], [ %24, %20 ], [ %34, %32 ]
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %185

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %6, i32 36
  tail call void @msm_writel(i32 noundef 96, ptr noundef %44) #9
  %45 = getelementptr i8, ptr %6, i32 56
  tail call void @msm_writel(i32 noundef 0, ptr noundef %45) #9
  %46 = getelementptr i8, ptr %6, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %46) #9
  %47 = getelementptr i8, ptr %6, i32 24
  tail call void @msm_writel(i32 noundef 16, ptr noundef %47) #9
  %48 = getelementptr i8, ptr %6, i32 32
  tail call void @msm_writel(i32 noundef 89, ptr noundef %48) #9
  %49 = getelementptr i8, ptr %6, i32 48
  tail call void @msm_writel(i32 noundef 33, ptr noundef %49) #9
  %50 = getelementptr i8, ptr %6, i32 52
  tail call void @msm_writel(i32 noundef 132, ptr noundef %50) #9
  %51 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 15
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = getelementptr i8, ptr %6, i32 172
  tail call void @msm_writel(i32 noundef %53, ptr noundef %54) #9
  %55 = load i32, ptr %4, align 4
  %56 = getelementptr i8, ptr %6, i32 176
  tail call void @msm_writel(i32 noundef %55, ptr noundef %56) #9
  %57 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %6, i32 180
  tail call void @msm_writel(i32 noundef %58, ptr noundef %59) #9
  %60 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %6, i32 184
  tail call void @msm_writel(i32 noundef %61, ptr noundef %62) #9
  %63 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %6, i32 188
  tail call void @msm_writel(i32 noundef %64, ptr noundef %65) #9
  %66 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %6, i32 192
  tail call void @msm_writel(i32 noundef %67, ptr noundef %68) #9
  %69 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %6, i32 196
  tail call void @msm_writel(i32 noundef %70, ptr noundef %71) #9
  %72 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr i8, ptr %6, i32 200
  tail call void @msm_writel(i32 noundef %73, ptr noundef %74) #9
  %75 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i8, ptr %6, i32 204
  tail call void @msm_writel(i32 noundef %76, ptr noundef %77) #9
  %78 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = shl i32 %81, 3
  %83 = or i32 %82, %79
  %84 = getelementptr i8, ptr %6, i32 208
  tail call void @msm_writel(i32 noundef %83, ptr noundef %84) #9
  %85 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 10
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %6, i32 212
  tail call void @msm_writel(i32 noundef %86, ptr noundef %87) #9
  %88 = getelementptr i8, ptr %6, i32 216
  tail call void @msm_writel(i32 noundef 0, ptr noundef %88) #9
  tail call void @msm_writel(i32 noundef 127, ptr noundef %44) #9
  %89 = tail call i32 @msm_readl(ptr noundef %44) #9
  %90 = or i32 %89, 31
  tail call void @msm_writel(i32 noundef %90, ptr noundef %44) #9
  %91 = getelementptr i8, ptr %6, i32 152
  tail call void @msm_writel(i32 noundef 31, ptr noundef %91) #9
  %92 = getelementptr i8, ptr %6, i32 44
  tail call void @msm_writel(i32 noundef 64, ptr noundef %92) #9
  %93 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %5, align 4
  %96 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %94, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.msm_dsi_phy, ptr %97, i32 0, i32 9
  %99 = load i32, ptr %98, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %99) #9
  %100 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 14
  %101 = load i32, ptr %100, align 4
  switch i32 %101, label %112 [
    i32 0, label %115
    i32 1, label %102
    i32 2, label %111
  ]

102:                                              ; preds = %43
  %103 = load ptr, ptr %96, align 4
  %104 = getelementptr inbounds %struct.msm_dsi_phy, ptr %103, i32 0, i32 9
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  %107 = srem i32 %106, 2
  %108 = getelementptr [2 x ptr], ptr @pll_10nm_list, i32 0, i32 %107
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %94, i32 0, i32 5
  store ptr %109, ptr %110, align 4
  br label %115

111:                                              ; preds = %43
  br label %115

112:                                              ; preds = %43
  %113 = load ptr, ptr %0, align 4
  %114 = getelementptr inbounds %struct.platform_device, ptr %113, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dsi_10nm_phy_enable, i32 noundef -22) #9
  br label %185

115:                                              ; preds = %111, %102, %43
  %116 = phi i32 [ 4, %111 ], [ 0, %102 ], [ %101, %43 ]
  %117 = getelementptr i8, ptr %95, i32 20
  tail call void @msm_writel(i32 noundef %116, ptr noundef %117) #9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @__const.dsi_phy_hw_v3_0_lane_settings.tx_dctrl, i32 5, i1 false) #9
  %118 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 4
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %121, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %115
  %127 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 3
  store i8 2, ptr %127, align 1
  br label %128

128:                                              ; preds = %126, %115
  %129 = getelementptr i8, ptr %119, i32 36
  tail call void @msm_writel(i32 noundef 85, ptr noundef %129) #9
  %130 = getelementptr i8, ptr %119, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %130) #9
  %131 = getelementptr i8, ptr %119, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %131) #9
  %132 = getelementptr i8, ptr %119, i32 24
  tail call void @msm_writel(i32 noundef 136, ptr noundef %132) #9
  %133 = getelementptr i8, ptr %119, i32 164
  tail call void @msm_writel(i32 noundef 85, ptr noundef %133) #9
  %134 = getelementptr i8, ptr %119, i32 168
  tail call void @msm_writel(i32 noundef 0, ptr noundef %134) #9
  %135 = getelementptr i8, ptr %119, i32 148
  tail call void @msm_writel(i32 noundef 0, ptr noundef %135) #9
  %136 = getelementptr i8, ptr %119, i32 152
  tail call void @msm_writel(i32 noundef 136, ptr noundef %136) #9
  %137 = getelementptr i8, ptr %119, i32 292
  tail call void @msm_writel(i32 noundef 85, ptr noundef %137) #9
  %138 = getelementptr i8, ptr %119, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %138) #9
  %139 = getelementptr i8, ptr %119, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %139) #9
  %140 = getelementptr i8, ptr %119, i32 280
  tail call void @msm_writel(i32 noundef 136, ptr noundef %140) #9
  %141 = getelementptr i8, ptr %119, i32 420
  tail call void @msm_writel(i32 noundef 85, ptr noundef %141) #9
  %142 = getelementptr i8, ptr %119, i32 424
  tail call void @msm_writel(i32 noundef 0, ptr noundef %142) #9
  %143 = getelementptr i8, ptr %119, i32 404
  tail call void @msm_writel(i32 noundef 0, ptr noundef %143) #9
  %144 = getelementptr i8, ptr %119, i32 408
  tail call void @msm_writel(i32 noundef 136, ptr noundef %144) #9
  %145 = getelementptr i8, ptr %119, i32 548
  tail call void @msm_writel(i32 noundef 85, ptr noundef %145) #9
  %146 = getelementptr i8, ptr %119, i32 552
  tail call void @msm_writel(i32 noundef 0, ptr noundef %146) #9
  %147 = getelementptr i8, ptr %119, i32 532
  tail call void @msm_writel(i32 noundef 0, ptr noundef %147) #9
  %148 = getelementptr i8, ptr %119, i32 536
  tail call void @msm_writel(i32 noundef 136, ptr noundef %148) #9
  %149 = load ptr, ptr %118, align 4
  %150 = getelementptr i8, ptr %149, i32 40
  tail call void @msm_writel(i32 noundef 3, ptr noundef %150) #9
  br label %151

151:                                              ; preds = %151, %128
  %152 = phi i32 [ 0, %128 ], [ %172, %151 ]
  %153 = shl i32 %152, 7
  %154 = getelementptr i8, ptr %119, i32 %153
  tail call void @msm_writel(i32 noundef 0, ptr noundef %154) #9
  %155 = or i32 %153, 4
  %156 = getelementptr i8, ptr %119, i32 %155
  tail call void @msm_writel(i32 noundef 0, ptr noundef %156) #9
  %157 = or i32 %153, 8
  %158 = getelementptr i8, ptr %119, i32 %157
  tail call void @msm_writel(i32 noundef 0, ptr noundef %158) #9
  %159 = icmp eq i32 %152, 4
  %160 = select i1 %159, i32 128, i32 0
  %161 = or i32 %153, 12
  %162 = getelementptr i8, ptr %119, i32 %161
  tail call void @msm_writel(i32 noundef %160, ptr noundef %162) #9
  %163 = or i32 %153, 28
  %164 = getelementptr i8, ptr %119, i32 %163
  tail call void @msm_writel(i32 noundef 0, ptr noundef %164) #9
  %165 = or i32 %153, 32
  %166 = getelementptr i8, ptr %119, i32 %165
  tail call void @msm_writel(i32 noundef 0, ptr noundef %166) #9
  %167 = getelementptr [5 x i8], ptr %3, i32 0, i32 %152
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = or i32 %153, 44
  %171 = getelementptr i8, ptr %119, i32 %170
  tail call void @msm_writel(i32 noundef %169, ptr noundef %171) #9
  %172 = add nuw nsw i32 %152, 1
  %173 = icmp eq i32 %172, 5
  br i1 %173, label %174, label %151

174:                                              ; preds = %151
  %175 = load ptr, ptr %120, align 4
  %176 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %175, i32 0, i32 6
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = getelementptr i8, ptr %119, i32 428
  tail call void @msm_writel(i32 noundef 5, ptr noundef %181) #9
  tail call void @msm_writel(i32 noundef 4, ptr noundef %181) #9
  br label %182

182:                                              ; preds = %180, %174
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #9
  %183 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %184 = load i32, ptr %183, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %184) #9
  br label %185

185:                                              ; preds = %182, %112, %41, %9
  %186 = phi i32 [ -22, %9 ], [ -22, %41 ], [ -22, %112 ], [ 0, %182 ]
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_10nm_phy_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19) #9
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %4, i32 56
  %6 = tail call i32 @msm_readl(ptr noundef %5) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %14) #9
  %15 = getelementptr i8, ptr %3, i32 36
  %16 = tail call i32 @msm_readl(ptr noundef %15) #9
  %17 = and i32 %16, -32
  tail call void @msm_writel(i32 noundef %17, ptr noundef %15) #9
  %18 = getelementptr i8, ptr %3, i32 152
  tail call void @msm_writel(i32 noundef 0, ptr noundef %18) #9
  tail call void @msm_writel(i32 noundef 0, ptr noundef %15) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %19 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %20) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_10nm_pll_save_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 320
  %11 = tail call i32 @msm_readl(ptr noundef %10) #9
  %12 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 4, i32 3
  %13 = trunc i32 %11 to i8
  %14 = and i8 %13, 3
  store i8 %14, ptr %12, align 2
  %15 = getelementptr i8, ptr %7, i32 16
  %16 = tail call i32 @msm_readl(ptr noundef %15) #9
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 15
  %19 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 4, i32 1
  store i8 %18, ptr %19, align 4
  %20 = lshr i8 %17, 4
  %21 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 4, i32 2
  store i8 %20, ptr %21, align 1
  %22 = getelementptr i8, ptr %7, i32 20
  %23 = tail call i32 @msm_readl(ptr noundef %22) #9
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 3
  %26 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 4, i32 4
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %36) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_10nm_pll_restore_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 320
  %11 = tail call i32 @msm_readl(ptr noundef %10) #9
  %12 = and i32 %11, -4
  %13 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 4, i32 3
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = or i32 %12, %15
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.msm_dsi_phy, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 320
  tail call void @msm_writel(i32 noundef %16, ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 4, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 4, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 4
  %28 = or i32 %27, %23
  %29 = getelementptr i8, ptr %7, i32 16
  tail call void @msm_writel(i32 noundef %28, ptr noundef %29) #9
  %30 = getelementptr i8, ptr %7, i32 20
  %31 = tail call i32 @msm_readl(ptr noundef %30) #9
  %32 = and i32 %31, -4
  %33 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 4, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %32, %35
  tail call void @msm_writel(i32 noundef %36, ptr noundef %30) #9
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %3, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = tail call i32 @dsi_pll_10nm_vco_set_rate(ptr noundef %37, i32 noundef %40, i32 noundef 19200000)
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %44) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_pll_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_10nm_vco_prepare(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = tail call i32 @msm_readl(ptr noundef %8) #9
  %10 = or i32 %9, 32
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.msm_dsi_phy, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 36
  tail call void @msm_writel(i32 noundef %10, ptr noundef %14) #9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.msm_dsi_phy, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 36
  tail call void @msm_writel(i32 noundef 192, ptr noundef %18) #9
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #9
  %20 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.msm_dsi_phy, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 36
  %29 = tail call i32 @msm_readl(ptr noundef %28) #9
  %30 = or i32 %29, 32
  %31 = load ptr, ptr %24, align 4
  %32 = getelementptr inbounds %struct.msm_dsi_phy, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 36
  tail call void @msm_writel(i32 noundef %30, ptr noundef %34) #9
  %35 = load ptr, ptr %24, align 4
  %36 = getelementptr inbounds %struct.msm_dsi_phy, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 36
  tail call void @msm_writel(i32 noundef 192, ptr noundef %38) #9
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #9
  br label %40

40:                                               ; preds = %23, %1
  %41 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = tail call i32 @dsi_pll_10nm_vco_set_rate(ptr noundef %0, i32 noundef %43, i32 noundef 0)
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr inbounds %struct.msm_dsi_phy, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 56
  tail call void @msm_writel(i32 noundef 1, ptr noundef %48) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %49 = load ptr, ptr %2, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  %52 = tail call i64 @ktime_get() #9
  %53 = add i64 %52, 5000000
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.msm_dsi_phy, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 416
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %70, %40
  %62 = tail call i64 @ktime_get() #9
  %63 = icmp sgt i64 %62, %53
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.msm_dsi_phy, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 416
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  br label %79

70:                                               ; preds = %61
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 21474800) #9
  %72 = load ptr, ptr %2, align 4
  %73 = getelementptr inbounds %struct.msm_dsi_phy, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 416
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %61, label %79

79:                                               ; preds = %70, %64, %40
  %80 = phi i32 [ %69, %64 ], [ %58, %40 ], [ %76, %70 ]
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  %83 = load ptr, ptr %2, align 4
  br i1 %82, label %84, label %90

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.msm_dsi_phy, ptr %83, i32 0, i32 9
  %86 = load i32, ptr %85, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %51, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15, i32 noundef %86, i32 noundef %80) #9
  %87 = load ptr, ptr %2, align 4
  %88 = getelementptr inbounds %struct.msm_dsi_phy, ptr %87, i32 0, i32 9
  %89 = load i32, ptr %88, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, i32 noundef %89) #9
  br label %129

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.msm_dsi_phy, ptr %83, i32 0, i32 18
  store i8 1, ptr %91, align 4
  %92 = load ptr, ptr %2, align 4
  %93 = getelementptr inbounds %struct.msm_dsi_phy, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 20
  %96 = tail call i32 @msm_readl(ptr noundef %95) #9
  %97 = or i32 %96, 32
  %98 = load ptr, ptr %2, align 4
  %99 = getelementptr inbounds %struct.msm_dsi_phy, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 20
  tail call void @msm_writel(i32 noundef %97, ptr noundef %101) #9
  %102 = load ptr, ptr %20, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %90
  %105 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %102, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.msm_dsi_phy, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 20
  %110 = tail call i32 @msm_readl(ptr noundef %109) #9
  %111 = or i32 %110, 32
  %112 = load ptr, ptr %105, align 4
  %113 = getelementptr inbounds %struct.msm_dsi_phy, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %114, i32 20
  tail call void @msm_writel(i32 noundef %111, ptr noundef %115) #9
  br label %116

116:                                              ; preds = %104, %90
  %117 = load ptr, ptr %2, align 4
  %118 = getelementptr inbounds %struct.msm_dsi_phy, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 28
  tail call void @msm_writel(i32 noundef 1, ptr noundef %120) #9
  %121 = load ptr, ptr %20, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %121, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.msm_dsi_phy, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 28
  tail call void @msm_writel(i32 noundef 1, ptr noundef %128) #9
  br label %129

129:                                              ; preds = %123, %116, %84
  %130 = phi i32 [ -110, %84 ], [ 0, %123 ], [ 0, %116 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_pll_10nm_vco_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 @msm_readl(ptr noundef %6) #9
  %8 = and i32 %7, -33
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 20
  tail call void @msm_writel(i32 noundef %8, ptr noundef %12) #9
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 56
  tail call void @msm_writel(i32 noundef 0, ptr noundef %16) #9
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.msm_dsi_phy, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %20) #9
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.msm_dsi_phy, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 36
  %25 = tail call i32 @msm_readl(ptr noundef %24) #9
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.msm_dsi_phy, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 36
  tail call void @msm_writel(i32 noundef 0, ptr noundef %29) #9
  %30 = and i32 %25, -33
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.msm_dsi_phy, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 36
  tail call void @msm_writel(i32 noundef %30, ptr noundef %34) #9
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #9
  %36 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.msm_dsi_phy, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 20
  %45 = tail call i32 @msm_readl(ptr noundef %44) #9
  %46 = and i32 %45, -33
  %47 = load ptr, ptr %40, align 4
  %48 = getelementptr inbounds %struct.msm_dsi_phy, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 20
  tail call void @msm_writel(i32 noundef %46, ptr noundef %50) #9
  %51 = load ptr, ptr %36, align 4
  %52 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.msm_dsi_phy, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %56) #9
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr inbounds %struct.msm_dsi_phy, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 36
  %61 = tail call i32 @msm_readl(ptr noundef %60) #9
  %62 = load ptr, ptr %52, align 4
  %63 = getelementptr inbounds %struct.msm_dsi_phy, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 36
  tail call void @msm_writel(i32 noundef 0, ptr noundef %65) #9
  %66 = and i32 %61, -33
  %67 = load ptr, ptr %52, align 4
  %68 = getelementptr inbounds %struct.msm_dsi_phy, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 36
  tail call void @msm_writel(i32 noundef %66, ptr noundef %70) #9
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #9
  br label %72

72:                                               ; preds = %39, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %73 = load ptr, ptr %2, align 4
  %74 = getelementptr inbounds %struct.msm_dsi_phy, ptr %73, i32 0, i32 18
  store i8 0, ptr %74, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_10nm_vco_recalc_rate(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 204
  %8 = tail call i32 @msm_readl(ptr noundef %7) #9
  %9 = and i32 %8, 255
  %10 = getelementptr i8, ptr %6, i32 208
  %11 = tail call i32 @msm_readl(ptr noundef %10) #9
  %12 = getelementptr i8, ptr %6, i32 212
  %13 = tail call i32 @msm_readl(ptr noundef %12) #9
  %14 = shl i32 %13, 8
  %15 = and i32 %14, 65280
  %16 = or i32 %15, %11
  %17 = getelementptr i8, ptr %6, i32 216
  %18 = tail call i32 @msm_readl(ptr noundef %17) #9
  %19 = shl i32 %18, 16
  %20 = and i32 %19, 196608
  %21 = or i32 %16, %20
  %22 = zext i32 %9 to i64
  %23 = mul nuw nsw i64 %22, 38400000
  %24 = zext i32 %21 to i64
  %25 = mul nuw nsw i64 %24, 38400000
  %26 = lshr i64 %25, 18
  %27 = add nuw nsw i64 %26, %23
  %28 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 2
  store i64 %27, ptr %28, align 8
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.msm_dsi_phy, ptr %29, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = trunc i64 %27 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %31, i32 noundef %32, i32 noundef %9, i32 noundef %21) #9
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dsi_pll_10nm_clk_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #6 {
  %4 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 1
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
define internal i32 @dsi_pll_10nm_vco_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %7, i32 noundef %1, i32 noundef %2) #9
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %0, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  %10 = shl nuw nsw i64 %8, 18
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2327733145514495953, i64 %10) #11, !srcloc !18
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2327733145514495953, i64 %10, i64 %11, i32 0) #11, !srcloc !19
  %13 = icmp ult i32 %1, 1100000000
  %14 = select i1 %13, i32 8, i32 0
  %15 = extractvalue { i64, i32 } %12, 0
  %16 = lshr i64 %15, 25
  %17 = lshr i64 %15, 43
  %18 = trunc i64 %16 to i32
  %19 = trunc i64 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #9
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.msm_dsi_phy, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 168
  tail call void @msm_writel(i32 noundef 18, ptr noundef %23) #9
  %24 = getelementptr i8, ptr %22, i32 204
  tail call void @msm_writel(i32 noundef %19, ptr noundef %24) #9
  %25 = and i32 %18, 255
  %26 = getelementptr i8, ptr %22, i32 208
  tail call void @msm_writel(i32 noundef %25, ptr noundef %26) #9
  %27 = lshr i32 %18, 8
  %28 = and i32 %27, 255
  %29 = getelementptr i8, ptr %22, i32 212
  tail call void @msm_writel(i32 noundef %28, ptr noundef %29) #9
  %30 = lshr i32 %18, 16
  %31 = and i32 %30, 3
  %32 = getelementptr i8, ptr %22, i32 216
  tail call void @msm_writel(i32 noundef %31, ptr noundef %32) #9
  %33 = getelementptr i8, ptr %22, i32 324
  tail call void @msm_writel(i32 noundef 64, ptr noundef %33) #9
  %34 = getelementptr i8, ptr %22, i32 388
  tail call void @msm_writel(i32 noundef 6, ptr noundef %34) #9
  %35 = getelementptr i8, ptr %22, i32 44
  tail call void @msm_writel(i32 noundef 16, ptr noundef %35) #9
  %36 = getelementptr i8, ptr %22, i32 396
  tail call void @msm_writel(i32 noundef %14, ptr noundef %36) #9
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.msm_dsi_phy, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void @msm_writel(i32 noundef 128, ptr noundef %39) #9
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %40) #9
  %41 = getelementptr i8, ptr %39, i32 16
  tail call void @msm_writel(i32 noundef 0, ptr noundef %41) #9
  %42 = getelementptr i8, ptr %39, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %42) #9
  %43 = getelementptr i8, ptr %39, i32 32
  tail call void @msm_writel(i32 noundef 78, ptr noundef %43) #9
  %44 = getelementptr i8, ptr %39, i32 48
  tail call void @msm_writel(i32 noundef 64, ptr noundef %44) #9
  %45 = getelementptr i8, ptr %39, i32 84
  tail call void @msm_writel(i32 noundef 186, ptr noundef %45) #9
  %46 = getelementptr i8, ptr %39, i32 100
  tail call void @msm_writel(i32 noundef 12, ptr noundef %46) #9
  %47 = getelementptr i8, ptr %39, i32 148
  tail call void @msm_writel(i32 noundef 0, ptr noundef %47) #9
  %48 = getelementptr i8, ptr %39, i32 164
  tail call void @msm_writel(i32 noundef 0, ptr noundef %48) #9
  %49 = getelementptr i8, ptr %39, i32 180
  tail call void @msm_writel(i32 noundef 8, ptr noundef %49) #9
  %50 = getelementptr i8, ptr %39, i32 332
  tail call void @msm_writel(i32 noundef 8, ptr noundef %50) #9
  %51 = getelementptr i8, ptr %39, i32 340
  tail call void @msm_writel(i32 noundef 192, ptr noundef %51) #9
  %52 = getelementptr i8, ptr %39, i32 348
  tail call void @msm_writel(i32 noundef 250, ptr noundef %52) #9
  %53 = getelementptr i8, ptr %39, i32 356
  tail call void @msm_writel(i32 noundef 76, ptr noundef %53) #9
  %54 = getelementptr i8, ptr %39, i32 384
  tail call void @msm_writel(i32 noundef 128, ptr noundef %54) #9
  %55 = getelementptr i8, ptr %39, i32 124
  tail call void @msm_writel(i32 noundef 41, ptr noundef %55) #9
  %56 = getelementptr i8, ptr %39, i32 128
  tail call void @msm_writel(i32 noundef 63, ptr noundef %56) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 2155850654}
!10 = !{i64 3429611}
!11 = !{i64 2155854837}
!12 = !{i64 2155855171}
!13 = !{i64 2155859205}
!14 = !{i64 2155837055}
!15 = !{i64 2155833272}
!16 = !{i64 2155833648}
!17 = !{i64 2155838828}
!18 = !{i64 896398, i64 896425}
!19 = !{i64 897093, i64 897120, i64 897153, i64 897174, i64 897201, i64 897227}
!20 = !{i64 2155831173}
