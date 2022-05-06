; ModuleID = '/llk/IR/drivers/clk/ux500/clk-prcmu.c_pt.bc'
source_filename = "../drivers/clk/ux500/clk-prcmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_prcmu = type { %struct.clk_hw, i8, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_prcmu_scalable_ops = internal constant %struct.clk_ops { ptr @clk_prcmu_prepare, ptr @clk_prcmu_unprepare, ptr @clk_prcmu_is_prepared, ptr null, ptr @clk_prcmu_enable, ptr @clk_prcmu_disable, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr @clk_prcmu_round_rate, ptr null, ptr null, ptr null, ptr @clk_prcmu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_prcmu_gate_ops = internal constant %struct.clk_ops { ptr @clk_prcmu_prepare, ptr @clk_prcmu_unprepare, ptr @clk_prcmu_is_prepared, ptr null, ptr @clk_prcmu_enable, ptr @clk_prcmu_disable, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_prcmu_scalable_rate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr @clk_prcmu_round_rate, ptr null, ptr null, ptr null, ptr @clk_prcmu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_prcmu_rate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_prcmu_opp_gate_ops = internal constant %struct.clk_ops { ptr @clk_prcmu_opp_prepare, ptr @clk_prcmu_opp_unprepare, ptr @clk_prcmu_is_prepared, ptr null, ptr @clk_prcmu_enable, ptr @clk_prcmu_disable, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_prcmu_opp_volt_scalable_ops = internal constant %struct.clk_ops { ptr @clk_prcmu_opp_volt_prepare, ptr @clk_prcmu_opp_volt_unprepare, ptr @clk_prcmu_is_prepared, ptr null, ptr @clk_prcmu_enable, ptr @clk_prcmu_disable, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr @clk_prcmu_round_rate, ptr null, ptr null, ptr null, ptr @clk_prcmu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [42 x i8] c"\013clk_prcmu: %s invalid arguments passed\0A\00", align 1
@__func__.clk_reg_prcmu = private unnamed_addr constant [14 x i8] c"clk_reg_prcmu\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013clk_prcmu: %s failed to register clk\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"\013clk_prcmu: %s failed to disable %s.\0A\00", align 1
@__func__.clk_prcmu_unprepare = private unnamed_addr constant [20 x i8] c"clk_prcmu_unprepare\00", align 1
@__func__.clk_prcmu_opp_unprepare = private unnamed_addr constant [24 x i8] c"clk_prcmu_opp_unprepare\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013clk_prcmu: %s fail req APE OPP VOLT for %s.\0A\00", align 1
@__func__.clk_prcmu_opp_volt_prepare = private unnamed_addr constant [27 x i8] c"clk_prcmu_opp_volt_prepare\00", align 1
@__func__.clk_prcmu_opp_volt_unprepare = private unnamed_addr constant [29 x i8] c"clk_prcmu_opp_volt_unprepare\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_scalable(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @clk_prcmu_scalable_ops)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @clk_reg_prcmu(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #8
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = icmp eq ptr %0, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.clk_reg_prcmu) #9
  br label %41

13:                                               ; preds = %6
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 28) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.clk_prcmu, ptr %15, i32 0, i32 1
  store i8 %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_prcmu, ptr %15, i32 0, i32 2
  store i32 1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.clk_prcmu, ptr %15, i32 0, i32 3
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_prcmu, ptr %15, i32 0, i32 4
  store i32 0, ptr %21, align 8
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call i32 @prcmu_set_clock_rate(i8 noundef zeroext %2, i32 noundef %3) #8
  br label %25

25:                                               ; preds = %23, %17
  store ptr %0, ptr %8, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr %5, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %4, ptr %27, align 4
  %28 = icmp eq ptr %1, null
  %29 = select i1 %28, ptr null, ptr %7
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = icmp ne ptr %1, null
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %8, ptr %34, align 8
  %35 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %15) #8
  %36 = icmp eq ptr %35, null
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  call void @kfree(ptr noundef nonnull %15) #8
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.clk_reg_prcmu) #9
  br label %41

41:                                               ; preds = %39, %25, %13, %11
  %42 = phi ptr [ inttoptr (i32 -12 to ptr), %39 ], [ inttoptr (i32 -22 to ptr), %11 ], [ %35, %25 ], [ inttoptr (i32 -12 to ptr), %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #8
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_gate(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef 0, i32 noundef %3, ptr noundef nonnull @clk_prcmu_gate_ops)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_scalable_rate(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @clk_prcmu_scalable_rate_ops)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_rate(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef 0, i32 noundef %3, ptr noundef nonnull @clk_prcmu_rate_ops)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_opp_gate(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef 0, i32 noundef %3, ptr noundef nonnull @clk_prcmu_opp_gate_ops)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_opp_volt_scalable(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @clk_prcmu_opp_volt_scalable_ops)
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_set_clock_rate(i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_prcmu_prepare(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %3, i1 noundef zeroext true) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 2
  store i32 1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_prcmu_unprepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %3, i1 noundef zeroext false) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.clk_prcmu_unprepare, ptr noundef %7) #9
  br label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 2
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_prcmu_is_prepared(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @clk_prcmu_enable(ptr nocapture noundef writeonly %0) #7 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 3
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @clk_prcmu_disable(ptr nocapture noundef writeonly %0) #7 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 3
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_prcmu_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_prcmu_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = tail call i32 @prcmu_clock_rate(i8 noundef zeroext %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_prcmu_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = tail call i32 @prcmu_round_clock_rate(i8 noundef zeroext %5, i32 noundef %1) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_prcmu_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = tail call i32 @prcmu_set_clock_rate(i8 noundef zeroext %5, i32 noundef %1) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_request_clock(i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_clock_rate(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_round_clock_rate(i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_prcmu_opp_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  store i32 1, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %9, i1 noundef zeroext true) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  store i32 0, ptr %2, align 4
  br label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 2
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_prcmu_opp_unprepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %3, i1 noundef zeroext false) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.clk_prcmu_opp_unprepare, ptr noundef %7) #9
  br label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  store i32 0, ptr %10, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 2
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_prcmu_opp_volt_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call i32 @db8500_prcmu_request_ape_opp_100_voltage(i1 noundef zeroext true) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.clk_prcmu_opp_volt_prepare, ptr noundef %9) #9
  br label %21

11:                                               ; preds = %5
  store i32 1, ptr %2, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %14, i1 noundef zeroext true) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @db8500_prcmu_request_ape_opp_100_voltage(i1 noundef zeroext false) #8
  store i32 0, ptr %2, align 4
  br label %21

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 2
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %17, %8
  %22 = phi i32 [ %15, %17 ], [ 0, %19 ], [ %6, %8 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_prcmu_opp_volt_unprepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %3, i1 noundef zeroext false) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.clk_prcmu_opp_volt_unprepare, ptr noundef %7) #9
  br label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @db8500_prcmu_request_ape_opp_100_voltage(i1 noundef zeroext false) #8
  store i32 0, ptr %10, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.clk_prcmu, ptr %0, i32 0, i32 2
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_request_ape_opp_100_voltage(i1 noundef zeroext) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
