; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rockchip_clk_pll = type { %struct.clk_hw, %struct.clk_mux, ptr, %struct.notifier_block, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rockchip_clk_provider = type { ptr, %struct.clk_onecell_data, ptr, ptr, %struct.spinlock }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rockchip_pll_rate_table = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"\013%s: needs two parent clocks\0A\00", align 1
@__func__.rockchip_clk_register_pll = private unnamed_addr constant [26 x i8] c"rockchip_clk_register_pll\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pll_%s\00", align 1
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"drivers/clk/rockchip/clk-pll.c\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: could not allocate rate table for %s\0A\00", align 1
@rockchip_rk3036_pll_clk_norate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_enable, ptr @rockchip_rk3036_pll_disable, ptr @rockchip_rk3036_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rockchip_rk3036_pll_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_enable, ptr @rockchip_rk3036_pll_disable, ptr @rockchip_rk3036_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_recalc_rate, ptr @rockchip_pll_round_rate, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_init, ptr null, ptr null }, align 4
@rockchip_rk3066_pll_clk_norate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_enable, ptr @rockchip_rk3066_pll_disable, ptr @rockchip_rk3066_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rockchip_rk3066_pll_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_enable, ptr @rockchip_rk3066_pll_disable, ptr @rockchip_rk3066_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_recalc_rate, ptr @rockchip_pll_round_rate, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_init, ptr null, ptr null }, align 4
@rockchip_rk3399_pll_clk_norate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_enable, ptr @rockchip_rk3399_pll_disable, ptr @rockchip_rk3399_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rockchip_rk3399_pll_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_enable, ptr @rockchip_rk3399_pll_disable, ptr @rockchip_rk3399_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_recalc_rate, ptr @rockchip_pll_round_rate, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_init, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"\014%s: Unknown pll type for pll clk %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\013%s: failed to register pll clock %s : %ld\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"\013%s: timeout waiting for pll to lock\0A\00", align 1
@__func__.rockchip_rk3036_pll_wait_lock = private unnamed_addr constant [30 x i8] c"rockchip_rk3036_pll_wait_lock\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\013%s: Invalid rate : %lu for pll clk %s\0A\00", align 1
@__func__.rockchip_rk3036_pll_set_rate = private unnamed_addr constant [29 x i8] c"rockchip_rk3036_pll_set_rate\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"\014%s: pll update unsuccessful, trying to restore old params\0A\00", align 1
@__func__.rockchip_rk3036_pll_set_params = private unnamed_addr constant [31 x i8] c"rockchip_rk3036_pll_set_params\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\014%s: parent of %s not available\0A\00", align 1
@__func__.rockchip_rk3036_pll_init = private unnamed_addr constant [25 x i8] c"rockchip_rk3036_pll_init\00", align 1
@__func__.rockchip_pll_wait_lock = private unnamed_addr constant [23 x i8] c"rockchip_pll_wait_lock\00", align 1
@__func__.rockchip_rk3066_pll_set_rate = private unnamed_addr constant [29 x i8] c"rockchip_rk3066_pll_set_rate\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.rockchip_rk3066_pll_set_params = private unnamed_addr constant [31 x i8] c"rockchip_rk3066_pll_set_params\00", align 1
@__func__.rockchip_rk3399_pll_wait_lock = private unnamed_addr constant [30 x i8] c"rockchip_rk3399_pll_wait_lock\00", align 1
@__func__.rockchip_rk3399_pll_set_rate = private unnamed_addr constant [29 x i8] c"rockchip_rk3399_pll_set_rate\00", align 1
@__func__.rockchip_rk3399_pll_set_params = private unnamed_addr constant [31 x i8] c"rockchip_rk3399_pll_set_params\00", align 1
@__func__.rockchip_rk3399_pll_init = private unnamed_addr constant [25 x i8] c"rockchip_rk3399_pll_init\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_pll(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, i8 noundef zeroext %12) local_unnamed_addr #0 {
  %14 = alloca [3 x ptr], align 4
  %15 = alloca %struct.clk_init_data, align 4
  %16 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %15) #8
  %17 = getelementptr inbounds i8, ptr %15, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %17, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %16) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %16, i8 0, i32 20, i1 false), !annotation !8
  %18 = icmp ne i32 %1, 2
  %19 = icmp ne i8 %4, 2
  %20 = and i1 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = icmp eq i32 %1, 2
  %23 = icmp ne i8 %4, 1
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %13
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rockchip_clk_register_pll) #9
  br label %128

27:                                               ; preds = %21
  %28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %16, i32 noundef 20, ptr noundef nonnull @.str.1, ptr noundef %2)
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 96) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %128, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 2
  store ptr @clk_mux_ops, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr i8, ptr %35, i32 %8
  %37 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1, i32 1
  store ptr %36, ptr %37, align 8
  %38 = trunc i32 %9 to i8
  %39 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1, i32 4
  store i8 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1, i32 3
  br i1 %22, label %41, label %46

41:                                               ; preds = %32
  store i32 1, ptr %40, align 8
  %42 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1, i32 5
  store i8 0, ptr %42, align 1
  %43 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 4
  %44 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1, i32 6
  store ptr %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1, i32 0, i32 2
  store ptr %15, ptr %45, align 4
  br label %52

46:                                               ; preds = %32
  store i32 3, ptr %40, align 8
  %47 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1, i32 5
  store i8 0, ptr %47, align 1
  %48 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 4
  %49 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1, i32 6
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 1, i32 0, i32 2
  store ptr %15, ptr %50, align 4
  %51 = icmp ult i32 %1, 4
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %41
  %53 = phi ptr [ %43, %41 ], [ %48, %46 ]
  %54 = phi ptr [ %42, %41 ], [ %47, %46 ]
  store i8 4, ptr %54, align 1
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi ptr [ %48, %46 ], [ %53, %52 ]
  %57 = load ptr, ptr %3, align 4
  store ptr %57, ptr %14, align 4
  %58 = getelementptr inbounds [3 x ptr], ptr %14, i32 0, i32 1
  store ptr %16, ptr %58, align 4
  %59 = getelementptr ptr, ptr %3, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds [3 x ptr], ptr %14, i32 0, i32 2
  store ptr %60, ptr %61, align 4
  store ptr %2, ptr %15, align 4
  %62 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 6
  store i32 4, ptr %62, align 4
  %63 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 1
  store ptr @clk_mux_ops, ptr %63, align 4
  %64 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 2
  store ptr %14, ptr %64, align 4
  %65 = select i1 %22, i8 2, i8 3
  %66 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 5
  store i8 %65, ptr %66, align 4
  %67 = call ptr @clk_register(ptr noundef null, ptr noundef %34) #8
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %126, label %69

69:                                               ; preds = %55
  store ptr %16, ptr %15, align 4
  %70 = or i32 %11, 8
  store i32 %70, ptr %62, align 4
  store ptr %3, ptr %64, align 4
  store i8 1, ptr %66, align 4
  %71 = icmp eq ptr %10, null
  br i1 %71, label %85, label %72

72:                                               ; preds = %72, %69
  %73 = phi i32 [ %77, %72 ], [ 0, %69 ]
  %74 = getelementptr %struct.rockchip_pll_rate_table, ptr %10, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  %77 = add i32 %73, 1
  br i1 %76, label %78, label %72

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 10
  store i32 %73, ptr %79, align 4
  %80 = mul i32 %73, 28
  %81 = call ptr @kmemdup(ptr noundef nonnull %10, i32 noundef %80, i32 noundef 3264) #8
  %82 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 9
  store ptr %81, ptr %82, align 8
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %85, !prof !9

84:                                               ; preds = %78
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 937, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rockchip_clk_register_pll, ptr noundef %2) #8
  br label %85

85:                                               ; preds = %84, %78, %69
  switch i32 %1, label %108 [
    i32 0, label %86
    i32 2, label %86
    i32 1, label %92
    i32 3, label %102
  ]

86:                                               ; preds = %85, %85
  %87 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 9
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store ptr @rockchip_rk3036_pll_clk_norate_ops, ptr %63, align 4
  br label %110

91:                                               ; preds = %86
  store ptr @rockchip_rk3036_pll_clk_ops, ptr %63, align 4
  br label %110

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 9
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %92
  store ptr @rockchip_rk3066_pll_clk_norate_ops, ptr %63, align 4
  br label %110

101:                                              ; preds = %96
  store ptr @rockchip_rk3066_pll_clk_ops, ptr %63, align 4
  br label %110

102:                                              ; preds = %85
  %103 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 9
  %104 = load ptr, ptr %103, align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store ptr @rockchip_rk3399_pll_clk_norate_ops, ptr %63, align 4
  br label %110

107:                                              ; preds = %102
  store ptr @rockchip_rk3399_pll_clk_ops, ptr %63, align 4
  br label %110

108:                                              ; preds = %85
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rockchip_clk_register_pll, ptr noundef %2) #9
  br label %110

110:                                              ; preds = %108, %107, %106, %101, %100, %91, %90
  %111 = getelementptr inbounds %struct.clk_hw, ptr %30, i32 0, i32 2
  store ptr %15, ptr %111, align 8
  %112 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 7
  store i32 %1, ptr %112, align 8
  %113 = load ptr, ptr %0, align 4
  %114 = getelementptr i8, ptr %113, i32 %5
  %115 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 4
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 5
  store i32 %6, ptr %116, align 8
  %117 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 6
  store i32 %7, ptr %117, align 4
  %118 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 8
  store i8 %12, ptr %118, align 4
  %119 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 11
  store ptr %56, ptr %119, align 8
  %120 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %30, i32 0, i32 12
  store ptr %0, ptr %120, align 4
  %121 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %30) #8
  %122 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %128

123:                                              ; preds = %110
  %124 = ptrtoint ptr %121 to i32
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rockchip_clk_register_pll, ptr noundef %2, i32 noundef %124) #9
  call void @clk_unregister(ptr noundef %67) #8
  br label %126

126:                                              ; preds = %123, %55
  %127 = phi ptr [ %67, %55 ], [ %121, %123 ]
  call void @kfree(ptr noundef nonnull %30) #8
  br label %128

128:                                              ; preds = %126, %110, %27, %25
  %129 = phi ptr [ inttoptr (i32 -22 to ptr), %25 ], [ %127, %126 ], [ %67, %110 ], [ inttoptr (i32 -12 to ptr), %27 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  ret ptr %129
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_enable(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 536870912) #8, !srcloc !11
  %5 = tail call i64 @ktime_get() #8
  %6 = add i64 %5, 1000000
  br label %7

7:                                                ; preds = %13, %1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = tail call i64 @ktime_get() #8
  %15 = icmp sgt i64 %14, %6
  br i1 %15, label %16, label %7

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !12
  br label %20

20:                                               ; preds = %16, %7
  %21 = phi i32 [ %19, %16 ], [ %10, %7 ]
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rockchip_rk3036_pll_wait_lock) #9
  br label %26

26:                                               ; preds = %24, %20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_rk3036_pll_disable(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 536879104) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !12
  %7 = and i32 %6, 4095
  %8 = lshr i32 %6, 12
  %9 = and i32 %8, 7
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !12
  %13 = and i32 %12, 63
  %14 = lshr i32 %12, 6
  %15 = and i32 %14, 7
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !12
  %19 = and i32 %18, 16777215
  %20 = zext i32 %7 to i64
  %21 = mul nuw nsw i64 %20, %3
  %22 = icmp ult i64 %21, 4294967296
  br i1 %22, label %23, label %27, !prof !15

23:                                               ; preds = %2
  %24 = trunc i64 %21 to i32
  %25 = udiv i32 %24, %13
  %26 = zext i32 %25 to i64
  br label %30

27:                                               ; preds = %2
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %21) #11, !srcloc !16
  %29 = extractvalue { i64, i64 } %28, 1
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i64 [ %26, %23 ], [ %29, %27 ]
  %32 = and i32 %12, 4096
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = mul i32 %19, %1
  %36 = udiv i32 %35, %13
  %37 = lshr i32 %36, 24
  %38 = zext i32 %37 to i64
  %39 = add i64 %31, %38
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i64 [ %39, %34 ], [ %31, %30 ]
  %42 = icmp ult i64 %41, 4294967296
  br i1 %42, label %43, label %47, !prof !15

43:                                               ; preds = %40
  %44 = trunc i64 %41 to i32
  %45 = udiv i32 %44, %9
  %46 = zext i32 %45 to i64
  br label %50

47:                                               ; preds = %40
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %41) #11, !srcloc !16
  %49 = extractvalue { i64, i64 } %48, 1
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i64 [ %46, %43 ], [ %49, %47 ]
  %52 = icmp ult i64 %51, 4294967296
  br i1 %52, label %53, label %56, !prof !15

53:                                               ; preds = %50
  %54 = trunc i64 %51 to i32
  %55 = udiv i32 %54, %15
  br label %60

56:                                               ; preds = %50
  %57 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %51) #11, !srcloc !16
  %58 = extractvalue { i64, i64 } %57, 1
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i32 [ %55, %53 ], [ %59, %56 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @rockchip_pll_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #7 {
  %4 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %14, %3
  %10 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %11 = getelementptr %struct.rockchip_pll_rate_table, ptr %5, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = add nuw i32 %10, 1
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %9

17:                                               ; preds = %14
  %18 = add i32 %7, -1
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ -1, %3 ], [ %18, %17 ]
  %21 = getelementptr %struct.rockchip_pll_rate_table, ptr %5, i32 %20
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi i32 [ %22, %19 ], [ %12, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.rockchip_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %17, %9, %3
  %20 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @__clk_get_name(ptr noundef %21) #8
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rockchip_rk3036_pll_set_rate, i32 noundef %1, ptr noundef %22) #9
  br label %26

24:                                               ; preds = %17
  %25 = tail call fastcc i32 @rockchip_rk3036_pll_set_params(ptr noundef %0, ptr noundef nonnull %14)
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ -22, %19 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 8
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %78, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %78, label %16

13:                                               ; preds = %16
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %78, label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %14, %13 ], [ 0, %6 ]
  %18 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %78, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !12
  %27 = and i32 %26, 4095
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !12
  %31 = and i32 %30, 63
  %32 = lshr i32 %30, 6
  %33 = and i32 %32, 7
  %34 = lshr i32 %30, 12
  %35 = and i32 %34, 1
  %36 = load ptr, ptr %24, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !12
  %39 = and i32 %38, 16777215
  %40 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %27
  br i1 %42, label %43, label %67

43:                                               ; preds = %23
  %44 = lshr i32 %26, 12
  %45 = and i32 %44, 7
  %46 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %45
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %31
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %33
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %35
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = icmp eq i32 %35, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %61
  %64 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, %39
  br i1 %66, label %78, label %67

67:                                               ; preds = %63, %57, %53, %49, %43, %23
  %68 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = tail call ptr @clk_get_parent(ptr noundef %69) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load ptr, ptr %68, align 4
  %74 = tail call ptr @__clk_get_name(ptr noundef %73) #8
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rockchip_rk3036_pll_init, ptr noundef %74) #9
  br label %78

76:                                               ; preds = %67
  %77 = tail call fastcc i32 @rockchip_rk3036_pll_set_params(ptr noundef %0, ptr noundef nonnull %18)
  br label %78

78:                                               ; preds = %76, %72, %63, %61, %21, %13, %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_rk3036_pll_set_params(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.rockchip_pll_rate_table, align 4
  %4 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  %7 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !12
  %10 = and i32 %9, 4095
  %11 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = lshr i32 %9, 12
  %13 = and i32 %12, 7
  %14 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !12
  %18 = and i32 %17, 63
  %19 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = lshr i32 %17, 6
  %21 = and i32 %20, 7
  %22 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = lshr i32 %17, 12
  %24 = and i32 %23, 1
  %25 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !12
  %29 = and i32 %28, 16777215
  %30 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  store i32 0, ptr %3, align 4
  %31 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = tail call zeroext i8 %32(ptr noundef %6) #8
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 13
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %6, i8 noundef zeroext 0) #8
  br label %39

39:                                               ; preds = %35, %2
  %40 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 12
  %45 = or i32 %41, %44
  %46 = or i32 %45, 2147418112
  %47 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #8, !srcloc !11
  %48 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %51, 6
  %53 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, 12
  %56 = or i32 %49, %52
  %57 = or i32 %56, %55
  %58 = or i32 %57, 301924352
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #8, !srcloc !11
  %61 = load ptr, ptr %7, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #8, !srcloc !12
  %64 = and i32 %63, -16777216
  %65 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %64, %66
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #8, !srcloc !11
  %70 = tail call i64 @ktime_get() #8
  %71 = add i64 %70, 1000000
  br label %72

72:                                               ; preds = %78, %39
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr i8, ptr %73, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #8, !srcloc !12
  %76 = and i32 %75, 1024
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = tail call i64 @ktime_get() #8
  %80 = icmp sgt i64 %79, %71
  br i1 %80, label %81, label %72

81:                                               ; preds = %78
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr i8, ptr %82, i32 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #8, !srcloc !12
  br label %85

85:                                               ; preds = %81, %72
  %86 = phi i32 [ %84, %81 ], [ %75, %72 ]
  %87 = and i32 %86, 1024
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rockchip_rk3036_pll_wait_lock) #9
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rockchip_rk3036_pll_set_params) #9
  %92 = call fastcc i32 @rockchip_rk3036_pll_set_params(ptr noundef %0, ptr noundef nonnull %3)
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i32 [ -110, %89 ], [ 0, %85 ]
  br i1 %34, label %95, label %99

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 13
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i32 %97(ptr noundef %6, i8 noundef zeroext 1) #8
  br label %99

99:                                               ; preds = %95, %93
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_enable(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 131072) #8, !srcloc !11
  %5 = tail call fastcc i32 @rockchip_pll_wait_lock(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_rk3066_pll_disable(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 131074) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !12
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %2
  %10 = zext i32 %1 to i64
  %11 = load ptr, ptr %3, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !12
  %13 = lshr i32 %12, 8
  %14 = and i32 %13, 63
  %15 = add nuw nsw i32 %14, 1
  %16 = and i32 %12, 15
  %17 = add nuw nsw i32 %16, 1
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !12
  %21 = and i32 %20, 8191
  %22 = add nuw nsw i32 %21, 1
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !12
  %26 = zext i32 %22 to i64
  %27 = mul nuw nsw i64 %26, %10
  %28 = icmp ult i64 %27, 4294967296
  br i1 %28, label %29, label %33, !prof !15

29:                                               ; preds = %9
  %30 = trunc i64 %27 to i32
  %31 = udiv i32 %30, %15
  %32 = zext i32 %31 to i64
  br label %36

33:                                               ; preds = %9
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %27) #11, !srcloc !16
  %35 = extractvalue { i64, i64 } %34, 1
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i64 [ %32, %29 ], [ %35, %33 ]
  %38 = icmp ult i64 %37, 4294967296
  br i1 %38, label %39, label %42, !prof !15

39:                                               ; preds = %36
  %40 = trunc i64 %37 to i32
  %41 = udiv i32 %40, %17
  br label %46

42:                                               ; preds = %36
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %37) #11, !srcloc !16
  %44 = extractvalue { i64, i64 } %43, 1
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %42, %39, %2
  %47 = phi i32 [ %1, %2 ], [ %41, %39 ], [ %45, %42 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pll_wait_lock(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = tail call i64 @ktime_get() #8
  %8 = add i64 %7, 1000000
  %9 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 5
  %10 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 6
  br label %11

11:                                               ; preds = %21, %1
  %12 = load i32, ptr %9, align 4
  %13 = call i32 @regmap_read(ptr noundef %6, i32 noundef %12, ptr noundef nonnull %2) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i32, ptr %2, align 4
  %17 = load i32, ptr %10, align 4
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = call i64 @ktime_get() #8
  %23 = icmp sgt i64 %22, %8
  br i1 %23, label %24, label %11

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 4
  %26 = call i32 @regmap_read(ptr noundef %6, i32 noundef %25, ptr noundef nonnull %2) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, ptr %2, align 4
  %30 = load i32, ptr %10, align 4
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %24, %11
  %35 = phi i32 [ %26, %24 ], [ -110, %28 ], [ %13, %11 ]
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rockchip_pll_wait_lock) #9
  br label %37

37:                                               ; preds = %34, %28, %15
  %38 = phi i32 [ %35, %34 ], [ 0, %28 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.rockchip_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rockchip_rk3066_pll_set_rate, i32 noundef %1, ptr noundef %20) #9
  br label %24

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @rockchip_rk3066_pll_set_params(ptr noundef %0, ptr noundef nonnull %14)
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %23, %22 ], [ -22, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 8
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %59, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %59, label %16

13:                                               ; preds = %16
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %59, label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %14, %13 ], [ 0, %6 ]
  %18 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !12
  %27 = lshr i32 %26, 8
  %28 = and i32 %27, 63
  %29 = add nuw nsw i32 %28, 1
  %30 = load ptr, ptr %24, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !12
  %33 = and i32 %32, 8191
  %34 = add nuw nsw i32 %33, 1
  %35 = load ptr, ptr %24, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !12
  %38 = and i32 %37, 4095
  %39 = add nuw nsw i32 %38, 1
  %40 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %29
  br i1 %42, label %43, label %57

43:                                               ; preds = %23
  %44 = and i32 %26, 15
  %45 = add nuw nsw i32 %44, 1
  %46 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %45
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %34
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %39
  br i1 %56, label %59, label %57

57:                                               ; preds = %53, %49, %43, %23
  %58 = tail call fastcc i32 @rockchip_rk3066_pll_set_params(ptr noundef %0, ptr noundef nonnull %18)
  br label %59

59:                                               ; preds = %57, %53, %21, %13, %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_rk3066_pll_set_params(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.rockchip_pll_rate_table, align 4
  %4 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  %7 = getelementptr inbounds i8, ptr %3, i32 20
  store i64 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 63
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = and i32 %10, 15
  %16 = add nuw nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !12
  %21 = and i32 %20, 8191
  %22 = add nuw nsw i32 %21, 1
  %23 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !12
  %27 = and i32 %26, 4095
  %28 = add nuw nsw i32 %27, 1
  %29 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  store i32 0, ptr %3, align 4
  %30 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 14
  %31 = load ptr, ptr %30, align 4
  %32 = tail call zeroext i8 %31(ptr noundef %6) #8
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 13
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %6, i8 noundef zeroext 0) #8
  br label %38

38:                                               ; preds = %34, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 2097184) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %41 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 8
  %44 = add i32 %43, -256
  %45 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  %48 = or i32 %47, %44
  %49 = or i32 %48, 1057947648
  %50 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %49) #8, !srcloc !11
  %51 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  %54 = or i32 %53, 536805376
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #8, !srcloc !11
  %57 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  %60 = or i32 %59, 268369920
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr i8, ptr %63, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 2097152) #8, !srcloc !11
  %65 = load i32, ptr %41, align 4
  %66 = mul i32 %65, 500
  %67 = udiv i32 %66, 24
  %68 = add nuw nsw i32 %67, 1
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #8
  %70 = tail call fastcc i32 @rockchip_pll_wait_lock(ptr noundef %0)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %38
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rockchip_rk3066_pll_set_params) #9
  %74 = call fastcc i32 @rockchip_rk3066_pll_set_params(ptr noundef %0, ptr noundef nonnull %3)
  br label %75

75:                                               ; preds = %72, %38
  br i1 %33, label %76, label %80

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 13
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef %6, i8 noundef zeroext 1) #8
  br label %80

80:                                               ; preds = %76, %75
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_enable(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 65536) #8, !srcloc !11
  %5 = tail call i64 @ktime_get() #8
  %6 = add i64 %5, 1000000
  br label %7

7:                                                ; preds = %12, %1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = tail call i64 @ktime_get() #8
  %14 = icmp sgt i64 %13, %6
  br i1 %14, label %15, label %7

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !12
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rockchip_rk3399_pll_wait_lock) #9
  br label %22

22:                                               ; preds = %20, %15, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_rk3399_pll_disable(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 65537) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !12
  %7 = and i32 %6, 4095
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  %11 = and i32 %10, 63
  %12 = lshr i32 %10, 8
  %13 = and i32 %12, 7
  %14 = lshr i32 %10, 12
  %15 = and i32 %14, 7
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !12
  %19 = and i32 %18, 16777215
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !12
  %23 = zext i32 %7 to i64
  %24 = mul nuw nsw i64 %23, %3
  %25 = icmp ult i64 %24, 4294967296
  br i1 %25, label %26, label %30, !prof !15

26:                                               ; preds = %2
  %27 = trunc i64 %24 to i32
  %28 = udiv i32 %27, %11
  %29 = zext i32 %28 to i64
  br label %33

30:                                               ; preds = %2
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %24) #11, !srcloc !16
  %32 = extractvalue { i64, i64 } %31, 1
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i64 [ %29, %26 ], [ %32, %30 ]
  %35 = and i32 %22, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = mul i32 %19, %1
  %39 = udiv i32 %38, %11
  %40 = lshr i32 %39, 24
  %41 = zext i32 %40 to i64
  %42 = add i64 %34, %41
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i64 [ %42, %37 ], [ %34, %33 ]
  %45 = icmp ult i64 %44, 4294967296
  br i1 %45, label %46, label %50, !prof !15

46:                                               ; preds = %43
  %47 = trunc i64 %44 to i32
  %48 = udiv i32 %47, %13
  %49 = zext i32 %48 to i64
  br label %53

50:                                               ; preds = %43
  %51 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %44) #11, !srcloc !16
  %52 = extractvalue { i64, i64 } %51, 1
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i64 [ %49, %46 ], [ %52, %50 ]
  %55 = icmp ult i64 %54, 4294967296
  br i1 %55, label %56, label %59, !prof !15

56:                                               ; preds = %53
  %57 = trunc i64 %54 to i32
  %58 = udiv i32 %57, %15
  br label %63

59:                                               ; preds = %53
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %54) #11, !srcloc !16
  %61 = extractvalue { i64, i64 } %60, 1
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %58, %56 ], [ %62, %59 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.rockchip_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %17, %9, %3
  %20 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @__clk_get_name(ptr noundef %21) #8
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rockchip_rk3399_pll_set_rate, i32 noundef %1, ptr noundef %22) #9
  br label %26

24:                                               ; preds = %17
  %25 = tail call fastcc i32 @rockchip_rk3399_pll_set_params(ptr noundef %0, ptr noundef nonnull %14)
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ -22, %19 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 8
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %81, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %81, label %16

13:                                               ; preds = %16
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %81, label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %14, %13 ], [ 0, %6 ]
  %18 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %81, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !12
  %27 = and i32 %26, 4095
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !12
  %31 = and i32 %30, 63
  %32 = lshr i32 %30, 12
  %33 = and i32 %32, 7
  %34 = load ptr, ptr %24, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !12
  %37 = and i32 %36, 16777215
  %38 = load ptr, ptr %24, align 4
  %39 = getelementptr i8, ptr %38, i32 12
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !12
  %41 = lshr i32 %40, 3
  %42 = and i32 %41, 1
  %43 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %27
  br i1 %45, label %46, label %70

46:                                               ; preds = %23
  %47 = lshr i32 %30, 8
  %48 = and i32 %47, 7
  %49 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %48
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %31
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, %33
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %42
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = icmp eq i32 %42, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %64
  %67 = getelementptr %struct.rockchip_pll_rate_table, ptr %9, i32 %17, i32 1, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, %37
  br i1 %69, label %81, label %70

70:                                               ; preds = %66, %60, %56, %52, %46, %23
  %71 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = tail call ptr @clk_get_parent(ptr noundef %72) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load ptr, ptr %71, align 4
  %77 = tail call ptr @__clk_get_name(ptr noundef %76) #8
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rockchip_rk3399_pll_init, ptr noundef %77) #9
  br label %81

79:                                               ; preds = %70
  %80 = tail call fastcc i32 @rockchip_rk3399_pll_set_params(ptr noundef %0, ptr noundef nonnull %18)
  br label %81

81:                                               ; preds = %79, %75, %66, %64, %21, %13, %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_rk3399_pll_set_params(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.rockchip_pll_rate_table, align 4
  %4 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  %7 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !12
  %10 = and i32 %9, 4095
  %11 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !12
  %15 = and i32 %14, 63
  %16 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = lshr i32 %14, 8
  %18 = and i32 %17, 7
  %19 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = lshr i32 %14, 12
  %21 = and i32 %20, 7
  %22 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !12
  %26 = and i32 %25, 16777215
  %27 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 5
  store i32 %26, ptr %27, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !12
  %31 = lshr i32 %30, 3
  %32 = and i32 %31, 1
  %33 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %3, i32 0, i32 1, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  store i32 0, ptr %3, align 4
  %34 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  %36 = tail call zeroext i8 %35(ptr noundef %6) #8
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 13
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %6, i8 noundef zeroext 0) #8
  br label %42

42:                                               ; preds = %38, %2
  %43 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 268369920
  %46 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #8, !srcloc !11
  %47 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = shl i32 %50, 8
  %52 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 12
  %55 = or i32 %48, %51
  %56 = or i32 %55, %54
  %57 = or i32 %56, 2000617472
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #8, !srcloc !11
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr i8, ptr %60, i32 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !12
  %63 = and i32 %62, -16777216
  %64 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %63, %65
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #8, !srcloc !11
  %69 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %1, i32 0, i32 1, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %70, 3
  %72 = or i32 %71, 524288
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr i8, ptr %73, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #8, !srcloc !11
  %75 = tail call i64 @ktime_get() #8
  %76 = add i64 %75, 1000000
  br label %77

77:                                               ; preds = %82, %42
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr i8, ptr %78, i32 8
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #8, !srcloc !12
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = tail call i64 @ktime_get() #8
  %84 = icmp sgt i64 %83, %76
  br i1 %84, label %85, label %77

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 4
  %87 = getelementptr i8, ptr %86, i32 8
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rockchip_rk3399_pll_wait_lock) #9
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rockchip_rk3399_pll_set_params) #9
  %93 = call fastcc i32 @rockchip_rk3399_pll_set_params(ptr noundef %0, ptr noundef nonnull %3)
  br label %94

94:                                               ; preds = %90, %85, %77
  %95 = phi i32 [ -110, %90 ], [ 0, %85 ], [ 0, %77 ]
  br i1 %37, label %96, label %100

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 13
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i32 %98(ptr noundef %6, i8 noundef zeroext 1) #8
  br label %100

100:                                              ; preds = %96, %94
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  ret i32 %95
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151259087}
!11 = !{i64 2623336}
!12 = !{i64 2623754}
!13 = !{i64 2151261149}
!14 = !{i64 2151263065}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2147704129, i64 2147704409, i64 2147704743, i64 2147705077}
!17 = !{i64 2151291009}
!18 = !{i64 2151292801}
!19 = !{i64 2151294637}
!20 = !{i64 2151283180}
!21 = !{i64 2151283881}
!22 = !{i64 2151285215}
!23 = !{i64 2151331029}
!24 = !{i64 2151333081}
!25 = !{i64 2151334993}
