; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_phy_cfg = type { %struct.dsi_reg_config, %struct.msm_dsi_phy_ops, i32, i32, [2 x i32], i32, i32, i8, i8 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lpfr_cfg = type { i32, i32 }
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

@dsi_phy_28nm_hpm_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_28nm_init, ptr @dsi_28nm_phy_enable, ptr @dsi_28nm_phy_disable, ptr @dsi_28nm_pll_save_state, ptr @dsi_28nm_pll_restore_state, ptr null }, i32 350000000, i32 750000000, [2 x i32] [i32 -40752384, i32 -40750848], i32 2, i32 0, i8 1, i8 0 }, align 4
@dsi_phy_28nm_hpm_famb_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_28nm_init, ptr @dsi_28nm_phy_enable, ptr @dsi_28nm_phy_disable, ptr @dsi_28nm_pll_save_state, ptr @dsi_28nm_pll_restore_state, ptr null }, i32 350000000, i32 750000000, [2 x i32] [i32 27870208, i32 27878400], i32 2, i32 0, i8 1, i8 0 }, align 4
@dsi_phy_28nm_lp_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_28nm_init, ptr @dsi_28nm_phy_enable, ptr @dsi_28nm_phy_disable, ptr @dsi_28nm_pll_save_state, ptr @dsi_28nm_pll_restore_state, ptr null }, i32 350000000, i32 750000000, [2 x i32] [i32 27886848, i32 0], i32 1, i32 1, i8 1, i8 0 }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@clk_ops_dsi_pll_28nm_vco_lp = internal constant %struct.clk_ops { ptr @dsi_pll_28nm_vco_prepare_lp, ptr @dsi_pll_28nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_is_enabled, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_recalc_rate, ptr @dsi_pll_28nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_ops_dsi_pll_28nm_vco_hpm = internal constant %struct.clk_ops { ptr @dsi_pll_28nm_vco_prepare_hpm, ptr @dsi_pll_28nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_is_enabled, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_recalc_rate, ptr @dsi_pll_28nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"dsi%dvco_clk\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"dsi%danalog_postdiv_clk\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"dsi%dindirect_path_div2_clk\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"dsi%dpll\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"dsi%dbyte_mux\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"dsi%dpllbyte\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"id=%d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"*ERROR* DSI PLL lock failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"DSI PLL lock success\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"DSI PLL is %slocked\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"*not* \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"sdm_dc_off = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"sdm_freq_seed = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"vco rate = %lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"returning vco rate = %lu\0A\00", align 1
@lpfr_lut = internal unnamed_addr constant [10 x %struct.lpfr_cfg] [%struct.lpfr_cfg { i32 479500000, i32 8 }, %struct.lpfr_cfg { i32 480000000, i32 11 }, %struct.lpfr_cfg { i32 575500000, i32 8 }, %struct.lpfr_cfg { i32 576000000, i32 12 }, %struct.lpfr_cfg { i32 610500000, i32 8 }, %struct.lpfr_cfg { i32 659500000, i32 9 }, %struct.lpfr_cfg { i32 671500000, i32 10 }, %struct.lpfr_cfg { i32 672000000, i32 14 }, %struct.lpfr_cfg { i32 708500000, i32 10 }, %struct.lpfr_cfg { i32 750000000, i32 11 }], align 4
@.str.20 = private unnamed_addr constant [55 x i8] c"*ERROR* unable to get loop filter resistance. vco=%lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"refclk_cfg = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"div_fb = %lu\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"frac_n_value = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Generated VCO Clock: %lu\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"sdm_cfg0=%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"sdm_cfg1=%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"sdm_cfg2=%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"sdm_cfg3=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"cal_cfg10=%d, cal_cfg11=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"DSI PLL Lock success\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", align 1
@__func__.dsi_28nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_28nm_phy_enable\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"*ERROR* restore vco rate failed. ret=%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_init(ptr noundef %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  %4 = alloca [32 x i8], align 1
  %5 = alloca [32 x i8], align 1
  %6 = alloca %struct.clk_init_data, align 4
  %7 = alloca [1 x ptr], align 4
  %8 = alloca [2 x ptr], align 4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %123, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 24, i32 noundef 3520) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %123, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %13, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %18, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #7
  %20 = getelementptr inbounds i8, ptr %6, i32 20
  store i32 1, ptr %20, align 4, !annotation !8
  store ptr %5, ptr %6, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr @.str.2, ptr %7, align 4
  store ptr %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 3
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 4
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 8, ptr %25, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %29) #7
  %30 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %31, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr @clk_ops_dsi_pll_28nm_vco_hpm, ptr @clk_ops_dsi_pll_28nm_vco_lp
  store ptr %36, ptr %21, align 4
  %37 = load i32, ptr %28, align 4
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %37) #7
  %39 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %6, ptr %39, align 4
  %40 = call i32 @devm_clk_hw_register(ptr noundef %27, ptr noundef nonnull %13) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %121

43:                                               ; preds = %15
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr inbounds %struct.msm_dsi_phy, ptr %44, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %46) #7
  %48 = load ptr, ptr %16, align 4
  %49 = getelementptr inbounds %struct.msm_dsi_phy, ptr %48, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %50) #7
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr inbounds %struct.msm_dsi_phy, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = call ptr @__devm_clk_hw_register_divider(ptr noundef %27, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %55, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %118, label %58

58:                                               ; preds = %43
  %59 = load ptr, ptr %16, align 4
  %60 = getelementptr inbounds %struct.msm_dsi_phy, ptr %59, i32 0, i32 9
  %61 = load i32, ptr %60, align 4
  %62 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %61) #7
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr inbounds %struct.msm_dsi_phy, ptr %63, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %65) #7
  %67 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %27, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4, i32 noundef 1, i32 noundef 2) #7
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %118, label %69

69:                                               ; preds = %58
  %70 = load ptr, ptr %16, align 4
  %71 = getelementptr inbounds %struct.msm_dsi_phy, ptr %70, i32 0, i32 9
  %72 = load i32, ptr %71, align 4
  %73 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %72) #7
  %74 = load ptr, ptr %16, align 4
  %75 = getelementptr inbounds %struct.msm_dsi_phy, ptr %74, i32 0, i32 9
  %76 = load i32, ptr %75, align 4
  %77 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %76) #7
  %78 = load ptr, ptr %16, align 4
  %79 = getelementptr inbounds %struct.msm_dsi_phy, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 40
  %82 = call ptr @__devm_clk_hw_register_divider(ptr noundef %27, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %81, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %118, label %84

84:                                               ; preds = %69
  %85 = getelementptr %struct.clk_hw_onecell_data, ptr %18, i32 2
  store ptr %82, ptr %85, align 4
  %86 = load ptr, ptr %16, align 4
  %87 = getelementptr inbounds %struct.msm_dsi_phy, ptr %86, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %88) #7
  %90 = load ptr, ptr %16, align 4
  %91 = getelementptr inbounds %struct.msm_dsi_phy, ptr %90, i32 0, i32 9
  %92 = load i32, ptr %91, align 4
  %93 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %92) #7
  %94 = load ptr, ptr %16, align 4
  %95 = getelementptr inbounds %struct.msm_dsi_phy, ptr %94, i32 0, i32 9
  %96 = load i32, ptr %95, align 4
  %97 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %96) #7
  store ptr %3, ptr %8, align 4
  %98 = getelementptr inbounds ptr, ptr %8, i32 1
  store ptr %4, ptr %98, align 4
  %99 = load ptr, ptr %16, align 4
  %100 = getelementptr inbounds %struct.msm_dsi_phy, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 16
  %103 = call ptr @__devm_clk_hw_register_mux(ptr noundef %27, ptr noundef null, ptr noundef nonnull %2, i8 noundef zeroext 2, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %102, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %118, label %105

105:                                              ; preds = %84
  %106 = load ptr, ptr %16, align 4
  %107 = getelementptr inbounds %struct.msm_dsi_phy, ptr %106, i32 0, i32 9
  %108 = load i32, ptr %107, align 4
  %109 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %108) #7
  %110 = load ptr, ptr %16, align 4
  %111 = getelementptr inbounds %struct.msm_dsi_phy, ptr %110, i32 0, i32 9
  %112 = load i32, ptr %111, align 4
  %113 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %112) #7
  %114 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %27, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4, i32 noundef 1, i32 noundef 4) #7
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  store ptr %114, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %117 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  store ptr %13, ptr %117, align 4
  br label %123

118:                                              ; preds = %105, %84, %69, %58, %43
  %119 = phi ptr [ %56, %43 ], [ %67, %58 ], [ %82, %69 ], [ %103, %84 ], [ %114, %105 ]
  %120 = ptrtoint ptr %119 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %121

121:                                              ; preds = %118, %42
  %122 = phi i32 [ %40, %42 ], [ %120, %118 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %122) #7
  br label %123

123:                                              ; preds = %121, %116, %11, %1
  %124 = phi i32 [ %122, %121 ], [ 0, %116 ], [ -19, %1 ], [ -12, %11 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_28nm_phy_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31) #7
  %6 = tail call i32 @msm_dsi_dphy_timing_calc(ptr noundef %3, ptr noundef %1) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dsi_28nm_phy_enable) #7
  br label %140

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %5, i32 388
  tail call void @msm_writel(i32 noundef 255, ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 15
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %17) #7
  %18 = getelementptr i8, ptr %17, i32 24
  br i1 %15, label %34, label %19

19:                                               ; preds = %11
  tail call void @msm_writel(i32 noundef 0, ptr noundef %18) #7
  %20 = getelementptr i8, ptr %17, i32 20
  tail call void @msm_writel(i32 noundef 7, ptr noundef %20) #7
  %21 = getelementptr i8, ptr %17, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %21) #7
  %22 = getelementptr i8, ptr %17, i32 8
  tail call void @msm_writel(i32 noundef 1, ptr noundef %22) #7
  %23 = getelementptr i8, ptr %17, i32 4
  tail call void @msm_writel(i32 noundef 1, ptr noundef %23) #7
  %24 = getelementptr i8, ptr %17, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %24) #7
  %25 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %26, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 476
  %33 = select i1 %30, i32 13, i32 5
  tail call void @msm_writel(i32 noundef %33, ptr noundef %32) #7
  br label %42

34:                                               ; preds = %11
  tail call void @msm_writel(i32 noundef 1, ptr noundef %18) #7
  %35 = getelementptr i8, ptr %17, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %35) #7
  %36 = getelementptr i8, ptr %17, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %36) #7
  %37 = getelementptr i8, ptr %17, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %37) #7
  %38 = getelementptr i8, ptr %17, i32 4
  tail call void @msm_writel(i32 noundef 9, ptr noundef %38) #7
  tail call void @msm_writel(i32 noundef 7, ptr noundef %17) #7
  %39 = getelementptr i8, ptr %17, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %39) #7
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 476
  tail call void @msm_writel(i32 noundef 0, ptr noundef %41) #7
  br label %42

42:                                               ; preds = %34, %19
  %43 = load ptr, ptr %4, align 4
  %44 = load i32, ptr %3, align 4
  %45 = and i32 %44, 255
  %46 = getelementptr i8, ptr %43, i32 320
  tail call void @msm_writel(i32 noundef %45, ptr noundef %46) #7
  %47 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 255
  %50 = getelementptr i8, ptr %43, i32 324
  tail call void @msm_writel(i32 noundef %49, ptr noundef %50) #7
  %51 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 255
  %54 = getelementptr i8, ptr %43, i32 328
  tail call void @msm_writel(i32 noundef %53, ptr noundef %54) #7
  %55 = load i32, ptr %3, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %42
  %59 = getelementptr i8, ptr %43, i32 332
  tail call void @msm_writel(i32 noundef 1, ptr noundef %59) #7
  br label %60

60:                                               ; preds = %58, %42
  %61 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 255
  %64 = getelementptr i8, ptr %43, i32 336
  tail call void @msm_writel(i32 noundef %63, ptr noundef %64) #7
  %65 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 255
  %68 = getelementptr i8, ptr %43, i32 340
  tail call void @msm_writel(i32 noundef %67, ptr noundef %68) #7
  %69 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 255
  %72 = getelementptr i8, ptr %43, i32 344
  tail call void @msm_writel(i32 noundef %71, ptr noundef %72) #7
  %73 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 255
  %76 = getelementptr i8, ptr %43, i32 348
  tail call void @msm_writel(i32 noundef %75, ptr noundef %76) #7
  %77 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 255
  %80 = getelementptr i8, ptr %43, i32 352
  tail call void @msm_writel(i32 noundef %79, ptr noundef %80) #7
  %81 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 8
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 7
  %84 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 9
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 4
  %87 = and i32 %86, 112
  %88 = or i32 %87, %83
  %89 = getelementptr i8, ptr %43, i32 356
  tail call void @msm_writel(i32 noundef %88, ptr noundef %89) #7
  %90 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 10
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 7
  %93 = getelementptr i8, ptr %43, i32 360
  tail call void @msm_writel(i32 noundef %92, ptr noundef %93) #7
  %94 = getelementptr i8, ptr %43, i32 364
  tail call void @msm_writel(i32 noundef 0, ptr noundef %94) #7
  %95 = getelementptr i8, ptr %5, i32 372
  tail call void @msm_writel(i32 noundef 0, ptr noundef %95) #7
  %96 = getelementptr i8, ptr %5, i32 368
  tail call void @msm_writel(i32 noundef 95, ptr noundef %96) #7
  %97 = getelementptr i8, ptr %5, i32 392
  tail call void @msm_writel(i32 noundef 6, ptr noundef %97) #7
  br label %98

98:                                               ; preds = %98, %60
  %99 = phi i32 [ 0, %60 ], [ %118, %98 ]
  %100 = shl i32 %99, 6
  %101 = getelementptr i8, ptr %5, i32 %100
  tail call void @msm_writel(i32 noundef 0, ptr noundef %101) #7
  %102 = or i32 %100, 4
  %103 = getelementptr i8, ptr %5, i32 %102
  tail call void @msm_writel(i32 noundef 0, ptr noundef %103) #7
  %104 = or i32 %100, 8
  %105 = getelementptr i8, ptr %5, i32 %104
  tail call void @msm_writel(i32 noundef 0, ptr noundef %105) #7
  %106 = or i32 %100, 12
  %107 = getelementptr i8, ptr %5, i32 %106
  tail call void @msm_writel(i32 noundef 0, ptr noundef %107) #7
  %108 = or i32 %100, 16
  %109 = getelementptr i8, ptr %5, i32 %108
  tail call void @msm_writel(i32 noundef 0, ptr noundef %109) #7
  %110 = or i32 %100, 20
  %111 = getelementptr i8, ptr %5, i32 %110
  tail call void @msm_writel(i32 noundef 0, ptr noundef %111) #7
  %112 = or i32 %100, 24
  %113 = getelementptr i8, ptr %5, i32 %112
  tail call void @msm_writel(i32 noundef 0, ptr noundef %113) #7
  %114 = or i32 %100, 28
  %115 = getelementptr i8, ptr %5, i32 %114
  tail call void @msm_writel(i32 noundef 1, ptr noundef %115) #7
  %116 = or i32 %100, 32
  %117 = getelementptr i8, ptr %5, i32 %116
  tail call void @msm_writel(i32 noundef 151, ptr noundef %117) #7
  %118 = add nuw nsw i32 %99, 1
  %119 = icmp eq i32 %118, 4
  br i1 %119, label %120, label %98

120:                                              ; preds = %98
  %121 = getelementptr i8, ptr %5, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %121) #7
  %122 = getelementptr i8, ptr %5, i32 260
  tail call void @msm_writel(i32 noundef 192, ptr noundef %122) #7
  %123 = getelementptr i8, ptr %5, i32 284
  tail call void @msm_writel(i32 noundef 1, ptr noundef %123) #7
  %124 = getelementptr i8, ptr %5, i32 288
  tail call void @msm_writel(i32 noundef 187, ptr noundef %124) #7
  tail call void @msm_writel(i32 noundef 95, ptr noundef %96) #7
  %125 = getelementptr i8, ptr %5, i32 468
  %126 = tail call i32 @msm_readl(ptr noundef %125) #7
  %127 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %136

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 14
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = and i32 %126, -2
  br label %138

136:                                              ; preds = %130, %120
  %137 = or i32 %126, 1
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  tail call void @msm_writel(i32 noundef %139, ptr noundef %125) #7
  br label %140

140:                                              ; preds = %138, %8
  %141 = phi i32 [ -22, %8 ], [ 0, %138 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_28nm_phy_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 368
  tail call void @msm_writel(i32 noundef 0, ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 24
  tail call void @msm_writel(i32 noundef 0, ptr noundef %7) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_28nm_pll_save_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 40
  %9 = tail call i32 @msm_readl(ptr noundef %8) #7
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 1
  store i8 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %7, i32 4
  %13 = tail call i32 @msm_readl(ptr noundef %12) #7
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 2
  store i8 %14, ptr %15, align 1
  %16 = getelementptr i8, ptr %7, i32 16
  %17 = tail call i32 @msm_readl(ptr noundef %16) #7
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 3
  store i8 %18, ptr %19, align 2
  %20 = load ptr, ptr %2, align 4
  %21 = tail call i32 @dsi_pll_28nm_clk_is_enabled(ptr noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr %2, align 4
  %25 = tail call i32 @clk_hw_get_rate(ptr noundef %24) #7
  br label %26

26:                                               ; preds = %23, %1
  %27 = phi i32 [ %25, %23 ], [ 0, %1 ]
  %28 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2
  store i32 %27, ptr %28, align 4
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
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %5, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, i32 noundef %10) #7
  br label %29

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = getelementptr i8, ptr %8, i32 40
  tail call void @msm_writel(i32 noundef %19, ptr noundef %20) #7
  %21 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %8, i32 4
  tail call void @msm_writel(i32 noundef %23, ptr noundef %24) #7
  %25 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %3, i32 0, i32 2, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %8, i32 16
  tail call void @msm_writel(i32 noundef %27, ptr noundef %28) #7
  br label %29

29:                                               ; preds = %16, %12
  ret i32 %10
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_vco_prepare_lp(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %9) #7
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.msm_dsi_phy, ptr %10, i32 0, i32 18
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %122, !prof !11

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.msm_dsi_phy, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 104
  tail call void @msm_writel(i32 noundef 1, ptr noundef %17) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %17) #7
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #7
  %20 = getelementptr i8, ptr %7, i32 112
  tail call void @msm_writel(i32 noundef 52, ptr noundef %20) #7
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #7
  %22 = getelementptr i8, ptr %7, i32 32
  tail call void @msm_writel(i32 noundef 1, ptr noundef %22) #7
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  tail call void @msm_writel(i32 noundef 5, ptr noundef %22) #7
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #7
  tail call void @msm_writel(i32 noundef 15, ptr noundef %22) #7
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #7
  %26 = getelementptr i8, ptr %7, i32 100
  tail call void @msm_writel(i32 noundef 4, ptr noundef %26) #7
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #7
  tail call void @msm_writel(i32 noundef 5, ptr noundef %26) #7
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 109950976) #7
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.msm_dsi_phy, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 192
  %33 = tail call i32 @msm_readl(ptr noundef %32) #7
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %119

36:                                               ; preds = %14
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 10737400) #7
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.msm_dsi_phy, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 192
  %42 = tail call i32 @msm_readl(ptr noundef %41) #7
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %119

45:                                               ; preds = %36
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 10737400) #7
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds %struct.msm_dsi_phy, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 192
  %51 = tail call i32 @msm_readl(ptr noundef %50) #7
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %119

54:                                               ; preds = %45
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 10737400) #7
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds %struct.msm_dsi_phy, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 192
  %60 = tail call i32 @msm_readl(ptr noundef %59) #7
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %119

63:                                               ; preds = %54
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 10737400) #7
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.msm_dsi_phy, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 192
  %69 = tail call i32 @msm_readl(ptr noundef %68) #7
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %63
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 10737400) #7
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr inbounds %struct.msm_dsi_phy, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 192
  %78 = tail call i32 @msm_readl(ptr noundef %77) #7
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %72
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 10737400) #7
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr inbounds %struct.msm_dsi_phy, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 192
  %87 = tail call i32 @msm_readl(ptr noundef %86) #7
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %81
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 10737400) #7
  %92 = load ptr, ptr %2, align 4
  %93 = getelementptr inbounds %struct.msm_dsi_phy, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 192
  %96 = tail call i32 @msm_readl(ptr noundef %95) #7
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %90
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 10737400) #7
  %101 = load ptr, ptr %2, align 4
  %102 = getelementptr inbounds %struct.msm_dsi_phy, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 192
  %105 = tail call i32 @msm_readl(ptr noundef %104) #7
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 10737400) #7
  %110 = load ptr, ptr %2, align 4
  %111 = getelementptr inbounds %struct.msm_dsi_phy, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 192
  %114 = tail call i32 @msm_readl(ptr noundef %113) #7
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 10737400) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #7
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #7
  br label %122

119:                                              ; preds = %108, %99, %90, %81, %72, %63, %54, %45, %36, %14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #7
  %120 = load ptr, ptr %2, align 4
  %121 = getelementptr inbounds %struct.msm_dsi_phy, ptr %120, i32 0, i32 18
  store i8 1, ptr %121, align 4
  br label %122

122:                                              ; preds = %119, %117, %1
  %123 = phi i32 [ -22, %117 ], [ 0, %119 ], [ 0, %1 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_pll_28nm_vco_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %5) #7
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 18
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10, !prof !12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 32
  tail call void @msm_writel(i32 noundef 0, ptr noundef %13) #7
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.msm_dsi_phy, ptr %14, i32 0, i32 18
  store i8 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 192
  %7 = tail call i32 @msm_readl(ptr noundef %6) #7
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %93

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 10737400) #7
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.msm_dsi_phy, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 192
  %16 = tail call i32 @msm_readl(ptr noundef %15) #7
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %93

19:                                               ; preds = %10
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 10737400) #7
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.msm_dsi_phy, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 192
  %25 = tail call i32 @msm_readl(ptr noundef %24) #7
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %19
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 10737400) #7
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.msm_dsi_phy, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 192
  %34 = tail call i32 @msm_readl(ptr noundef %33) #7
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %28
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 10737400) #7
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.msm_dsi_phy, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 192
  %43 = tail call i32 @msm_readl(ptr noundef %42) #7
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %37
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 10737400) #7
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr inbounds %struct.msm_dsi_phy, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 192
  %52 = tail call i32 @msm_readl(ptr noundef %51) #7
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %93

55:                                               ; preds = %46
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 10737400) #7
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr inbounds %struct.msm_dsi_phy, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 192
  %61 = tail call i32 @msm_readl(ptr noundef %60) #7
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %55
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 10737400) #7
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr inbounds %struct.msm_dsi_phy, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 192
  %70 = tail call i32 @msm_readl(ptr noundef %69) #7
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %64
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 10737400) #7
  %75 = load ptr, ptr %2, align 4
  %76 = getelementptr inbounds %struct.msm_dsi_phy, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 192
  %79 = tail call i32 @msm_readl(ptr noundef %78) #7
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 10737400) #7
  %84 = load ptr, ptr %2, align 4
  %85 = getelementptr inbounds %struct.msm_dsi_phy, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 192
  %88 = tail call i32 @msm_readl(ptr noundef %87) #7
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 10737400) #7
  br label %93

93:                                               ; preds = %91, %82, %73, %64, %55, %46, %37, %28, %19, %10, %1
  %94 = phi i32 [ 1, %1 ], [ 1, %10 ], [ 1, %19 ], [ 1, %28 ], [ 1, %37 ], [ 1, %46 ], [ 1, %55 ], [ 1, %64 ], [ 1, %73 ], [ 1, %82 ], [ 0, %91 ]
  %95 = phi ptr [ @.str.14, %1 ], [ @.str.14, %10 ], [ @.str.14, %19 ], [ @.str.14, %28 ], [ @.str.14, %37 ], [ @.str.14, %46 ], [ @.str.14, %55 ], [ @.str.14, %64 ], [ @.str.14, %73 ], [ @.str.14, %82 ], [ @.str.15, %91 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull %95) #7
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @msm_readl(ptr noundef %6) #7
  %8 = and i32 %7, 1
  %9 = mul nuw nsw i32 %8, 19200000
  %10 = add nuw nsw i32 %9, 19200000
  %11 = getelementptr i8, ptr %6, i32 56
  %12 = tail call i32 @msm_readl(ptr noundef %11) #7
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = tail call i32 @msm_readl(ptr noundef %11) #7
  %17 = and i32 %16, 63
  %18 = add nuw nsw i32 %17, 1
  %19 = mul nuw i32 %18, %10
  br label %41

20:                                               ; preds = %2
  %21 = getelementptr i8, ptr %6, i32 60
  %22 = tail call i32 @msm_readl(ptr noundef %21) #7
  %23 = and i32 %22, 63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %23) #7
  %24 = getelementptr i8, ptr %6, i32 64
  %25 = tail call i32 @msm_readl(ptr noundef %24) #7
  %26 = and i32 %25, 255
  %27 = getelementptr i8, ptr %6, i32 68
  %28 = tail call i32 @msm_readl(ptr noundef %27) #7
  %29 = shl i32 %28, 8
  %30 = and i32 %29, 65280
  %31 = or i32 %30, %26
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %31) #7
  %32 = add nuw nsw i32 %23, 1
  %33 = mul nuw i32 %32, %10
  %34 = lshr i32 %10, 16
  %35 = and i32 %10, 63488
  %36 = mul nuw nsw i32 %31, %34
  %37 = mul nuw i32 %31, %35
  %38 = lshr i32 %37, 16
  %39 = add i32 %36, %33
  %40 = add i32 %39, %38
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %40) #7
  br label %41

41:                                               ; preds = %20, %15
  %42 = phi i32 [ %19, %15 ], [ %40, %20 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %42) #7
  ret i32 %42
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
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 36
  tail call void @msm_writel(i32 noundef 3, ptr noundef %10) #7
  %11 = icmp ugt i32 %1, 479500000
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = icmp ugt i32 %1, 480000000
  br i1 %13, label %14, label %31

14:                                               ; preds = %12
  %15 = icmp ugt i32 %1, 575500000
  br i1 %15, label %16, label %31

16:                                               ; preds = %14
  %17 = icmp ugt i32 %1, 576000000
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = icmp ugt i32 %1, 610500000
  br i1 %19, label %20, label %31

20:                                               ; preds = %18
  %21 = icmp ugt i32 %1, 659500000
  br i1 %21, label %22, label %31

22:                                               ; preds = %20
  %23 = icmp ugt i32 %1, 671500000
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = icmp ugt i32 %1, 672000000
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = icmp ugt i32 %1, 708500000
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = icmp ugt i32 %1, 750000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef %1) #7
  br label %104

31:                                               ; preds = %28, %26, %24, %22, %20, %18, %16, %14, %12, %3
  %32 = phi i32 [ 0, %3 ], [ 1, %12 ], [ 2, %14 ], [ 3, %16 ], [ 4, %18 ], [ 5, %20 ], [ 6, %22 ], [ 7, %24 ], [ 8, %26 ], [ 9, %28 ]
  %33 = getelementptr [10 x %struct.lpfr_cfg], ptr @lpfr_lut, i32 0, i32 %32, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %9, i32 44
  tail call void @msm_writel(i32 noundef %34, ptr noundef %35) #7
  %36 = getelementptr i8, ptr %9, i32 48
  tail call void @msm_writel(i32 noundef 112, ptr noundef %36) #7
  %37 = getelementptr i8, ptr %9, i32 52
  tail call void @msm_writel(i32 noundef 21, ptr noundef %37) #7
  %38 = urem i32 %1, 19200000
  %39 = icmp eq i32 %38, 0
  %40 = udiv i32 %1, 38400
  %41 = mul nuw nsw i32 %40, 38400
  %42 = udiv i32 %1, 19200
  %43 = mul nuw nsw i32 %42, 19200
  %44 = select i1 %39, i32 %42, i32 %40
  %45 = select i1 %39, i32 %43, i32 %41
  %46 = xor i1 %39, true
  %47 = zext i1 %46 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef %47) #7
  %48 = trunc i32 %44 to i16
  %49 = urem i16 %48, 1000
  %50 = zext i16 %49 to i32
  %51 = shl nuw nsw i32 %50, 16
  %52 = udiv i32 %51, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef %44) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %52) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %45) #7
  %53 = getelementptr i8, ptr %9, i32 60
  %54 = tail call i32 @msm_readl(ptr noundef %53) #7
  %55 = and i32 %54, -64
  %56 = trunc i32 %44 to i16
  %57 = udiv i16 %56, 1000
  %58 = add nuw nsw i16 %57, 63
  %59 = and i16 %58, 63
  %60 = zext i16 %59 to i32
  br i1 %39, label %64, label %61

61:                                               ; preds = %31
  %62 = lshr i32 %52, 8
  %63 = and i32 %52, 255
  br label %66

64:                                               ; preds = %31
  %65 = or i32 %60, 64
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i32 [ 0, %61 ], [ %65, %64 ]
  %68 = phi i32 [ %60, %61 ], [ 0, %64 ]
  %69 = phi i32 [ %63, %61 ], [ 0, %64 ]
  %70 = phi i32 [ %62, %61 ], [ 0, %64 ]
  %71 = or i32 %68, %55
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %67) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %71) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %69) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef %70) #7
  %72 = freeze i32 %45
  %73 = udiv i32 %72, 256000000
  %74 = mul i32 %73, 256000000
  %75 = sub i32 %72, %74
  %76 = udiv i32 %75, 1000000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %76, i32 noundef %73) #7
  %77 = getelementptr i8, ptr %9, i32 8
  tail call void @msm_writel(i32 noundef 2, ptr noundef %77) #7
  %78 = getelementptr i8, ptr %9, i32 120
  tail call void @msm_writel(i32 noundef 43, ptr noundef %78) #7
  %79 = getelementptr i8, ptr %9, i32 124
  tail call void @msm_writel(i32 noundef 6, ptr noundef %79) #7
  %80 = getelementptr i8, ptr %9, i32 100
  tail call void @msm_writel(i32 noundef 13, ptr noundef %80) #7
  tail call void @msm_writel(i32 noundef %71, ptr noundef %53) #7
  %81 = getelementptr i8, ptr %9, i32 64
  tail call void @msm_writel(i32 noundef %69, ptr noundef %81) #7
  %82 = getelementptr i8, ptr %9, i32 68
  tail call void @msm_writel(i32 noundef %70, ptr noundef %82) #7
  %83 = getelementptr i8, ptr %9, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %83) #7
  %84 = load ptr, ptr %4, align 4
  %85 = getelementptr inbounds %struct.msm_dsi_phy, ptr %84, i32 0, i32 13
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %86, i32 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %92 = select i1 %90, i32 214748, i32 214748000
  tail call void %91(i32 noundef %92) #7
  tail call void @msm_writel(i32 noundef %47, ptr noundef %9) #7
  %93 = getelementptr i8, ptr %9, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %93) #7
  %94 = getelementptr i8, ptr %9, i32 12
  tail call void @msm_writel(i32 noundef 49, ptr noundef %94) #7
  %95 = getelementptr i8, ptr %9, i32 56
  tail call void @msm_writel(i32 noundef %67, ptr noundef %95) #7
  %96 = getelementptr i8, ptr %9, i32 108
  tail call void @msm_writel(i32 noundef 18, ptr noundef %96) #7
  %97 = getelementptr i8, ptr %9, i32 132
  tail call void @msm_writel(i32 noundef 48, ptr noundef %97) #7
  %98 = getelementptr i8, ptr %9, i32 136
  tail call void @msm_writel(i32 noundef 0, ptr noundef %98) #7
  %99 = getelementptr i8, ptr %9, i32 140
  tail call void @msm_writel(i32 noundef 96, ptr noundef %99) #7
  %100 = getelementptr i8, ptr %9, i32 144
  tail call void @msm_writel(i32 noundef 0, ptr noundef %100) #7
  %101 = getelementptr i8, ptr %9, i32 148
  tail call void @msm_writel(i32 noundef %76, ptr noundef %101) #7
  %102 = getelementptr i8, ptr %9, i32 152
  tail call void @msm_writel(i32 noundef %73, ptr noundef %102) #7
  %103 = getelementptr i8, ptr %9, i32 156
  tail call void @msm_writel(i32 noundef 32, ptr noundef %103) #7
  br label %104

104:                                              ; preds = %66, %30
  %105 = phi i32 [ -22, %30 ], [ 0, %66 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_vco_prepare_hpm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 18
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %98, !prof !11

7:                                                ; preds = %96, %1
  %8 = phi ptr [ %97, %96 ], [ %3, %1 ]
  %9 = phi i32 [ %94, %96 ], [ 0, %1 ]
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.msm_dsi_phy, ptr %8, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.msm_dsi_phy, ptr %8, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %15) #7
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.msm_dsi_phy, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 104
  tail call void @msm_writel(i32 noundef 1, ptr noundef %19) #7
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %19) #7
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #7
  %22 = getelementptr i8, ptr %13, i32 32
  tail call void @msm_writel(i32 noundef 1, ptr noundef %22) #7
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  tail call void @msm_writel(i32 noundef 5, ptr noundef %22) #7
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 42949600) #7
  tail call void @msm_writel(i32 noundef 7, ptr noundef %22) #7
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 107374000) #7
  tail call void @msm_writel(i32 noundef 15, ptr noundef %22) #7
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 128848800) #7
  %27 = getelementptr i8, ptr %13, i32 100
  br label %28

28:                                               ; preds = %74, %7
  %29 = phi i32 [ 0, %7 ], [ %88, %74 ]
  tail call void @msm_writel(i32 noundef 12, ptr noundef %27) #7
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 21474800) #7
  tail call void @msm_writel(i32 noundef 13, ptr noundef %27) #7
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.msm_dsi_phy, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 192
  %35 = tail call i32 @msm_readl(ptr noundef %34) #7
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %28
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 21474800) #7
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr inbounds %struct.msm_dsi_phy, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 192
  %44 = tail call i32 @msm_readl(ptr noundef %43) #7
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %38
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 21474800) #7
  %49 = load ptr, ptr %2, align 4
  %50 = getelementptr inbounds %struct.msm_dsi_phy, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 192
  %53 = tail call i32 @msm_readl(ptr noundef %52) #7
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %47
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 21474800) #7
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr inbounds %struct.msm_dsi_phy, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 192
  %62 = tail call i32 @msm_readl(ptr noundef %61) #7
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %56
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 21474800) #7
  %67 = load ptr, ptr %2, align 4
  %68 = getelementptr inbounds %struct.msm_dsi_phy, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 192
  %71 = tail call i32 @msm_readl(ptr noundef %70) #7
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %65
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 21474800) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #7
  %76 = load ptr, ptr %2, align 4
  %77 = getelementptr inbounds %struct.msm_dsi_phy, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 104
  tail call void @msm_writel(i32 noundef 1, ptr noundef %79) #7
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748) #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %79) #7
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748) #7
  tail call void @msm_writel(i32 noundef 1, ptr noundef %22) #7
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #7
  tail call void @msm_writel(i32 noundef 5, ptr noundef %22) #7
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 42949600) #7
  tail call void @msm_writel(i32 noundef 7, ptr noundef %22) #7
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 53687000) #7
  tail call void @msm_writel(i32 noundef 5, ptr noundef %22) #7
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 42949600) #7
  tail call void @msm_writel(i32 noundef 7, ptr noundef %22) #7
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 107374000) #7
  tail call void @msm_writel(i32 noundef 15, ptr noundef %22) #7
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 128848800) #7
  %88 = add nuw nsw i32 %29, 1
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %93, label %28

90:                                               ; preds = %65, %56, %47, %38, %28
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.30) #7
  %91 = load ptr, ptr %2, align 4
  %92 = getelementptr inbounds %struct.msm_dsi_phy, ptr %91, i32 0, i32 18
  store i8 1, ptr %92, align 4
  br label %98

93:                                               ; preds = %74
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #7
  %94 = add nuw nsw i32 %9, 1
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %2, align 4
  br label %7

98:                                               ; preds = %93, %90, %1
  %99 = phi i32 [ 0, %90 ], [ 0, %1 ], [ -22, %93 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2155854581}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
