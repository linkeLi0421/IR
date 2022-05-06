; ModuleID = '/llk/IR/drivers/clk/ti/dpll3xxx.c_pt.bc'
source_filename = "../drivers/clk/ti/dpll3xxx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap3_dpll5_settings = type { i32, i32, i32 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [26 x i8] c"drivers/clk/ti/dpll3xxx.c\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: could not enable %s's clockdomain %s: %d\0A\00", align 1
@__func__.omap3_noncore_dpll_enable = private unnamed_addr constant [26 x i8] c"omap3_noncore_dpll_enable\00", align 1
@clkhwops_omap3_dpll = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr null, ptr null, ptr @omap3_dpll_allow_idle, ptr @omap3_dpll_deny_idle }, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"\013clock: DPLL4 cannot change rate due to silicon 'Limitation 2.5' on 3430ES1.\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"\014clock: SSC modulation frequency of DPLL %s greater than %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"\014clock: SSC multiplier of DPLL %s is out of range\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"\013clock: %s failed transition to '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"bypassed\00", align 1
@omap3_dpll5_apply_errata.precomputed = internal unnamed_addr constant [5 x %struct.omap3_dpll5_settings] [%struct.omap3_dpll5_settings { i32 12000000, i32 80, i32 1 }, %struct.omap3_dpll5_settings { i32 13000000, i32 443, i32 6 }, %struct.omap3_dpll5_settings { i32 19200000, i32 50, i32 1 }, %struct.omap3_dpll5_settings { i32 26000000, i32 443, i32 12 }, %struct.omap3_dpll5_settings { i32 38400000, i32 25, i32 1 }], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_dpll_recalc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @omap2_get_dpll_rate(ptr noundef %0) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_get_dpll_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @ti_clk_ll_ops, align 4
  %11 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %12(ptr noundef nonnull %7, ptr noundef %14) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %19 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 539, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap3_noncore_dpll_enable, ptr noundef %18, ptr noundef %20, i32 noundef %15) #4
  br label %41

21:                                               ; preds = %9, %5
  %22 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #4
  %23 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #4
  %24 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_hw_get_rate(ptr noundef %25) #4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load ptr, ptr %24, align 4
  %30 = icmp eq ptr %22, %29
  br i1 %30, label %32, label %31, !prof !8

31:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 9, ptr noundef null) #4
  br label %32

32:                                               ; preds = %31, %28
  %33 = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef %0)
  br label %41

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %22, %36
  br i1 %37, label %39, label %38, !prof !8

38:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 550, i32 noundef 9, ptr noundef null) #4
  br label %39

39:                                               ; preds = %38, %34
  %40 = tail call fastcc i32 @_omap3_noncore_dpll_lock(ptr noundef %0)
  br label %41

41:                                               ; preds = %39, %32, %17, %1
  %42 = phi i32 [ %15, %17 ], [ -22, %1 ], [ %33, %32 ], [ %40, %39 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 32
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %95, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %3, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @ti_clk_ll_ops, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 17
  %20 = tail call i32 %18(ptr noundef %19) #4
  %21 = load i32, ptr %13, align 4
  %22 = and i32 %21, %20
  %23 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #4, !range !9
  %24 = lshr i32 %22, %23
  %25 = trunc i32 %24 to i8
  %26 = load ptr, ptr %2, align 4
  br label %27

27:                                               ; preds = %16, %12, %8
  %28 = phi ptr [ %26, %16 ], [ %3, %8 ], [ %3, %12 ]
  %29 = phi i8 [ %25, %16 ], [ -22, %8 ], [ -22, %12 ]
  %30 = load ptr, ptr @ti_clk_ll_ops, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dpll_data, ptr %28, i32 0, i32 5
  %33 = tail call i32 %31(ptr noundef %32) #4
  %34 = getelementptr inbounds %struct.dpll_data, ptr %28, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = tail call i32 @llvm.cttz.i32(i32 %35, i1 false) #4, !range !9
  %39 = shl i32 5, %38
  %40 = or i32 %39, %37
  %41 = load ptr, ptr @ti_clk_ll_ops, align 4
  %42 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %43(i32 noundef %40, ptr noundef %32) #4
  %44 = load ptr, ptr %2, align 4
  %45 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %46 = getelementptr inbounds %struct.dpll_data, ptr %44, i32 0, i32 21
  %47 = getelementptr inbounds %struct.dpll_data, ptr %44, i32 0, i32 18
  %48 = load ptr, ptr @ti_clk_ll_ops, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %47) #4
  %51 = load i32, ptr %46, align 4
  %52 = and i32 %51, %50
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %54, %27
  %55 = phi i32 [ %56, %54 ], [ 0, %27 ]
  %56 = add nuw nsw i32 %55, 1
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #4
  %58 = load ptr, ptr @ti_clk_ll_ops, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %47) #4
  %61 = load i32, ptr %46, align 4
  %62 = and i32 %61, %60
  %63 = icmp ne i32 %62, 0
  %64 = icmp ult i32 %55, 999999
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %54, label %66

66:                                               ; preds = %54
  %67 = icmp eq i32 %56, 1000000
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %45, ptr noundef nonnull @.str.7) #5
  br label %70

70:                                               ; preds = %68, %66, %27
  %71 = phi i32 [ -22, %68 ], [ 0, %66 ], [ 0, %27 ]
  %72 = icmp eq i8 %29, 0
  %73 = or i1 %9, %72
  br i1 %73, label %95, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %2, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.dpll_data, ptr %75, i32 0, i32 19
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @ti_clk_ll_ops, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dpll_data, ptr %75, i32 0, i32 17
  %85 = tail call i32 %83(ptr noundef %84) #4
  %86 = load i32, ptr %78, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = tail call i32 @llvm.cttz.i32(i32 %86, i1 false) #4, !range !9
  %90 = shl nuw i32 1, %89
  %91 = or i32 %90, %88
  %92 = load ptr, ptr @ti_clk_ll_ops, align 4
  %93 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void %94(i32 noundef %91, ptr noundef %84) #4
  br label %95

95:                                               ; preds = %81, %77, %74, %70, %1
  %96 = phi i32 [ -22, %1 ], [ %71, %70 ], [ %71, %74 ], [ %71, %77 ], [ %71, %81 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_omap3_noncore_dpll_lock(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 21
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #4, !range !9
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 18
  %11 = tail call i32 %9(ptr noundef %10) #4
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, %11
  %14 = and i32 %7, 255
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %128, label %16

16:                                               ; preds = %1
  %17 = icmp eq ptr %0, null
  br i1 %17, label %55, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %55, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.dpll_data, ptr %19, i32 0, i32 19
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @ti_clk_ll_ops, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dpll_data, ptr %19, i32 0, i32 17
  %29 = tail call i32 %27(ptr noundef %28) #4
  %30 = load i32, ptr %22, align 4
  %31 = and i32 %30, %29
  %32 = tail call i32 @llvm.cttz.i32(i32 %30, i1 false) #4, !range !9
  %33 = lshr i32 %31, %32
  %34 = trunc i32 %33 to i8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %25
  %37 = load ptr, ptr %2, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %36, %21
  %40 = phi ptr [ %37, %36 ], [ %19, %21 ]
  %41 = getelementptr inbounds %struct.dpll_data, ptr %40, i32 0, i32 19
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr @ti_clk_ll_ops, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dpll_data, ptr %40, i32 0, i32 17
  %48 = tail call i32 %46(ptr noundef %47) #4
  %49 = load i32, ptr %41, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load ptr, ptr @ti_clk_ll_ops, align 4
  %53 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void %54(i32 noundef %51, ptr noundef %47) #4
  br label %55

55:                                               ; preds = %44, %39, %36, %25, %18, %16
  %56 = phi i1 [ true, %25 ], [ false, %36 ], [ false, %39 ], [ false, %44 ], [ false, %16 ], [ false, %18 ]
  %57 = load ptr, ptr %2, align 4
  %58 = load ptr, ptr @ti_clk_ll_ops, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dpll_data, ptr %57, i32 0, i32 5
  %61 = tail call i32 %59(ptr noundef %60) #4
  %62 = getelementptr inbounds %struct.dpll_data, ptr %57, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %61, %64
  %66 = tail call i32 @llvm.cttz.i32(i32 %63, i1 false) #4, !range !9
  %67 = shl i32 7, %66
  %68 = or i32 %67, %65
  %69 = load ptr, ptr @ti_clk_ll_ops, align 4
  %70 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  tail call void %71(i32 noundef %68, ptr noundef %60) #4
  %72 = load ptr, ptr %2, align 4
  %73 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %74 = getelementptr inbounds %struct.dpll_data, ptr %72, i32 0, i32 21
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 @llvm.cttz.i32(i32 %75, i1 false) #4, !range !9
  %77 = shl nuw i32 1, %76
  %78 = getelementptr inbounds %struct.dpll_data, ptr %72, i32 0, i32 18
  %79 = load ptr, ptr @ti_clk_ll_ops, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 %80(ptr noundef %78) #4
  %82 = load i32, ptr %74, align 4
  %83 = and i32 %82, %81
  %84 = and i32 %77, 255
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %104, label %86

86:                                               ; preds = %86, %55
  %87 = phi i32 [ %88, %86 ], [ 0, %55 ]
  %88 = add nuw nsw i32 %87, 1
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748) #4
  %90 = load ptr, ptr @ti_clk_ll_ops, align 4
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 %91(ptr noundef %78) #4
  %93 = load i32, ptr %74, align 4
  %94 = and i32 %93, %92
  %95 = icmp ne i32 %94, %84
  %96 = icmp ult i32 %87, 999999
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %86, label %98

98:                                               ; preds = %86
  %99 = icmp eq i32 %88, 1000000
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  %101 = icmp ugt i32 %76, 7
  %102 = select i1 %101, ptr @.str.7, ptr @.str.6
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %73, ptr noundef nonnull %102) #5
  br label %104

104:                                              ; preds = %100, %98, %55
  %105 = phi i32 [ -22, %100 ], [ 0, %98 ], [ 0, %55 ]
  %106 = or i1 %17, %56
  br i1 %106, label %128, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %2, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %128, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.dpll_data, ptr %108, i32 0, i32 19
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr @ti_clk_ll_ops, align 4
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.dpll_data, ptr %108, i32 0, i32 17
  %118 = tail call i32 %116(ptr noundef %117) #4
  %119 = load i32, ptr %111, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  %122 = tail call i32 @llvm.cttz.i32(i32 %119, i1 false) #4, !range !9
  %123 = shl nuw i32 1, %122
  %124 = or i32 %123, %121
  %125 = load ptr, ptr @ti_clk_ll_ops, align 4
  %126 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  tail call void %127(i32 noundef %124, ptr noundef %117) #4
  br label %128

128:                                              ; preds = %114, %110, %107, %104, %1
  %129 = phi i32 [ 0, %1 ], [ %105, %104 ], [ %105, %107 ], [ %105, %110 ], [ %105, %114 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_noncore_dpll_disable(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %67, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %3, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @ti_clk_ll_ops, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 17
  %20 = tail call i32 %18(ptr noundef %19) #4
  %21 = load i32, ptr %13, align 4
  %22 = and i32 %21, %20
  %23 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #4, !range !9
  %24 = lshr i32 %22, %23
  %25 = trunc i32 %24 to i8
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %2, align 4
  br label %28

28:                                               ; preds = %16, %12, %8
  %29 = phi ptr [ %27, %16 ], [ %3, %8 ], [ %3, %12 ]
  %30 = phi i1 [ %26, %16 ], [ false, %8 ], [ false, %12 ]
  %31 = load ptr, ptr @ti_clk_ll_ops, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dpll_data, ptr %29, i32 0, i32 5
  %34 = tail call i32 %32(ptr noundef %33) #4
  %35 = getelementptr inbounds %struct.dpll_data, ptr %29, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %34, %37
  %39 = tail call i32 @llvm.cttz.i32(i32 %36, i1 false) #4, !range !9
  %40 = shl nuw i32 1, %39
  %41 = or i32 %40, %38
  %42 = load ptr, ptr @ti_clk_ll_ops, align 4
  %43 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void %44(i32 noundef %41, ptr noundef %33) #4
  %45 = or i1 %9, %30
  br i1 %45, label %67, label %46

46:                                               ; preds = %28
  %47 = load ptr, ptr %2, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.dpll_data, ptr %47, i32 0, i32 19
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @ti_clk_ll_ops, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dpll_data, ptr %47, i32 0, i32 17
  %57 = tail call i32 %55(ptr noundef %56) #4
  %58 = load i32, ptr %50, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = tail call i32 @llvm.cttz.i32(i32 %58, i1 false) #4, !range !9
  %62 = shl nuw i32 1, %61
  %63 = or i32 %62, %60
  %64 = load ptr, ptr @ti_clk_ll_ops, align 4
  %65 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void %66(i32 noundef %63, ptr noundef %56) #4
  br label %67

67:                                               ; preds = %53, %49, %46, %28, %1
  %68 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr @ti_clk_ll_ops, align 4
  %73 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %74(ptr noundef nonnull %69, ptr noundef %76) #4
  br label %78

78:                                               ; preds = %71, %67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_determine_rate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_hw_get_rate(ptr noundef %11) #4
  %13 = load i32, ptr %1, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 16
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 32
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %9
  %21 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %22 = tail call i32 @omap2_dpll_round_rate(ptr noundef %0, i32 noundef %13, ptr noundef %21) #4
  store i32 %22, ptr %1, align 4
  %23 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi ptr [ %23, %20 ], [ %10, %15 ]
  %26 = phi i32 [ %22, %20 ], [ %12, %15 ]
  %27 = load ptr, ptr %25, align 4
  %28 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %24, %5, %2
  %31 = phi i32 [ 0, %24 ], [ -22, %2 ], [ -22, %5 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dpll_round_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_set_parent(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef nonnull %0)
  br label %10

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @_omap3_noncore_dpll_lock(ptr noundef nonnull %0)
  br label %10

10:                                               ; preds = %8, %6, %2
  %11 = phi i32 [ -22, %2 ], [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_set_rate(ptr noundef %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %66

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %0) #4
  %13 = getelementptr inbounds %struct.dpll_data, ptr %9, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dpll_data, ptr %9, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @ti_clk_get_features() #4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.dpll_data, ptr %9, i32 0, i32 12
  %27 = load i8, ptr %26, align 2
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.dpll_data, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @clk_hw_get_rate(ptr noundef %30) #4
  %32 = zext i8 %27 to i32
  %33 = udiv i32 %31, %32
  %34 = add i32 %33, -750000
  %35 = icmp ult i32 %34, 250001
  br i1 %35, label %64, label %36

36:                                               ; preds = %25
  %37 = add i32 %33, -1000001
  %38 = icmp ult i32 %37, 250000
  br i1 %38, label %64, label %39

39:                                               ; preds = %36
  %40 = add i32 %33, -1250001
  %41 = icmp ult i32 %40, 250000
  br i1 %41, label %64, label %42

42:                                               ; preds = %39
  %43 = add i32 %33, -1500001
  %44 = icmp ult i32 %43, 250000
  br i1 %44, label %64, label %45

45:                                               ; preds = %42
  %46 = add i32 %33, -1750001
  %47 = icmp ult i32 %46, 350000
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = add i32 %33, -7500001
  %50 = icmp ult i32 %49, 2500000
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = add i32 %33, -10000001
  %53 = icmp ult i32 %52, 2500000
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = add i32 %33, -12500001
  %56 = icmp ult i32 %55, 2500000
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = add i32 %33, -15000001
  %59 = icmp ult i32 %58, 2500000
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = add i32 %33, -17500001
  %62 = icmp ult i32 %61, 3500000
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 671, i32 noundef 9, ptr noundef null) #4
  br label %64

64:                                               ; preds = %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %25, %20
  %65 = phi i16 [ 0, %20 ], [ 0, %63 ], [ 14, %57 ], [ 13, %54 ], [ 12, %51 ], [ 11, %48 ], [ 7, %45 ], [ 6, %42 ], [ 5, %39 ], [ 4, %36 ], [ 3, %25 ], [ 15, %60 ]
  tail call fastcc void @omap3_noncore_dpll_program(ptr noundef nonnull %0, i16 noundef zeroext %65)
  br label %66

66:                                               ; preds = %64, %16, %11, %7, %3
  %67 = phi i32 [ 0, %64 ], [ -22, %3 ], [ -22, %7 ], [ -22, %11 ], [ -22, %16 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap3_noncore_dpll_program(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef %0)
  %6 = tail call ptr @ti_clk_get_features() #4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @ti_clk_ll_ops, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 5
  %14 = tail call i32 %12(ptr noundef %13) #4
  %15 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = zext i16 %1 to i32
  %20 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #4, !range !9
  %21 = shl i32 %19, %20
  %22 = or i32 %21, %18
  %23 = load ptr, ptr @ti_clk_ll_ops, align 4
  %24 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %25(i32 noundef %22, ptr noundef %13) #4
  br label %26

26:                                               ; preds = %10, %2
  %27 = load ptr, ptr @ti_clk_ll_ops, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %4) #4
  %30 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 24
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 25
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = or i32 %31, %29
  br label %44

41:                                               ; preds = %33
  %42 = xor i32 %31, -1
  %43 = and i32 %29, %42
  br label %44

44:                                               ; preds = %41, %39, %26
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ], [ %29, %26 ]
  %46 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %47
  %51 = xor i32 %50, -1
  %52 = and i32 %45, %51
  %53 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 8
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = tail call i32 @llvm.cttz.i32(i32 %47, i1 false) #4, !range !9
  %57 = shl i32 %55, %56
  %58 = or i32 %57, %52
  %59 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 12
  %60 = load i8, ptr %59, align 2
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %61, -1
  %63 = tail call i32 @llvm.cttz.i32(i32 %49, i1 false) #4, !range !9
  %64 = shl i32 %62, %63
  %65 = or i32 %58, %64
  %66 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 22
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %44
  %70 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #4
  %71 = tail call i32 @clk_hw_get_rate(ptr noundef %70) #4
  %72 = udiv i32 %71, %61
  %73 = mul i32 %72, %55
  %74 = icmp ult i32 %73, 1000000000
  %75 = load i32, ptr %66, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %65, %76
  %78 = select i1 %74, i32 2, i32 4
  %79 = tail call i32 @llvm.cttz.i32(i32 %75, i1 false) #4, !range !9
  %80 = shl i32 %78, %79
  %81 = or i32 %80, %77
  br label %82

82:                                               ; preds = %69, %44
  %83 = phi i32 [ %81, %69 ], [ %65, %44 ]
  %84 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 23
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %117, label %87

87:                                               ; preds = %82
  %88 = load i16, ptr %53, align 4
  %89 = load i8, ptr %59, align 2
  %90 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #4
  %91 = tail call i32 @clk_hw_get_rate(ptr noundef %90) #4
  %92 = udiv i32 %91, 100000
  %93 = zext i16 %88 to i32
  %94 = mul nuw i32 %92, %93
  %95 = zext i8 %89 to i32
  %96 = mul nuw nsw i32 %95, 250
  %97 = freeze i32 %94
  %98 = freeze i32 %96
  %99 = udiv i32 %97, %98
  %100 = mul i32 %99, %98
  %101 = sub i32 %97, %100
  %102 = udiv i32 %99, 10
  %103 = mul i32 %102, 10
  %104 = sub i32 %99, %103
  %105 = icmp ne i32 %101, 0
  %106 = icmp ne i32 %104, 0
  %107 = select i1 %105, i1 true, i1 %106
  %108 = zext i1 %107 to i32
  %109 = add nuw nsw i32 %102, %108
  %110 = load i32, ptr %84, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %83, %111
  %113 = and i32 %109, 255
  %114 = tail call i32 @llvm.cttz.i32(i32 %110, i1 false) #4, !range !9
  %115 = shl i32 %113, %114
  %116 = or i32 %115, %112
  br label %117

117:                                              ; preds = %87, %82
  %118 = phi i32 [ %116, %87 ], [ %83, %82 ]
  %119 = tail call ptr @ti_clk_get_features() #4
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %174

123:                                              ; preds = %117
  %124 = icmp eq ptr %0, null
  br i1 %124, label %174, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %3, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %174, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.dpll_data, ptr %126, i32 0, i32 19
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr @ti_clk_ll_ops, align 4
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.dpll_data, ptr %126, i32 0, i32 17
  %136 = tail call i32 %134(ptr noundef %135) #4
  %137 = load i32, ptr %129, align 4
  %138 = and i32 %137, %136
  %139 = tail call i32 @llvm.cttz.i32(i32 %137, i1 false) #4, !range !9
  %140 = lshr i32 %138, %139
  %141 = trunc i32 %140 to i8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %174, label %143

143:                                              ; preds = %132
  %144 = load ptr, ptr %3, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %174, label %146

146:                                              ; preds = %143, %128
  %147 = phi ptr [ %144, %143 ], [ %126, %128 ]
  %148 = getelementptr inbounds %struct.dpll_data, ptr %147, i32 0, i32 19
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %146
  %152 = load ptr, ptr @ti_clk_ll_ops, align 4
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dpll_data, ptr %147, i32 0, i32 17
  %155 = tail call i32 %153(ptr noundef %154) #4
  %156 = load i32, ptr %148, align 4
  %157 = xor i32 %156, -1
  %158 = and i32 %155, %157
  %159 = load ptr, ptr @ti_clk_ll_ops, align 4
  %160 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %159, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  tail call void %161(i32 noundef %158, ptr noundef %154) #4
  %162 = load ptr, ptr %3, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %151, %146
  %165 = phi ptr [ %162, %151 ], [ %147, %146 ]
  %166 = getelementptr inbounds %struct.dpll_data, ptr %165, i32 0, i32 19
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = load ptr, ptr @ti_clk_ll_ops, align 4
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.dpll_data, ptr %165, i32 0, i32 17
  %173 = tail call i32 %171(ptr noundef %172) #4
  br label %174

174:                                              ; preds = %169, %164, %151, %143, %132, %125, %123, %117
  %175 = phi i1 [ false, %132 ], [ false, %117 ], [ true, %123 ], [ true, %151 ], [ true, %164 ], [ true, %169 ], [ true, %143 ], [ true, %125 ]
  %176 = load ptr, ptr @ti_clk_ll_ops, align 4
  %177 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %176, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  tail call void %178(i32 noundef %118, ptr noundef %4) #4
  %179 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 27
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 26
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %221, label %186

186:                                              ; preds = %182, %174
  %187 = load ptr, ptr @ti_clk_ll_ops, align 4
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 5
  %190 = tail call i32 %188(ptr noundef %189) #4
  %191 = load i32, ptr %179, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 9
  %195 = load i8, ptr %194, align 2
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = or i32 %191, %190
  br label %202

199:                                              ; preds = %193
  %200 = xor i32 %191, -1
  %201 = and i32 %190, %200
  br label %202

202:                                              ; preds = %199, %197, %186
  %203 = phi i32 [ %198, %197 ], [ %201, %199 ], [ %190, %186 ]
  %204 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 26
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %216, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 10
  %209 = load i8, ptr %208, align 1
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = or i32 %205, %203
  br label %216

213:                                              ; preds = %207
  %214 = xor i32 %205, -1
  %215 = and i32 %203, %214
  br label %216

216:                                              ; preds = %213, %211, %202
  %217 = phi i32 [ %212, %211 ], [ %215, %213 ], [ %203, %202 ]
  %218 = load ptr, ptr @ti_clk_ll_ops, align 4
  %219 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %218, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  tail call void %220(i32 noundef %217, ptr noundef %189) #4
  br label %221

221:                                              ; preds = %216, %182
  %222 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 37
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %382, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %3, align 4
  %227 = load ptr, ptr @ti_clk_ll_ops, align 4
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 5
  %230 = tail call i32 %228(ptr noundef %229) #4
  %231 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 39
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %372, label %234

234:                                              ; preds = %225
  %235 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 40
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %372, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 37
  %240 = load i32, ptr %239, align 4
  %241 = or i32 %240, %230
  %242 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 41
  %243 = load i8, ptr %242, align 4, !range !10
  %244 = icmp eq i8 %243, 0
  %245 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 38
  %246 = load i32, ptr %245, align 4
  %247 = or i32 %246, %241
  %248 = xor i32 %246, -1
  %249 = and i32 %241, %248
  %250 = select i1 %244, i32 %249, i32 %247
  %251 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 4
  %252 = load ptr, ptr %251, align 4
  %253 = tail call i32 @clk_hw_get_rate(ptr noundef %252) #4
  %254 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 12
  %255 = load i8, ptr %254, align 2
  %256 = zext i8 %255 to i32
  %257 = udiv i32 %253, %256
  %258 = load i32, ptr %231, align 4
  %259 = shl i32 %258, 2
  %260 = udiv i32 %257, %259
  %261 = udiv i32 %253, 70
  %262 = icmp ugt i32 %258, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %238
  %264 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = tail call ptr @__clk_get_name(ptr noundef %265) #4
  %267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %266, i32 noundef %261) #5
  br label %268

268:                                              ; preds = %263, %238
  %269 = icmp ugt i32 %260, 127
  br i1 %269, label %270, label %291

270:                                              ; preds = %268
  %271 = lshr i32 %260, 1
  %272 = icmp ugt i32 %260, 255
  br i1 %272, label %273, label %291

273:                                              ; preds = %270
  %274 = lshr i32 %260, 2
  %275 = icmp ugt i32 %260, 511
  br i1 %275, label %276, label %291

276:                                              ; preds = %273
  %277 = lshr i32 %260, 3
  %278 = icmp ugt i32 %260, 1023
  br i1 %278, label %279, label %291

279:                                              ; preds = %276
  %280 = lshr i32 %260, 4
  %281 = icmp ugt i32 %260, 2047
  br i1 %281, label %282, label %291

282:                                              ; preds = %279
  %283 = lshr i32 %260, 5
  %284 = icmp ugt i32 %260, 4095
  br i1 %284, label %285, label %291

285:                                              ; preds = %282
  %286 = lshr i32 %260, 6
  %287 = icmp ugt i32 %260, 8191
  %288 = lshr i32 %260, 7
  %289 = select i1 %287, i32 7, i32 6
  %290 = select i1 %287, i32 %288, i32 %286
  br label %291

291:                                              ; preds = %285, %282, %279, %276, %273, %270, %268
  %292 = phi i32 [ 0, %268 ], [ 1, %270 ], [ 2, %273 ], [ 3, %276 ], [ 4, %279 ], [ 5, %282 ], [ %289, %285 ]
  %293 = phi i32 [ %260, %268 ], [ %271, %270 ], [ %274, %273 ], [ %277, %276 ], [ %280, %279 ], [ %283, %282 ], [ %290, %285 ]
  %294 = tail call i32 @llvm.umin.i32(i32 %293, i32 127) #4
  %295 = load ptr, ptr @ti_clk_ll_ops, align 4
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 32
  %298 = tail call i32 %296(ptr noundef %297) #4
  %299 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 35
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 36
  %302 = load i32, ptr %301, align 4
  %303 = or i32 %302, %300
  %304 = xor i32 %303, -1
  %305 = and i32 %298, %304
  %306 = tail call i32 @llvm.cttz.i32(i32 %300, i1 false) #4, !range !9
  %307 = shl i32 %294, %306
  %308 = or i32 %305, %307
  %309 = tail call i32 @llvm.cttz.i32(i32 %302, i1 false) #4, !range !9
  %310 = shl i32 %292, %309
  %311 = or i32 %308, %310
  %312 = load ptr, ptr @ti_clk_ll_ops, align 4
  %313 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %312, i32 0, i32 1
  %314 = load ptr, ptr %313, align 4
  tail call void %314(i32 noundef %311, ptr noundef %297) #4
  %315 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 8
  %316 = load i16, ptr %315, align 4
  %317 = zext i16 %316 to i32
  %318 = load i32, ptr %235, align 4
  %319 = mul i32 %318, %317
  %320 = load i8, ptr %242, align 4, !range !10
  %321 = icmp eq i8 %320, 0
  %322 = select i1 %321, i32 10, i32 20
  %323 = udiv i32 %319, %322
  %324 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 33
  %325 = load i32, ptr %324, align 4
  %326 = tail call i32 @llvm.cttz.i32(i32 %325, i1 false) #4, !range !9
  %327 = shl i32 %323, %326
  %328 = udiv i32 %327, 100
  %329 = udiv i32 %328, %260
  %330 = tail call i32 @llvm.umin.i32(i32 %329, i32 1048575) #4
  %331 = and i32 %330, %325
  %332 = lshr i32 %331, %326
  %333 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 34
  %334 = load i32, ptr %333, align 4
  %335 = and i32 %330, %334
  %336 = icmp ne i32 %335, 0
  %337 = zext i1 %336 to i32
  %338 = add nuw nsw i32 %332, %337
  br i1 %321, label %345, label %339

339:                                              ; preds = %291
  %340 = mul nsw i32 %338, -2
  %341 = add nsw i32 %340, %317
  %342 = icmp ult i32 %341, 20
  %343 = icmp ugt i16 %316, 2045
  %344 = select i1 %342, i1 true, i1 %343
  br i1 %344, label %351, label %345

345:                                              ; preds = %339, %291
  %346 = sub nsw i32 %317, %338
  %347 = icmp ult i32 %346, 20
  %348 = add nuw nsw i32 %338, %317
  %349 = icmp ugt i32 %348, 2045
  %350 = or i1 %347, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %345, %339
  %352 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  %354 = tail call ptr @__clk_get_name(ptr noundef %353) #4
  %355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %354) #5
  br label %356

356:                                              ; preds = %351, %345
  %357 = load ptr, ptr @ti_clk_ll_ops, align 4
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 31
  %360 = tail call i32 %358(ptr noundef %359) #4
  %361 = load i32, ptr %324, align 4
  %362 = load i32, ptr %333, align 4
  %363 = or i32 %362, %361
  %364 = xor i32 %363, -1
  %365 = and i32 %360, %364
  %366 = tail call i32 @llvm.cttz.i32(i32 %363, i1 false) #4, !range !9
  %367 = shl i32 %330, %366
  %368 = or i32 %367, %365
  %369 = load ptr, ptr @ti_clk_ll_ops, align 4
  %370 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %369, i32 0, i32 1
  %371 = load ptr, ptr %370, align 4
  tail call void %371(i32 noundef %368, ptr noundef %359) #4
  br label %377

372:                                              ; preds = %234, %225
  %373 = getelementptr inbounds %struct.dpll_data, ptr %226, i32 0, i32 37
  %374 = load i32, ptr %373, align 4
  %375 = xor i32 %374, -1
  %376 = and i32 %230, %375
  br label %377

377:                                              ; preds = %372, %356
  %378 = phi i32 [ %250, %356 ], [ %376, %372 ]
  %379 = load ptr, ptr @ti_clk_ll_ops, align 4
  %380 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %379, i32 0, i32 1
  %381 = load ptr, ptr %380, align 4
  tail call void %381(i32 noundef %378, ptr noundef %229) #4
  br label %382

382:                                              ; preds = %377, %221
  %383 = tail call fastcc i32 @_omap3_noncore_dpll_lock(ptr noundef %0)
  %384 = and i1 %122, %175
  %385 = icmp ne ptr %0, null
  %386 = and i1 %385, %384
  br i1 %386, label %387, label %408

387:                                              ; preds = %382
  %388 = load ptr, ptr %3, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %408, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.dpll_data, ptr %388, i32 0, i32 19
  %392 = load i32, ptr %391, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %408, label %394

394:                                              ; preds = %390
  %395 = load ptr, ptr @ti_clk_ll_ops, align 4
  %396 = load ptr, ptr %395, align 4
  %397 = getelementptr inbounds %struct.dpll_data, ptr %388, i32 0, i32 17
  %398 = tail call i32 %396(ptr noundef %397) #4
  %399 = load i32, ptr %391, align 4
  %400 = xor i32 %399, -1
  %401 = and i32 %398, %400
  %402 = tail call i32 @llvm.cttz.i32(i32 %399, i1 false) #4, !range !9
  %403 = shl nuw i32 1, %402
  %404 = or i32 %403, %401
  %405 = load ptr, ptr @ti_clk_ll_ops, align 4
  %406 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %405, i32 0, i32 1
  %407 = load ptr, ptr %406, align 4
  tail call void %407(i32 noundef %404, ptr noundef %397) #4
  br label %408

408:                                              ; preds = %394, %390, %387, %382
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef nonnull %0) #4
  br label %14

12:                                               ; preds = %8
  %13 = tail call i32 @omap3_noncore_dpll_set_rate(ptr noundef nonnull %0, i32 noundef %1, i32 undef)
  br label %14

14:                                               ; preds = %12, %10, %4
  %15 = phi i32 [ -22, %4 ], [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_clkoutx2_recalc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %46, label %4

4:                                                ; preds = %13, %2
  %5 = phi ptr [ %9, %13 ], [ null, %2 ]
  %6 = phi ptr [ %9, %13 ], [ %0, %2 ]
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ %6, %4 ], [ %9, %11 ]
  %9 = tail call ptr @clk_hw_get_parent(ptr noundef %8) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef nonnull %9) #4
  br i1 %12, label %13, label %7

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.clk_hw_omap, ptr %9, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %4, label %23

17:                                               ; preds = %7
  %18 = icmp eq ptr %5, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.clk_hw_omap, ptr %5, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  br label %23

22:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 825, i32 noundef 9, ptr noundef null) #4
  br label %46

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %21, %19 ], [ %15, %13 ]
  %25 = getelementptr inbounds %struct.dpll_data, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29, !prof !11

28:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 858, i32 noundef 9, ptr noundef null) #4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load ptr, ptr @ti_clk_ll_ops, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dpll_data, ptr %24, i32 0, i32 5
  %33 = tail call i32 %31(ptr noundef %32) #4
  %34 = load i32, ptr %25, align 4
  %35 = and i32 %34, %33
  %36 = tail call i32 @llvm.cttz.i32(i32 %34, i1 false) #4, !range !9
  %37 = lshr i32 %35, %36
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.dpll_data, ptr %24, i32 0, i32 42
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %1, %44
  br label %46

46:                                               ; preds = %39, %29, %22, %2
  %47 = phi i32 [ 0, %2 ], [ 0, %22 ], [ %1, %29 ], [ %45, %39 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_core_dpll_save_context(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %7 = tail call i32 %5(ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #4, !range !9
  %12 = lshr i32 %10, %11
  %13 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 12
  store i32 %12, ptr %13, align 4
  %14 = icmp eq i32 %12, 7
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load ptr, ptr @ti_clk_ll_ops, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %3) #4
  %19 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %18
  %22 = tail call i32 @llvm.cttz.i32(i32 %20, i1 false) #4, !range !9
  %23 = lshr i32 %21, %22
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 8
  store i16 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %18
  %29 = tail call i32 @llvm.cttz.i32(i32 %27, i1 false) #4, !range !9
  %30 = lshr i32 %28, %29
  %31 = trunc i32 %30 to i8
  %32 = add i8 %31, 1
  %33 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 12
  store i8 %32, ptr %33, align 2
  br label %34

34:                                               ; preds = %15, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_core_dpll_restore_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  %5 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr @ti_clk_ll_ops, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 5
  %10 = tail call i32 %8(ptr noundef %9) #4
  %11 = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %10, %13
  br i1 %4, label %15, label %122

15:                                               ; preds = %1
  %16 = tail call i32 @llvm.cttz.i32(i32 %12, i1 false) #4, !range !9
  %17 = shl i32 4, %16
  %18 = or i32 %17, %14
  %19 = load ptr, ptr @ti_clk_ll_ops, align 4
  %20 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %21(i32 noundef %18, ptr noundef %9) #4
  %22 = load ptr, ptr %5, align 4
  %23 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %24 = getelementptr inbounds %struct.dpll_data, ptr %22, i32 0, i32 21
  %25 = getelementptr inbounds %struct.dpll_data, ptr %22, i32 0, i32 18
  %26 = load ptr, ptr @ti_clk_ll_ops, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %25) #4
  %29 = load i32, ptr %24, align 4
  %30 = and i32 %29, %28
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %32, %15
  %33 = phi i32 [ %34, %32 ], [ 0, %15 ]
  %34 = add nuw nsw i32 %33, 1
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #4
  %36 = load ptr, ptr @ti_clk_ll_ops, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %25) #4
  %39 = load i32, ptr %24, align 4
  %40 = and i32 %39, %38
  %41 = icmp ne i32 %40, 0
  %42 = icmp ult i32 %33, 999999
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %32, label %44

44:                                               ; preds = %32
  %45 = icmp eq i32 %34, 1000000
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %23, ptr noundef nonnull @.str.7) #5
  br label %48

48:                                               ; preds = %46, %44, %15
  %49 = load ptr, ptr @ti_clk_ll_ops, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %6) #4
  %52 = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, %53
  %57 = xor i32 %56, -1
  %58 = and i32 %51, %57
  %59 = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 8
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = tail call i32 @llvm.cttz.i32(i32 %53, i1 false) #4, !range !9
  %63 = shl i32 %61, %62
  %64 = or i32 %63, %58
  %65 = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 12
  %66 = load i8, ptr %65, align 2
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %67, -1
  %69 = tail call i32 @llvm.cttz.i32(i32 %55, i1 false) #4, !range !9
  %70 = shl i32 %68, %69
  %71 = or i32 %64, %70
  %72 = load ptr, ptr @ti_clk_ll_ops, align 4
  %73 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  tail call void %74(i32 noundef %71, ptr noundef %6) #4
  %75 = load ptr, ptr %5, align 4
  %76 = load ptr, ptr @ti_clk_ll_ops, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dpll_data, ptr %75, i32 0, i32 5
  %79 = tail call i32 %77(ptr noundef %78) #4
  %80 = getelementptr inbounds %struct.dpll_data, ptr %75, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  %84 = tail call i32 @llvm.cttz.i32(i32 %81, i1 false) #4, !range !9
  %85 = shl i32 7, %84
  %86 = or i32 %85, %83
  %87 = load ptr, ptr @ti_clk_ll_ops, align 4
  %88 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  tail call void %89(i32 noundef %86, ptr noundef %78) #4
  %90 = load ptr, ptr %5, align 4
  %91 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %92 = getelementptr inbounds %struct.dpll_data, ptr %90, i32 0, i32 21
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 @llvm.cttz.i32(i32 %93, i1 false) #4, !range !9
  %95 = shl nuw i32 1, %94
  %96 = getelementptr inbounds %struct.dpll_data, ptr %90, i32 0, i32 18
  %97 = load ptr, ptr @ti_clk_ll_ops, align 4
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i32 %98(ptr noundef %96) #4
  %100 = load i32, ptr %92, align 4
  %101 = and i32 %100, %99
  %102 = and i32 %95, 255
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %130, label %104

104:                                              ; preds = %104, %48
  %105 = phi i32 [ %106, %104 ], [ 0, %48 ]
  %106 = add nuw nsw i32 %105, 1
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748) #4
  %108 = load ptr, ptr @ti_clk_ll_ops, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 %109(ptr noundef %96) #4
  %111 = load i32, ptr %92, align 4
  %112 = and i32 %111, %110
  %113 = icmp ne i32 %112, %102
  %114 = icmp ult i32 %105, 999999
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %104, label %116

116:                                              ; preds = %104
  %117 = icmp eq i32 %106, 1000000
  br i1 %117, label %118, label %130

118:                                              ; preds = %116
  %119 = icmp ugt i32 %94, 7
  %120 = select i1 %119, ptr @.str.7, ptr @.str.6
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %91, ptr noundef nonnull %120) #5
  br label %130

122:                                              ; preds = %1
  %123 = and i32 %3, 255
  %124 = tail call i32 @llvm.cttz.i32(i32 %12, i1 false) #4, !range !9
  %125 = shl i32 %123, %124
  %126 = or i32 %125, %14
  %127 = load ptr, ptr @ti_clk_ll_ops, align 4
  %128 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  tail call void %129(i32 noundef %126, ptr noundef %9) #4
  br label %130

130:                                              ; preds = %122, %118, %116, %48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_save_context(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %7 = tail call i32 %5(ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #4, !range !9
  %12 = lshr i32 %10, %11
  %13 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 12
  store i32 %12, ptr %13, align 4
  %14 = icmp eq i32 %12, 7
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load ptr, ptr @ti_clk_ll_ops, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %3) #4
  %19 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %18
  %22 = tail call i32 @llvm.cttz.i32(i32 %20, i1 false) #4, !range !9
  %23 = lshr i32 %21, %22
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 8
  store i16 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %18
  %29 = tail call i32 @llvm.cttz.i32(i32 %27, i1 false) #4, !range !9
  %30 = lshr i32 %28, %29
  %31 = trunc i32 %30 to i8
  %32 = add i8 %31, 1
  %33 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 12
  store i8 %32, ptr %33, align 2
  br label %34

34:                                               ; preds = %15, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_noncore_dpll_restore_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %7 = tail call i32 %5(ptr noundef %6) #4
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %3) #4
  %11 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %7
  %16 = tail call i32 @llvm.cttz.i32(i32 %14, i1 false) #4, !range !9
  %17 = lshr i32 %15, %16
  %18 = icmp eq i32 %12, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 8
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %10
  %26 = tail call i32 @llvm.cttz.i32(i32 %24, i1 false) #4, !range !9
  %27 = lshr i32 %25, %26
  %28 = icmp eq i32 %27, %22
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 12
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, %10
  %36 = tail call i32 @llvm.cttz.i32(i32 %34, i1 false) #4, !range !9
  %37 = lshr i32 %35, %36
  %38 = add i32 %37, 1
  %39 = icmp eq i32 %38, %32
  br i1 %39, label %60, label %40

40:                                               ; preds = %29, %19, %1
  %41 = icmp eq i32 %12, 7
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  tail call fastcc void @omap3_noncore_dpll_program(ptr noundef %0, i16 noundef zeroext 0)
  br label %60

43:                                               ; preds = %40
  %44 = load ptr, ptr %2, align 4
  %45 = load ptr, ptr @ti_clk_ll_ops, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dpll_data, ptr %44, i32 0, i32 5
  %48 = tail call i32 %46(ptr noundef %47) #4
  %49 = getelementptr inbounds %struct.dpll_data, ptr %44, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = and i32 %12, 255
  %54 = tail call i32 @llvm.cttz.i32(i32 %50, i1 false) #4, !range !9
  %55 = shl i32 %53, %54
  %56 = or i32 %55, %52
  %57 = load ptr, ptr @ti_clk_ll_ops, align 4
  %58 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void %59(i32 noundef %56, ptr noundef %47) #4
  br label %60

60:                                               ; preds = %43, %42, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3_dpll_allow_idle(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @ti_clk_ll_ops, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 17
  %15 = tail call i32 %13(ptr noundef %14) #4
  %16 = load i32, ptr %8, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #4, !range !9
  %20 = shl nuw i32 1, %19
  %21 = or i32 %20, %18
  %22 = load ptr, ptr @ti_clk_ll_ops, align 4
  %23 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %24(i32 noundef %21, ptr noundef %14) #4
  br label %25

25:                                               ; preds = %11, %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3_dpll_deny_idle(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @ti_clk_ll_ops, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 17
  %15 = tail call i32 %13(ptr noundef %14) #4
  %16 = load i32, ptr %8, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load ptr, ptr @ti_clk_ll_ops, align 4
  %20 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %21(i32 noundef %18, ptr noundef %14) #4
  br label %22

22:                                               ; preds = %11, %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_dpll4_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ti_clk_get_features() #4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @omap3_noncore_dpll_set_rate(ptr noundef %0, i32 noundef %1, i32 undef)
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ -22, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_dpll4_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call ptr @ti_clk_get_features() #4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  br label %21

11:                                               ; preds = %4
  %12 = icmp ne ptr %0, null
  %13 = icmp ne i32 %1, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = icmp eq i8 %3, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef nonnull %0) #4
  br label %21

19:                                               ; preds = %15
  %20 = tail call i32 @omap3_noncore_dpll_set_rate(ptr noundef nonnull %0, i32 noundef %1, i32 undef) #4
  br label %21

21:                                               ; preds = %19, %17, %11, %9
  %22 = phi i32 [ -22, %9 ], [ -22, %11 ], [ %18, %17 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_dpll5_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 960000000
  br i1 %4, label %5, label %36

5:                                                ; preds = %3
  switch i32 %2, label %36 [
    i32 12000000, label %10
    i32 13000000, label %6
    i32 19200000, label %7
    i32 26000000, label %8
    i32 38400000, label %9
  ]

6:                                                ; preds = %5
  br label %10

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  br label %10

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5
  %11 = phi i32 [ 0, %5 ], [ 1, %6 ], [ 2, %7 ], [ 3, %8 ], [ 4, %9 ]
  %12 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr [5 x %struct.omap3_dpll5_settings], ptr @omap3_dpll5_apply_errata.precomputed, i32 0, i32 %11, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.dpll_data, ptr %13, i32 0, i32 8
  store i16 %16, ptr %17, align 4
  %18 = getelementptr [5 x %struct.omap3_dpll5_settings], ptr @omap3_dpll5_apply_errata.precomputed, i32 0, i32 %11, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.dpll_data, ptr %13, i32 0, i32 12
  store i8 %20, ptr %21, align 2
  %22 = zext i32 %2 to i64
  %23 = zext i32 %15 to i64
  %24 = mul nuw nsw i64 %23, %22
  %25 = icmp ult i64 %24, 4294967296
  br i1 %25, label %26, label %29, !prof !8

26:                                               ; preds = %10
  %27 = trunc i64 %24 to i32
  %28 = udiv i32 %27, %19
  br label %33

29:                                               ; preds = %10
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %24) #6, !srcloc !12
  %31 = extractvalue { i64, i64 } %30, 1
  %32 = trunc i64 %31 to i32
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i32 [ %28, %26 ], [ %32, %29 ]
  %35 = getelementptr inbounds %struct.dpll_data, ptr %13, i32 0, i32 7
  store i32 %34, ptr %35, align 4
  tail call fastcc void @omap3_noncore_dpll_program(ptr noundef %0, i16 noundef zeroext 0) #4
  br label %38

36:                                               ; preds = %5, %3
  %37 = tail call i32 @omap3_noncore_dpll_set_rate(ptr noundef %0, i32 noundef %1, i32 undef)
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %37, %36 ], [ 0, %33 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148353927, i64 2148354207, i64 2148354541, i64 2148354875}
