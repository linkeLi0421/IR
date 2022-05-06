; ModuleID = '/llk/IR/drivers/clk/ti/mux.c_pt.bc'
source_filename = "../drivers/clk/ti/mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_omap_mux = type { %struct.clk_hw, %struct.clk_omap_reg, ptr, i32, i8, i8, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ti_clk_mux = type { i8, i32, i16, i8, ptr, i16 }

@ti_clk_mux_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_mux_save_context, ptr @clk_mux_restore_context, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @ti_clk_mux_set_parent, ptr @ti_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__of_table_mux_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,mux-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_mux_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_composite_mux_clk_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-mux-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_mux_clk_setup }, section "__clk_of_table", align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [41 x i8] c"\013%s: mux-clock %pOFn must have parents\0A\00", align 1
@__func__.of_mux_clk_setup = private unnamed_addr constant [17 x i8] c"of_mux_clk_setup\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ti,bit-shift\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ti,latch-bit\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ti,index-starts-at-one\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ti,set-rate-parent\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"\013%s: %pOFn must have parents\0A\00", align 1
@__func__.of_ti_composite_mux_clk_setup = private unnamed_addr constant [30 x i8] c"of_ti_composite_mux_clk_setup\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_mux_clk, ptr @__of_table_ti_composite_mux_clk_setup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mux_save_context(ptr noundef %0) #0 {
  %2 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  %3 = load ptr, ptr @ti_clk_ll_ops, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 1
  %6 = tail call i32 %4(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = lshr i32 %6, %9
  %11 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %10, %12
  %14 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %26, %17
  %20 = phi i32 [ %27, %26 ], [ 0, %17 ]
  %21 = getelementptr i32, ptr %15, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %13
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = trunc i32 %20 to i8
  br label %50

26:                                               ; preds = %19
  %27 = add nuw nsw i32 %20, 1
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %50, label %19

29:                                               ; preds = %1
  %30 = icmp eq i32 %13, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 6
  %33 = load i8, ptr %32, align 2
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true) #9, !range !8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %37, %36 ], [ %13, %31 ]
  %41 = and i8 %33, 1
  %42 = sub nsw i8 0, %41
  %43 = sext i8 %42 to i32
  %44 = add i32 %40, %43
  br label %45

45:                                               ; preds = %39, %36, %29
  %46 = phi i32 [ 0, %36 ], [ %44, %39 ], [ 0, %29 ]
  %47 = icmp ult i32 %46, %2
  %48 = trunc i32 %46 to i8
  %49 = select i1 %47, i8 %48, i8 -22
  br label %50

50:                                               ; preds = %45, %26, %24, %17
  %51 = phi i8 [ %25, %24 ], [ %49, %45 ], [ -22, %17 ], [ -22, %26 ]
  %52 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 7
  store i8 %51, ptr %52, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_mux_restore_context(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 1
  %4 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = zext i8 %3 to i32
  %9 = getelementptr i32, ptr %5, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 2
  br label %26

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 6
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  %19 = tail call i8 @llvm.cttz.i8(i8 %3, i1 true) #9, !range !9
  %20 = icmp eq i8 %3, 0
  %21 = shl i8 2, %19
  %22 = select i1 %20, i8 1, i8 %21
  %23 = select i1 %18, i8 %3, i8 %22
  %24 = and i8 %16, 1
  %25 = add i8 %23, %24
  br label %26

26:                                               ; preds = %14, %7
  %27 = phi i8 [ %13, %7 ], [ %16, %14 ]
  %28 = phi i8 [ %11, %7 ], [ %25, %14 ]
  %29 = and i8 %27, 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 4
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 16
  %38 = shl i32 %33, %37
  br label %52

39:                                               ; preds = %26
  %40 = load ptr, ptr @ti_clk_ll_ops, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 1
  %43 = tail call i32 %41(ptr noundef %42) #9
  %44 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 4
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i32
  %49 = shl i32 %45, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %43, %50
  br label %52

52:                                               ; preds = %39, %31
  %53 = phi i32 [ %48, %39 ], [ %36, %31 ]
  %54 = phi i32 [ %51, %39 ], [ %38, %31 ]
  %55 = zext i8 %28 to i32
  %56 = shl i32 %55, %53
  %57 = or i32 %56, %54
  %58 = load ptr, ptr @ti_clk_ll_ops, align 4
  %59 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 1
  tail call void %60(i32 noundef %57, ptr noundef %61) #9
  %62 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 5
  %63 = load i8, ptr %62, align 1
  tail call void @ti_clk_latch(ptr noundef %61, i8 noundef signext %63) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_clk_mux_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = zext i8 %1 to i32
  %8 = getelementptr i32, ptr %4, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 2
  br label %25

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  %18 = tail call i8 @llvm.cttz.i8(i8 %1, i1 true), !range !9
  %19 = icmp eq i8 %1, 0
  %20 = shl i8 2, %18
  %21 = select i1 %19, i8 1, i8 %20
  %22 = select i1 %17, i8 %1, i8 %21
  %23 = and i8 %15, 1
  %24 = add i8 %22, %23
  br label %25

25:                                               ; preds = %13, %6
  %26 = phi i8 [ %12, %6 ], [ %15, %13 ]
  %27 = phi i8 [ %10, %6 ], [ %24, %13 ]
  %28 = and i8 %26, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %35, 16
  %37 = shl i32 %32, %36
  br label %51

38:                                               ; preds = %25
  %39 = load ptr, ptr @ti_clk_ll_ops, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 1
  %42 = tail call i32 %40(ptr noundef %41) #9
  %43 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 4
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i32
  %48 = shl i32 %44, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %42, %49
  br label %51

51:                                               ; preds = %38, %30
  %52 = phi i32 [ %47, %38 ], [ %35, %30 ]
  %53 = phi i32 [ %50, %38 ], [ %37, %30 ]
  %54 = zext i8 %27 to i32
  %55 = shl i32 %54, %52
  %56 = or i32 %55, %53
  %57 = load ptr, ptr @ti_clk_ll_ops, align 4
  %58 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 1
  tail call void %59(i32 noundef %56, ptr noundef %60) #9
  %61 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 5
  %62 = load i8, ptr %61, align 1
  tail call void @ti_clk_latch(ptr noundef %60, i8 noundef signext %62) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @ti_clk_mux_get_parent(ptr noundef %0) #0 {
  %2 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  %3 = load ptr, ptr @ti_clk_ll_ops, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 1
  %6 = tail call i32 %4(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = lshr i32 %6, %9
  %11 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %10, %12
  %14 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %26, %17
  %20 = phi i32 [ %27, %26 ], [ 0, %17 ]
  %21 = getelementptr i32, ptr %15, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %13
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = trunc i32 %20 to i8
  br label %50

26:                                               ; preds = %19
  %27 = add nuw nsw i32 %20, 1
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %50, label %19

29:                                               ; preds = %1
  %30 = icmp eq i32 %13, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.clk_omap_mux, ptr %0, i32 0, i32 6
  %33 = load i8, ptr %32, align 2
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true), !range !8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %37, %36 ], [ %13, %31 ]
  %41 = and i8 %33, 1
  %42 = sub nsw i8 0, %41
  %43 = sext i8 %42 to i32
  %44 = add i32 %40, %43
  br label %45

45:                                               ; preds = %39, %36, %29
  %46 = phi i32 [ 0, %36 ], [ %44, %39 ], [ 0, %29 ]
  %47 = icmp ult i32 %46, %2
  %48 = trunc i32 %46 to i8
  %49 = select i1 %47, i8 %48, i8 -22
  br label %50

50:                                               ; preds = %45, %26, %24, %17
  %51 = phi i8 [ %25, %24 ], [ %49, %45 ], [ -22, %17 ], [ -22, %26 ]
  ret i8 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @of_mux_clk_setup(ptr noundef %0) #0 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca %struct.clk_omap_reg, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 -22, ptr %5, align 4
  %6 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #9
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_mux_clk_setup, ptr noundef %0) #10
  br label %65

10:                                               ; preds = %1
  %11 = shl i32 %6, 2
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %63, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %6) #9
  %16 = call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %20 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #9
  %21 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #9
  %22 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %23 = load ptr, ptr %0, align 4
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #9
  %26 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %26, i8 0, i32 12, i1 false) #9, !annotation !10
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 32) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  br label %63

31:                                               ; preds = %18
  %32 = trunc i32 %25 to i8
  %33 = trunc i32 %24 to i8
  %34 = trunc i32 %6 to i8
  %35 = icmp eq ptr %21, null
  %36 = sext i1 %35 to i32
  %37 = add i32 %6, %36
  %38 = call i32 @llvm.ctlz.i32(i32 %37, i1 false) #9, !range !8
  %39 = sub nuw nsw i32 32, %38
  %40 = shl nsw i32 -1, %39
  %41 = xor i32 %40, -1
  %42 = icmp eq ptr %22, null
  %43 = select i1 %42, i32 128, i32 132
  %44 = xor i1 %35, true
  %45 = zext i1 %44 to i8
  store ptr %23, ptr %2, align 4
  %46 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @ti_clk_mux_ops, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 %43, ptr %47, align 4
  %48 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %12, ptr %48, align 4
  %49 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 %34, ptr %49, align 4
  %50 = getelementptr inbounds %struct.clk_omap_mux, ptr %28, i32 0, i32 1
  %51 = load i64, ptr %3, align 8
  store i64 %51, ptr %50, align 4
  %52 = getelementptr inbounds %struct.clk_omap_mux, ptr %28, i32 0, i32 4
  store i8 %33, ptr %52, align 4
  %53 = getelementptr inbounds %struct.clk_omap_mux, ptr %28, i32 0, i32 3
  store i32 %41, ptr %53, align 8
  %54 = getelementptr inbounds %struct.clk_omap_mux, ptr %28, i32 0, i32 5
  store i8 %32, ptr %54, align 1
  %55 = getelementptr inbounds %struct.clk_omap_mux, ptr %28, i32 0, i32 6
  store i8 %45, ptr %55, align 2
  %56 = getelementptr inbounds %struct.clk_omap_mux, ptr %28, i32 0, i32 2
  store ptr null, ptr %56, align 4
  %57 = getelementptr inbounds %struct.clk_hw, ptr %28, i32 0, i32 2
  store ptr %2, ptr %57, align 8
  %58 = call ptr @ti_clk_register(ptr noundef null, ptr noundef nonnull %28, ptr noundef %23) #9
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %61

60:                                               ; preds = %31
  call void @kfree(ptr noundef nonnull %28) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  br label %63

61:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  %62 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %58) #9
  br label %63

63:                                               ; preds = %61, %60, %30, %14, %10
  %64 = phi ptr [ %12, %61 ], [ %12, %14 ], [ null, %10 ], [ %12, %30 ], [ %12, %60 ]
  call void @kfree(ptr noundef %64) #9
  br label %65

65:                                               ; preds = %63, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ti_clk_build_component_mux(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %0, align 4
  %9 = getelementptr inbounds %struct.clk_omap_mux, ptr %5, i32 0, i32 4
  store i8 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.clk_omap_mux, ptr %5, i32 0, i32 5
  store i8 -22, ptr %10, align 1
  %11 = getelementptr inbounds %struct.ti_clk_mux, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = getelementptr inbounds %struct.clk_omap_mux, ptr %5, i32 0, i32 1, i32 2
  store i8 %12, ptr %13, align 2
  %14 = getelementptr inbounds %struct.ti_clk_mux, ptr %0, i32 0, i32 2
  %15 = load i16, ptr %14, align 4
  %16 = getelementptr inbounds %struct.clk_omap_mux, ptr %5, i32 0, i32 1, i32 1
  store i16 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ti_clk_mux, ptr %0, i32 0, i32 5
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.clk_omap_mux, ptr %5, i32 0, i32 6
  %23 = load i8, ptr %22, align 2
  %24 = or i8 %23, 1
  store i8 %24, ptr %22, align 2
  br label %25

25:                                               ; preds = %21, %7
  %26 = getelementptr inbounds %struct.ti_clk_mux, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  %29 = getelementptr inbounds %struct.clk_omap_mux, ptr %5, i32 0, i32 3
  %30 = icmp eq i32 %28, 0
  %31 = tail call i32 @llvm.ctlz.i32(i32 %28, i1 false) #9, !range !8
  %32 = sub nuw nsw i32 32, %31
  %33 = shl nsw i32 -1, %32
  %34 = xor i32 %33, -1
  %35 = select i1 %30, i32 0, i32 %34
  store i32 %35, ptr %29, align 8
  br label %36

36:                                               ; preds = %25, %3, %1
  %37 = phi ptr [ %5, %25 ], [ null, %1 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_composite_mux_clk_setup(ptr noundef %0) #3 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clk_omap_mux, ptr %4, i32 0, i32 1
  %8 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.clk_omap_mux, ptr %4, i32 0, i32 4
  store i8 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.clk_omap_mux, ptr %4, i32 0, i32 6
  %22 = load i8, ptr %21, align 2
  %23 = or i8 %22, 1
  store i8 %23, ptr %21, align 2
  br label %24

24:                                               ; preds = %20, %17
  %25 = call i32 @of_clk_get_parent_count(ptr noundef %0) #9
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.of_ti_composite_mux_clk_setup, ptr noundef %0) #10
  br label %38

29:                                               ; preds = %24
  %30 = add i32 %25, -1
  %31 = getelementptr inbounds %struct.clk_omap_mux, ptr %4, i32 0, i32 3
  %32 = call i32 @llvm.ctlz.i32(i32 %30, i1 false) #9, !range !8
  %33 = sub nuw nsw i32 32, %32
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  store i32 %35, ptr %31, align 8
  %36 = call i32 @ti_clk_add_component(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29, %27, %6
  call void @kfree(ptr noundef nonnull %4) #9
  br label %39

39:                                               ; preds = %38, %29, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_latch(ptr noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i32 0, i32 33}
!9 = !{i8 0, i8 9}
!10 = !{!"auto-init"}
