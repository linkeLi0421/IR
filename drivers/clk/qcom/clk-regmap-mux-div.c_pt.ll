; ModuleID = '/llk/IR/drivers/clk/qcom/clk-regmap-mux-div.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-regmap-mux-div.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mux_div_set_src_div:\09\09\09\09\09"
module asm "\09.asciz \09\22mux_div_set_src_div\22\09\09\09\09\09"
module asm "__kstrtabns_mux_div_set_src_div:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_mux_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_mux_div_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_mux_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_regmap_mux_div = type { i32, i32, i32, i32, i32, i32, i32, ptr, %struct.clk_regmap, ptr, %struct.notifier_block }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [43 x i8] c"\013%s: RCG did not update its configuration\00", align 1
@__kstrtab_mux_div_set_src_div = external dso_local constant [0 x i8], align 1
@__kstrtabns_mux_div_set_src_div = external dso_local constant [0 x i8], align 1
@__ksymtab_mux_div_set_src_div = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mux_div_set_src_div to i32), ptr @__kstrtab_mux_div_set_src_div, ptr @__kstrtabns_mux_div_set_src_div }, section "___ksymtab_gpl+mux_div_set_src_div", align 4
@clk_regmap_mux_div_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mux_div_recalc_rate, ptr null, ptr @mux_div_determine_rate, ptr @mux_div_set_parent, ptr @mux_div_get_parent, ptr @mux_div_set_rate, ptr @mux_div_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_mux_div_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_mux_div_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_mux_div_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_mux_div_ops to i32), ptr @__kstrtab_clk_regmap_mux_div_ops, ptr @__kstrtabns_clk_regmap_mux_div_ops }, section "___ksymtab_gpl+clk_regmap_mux_div_ops", align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"\013%s: Can't find parent %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\013%s: RCG configuration is pending\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013%s: Can't find parent with src %d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_clk_regmap_mux_div_ops, ptr @__ksymtab_mux_div_set_src_div], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mux_div_set_src_div(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 8
  %6 = tail call ptr @clk_hw_get_name(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %2, %8
  %10 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %1, %11
  %13 = or i32 %12, %9
  store i32 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = shl i32 %17, %8
  %19 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = shl nsw i32 -1, %20
  %22 = xor i32 %21, -1
  %23 = shl i32 %22, %11
  %24 = or i32 %23, %18
  %25 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 8, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %0, align 4
  %28 = add i32 %27, 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %28, i32 noundef %24, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %3
  %32 = load ptr, ptr %25, align 4
  %33 = load i32, ptr %0, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %33, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %46, %31
  %37 = phi i32 [ %48, %46 ], [ 500, %31 ]
  %38 = load ptr, ptr %25, align 4
  %39 = load i32, ptr %0, align 4
  %40 = call i32 @regmap_read(ptr noundef %38, i32 noundef %39, ptr noundef nonnull %4) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i32, ptr %4, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748) #4
  %48 = add nsw i32 %37, -1
  %49 = icmp ugt i32 %37, 1
  br i1 %49, label %36, label %50

50:                                               ; preds = %46
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6) #5
  br label %52

52:                                               ; preds = %50, %42, %36, %31, %3
  %53 = phi i32 [ -16, %50 ], [ %29, %3 ], [ %34, %31 ], [ 0, %42 ], [ %40, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mux_div_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %7 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  call fastcc void @mux_div_get_src_div(ptr noundef %5, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %8 = icmp sgt i32 %6, 0
  %9 = load i32, ptr %4, align 4
  br i1 %8, label %10, label %35

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %32, %10
  %14 = phi i32 [ 0, %10 ], [ %33, %32 ]
  %15 = getelementptr i32, ptr %12, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %9, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %14) #4
  %20 = tail call i32 @clk_hw_get_rate(ptr noundef %19) #4
  %21 = load i32, ptr %3, align 4
  %22 = add i32 %21, 1
  %23 = freeze i32 %20
  %24 = freeze i32 %22
  %25 = udiv i32 %23, %24
  %26 = mul i32 %25, %24
  %27 = sub i32 %23, %26
  %28 = shl i32 %25, 1
  %29 = shl i32 %27, 1
  %30 = udiv i32 %29, %22
  %31 = add i32 %30, %28
  br label %37

32:                                               ; preds = %13
  %33 = add nuw nsw i32 %14, 1
  %34 = icmp eq i32 %33, %6
  br i1 %34, label %35, label %13

35:                                               ; preds = %32, %2
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %9) #5
  br label %37

37:                                               ; preds = %35, %18
  %38 = phi i32 [ %31, %18 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mux_div_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %60, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -28
  %8 = lshr i32 %3, 1
  %9 = and i32 %3, 1
  %10 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %11 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  br label %12

12:                                               ; preds = %53, %6
  %13 = phi i32 [ 0, %6 ], [ %55, %53 ]
  %14 = phi i32 [ 0, %6 ], [ %54, %53 ]
  %15 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %13) #4
  %16 = tail call i32 @clk_hw_get_rate(ptr noundef %15) #4
  %17 = load i32, ptr %7, align 4
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = icmp ult i32 %18, -2
  br i1 %20, label %21, label %53

21:                                               ; preds = %46, %12
  %22 = phi i32 [ %50, %46 ], [ 1, %12 ]
  %23 = phi i32 [ %47, %46 ], [ %14, %12 ]
  %24 = mul i32 %22, %8
  %25 = mul nuw nsw i32 %22, %9
  %26 = lshr i32 %25, 1
  %27 = add i32 %26, %24
  %28 = tail call i32 @clk_hw_round_rate(ptr noundef %15, i32 noundef %27) #4
  %29 = freeze i32 %28
  %30 = freeze i32 %22
  %31 = udiv i32 %29, %30
  %32 = mul i32 %31, %30
  %33 = sub i32 %29, %32
  %34 = shl i32 %31, 1
  %35 = shl i32 %33, 1
  %36 = udiv i32 %35, %22
  %37 = add i32 %36, %34
  %38 = icmp ule i32 %3, %37
  %39 = icmp ult i32 %37, %23
  %40 = and i1 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %21
  %42 = icmp ult i32 %23, %3
  %43 = icmp ult i32 %23, %37
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %21
  store i32 %37, ptr %1, align 4
  store i32 %28, ptr %10, align 4
  store ptr %15, ptr %11, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %37, %45 ], [ %23, %41 ]
  %48 = icmp ugt i32 %47, %3
  %49 = select i1 %38, i1 %48, i1 false
  %50 = add nuw i32 %22, 1
  %51 = icmp ult i32 %50, %19
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %21, label %53

53:                                               ; preds = %46, %12
  %54 = phi i32 [ %14, %12 ], [ %47, %46 ]
  %55 = add nuw i32 %13, 1
  %56 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %12, label %58

58:                                               ; preds = %53
  %59 = icmp eq i32 %54, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %58, %2
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ -22, %60 ], [ 0, %58 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mux_div_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = zext i8 %1 to i32
  %7 = getelementptr i32, ptr %5, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @mux_div_set_src_div(ptr noundef %3, i32 noundef %8, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @mux_div_get_parent(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4
  call fastcc void @mux_div_get_src_div(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %6 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %3, align 4
  br i1 %7, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -4
  br label %11

11:                                               ; preds = %19, %9
  %12 = phi i32 [ 0, %9 ], [ %20, %19 ]
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr i32, ptr %13, i32 %12
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %8, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = trunc i32 %12 to i8
  br label %25

19:                                               ; preds = %11
  %20 = add nuw i32 %12, 1
  %21 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %11, label %23

23:                                               ; preds = %19, %1
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %5, i32 noundef %8) #5
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i8 [ %18, %17 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i8 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mux_div_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc i32 @__mux_div_set_rate_and_parent(ptr noundef %0, i32 noundef %1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mux_div_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call fastcc i32 @__mux_div_set_rate_and_parent(ptr noundef %0, i32 noundef %1)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mux_div_get_src_div(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 8
  %6 = tail call ptr @clk_hw_get_name(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 8, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %0, align 4
  %10 = call i32 @regmap_read(ptr noundef %8, i32 noundef %9, ptr noundef nonnull %4) #4
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %6) #5
  br label %38

16:                                               ; preds = %3
  %17 = load ptr, ptr %7, align 4
  %18 = load i32, ptr %0, align 4
  %19 = add i32 %18, 4
  %20 = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %4) #4
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %21, %23
  %25 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = shl nsw i32 -1, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  store i32 %29, ptr %1, align 4
  %30 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %21, %31
  %33 = getelementptr inbounds %struct.clk_regmap_mux_div, ptr %0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = shl nsw i32 -1, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  store i32 %37, ptr %2, align 4
  br label %38

38:                                               ; preds = %16, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mux_div_set_rate_and_parent(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %69, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -28
  %8 = lshr i32 %1, 1
  %9 = and i32 %1, 1
  %10 = getelementptr i8, ptr %0, i32 -4
  br label %11

11:                                               ; preds = %62, %6
  %12 = phi i32 [ 0, %6 ], [ %65, %62 ]
  %13 = phi i32 [ 0, %6 ], [ %64, %62 ]
  %14 = phi i32 [ 0, %6 ], [ %63, %62 ]
  %15 = phi i32 [ 0, %6 ], [ %66, %62 ]
  %16 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %15) #4
  %17 = tail call i32 @clk_hw_get_rate(ptr noundef %16) #4
  %18 = load i32, ptr %7, align 4
  %19 = shl nsw i32 -1, %18
  %20 = xor i32 %19, -1
  %21 = icmp ult i32 %19, -2
  br i1 %21, label %22, label %62

22:                                               ; preds = %53, %11
  %23 = phi i32 [ %59, %53 ], [ 1, %11 ]
  %24 = phi i32 [ %56, %53 ], [ %12, %11 ]
  %25 = phi i32 [ %55, %53 ], [ %13, %11 ]
  %26 = phi i32 [ %54, %53 ], [ %14, %11 ]
  %27 = mul i32 %23, %8
  %28 = mul nuw nsw i32 %23, %9
  %29 = lshr i32 %28, 1
  %30 = add i32 %29, %27
  %31 = tail call i32 @clk_hw_round_rate(ptr noundef %16, i32 noundef %30) #4
  %32 = freeze i32 %31
  %33 = freeze i32 %23
  %34 = udiv i32 %32, %33
  %35 = mul i32 %34, %33
  %36 = sub i32 %32, %35
  %37 = shl i32 %34, 1
  %38 = shl i32 %36, 1
  %39 = udiv i32 %38, %23
  %40 = add i32 %39, %37
  %41 = icmp uge i32 %40, %1
  %42 = icmp ult i32 %40, %26
  %43 = and i1 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %22
  %45 = icmp ult i32 %26, %1
  %46 = icmp ult i32 %26, %40
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %22
  %49 = load ptr, ptr %10, align 4
  %50 = getelementptr i32, ptr %49, i32 %15
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %23, -1
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i32 [ %40, %48 ], [ %26, %44 ]
  %55 = phi i32 [ %52, %48 ], [ %25, %44 ]
  %56 = phi i32 [ %51, %48 ], [ %24, %44 ]
  %57 = icmp ugt i32 %54, %1
  %58 = select i1 %41, i1 %57, i1 false
  %59 = add nuw i32 %23, 1
  %60 = icmp ult i32 %59, %20
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %22, label %62

62:                                               ; preds = %53, %11
  %63 = phi i32 [ %14, %11 ], [ %54, %53 ]
  %64 = phi i32 [ %13, %11 ], [ %55, %53 ]
  %65 = phi i32 [ %12, %11 ], [ %56, %53 ]
  %66 = add nuw i32 %15, 1
  %67 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %11, label %69

69:                                               ; preds = %62, %2
  %70 = phi i32 [ 0, %2 ], [ %64, %62 ]
  %71 = phi i32 [ 0, %2 ], [ %65, %62 ]
  %72 = tail call i32 @mux_div_set_src_div(ptr noundef %3, i32 noundef %71, i32 noundef %70)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %0, i32 -12
  store i32 %70, ptr %75, align 4
  %76 = getelementptr i8, ptr %0, i32 -8
  store i32 %71, ptr %76, align 4
  br label %77

77:                                               ; preds = %74, %69
  ret i32 %72
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
