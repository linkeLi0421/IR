; ModuleID = '/llk/IR/drivers/clk/ti/composite.c_pt.bc'
source_filename = "../drivers/clk/ti/composite.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_hw_omap_comp = type { %struct.clk_hw, [3 x ptr], [3 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.component_clk = type { i32, ptr, ptr, i32, ptr, %struct.list_head }

@__of_table_ti_composite_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_clk_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [49 x i8] c"\013%s: component-clock %pOFn must have parent(s)\0A\00", align 1
@__func__.ti_clk_add_component = private unnamed_addr constant [21 x i8] c"ti_clk_add_component\00", align 1
@component_clks = internal global %struct.list_head { ptr @component_clks, ptr @component_clks }, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\013%s: composite clk %pOFn must have component(s)\0A\00", align 1
@__func__.of_ti_composite_clk_setup = private unnamed_addr constant [26 x i8] c"of_ti_composite_clk_setup\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"\013%s: duplicate component types for %pOFn (%s)!\0A\00", align 1
@__func__._register_composite = private unnamed_addr constant [20 x i8] c"_register_composite\00", align 1
@component_clk_types = internal unnamed_addr constant [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], section ".init.rodata", align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"\013%s: %s: no parents found for %pOFn!\0A\00", align 1
@ti_clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@ti_composite_divider_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_composite_recalc_rate, ptr @ti_composite_round_rate, ptr null, ptr null, ptr null, ptr @ti_composite_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ti_composite_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap2_dflt_clk_enable, ptr @omap2_dflt_clk_disable, ptr @omap2_dflt_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"gate\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"divider\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@ti_clk_divider_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_ti_composite_clock], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_composite_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.of_ti_composite_clk_setup, ptr noundef %0) #10
  br label %21

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 36) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %18, %11 ], [ 0, %7 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !8
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef -1, i32 noundef %12, ptr noundef nonnull %2) #9
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %2, align 4
  %16 = select i1 %14, ptr %15, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %17 = getelementptr %struct.clk_hw_omap_comp, ptr %9, i32 0, i32 1, i32 %12
  store ptr %16, ptr %17, align 4
  %18 = add nuw i32 %12, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %11

20:                                               ; preds = %11
  call void @_register_composite(ptr noundef nonnull %9, ptr noundef %0) #12
  br label %21

21:                                               ; preds = %20, %7, %5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ti_clk_add_component(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ti_clk_add_component, ptr noundef %0) #10
  br label %27

8:                                                ; preds = %3
  %9 = shl i32 %4, 2
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %4) #9
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 28) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %10) #9
  br label %27

18:                                               ; preds = %12
  store i32 %4, ptr %15, align 8
  %19 = getelementptr inbounds %struct.component_clk, ptr %15, i32 0, i32 1
  store ptr %10, ptr %19, align 4
  %20 = getelementptr inbounds %struct.component_clk, ptr %15, i32 0, i32 4
  store ptr %1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.component_clk, ptr %15, i32 0, i32 2
  store ptr %0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.component_clk, ptr %15, i32 0, i32 3
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.component_clk, ptr %15, i32 0, i32 5
  %24 = load ptr, ptr @component_clks, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store ptr %24, ptr %23, align 4
  %26 = getelementptr inbounds %struct.component_clk, ptr %15, i32 0, i32 5, i32 1
  store ptr @component_clks, ptr %26, align 8
  store volatile ptr %23, ptr @component_clks, align 4
  br label %27

27:                                               ; preds = %18, %17, %8, %6
  %28 = phi i32 [ 0, %18 ], [ -12, %17 ], [ -22, %6 ], [ -12, %8 ]
  ret i32 %28
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @_register_composite(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  br label %3

3:                                                ; preds = %33, %2
  %4 = phi i32 [ 0, %2 ], [ %34, %33 ]
  %5 = getelementptr %struct.clk_hw_omap_comp, ptr %0, i32 0, i32 1, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %10, %12 ], [ @component_clks, %3 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @component_clks
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %10, i32 -20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %8
  %20 = tail call i32 @ti_clk_retry_init(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @_register_composite) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %110, label %90

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %10, i32 -8
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.clk_hw_omap_comp, ptr %0, i32 0, i32 2, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr [3 x ptr], ptr @component_clk_types, i32 0, i32 %24
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__._register_composite, ptr noundef %1, ptr noundef %30) #10
  br label %90

32:                                               ; preds = %22
  store ptr %17, ptr %25, align 4
  store ptr null, ptr %5, align 4
  br label %33

33:                                               ; preds = %32, %3
  %34 = add nuw nsw i32 %4, 1
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %3

36:                                               ; preds = %44, %33
  %37 = phi i32 [ %45, %44 ], [ 2, %33 ]
  %38 = getelementptr %struct.clk_hw_omap_comp, ptr %0, i32 0, i32 2, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %39, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %36
  %45 = add nsw i32 %37, -1
  %46 = icmp eq i32 %37, 0
  br i1 %46, label %47, label %36

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._register_composite, ptr noundef nonnull @__func__._register_composite, ptr noundef %1) #10
  br label %90

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.component_clk, ptr %39, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %1, align 4
  %53 = icmp eq ptr %0, null
  br i1 %53, label %77, label %54

54:                                               ; preds = %49
  %55 = getelementptr %struct.clk_hw_omap_comp, ptr %0, i32 0, i32 2, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.component_clk, ptr %56, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi ptr [ null, %54 ], [ %60, %58 ]
  %63 = getelementptr %struct.clk_hw_omap_comp, ptr %0, i32 0, i32 2, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.component_clk, ptr %64, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi ptr [ null, %61 ], [ %68, %66 ]
  %71 = getelementptr %struct.clk_hw_omap_comp, ptr %0, i32 0, i32 2, i32 0
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.component_clk, ptr %72, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %69, %49
  %78 = phi ptr [ %70, %74 ], [ %70, %69 ], [ null, %49 ]
  %79 = phi ptr [ %62, %74 ], [ %62, %69 ], [ null, %49 ]
  %80 = phi ptr [ %76, %74 ], [ null, %69 ], [ null, %49 ]
  %81 = tail call ptr @clk_register_composite(ptr noundef null, ptr noundef %52, ptr noundef %51, i32 noundef %42, ptr noundef %79, ptr noundef nonnull @ti_clk_mux_ops, ptr noundef %78, ptr noundef nonnull @ti_composite_divider_ops, ptr noundef %80, ptr noundef nonnull @ti_composite_gate_ops, i32 noundef 0) #9
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %90, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr %1, align 4
  %85 = tail call i32 @ti_clk_add_alias(ptr noundef null, ptr noundef %81, ptr noundef %84) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @clk_unregister(ptr noundef %81) #9
  br label %90

88:                                               ; preds = %83
  %89 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %81) #9
  br label %90

90:                                               ; preds = %88, %87, %77, %47, %28, %19
  br label %91

91:                                               ; preds = %106, %90
  %92 = phi i32 [ %107, %106 ], [ 0, %90 ]
  %93 = getelementptr %struct.clk_hw_omap_comp, ptr %0, i32 0, i32 2, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.component_clk, ptr %94, i32 0, i32 5
  %98 = getelementptr inbounds %struct.component_clk, ptr %94, i32 0, i32 5, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %97, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %99, ptr %101, align 4
  store volatile ptr %100, ptr %99, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %97, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %98, align 4
  %102 = load ptr, ptr %93, align 4
  %103 = getelementptr inbounds %struct.component_clk, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  tail call void @kfree(ptr noundef %104) #9
  %105 = load ptr, ptr %93, align 4
  tail call void @kfree(ptr noundef %105) #9
  br label %106

106:                                              ; preds = %96, %91
  %107 = add nuw nsw i32 %92, 1
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %91

109:                                              ; preds = %106
  tail call void @kfree(ptr noundef %0) #9
  br label %110

110:                                              ; preds = %109, %19
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_retry_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_add_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_composite_recalc_rate(ptr noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @ti_clk_divider_ops, i32 0, i32 10), align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef %1) #9
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ti_composite_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #6 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ti_composite_set_rate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #6 {
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_dflt_clk_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_is_enabled(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(0) }

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
