; ModuleID = '/llk/IR/drivers/clk/ti/apll.c_pt.bc'
source_filename = "../drivers/clk/ti/apll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_dra7_apll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-apll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_dra7_apll_setup }, section "__clk_of_table", align 4
@__of_table_omap2_apll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-apll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_omap2_apll_setup }, section "__clk_of_table", align 4
@apll_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @dra7_apll_enable, ptr @dra7_apll_disable, ptr @dra7_apll_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dra7_init_apll_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [43 x i8] c"\013%s: dra7 apll %pOFn must have parent(s)\0A\00", align 1
@__func__.of_dra7_apll_setup = private unnamed_addr constant [19 x i8] c"of_dra7_apll_setup\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\014%s: clock: %s failed transition to '%s'\0A\00", align 1
@__func__.dra7_apll_enable = private unnamed_addr constant [17 x i8] c"dra7_apll_enable\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bypassed\00", align 1
@omap2_apll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap2_apll_enable, ptr @omap2_apll_disable, ptr @omap2_apll_is_enabled, ptr null, ptr null, ptr null, ptr @omap2_apll_recalc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@omap2_apll_hwops = internal constant %struct.clk_hw_omap_ops { ptr null, ptr null, ptr @omap2_apll_allow_idle, ptr @omap2_apll_deny_idle }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"\013%s: %pOFn must have one parent\0A\00", align 1
@__func__.of_omap2_apll_setup = private unnamed_addr constant [20 x i8] c"of_omap2_apll_setup\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ti,clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\013%s: %pOFn missing clock-frequency\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"ti,bit-shift\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\013%s: %pOFn missing bit-shift\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"ti,idlest-shift\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\013%s: %pOFn missing idlest-shift\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\014%s: %s failed to transition to locked\0A\00", align 1
@__func__.omap2_apll_enable = private unnamed_addr constant [18 x i8] c"omap2_apll_enable\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_dra7_apll_clock, ptr @__of_table_omap2_apll_clock], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_dra7_apll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 168) #9
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 76) #9
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #9
  %8 = icmp ne ptr %3, null
  %9 = icmp ne ptr %5, null
  %10 = select i1 %8, i1 %9, i1 false
  %11 = icmp ne ptr %7, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %43

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.clk_hw_omap, ptr %5, i32 0, i32 8
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_hw, ptr %5, i32 0, i32 2
  store ptr %7, ptr %15, align 8
  %16 = load ptr, ptr %0, align 4
  store ptr %16, ptr %7, align 8
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @apll_ck_ops, ptr %17, align 4
  %18 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #10
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 %19, ptr %20, align 4
  %21 = and i32 %18, 255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_dra7_apll_setup, ptr noundef %0) #11
  br label %43

25:                                               ; preds = %13
  %26 = shl nuw nsw i32 %21, 2
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load i8, ptr %20, align 4
  %31 = zext i8 %30 to i32
  %32 = tail call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %27, i32 noundef %31) #10
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %27, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %35 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef %34) #10
  %36 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 18
  %37 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 1, ptr noundef %36) #10
  %38 = or i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 21
  store i32 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  store i32 3, ptr %42, align 8
  tail call void @omap_clk_register_apll(ptr noundef nonnull %5, ptr noundef %0) #13
  br label %45

43:                                               ; preds = %29, %25, %23, %1
  %44 = phi ptr [ null, %23 ], [ %27, %29 ], [ null, %25 ], [ null, %1 ]
  tail call void @kfree(ptr noundef %44) #10
  tail call void @kfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %7) #10
  br label %45

45:                                               ; preds = %43, %40
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_omap2_apll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 168) #9
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 76) #9
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 28) #9
  %10 = icmp ne ptr %5, null
  %11 = icmp ne ptr %7, null
  %12 = select i1 %10, i1 %11, i1 false
  %13 = icmp ne ptr %9, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %72

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.clk_hw_omap, ptr %7, i32 0, i32 8
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 2
  store ptr %9, ptr %17, align 8
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @omap2_apll_ops, ptr %18, align 4
  %19 = load ptr, ptr %0, align 4
  store ptr %19, ptr %9, align 8
  %20 = getelementptr inbounds %struct.clk_hw_omap, ptr %7, i32 0, i32 11
  store ptr @omap2_apll_hwops, ptr %20, align 8
  %21 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #10
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %22, ptr %23, align 4
  %24 = and i32 %21, 255
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.of_omap2_apll_setup, ptr noundef %0) #11
  br label %72

28:                                               ; preds = %15
  %29 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #10
  store ptr %29, ptr %2, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %2, ptr %30, align 8
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.of_omap2_apll_setup, ptr noundef %0) #11
  br label %72

35:                                               ; preds = %28
  %36 = load i32, ptr %3, align 4
  %37 = getelementptr inbounds %struct.clk_hw_omap, ptr %7, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.of_omap2_apll_setup, ptr noundef %0) #11
  br label %72

42:                                               ; preds = %35
  %43 = load i32, ptr %3, align 4
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.clk_hw_omap, ptr %7, i32 0, i32 5
  store i8 %44, ptr %45, align 4
  %46 = shl i32 3, %43
  %47 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 6
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 19
  store i32 %46, ptr %48, align 4
  %49 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.of_omap2_apll_setup, ptr noundef %0) #11
  br label %72

53:                                               ; preds = %42
  %54 = load i32, ptr %3, align 4
  %55 = shl nuw i32 1, %54
  %56 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 21
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 5
  %58 = call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef %57) #10
  %59 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 17
  %60 = call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 1, ptr noundef %59) #10
  %61 = or i32 %60, %58
  %62 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 18
  %63 = call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 2, ptr noundef %62) #10
  %64 = or i32 %61, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load ptr, ptr %0, align 4
  %68 = call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef nonnull %7, ptr noundef %67) #10
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %68) #10
  call void @kfree(ptr noundef nonnull %9) #10
  br label %73

72:                                               ; preds = %66, %53, %51, %40, %33, %26, %1
  call void @kfree(ptr noundef %5) #10
  call void @kfree(ptr noundef %7) #10
  call void @kfree(ptr noundef %9) #10
  br label %73

73:                                               ; preds = %72, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_clk_register_apll(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @of_clk_get(ptr noundef %1, i32 noundef 0) #10
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = tail call i32 @ti_clk_retry_init(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @omap_clk_register_apll) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %30

12:                                               ; preds = %2
  %13 = tail call ptr @__clk_get_hw(ptr noundef %7) #10
  %14 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = tail call ptr @of_clk_get(ptr noundef %1, i32 noundef 1) #10
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = tail call i32 @ti_clk_retry_init(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @omap_clk_register_apll) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %30

20:                                               ; preds = %12
  %21 = tail call ptr @__clk_get_hw(ptr noundef %15) #10
  %22 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = load ptr, ptr %1, align 4
  %24 = tail call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef %0, ptr noundef %23) #10
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %24) #10
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  br label %34

30:                                               ; preds = %20, %17, %9
  %31 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %31) #10
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %33) #10
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi ptr [ %6, %30 ], [ %29, %26 ]
  %36 = phi ptr [ %0, %30 ], [ %6, %26 ]
  tail call void @kfree(ptr noundef %35) #10
  tail call void @kfree(ptr noundef %36) #10
  br label %37

37:                                               ; preds = %34, %17, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7_apll_enable(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @clk_hw_get_name(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 21
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 false) #10, !range !9
  %10 = shl nuw i32 1, %9
  %11 = load ptr, ptr @ti_clk_ll_ops, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 18
  %14 = tail call i32 %12(ptr noundef %13) #10
  %15 = load i32, ptr %7, align 4
  %16 = and i32 %15, %14
  %17 = and i32 %10, 255
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %62, label %19

19:                                               ; preds = %5
  %20 = load ptr, ptr @ti_clk_ll_ops, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %23 = tail call i32 %21(ptr noundef %22) #10
  %24 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  %28 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #10, !range !9
  %29 = shl nuw i32 1, %28
  %30 = or i32 %29, %27
  %31 = load ptr, ptr @ti_clk_ll_ops, align 4
  %32 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void %33(i32 noundef %30, ptr noundef %22) #10
  %34 = load i32, ptr %7, align 4
  %35 = tail call i32 @llvm.cttz.i32(i32 %34, i1 false) #10, !range !9
  %36 = shl i32 %10, %35
  %37 = load ptr, ptr @ti_clk_ll_ops, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %13) #10
  %40 = load i32, ptr %7, align 4
  %41 = and i32 %40, %39
  %42 = and i32 %36, 255
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %44, %19
  %45 = phi i32 [ %46, %44 ], [ 0, %19 ]
  %46 = add nuw nsw i32 %45, 1
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #10
  %48 = load ptr, ptr @ti_clk_ll_ops, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %13) #10
  %51 = load i32, ptr %7, align 4
  %52 = and i32 %51, %50
  %53 = icmp eq i32 %52, %42
  %54 = icmp ugt i32 %45, 999999
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %44

56:                                               ; preds = %44
  %57 = icmp eq i32 %46, 1000000
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = icmp eq i32 %42, 0
  %60 = select i1 %59, ptr @.str.3, ptr @.str.2
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dra7_apll_enable, ptr noundef %6, ptr noundef nonnull %60) #11
  br label %62

62:                                               ; preds = %58, %56, %19, %5, %1
  %63 = phi i32 [ -22, %1 ], [ 0, %5 ], [ -16, %58 ], [ 0, %56 ], [ 0, %19 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dra7_apll_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %7 = tail call i32 %5(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #10, !range !9
  %13 = shl i32 2, %12
  %14 = or i32 %13, %11
  %15 = load ptr, ptr @ti_clk_ll_ops, align 4
  %16 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void %17(i32 noundef %14, ptr noundef %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7_apll_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %7 = tail call i32 %5(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #10, !range !9
  %12 = lshr i32 %10, %11
  %13 = icmp ne i32 %12, 2
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @dra7_init_apll_parent(ptr nocapture noundef readnone %0) #7 {
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_retry_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register_omap_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_apll_enable(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %7 = tail call i32 %5(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #10, !range !9
  %13 = shl i32 3, %12
  %14 = or i32 %13, %11
  %15 = load ptr, ptr @ti_clk_ll_ops, align 4
  %16 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void %17(i32 noundef %14, ptr noundef %6) #10
  %18 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 18
  %19 = load ptr, ptr @ti_clk_ll_ops, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %18) #10
  %22 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 21
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %26, %1
  %27 = phi i32 [ %28, %26 ], [ 0, %1 ]
  %28 = add nuw nsw i32 %27, 1
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #10
  %30 = load ptr, ptr @ti_clk_ll_ops, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %18) #10
  %33 = load i32, ptr %22, align 4
  %34 = and i32 %33, %32
  %35 = icmp ne i32 %34, 0
  %36 = icmp ugt i32 %27, 999999
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %26

38:                                               ; preds = %26
  %39 = icmp eq i32 %28, 1000000
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = tail call ptr @clk_hw_get_name(ptr noundef %0) #10
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.omap2_apll_enable, ptr noundef %41) #11
  br label %43

43:                                               ; preds = %40, %38, %1
  %44 = phi i32 [ -16, %40 ], [ 0, %38 ], [ 0, %1 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2_apll_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %7 = tail call i32 %5(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = load ptr, ptr @ti_clk_ll_ops, align 4
  %13 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %14(i32 noundef %11, ptr noundef %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_apll_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %7 = tail call i32 %5(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #10, !range !9
  %12 = lshr i32 %10, %11
  %13 = icmp eq i32 %12, 3
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_apll_recalc(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 5
  %8 = tail call i32 %6(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %8
  %12 = tail call i32 @llvm.cttz.i32(i32 %10, i1 false) #10, !range !9
  %13 = lshr i32 %11, %12
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ %17, %15 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2_apll_allow_idle(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 17
  %7 = tail call i32 %5(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #10, !range !9
  %13 = shl i32 3, %12
  %14 = or i32 %13, %11
  %15 = load ptr, ptr @ti_clk_ll_ops, align 4
  %16 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  tail call void %17(i32 noundef %14, ptr noundef %18) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2_apll_deny_idle(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 17
  %7 = tail call i32 %5(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = load ptr, ptr @ti_clk_ll_ops, align 4
  %13 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  tail call void %14(i32 noundef %11, ptr noundef %15) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold }

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
!9 = !{i32 0, i32 33}
