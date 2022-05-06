; ModuleID = '/llk/IR/drivers/clk/qcom/clk-hfpll.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-hfpll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_ops_hfpll:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_ops_hfpll\22\09\09\09\09\09"
module asm "__kstrtabns_clk_ops_hfpll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.hfpll_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32 }

@clk_ops_hfpll = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_hfpll_enable, ptr @clk_hfpll_disable, ptr @hfpll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_hfpll_recalc_rate, ptr @clk_hfpll_round_rate, ptr null, ptr null, ptr null, ptr @clk_hfpll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_hfpll_init, ptr null, ptr null }, align 4
@__kstrtab_clk_ops_hfpll = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_ops_hfpll = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_ops_hfpll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_ops_hfpll to i32), ptr @__kstrtab_clk_ops_hfpll, ptr @__kstrtabns_clk_ops_hfpll }, section "___ksymtab_gpl+clk_ops_hfpll", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [29 x i8] c"drivers/clk/qcom/clk-hfpll.c\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"HFPLL %s is ON, but not locked!\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_clk_ops_hfpll], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_hfpll_enable(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 28
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = load i32, ptr %4, align 4
  %10 = call i32 @regmap_read(ptr noundef %6, i32 noundef %9, ptr noundef nonnull %2) #5
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, 7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call fastcc void @__clk_hfpll_enable(ptr noundef %0)
  br label %15

15:                                               ; preds = %14, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_hfpll_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 28
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %8, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hfpll_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %2) #5
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, 7
  %11 = icmp eq i32 %10, 7
  %12 = zext i1 %11 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_hfpll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.hfpll_data, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %3) #5
  %11 = load i32, ptr %3, align 4
  %12 = mul i32 %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_hfpll_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hfpll_data, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 %1)
  %9 = getelementptr inbounds %struct.hfpll_data, ptr %5, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %12 = load i32, ptr %2, align 4
  %13 = add i32 %12, -1
  %14 = add i32 %13, %11
  %15 = urem i32 %14, %12
  %16 = sub i32 %14, %15
  %17 = icmp ugt i32 %16, %10
  %18 = select i1 %17, i32 %12, i32 0
  %19 = sub i32 %16, %18
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_hfpll_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.clk_regmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = udiv i32 %1, %2
  %10 = getelementptr i8, ptr %0, i32 28
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #5
  %12 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @__clk_is_enabled(ptr noundef %13) #5
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load ptr, ptr %5, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = load i32, ptr %16, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %18, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %20

20:                                               ; preds = %15, %3
  %21 = getelementptr inbounds %struct.hfpll_data, ptr %6, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hfpll_data, ptr %6, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = call i32 @regmap_read(ptr noundef %8, i32 noundef %22, ptr noundef nonnull %4) #5
  %30 = getelementptr inbounds %struct.hfpll_data, ptr %6, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, %1
  %33 = load i32, ptr %25, align 4
  br i1 %32, label %38, label %34

34:                                               ; preds = %28
  %35 = xor i32 %33, -1
  %36 = load i32, ptr %4, align 4
  %37 = and i32 %36, %35
  br label %41

38:                                               ; preds = %28
  %39 = load i32, ptr %4, align 4
  %40 = or i32 %39, %33
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %40, %38 ], [ %37, %34 ]
  store i32 %42, ptr %4, align 4
  %43 = load i32, ptr %21, align 4
  %44 = call i32 @regmap_write(ptr noundef %8, i32 noundef %43, i32 noundef %42) #5
  br label %45

45:                                               ; preds = %41, %24, %20
  %46 = getelementptr inbounds %struct.hfpll_data, ptr %6, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = call i32 @regmap_write(ptr noundef %8, i32 noundef %47, i32 noundef %9) #5
  br i1 %14, label %49, label %50

49:                                               ; preds = %45
  call fastcc void @__clk_hfpll_enable(ptr noundef %0)
  br label %50

50:                                               ; preds = %49, %45
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_hfpll_init(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.clk_regmap, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = load i32, ptr %5, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %2) #5
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.hfpll_data, ptr %5, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = call i32 @regmap_read(ptr noundef %7, i32 noundef %14, ptr noundef nonnull %3) #5
  %18 = load i32, ptr %3, align 4
  %19 = getelementptr inbounds %struct.hfpll_data, ptr %5, i32 0, i32 8
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call ptr @__clk_get_name(ptr noundef %27) #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %28) #5
  %29 = getelementptr i8, ptr %0, i32 28
  %30 = call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #5
  %31 = load ptr, ptr %4, align 4
  %32 = load ptr, ptr %6, align 4
  %33 = load i32, ptr %31, align 4
  %34 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %33, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #5
  br label %35

35:                                               ; preds = %25, %1
  call fastcc void @__clk_hfpll_init_once(ptr noundef %0)
  br label %36

36:                                               ; preds = %35, %16, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__clk_hfpll_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  tail call fastcc void @__clk_hfpll_init_once(ptr noundef %0)
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %7, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #5
  %10 = load i32, ptr %4, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %10, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %12 = getelementptr inbounds %struct.hfpll_data, ptr %4, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.hfpll_data, ptr %4, i32 0, i32 8
  %17 = call i32 @regmap_read(ptr noundef %6, i32 noundef %13, ptr noundef nonnull %2) #5
  %18 = load i32, ptr %2, align 4
  %19 = load i8, ptr %16, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %24, %15
  %25 = load i32, ptr %12, align 4
  %26 = call i32 @regmap_read(ptr noundef %6, i32 noundef %25, ptr noundef nonnull %2) #5
  %27 = load i32, ptr %2, align 4
  %28 = load i8, ptr %16, align 4
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %24, label %35

33:                                               ; preds = %1
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 12884880) #5
  br label %35

35:                                               ; preds = %33, %24, %15
  %36 = load i32, ptr %4, align 4
  %37 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %36, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__clk_hfpll_init_once(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %53, !prof !9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %15, i32 noundef %11) #5
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %19, i32 noundef 0) #5
  %21 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %22, i32 noundef 1) #5
  %24 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #5
  %31 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 12
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %30, %36
  %38 = select i1 %37, i32 %32, i32 0
  %39 = or i32 %38, %29
  br label %40

40:                                               ; preds = %34, %27
  %41 = phi i32 [ %29, %27 ], [ %39, %34 ]
  %42 = load i32, ptr %24, align 4
  %43 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %42, i32 noundef %41) #5
  br label %44

44:                                               ; preds = %40, %17
  %45 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hfpll_data, ptr %3, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %46, i32 noundef %50) #5
  br label %52

52:                                               ; preds = %48, %44
  store i32 1, ptr %6, align 4
  br label %53

53:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__clk_is_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
