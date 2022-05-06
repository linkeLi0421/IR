; ModuleID = '/llk/IR/drivers/clk/tegra/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.div_nmp = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.utmi_clk_param = type { i32, i8, i8, i8, i8 }
%struct.tegra_clk_pll = type { %struct.clk_hw, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tegra_clk_pll_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pdiv_map = type { i8, i8 }
%struct.tegra_clk_pll_freq_table = type { i32, i32, i32, i32, i8, i8, i16 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@tegra_clk_pll_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr @tegra_clk_pll_restore_context, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_clk_plle_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_plle_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_plle_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pll_e_nmp = internal global %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 16, i8 6, i8 0, i8 0, i8 0 }, align 1
@tegra_clk_pllu_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pllu_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/clk/tegra/clk-pll.c\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"parent clk %s of %s must be registered first\0A\00", align 1
@tegra_clk_pllxc_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_ramp_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllxc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_clk_pllre_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pllre_recalc_rate, ptr @clk_pllre_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllre_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_clk_pllc_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pllc_enable, ptr @clk_pllc_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_ramp_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_clk_plle_tegra114_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_plle_tegra114_enable, ptr @clk_plle_tegra114_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_clk_pllu_tegra114_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pllu_tegra114_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s is on but IDDQ set\0A\00", align 1
@tegra_clk_pllss_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr @tegra_clk_pll_restore_context, ptr @clk_pll_recalc_rate, ptr @clk_pll_ramp_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllxc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"\013%s: Timed out waiting for pll %s lock\0A\00", align 1
@__func__.clk_pll_wait_for_lock = private unnamed_addr constant [22 x i8] c"clk_pll_wait_for_lock\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\013Clock %s has unknown fixed frequency\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Clock %s has invalid pdiv value : 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"\013%s: Can not change %s fixed rate %lu to %lu\0A\00", align 1
@__func__.clk_pll_set_rate = private unnamed_addr constant [17 x i8] c"clk_pll_set_rate\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\013%s: Failed to set %s rate %lu\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [32 x i8] c"\013%s: timeout waiting for PLLE\0A\00", align 1
@__func__.clk_plle_training = private unnamed_addr constant [18 x i8] c"clk_plle_training\00", align 1
@default_nmp = internal global %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 3, i8 0, i8 0, i8 0 }, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"\013%s Unexpected reference rate %lu\0A\00", align 1
@__func__._calc_rate = private unnamed_addr constant [11 x i8] c"_calc_rate\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\013%s: failed to get OSC clock\0A\00", align 1
@__func__.clk_pllu_enable = private unnamed_addr constant [16 x i8] c"clk_pllu_enable\00", align 1
@utmi_parameters = internal unnamed_addr constant [6 x %struct.utmi_clk_param] [%struct.utmi_clk_param { i32 13000000, i8 2, i8 51, i8 5, i8 127 }, %struct.utmi_clk_param { i32 19200000, i8 3, i8 75, i8 6, i8 -69 }, %struct.utmi_clk_param { i32 12000000, i8 2, i8 47, i8 4, i8 118 }, %struct.utmi_clk_param { i32 26000000, i8 4, i8 102, i8 9, i8 -2 }, %struct.utmi_clk_param { i32 16800000, i8 3, i8 65, i8 10, i8 -92 }, %struct.utmi_clk_param { i32 38400000, i8 0, i8 0, i8 6, i8 -128 }], align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"\013%s: unexpected input rate %lu Hz\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"\013%s: Unexpected reference rate %lu\0A\00", align 1
@__func__._setup_dynamic_ramp = private unnamed_addr constant [20 x i8] c"_setup_dynamic_ramp\00", align 1
@__func__._pllcx_update_dynamic_coef = private unnamed_addr constant [27 x i8] c"_pllcx_update_dynamic_coef\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"pll_e enabled with unsupported parent %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"pllp_out0\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"pll_re_vco\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@__func__.clk_pllu_tegra114_enable = private unnamed_addr constant [25 x i8] c"clk_pllu_tegra114_enable\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pll_wait_for_lock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 29
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #11
  br label %43

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = and i32 %5, 256
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 7
  %18 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 6
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %14, i32 %20
  %22 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 29
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %34, %12
  %28 = phi i32 [ %35, %34 ], [ 0, %12 ]
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  %30 = and i32 %29, %23
  %31 = icmp eq i32 %30, %23
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %31, label %33, label %34

33:                                               ; preds = %27
  tail call void %32(i32 noundef 10737400) #11
  br label %43

34:                                               ; preds = %27
  tail call void %32(i32 noundef 429496) #11
  %35 = add nuw nsw i32 %28, 1
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %36, i32 0, i32 29
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %27, label %40

40:                                               ; preds = %34, %12
  %41 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_pll_wait_for_lock, ptr noundef %41) #12
  br label %43

43:                                               ; preds = %40, %33, %8
  %44 = phi i32 [ 0, %33 ], [ -1, %40 ], [ 0, %8 ]
  ret i32 %44
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @tegra_pll_p_div_to_hw(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %19, %8
  %12 = phi i8 [ %21, %19 ], [ %9, %8 ]
  %13 = phi ptr [ %20, %19 ], [ %6, %8 ]
  %14 = icmp ult i8 %12, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pdiv_map, ptr %13, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %23

19:                                               ; preds = %11
  %20 = getelementptr %struct.pdiv_map, ptr %13, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %11

23:                                               ; preds = %19, %15, %8, %2
  %24 = phi i32 [ %18, %15 ], [ -22, %2 ], [ -22, %8 ], [ -22, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 248
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %13 = and i32 %12, 6144
  %14 = icmp eq i32 %13, 2048
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %19 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  %25 = and i32 %24, 1073741824
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %102

27:                                               ; preds = %17, %8
  %28 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %29) #11
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ 0, %27 ]
  tail call fastcc void @_clk_pll_enable(ptr noundef %0)
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %35, i32 0, i32 26
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %35, i32 0, i32 29
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #11
  br label %75

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = and i32 %37, 256
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %35, i32 0, i32 7
  %50 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %35, i32 0, i32 6
  %51 = select i1 %48, ptr %50, ptr %49
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %46, i32 %52
  %54 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %35, i32 0, i32 9
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %35, i32 0, i32 29
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %66, %44
  %60 = phi i32 [ %67, %66 ], [ 0, %44 ]
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #11, !srcloc !8
  %62 = and i32 %61, %55
  %63 = icmp eq i32 %62, %55
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %63, label %65, label %66

65:                                               ; preds = %59
  tail call void %64(i32 noundef 10737400) #11
  br label %75

66:                                               ; preds = %59
  tail call void %64(i32 noundef 429496) #11
  %67 = add nuw nsw i32 %60, 1
  %68 = load ptr, ptr %2, align 4
  %69 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %68, i32 0, i32 29
  %70 = load i32, ptr %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %59, label %72

72:                                               ; preds = %66, %44
  %73 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_pll_wait_for_lock, ptr noundef %73) #12
  br label %75

75:                                               ; preds = %72, %65, %40
  %76 = phi i32 [ 0, %65 ], [ -1, %72 ], [ 0, %40 ]
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %77, i32 0, i32 31
  %79 = load i8, ptr %78, align 4, !range !9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %77, i32 0, i32 19
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 %83
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !8
  %90 = load ptr, ptr %2, align 4
  %91 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 20
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, %89
  %94 = load ptr, ptr %86, align 4
  %95 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 19
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i8, ptr %94, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %93) #11, !srcloc !10
  br label %98

98:                                               ; preds = %85, %81, %75
  %99 = load ptr, ptr %28, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %99, i32 noundef %34) #11
  br label %102

102:                                              ; preds = %101, %98, %17
  %103 = phi i32 [ 0, %17 ], [ %76, %101 ], [ %76, %98 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pll_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %10, i32 0, i32 31
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %10, i32 0, i32 19
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %23, i32 0, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %23, i32 0, i32 19
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #11, !srcloc !10
  br label %32

32:                                               ; preds = %18, %14, %7
  tail call fastcc void @_clk_pll_disable(ptr noundef %0)
  %33 = load ptr, ptr %2, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %33, i32 noundef %8) #11
  br label %36

36:                                               ; preds = %35, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 248
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %13 = and i32 %12, 6144
  %14 = icmp eq i32 %13, 2048
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %19 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  %25 = lshr i32 %24, 30
  %26 = and i32 %25, 1
  br label %27

27:                                               ; preds = %17, %8
  %28 = phi i32 [ %26, %17 ], [ 0, %8 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_clk_pll_restore_context(ptr noundef %0) #0 {
  %2 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #11
  %3 = tail call i32 @clk_hw_get_rate(ptr noundef %2) #11
  %4 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 248
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  %16 = and i32 %15, 6144
  %17 = icmp eq i32 %16, 2048
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %6, %1 ]
  %22 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %21, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !8
  %28 = and i32 %27, 1073741824
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %20, %11
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %31, i32 0, i32 41
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void %33(ptr noundef %0) #11
  br label %36

36:                                               ; preds = %35, %30
  %37 = tail call i32 @clk_pll_set_rate(ptr noundef %0, i32 noundef %4, i32 noundef %3)
  %38 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @__clk_get_enable_count(ptr noundef %39) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %44) #11
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ 0, %42 ]
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %50, i32 0, i32 31
  %52 = load i8, ptr %51, align 4, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %50, i32 0, i32 19
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 %56
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !8
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %63, i32 0, i32 20
  %65 = load i32, ptr %64, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %62, %66
  %68 = load ptr, ptr %59, align 4
  %69 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %63, i32 0, i32 19
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %68, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %67) #11, !srcloc !10
  br label %72

72:                                               ; preds = %58, %54, %48
  tail call fastcc void @_clk_pll_disable(ptr noundef %0) #11
  %73 = load ptr, ptr %43, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %73, i32 noundef %49) #11
  br label %78

76:                                               ; preds = %36
  %77 = tail call i32 @clk_pll_enable(ptr noundef %0)
  br label %78

78:                                               ; preds = %76, %75, %72, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !11
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 26
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  %18 = icmp sgt i32 %12, -1
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %127

20:                                               ; preds = %2
  %21 = and i32 %15, 4192
  %22 = icmp eq i32 %21, 64
  %23 = and i32 %12, 268435456
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %65

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 35
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 34
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %41, %26
  %34 = phi i32 [ %43, %41 ], [ %31, %26 ]
  %35 = phi ptr [ %42, %41 ], [ %30, %26 ]
  %36 = icmp eq i32 %34, %1
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %35, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %28
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %33
  %42 = getelementptr %struct.tegra_clk_pll_freq_table, ptr %35, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %33

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 32
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %35, i32 0, i32 4
  %50 = load i8, ptr %49, align 4
  br i1 %48, label %127, label %51

51:                                               ; preds = %45
  %52 = load i8, ptr %47, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %58, %51
  %55 = phi i8 [ %60, %58 ], [ %52, %51 ]
  %56 = phi ptr [ %59, %58 ], [ %47, %51 ]
  %57 = icmp ult i8 %55, %50
  br i1 %57, label %58, label %127

58:                                               ; preds = %54
  %59 = getelementptr %struct.pdiv_map, ptr %56, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %54

62:                                               ; preds = %58, %51, %41, %26
  %63 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %63) #12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-pll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 885, 0\0A.popsection", ""() #11, !srcloc !12
  unreachable

65:                                               ; preds = %20
  call fastcc void @_get_pll_mnp(ptr noundef %0, ptr noundef nonnull %3)
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %66, i32 0, i32 26
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 8192
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %3, i32 0, i32 4
  %73 = load i8, ptr %72, align 4
  %74 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %66, i32 0, i32 32
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %71
  %78 = load i8, ptr %75, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.pdiv_map, ptr %75, i32 0, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, %73
  br i1 %83, label %93, label %84

84:                                               ; preds = %89, %80
  %85 = phi ptr [ %86, %89 ], [ %75, %80 ]
  %86 = getelementptr %struct.pdiv_map, ptr %85, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %84
  %90 = getelementptr %struct.pdiv_map, ptr %85, i32 1, i32 1
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, %73
  br i1 %92, label %93, label %84

93:                                               ; preds = %89, %80
  %94 = phi i8 [ %78, %80 ], [ %87, %89 ]
  %95 = zext i8 %94 to i32
  br label %104

96:                                               ; preds = %71
  %97 = zext i8 %73 to i32
  %98 = shl nuw i32 1, %97
  %99 = icmp eq i8 %73, 31
  br i1 %99, label %100, label %104

100:                                              ; preds = %96, %84, %77
  %101 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %102 = zext i8 %73 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 898, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %101, i32 noundef %102) #11
  %103 = load ptr, ptr %7, align 4
  br label %104

104:                                              ; preds = %100, %96, %93, %65
  %105 = phi ptr [ %103, %100 ], [ %66, %96 ], [ %66, %65 ], [ %66, %93 ]
  %106 = phi i32 [ 1, %100 ], [ %98, %96 ], [ 1, %65 ], [ %95, %93 ]
  %107 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %105, i32 0, i32 38
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  call void %108(ptr noundef nonnull %3) #11
  br label %111

111:                                              ; preds = %110, %104
  %112 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %3, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, %106
  %115 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %3, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = zext i32 %116 to i64
  %118 = mul nuw i64 %117, %4
  %119 = icmp ult i64 %118, 4294967296
  br i1 %119, label %120, label %123, !prof !13

120:                                              ; preds = %111
  %121 = trunc i64 %118 to i32
  %122 = udiv i32 %121, %114
  br label %127

123:                                              ; preds = %111
  %124 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %114, i64 %118) #13, !srcloc !14
  %125 = extractvalue { i64, i64 } %124, 1
  %126 = trunc i64 %125 to i32
  br label %127

127:                                              ; preds = %123, %120, %54, %45, %2
  %128 = phi i32 [ %1, %2 ], [ %122, %120 ], [ %126, %123 ], [ %28, %45 ], [ %28, %54 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = and i32 %8, 4128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #11
  br label %62

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 35
  %18 = load i32, ptr %17, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load i32, ptr %2, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 34
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %33, %19
  %26 = phi i32 [ %35, %33 ], [ %23, %19 ]
  %27 = phi ptr [ %34, %33 ], [ %22, %19 ]
  %28 = icmp eq i32 %26, %20
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %27, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr %struct.tegra_clk_pll_freq_table, ptr %27, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %25

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 32
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %27, i32 0, i32 4
  %42 = load i8, ptr %41, align 4
  br i1 %40, label %62, label %43

43:                                               ; preds = %37
  %44 = load i8, ptr %39, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %50, %43
  %47 = phi i8 [ %52, %50 ], [ %44, %43 ]
  %48 = phi ptr [ %51, %50 ], [ %39, %43 ]
  %49 = icmp ult i8 %47, %42
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = getelementptr %struct.pdiv_map, ptr %48, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %46

54:                                               ; preds = %50, %43, %33, %19
  %55 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 39
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %20) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %54, %46, %37, %16, %14
  %63 = phi i32 [ %15, %14 ], [ %18, %16 ], [ -22, %54 ], [ %61, %59 ], [ %1, %37 ], [ %1, %46 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.tegra_clk_pll_freq_table, align 4
  %5 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !11
  %6 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 26
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 35
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %139, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 35
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.clk_pll_set_rate, ptr noundef %17, i32 noundef %20, i32 noundef %1) #12
  br label %139

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 34
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %83, label %27

27:                                               ; preds = %35, %22
  %28 = phi i32 [ %37, %35 ], [ %25, %22 ]
  %29 = phi ptr [ %36, %35 ], [ %24, %22 ]
  %30 = icmp eq i32 %28, %2
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %29, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr %struct.tegra_clk_pll_freq_table, ptr %29, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %83, label %27

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 32
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %29, i32 0, i32 4
  %44 = load i8, ptr %43, align 4
  br i1 %42, label %60, label %45

45:                                               ; preds = %39
  %46 = load i8, ptr %41, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %52, %45
  %49 = phi i8 [ %54, %52 ], [ %46, %45 ]
  %50 = phi ptr [ %53, %52 ], [ %41, %45 ]
  %51 = icmp ult i8 %49, %44
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr %struct.pdiv_map, ptr %50, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %83, label %48

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.pdiv_map, ptr %50, i32 0, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  br label %66

60:                                               ; preds = %39
  %61 = zext i8 %44 to i32
  %62 = icmp eq i8 %44, 0
  %63 = tail call i32 @llvm.ctlz.i32(i32 %61, i1 false) #11, !range !15
  %64 = sub nsw i32 31, %63
  %65 = select i1 %62, i32 -1, i32 %64
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i32 [ %59, %56 ], [ %65, %60 ]
  store i32 %2, ptr %4, align 4
  %68 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 1
  store i32 %1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %29, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 3
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %29, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 2
  store i32 %73, ptr %74, align 4
  %75 = trunc i32 %67 to i8
  %76 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 4
  store i8 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %29, i32 0, i32 5
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 5
  store i8 %78, ptr %79, align 1
  %80 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %29, i32 0, i32 6
  %81 = load i16, ptr %80, align 2
  %82 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 6
  store i16 %81, ptr %82, align 2
  br label %91

83:                                               ; preds = %52, %45, %35, %22
  %84 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 39
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 %85(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = call ptr @clk_hw_get_name(ptr noundef %0) #11
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.clk_pll_set_rate, ptr noundef %89, i32 noundef %1) #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 823, i32 noundef 9, ptr noundef null) #11
  br label %139

91:                                               ; preds = %83, %66
  %92 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %93) #11
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi i32 [ %96, %95 ], [ 0, %91 ]
  call fastcc void @_get_pll_mnp(ptr noundef %0, ptr noundef nonnull %5)
  %99 = load ptr, ptr %6, align 4
  %100 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %99, i32 0, i32 26
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 8192
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 4
  %106 = load i8, ptr %105, align 4
  %107 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 4
  store i8 %106, ptr %107, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 4
  %122 = load i8, ptr %121, align 4
  %123 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 4
  %124 = load i8, ptr %123, align 4
  %125 = icmp eq i8 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 6
  %128 = load i16, ptr %127, align 2
  %129 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 6
  %130 = load i16, ptr %129, align 2
  %131 = icmp eq i16 %128, %130
  br i1 %131, label %134, label %132

132:                                              ; preds = %126, %120, %114, %108
  %133 = call fastcc i32 @_program_pll(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1)
  br label %134

134:                                              ; preds = %132, %126
  %135 = phi i32 [ %133, %132 ], [ 0, %126 ]
  %136 = load ptr, ptr %92, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %136, i32 noundef %98) #11
  br label %139

139:                                              ; preds = %138, %134, %88, %16, %12
  %140 = phi i32 [ -22, %16 ], [ -22, %88 ], [ 0, %12 ], [ %135, %138 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_plle_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 248
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %13 = and i32 %12, 6144
  %14 = icmp eq i32 %13, 2048
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %19 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  %25 = and i32 %24, 1073741824
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %333

27:                                               ; preds = %17, %8
  %28 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #11
  %29 = tail call i32 @clk_hw_get_rate(ptr noundef %28) #11
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %30, i32 0, i32 35
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %30, i32 0, i32 34
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %333, label %37

37:                                               ; preds = %45, %27
  %38 = phi i32 [ %47, %45 ], [ %35, %27 ]
  %39 = phi ptr [ %46, %45 ], [ %34, %27 ]
  %40 = icmp eq i32 %38, %29
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %39, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %32
  br i1 %44, label %49, label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr %struct.tegra_clk_pll_freq_table, ptr %39, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %333, label %37

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %30, i32 0, i32 32
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %39, i32 0, i32 4
  %54 = load i8, ptr %53, align 4
  br i1 %52, label %70, label %55

55:                                               ; preds = %49
  %56 = load i8, ptr %51, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %333, label %58

58:                                               ; preds = %62, %55
  %59 = phi i8 [ %64, %62 ], [ %56, %55 ]
  %60 = phi ptr [ %63, %62 ], [ %51, %55 ]
  %61 = icmp ult i8 %59, %54
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr %struct.pdiv_map, ptr %60, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %333, label %58

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.pdiv_map, ptr %60, i32 0, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  br label %76

70:                                               ; preds = %49
  %71 = zext i8 %54 to i32
  %72 = icmp eq i8 %54, 0
  %73 = tail call i32 @llvm.ctlz.i32(i32 %71, i1 false) #11, !range !15
  %74 = sub nsw i32 31, %73
  %75 = select i1 %72, i32 -1, i32 %74
  br label %76

76:                                               ; preds = %70, %66
  %77 = phi i32 [ %69, %66 ], [ %75, %70 ]
  %78 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %39, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %39, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %39, i32 0, i32 5
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %76
  %88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %85) #11
  %89 = load ptr, ptr %2, align 4
  br label %90

90:                                               ; preds = %87, %76
  %91 = phi ptr [ %89, %87 ], [ %30, %76 ]
  %92 = phi i32 [ %88, %87 ], [ 0, %76 ]
  %93 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %91, i32 0, i32 31
  %94 = load i8, ptr %93, align 4, !range !9
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %91, i32 0, i32 19
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 %98
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #11, !srcloc !8
  %105 = load ptr, ptr %2, align 4
  %106 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %105, i32 0, i32 20
  %107 = load i32, ptr %106, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %104, %108
  %110 = load ptr, ptr %101, align 4
  %111 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %105, i32 0, i32 19
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %110, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %109) #11, !srcloc !10
  br label %114

114:                                              ; preds = %100, %96, %90
  tail call fastcc void @_clk_pll_disable(ptr noundef %0) #11
  %115 = load ptr, ptr %84, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %115, i32 noundef %92) #11
  br label %118

118:                                              ; preds = %117, %114
  %119 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = load ptr, ptr %2, align 4
  %122 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %121, i32 0, i32 7
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr i8, ptr %120, i32 %123
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #11, !srcloc !8
  %126 = and i32 %125, 65011
  %127 = load ptr, ptr %119, align 4
  %128 = load ptr, ptr %2, align 4
  %129 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %128, i32 0, i32 7
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr i8, ptr %127, i32 %130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %126) #11, !srcloc !10
  %132 = load ptr, ptr %119, align 4
  %133 = load ptr, ptr %2, align 4
  %134 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %133, i32 0, i32 7
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr i8, ptr %132, i32 %135
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #11, !srcloc !8
  %138 = and i32 %137, 32768
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %194

140:                                              ; preds = %118
  %141 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %333, label %144

144:                                              ; preds = %140
  %145 = getelementptr i8, ptr %142, i32 428
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %147 = or i32 %146, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  %148 = load ptr, ptr %141, align 4
  %149 = getelementptr i8, ptr %148, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #11, !srcloc !10
  %150 = load ptr, ptr %141, align 4
  %151 = getelementptr i8, ptr %150, i32 428
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %153 = or i32 %152, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  %154 = load ptr, ptr %141, align 4
  %155 = getelementptr i8, ptr %154, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #11, !srcloc !10
  %156 = load ptr, ptr %141, align 4
  %157 = getelementptr i8, ptr %156, i32 428
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %159 = and i32 %158, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %160 = load ptr, ptr %141, align 4
  %161 = getelementptr i8, ptr %160, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #11, !srcloc !10
  %162 = load ptr, ptr %119, align 4
  %163 = load ptr, ptr %2, align 4
  %164 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %163, i32 0, i32 7
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr i8, ptr %162, i32 %165
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #11, !srcloc !8
  %168 = load volatile i32, ptr @jiffies, align 64
  %169 = add i32 %168, 10
  %170 = load ptr, ptr %119, align 4
  %171 = load ptr, ptr %2, align 4
  %172 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %171, i32 0, i32 7
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr i8, ptr %170, i32 %173
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #11, !srcloc !8
  %176 = and i32 %175, 32768
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %184, %144
  %179 = load volatile i32, ptr @jiffies, align 64
  %180 = sub i32 %169, %179
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.clk_plle_training) #12
  br label %333

184:                                              ; preds = %178
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %185(i32 noundef 64424400) #11
  %186 = load ptr, ptr %119, align 4
  %187 = load ptr, ptr %2, align 4
  %188 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %187, i32 0, i32 7
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr i8, ptr %186, i32 %189
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #11, !srcloc !8
  %192 = and i32 %191, 32768
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %178, label %194

194:                                              ; preds = %184, %144, %118
  %195 = load ptr, ptr %2, align 4
  %196 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %195, i32 0, i32 26
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, 128
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %262, label %200

200:                                              ; preds = %194
  %201 = load ptr, ptr %119, align 4
  %202 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %195, i32 0, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr i8, ptr %201, i32 %203
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #11, !srcloc !8
  %206 = load ptr, ptr %2, align 4
  %207 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %206, i32 0, i32 26
  %208 = load i32, ptr %207, align 4
  %209 = and i32 %208, 16
  %210 = icmp eq i32 %209, 0
  %211 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %206, i32 0, i32 33
  %212 = load ptr, ptr %211, align 4
  br i1 %210, label %213, label %219

213:                                              ; preds = %200
  %214 = getelementptr inbounds %struct.div_nmp, ptr %212, i32 0, i32 5
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = shl nsw i32 -1, %216
  %218 = xor i32 %217, -1
  br label %219

219:                                              ; preds = %213, %200
  %220 = phi i32 [ %218, %213 ], [ 1, %200 ]
  %221 = getelementptr inbounds %struct.div_nmp, ptr %212, i32 0, i32 4
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i32
  %224 = shl i32 %220, %223
  %225 = getelementptr inbounds %struct.div_nmp, ptr %212, i32 0, i32 1
  %226 = load i8, ptr %225, align 1
  %227 = zext i8 %226 to i32
  %228 = shl nsw i32 -1, %227
  %229 = xor i32 %228, -1
  %230 = load i8, ptr %212, align 1
  %231 = zext i8 %230 to i32
  %232 = shl i32 %229, %231
  %233 = or i32 %232, %224
  %234 = getelementptr inbounds %struct.div_nmp, ptr %212, i32 0, i32 3
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i32
  %237 = shl nsw i32 -1, %236
  %238 = xor i32 %237, -1
  %239 = getelementptr inbounds %struct.div_nmp, ptr %212, i32 0, i32 2
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = shl i32 %238, %241
  %243 = or i32 %233, %242
  %244 = xor i32 %243, -1
  %245 = and i32 %205, -251658241
  %246 = and i32 %245, %244
  %247 = shl i32 %79, %241
  %248 = shl i32 %81, %231
  %249 = and i32 %77, 255
  %250 = shl i32 %249, %223
  %251 = zext i8 %83 to i32
  %252 = shl nuw i32 %251, 24
  %253 = or i32 %250, %252
  %254 = or i32 %253, %248
  %255 = or i32 %254, %247
  %256 = or i32 %255, %246
  %257 = load ptr, ptr %119, align 4
  %258 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %206, i32 0, i32 6
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr i8, ptr %257, i32 %259
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 %256) #11, !srcloc !10
  %261 = load ptr, ptr %2, align 4
  br label %262

262:                                              ; preds = %219, %194
  %263 = phi ptr [ %261, %219 ], [ %195, %194 ]
  %264 = load ptr, ptr %119, align 4
  %265 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %263, i32 0, i32 7
  %266 = load i32, ptr %265, align 4
  %267 = getelementptr i8, ptr %264, i32 %266
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #11, !srcloc !8
  %269 = or i32 %268, 459264
  %270 = load ptr, ptr %119, align 4
  %271 = load ptr, ptr %2, align 4
  %272 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %271, i32 0, i32 7
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr i8, ptr %270, i32 %273
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %269) #11, !srcloc !10
  %275 = load ptr, ptr %119, align 4
  %276 = getelementptr i8, ptr %275, i32 104
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %276) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !22
  %278 = and i32 %277, -1073683968
  %279 = or i32 %278, 7168
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !23
  tail call void @arm_heavy_mb() #11
  %280 = load ptr, ptr %119, align 4
  %281 = getelementptr i8, ptr %280, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %279) #11, !srcloc !10
  %282 = load ptr, ptr %119, align 4
  %283 = load ptr, ptr %2, align 4
  %284 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %283, i32 0, i32 6
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr i8, ptr %282, i32 %285
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %286) #11, !srcloc !8
  %288 = or i32 %287, -1073741824
  %289 = load ptr, ptr %119, align 4
  %290 = load ptr, ptr %2, align 4
  %291 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %290, i32 0, i32 6
  %292 = load i32, ptr %291, align 4
  %293 = getelementptr i8, ptr %289, i32 %292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 %288) #11, !srcloc !10
  %294 = load ptr, ptr %2, align 4
  %295 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %294, i32 0, i32 26
  %296 = load i32, ptr %295, align 4
  %297 = and i32 %296, 1
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %262
  %300 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %294, i32 0, i32 29
  %301 = load i32, ptr %300, align 4
  %302 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %302(i32 noundef %301) #11
  br label %333

303:                                              ; preds = %262
  %304 = load ptr, ptr %119, align 4
  %305 = and i32 %296, 256
  %306 = icmp eq i32 %305, 0
  %307 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %294, i32 0, i32 7
  %308 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %294, i32 0, i32 6
  %309 = select i1 %306, ptr %308, ptr %307
  %310 = load i32, ptr %309, align 4
  %311 = getelementptr i8, ptr %304, i32 %310
  %312 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %294, i32 0, i32 9
  %313 = load i32, ptr %312, align 4
  %314 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %294, i32 0, i32 29
  %315 = load i32, ptr %314, align 4
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %330

317:                                              ; preds = %324, %303
  %318 = phi i32 [ %325, %324 ], [ 0, %303 ]
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %311) #11, !srcloc !8
  %320 = and i32 %319, %313
  %321 = icmp eq i32 %320, %313
  %322 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %321, label %323, label %324

323:                                              ; preds = %317
  tail call void %322(i32 noundef 10737400) #11
  br label %333

324:                                              ; preds = %317
  tail call void %322(i32 noundef 429496) #11
  %325 = add nuw nsw i32 %318, 1
  %326 = load ptr, ptr %2, align 4
  %327 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %326, i32 0, i32 29
  %328 = load i32, ptr %327, align 4
  %329 = icmp slt i32 %325, %328
  br i1 %329, label %317, label %330

330:                                              ; preds = %324, %303
  %331 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_pll_wait_for_lock, ptr noundef %331) #12
  br label %333

333:                                              ; preds = %330, %323, %299, %182, %140, %62, %55, %45, %27, %17
  %334 = phi i32 [ 0, %17 ], [ -16, %182 ], [ -38, %140 ], [ 0, %299 ], [ 0, %323 ], [ 0, %330 ], [ -22, %55 ], [ -22, %27 ], [ -22, %62 ], [ -22, %45 ]
  ret i32 %334
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_plle_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  %11 = zext i32 %1 to i64
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 33
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.div_nmp, ptr %14, i32 0, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %10, %17
  %19 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 26
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.div_nmp, ptr %14, i32 0, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nsw i32 -1, %26
  %28 = xor i32 %27, -1
  br label %29

29:                                               ; preds = %23, %2
  %30 = phi i32 [ %28, %23 ], [ 1, %2 ]
  %31 = and i32 %30, %18
  %32 = load i8, ptr %14, align 1
  %33 = zext i8 %32 to i32
  %34 = lshr i32 %10, %33
  %35 = getelementptr inbounds %struct.div_nmp, ptr %14, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nsw i32 -1, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %34, %39
  %41 = getelementptr inbounds %struct.div_nmp, ptr %14, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = lshr i32 %10, %43
  %45 = getelementptr inbounds %struct.div_nmp, ptr %14, i32 0, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nsw i32 -1, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %44, %49
  %51 = mul i32 %50, %31
  %52 = zext i32 %40 to i64
  %53 = mul nuw i64 %52, %11
  %54 = icmp ult i64 %53, 4294967296
  br i1 %54, label %55, label %58, !prof !13

55:                                               ; preds = %29
  %56 = trunc i64 %53 to i32
  %57 = udiv i32 %56, %51
  br label %62

58:                                               ; preds = %29
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %51, i64 %53) #13, !srcloc !14
  %60 = extractvalue { i64, i64 } %59, 1
  %61 = trunc i64 %60 to i32
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i32 [ %57, %55 ], [ %61, %58 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @tegra_pll_get_fixed_mdiv(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %1, %11
  %13 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 36
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 0
  %16 = and i32 %12, 65535
  %17 = zext i16 %14 to i32
  %18 = tail call i32 @llvm.umin.i32(i32 %16, i32 %17) #11
  %19 = select i1 %15, i32 %16, i32 %18
  br label %31

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 36
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = zext i16 %22 to i32
  br label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, %1
  %30 = select i1 %29, i32 2, i32 1
  br label %31

31:                                               ; preds = %26, %24, %9
  %32 = phi i32 [ %19, %9 ], [ %25, %24 ], [ %30, %26 ]
  %33 = trunc i32 %32 to i16
  ret i16 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pll(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  %10 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 26
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 512
  store i32 %12, ptr %10, align 4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 28) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.tegra_clk_pll, ptr %14, i32 0, i32 1
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tegra_clk_pll, ptr %14, i32 0, i32 2
  store ptr %3, ptr %18, align 8
  %19 = getelementptr inbounds %struct.tegra_clk_pll, ptr %14, i32 0, i32 4
  store ptr %5, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tegra_clk_pll, ptr %14, i32 0, i32 3
  store ptr %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 33
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store ptr @default_nmp, ptr %21, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %55, label %27

27:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #11
  %28 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %28, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %9, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @tegra_clk_pll_ops, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %4, ptr %30, align 4
  %31 = icmp eq ptr %1, null
  %32 = select i1 %31, ptr null, ptr %8
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = icmp ne ptr %1, null
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 39
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load i32, ptr %10, align 4
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %44, ptr %37, align 4
  br label %45

45:                                               ; preds = %40, %27
  %46 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 41
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  call void %47(ptr noundef nonnull %14) #11
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.clk_hw, ptr %14, i32 0, i32 2
  store ptr %9, ptr %51, align 8
  %52 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @kfree(ptr noundef nonnull %14) #11
  br label %55

55:                                               ; preds = %54, %50, %25, %7
  %56 = phi ptr [ %52, %54 ], [ %52, %50 ], [ %14, %25 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_plle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  %10 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 26
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 512
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 33
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  store ptr @pll_e_nmp, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %7
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 28) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tegra_clk_pll, ptr %19, i32 0, i32 1
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tegra_clk_pll, ptr %19, i32 0, i32 2
  store ptr %3, ptr %23, align 8
  %24 = getelementptr inbounds %struct.tegra_clk_pll, ptr %19, i32 0, i32 4
  store ptr %5, ptr %24, align 8
  %25 = getelementptr inbounds %struct.tegra_clk_pll, ptr %19, i32 0, i32 3
  store ptr %6, ptr %25, align 4
  %26 = load ptr, ptr %13, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store ptr @default_nmp, ptr %13, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %59, label %31

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #11
  %32 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %32, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %9, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @tegra_clk_plle_ops, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %4, ptr %34, align 4
  %35 = icmp eq ptr %1, null
  %36 = select i1 %35, ptr null, ptr %8
  %37 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = icmp ne ptr %1, null
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 39
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load i32, ptr %10, align 4
  %46 = and i32 %45, 32
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %48, ptr %41, align 4
  br label %49

49:                                               ; preds = %44, %31
  %50 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 41
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void %51(ptr noundef nonnull %19) #11
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.clk_hw, ptr %19, i32 0, i32 2
  store ptr %9, ptr %55, align 8
  %56 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  call void @kfree(ptr noundef nonnull %19) #11
  br label %59

59:                                               ; preds = %58, %54, %29, %17
  %60 = phi ptr [ %56, %58 ], [ %56, %54 ], [ %19, %29 ], [ inttoptr (i32 -12 to ptr), %17 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllu(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  %9 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 26
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 16
  store i32 %11, ptr %9, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 28) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.tegra_clk_pll, ptr %13, i32 0, i32 1
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_clk_pll, ptr %13, i32 0, i32 2
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.tegra_clk_pll, ptr %13, i32 0, i32 4
  store ptr %4, ptr %18, align 8
  %19 = getelementptr inbounds %struct.tegra_clk_pll, ptr %13, i32 0, i32 3
  store ptr %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 33
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store ptr @default_nmp, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %54, label %26

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store ptr %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #11
  %27 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %27, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %8, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @tegra_clk_pllu_ops, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %3, ptr %29, align 4
  %30 = icmp eq ptr %1, null
  %31 = select i1 %30, ptr null, ptr %7
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp ne ptr %1, null
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 39
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load i32, ptr %9, align 4
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %43, ptr %36, align 4
  br label %44

44:                                               ; preds = %39, %26
  %45 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 41
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void %46(ptr noundef nonnull %13) #11
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %8, ptr %50, align 8
  %51 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @kfree(ptr noundef nonnull %13) #11
  br label %54

54:                                               ; preds = %53, %49, %24, %6
  %55 = phi ptr [ %51, %53 ], [ %51, %49 ], [ %13, %24 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllxc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  %10 = tail call ptr @__clk_lookup(ptr noundef %1) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2056, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %0) #11
  br label %116

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %116, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @clk_get_rate(ptr noundef nonnull %10) #11
  %19 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, -1
  %22 = add i32 %21, %20
  %23 = urem i32 %22, %18
  %24 = sub i32 %22, %23
  store i32 %24, ptr %19, align 4
  %25 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 40
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = tail call i32 %26(ptr noundef %5, i32 noundef %18) #11
  store i32 %29, ptr %19, align 4
  br label %30

30:                                               ; preds = %28, %17
  %31 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 41
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %73

34:                                               ; preds = %30
  switch i32 %18, label %71 [
    i32 12000000, label %37
    i32 13000000, label %37
    i32 26000000, label %37
    i32 16800000, label %35
    i32 19200000, label %36
  ]

35:                                               ; preds = %34
  br label %37

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %35, %34, %34, %34
  %38 = phi i32 [ 18, %36 ], [ 26, %35 ], [ 43, %34 ], [ 43, %34 ], [ 43, %34 ]
  %39 = phi i32 [ 8, %36 ], [ 9, %35 ], [ 11, %34 ], [ 11, %34 ], [ 11, %34 ]
  %40 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 27
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %38, %41
  %43 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 28
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %39, %44
  %46 = or i32 %45, %42
  %47 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 22
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %2, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #11, !srcloc !10
  %50 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %2, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !8
  %54 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %2, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !8
  %58 = and i32 %53, 1073741824
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 12
  %61 = load i32, ptr %60, align 4
  %62 = shl nuw i32 1, %61
  br i1 %59, label %67, label %63

63:                                               ; preds = %37
  %64 = and i32 %62, %57
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66, !prof !13

66:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2086, i32 noundef 9, ptr noundef null) #11
  br label %73

67:                                               ; preds = %37
  %68 = or i32 %62, %57
  %69 = load i32, ptr %54, align 4
  %70 = getelementptr i8, ptr %2, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #11, !srcloc !10
  br label %73

71:                                               ; preds = %34
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._setup_dynamic_ramp, i32 noundef %18) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1292, i32 noundef 9, ptr noundef null) #11
  br label %116

73:                                               ; preds = %67, %66, %63, %30
  %74 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 28) #14
  %76 = icmp eq ptr %75, null
  br i1 %76, label %116, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tegra_clk_pll, ptr %75, i32 0, i32 1
  store ptr %2, ptr %78, align 4
  %79 = getelementptr inbounds %struct.tegra_clk_pll, ptr %75, i32 0, i32 2
  store ptr %3, ptr %79, align 8
  %80 = getelementptr inbounds %struct.tegra_clk_pll, ptr %75, i32 0, i32 4
  store ptr %5, ptr %80, align 8
  %81 = getelementptr inbounds %struct.tegra_clk_pll, ptr %75, i32 0, i32 3
  store ptr %6, ptr %81, align 4
  %82 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 33
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store ptr @default_nmp, ptr %82, align 4
  br label %86

86:                                               ; preds = %85, %77
  %87 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %116, label %88

88:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #11
  %89 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %89, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %9, align 4
  %90 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @tegra_clk_pllxc_ops, ptr %90, align 4
  %91 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %4, ptr %91, align 4
  %92 = icmp eq ptr %1, null
  %93 = select i1 %92, ptr null, ptr %8
  %94 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %93, ptr %94, align 4
  %95 = icmp ne ptr %1, null
  %96 = zext i1 %95 to i8
  %97 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 39
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 26
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 32
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %106, ptr %98, align 4
  br label %107

107:                                              ; preds = %101, %88
  %108 = load ptr, ptr %31, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  call void %108(ptr noundef nonnull %75) #11
  br label %111

111:                                              ; preds = %110, %107
  %112 = getelementptr inbounds %struct.clk_hw, ptr %75, i32 0, i32 2
  store ptr %9, ptr %112, align 8
  %113 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %75) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %114 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  call void @kfree(ptr noundef nonnull %75) #11
  br label %116

116:                                              ; preds = %115, %111, %86, %73, %71, %13, %12
  %117 = phi ptr [ inttoptr (i32 -22 to ptr), %71 ], [ inttoptr (i32 -22 to ptr), %12 ], [ %113, %115 ], [ %113, %111 ], [ inttoptr (i32 -22 to ptr), %13 ], [ %75, %86 ], [ inttoptr (i32 -12 to ptr), %73 ]
  ret ptr %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllre(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = alloca %struct.clk_init_data, align 4
  %11 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %7, -1
  %14 = add i32 %13, %12
  %15 = urem i32 %14, %7
  %16 = sub i32 %14, %15
  store i32 %16, ptr %11, align 4
  %17 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 40
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = tail call i32 %18(ptr noundef %5, i32 noundef %7) #11
  store i32 %21, ptr %11, align 4
  br label %22

22:                                               ; preds = %20, %8
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 28) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %145, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tegra_clk_pll, ptr %24, i32 0, i32 1
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tegra_clk_pll, ptr %24, i32 0, i32 2
  store ptr %3, ptr %28, align 8
  %29 = getelementptr inbounds %struct.tegra_clk_pll, ptr %24, i32 0, i32 4
  store ptr %5, ptr %29, align 8
  %30 = getelementptr inbounds %struct.tegra_clk_pll, ptr %24, i32 0, i32 3
  store ptr %6, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 33
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store ptr @default_nmp, ptr %31, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %145, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %2, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !8
  %42 = and i32 %41, 1073741824
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %2, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !8
  %49 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 12
  %50 = load i32, ptr %49, align 4
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %48
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %101, label %54, !prof !13

54:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2131, i32 noundef 9, ptr noundef null) #11
  br label %101

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 26
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 2048
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = udiv i32 %7, %62
  %64 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 36
  %65 = load i16, ptr %64, align 4
  %66 = icmp eq i16 %65, 0
  %67 = and i32 %63, 65535
  %68 = zext i16 %65 to i32
  %69 = tail call i32 @llvm.umin.i32(i32 %67, i32 %68) #11
  %70 = select i1 %66, i32 %67, i32 %69
  br label %82

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 36
  %73 = load i16, ptr %72, align 4
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = zext i16 %73 to i32
  br label %82

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %79, %7
  %81 = select i1 %80, i32 2, i32 1
  br label %82

82:                                               ; preds = %77, %75, %60
  %83 = phi i32 [ %70, %60 ], [ %76, %75 ], [ %81, %77 ]
  %84 = load ptr, ptr %29, align 8
  %85 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %84, i32 0, i32 33
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.div_nmp, ptr %86, i32 0, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl i32 %83, %89
  %91 = load i32, ptr %11, align 4
  %92 = udiv i32 %91, %7
  %93 = load i8, ptr %86, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %92, %94
  %96 = or i32 %95, %90
  %97 = load ptr, ptr %27, align 4
  %98 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %84, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr i8, ptr %97, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %96) #11, !srcloc !10
  br label %101

101:                                              ; preds = %82, %54, %44
  %102 = load ptr, ptr %27, align 4
  %103 = load ptr, ptr %29, align 8
  %104 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %103, i32 0, i32 7
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %102, i32 %105
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #11, !srcloc !8
  %108 = and i32 %107, -536870913
  %109 = load ptr, ptr %27, align 4
  %110 = load ptr, ptr %29, align 8
  %111 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %110, i32 0, i32 7
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %109, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %108) #11, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  store ptr %1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #11
  %114 = getelementptr inbounds i8, ptr %10, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %114, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %10, align 4
  %115 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr @tegra_clk_pllre_ops, ptr %115, align 4
  %116 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  store i32 %4, ptr %116, align 4
  %117 = icmp eq ptr %1, null
  %118 = select i1 %117, ptr null, ptr %9
  %119 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %118, ptr %119, align 4
  %120 = icmp ne ptr %1, null
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 %121, ptr %122, align 4
  %123 = load ptr, ptr %29, align 8
  %124 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %123, i32 0, i32 39
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %101
  %128 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %123, i32 0, i32 26
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 32
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %132, ptr %124, align 4
  %133 = load ptr, ptr %29, align 8
  br label %134

134:                                              ; preds = %127, %101
  %135 = phi ptr [ %133, %127 ], [ %123, %101 ]
  %136 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %135, i32 0, i32 41
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  call void %137(ptr noundef nonnull %24) #11
  br label %140

140:                                              ; preds = %139, %134
  %141 = getelementptr inbounds %struct.clk_hw, ptr %24, i32 0, i32 2
  store ptr %10, ptr %141, align 8
  %142 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  %143 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void @kfree(ptr noundef nonnull %24) #11
  br label %145

145:                                              ; preds = %144, %140, %35, %22
  %146 = phi ptr [ %142, %144 ], [ %142, %140 ], [ %24, %35 ], [ inttoptr (i32 -12 to ptr), %22 ]
  ret ptr %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  %10 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %76, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @__clk_lookup(ptr noundef %1) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2171, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %0) #11
  br label %76

17:                                               ; preds = %13
  %18 = tail call i32 @clk_get_rate(ptr noundef nonnull %14) #11
  %19 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, -1
  %22 = add i32 %21, %20
  %23 = urem i32 %22, %18
  %24 = sub i32 %22, %23
  store i32 %24, ptr %19, align 4
  %25 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 40
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = tail call i32 %26(ptr noundef %5, i32 noundef %18) #11
  store i32 %29, ptr %19, align 4
  br label %30

30:                                               ; preds = %28, %17
  %31 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 26
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 544
  store i32 %33, ptr %31, align 4
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 28) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %76, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.tegra_clk_pll, ptr %35, i32 0, i32 1
  store ptr %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.tegra_clk_pll, ptr %35, i32 0, i32 2
  store ptr %3, ptr %39, align 8
  %40 = getelementptr inbounds %struct.tegra_clk_pll, ptr %35, i32 0, i32 4
  store ptr %5, ptr %40, align 8
  %41 = getelementptr inbounds %struct.tegra_clk_pll, ptr %35, i32 0, i32 3
  store ptr %6, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 33
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store ptr @default_nmp, ptr %42, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %76, label %48

48:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #11
  %49 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %49, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %9, align 4
  %50 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @tegra_clk_pll_ops, ptr %50, align 4
  %51 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %4, ptr %51, align 4
  %52 = icmp eq ptr %1, null
  %53 = select i1 %52, ptr null, ptr %8
  %54 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %53, ptr %54, align 4
  %55 = icmp ne ptr %1, null
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 39
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %48
  %62 = load i32, ptr %31, align 4
  %63 = and i32 %62, 32
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %65, ptr %58, align 4
  br label %66

66:                                               ; preds = %61, %48
  %67 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 41
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void %68(ptr noundef nonnull %35) #11
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %struct.clk_hw, ptr %35, i32 0, i32 2
  store ptr %9, ptr %72, align 8
  %73 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %35) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  call void @kfree(ptr noundef nonnull %35) #11
  br label %76

76:                                               ; preds = %75, %71, %46, %30, %16, %7
  %77 = phi ptr [ inttoptr (i32 -22 to ptr), %16 ], [ %73, %75 ], [ %73, %71 ], [ inttoptr (i32 -22 to ptr), %7 ], [ %35, %46 ], [ inttoptr (i32 -12 to ptr), %30 ]
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  %10 = alloca %struct.tegra_clk_pll_freq_table, align 4
  %11 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 32
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false), !annotation !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %160, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @__clk_lookup(ptr noundef %1) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2215, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %0) #11
  br label %160

18:                                               ; preds = %14
  %19 = tail call i32 @clk_get_rate(ptr noundef nonnull %15) #11
  %20 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, -1
  %23 = add i32 %22, %21
  %24 = urem i32 %23, %19
  %25 = sub i32 %23, %24
  store i32 %25, ptr %20, align 4
  %26 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 26
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 512
  store i32 %28, ptr %26, align 4
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 28) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %160, label %32

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.tegra_clk_pll, ptr %30, i32 0, i32 1
  store ptr %2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.tegra_clk_pll, ptr %30, i32 0, i32 2
  store ptr %3, ptr %34, align 8
  %35 = getelementptr inbounds %struct.tegra_clk_pll, ptr %30, i32 0, i32 4
  store ptr %5, ptr %35, align 8
  %36 = getelementptr inbounds %struct.tegra_clk_pll, ptr %30, i32 0, i32 3
  store ptr %6, ptr %36, align 4
  %37 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 33
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store ptr @default_nmp, ptr %37, align 4
  br label %41

41:                                               ; preds = %40, %32
  %42 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %160, label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %26, align 4
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = udiv i32 %19, %49
  %51 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 36
  %52 = load i16, ptr %51, align 4
  %53 = icmp eq i16 %52, 0
  %54 = and i32 %50, 65535
  %55 = zext i16 %52 to i32
  %56 = tail call i32 @llvm.umin.i32(i32 %54, i32 %55) #11
  %57 = select i1 %53, i32 %54, i32 %56
  br label %69

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 36
  %60 = load i16, ptr %59, align 4
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = zext i16 %60 to i32
  br label %69

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, %19
  %68 = select i1 %67, i32 2, i32 1
  br label %69

69:                                               ; preds = %64, %62, %47
  %70 = phi i32 [ %57, %47 ], [ %63, %62 ], [ %68, %64 ]
  %71 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %10, i32 0, i32 3
  store i32 %70, ptr %71, align 4
  %72 = load i32, ptr %20, align 4
  %73 = mul i32 %72, %70
  %74 = udiv i32 %73, %19
  %75 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %10, i32 0, i32 2
  store i32 %74, ptr %75, align 4
  br label %76

76:                                               ; preds = %79, %69
  %77 = phi ptr [ %12, %69 ], [ %80, %79 ]
  %78 = load i8, ptr %77, align 1
  switch i8 %78, label %79 [
    i8 0, label %81
    i8 2, label %82
  ]

79:                                               ; preds = %76
  %80 = getelementptr %struct.pdiv_map, ptr %77, i32 1
  br label %76

81:                                               ; preds = %76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2249, i32 noundef 9, ptr noundef null) #11
  br label %160

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.pdiv_map, ptr %77, i32 0, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %10, i32 0, i32 4
  store i8 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %2, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #11, !srcloc !10
  call fastcc void @_update_pll_mnp(ptr noundef nonnull %30, ptr noundef nonnull %10)
  %89 = load ptr, ptr %33, align 4
  %90 = load ptr, ptr %35, align 8
  %91 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 7
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i8, ptr %89, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 1415868496) #11, !srcloc !10
  %94 = load ptr, ptr %33, align 4
  %95 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 23
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i8, ptr %94, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 860936) #11, !srcloc !10
  %98 = load ptr, ptr %33, align 4
  %99 = getelementptr %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 23, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %98, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 807473664) #11, !srcloc !10
  %102 = load ptr, ptr %33, align 4
  %103 = getelementptr %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 23, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr i8, ptr %102, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 512) #11, !srcloc !10
  switch i32 %19, label %109 [
    i32 12000000, label %111
    i32 13000000, label %106
    i32 26000000, label %106
    i32 16800000, label %107
    i32 19200000, label %108
  ]

106:                                              ; preds = %82, %82
  br label %111

107:                                              ; preds = %82
  br label %111

108:                                              ; preds = %82
  br label %111

109:                                              ; preds = %82
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._pllcx_update_dynamic_coef, i32 noundef %19) #12
  br label %128

111:                                              ; preds = %108, %107, %106, %82
  %112 = phi i32 [ 48, %108 ], [ 55, %107 ], [ 71, %106 ], [ 70, %82 ]
  %113 = load ptr, ptr %33, align 4
  %114 = load ptr, ptr %35, align 8
  %115 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %114, i32 0, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i8, ptr %113, i32 %116
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #11, !srcloc !8
  %119 = and i32 %118, -1006632961
  %120 = icmp ult i32 %112, %74
  %121 = select i1 %120, i32 671088640, i32 335544320
  %122 = or i32 %119, %121
  %123 = load ptr, ptr %33, align 4
  %124 = load ptr, ptr %35, align 8
  %125 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %124, i32 0, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr i8, ptr %123, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %122) #11, !srcloc !10
  br label %128

128:                                              ; preds = %111, %109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #11
  %129 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %129, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %9, align 4
  %130 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @tegra_clk_pllc_ops, ptr %130, align 4
  %131 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %4, ptr %131, align 4
  %132 = icmp eq ptr %1, null
  %133 = select i1 %132, ptr null, ptr %8
  %134 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %133, ptr %134, align 4
  %135 = icmp ne ptr %1, null
  %136 = zext i1 %135 to i8
  %137 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %136, ptr %137, align 4
  %138 = load ptr, ptr %35, align 8
  %139 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %138, i32 0, i32 39
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %128
  %143 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %138, i32 0, i32 26
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 32
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %147, ptr %139, align 4
  %148 = load ptr, ptr %35, align 8
  br label %149

149:                                              ; preds = %142, %128
  %150 = phi ptr [ %148, %142 ], [ %138, %128 ]
  %151 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %150, i32 0, i32 41
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  call void %152(ptr noundef nonnull %30) #11
  br label %155

155:                                              ; preds = %154, %149
  %156 = getelementptr inbounds %struct.clk_hw, ptr %30, i32 0, i32 2
  store ptr %9, ptr %156, align 8
  %157 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %158 = icmp ugt ptr %157, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  call void @kfree(ptr noundef nonnull %30) #11
  br label %160

160:                                              ; preds = %159, %155, %81, %41, %18, %17, %7
  %161 = phi ptr [ inttoptr (i32 -22 to ptr), %81 ], [ inttoptr (i32 -22 to ptr), %17 ], [ %157, %159 ], [ %157, %155 ], [ inttoptr (i32 -22 to ptr), %7 ], [ %30, %41 ], [ inttoptr (i32 -12 to ptr), %18 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #11
  ret ptr %161
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_update_pll_mnp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 33
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %95, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 248
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load ptr, ptr %3, align 4
  br label %95

20:                                               ; preds = %11
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %26, i32 0, i32 26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %26, i32 0, i32 33
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.div_nmp, ptr %33, i32 0, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nsw i32 -1, %36
  %38 = xor i32 %37, -1
  br label %39

39:                                               ; preds = %31, %20
  %40 = phi i32 [ %38, %31 ], [ 1, %20 ]
  %41 = getelementptr inbounds %struct.div_nmp, ptr %6, i32 0, i32 8
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %40, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %25, %45
  %47 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, %43
  %51 = or i32 %46, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %52 = load ptr, ptr %12, align 4
  %53 = load i32, ptr %22, align 4
  %54 = getelementptr i8, ptr %52, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %51) #11, !srcloc !10
  %55 = load ptr, ptr %12, align 4
  %56 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 24
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %55, i32 %57
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !8
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %60, i32 0, i32 33
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.div_nmp, ptr %62, i32 0, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nsw i32 -1, %65
  %67 = xor i32 %66, -1
  %68 = getelementptr inbounds %struct.div_nmp, ptr %6, i32 0, i32 7
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %67, %70
  %72 = getelementptr inbounds %struct.div_nmp, ptr %62, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl nsw i32 -1, %74
  %76 = xor i32 %75, -1
  %77 = getelementptr inbounds %struct.div_nmp, ptr %6, i32 0, i32 6
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %76, %79
  %81 = or i32 %80, %71
  %82 = xor i32 %81, -1
  %83 = and i32 %59, %82
  %84 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, %70
  %87 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, %79
  %90 = or i32 %89, %86
  %91 = or i32 %90, %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  %92 = load ptr, ptr %12, align 4
  %93 = load i32, ptr %56, align 4
  %94 = getelementptr i8, ptr %92, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %91) #11, !srcloc !10
  br label %215

95:                                               ; preds = %18, %2
  %96 = phi ptr [ %19, %18 ], [ %4, %2 ]
  %97 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %96, i32 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %98, i32 %100
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #11, !srcloc !8
  %103 = load ptr, ptr %3, align 4
  %104 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %103, i32 0, i32 33
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.div_nmp, ptr %105, i32 0, i32 3
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl nsw i32 -1, %108
  %110 = xor i32 %109, -1
  %111 = getelementptr inbounds %struct.div_nmp, ptr %105, i32 0, i32 2
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %110, %113
  %115 = getelementptr inbounds %struct.div_nmp, ptr %105, i32 0, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl nsw i32 -1, %117
  %119 = xor i32 %118, -1
  %120 = load i8, ptr %105, align 1
  %121 = zext i8 %120 to i32
  %122 = shl i32 %119, %121
  %123 = or i32 %122, %114
  %124 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %103, i32 0, i32 26
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 16
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %95
  %129 = getelementptr inbounds %struct.div_nmp, ptr %105, i32 0, i32 5
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl nsw i32 -1, %131
  %133 = xor i32 %132, -1
  br label %134

134:                                              ; preds = %128, %95
  %135 = phi i32 [ %133, %128 ], [ 1, %95 ]
  %136 = getelementptr inbounds %struct.div_nmp, ptr %105, i32 0, i32 4
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = shl i32 %135, %138
  %140 = or i32 %123, %139
  %141 = xor i32 %140, -1
  %142 = and i32 %102, %141
  %143 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = shl i32 %144, %113
  %146 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = shl i32 %147, %121
  %149 = or i32 %148, %145
  %150 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  %151 = load i8, ptr %150, align 4
  %152 = zext i8 %151 to i32
  %153 = shl i32 %152, %138
  %154 = or i32 %149, %142
  %155 = or i32 %154, %153
  %156 = load ptr, ptr %97, align 4
  %157 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %103, i32 0, i32 6
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr i8, ptr %156, i32 %158
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %155) #11, !srcloc !10
  %160 = load ptr, ptr %3, align 4
  %161 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %160, i32 0, i32 15
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %215, label %164

164:                                              ; preds = %134
  %165 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 6
  %166 = load i16, ptr %165, align 2
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %188, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %97, align 4
  %170 = getelementptr i8, ptr %169, i32 %162
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #11, !srcloc !8
  %172 = load ptr, ptr %3, align 4
  %173 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %172, i32 0, i32 16
  %174 = load i32, ptr %173, align 4
  %175 = xor i32 %174, -1
  %176 = and i32 %171, %175
  %177 = load i16, ptr %165, align 2
  %178 = icmp eq i16 %177, -1
  %179 = select i1 %178, i16 0, i16 %177
  %180 = sext i16 %179 to i32
  %181 = and i32 %174, %180
  %182 = or i32 %181, %176
  %183 = load ptr, ptr %97, align 4
  %184 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %172, i32 0, i32 15
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr i8, ptr %183, i32 %185
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %182) #11, !srcloc !10
  %187 = load ptr, ptr %3, align 4
  br label %188

188:                                              ; preds = %168, %164
  %189 = phi ptr [ %187, %168 ], [ %160, %164 ]
  %190 = load ptr, ptr %97, align 4
  %191 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %189, i32 0, i32 17
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr i8, ptr %190, i32 %192
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #11, !srcloc !8
  %195 = load ptr, ptr %3, align 4
  %196 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %195, i32 0, i32 18
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, %194
  %199 = icmp eq i32 %198, 0
  %200 = load i16, ptr %165, align 2
  %201 = icmp eq i16 %200, 0
  %202 = xor i1 %201, true
  %203 = select i1 %202, i1 true, i1 %199
  %204 = xor i32 %197, -1
  %205 = select i1 %203, i32 -1, i32 %204
  %206 = and i32 %205, %194
  %207 = xor i1 %199, true
  %208 = select i1 %201, i1 true, i1 %207
  %209 = or i32 %197, %194
  %210 = select i1 %208, i32 %206, i32 %209
  %211 = load ptr, ptr %97, align 4
  %212 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %195, i32 0, i32 17
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr i8, ptr %211, i32 %213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %210) #11, !srcloc !10
  br label %215

215:                                              ; preds = %188, %134, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_plle_tegra114(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %85, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tegra_clk_pll, ptr %10, i32 0, i32 1
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tegra_clk_pll, ptr %10, i32 0, i32 2
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tegra_clk_pll, ptr %10, i32 0, i32 4
  store ptr %4, ptr %15, align 8
  %16 = getelementptr inbounds %struct.tegra_clk_pll, ptr %10, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 33
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store ptr @default_nmp, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %85, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %2, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !8
  %28 = load ptr, ptr %13, align 4
  %29 = load ptr, ptr %15, align 8
  %30 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %29, i32 0, i32 21
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  %34 = and i32 %27, 1073741824
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %23
  %37 = and i32 %33, 268435460
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = and i32 %33, 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @.str.15, ptr @.str.14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1860, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull %42) #11
  br label %53

43:                                               ; preds = %23
  %44 = and i32 %33, -268435461
  %45 = load ptr, ptr %13, align 4
  %46 = load ptr, ptr %15, align 8
  %47 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %46, i32 0, i32 21
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %45, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %44) #11, !srcloc !10
  %50 = load ptr, ptr %13, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #11
  br label %53

53:                                               ; preds = %43, %39, %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store ptr %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #11
  %54 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %54, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %8, align 4
  %55 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @tegra_clk_plle_tegra114_ops, ptr %55, align 4
  %56 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %3, ptr %56, align 4
  %57 = icmp eq ptr %1, null
  %58 = select i1 %57, ptr null, ptr %7
  %59 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %58, ptr %59, align 4
  %60 = icmp ne ptr %1, null
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %61, ptr %62, align 4
  %63 = load ptr, ptr %15, align 8
  %64 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %63, i32 0, i32 39
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %63, i32 0, i32 26
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 32
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %72, ptr %64, align 4
  %73 = load ptr, ptr %15, align 8
  br label %74

74:                                               ; preds = %67, %53
  %75 = phi ptr [ %73, %67 ], [ %63, %53 ]
  %76 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %75, i32 0, i32 41
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  call void %77(ptr noundef nonnull %10) #11
  br label %80

80:                                               ; preds = %79, %74
  %81 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %8, ptr %81, align 8
  %82 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  call void @kfree(ptr noundef nonnull %10) #11
  br label %85

85:                                               ; preds = %84, %80, %21, %6
  %86 = phi ptr [ %82, %84 ], [ %82, %80 ], [ %10, %21 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllu_tegra114(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  %9 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 26
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 16
  store i32 %11, ptr %9, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 28) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.tegra_clk_pll, ptr %13, i32 0, i32 1
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_clk_pll, ptr %13, i32 0, i32 2
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.tegra_clk_pll, ptr %13, i32 0, i32 4
  store ptr %4, ptr %18, align 8
  %19 = getelementptr inbounds %struct.tegra_clk_pll, ptr %13, i32 0, i32 3
  store ptr %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 33
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store ptr @default_nmp, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %54, label %26

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store ptr %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #11
  %27 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %27, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %8, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @tegra_clk_pllu_tegra114_ops, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %3, ptr %29, align 4
  %30 = icmp eq ptr %1, null
  %31 = select i1 %30, ptr null, ptr %7
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp ne ptr %1, null
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 39
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load i32, ptr %9, align 4
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %43, ptr %36, align 4
  br label %44

44:                                               ; preds = %39, %26
  %45 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 41
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void %46(ptr noundef nonnull %13) #11
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %8, ptr %50, align 8
  %51 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @kfree(ptr noundef nonnull %13) #11
  br label %54

54:                                               ; preds = %53, %49, %24, %6
  %55 = phi ptr [ %51, %53 ], [ %51, %49 ], [ %13, %24 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllss(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  %9 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false), !annotation !11
  %10 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 33
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %175, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @__clk_lookup(ptr noundef %1) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2347, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %0) #11
  br label %175

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 28) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %175, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tegra_clk_pll, ptr %19, i32 0, i32 1
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tegra_clk_pll, ptr %19, i32 0, i32 2
  store ptr null, ptr %23, align 8
  %24 = getelementptr inbounds %struct.tegra_clk_pll, ptr %19, i32 0, i32 4
  store ptr %4, ptr %24, align 8
  %25 = getelementptr inbounds %struct.tegra_clk_pll, ptr %19, i32 0, i32 3
  store ptr %5, ptr %25, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store ptr @default_nmp, ptr %10, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %175, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %2, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !8
  %36 = and i32 %35, -100663297
  %37 = load ptr, ptr %22, align 4
  %38 = load ptr, ptr %24, align 8
  %39 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %38, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %37, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %36) #11, !srcloc !10
  %42 = tail call i32 @clk_get_rate(ptr noundef nonnull %14) #11
  %43 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %42, -1
  %46 = add i32 %45, %44
  %47 = urem i32 %46, %42
  %48 = sub i32 %46, %47
  store i32 %48, ptr %43, align 4
  %49 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 26
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2048
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = udiv i32 %42, %55
  %57 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 36
  %58 = load i16, ptr %57, align 4
  %59 = icmp eq i16 %58, 0
  %60 = and i32 %56, 65535
  %61 = zext i16 %58 to i32
  %62 = tail call i32 @llvm.umin.i32(i32 %60, i32 %61) #11
  %63 = select i1 %59, i32 %60, i32 %62
  br label %75

64:                                               ; preds = %31
  %65 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 36
  %66 = load i16, ptr %65, align 4
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = zext i16 %66 to i32
  br label %75

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, %42
  %74 = select i1 %73, i32 2, i32 1
  br label %75

75:                                               ; preds = %70, %68, %53
  %76 = phi i32 [ %63, %53 ], [ %69, %68 ], [ %74, %70 ]
  %77 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %9, i32 0, i32 3
  store i32 %76, ptr %77, align 4
  %78 = mul i32 %76, %48
  %79 = udiv i32 %78, %42
  %80 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %9, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 32
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %83, %75
  %84 = phi i32 [ 0, %75 ], [ %88, %83 ]
  %85 = getelementptr %struct.pdiv_map, ptr %82, i32 %84
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  %88 = add i32 %84, 1
  br i1 %87, label %89, label %83

89:                                               ; preds = %83
  %90 = icmp eq i32 %84, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  tail call void @kfree(ptr noundef nonnull %19) #11
  br label %175

92:                                               ; preds = %89
  %93 = add i32 %84, -1
  %94 = getelementptr %struct.pdiv_map, ptr %82, i32 %93, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %9, i32 0, i32 4
  store i8 %95, ptr %96, align 4
  call fastcc void @_update_pll_mnp(ptr noundef nonnull %19, ptr noundef nonnull %9)
  %97 = load ptr, ptr %22, align 4
  %98 = load ptr, ptr %24, align 8
  %99 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %98, i32 0, i32 7
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %97, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 0) #11, !srcloc !10
  %102 = load ptr, ptr %22, align 4
  %103 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 23
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr i8, ptr %102, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 268435456) #11, !srcloc !10
  %106 = load ptr, ptr %22, align 4
  %107 = getelementptr %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 23, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr i8, ptr %106, i32 %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 0) #11, !srcloc !10
  %110 = load ptr, ptr %22, align 4
  %111 = getelementptr %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 23, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %110, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 0) #11, !srcloc !10
  %114 = load ptr, ptr %22, align 4
  %115 = load ptr, ptr %24, align 8
  %116 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %115, i32 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr i8, ptr %114, i32 %117
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #11, !srcloc !8
  %120 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 11
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %2, i32 %121
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #11, !srcloc !8
  %124 = and i32 %119, 1073741824
  %125 = icmp eq i32 %124, 0
  %126 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 12
  %127 = load i32, ptr %126, align 4
  %128 = shl nuw i32 1, %127
  br i1 %125, label %133, label %129

129:                                              ; preds = %92
  %130 = and i32 %128, %123
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2388, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %0) #11
  tail call void @kfree(ptr noundef nonnull %19) #11
  br label %175

133:                                              ; preds = %92
  %134 = or i32 %128, %123
  %135 = load i32, ptr %120, align 4
  %136 = getelementptr i8, ptr %2, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #11, !srcloc !10
  br label %137

137:                                              ; preds = %133, %129
  %138 = and i32 %119, -16777217
  %139 = load ptr, ptr %22, align 4
  %140 = load ptr, ptr %24, align 8
  %141 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %140, i32 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr i8, ptr %139, i32 %142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %138) #11, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store ptr %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #11
  %144 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %144, i8 0, i32 12, i1 false) #11, !annotation !11
  store ptr %0, ptr %8, align 4
  %145 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @tegra_clk_pllss_ops, ptr %145, align 4
  %146 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %3, ptr %146, align 4
  %147 = icmp eq ptr %1, null
  %148 = select i1 %147, ptr null, ptr %7
  %149 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %148, ptr %149, align 4
  %150 = icmp ne ptr %1, null
  %151 = zext i1 %150 to i8
  %152 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %151, ptr %152, align 4
  %153 = load ptr, ptr %24, align 8
  %154 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %153, i32 0, i32 39
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %137
  %158 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %153, i32 0, i32 26
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, 32
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  store ptr %162, ptr %154, align 4
  %163 = load ptr, ptr %24, align 8
  br label %164

164:                                              ; preds = %157, %137
  %165 = phi ptr [ %163, %157 ], [ %153, %137 ]
  %166 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %165, i32 0, i32 41
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  call void %167(ptr noundef nonnull %19) #11
  br label %170

170:                                              ; preds = %169, %164
  %171 = getelementptr inbounds %struct.clk_hw, ptr %19, i32 0, i32 2
  store ptr %8, ptr %171, align 8
  %172 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %173 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  call void @kfree(ptr noundef nonnull %19) #11
  br label %175

175:                                              ; preds = %174, %170, %132, %91, %29, %17, %16, %6
  %176 = phi ptr [ inttoptr (i32 -22 to ptr), %132 ], [ inttoptr (i32 -22 to ptr), %91 ], [ inttoptr (i32 -22 to ptr), %16 ], [ %172, %174 ], [ %172, %170 ], [ inttoptr (i32 -22 to ptr), %6 ], [ %19, %29 ], [ inttoptr (i32 -12 to ptr), %17 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #11
  ret ptr %176
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_clk_pll_enable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %5
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #11, !srcloc !10
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #11
  %23 = load ptr, ptr %2, align 4
  br label %24

24:                                               ; preds = %7, %1
  %25 = phi ptr [ %23, %7 ], [ %3, %1 ]
  %26 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %25, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %27
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %34, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = shl nuw i32 1, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %33, %38
  %40 = load ptr, ptr %30, align 4
  %41 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %34, i32 0, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %40, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #11, !srcloc !10
  %44 = load ptr, ptr %2, align 4
  br label %45

45:                                               ; preds = %29, %24
  %46 = phi ptr [ %44, %29 ], [ %25, %24 ]
  %47 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %46, i32 0, i32 26
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1025
  %50 = icmp eq i32 %49, 1025
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %46, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !8
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 10
  %60 = load i32, ptr %59, align 4
  %61 = shl nuw i32 1, %60
  %62 = or i32 %61, %57
  %63 = load ptr, ptr %52, align 4
  %64 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %62) #11, !srcloc !10
  %67 = load ptr, ptr %2, align 4
  br label %68

68:                                               ; preds = %51, %45
  %69 = phi ptr [ %46, %45 ], [ %67, %51 ]
  %70 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr i8, ptr %71, i32 %73
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !8
  %76 = load ptr, ptr %2, align 4
  %77 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %76, i32 0, i32 26
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 512
  %80 = icmp eq i32 %79, 0
  %81 = and i32 %75, 1073741823
  %82 = select i1 %80, i32 %75, i32 %81
  %83 = or i32 %82, 1073741824
  %84 = load ptr, ptr %70, align 4
  %85 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %76, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %83) #11, !srcloc !10
  %88 = load ptr, ptr %2, align 4
  %89 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %88, i32 0, i32 26
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %68
  %94 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 248
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #11, !srcloc !8
  %98 = or i32 %97, 4096
  %99 = load ptr, ptr %94, align 4
  %100 = getelementptr i8, ptr %99, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #11, !srcloc !10
  br label %101

101:                                              ; preds = %93, %68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_clk_pll_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %10, i32 0, i32 26
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %9, 1073741823
  %16 = select i1 %14, i32 %9, i32 %15
  %17 = and i32 %16, -1073741825
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %10, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #11, !srcloc !10
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %22, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 248
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !8
  %32 = and i32 %31, -4097
  %33 = load ptr, ptr %28, align 4
  %34 = getelementptr i8, ptr %33, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !10
  %35 = load ptr, ptr %4, align 4
  br label %36

36:                                               ; preds = %27, %1
  %37 = phi ptr [ %35, %27 ], [ %22, %1 ]
  %38 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %37, i32 0, i32 13
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr i8, ptr %42, i32 %39
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !8
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %45, i32 0, i32 14
  %47 = load i32, ptr %46, align 4
  %48 = shl nuw i32 1, %47
  %49 = or i32 %48, %44
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %45, i32 0, i32 13
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %50, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %49) #11, !srcloc !10
  %54 = load ptr, ptr %4, align 4
  br label %55

55:                                               ; preds = %41, %36
  %56 = phi ptr [ %54, %41 ], [ %37, %36 ]
  %57 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %56, i32 0, i32 11
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr i8, ptr %61, i32 %58
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !8
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %64, i32 0, i32 12
  %66 = load i32, ptr %65, align 4
  %67 = shl nuw i32 1, %66
  %68 = or i32 %67, %63
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %64, i32 0, i32 11
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr i8, ptr %69, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %68) #11, !srcloc !10
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 429496) #11
  br label %74

74:                                               ; preds = %60, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_get_enable_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_get_pll_mnp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 33
  %6 = load ptr, ptr %5, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %1, i8 0, i32 20, i1 false)
  %7 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %79, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 248
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %79, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 25
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %19, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  %24 = getelementptr inbounds %struct.div_nmp, ptr %6, i32 0, i32 8
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = lshr i32 %23, %26
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %28, i32 0, i32 26
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %28, i32 0, i32 33
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.div_nmp, ptr %35, i32 0, i32 5
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nsw i32 -1, %38
  %40 = xor i32 %39, -1
  br label %41

41:                                               ; preds = %33, %18
  %42 = phi i32 [ %40, %33 ], [ 1, %18 ]
  %43 = and i32 %42, %27
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  store i8 %44, ptr %45, align 4
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 24
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !8
  %51 = getelementptr inbounds %struct.div_nmp, ptr %6, i32 0, i32 7
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = lshr i32 %50, %53
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %55, i32 0, i32 33
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.div_nmp, ptr %57, i32 0, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nsw i32 -1, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %54, %62
  %64 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 3
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.div_nmp, ptr %6, i32 0, i32 6
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = lshr i32 %50, %67
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 33
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.div_nmp, ptr %71, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl nsw i32 -1, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %68, %76
  %78 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 2
  store i32 %77, ptr %78, align 4
  br label %165

79:                                               ; preds = %11, %2
  %80 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %82, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %81, i32 %84
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #11, !srcloc !8
  %87 = getelementptr inbounds %struct.div_nmp, ptr %6, i32 0, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = lshr i32 %86, %89
  %91 = load ptr, ptr %3, align 4
  %92 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %91, i32 0, i32 33
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.div_nmp, ptr %93, i32 0, i32 3
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nsw i32 -1, %96
  %98 = xor i32 %97, -1
  %99 = and i32 %90, %98
  %100 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 3
  store i32 %99, ptr %100, align 4
  %101 = load i8, ptr %6, align 1
  %102 = zext i8 %101 to i32
  %103 = lshr i32 %86, %102
  %104 = load ptr, ptr %3, align 4
  %105 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %104, i32 0, i32 33
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.div_nmp, ptr %106, i32 0, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nsw i32 -1, %109
  %111 = xor i32 %110, -1
  %112 = and i32 %103, %111
  %113 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 2
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.div_nmp, ptr %6, i32 0, i32 4
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = lshr i32 %86, %116
  %118 = load ptr, ptr %3, align 4
  %119 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %118, i32 0, i32 26
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %79
  %124 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %118, i32 0, i32 33
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.div_nmp, ptr %125, i32 0, i32 5
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = shl nsw i32 -1, %128
  %130 = xor i32 %129, -1
  br label %131

131:                                              ; preds = %123, %79
  %132 = phi i32 [ %130, %123 ], [ 1, %79 ]
  %133 = and i32 %132, %117
  %134 = trunc i32 %133 to i8
  %135 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  store i8 %134, ptr %135, align 4
  %136 = load ptr, ptr %3, align 4
  %137 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %136, i32 0, i32 15
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %165, label %140

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %136, i32 0, i32 18
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %80, align 4
  %144 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %136, i32 0, i32 17
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr i8, ptr %143, i32 %145
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #11, !srcloc !8
  %148 = and i32 %147, %142
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %165, label %150

150:                                              ; preds = %140
  %151 = load ptr, ptr %80, align 4
  %152 = load ptr, ptr %3, align 4
  %153 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %152, i32 0, i32 15
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr i8, ptr %151, i32 %154
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #11, !srcloc !8
  %157 = load ptr, ptr %3, align 4
  %158 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %157, i32 0, i32 16
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, %156
  %161 = icmp eq i32 %160, 0
  %162 = trunc i32 %160 to i16
  %163 = select i1 %161, i16 -1, i16 %162
  %164 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 6
  store i16 %163, ptr %164, align 2
  br label %165

165:                                              ; preds = %150, %140, %131, %41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_program_pll(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 248
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  %16 = and i32 %15, 6144
  %17 = icmp eq i32 %16, 2048
  br i1 %17, label %63, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi ptr [ %19, %18 ], [ %6, %3 ]
  %22 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %21, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !8
  %28 = and i32 %27, 1073741824
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %31, i32 0, i32 43
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = tail call i32 %33() #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !13

38:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 762, i32 noundef 9, ptr noundef null) #11
  br label %222

39:                                               ; preds = %35, %30
  call fastcc void @_get_pll_mnp(ptr noundef %0, ptr noundef nonnull %4)
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %40, i32 0, i32 31
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %88, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %40, i32 0, i32 42
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  %56 = load i8, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 4
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %56, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = tail call i32 %46(ptr noundef %0, ptr noundef %1) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %215, label %64

63:                                               ; preds = %20, %11
  call fastcc void @_get_pll_mnp(ptr noundef %0, ptr noundef nonnull %4)
  br label %90

64:                                               ; preds = %60
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %65, i32 0, i32 31
  %67 = load i8, ptr %66, align 4, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %64, %54, %48, %44
  %70 = phi i32 [ %61, %64 ], [ 0, %44 ], [ 0, %48 ], [ 0, %54 ]
  %71 = phi ptr [ %65, %64 ], [ %40, %44 ], [ %40, %48 ], [ %40, %54 ]
  %72 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %71, i32 0, i32 19
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %69
  %76 = load ptr, ptr %22, align 4
  %77 = getelementptr i8, ptr %76, i32 %73
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !8
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %79, i32 0, i32 20
  %81 = load i32, ptr %80, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %78, %82
  %84 = load ptr, ptr %22, align 4
  %85 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %79, i32 0, i32 19
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %83) #11, !srcloc !10
  br label %88

88:                                               ; preds = %75, %69, %64, %39
  %89 = phi i32 [ %61, %64 ], [ %70, %69 ], [ %70, %75 ], [ 0, %39 ]
  tail call fastcc void @_clk_pll_disable(ptr noundef %0)
  br label %90

90:                                               ; preds = %88, %63
  %91 = phi i32 [ %89, %88 ], [ 0, %63 ]
  %92 = phi i1 [ false, %88 ], [ true, %63 ]
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %93, i32 0, i32 31
  %95 = load i8, ptr %94, align 4, !range !9
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %93, i32 0, i32 41
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void %99(ptr noundef %0) #11
  br label %102

102:                                              ; preds = %101, %97, %90
  tail call fastcc void @_update_pll_mnp(ptr noundef %0, ptr noundef %1)
  %103 = load ptr, ptr %5, align 4
  %104 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %103, i32 0, i32 26
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %150, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %103, i32 0, i32 7
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %110, i32 %112
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #11, !srcloc !8
  %115 = and i32 %114, -3841
  %116 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 5
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 8
  %120 = or i32 %119, %115
  %121 = load ptr, ptr %5, align 4
  %122 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %121, i32 0, i32 26
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %108
  %127 = and i32 %120, -241
  %128 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = icmp ugt i32 %129, 599
  %131 = or i32 %127, 16
  %132 = select i1 %130, i32 %131, i32 %127
  br label %144

133:                                              ; preds = %108
  %134 = and i32 %123, 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %133
  %137 = and i32 %120, -1048577
  %138 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %121, i32 0, i32 5
  %139 = load i32, ptr %138, align 4
  %140 = lshr i32 %139, 1
  %141 = icmp ugt i32 %140, %2
  %142 = select i1 %141, i32 0, i32 1048576
  %143 = or i32 %142, %137
  br label %144

144:                                              ; preds = %136, %133, %126
  %145 = phi i32 [ %120, %133 ], [ %132, %126 ], [ %143, %136 ]
  %146 = load ptr, ptr %109, align 4
  %147 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %121, i32 0, i32 7
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr i8, ptr %146, i32 %148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %145) #11, !srcloc !10
  br label %150

150:                                              ; preds = %144, %102
  br i1 %92, label %222, label %151

151:                                              ; preds = %150
  tail call fastcc void @_clk_pll_enable(ptr noundef %0)
  %152 = load ptr, ptr %5, align 4
  %153 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %152, i32 0, i32 26
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %152, i32 0, i32 29
  %159 = load i32, ptr %158, align 4
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %160(i32 noundef %159) #11
  br label %192

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = and i32 %154, 256
  %165 = icmp eq i32 %164, 0
  %166 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %152, i32 0, i32 7
  %167 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %152, i32 0, i32 6
  %168 = select i1 %165, ptr %167, ptr %166
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr i8, ptr %163, i32 %169
  %171 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %152, i32 0, i32 9
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %152, i32 0, i32 29
  %174 = load i32, ptr %173, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %183, %161
  %177 = phi i32 [ %184, %183 ], [ 0, %161 ]
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #11, !srcloc !8
  %179 = and i32 %178, %172
  %180 = icmp eq i32 %179, %172
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %180, label %182, label %183

182:                                              ; preds = %176
  tail call void %181(i32 noundef 10737400) #11
  br label %192

183:                                              ; preds = %176
  tail call void %181(i32 noundef 429496) #11
  %184 = add nuw nsw i32 %177, 1
  %185 = load ptr, ptr %5, align 4
  %186 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %185, i32 0, i32 29
  %187 = load i32, ptr %186, align 4
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %176, label %189

189:                                              ; preds = %183, %161
  %190 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_pll_wait_for_lock, ptr noundef %190) #12
  br label %192

192:                                              ; preds = %189, %182, %157
  %193 = phi i32 [ 0, %182 ], [ -1, %189 ], [ 0, %157 ]
  %194 = load ptr, ptr %5, align 4
  %195 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %194, i32 0, i32 31
  %196 = load i8, ptr %195, align 4, !range !9
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %215, label %198

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %194, i32 0, i32 19
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr i8, ptr %204, i32 %200
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #11, !srcloc !8
  %207 = load ptr, ptr %5, align 4
  %208 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %207, i32 0, i32 20
  %209 = load i32, ptr %208, align 4
  %210 = or i32 %209, %206
  %211 = load ptr, ptr %203, align 4
  %212 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %207, i32 0, i32 19
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr i8, ptr %211, i32 %213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %210) #11, !srcloc !10
  br label %215

215:                                              ; preds = %202, %198, %192, %60
  %216 = phi i32 [ %193, %202 ], [ 0, %60 ], [ %193, %198 ], [ %193, %192 ]
  %217 = load ptr, ptr %5, align 4
  %218 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %217, i32 0, i32 44
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %215
  tail call void %219() #11
  br label %222

222:                                              ; preds = %221, %215, %150, %38
  %223 = phi i32 [ %36, %38 ], [ %216, %221 ], [ %216, %215 ], [ %91, %150 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret i32 %223
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_calc_dynamic_ramp_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #9 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %81, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %2, -1
  %12 = add i32 %11, %10
  %13 = udiv i32 %12, %2
  %14 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %8, i32 0, i32 26
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %8, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = udiv i32 %3, %20
  %22 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %8, i32 0, i32 36
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 0
  %25 = and i32 %21, 65535
  %26 = zext i16 %23 to i32
  %27 = tail call i32 @llvm.umin.i32(i32 %25, i32 %26) #11
  %28 = select i1 %24, i32 %25, i32 %27
  br label %40

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %8, i32 0, i32 36
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = zext i16 %31 to i32
  br label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %8, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %37, %3
  %39 = select i1 %38, i32 2, i32 1
  br label %40

40:                                               ; preds = %35, %33, %18
  %41 = phi i32 [ %28, %18 ], [ %34, %33 ], [ %39, %35 ]
  %42 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = mul i32 %13, %2
  %44 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = mul i32 %41, %43
  %46 = udiv i32 %45, %3
  %47 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  store i32 %3, ptr %1, align 4
  %48 = trunc i32 %13 to i8
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %49, i32 0, i32 32
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %81, label %53

53:                                               ; preds = %40
  %54 = load i8, ptr %51, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %60, %53
  %57 = phi i8 [ %62, %60 ], [ %54, %53 ]
  %58 = phi ptr [ %61, %60 ], [ %51, %53 ]
  %59 = icmp ult i8 %57, %48
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr %struct.pdiv_map, ptr %58, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %81, label %56

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.pdiv_map, ptr %58, i32 0, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  store i8 %66, ptr %67, align 4
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %68, i32 0, i32 33
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.div_nmp, ptr %70, i32 0, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = lshr i32 %46, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %68, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %43, %78
  %80 = select i1 %79, i32 -22, i32 0
  br label %81

81:                                               ; preds = %76, %64, %60, %53, %40, %4
  %82 = phi i32 [ -22, %4 ], [ -22, %64 ], [ %80, %76 ], [ -22, %40 ], [ -22, %53 ], [ -22, %60 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_calc_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %107, label %6

6:                                                ; preds = %4
  switch i32 %3, label %19 [
    i32 12000000, label %7
    i32 26000000, label %7
    i32 13000000, label %10
    i32 16800000, label %13
    i32 19200000, label %13
    i32 9600000, label %16
    i32 28800000, label %16
  ]

7:                                                ; preds = %6, %6
  %8 = icmp ult i32 %2, 1000000001
  %9 = select i1 %8, i32 1000000, i32 2000000
  br label %21

10:                                               ; preds = %6
  %11 = icmp ult i32 %2, 1000000001
  %12 = select i1 %11, i32 1000000, i32 2600000
  br label %21

13:                                               ; preds = %6, %6
  %14 = icmp ult i32 %2, 1200000001
  %15 = select i1 %14, i32 1200000, i32 2400000
  br label %21

16:                                               ; preds = %6, %6
  %17 = udiv i32 %3, 1000000
  %18 = udiv i32 %3, %17
  br label %21

19:                                               ; preds = %6
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__._calc_rate, i32 noundef %3) #12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-pll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 586, 0\0A.popsection", ""() #11, !srcloc !27
  unreachable

21:                                               ; preds = %16, %13, %10, %7
  %22 = phi i32 [ %18, %16 ], [ %15, %13 ], [ %12, %10 ], [ %9, %7 ]
  %23 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 1
  %24 = mul i32 %22, 200
  %25 = icmp ugt i32 %24, %2
  br i1 %25, label %26, label %32

26:                                               ; preds = %26, %21
  %27 = phi i32 [ %29, %26 ], [ 0, %21 ]
  %28 = phi i32 [ %30, %26 ], [ %2, %21 ]
  %29 = add i32 %27, 1
  %30 = shl i32 %28, 1
  %31 = icmp ult i32 %30, %24
  br i1 %31, label %26, label %32

32:                                               ; preds = %26, %21
  %33 = phi i32 [ %2, %21 ], [ %30, %26 ]
  %34 = phi i32 [ 0, %21 ], [ %29, %26 ]
  store i32 %33, ptr %23, align 4
  %35 = udiv i32 %3, %22
  %36 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  %37 = udiv i32 %33, %22
  %38 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 5
  store i8 8, ptr %39, align 1
  %40 = icmp ugt i32 %22, %3
  br i1 %40, label %107, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 33
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.div_nmp, ptr %45, i32 0, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = lshr i32 %35, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %107

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.div_nmp, ptr %45, i32 0, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = lshr i32 %37, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %51
  %58 = shl nuw i32 1, %34
  %59 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 26
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.div_nmp, ptr %45, i32 0, i32 5
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nsw i32 -1, %66
  %68 = xor i32 %67, -1
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i32 [ %68, %63 ], [ 1, %57 ]
  %71 = shl nuw i32 1, %70
  %72 = icmp sgt i32 %58, %71
  br i1 %72, label %107, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = icmp ugt i32 %33, %75
  br i1 %76, label %107, label %77

77:                                               ; preds = %73
  %78 = add i32 %3, -1
  %79 = add i32 %78, %35
  %80 = udiv i32 %79, %35
  %81 = mul i32 %80, %37
  %82 = lshr i32 %81, %34
  store i32 %82, ptr %23, align 4
  %83 = load ptr, ptr %42, align 4
  %84 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %83, i32 0, i32 32
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %77
  %88 = trunc i32 %58 to i8
  %89 = load i8, ptr %85, align 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %95, %87
  %92 = phi i8 [ %97, %95 ], [ %89, %87 ]
  %93 = phi ptr [ %96, %95 ], [ %85, %87 ]
  %94 = icmp ult i8 %92, %88
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = getelementptr %struct.pdiv_map, ptr %93, i32 1
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %107, label %91

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.pdiv_map, ptr %93, i32 0, i32 1
  %101 = load i8, ptr %100, align 1
  br label %104

102:                                              ; preds = %77
  %103 = trunc i32 %34 to i8
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i8 [ %101, %99 ], [ %103, %102 ]
  %106 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  store i8 %105, ptr %106, align 4
  br label %107

107:                                              ; preds = %104, %95, %87, %73, %69, %51, %41, %32, %4
  %108 = phi i32 [ -22, %4 ], [ -22, %73 ], [ -22, %69 ], [ -22, %51 ], [ -22, %41 ], [ -22, %32 ], [ -22, %87 ], [ 0, %104 ], [ -22, %95 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_dev_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllu_enable(ptr noundef %0) #0 {
  %2 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #11
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %2) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.clk_pllu_enable) #12
  br label %143

7:                                                ; preds = %1
  %8 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %3) #11
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #11
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %13, %12 ], [ 0, %7 ]
  %16 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %17, i32 0, i32 26
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 248
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !8
  %27 = and i32 %26, 6144
  %28 = icmp eq i32 %27, 2048
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %16, align 4
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi ptr [ %30, %29 ], [ %17, %14 ]
  %33 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %32, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %34, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !8
  %39 = and i32 %38, 1073741824
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31, %22
  tail call fastcc void @_clk_pll_enable(ptr noundef %0)
  br label %42

42:                                               ; preds = %41, %31
  %43 = load ptr, ptr %16, align 4
  %44 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 26
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 29
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #11
  br label %83

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = and i32 %45, 256
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 7
  %58 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 6
  %59 = select i1 %56, ptr %58, ptr %57
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %54, i32 %60
  %62 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 29
  %65 = load i32, ptr %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %74, %52
  %68 = phi i32 [ %75, %74 ], [ 0, %52 ]
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !8
  %70 = and i32 %69, %63
  %71 = icmp eq i32 %70, %63
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %71, label %73, label %74

73:                                               ; preds = %67
  tail call void %72(i32 noundef 10737400) #11
  br label %83

74:                                               ; preds = %67
  tail call void %72(i32 noundef 429496) #11
  %75 = add nuw nsw i32 %68, 1
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %76, i32 0, i32 29
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %67, label %80

80:                                               ; preds = %74, %52
  %81 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_pll_wait_for_lock, ptr noundef %81) #12
  br label %138

83:                                               ; preds = %73, %48
  switch i32 %8, label %84 [
    i32 13000000, label %91
    i32 19200000, label %86
    i32 12000000, label %87
    i32 26000000, label %88
    i32 16800000, label %89
    i32 38400000, label %90
  ]

84:                                               ; preds = %83
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.clk_pllu_enable, i32 noundef %8) #12
  br label %138

86:                                               ; preds = %83
  br label %91

87:                                               ; preds = %83
  br label %91

88:                                               ; preds = %83
  br label %91

89:                                               ; preds = %83
  br label %91

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %89, %88, %87, %86, %83
  %92 = phi i32 [ 0, %83 ], [ 1, %86 ], [ 2, %87 ], [ 3, %88 ], [ 4, %89 ], [ 5, %90 ]
  %93 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %16, align 4
  %96 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %95, i32 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %94, i32 %97
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #11, !srcloc !8
  %100 = and i32 %99, -16777217
  %101 = load ptr, ptr %93, align 4
  %102 = load ptr, ptr %16, align 4
  %103 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %102, i32 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr i8, ptr %101, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %100) #11, !srcloc !10
  %106 = load ptr, ptr %93, align 4
  %107 = getelementptr i8, ptr %106, i32 1160
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !8
  %109 = and i32 %108, -16777174
  %110 = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %92, i32 2
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 6
  %114 = or i32 %113, %109
  %115 = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %92, i32 3
  %116 = load i8, ptr %115, align 2
  %117 = and i8 %116, 63
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 18
  %120 = or i32 %119, %114
  %121 = load ptr, ptr %93, align 4
  %122 = getelementptr i8, ptr %121, i32 1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #11, !srcloc !10
  %123 = load ptr, ptr %93, align 4
  %124 = getelementptr i8, ptr %123, i32 1156
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #11, !srcloc !8
  %126 = and i32 %125, 134127616
  %127 = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %92, i32 1
  %128 = load i8, ptr %127, align 4
  %129 = zext i8 %128 to i32
  %130 = shl i32 %129, 27
  %131 = or i32 %130, %126
  %132 = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %92, i32 4
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %131, %134
  %136 = load ptr, ptr %93, align 4
  %137 = getelementptr i8, ptr %136, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #11, !srcloc !10
  br label %138

138:                                              ; preds = %91, %84, %80
  %139 = phi i32 [ 0, %91 ], [ -22, %84 ], [ -1, %80 ]
  %140 = load ptr, ptr %9, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %140, i32 noundef %15) #11
  br label %143

143:                                              ; preds = %142, %138, %5
  %144 = phi i32 [ -22, %5 ], [ %139, %142 ], [ %139, %138 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_ramp_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !11
  %5 = load i32, ptr %2, align 4
  %6 = zext i32 %5 to i64
  %7 = call fastcc i32 @_pll_ramp_calc_pll(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %5)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %9
  %18 = load i8, ptr %15, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.pdiv_map, ptr %15, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, %11
  br i1 %23, label %33, label %24

24:                                               ; preds = %29, %20
  %25 = phi ptr [ %26, %29 ], [ %15, %20 ]
  %26 = getelementptr %struct.pdiv_map, ptr %25, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.pdiv_map, ptr %25, i32 1, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, %11
  br i1 %32, label %33, label %24

33:                                               ; preds = %29, %20
  %34 = phi i8 [ %18, %20 ], [ %27, %29 ]
  %35 = zext i8 %34 to i32
  br label %40

36:                                               ; preds = %9
  %37 = zext i8 %11 to i32
  %38 = shl nuw i32 1, %37
  %39 = icmp eq i8 %11, 31
  br i1 %39, label %62, label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %35, %33 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 38
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  call void %43(ptr noundef nonnull %4) #11
  br label %46

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = zext i32 %48 to i64
  %50 = mul nuw i64 %49, %6
  %51 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, %41
  %54 = icmp ult i64 %50, 4294967296
  br i1 %54, label %55, label %58, !prof !13

55:                                               ; preds = %46
  %56 = trunc i64 %50 to i32
  %57 = udiv i32 %56, %53
  br label %62

58:                                               ; preds = %46
  %59 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 %50) #13, !srcloc !14
  %60 = extractvalue { i64, i64 } %59, 1
  %61 = trunc i64 %60 to i32
  br label %62

62:                                               ; preds = %58, %55, %36, %24, %17, %3
  %63 = phi i32 [ %7, %3 ], [ %38, %36 ], [ -22, %17 ], [ %57, %55 ], [ %61, %58 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllxc_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.tegra_clk_pll_freq_table, align 4
  %5 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !11
  %6 = call fastcc i32 @_pll_ramp_calc_pll(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #11
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  call fastcc void @_get_pll_mnp(ptr noundef %0, ptr noundef nonnull %5)
  %16 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %17, i32 0, i32 26
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 8192
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 4
  %24 = load i8, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 4
  store i8 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 4
  %40 = load i8, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 4
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %40, %42
  br i1 %43, label %46, label %44

44:                                               ; preds = %38, %32, %26
  %45 = call fastcc i32 @_program_pll(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1)
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i32 [ %45, %44 ], [ %6, %38 ]
  %48 = load ptr, ptr %9, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %48, i32 noundef %15) #11
  br label %51

51:                                               ; preds = %50, %46, %3
  %52 = phi i32 [ %6, %3 ], [ %47, %50 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_pll_ramp_calc_pll(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 34
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %19, %4
  %12 = phi i32 [ %21, %19 ], [ %9, %4 ]
  %13 = phi ptr [ %20, %19 ], [ %8, %4 ]
  %14 = icmp eq i32 %12, %3
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr %struct.tegra_clk_pll_freq_table, ptr %13, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %51, label %11

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %13, i32 0, i32 1
  %25 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 32
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %13, i32 0, i32 4
  %29 = load i8, ptr %28, align 4
  br i1 %27, label %45, label %30

30:                                               ; preds = %23
  %31 = load i8, ptr %26, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %37, %30
  %34 = phi i8 [ %39, %37 ], [ %31, %30 ]
  %35 = phi ptr [ %38, %37 ], [ %26, %30 ]
  %36 = icmp ult i8 %34, %29
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr %struct.pdiv_map, ptr %35, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %51, label %33

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.pdiv_map, ptr %35, i32 0, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  br label %126

45:                                               ; preds = %23
  %46 = zext i8 %29 to i32
  %47 = icmp eq i8 %29, 0
  %48 = tail call i32 @llvm.ctlz.i32(i32 %46, i1 false) #11, !range !15
  %49 = sub nsw i32 31, %48
  %50 = select i1 %47, i32 -1, i32 %49
  br label %126

51:                                               ; preds = %37, %30, %19, %4
  %52 = icmp eq i32 %2, 0
  br i1 %52, label %175, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %2, -1
  %57 = add i32 %56, %55
  %58 = udiv i32 %57, %2
  %59 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 26
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = udiv i32 %3, %65
  %67 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 36
  %68 = load i16, ptr %67, align 4
  %69 = icmp eq i16 %68, 0
  %70 = and i32 %66, 65535
  %71 = zext i16 %68 to i32
  %72 = tail call i32 @llvm.umin.i32(i32 %70, i32 %71) #11
  %73 = select i1 %69, i32 %70, i32 %72
  br label %85

74:                                               ; preds = %53
  %75 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 36
  %76 = load i16, ptr %75, align 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = zext i16 %76 to i32
  br label %85

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %82, %3
  %84 = select i1 %83, i32 2, i32 1
  br label %85

85:                                               ; preds = %80, %78, %63
  %86 = phi i32 [ %73, %63 ], [ %79, %78 ], [ %84, %80 ]
  %87 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 3
  store i32 %86, ptr %87, align 4
  %88 = mul i32 %58, %2
  %89 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 1
  store i32 %88, ptr %89, align 4
  %90 = mul i32 %86, %88
  %91 = udiv i32 %90, %3
  %92 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 2
  store i32 %91, ptr %92, align 4
  store i32 %3, ptr %1, align 4
  %93 = trunc i32 %58 to i8
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %94, i32 0, i32 32
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %175, label %98

98:                                               ; preds = %85
  %99 = load i8, ptr %96, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %175, label %101

101:                                              ; preds = %105, %98
  %102 = phi i8 [ %107, %105 ], [ %99, %98 ]
  %103 = phi ptr [ %106, %105 ], [ %96, %98 ]
  %104 = icmp ult i8 %102, %93
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr %struct.pdiv_map, ptr %103, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %175, label %101

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.pdiv_map, ptr %103, i32 0, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  store i8 %111, ptr %112, align 4
  %113 = load ptr, ptr %5, align 4
  %114 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %113, i32 0, i32 33
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.div_nmp, ptr %115, i32 0, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = lshr i32 %91, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %175

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %113, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = icmp ugt i32 %88, %123
  %125 = select i1 %124, i32 -22, i32 0
  br label %175

126:                                              ; preds = %45, %41
  %127 = phi i32 [ %44, %41 ], [ %50, %45 ]
  store i32 %3, ptr %1, align 4
  %128 = load i32, ptr %24, align 4
  %129 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 1
  store i32 %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %13, i32 0, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 3
  store i32 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %13, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 2
  store i32 %134, ptr %135, align 4
  %136 = trunc i32 %127 to i8
  %137 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  store i8 %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %13, i32 0, i32 5
  %139 = load i8, ptr %138, align 1
  %140 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 5
  store i8 %139, ptr %140, align 1
  %141 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %13, i32 0, i32 6
  %142 = load i16, ptr %141, align 2
  %143 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 6
  store i16 %142, ptr %143, align 2
  %144 = load ptr, ptr %5, align 4
  %145 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %144, i32 0, i32 26
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 2048
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %126
  %150 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %144, i32 0, i32 2
  %151 = load i32, ptr %150, align 4
  %152 = udiv i32 %3, %151
  %153 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %144, i32 0, i32 36
  %154 = load i16, ptr %153, align 4
  %155 = icmp eq i16 %154, 0
  %156 = and i32 %152, 65535
  %157 = zext i16 %154 to i32
  %158 = tail call i32 @llvm.umin.i32(i32 %156, i32 %157) #11
  %159 = select i1 %155, i32 %156, i32 %158
  br label %171

160:                                              ; preds = %126
  %161 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %144, i32 0, i32 36
  %162 = load i16, ptr %161, align 4
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = zext i16 %162 to i32
  br label %171

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %144, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = icmp ult i32 %168, %3
  %170 = select i1 %169, i32 2, i32 1
  br label %171

171:                                              ; preds = %166, %164, %149
  %172 = phi i32 [ %159, %149 ], [ %165, %164 ], [ %170, %166 ]
  %173 = icmp eq i32 %131, %172
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1315, i32 noundef 9, ptr noundef null) #11
  br label %185

175:                                              ; preds = %171, %121, %109, %105, %98, %85, %51
  %176 = phi ptr [ %144, %171 ], [ %6, %51 ], [ %113, %109 ], [ %113, %121 ], [ %94, %85 ], [ %94, %98 ], [ %94, %105 ]
  %177 = phi i32 [ 0, %171 ], [ -22, %51 ], [ -22, %109 ], [ %125, %121 ], [ -22, %85 ], [ -22, %98 ], [ -22, %105 ]
  %178 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %1, i32 0, i32 4
  %179 = load i8, ptr %178, align 4
  %180 = zext i8 %179 to i32
  %181 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %176, i32 0, i32 30
  %182 = load i32, ptr %181, align 4
  %183 = icmp slt i32 %182, %180
  %184 = select i1 %183, i32 -22, i32 %177
  br label %185

185:                                              ; preds = %175, %174
  %186 = phi i32 [ -22, %174 ], [ %184, %175 ]
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllre_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !11
  %4 = zext i32 %1 to i64
  call fastcc void @_get_pll_mnp(ptr noundef %0, ptr noundef nonnull %3)
  %5 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, %4
  %9 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i64 %8, 4294967296
  br i1 %11, label %12, label %15, !prof !13

12:                                               ; preds = %2
  %13 = trunc i64 %8 to i32
  %14 = udiv i32 %13, %10
  br label %19

15:                                               ; preds = %2
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %8) #13, !srcloc !14
  %17 = extractvalue { i64, i64 } %16, 1
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ %14, %12 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_pllre_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #10 {
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 26
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = udiv i32 %4, %14
  %16 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 36
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  %19 = and i32 %15, 65535
  %20 = zext i16 %17 to i32
  %21 = tail call i32 @llvm.umin.i32(i32 %19, i32 %20) #11
  %22 = select i1 %18, i32 %19, i32 %21
  br label %34

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 36
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = zext i16 %25 to i32
  br label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, %4
  %33 = select i1 %32, i32 2, i32 1
  br label %34

34:                                               ; preds = %29, %27, %12
  %35 = phi i32 [ %22, %12 ], [ %28, %27 ], [ %33, %29 ]
  %36 = mul i32 %35, %1
  %37 = udiv i32 %36, %4
  %38 = and i32 %37, 65535
  %39 = zext i32 %38 to i64
  %40 = mul nuw nsw i64 %39, %5
  %41 = icmp ult i64 %40, 4294967296
  br i1 %41, label %42, label %45, !prof !13

42:                                               ; preds = %34
  %43 = trunc i64 %40 to i32
  %44 = udiv i32 %43, %35
  br label %49

45:                                               ; preds = %34
  %46 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %40) #13, !srcloc !14
  %47 = extractvalue { i64, i64 } %46, 1
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i32 [ %44, %42 ], [ %48, %45 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllre_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.tegra_clk_pll_freq_table, align 4
  %5 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !11
  %6 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %7) #11
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %15, i32 0, i32 26
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %15, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = udiv i32 %2, %22
  %24 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %15, i32 0, i32 36
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 0
  %27 = and i32 %23, 65535
  %28 = zext i16 %25 to i32
  %29 = tail call i32 @llvm.umin.i32(i32 %27, i32 %28) #11
  %30 = select i1 %26, i32 %27, i32 %29
  br label %42

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %15, i32 0, i32 36
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = zext i16 %33 to i32
  br label %42

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %15, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, %2
  %41 = select i1 %40, i32 2, i32 1
  br label %42

42:                                               ; preds = %37, %35, %20
  %43 = phi i32 [ %30, %20 ], [ %36, %35 ], [ %41, %37 ]
  %44 = mul i32 %43, %1
  %45 = udiv i32 %44, %2
  %46 = and i32 %45, 65535
  %47 = zext i32 %46 to i64
  %48 = mul nuw nsw i64 %47, %13
  %49 = icmp ult i64 %48, 4294967296
  br i1 %49, label %52, label %50, !prof !13

50:                                               ; preds = %42
  %51 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %43, i64 %48) #13, !srcloc !14
  br label %52

52:                                               ; preds = %50, %42
  %53 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 3
  store i32 %43, ptr %53, align 4
  %54 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 2
  store i32 %46, ptr %54, align 4
  call fastcc void @_get_pll_mnp(ptr noundef %0, ptr noundef nonnull %5)
  %55 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 4
  %56 = load i8, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 4
  store i8 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %43, %59
  %61 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %46, %62
  %64 = select i1 %60, i1 %63, i1 false
  br i1 %64, label %131, label %65

65:                                               ; preds = %52
  %66 = load ptr, ptr %14, align 4
  %67 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %66, i32 0, i32 26
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 248
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !8
  %76 = and i32 %75, 6144
  %77 = icmp eq i32 %76, 2048
  br i1 %77, label %130, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr %14, align 4
  br label %80

80:                                               ; preds = %78, %65
  %81 = phi ptr [ %79, %78 ], [ %66, %65 ]
  %82 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %81, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i8, ptr %83, i32 %85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !8
  %88 = and i32 %87, 1073741824
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %130, label %90

90:                                               ; preds = %80
  tail call fastcc void @_clk_pll_disable(ptr noundef %0)
  call fastcc void @_update_pll_mnp(ptr noundef %0, ptr noundef nonnull %4)
  tail call fastcc void @_clk_pll_enable(ptr noundef %0)
  %91 = load ptr, ptr %14, align 4
  %92 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %91, i32 0, i32 26
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %91, i32 0, i32 29
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %99(i32 noundef %98) #11
  br label %131

100:                                              ; preds = %90
  %101 = load ptr, ptr %82, align 4
  %102 = and i32 %93, 256
  %103 = icmp eq i32 %102, 0
  %104 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %91, i32 0, i32 7
  %105 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %91, i32 0, i32 6
  %106 = select i1 %103, ptr %105, ptr %104
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %101, i32 %107
  %109 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %91, i32 0, i32 9
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %91, i32 0, i32 29
  %112 = load i32, ptr %111, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %121, %100
  %115 = phi i32 [ %122, %121 ], [ 0, %100 ]
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #11, !srcloc !8
  %117 = and i32 %116, %110
  %118 = icmp eq i32 %117, %110
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %118, label %120, label %121

120:                                              ; preds = %114
  tail call void %119(i32 noundef 10737400) #11
  br label %131

121:                                              ; preds = %114
  tail call void %119(i32 noundef 429496) #11
  %122 = add nuw nsw i32 %115, 1
  %123 = load ptr, ptr %14, align 4
  %124 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %123, i32 0, i32 29
  %125 = load i32, ptr %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %114, label %127

127:                                              ; preds = %121, %100
  %128 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_pll_wait_for_lock, ptr noundef %128) #12
  br label %131

130:                                              ; preds = %80, %71
  call fastcc void @_update_pll_mnp(ptr noundef %0, ptr noundef nonnull %4)
  br label %131

131:                                              ; preds = %130, %127, %120, %96, %52
  %132 = phi i32 [ 0, %130 ], [ 0, %120 ], [ -1, %127 ], [ 0, %96 ], [ 0, %52 ]
  %133 = load ptr, ptr %6, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %133, i32 noundef %12) #11
  br label %136

136:                                              ; preds = %135, %131
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllc_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 248
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %13 = and i32 %12, 6144
  %14 = icmp eq i32 %13, 2048
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %19 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  %25 = and i32 %24, 1073741824
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %113

27:                                               ; preds = %17, %8
  %28 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %29) #11
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ 0, %27 ]
  tail call fastcc void @_clk_pll_enable(ptr noundef %0)
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 429496) #11
  %36 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %38, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %37, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !8
  %43 = and i32 %42, -1073741825
  %44 = load ptr, ptr %36, align 4
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %45, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %44, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %43) #11, !srcloc !10
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 429496) #11
  %50 = load ptr, ptr %36, align 4
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %50, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !8
  %56 = or i32 %55, -2147483648
  %57 = load ptr, ptr %36, align 4
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %57, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %56) #11, !srcloc !10
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 429496) #11
  %63 = and i32 %55, 2147483647
  %64 = load ptr, ptr %36, align 4
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %65, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %64, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %63) #11, !srcloc !10
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 26
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %33
  %75 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 29
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #11
  br label %108

78:                                               ; preds = %33
  %79 = load ptr, ptr %36, align 4
  %80 = and i32 %71, 256
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 7
  %83 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 6
  %84 = select i1 %81, ptr %83, ptr %82
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i8, ptr %79, i32 %85
  %87 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 29
  %90 = load i32, ptr %89, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %99, %78
  %93 = phi i32 [ %100, %99 ], [ 0, %78 ]
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !8
  %95 = and i32 %94, %88
  %96 = icmp eq i32 %95, %88
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %96, label %98, label %99

98:                                               ; preds = %92
  tail call void %97(i32 noundef 10737400) #11
  br label %108

99:                                               ; preds = %92
  tail call void %97(i32 noundef 429496) #11
  %100 = add nuw nsw i32 %93, 1
  %101 = load ptr, ptr %2, align 4
  %102 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %101, i32 0, i32 29
  %103 = load i32, ptr %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %92, label %105

105:                                              ; preds = %99, %78
  %106 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_pll_wait_for_lock, ptr noundef %106) #12
  br label %108

108:                                              ; preds = %105, %98, %74
  %109 = phi i32 [ 0, %98 ], [ -1, %105 ], [ 0, %74 ]
  %110 = load ptr, ptr %28, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %110, i32 noundef %34) #11
  br label %113

113:                                              ; preds = %112, %108, %17
  %114 = phi i32 [ 0, %17 ], [ %109, %112 ], [ %109, %108 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pllc_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  tail call fastcc void @_clk_pll_disable(ptr noundef %0) #11
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  %17 = or i32 %16, 1073741824
  %18 = load ptr, ptr %9, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %18, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %17) #11, !srcloc !10
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #11
  %24 = load ptr, ptr %2, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %24, i32 noundef %8) #11
  br label %27

27:                                               ; preds = %26, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllc_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.tegra_clk_pll_freq_table, align 4
  %5 = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !11
  %6 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %7) #11
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %13 = call fastcc i32 @_pll_ramp_calc_pll(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %101, label %15

15:                                               ; preds = %11
  call fastcc void @_get_pll_mnp(ptr noundef %0, ptr noundef nonnull %5)
  %16 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1504, i32 noundef 9, ptr noundef null) #11
  br label %101

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %5, i32 0, i32 4
  %30 = load i8, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %4, i32 0, i32 4
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %30, %32
  br i1 %33, label %101, label %34

34:                                               ; preds = %28, %22
  %35 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %36, i32 0, i32 26
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 248
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !8
  %46 = and i32 %45, 6144
  %47 = icmp eq i32 %46, 2048
  br i1 %47, label %74, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %35, align 4
  br label %50

50:                                               ; preds = %48, %34
  %51 = phi ptr [ %49, %48 ], [ %36, %34 ]
  %52 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !8
  %58 = and i32 %57, 1073741824
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %50
  tail call fastcc void @_clk_pll_disable(ptr noundef %0) #11
  %61 = load ptr, ptr %52, align 4
  %62 = load ptr, ptr %35, align 4
  %63 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %62, i32 0, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %61, i32 %64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !8
  %67 = or i32 %66, 1073741824
  %68 = load ptr, ptr %52, align 4
  %69 = load ptr, ptr %35, align 4
  %70 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr i8, ptr %68, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %67) #11, !srcloc !10
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 429496) #11
  br label %74

74:                                               ; preds = %60, %50, %41
  %75 = phi i1 [ false, %60 ], [ true, %50 ], [ true, %41 ]
  switch i32 %2, label %79 [
    i32 12000000, label %81
    i32 13000000, label %76
    i32 26000000, label %76
    i32 16800000, label %77
    i32 19200000, label %78
  ]

76:                                               ; preds = %74, %74
  br label %81

77:                                               ; preds = %74
  br label %81

78:                                               ; preds = %74
  br label %81

79:                                               ; preds = %74
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._pllcx_update_dynamic_coef, i32 noundef %2) #12
  br label %101

81:                                               ; preds = %78, %77, %76, %74
  %82 = phi i32 [ 48, %78 ], [ 55, %77 ], [ 71, %76 ], [ 70, %74 ]
  %83 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %35, align 4
  %86 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %85, i32 0, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !8
  %90 = and i32 %89, -1006632961
  %91 = icmp ult i32 %82, %26
  %92 = select i1 %91, i32 671088640, i32 335544320
  %93 = or i32 %90, %92
  %94 = load ptr, ptr %83, align 4
  %95 = load ptr, ptr %35, align 4
  %96 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %95, i32 0, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %94, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %93) #11, !srcloc !10
  call fastcc void @_update_pll_mnp(ptr noundef %0, ptr noundef nonnull %4)
  br i1 %75, label %101, label %99

99:                                               ; preds = %81
  %100 = tail call i32 @clk_pllc_enable(ptr noundef %0)
  br label %101

101:                                              ; preds = %99, %81, %79, %28, %21, %11
  %102 = phi i32 [ %13, %11 ], [ %13, %21 ], [ %13, %28 ], [ %100, %99 ], [ 0, %81 ], [ -22, %79 ]
  %103 = load ptr, ptr %6, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %103, i32 noundef %12) #11
  br label %106

106:                                              ; preds = %105, %101
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_plle_tegra114_enable(ptr noundef %0) #0 {
  %2 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #11
  %3 = tail call i32 @clk_hw_get_rate(ptr noundef %2) #11
  %4 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 35
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 34
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %279, label %12

12:                                               ; preds = %20, %1
  %13 = phi i32 [ %22, %20 ], [ %10, %1 ]
  %14 = phi ptr [ %21, %20 ], [ %9, %1 ]
  %15 = icmp eq i32 %13, %3
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr %struct.tegra_clk_pll_freq_table, ptr %14, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %279, label %12

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 32
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %14, i32 0, i32 4
  %29 = load i8, ptr %28, align 4
  br i1 %27, label %41, label %30

30:                                               ; preds = %24
  %31 = load i8, ptr %26, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %279, label %33

33:                                               ; preds = %37, %30
  %34 = phi i8 [ %39, %37 ], [ %31, %30 ]
  %35 = phi ptr [ %38, %37 ], [ %26, %30 ]
  %36 = icmp ult i8 %34, %29
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr %struct.pdiv_map, ptr %35, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %279, label %33

41:                                               ; preds = %33, %24
  %42 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %14, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %14, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %14, i32 0, i32 5
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %49) #11
  %53 = load ptr, ptr %4, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = phi ptr [ %53, %51 ], [ %5, %41 ]
  %56 = phi i32 [ %52, %51 ], [ 0, %41 ]
  %57 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %55, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !8
  %63 = and i32 %62, -536870913
  %64 = load ptr, ptr %57, align 4
  %65 = load ptr, ptr %4, align 4
  %66 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %65, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %64, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %63) #11, !srcloc !10
  %69 = load ptr, ptr %57, align 4
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %70, i32 0, i32 21
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %69, i32 %72
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #11, !srcloc !8
  %75 = and i32 %74, -16777233
  %76 = or i32 %75, 16
  %77 = load ptr, ptr %57, align 4
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %78, i32 0, i32 21
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %77, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %76) #11, !srcloc !10
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #11
  %83 = load ptr, ptr %57, align 4
  %84 = load ptr, ptr %4, align 4
  %85 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %84, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %83, i32 %86
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #11, !srcloc !8
  %89 = and i32 %88, -25401
  %90 = or i32 %89, 17152
  %91 = load ptr, ptr %57, align 4
  %92 = load ptr, ptr %4, align 4
  %93 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %92, i32 0, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr i8, ptr %91, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %90) #11, !srcloc !10
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 1073740) #11
  %97 = load ptr, ptr %57, align 4
  %98 = getelementptr i8, ptr %97, i32 104
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #11, !srcloc !8
  %100 = or i32 %99, 7168
  %101 = load ptr, ptr %57, align 4
  %102 = getelementptr i8, ptr %101, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #11, !srcloc !10
  %103 = load ptr, ptr %57, align 4
  %104 = load ptr, ptr %4, align 4
  %105 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %104, i32 0, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %103, i32 %106
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !8
  %109 = load ptr, ptr %4, align 4
  %110 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %109, i32 0, i32 26
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 16
  %113 = icmp eq i32 %112, 0
  %114 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %109, i32 0, i32 33
  %115 = load ptr, ptr %114, align 4
  br i1 %113, label %116, label %122

116:                                              ; preds = %54
  %117 = getelementptr inbounds %struct.div_nmp, ptr %115, i32 0, i32 5
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl nsw i32 -1, %119
  %121 = xor i32 %120, -1
  br label %122

122:                                              ; preds = %116, %54
  %123 = phi i32 [ %121, %116 ], [ 1, %54 ]
  %124 = getelementptr inbounds %struct.div_nmp, ptr %115, i32 0, i32 4
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl i32 %123, %126
  %128 = getelementptr inbounds %struct.div_nmp, ptr %115, i32 0, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl nsw i32 -1, %130
  %132 = xor i32 %131, -1
  %133 = load i8, ptr %115, align 1
  %134 = zext i8 %133 to i32
  %135 = shl i32 %132, %134
  %136 = or i32 %135, %127
  %137 = getelementptr inbounds %struct.div_nmp, ptr %115, i32 0, i32 3
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl nsw i32 -1, %139
  %141 = xor i32 %140, -1
  %142 = getelementptr inbounds %struct.div_nmp, ptr %115, i32 0, i32 2
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = shl i32 %141, %144
  %146 = or i32 %136, %145
  %147 = xor i32 %146, -1
  %148 = and i32 %108, -251658241
  %149 = and i32 %148, %147
  %150 = shl i32 %43, %144
  %151 = shl i32 %45, %134
  %152 = zext i8 %47 to i32
  %153 = shl nuw i32 %152, 24
  %154 = or i32 %151, %153
  %155 = or i32 %154, %150
  %156 = or i32 %155, %149
  %157 = load ptr, ptr %57, align 4
  %158 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %109, i32 0, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr i8, ptr %157, i32 %159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %156) #11, !srcloc !10
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 214748) #11
  tail call fastcc void @_clk_pll_enable(ptr noundef %0)
  %162 = load ptr, ptr %4, align 4
  %163 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %162, i32 0, i32 26
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %122
  %168 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %162, i32 0, i32 29
  %169 = load i32, ptr %168, align 4
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #11
  br label %201

171:                                              ; preds = %122
  %172 = load ptr, ptr %57, align 4
  %173 = and i32 %164, 256
  %174 = icmp eq i32 %173, 0
  %175 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %162, i32 0, i32 7
  %176 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %162, i32 0, i32 6
  %177 = select i1 %174, ptr %176, ptr %175
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr i8, ptr %172, i32 %178
  %180 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %162, i32 0, i32 9
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %162, i32 0, i32 29
  %183 = load i32, ptr %182, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %192, %171
  %186 = phi i32 [ %193, %192 ], [ 0, %171 ]
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #11, !srcloc !8
  %188 = and i32 %187, %181
  %189 = icmp eq i32 %188, %181
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %189, label %191, label %192

191:                                              ; preds = %185
  tail call void %190(i32 noundef 10737400) #11
  br label %201

192:                                              ; preds = %185
  tail call void %190(i32 noundef 429496) #11
  %193 = add nuw nsw i32 %186, 1
  %194 = load ptr, ptr %4, align 4
  %195 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %194, i32 0, i32 29
  %196 = load i32, ptr %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %185, label %198

198:                                              ; preds = %192, %171
  %199 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_pll_wait_for_lock, ptr noundef %199) #12
  br label %274

201:                                              ; preds = %191, %167
  %202 = load ptr, ptr %57, align 4
  %203 = getelementptr i8, ptr %202, i32 104
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #11, !srcloc !8
  %205 = and i32 %204, -1073725952
  %206 = or i32 %205, 536936485
  %207 = load ptr, ptr %57, align 4
  %208 = getelementptr i8, ptr %207, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %206) #11, !srcloc !10
  %209 = and i32 %206, -536794587
  %210 = load ptr, ptr %57, align 4
  %211 = getelementptr i8, ptr %210, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 %209) #11, !srcloc !10
  %212 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %212(i32 noundef 214748) #11
  %213 = and i32 %206, -536796635
  %214 = load ptr, ptr %57, align 4
  %215 = getelementptr i8, ptr %214, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %213) #11, !srcloc !10
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %216(i32 noundef 214748) #11
  %217 = load ptr, ptr %57, align 4
  %218 = load ptr, ptr %4, align 4
  %219 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %218, i32 0, i32 7
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr i8, ptr %217, i32 %220
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #11, !srcloc !8
  %223 = and i32 %222, -16385
  %224 = load ptr, ptr %57, align 4
  %225 = load ptr, ptr %4, align 4
  %226 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %225, i32 0, i32 7
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr i8, ptr %224, i32 %227
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %223) #11, !srcloc !10
  %229 = load ptr, ptr %57, align 4
  %230 = load ptr, ptr %4, align 4
  %231 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %230, i32 0, i32 21
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr i8, ptr %229, i32 %232
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #11, !srcloc !8
  %235 = and i32 %234, -33554521
  %236 = or i32 %235, 33554440
  %237 = load ptr, ptr %57, align 4
  %238 = load ptr, ptr %4, align 4
  %239 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %238, i32 0, i32 21
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr i8, ptr %237, i32 %240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %236) #11, !srcloc !10
  %242 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %242(i32 noundef 214748) #11
  %243 = or i32 %235, 50331656
  %244 = load ptr, ptr %57, align 4
  %245 = load ptr, ptr %4, align 4
  %246 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %245, i32 0, i32 21
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr i8, ptr %244, i32 %247
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %243) #11, !srcloc !10
  %249 = load ptr, ptr %57, align 4
  %250 = getelementptr i8, ptr %249, i32 1308
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %250) #11, !srcloc !8
  %252 = and i32 %251, -33554502
  %253 = or i32 %252, 33554496
  %254 = load ptr, ptr %57, align 4
  %255 = getelementptr i8, ptr %254, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %253) #11, !srcloc !10
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %256(i32 noundef 214748) #11
  %257 = or i32 %252, 50331712
  %258 = load ptr, ptr %57, align 4
  %259 = getelementptr i8, ptr %258, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %257) #11, !srcloc !10
  %260 = load ptr, ptr %57, align 4
  %261 = getelementptr i8, ptr %260, i32 1168
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #11, !srcloc !8
  %263 = and i32 %262, -33554438
  %264 = or i32 %263, 33554436
  %265 = load ptr, ptr %57, align 4
  %266 = getelementptr i8, ptr %265, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 %264) #11, !srcloc !10
  %267 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %267(i32 noundef 214748) #11
  %268 = load ptr, ptr %57, align 4
  %269 = getelementptr i8, ptr %268, i32 1168
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #11, !srcloc !8
  %271 = or i32 %270, 16777216
  %272 = load ptr, ptr %57, align 4
  %273 = getelementptr i8, ptr %272, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %271) #11, !srcloc !10
  br label %274

274:                                              ; preds = %201, %198
  %275 = phi i32 [ -1, %198 ], [ 0, %201 ]
  %276 = load ptr, ptr %48, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %274
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %276, i32 noundef %56) #11
  br label %279

279:                                              ; preds = %278, %274, %37, %30, %20, %1
  %280 = phi i32 [ %275, %278 ], [ %275, %274 ], [ -22, %30 ], [ -22, %1 ], [ -22, %37 ], [ -22, %20 ]
  ret i32 %280
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_plle_tegra114_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  tail call fastcc void @_clk_pll_disable(ptr noundef %0)
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  %17 = or i32 %16, 24576
  %18 = load ptr, ptr %9, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %18, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %17) #11, !srcloc !10
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #11
  %24 = load ptr, ptr %2, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %24, i32 noundef %8) #11
  br label %27

27:                                               ; preds = %26, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllu_tegra114_enable(ptr noundef %0) #0 {
  %2 = tail call ptr @__clk_lookup(ptr noundef nonnull @.str.16) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.clk_pllu_tegra114_enable) #12
  br label %171

6:                                                ; preds = %1
  %7 = tail call ptr @__clk_get_hw(ptr noundef nonnull %2) #11
  %8 = tail call i32 @clk_hw_get_rate(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #11
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi i32 [ %13, %12 ], [ 0, %6 ]
  %16 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %17, i32 0, i32 26
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 248
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !8
  %27 = and i32 %26, 6144
  %28 = icmp eq i32 %27, 2048
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %16, align 4
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi ptr [ %30, %29 ], [ %17, %14 ]
  %33 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %32, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %34, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !8
  %39 = and i32 %38, 1073741824
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31, %22
  tail call fastcc void @_clk_pll_enable(ptr noundef %0)
  br label %42

42:                                               ; preds = %41, %31
  %43 = load ptr, ptr %16, align 4
  %44 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 26
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 29
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #11
  br label %83

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = and i32 %45, 256
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 7
  %58 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 6
  %59 = select i1 %56, ptr %58, ptr %57
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %54, i32 %60
  %62 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 29
  %65 = load i32, ptr %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %74, %52
  %68 = phi i32 [ %75, %74 ], [ 0, %52 ]
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !8
  %70 = and i32 %69, %63
  %71 = icmp eq i32 %70, %63
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %71, label %73, label %74

73:                                               ; preds = %67
  tail call void %72(i32 noundef 10737400) #11
  br label %83

74:                                               ; preds = %67
  tail call void %72(i32 noundef 429496) #11
  %75 = add nuw nsw i32 %68, 1
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %76, i32 0, i32 29
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %67, label %80

80:                                               ; preds = %74, %52
  %81 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_pll_wait_for_lock, ptr noundef %81) #12
  br label %166

83:                                               ; preds = %73, %48
  switch i32 %8, label %84 [
    i32 13000000, label %91
    i32 19200000, label %86
    i32 12000000, label %87
    i32 26000000, label %88
    i32 16800000, label %89
    i32 38400000, label %90
  ]

84:                                               ; preds = %83
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.clk_pllu_tegra114_enable, i32 noundef %8) #12
  br label %166

86:                                               ; preds = %83
  br label %91

87:                                               ; preds = %83
  br label %91

88:                                               ; preds = %83
  br label %91

89:                                               ; preds = %83
  br label %91

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %89, %88, %87, %86, %83
  %92 = phi i32 [ 0, %83 ], [ 1, %86 ], [ 2, %87 ], [ 3, %88 ], [ 4, %89 ], [ 5, %90 ]
  %93 = getelementptr inbounds %struct.tegra_clk_pll, ptr %0, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %16, align 4
  %96 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %95, i32 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %94, i32 %97
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #11, !srcloc !8
  %100 = and i32 %99, -16777217
  %101 = load ptr, ptr %93, align 4
  %102 = load ptr, ptr %16, align 4
  %103 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %102, i32 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr i8, ptr %101, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %100) #11, !srcloc !10
  %106 = load ptr, ptr %93, align 4
  %107 = getelementptr i8, ptr %106, i32 1160
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !8
  %109 = and i32 %108, -16777174
  %110 = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %92, i32 2
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 6
  %114 = or i32 %113, %109
  %115 = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %92, i32 3
  %116 = load i8, ptr %115, align 2
  %117 = and i8 %116, 63
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 18
  %120 = or i32 %119, %114
  %121 = load ptr, ptr %93, align 4
  %122 = getelementptr i8, ptr %121, i32 1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #11, !srcloc !10
  %123 = load ptr, ptr %93, align 4
  %124 = getelementptr i8, ptr %123, i32 1156
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #11, !srcloc !8
  %126 = and i32 %125, 133996544
  %127 = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %92, i32 1
  %128 = load i8, ptr %127, align 4
  %129 = zext i8 %128 to i32
  %130 = shl i32 %129, 27
  %131 = or i32 %130, %126
  %132 = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %92, i32 4
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %131, %134
  %136 = load ptr, ptr %93, align 4
  %137 = getelementptr i8, ptr %136, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #11, !srcloc !10
  %138 = load ptr, ptr %93, align 4
  %139 = getelementptr i8, ptr %138, i32 1324
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #11, !srcloc !8
  %141 = and i32 %140, -33554501
  %142 = or i32 %141, 33554496
  %143 = load ptr, ptr %93, align 4
  %144 = getelementptr i8, ptr %143, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #11, !srcloc !10
  %145 = load ptr, ptr %93, align 4
  %146 = getelementptr i8, ptr %145, i32 1156
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #11, !srcloc !8
  %148 = and i32 %147, -49153
  %149 = load ptr, ptr %93, align 4
  %150 = getelementptr i8, ptr %149, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #11, !srcloc !10
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748) #11
  %152 = load ptr, ptr %93, align 4
  %153 = getelementptr i8, ptr %152, i32 1324
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #11, !srcloc !8
  %155 = and i32 %154, -4
  %156 = or i32 %155, 1
  %157 = load ptr, ptr %93, align 4
  %158 = getelementptr i8, ptr %157, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #11, !srcloc !10
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748) #11
  %160 = load ptr, ptr %93, align 4
  %161 = getelementptr i8, ptr %160, i32 1324
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #11, !srcloc !8
  %163 = or i32 %162, 16777216
  %164 = load ptr, ptr %93, align 4
  %165 = getelementptr i8, ptr %164, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #11, !srcloc !10
  br label %166

166:                                              ; preds = %91, %84, %80
  %167 = phi i32 [ 0, %91 ], [ -22, %84 ], [ -1, %80 ]
  %168 = load ptr, ptr %9, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %168, i32 noundef %15) #11
  br label %171

171:                                              ; preds = %170, %166, %4
  %172 = phi i32 [ -22, %4 ], [ %167, %170 ], [ %167, %166 ]
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 2666445}
!9 = !{i8 0, i8 2}
!10 = !{i64 2666027}
!11 = !{!"auto-init"}
!12 = !{i64 2151241700, i64 2151242192, i64 2151241737, i64 2151241793, i64 2151241827, i64 2151241851, i64 2151241892, i64 2151241913, i64 2151241941, i64 2151241975}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148175996, i64 2148176276, i64 2148176610, i64 2148176944}
!15 = !{i32 0, i32 33}
!16 = !{i64 2151248529}
!17 = !{i64 2151248801}
!18 = !{i64 2151249266}
!19 = !{i64 2151249538}
!20 = !{i64 2151250003}
!21 = !{i64 2151250275}
!22 = !{i64 2151257585}
!23 = !{i64 2151258205}
!24 = !{i64 2151225833}
!25 = !{i64 2151226708}
!26 = !{i64 2151347998}
!27 = !{i64 2151220628, i64 2151221120, i64 2151220665, i64 2151220721, i64 2151220755, i64 2151220779, i64 2151220820, i64 2151220841, i64 2151220869, i64 2151220903}
