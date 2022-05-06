; ModuleID = '/llk/IR/drivers/clk/at91/sckc.c_pt.bc'
source_filename = "../drivers/clk/at91/sckc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_slow_bits = type { i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_sama5d4_slow_osc = type { %struct.clk_hw, ptr, ptr, i32, i8 }
%struct.clk_slow_rc_osc = type { %struct.clk_hw, ptr, ptr, i32, i32, i32 }
%struct.clk_slow_osc = type { %struct.clk_hw, ptr, ptr, i32 }
%struct.clk_sam9x5_slow = type { %struct.clk_hw, ptr, ptr, i8 }

@__of_table_at91sam9x5_clk_sckc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-sckc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_sckc_setup }, section "__clk_of_table", align 4
@__of_table_sama5d3_clk_sckc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-sckc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d3_sckc_setup }, section "__clk_of_table", align 4
@__of_table_sam9x60_clk_sckc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-sckc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sam9x60_sckc_setup }, section "__clk_of_table", align 4
@__of_table_sama5d4_clk_sckc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-sckc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d4_sckc_setup }, section "__clk_of_table", align 4
@at91sam9x5_bits = internal constant %struct.clk_slow_bits { i32 1, i32 2, i32 4, i32 8 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"slow_rc_osc\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"slow_osc\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"atmel,at91sam9x5-clk-slow-osc\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"atmel,osc-bypass\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"atmel,at91sam9x5-clk-slow\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"slowck\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"drivers/clk/at91/sckc.c\00", align 1
@slow_rc_osc_ops = internal constant %struct.clk_ops { ptr @clk_slow_rc_osc_prepare, ptr @clk_slow_rc_osc_unprepare, ptr @clk_slow_rc_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_slow_rc_osc_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_slow_rc_osc_recalc_accuracy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@slow_osc_ops = internal constant %struct.clk_ops { ptr @clk_slow_osc_prepare, ptr @clk_slow_osc_unprepare, ptr @clk_slow_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sam9x5_slow_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sam9x5_slow_set_parent, ptr @clk_sam9x5_slow_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91sam9x60_bits = internal constant %struct.clk_slow_bits { i32 0, i32 2, i32 4, i32 16777216 }, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"md_slck\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"td_slck\00", align 1
@__const.of_sama5d4_sckc_setup.parent_names = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr @.str.1], align 8
@sama5d4_slow_osc_ops = internal constant %struct.clk_ops { ptr @clk_sama5d4_slow_osc_prepare, ptr null, ptr @clk_sama5d4_slow_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91sama5d4_bits = internal constant %struct.clk_slow_bits { i32 0, i32 0, i32 0, i32 8 }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_at91sam9x5_clk_sckc, ptr @__of_table_sam9x60_clk_sckc, ptr @__of_table_sama5d3_clk_sckc, ptr @__of_table_sama5d4_clk_sckc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_sckc_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @at91sam9x5_sckc_register(ptr noundef %0, i32 noundef 75) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sama5d3_sckc_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @at91sam9x5_sckc_register(ptr noundef %0, i32 noundef 500) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sam9x60_sckc_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [2 x ptr], align 8
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %4 = load i64, ptr @__const.of_sama5d4_sckc_setup.parent_names, align 8
  store i64 %4, ptr %2, align 8
  %5 = icmp eq ptr %3, null
  %6 = trunc i64 %4 to i32
  %7 = inttoptr i32 %6 to ptr
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = inttoptr i32 %9 to ptr
  br i1 %5, label %45, label %11

11:                                               ; preds = %1
  %12 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 93750000, i32 noundef 0) #8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %45, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #8
  %19 = icmp ne ptr %18, null
  %20 = tail call fastcc ptr @at91_clk_register_slow_osc(ptr noundef nonnull %3, ptr noundef %10, ptr noundef nonnull %15, i32 noundef 5000000, i1 noundef zeroext %19, ptr noundef nonnull @at91sam9x60_bits) #7
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 12) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  store i32 2, ptr %24, align 8
  %27 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %7, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 0, i32 noundef 0) #8
  %28 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %24, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = call fastcc ptr @at91_clk_register_sam9x5_slow(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, ptr noundef nonnull @at91sam9x60_bits) #7
  %32 = getelementptr %struct.clk_hw_onecell_data, ptr %24, i32 2
  store ptr %31, ptr %32, align 8
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %24) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37, !prof !8

37:                                               ; preds = %34
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 510, i32 noundef 9, ptr noundef null) #8
  %38 = load ptr, ptr %32, align 8
  call void @clk_hw_unregister(ptr noundef %38) #8
  call void @kfree(ptr noundef %38) #8
  %39 = load ptr, ptr %28, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = phi ptr [ %27, %30 ], [ %39, %37 ]
  call void @clk_hw_unregister(ptr noundef %41) #8
  br label %42

42:                                               ; preds = %40, %26
  call void @kfree(ptr noundef nonnull %24) #8
  br label %43

43:                                               ; preds = %42, %22
  call void @clk_hw_unregister(ptr noundef %20) #8
  call void @kfree(ptr noundef %20) #8
  br label %44

44:                                               ; preds = %43, %17, %14
  call void @clk_hw_unregister(ptr noundef %12) #8
  br label %45

45:                                               ; preds = %44, %34, %11, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sama5d4_sckc_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca ptr, align 4
  %4 = alloca [2 x ptr], align 8
  %5 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %6 = load i64, ptr @__const.of_sama5d4_sckc_setup.parent_names, align 8
  store i64 %6, ptr %4, align 8
  %7 = icmp eq ptr %5, null
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i32
  %10 = inttoptr i32 %9 to ptr
  br i1 %7, label %42, label %11

11:                                               ; preds = %1
  %12 = trunc i64 %6 to i32
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %13, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 250000000, i32 noundef 0) #8
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %42, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  store ptr %17, ptr %3, align 4
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 28) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  store ptr %10, ptr %2, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @sama5d4_slow_osc_ops, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 8, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_hw, ptr %19, i32 0, i32 2
  store ptr %2, ptr %26, align 8
  %27 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %19, i32 0, i32 1
  store ptr %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %19, i32 0, i32 3
  store i32 1200000, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %19, i32 0, i32 2
  store ptr @at91sama5d4_bits, ptr %29, align 8
  %30 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %19) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = call fastcc ptr @at91_clk_register_sam9x5_slow(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, ptr noundef nonnull %4, ptr noundef nonnull @at91sama5d4_bits) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %33) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !8

38:                                               ; preds = %35
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 618, i32 noundef 9, ptr noundef null) #8
  call void @clk_hw_unregister(ptr noundef %33) #8
  call void @kfree(ptr noundef %33) #8
  br label %39

39:                                               ; preds = %38, %32
  call void @clk_hw_unregister(ptr noundef nonnull %19) #8
  br label %40

40:                                               ; preds = %39, %21
  call void @kfree(ptr noundef nonnull %19) #8
  br label %41

41:                                               ; preds = %40, %16
  call void @clk_hw_unregister(ptr noundef %14) #8
  br label %42

42:                                               ; preds = %41, %35, %11, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @at91sam9x5_sckc_register(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = load i64, ptr @__const.of_sama5d4_sckc_setup.parent_names, align 8
  store i64 %4, ptr %3, align 8
  %5 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %6 = icmp eq ptr %5, null
  %7 = lshr i64 %4, 32
  %8 = trunc i64 %7 to i32
  %9 = inttoptr i32 %8 to ptr
  br i1 %6, label %50, label %10

10:                                               ; preds = %2
  %11 = trunc i64 %4 to i32
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call fastcc ptr @at91_clk_register_slow_rc_osc(ptr noundef nonnull %5, ptr noundef %12, i32 noundef %1) #7
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %50, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = tail call ptr @of_get_compatible_child(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %23

21:                                               ; preds = %15
  %22 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #8
  br label %28

23:                                               ; preds = %18
  %24 = tail call ptr @of_clk_get_parent_name(ptr noundef nonnull %19, i32 noundef 0) #8
  %25 = tail call ptr @of_find_property(ptr noundef nonnull %19, ptr noundef nonnull @.str.3, ptr noundef null) #8
  %26 = tail call ptr @of_get_compatible_child(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  %27 = icmp eq ptr %24, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %23, %21
  %29 = phi ptr [ %22, %21 ], [ %25, %23 ]
  %30 = phi ptr [ %16, %21 ], [ %24, %23 ]
  %31 = phi ptr [ null, %21 ], [ %26, %23 ]
  %32 = icmp ne ptr %29, null
  %33 = tail call fastcc ptr @at91_clk_register_slow_osc(ptr noundef nonnull %5, ptr noundef %9, ptr noundef nonnull %30, i32 noundef 1200000, i1 noundef zeroext %32, ptr noundef nonnull @at91sam9x5_bits) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = call fastcc ptr @at91_clk_register_sam9x5_slow(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, ptr noundef nonnull @at91sam9x5_bits) #7
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = icmp eq ptr %31, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %31, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %36) #8
  br label %44

42:                                               ; preds = %38
  %43 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %36) #8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47, !prof !8

47:                                               ; preds = %44
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 421, i32 noundef 9, ptr noundef null) #8
  call void @clk_hw_unregister(ptr noundef %36) #8
  call void @kfree(ptr noundef %36) #8
  br label %48

48:                                               ; preds = %47, %35
  call void @clk_hw_unregister(ptr noundef %33) #8
  call void @kfree(ptr noundef %33) #8
  br label %49

49:                                               ; preds = %48, %28, %23, %18
  call void @clk_hw_unregister(ptr noundef %13) #8
  call void @kfree(ptr noundef %13) #8
  br label %50

50:                                               ; preds = %49, %44, %10, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_slow_rc_osc(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #8
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 12, i1 false), !annotation !9
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 32) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  store ptr %1, ptr %4, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @slow_rc_osc_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 8, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %4, ptr %18, align 8
  %19 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %11, i32 0, i32 1
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %11, i32 0, i32 2
  store ptr @at91sam9x5_bits, ptr %20, align 8
  %21 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %11, i32 0, i32 3
  store i32 32768, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %11, i32 0, i32 4
  store i32 50000000, ptr %22, align 8
  %23 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %11, i32 0, i32 5
  store i32 %2, ptr %23, align 4
  %24 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %11) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %13
  call void @kfree(ptr noundef nonnull %11) #8
  %27 = inttoptr i32 %24 to ptr
  br label %28

28:                                               ; preds = %26, %13, %9, %3
  %29 = phi ptr [ %27, %26 ], [ %11, %13 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %9 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_slow_osc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 section ".init.text" {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #8
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !9
  %10 = icmp ne ptr %0, null
  %11 = icmp ne ptr %1, null
  %12 = and i1 %10, %11
  %13 = icmp ne ptr %2, null
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %6
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 24) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  store ptr %1, ptr %8, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @slow_osc_ops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 8, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_hw, ptr %17, i32 0, i32 2
  store ptr %8, ptr %24, align 8
  %25 = getelementptr inbounds %struct.clk_slow_osc, ptr %17, i32 0, i32 1
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_slow_osc, ptr %17, i32 0, i32 3
  store i32 %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_slow_osc, ptr %17, i32 0, i32 2
  store ptr %5, ptr %27, align 8
  br i1 %4, label %28, label %37

28:                                               ; preds = %19
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %30 = getelementptr inbounds %struct.clk_slow_bits, ptr %5, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  %34 = getelementptr inbounds %struct.clk_slow_bits, ptr %5, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %33, %35
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %0, i32 %36) #8, !srcloc !13
  br label %37

37:                                               ; preds = %28, %19
  %38 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %17) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  call void @kfree(ptr noundef nonnull %17) #8
  %41 = inttoptr i32 %38 to ptr
  br label %42

42:                                               ; preds = %40, %37, %15, %6
  %43 = phi ptr [ %41, %40 ], [ %17, %37 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #8
  ret ptr %43
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_sam9x5_slow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !9
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  %10 = icmp ne ptr %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 24) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  store ptr %1, ptr %5, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @sam9x5_slow_ops, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_hw, ptr %14, i32 0, i32 2
  store ptr %5, ptr %21, align 8
  %22 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %14, i32 0, i32 1
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %14, i32 0, i32 2
  store ptr %3, ptr %23, align 8
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %25 = getelementptr inbounds %struct.clk_slow_bits, ptr %3, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %24
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %14, i32 0, i32 3
  store i8 %29, ptr %30, align 4
  %31 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %14) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %16
  call void @kfree(ptr noundef nonnull %14) #8
  %34 = inttoptr i32 %31 to ptr
  br label %35

35:                                               ; preds = %33, %16, %12, %4
  %36 = phi ptr [ %34, %33 ], [ %14, %16 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %12 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_slow_rc_osc_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %5 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #8, !srcloc !13
  %9 = load i32, ptr @system_state, align 4
  %10 = icmp ult i32 %9, 3
  %11 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  br i1 %10, label %13, label %15

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %12) #8
  br label %17

15:                                               ; preds = %1
  %16 = add i32 %12, 1
  tail call void @usleep_range_state(i32 noundef %12, i32 noundef %16, i32 noundef 2) #8
  br label %17

17:                                               ; preds = %15, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_slow_rc_osc_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %5 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %4, %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %9) #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_slow_rc_osc_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %5 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_slow_rc_osc_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_slow_rc_osc_recalc_accuracy(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_slow_osc_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_slow_osc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %5 = getelementptr inbounds %struct.clk_slow_osc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_slow_bits, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_slow_bits, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, %8
  %12 = and i32 %11, %4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.clk_slow_bits, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %18) #8, !srcloc !13
  %19 = load i32, ptr @system_state, align 4
  %20 = icmp ult i32 %19, 3
  %21 = getelementptr inbounds %struct.clk_slow_osc, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  br i1 %20, label %23, label %25

23:                                               ; preds = %14
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %22) #8
  br label %27

25:                                               ; preds = %14
  %26 = add i32 %22, 1
  tail call void @usleep_range_state(i32 noundef %22, i32 noundef %26, i32 noundef 2) #8
  br label %27

27:                                               ; preds = %25, %23, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_slow_osc_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_slow_osc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %5 = getelementptr inbounds %struct.clk_slow_osc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_slow_bits, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.clk_slow_bits, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %4, %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %16) #8, !srcloc !13
  br label %17

17:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_slow_osc_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_slow_osc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %5 = getelementptr inbounds %struct.clk_slow_osc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_slow_bits, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.clk_slow_bits, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i32 [ %16, %11 ], [ 1, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_slow_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt i8 %1, 1
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %8 = icmp eq i8 %1, 0
  %9 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_slow_bits, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %7
  %14 = icmp eq i32 %13, 0
  br i1 %8, label %15, label %16

15:                                               ; preds = %6
  br i1 %14, label %29, label %19

16:                                               ; preds = %6
  br i1 %14, label %17, label %29

17:                                               ; preds = %16
  %18 = or i32 %12, %7
  br label %22

19:                                               ; preds = %15
  %20 = xor i32 %12, -1
  %21 = and i32 %7, %20
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %23) #8, !srcloc !13
  %24 = load i32, ptr @system_state, align 4
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 32641696) #8
  br label %29

28:                                               ; preds = %22
  tail call void @usleep_range_state(i32 noundef 152, i32 noundef 153, i32 noundef 2) #8
  br label %29

29:                                               ; preds = %28, %26, %16, %15, %2
  %30 = phi i32 [ -22, %2 ], [ 0, %16 ], [ 0, %15 ], [ 0, %28 ], [ 0, %26 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_sam9x5_slow_get_parent(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %5 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_slow_bits, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sama5d4_slow_osc_prepare(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4, !range !28
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %9 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_slow_bits, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %5
  %16 = load i32, ptr @system_state, align 4
  %17 = icmp ult i32 %16, 3
  %18 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br i1 %17, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %19) #8
  br label %24

22:                                               ; preds = %15
  %23 = add i32 %19, 1
  tail call void @usleep_range_state(i32 noundef %19, i32 noundef %23, i32 noundef 2) #8
  br label %24

24:                                               ; preds = %22, %20, %5
  store i8 1, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_sama5d4_slow_osc_is_prepared(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4, !range !28
  %4 = zext i8 %3 to i32
  ret i32 %4
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{i64 2151108830}
!11 = !{i64 3552543}
!12 = !{i64 2151109325}
!13 = !{i64 3552125}
!14 = !{i64 2151126511}
!15 = !{i64 2151114877}
!16 = !{i64 2151115333}
!17 = !{i64 2151117856}
!18 = !{i64 2151118313}
!19 = !{i64 2151119865}
!20 = !{i64 2151103355}
!21 = !{i64 2151103552}
!22 = !{i64 2151105832}
!23 = !{i64 2151106030}
!24 = !{i64 2151107680}
!25 = !{i64 2151123081}
!26 = !{i64 2151123254}
!27 = !{i64 2151125834}
!28 = !{i8 0, i8 2}
!29 = !{i64 2151135063}
