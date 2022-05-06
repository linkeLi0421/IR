; ModuleID = '/llk/IR/drivers/clk/mmp/clk.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmp_clk_unit = type { i32, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.mmp_param_fixed_rate_clk = type { i32, ptr, ptr, i32, i32 }
%struct.mmp_param_fixed_factor_clk = type { i32, ptr, ptr, i32, i32, i32 }
%struct.mmp_param_general_gate_clk = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.mmp_param_gate_clk = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.mmp_param_mux_clk = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr }
%struct.mmp_param_div_clk = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }

@.str = private unnamed_addr constant [35 x i8] c"\013%s: failed to register clock %s\0A\00", align 1
@__func__.mmp_register_fixed_rate_clks = private unnamed_addr constant [29 x i8] c"mmp_register_fixed_rate_clks\00", align 1
@__func__.mmp_register_fixed_factor_clks = private unnamed_addr constant [31 x i8] c"mmp_register_fixed_factor_clks\00", align 1
@__func__.mmp_register_general_gate_clks = private unnamed_addr constant [31 x i8] c"mmp_register_general_gate_clks\00", align 1
@__func__.mmp_register_gate_clks = private unnamed_addr constant [23 x i8] c"mmp_register_gate_clks\00", align 1
@__func__.mmp_register_mux_clks = private unnamed_addr constant [22 x i8] c"mmp_register_mux_clks\00", align 1
@__func__.mmp_register_div_clks = private unnamed_addr constant [22 x i8] c"mmp_register_div_clks\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\013CLK %d has invalid pointer %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\013CLK %d is invalid\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_clk_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %15, label %6, !prof !8

6:                                                ; preds = %3
  %7 = extractvalue { i32, i1 } %4, 0
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mmp_clk_unit, ptr %1, i32 0, i32 1
  store ptr %8, ptr %11, align 4
  store i32 %2, ptr %1, align 4
  %12 = getelementptr inbounds %struct.mmp_clk_unit, ptr %1, i32 0, i32 2
  store ptr %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mmp_clk_unit, ptr %1, i32 0, i32 2, i32 1
  store i32 %2, ptr %13, align 4
  %14 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %12) #5
  br label %15

15:                                               ; preds = %10, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_register_fixed_rate_clks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mmp_clk_unit, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %29, %5
  %8 = phi i32 [ 0, %5 ], [ %30, %29 ]
  %9 = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %1, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %1, i32 %8, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %1, i32 %8, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %1, i32 %8, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef %16) #5
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load ptr, ptr %9, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mmp_register_fixed_rate_clks, ptr noundef %20) #7
  br label %29

22:                                               ; preds = %7
  %23 = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %1, i32 %8
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr ptr, ptr %27, i32 %24
  store ptr %17, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %22, %19
  %30 = add nuw nsw i32 %8, 1
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %7

32:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_register_fixed_factor_clks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mmp_clk_unit, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %31, %5
  %8 = phi i32 [ 0, %5 ], [ %32, %31 ]
  %9 = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %1, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %1, i32 %8, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %1, i32 %8, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %1, i32 %8, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %1, i32 %8, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #5
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load ptr, ptr %9, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mmp_register_fixed_factor_clks, ptr noundef %22) #7
  br label %31

24:                                               ; preds = %7
  %25 = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %1, i32 %8
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr ptr, ptr %29, i32 %26
  store ptr %19, ptr %30, align 4
  br label %31

31:                                               ; preds = %28, %24, %21
  %32 = add nuw nsw i32 %8, 1
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %7

34:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_register_general_gate_clks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.mmp_clk_unit, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %37, %6
  %9 = phi i32 [ 0, %6 ], [ %38, %37 ]
  %10 = getelementptr %struct.mmp_param_general_gate_clk, ptr %1, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.mmp_param_general_gate_clk, ptr %1, i32 %9, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.mmp_param_general_gate_clk, ptr %1, i32 %9, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.mmp_param_general_gate_clk, ptr %1, i32 %9, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %2, i32 %17
  %19 = getelementptr %struct.mmp_param_general_gate_clk, ptr %1, i32 %9, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr %struct.mmp_param_general_gate_clk, ptr %1, i32 %9, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr %struct.mmp_param_general_gate_clk, ptr %1, i32 %9, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %22, ptr noundef %24) #5
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load ptr, ptr %10, align 4
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mmp_register_general_gate_clks, ptr noundef %28) #7
  br label %37

30:                                               ; preds = %8
  %31 = getelementptr %struct.mmp_param_general_gate_clk, ptr %1, i32 %9
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr ptr, ptr %35, i32 %32
  store ptr %25, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %30, %27
  %38 = add nuw nsw i32 %9, 1
  %39 = icmp eq i32 %38, %3
  br i1 %39, label %40, label %8

40:                                               ; preds = %37, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_register_gate_clks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.mmp_clk_unit, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %41, %6
  %9 = phi i32 [ 0, %6 ], [ %42, %41 ]
  %10 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %2, i32 %17
  %19 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @mmp_clk_register_gate(ptr noundef null, ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef %28) #5
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %8
  %32 = load ptr, ptr %10, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mmp_register_gate_clks, ptr noundef %32) #7
  br label %41

34:                                               ; preds = %8
  %35 = getelementptr %struct.mmp_param_gate_clk, ptr %1, i32 %9
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr ptr, ptr %39, i32 %36
  store ptr %29, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %34, %31
  %42 = add nuw nsw i32 %9, 1
  %43 = icmp eq i32 %42, %3
  br i1 %43, label %44, label %8

44:                                               ; preds = %41, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_register_mux_clks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.mmp_clk_unit, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %44, %6
  %9 = phi i32 [ 0, %6 ], [ %45, %44 ]
  %10 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %2, i32 %19
  %21 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9, i32 6
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9, i32 7
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nsw i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9, i32 8
  %29 = load i8, ptr %28, align 2
  %30 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %11, ptr noundef %13, i8 noundef zeroext %15, i32 noundef %17, ptr noundef %20, i8 noundef zeroext %22, i32 noundef %27, i8 noundef zeroext %29, ptr noundef null, ptr noundef %31) #5
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = load ptr, ptr %10, align 4
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mmp_register_mux_clks, ptr noundef %35) #7
  br label %44

37:                                               ; preds = %8
  %38 = getelementptr %struct.mmp_param_mux_clk, ptr %1, i32 %9
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr ptr, ptr %42, i32 %39
  store ptr %32, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %37, %34
  %45 = add nuw nsw i32 %9, 1
  %46 = icmp eq i32 %45, %3
  br i1 %46, label %47, label %8

47:                                               ; preds = %44, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_register_div_clks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.mmp_clk_unit, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %39, %6
  %9 = phi i32 [ 0, %6 ], [ %40, %39 ]
  %10 = getelementptr %struct.mmp_param_div_clk, ptr %1, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.mmp_param_div_clk, ptr %1, i32 %9, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.mmp_param_div_clk, ptr %1, i32 %9, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.mmp_param_div_clk, ptr %1, i32 %9, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %2, i32 %17
  %19 = getelementptr %struct.mmp_param_div_clk, ptr %1, i32 %9, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr %struct.mmp_param_div_clk, ptr %1, i32 %9, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr %struct.mmp_param_div_clk, ptr %1, i32 %9, i32 7
  %24 = load i8, ptr %23, align 2
  %25 = getelementptr %struct.mmp_param_div_clk, ptr %1, i32 %9, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %22, i8 noundef zeroext %24, ptr noundef null, ptr noundef %26) #5
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %8
  %30 = load ptr, ptr %10, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mmp_register_div_clks, ptr noundef %30) #7
  br label %39

32:                                               ; preds = %8
  %33 = getelementptr %struct.mmp_param_div_clk, ptr %1, i32 %9
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr ptr, ptr %37, i32 %34
  store ptr %27, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %32, %29
  %40 = add nuw nsw i32 %9, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %8

42:                                               ; preds = %39, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_clk_add(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %1, ptr noundef %2) #7
  br label %18

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %1) #7
  br label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mmp_clk_unit, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr ptr, ptr %16, i32 %1
  store ptr %2, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %12, %7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { cold nounwind }

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
