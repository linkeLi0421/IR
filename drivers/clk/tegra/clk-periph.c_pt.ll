; ModuleID = '/llk/IR/drivers/clk/tegra/clk-periph.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-periph.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_periph = type { i32, %struct.clk_hw, %struct.clk_mux, %struct.tegra_clk_frac_div, %struct.tegra_clk_periph_gate, ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.tegra_periph_init_data = type { ptr, i32, %union.anon.1, i32, %struct.tegra_clk_periph, i32, ptr, ptr, i32 }
%union.anon.1 = type { ptr }

@tegra_clk_periph_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_periph_enable, ptr @clk_periph_disable, ptr @clk_periph_is_enabled, ptr @clk_periph_disable_unused, ptr null, ptr @clk_periph_restore_context, ptr @clk_periph_recalc_rate, ptr @clk_periph_round_rate, ptr null, ptr @clk_periph_set_parent, ptr @clk_periph_get_parent, ptr @clk_periph_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [31 x i8] c"drivers/clk/tegra/clk-periph.c\00", align 1
@tegra_clk_periph_nodiv_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_periph_enable, ptr @clk_periph_disable, ptr @clk_periph_is_enabled, ptr @clk_periph_disable_unused, ptr null, ptr @clk_periph_restore_context, ptr null, ptr null, ptr null, ptr @clk_periph_set_parent, ptr @clk_periph_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_clk_periph_no_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_periph_restore_context, ptr @clk_periph_recalc_rate, ptr @clk_periph_round_rate, ptr null, ptr @clk_periph_set_parent, ptr @clk_periph_get_parent, ptr @clk_periph_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periph_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 112
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 76
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %4) #4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_periph_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 112
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periph_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 112
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 76
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %4) #4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_periph_disable_unused(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 112
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_periph_restore_context(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 108
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 44
  %5 = tail call i32 @clk_hw_get_parent_index(ptr noundef %0) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #4
  br label %28

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 88
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %4) #4
  br label %16

16:                                               ; preds = %13, %8
  %17 = trunc i32 %5 to i8
  %18 = getelementptr i8, ptr %0, i32 104
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 12
  %21 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 16
  store ptr %22, ptr %23, align 4
  %24 = load ptr, ptr %0, align 4
  store ptr %24, ptr %20, align 4
  %25 = getelementptr inbounds %struct.clk_ops, ptr %19, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %20, i8 noundef zeroext %17) #4
  br label %28

28:                                               ; preds = %16, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periph_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 108
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 44
  %6 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 48
  store ptr %7, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  store ptr %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.clk_ops, ptr %4, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %5, i32 noundef %1) #4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periph_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 108
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 44
  %7 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 48
  store ptr %8, ptr %9, align 4
  %10 = load ptr, ptr %0, align 4
  store ptr %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %6, i32 noundef %1, ptr noundef %2) #4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periph_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 104
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 12
  %6 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 16
  store ptr %7, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  store ptr %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.clk_ops, ptr %4, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %5, i8 noundef zeroext %1) #4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_periph_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 104
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 16
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i8 %10(ptr noundef %4) #4
  ret i8 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periph_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 108
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 44
  %7 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 48
  store ptr %8, ptr %9, align 4
  %10 = load ptr, ptr %0, align 4
  store ptr %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %6, i32 noundef %1, i32 noundef %2) #4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_periph(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #4
  %9 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 20, i1 false) #4, !annotation !9
  %10 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 32
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @tegra_clk_periph_ops, ptr @tegra_clk_periph_no_gate_ops
  %18 = select i1 %14, ptr %17, ptr @tegra_clk_periph_nodiv_ops
  %19 = lshr exact i32 %13, 2
  %20 = or i32 %19, %6
  store ptr %18, ptr %9, align 4
  store ptr %0, ptr %8, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %1, ptr %22, align 4
  %23 = trunc i32 %2 to i8
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @get_reg_bank(i32 noundef %26) #4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 1, i32 2
  store ptr %8, ptr %31, align 4
  store i32 404886051, ptr %3, align 4
  %32 = getelementptr i8, ptr %4, i32 %5
  %33 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 2, i32 1
  store ptr %32, ptr %33, align 4
  %34 = select i1 %14, ptr %32, ptr null
  %35 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 3, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 2
  store ptr %4, ptr %36, align 4
  %37 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 6
  store ptr %27, ptr %37, align 4
  %38 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %39 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 5
  store ptr %38, ptr %39, align 4
  %40 = call ptr @clk_register(ptr noundef null, ptr noundef %30) #4
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 2, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  %44 = select i1 %14, ptr %40, ptr null
  %45 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 3, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 1, i32 1
  store ptr %40, ptr %46, align 4
  br label %47

47:                                               ; preds = %42, %29, %7
  %48 = phi ptr [ %40, %42 ], [ %40, %29 ], [ inttoptr (i32 -22 to ptr), %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #4
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_periph_nodiv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.clk_init_data, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = or i8 %9, 16
  store i8 %10, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #4
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  %12 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 12, i1 false) #4, !annotation !9
  store ptr @tegra_clk_periph_nodiv_ops, ptr %11, align 4
  store ptr %0, ptr %7, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %1, ptr %14, align 4
  %15 = trunc i32 %2 to i8
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @get_reg_bank(i32 noundef %18) #4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 1, i32 2
  store ptr %7, ptr %23, align 4
  store i32 404886051, ptr %3, align 4
  %24 = getelementptr i8, ptr %4, i32 %5
  %25 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 2, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 3, i32 1
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 2
  store ptr %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 6
  store ptr %19, ptr %28, align 4
  %29 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %30 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 5
  store ptr %29, ptr %30, align 4
  %31 = call ptr @clk_register(ptr noundef null, ptr noundef %22) #4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 2, i32 0, i32 1
  store ptr %31, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 3, i32 0, i32 1
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tegra_clk_periph, ptr %3, i32 0, i32 4, i32 1, i32 1
  store ptr %31, ptr %36, align 4
  br label %37

37:                                               ; preds = %33, %21, %6
  %38 = phi ptr [ %31, %33 ], [ %31, %21 ], [ inttoptr (i32 -22 to ptr), %6 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #4
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_periph_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.clk_init_data, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #4
  %13 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 20, i1 false) #4, !annotation !9
  %14 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 4, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %16, 32
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @tegra_clk_periph_ops, ptr @tegra_clk_periph_no_gate_ops
  %22 = select i1 %18, ptr %21, ptr @tegra_clk_periph_nodiv_ops
  %23 = lshr exact i32 %17, 2
  %24 = or i32 %23, %12
  store ptr %22, ptr %13, align 4
  store ptr %4, ptr %3, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %6, ptr %26, align 4
  %27 = trunc i32 %8 to i8
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 4, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @get_reg_bank(i32 noundef %30) #4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4
  %35 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 1
  %36 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 1, i32 2
  store ptr %3, ptr %36, align 4
  store i32 404886051, ptr %34, align 4
  %37 = getelementptr i8, ptr %0, i32 %10
  %38 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 2, i32 1
  store ptr %37, ptr %38, align 4
  %39 = select i1 %18, ptr %37, ptr null
  %40 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 3, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 4, i32 2
  store ptr %0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 4, i32 6
  store ptr %31, ptr %42, align 4
  %43 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %44 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 4, i32 5
  store ptr %43, ptr %44, align 4
  %45 = call ptr @clk_register(ptr noundef null, ptr noundef %35) #4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %52, label %47

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 1
  store ptr %45, ptr %48, align 4
  %49 = select i1 %18, ptr %45, ptr null
  %50 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 3, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.tegra_periph_init_data, ptr %1, i32 0, i32 4, i32 4, i32 1, i32 1
  store ptr %45, ptr %51, align 4
  br label %52

52:                                               ; preds = %47, %33, %2
  %53 = phi ptr [ %45, %47 ], [ %45, %33 ], [ inttoptr (i32 -22 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #4
  ret ptr %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_parent_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_reg_bank(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
