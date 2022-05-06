; ModuleID = '/llk/IR/drivers/clk/ti/fapll.c_pt.bc'
source_filename = "../drivers/clk/ti/fapll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fapll_data = type { %struct.clk_hw, ptr, ptr, ptr, ptr, %struct.clk_onecell_data, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.fapll_synth = type { %struct.clk_hw, ptr, i32, ptr, ptr, ptr, ptr }

@__of_table_ti_fapll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-fapll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_fapll_setup }, section "__clk_of_table", align 4
@ti_fapll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ti_fapll_enable, ptr @ti_fapll_disable, ptr @ti_fapll_is_enabled, ptr null, ptr null, ptr null, ptr @ti_fapll_recalc_rate, ptr @ti_fapll_round_rate, ptr null, ptr null, ptr @ti_fapll_get_parent, ptr @ti_fapll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [31 x i8] c"\013%pOFn must have two parents\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\013%pOFn could not get clk_ref\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\013%pOFn could not get clk_bypass\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\013%pOFn could not get IO base\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"clock-indices\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"\013%s failed to lock\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\014FAPLL main divider rates unsupported\0A\00", align 1
@ti_fapll_synt_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ti_fapll_synth_enable, ptr @ti_fapll_synth_disable, ptr @ti_fapll_synth_is_enabled, ptr null, ptr null, ptr null, ptr @ti_fapll_synth_recalc_rate, ptr @ti_fapll_synth_round_rate, ptr null, ptr null, ptr null, ptr @ti_fapll_synth_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"\013failed to register clock\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_ti_fapll_clock], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ti_fapll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 40) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %124, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 29) #8
  %11 = getelementptr inbounds %struct.fapll_data, ptr %6, i32 0, i32 5
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %111, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 28) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %111, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 1
  store ptr @ti_fapll_ops, ptr %18, align 4
  %19 = load ptr, ptr %0, align 4
  store ptr %19, ptr %15, align 8
  %20 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #7
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 5
  store i8 %21, ptr %22, align 4
  %23 = and i32 %20, 255
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #9
  br label %111

27:                                               ; preds = %17
  %28 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2) #7
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 2
  store ptr %2, ptr %29, align 8
  %30 = call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #7
  %31 = getelementptr inbounds %struct.fapll_data, ptr %6, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #9
  br label %111

35:                                               ; preds = %27
  %36 = call ptr @of_clk_get(ptr noundef %0, i32 noundef 1) #7
  %37 = getelementptr inbounds %struct.fapll_data, ptr %6, i32 0, i32 4
  store ptr %36, ptr %37, align 8
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #9
  br label %111

41:                                               ; preds = %35
  %42 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  %43 = getelementptr inbounds %struct.fapll_data, ptr %6, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #9
  br label %111

47:                                               ; preds = %41
  %48 = ptrtoint ptr %42 to i32
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 1088
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fapll_data, ptr %6, i32 0, i32 6
  store i8 1, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.fapll_data, ptr %6, i32 0, i32 2
  store ptr %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 2
  store ptr %15, ptr %56, align 8
  %57 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %6) #7
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %109, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %11, align 4
  store ptr %57, ptr %60, align 4
  %61 = getelementptr inbounds %struct.fapll_data, ptr %6, i32 0, i32 5, i32 1
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %104, %59
  %65 = phi i32 [ 0, %59 ], [ %105, %104 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %66 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %65) #7
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %65, ptr noundef nonnull %4) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, ptr %4, align 4
  br label %74

73:                                               ; preds = %68
  store i32 %65, ptr %4, align 4
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ %65, %73 ]
  %76 = load ptr, ptr %43, align 4
  %77 = shl i32 %75, 3
  %78 = getelementptr i8, ptr %76, i32 %77
  %79 = ptrtoint ptr %78 to i32
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 1192
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = getelementptr i8, ptr %78, i32 4
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !9
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, ptr null, ptr %78
  %87 = load i32, ptr %4, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = phi i32 [ %75, %74 ], [ %87, %82 ]
  %90 = phi ptr [ null, %74 ], [ %86, %82 ]
  %91 = phi ptr [ null, %74 ], [ %83, %82 ]
  %92 = load ptr, ptr %3, align 4
  %93 = load ptr, ptr %0, align 4
  %94 = call fastcc ptr @ti_fapll_synth_setup(ptr noundef nonnull %6, ptr noundef %90, ptr noundef %91, i32 noundef %89, ptr noundef %92, ptr noundef %93, ptr noundef %57) #10
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %104, label %96

96:                                               ; preds = %88
  %97 = load ptr, ptr %11, align 4
  %98 = load i32, ptr %4, align 4
  %99 = getelementptr ptr, ptr %97, i32 %98
  store ptr %94, ptr %99, align 4
  %100 = load i32, ptr %61, align 8
  %101 = add i32 %100, 1
  store i32 %101, ptr %61, align 8
  %102 = load ptr, ptr %3, align 4
  %103 = call i32 @clk_register_clkdev(ptr noundef %94, ptr noundef %102, ptr noundef null) #7
  br label %104

104:                                              ; preds = %96, %88, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %105 = add nuw nsw i32 %65, 1
  %106 = icmp eq i32 %105, 7
  br i1 %106, label %107, label %64

107:                                              ; preds = %104
  %108 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %11) #7
  call void @kfree(ptr noundef nonnull %15) #7
  br label %124

109:                                              ; preds = %53
  %110 = load ptr, ptr %43, align 4
  call void @iounmap(ptr noundef %110) #7
  br label %111

111:                                              ; preds = %109, %45, %39, %33, %25, %13, %8
  %112 = phi ptr [ %15, %25 ], [ %15, %33 ], [ %15, %39 ], [ %15, %109 ], [ %15, %45 ], [ null, %13 ], [ null, %8 ]
  %113 = getelementptr inbounds %struct.fapll_data, ptr %6, i32 0, i32 4
  %114 = load ptr, ptr %113, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  call void @clk_put(ptr noundef nonnull %114) #7
  br label %117

117:                                              ; preds = %116, %111
  %118 = getelementptr inbounds %struct.fapll_data, ptr %6, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  call void @clk_put(ptr noundef nonnull %119) #7
  br label %122

122:                                              ; preds = %121, %117
  %123 = load ptr, ptr %11, align 4
  call void @kfree(ptr noundef %123) #7
  call void @kfree(ptr noundef nonnull %6) #7
  call void @kfree(ptr noundef %112) #7
  br label %124

124:                                              ; preds = %122, %107, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
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
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @ti_fapll_synth_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 section ".init.text" {
  %8 = alloca ptr, align 4
  store ptr %5, ptr %8, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr @ti_fapll_synt_ops, ptr %13, align 4
  store ptr %4, ptr %10, align 8
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %8, ptr %14, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 1, ptr %15, align 4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 36) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.fapll_synth, ptr %17, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fapll_synth, ptr %17, i32 0, i32 2
  store i32 %3, ptr %21, align 8
  %22 = getelementptr inbounds %struct.fapll_synth, ptr %17, i32 0, i32 3
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fapll_synth, ptr %17, i32 0, i32 4
  store ptr %2, ptr %23, align 8
  %24 = getelementptr inbounds %struct.fapll_synth, ptr %17, i32 0, i32 5
  store ptr %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_hw, ptr %17, i32 0, i32 2
  store ptr %10, ptr %25, align 8
  %26 = getelementptr inbounds %struct.fapll_synth, ptr %17, i32 0, i32 6
  store ptr %6, ptr %26, align 8
  %27 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %17) #7
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %31

31:                                               ; preds = %29, %12
  %32 = phi ptr [ %27, %29 ], [ inttoptr (i32 -12 to ptr), %12 ]
  call void @kfree(ptr noundef %17) #7
  call void @kfree(ptr noundef nonnull %10) #7
  br label %33

33:                                               ; preds = %31, %19, %7
  %34 = phi ptr [ %32, %31 ], [ %27, %19 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = or i32 %4, 8
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !10
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %17, %1
  %11 = phi i32 [ %21, %17 ], [ %8, %1 ]
  %12 = phi i32 [ %18, %17 ], [ 1000, %1 ]
  %13 = and i32 %11, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = add nsw i32 %12, -1
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #7
  %20 = load ptr, ptr %2, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %10

23:                                               ; preds = %17, %15, %1
  %24 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %25) #9
  br label %27

27:                                               ; preds = %23, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_fapll_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = and i32 %4, -9
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_is_enabled(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = and i32 %4, 8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !9
  %6 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 4, !range !11
  %8 = icmp eq i8 %7, 0
  %9 = and i32 %5, 4
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %9, 0
  %12 = select i1 %8, i1 %11, i1 %10
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = udiv i32 %1, %17
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %1, %13 ], [ %20, %19 ]
  %23 = icmp ult i32 %15, 65536
  %24 = lshr i32 %15, 16
  %25 = select i1 %23, i32 1, i32 %24
  %26 = mul i32 %22, %25
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i32 [ %26, %21 ], [ %1, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %15

10:                                               ; preds = %5
  %11 = udiv i32 %1, %6
  %12 = icmp ugt i32 %11, 65535
  %13 = mul i32 %6, %11
  %14 = select i1 %12, i32 -22, i32 %13
  br label %15

15:                                               ; preds = %10, %8, %3
  %16 = phi i32 [ -22, %3 ], [ -22, %8 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @ti_fapll_get_parent(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 4, !range !11
  %7 = icmp eq i8 %6, 0
  %8 = and i32 %4, 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %8, 0
  %11 = select i1 %7, i1 %10, i1 %9
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %64, label %5

5:                                                ; preds = %3
  %6 = icmp ult i32 %1, %2
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %64

9:                                                ; preds = %5
  %10 = udiv i32 %1, %2
  %11 = icmp ugt i32 %10, 65535
  br i1 %11, label %64, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %16 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 6
  %17 = load i8, ptr %16, align 4, !range !11
  %18 = icmp eq i8 %17, 0
  %19 = and i32 %15, -5
  %20 = select i1 %18, i32 4, i32 0
  %21 = or i32 %20, %19
  %22 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #7, !srcloc !10
  %23 = load ptr, ptr %13, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !9
  %25 = and i32 %24, 63230
  %26 = shl nuw i32 %10, 16
  %27 = or i32 %25, %26
  %28 = or i32 %27, 256
  %29 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #7, !srcloc !10
  %30 = load ptr, ptr %13, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !9
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %12
  %35 = load ptr, ptr %13, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %45, %34
  %39 = phi i32 [ %49, %45 ], [ %36, %34 ]
  %40 = phi i32 [ %46, %45 ], [ 1000, %34 ]
  %41 = and i32 %39, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = icmp eq i32 %40, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %43
  %46 = add nsw i32 %40, -1
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #7
  %48 = load ptr, ptr %13, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %38

51:                                               ; preds = %45, %43, %34
  %52 = getelementptr inbounds %struct.fapll_data, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %53) #9
  br label %55

55:                                               ; preds = %51, %38, %12
  %56 = load ptr, ptr %13, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !9
  %58 = load i8, ptr %16, align 4, !range !11
  %59 = icmp eq i8 %58, 0
  %60 = and i32 %57, -5
  %61 = select i1 %59, i32 0, i32 4
  %62 = or i32 %61, %60
  %63 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %62) #7, !srcloc !10
  br label %64

64:                                               ; preds = %55, %9, %7, %3
  %65 = phi i32 [ 0, %55 ], [ -22, %3 ], [ -22, %7 ], [ -22, %9 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fapll_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.fapll_data, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_fapll_synth_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fapll_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = or i32 %10, %7
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.fapll_data, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_is_enabled(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fapll_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %7, -1
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fapll_data, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %12 = getelementptr inbounds %struct.fapll_data, ptr %8, i32 0, i32 6
  %13 = load i8, ptr %12, align 4, !range !11
  %14 = icmp eq i8 %13, 0
  %15 = and i32 %11, 4
  %16 = icmp eq i32 %15, 0
  %17 = icmp ne i32 %15, 0
  %18 = select i1 %14, i1 %17, i1 %16
  br i1 %18, label %59, label %19

19:                                               ; preds = %6
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #7, !srcloc !9
  %26 = lshr i32 %25, 24
  %27 = and i32 %26, 15
  %28 = and i32 %25, 16777215
  %29 = mul nuw nsw i32 %27, 10000000
  %30 = add nuw nsw i32 %29, %28
  %31 = mul nuw nsw i64 %20, 10000000
  %32 = icmp ult i64 %31, 4294967296
  br i1 %32, label %33, label %37, !prof !12

33:                                               ; preds = %24
  %34 = trunc i64 %31 to i32
  %35 = udiv i32 %34, %30
  %36 = zext i32 %35 to i64
  br label %40

37:                                               ; preds = %24
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %31) #11, !srcloc !13
  %39 = extractvalue { i64, i64 } %38, 1
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i64 [ %36, %33 ], [ %39, %37 ]
  %42 = shl i64 %41, 3
  br label %43

43:                                               ; preds = %40, %19
  %44 = phi i64 [ %20, %19 ], [ %42, %40 ]
  %45 = load ptr, ptr %3, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !9
  %47 = and i32 %46, 255
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, -1
  %50 = add i64 %49, %44
  %51 = icmp ult i64 %50, 4294967296
  br i1 %51, label %52, label %55, !prof !12

52:                                               ; preds = %43
  %53 = trunc i64 %50 to i32
  %54 = udiv i32 %53, %47
  br label %59

55:                                               ; preds = %43
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %47, i64 %50) #11, !srcloc !13
  %57 = extractvalue { i64, i64 } %56, 1
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %55, %52, %6, %2
  %60 = phi i32 [ 32768, %2 ], [ %1, %6 ], [ %54, %52 ], [ %58, %55 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fapll_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  %9 = getelementptr inbounds %struct.fapll_data, ptr %5, i32 0, i32 6
  %10 = load i8, ptr %9, align 4, !range !11
  %11 = icmp eq i8 %10, 0
  %12 = and i32 %8, 4
  %13 = icmp eq i32 %12, 0
  %14 = icmp ne i32 %12, 0
  %15 = select i1 %11, i1 %14, i1 %13
  br i1 %15, label %46, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ne ptr %18, null
  %20 = icmp ne i32 %1, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = load i32, ptr %2, align 4
  br i1 %25, label %27, label %34

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @ti_fapll_synth_get_frac_rate(ptr noundef %0, i32 noundef %26)
  %29 = add i32 %28, -1
  %30 = add i32 %29, %1
  %31 = udiv i32 %30, %1
  %32 = add i32 %29, %31
  %33 = udiv i32 %32, %31
  br label %46

34:                                               ; preds = %22
  %35 = shl i32 %26, 3
  %36 = icmp ult i32 %35, %1
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = zext i32 %35 to i64
  %39 = add nuw nsw i64 %38, 3824
  %40 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -8569899142217483195, i64 %39) #11, !srcloc !14
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8569899142217483195, i64 %39, i64 %40, i32 0) #11, !srcloc !15
  %42 = extractvalue { i64, i32 } %41, 0
  %43 = lshr i64 %42, 11
  %44 = trunc i64 %43 to i32
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 %1)
  br label %46

46:                                               ; preds = %37, %34, %27, %16, %3
  %47 = phi i32 [ -22, %16 ], [ -22, %3 ], [ %35, %34 ], [ %33, %27 ], [ %45, %37 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_fapll_synth_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fapll_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  %9 = getelementptr inbounds %struct.fapll_data, ptr %5, i32 0, i32 6
  %10 = load i8, ptr %9, align 4, !range !11
  %11 = icmp eq i8 %10, 0
  %12 = and i32 %8, 4
  %13 = icmp eq i32 %12, 0
  %14 = icmp ne i32 %12, 0
  %15 = select i1 %11, i1 %14, i1 %13
  br i1 %15, label %125, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ne ptr %18, null
  %20 = icmp ne i32 %1, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %125

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @ti_fapll_synth_get_frac_rate(ptr noundef %0, i32 noundef %2)
  %24 = icmp ult i32 %23, %1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %125, label %46

29:                                               ; preds = %22
  %30 = add i32 %23, -1
  %31 = add i32 %30, %1
  %32 = udiv i32 %31, %1
  %33 = icmp uge i32 %31, %1
  %34 = icmp ult i32 %32, 256
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = add i32 %30, %32
  %38 = udiv i32 %37, %32
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i32 [ %38, %36 ], [ 0, %29 ]
  %41 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp ne ptr %42, null
  %44 = icmp ne i32 %40, 0
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %125

46:                                               ; preds = %39, %25
  %47 = phi ptr [ %27, %25 ], [ %42, %39 ]
  %48 = phi i32 [ 0, %25 ], [ %40, %39 ]
  %49 = phi i32 [ 0, %25 ], [ %32, %39 ]
  %50 = icmp eq i32 %48, %1
  br i1 %50, label %117, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 3
  %53 = icmp eq ptr %47, null
  br i1 %53, label %117, label %54

54:                                               ; preds = %51
  %55 = zext i32 %2 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = zext i32 %1 to i64
  %58 = add nsw i64 %57, -1
  %59 = add nuw nsw i64 %56, %58
  %60 = icmp ult i64 %59, 4294967296
  br i1 %60, label %61, label %64, !prof !12

61:                                               ; preds = %54
  %62 = trunc i64 %59 to i32
  %63 = udiv i32 %62, %1
  br label %68

64:                                               ; preds = %54
  %65 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %59) #11, !srcloc !13
  %66 = extractvalue { i64, i64 } %65, 1
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i32 [ %63, %61 ], [ %67, %64 ]
  %70 = icmp ugt i32 %69, 3839
  br i1 %70, label %117, label %71

71:                                               ; preds = %68
  %72 = trunc i32 %69 to i16
  %73 = udiv i16 %72, 15
  %74 = zext i16 %73 to i32
  %75 = icmp ult i32 %69, 15
  %76 = select i1 %75, i32 1, i32 %74
  %77 = icmp ult i32 %76, 255
  br i1 %77, label %78, label %108

78:                                               ; preds = %71
  %79 = mul nuw nsw i64 %55, 80000000
  br label %80

80:                                               ; preds = %97, %78
  %81 = phi i32 [ %76, %78 ], [ %98, %97 ]
  %82 = mul i32 %81, %1
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %83, -1
  %85 = add nsw i64 %84, %79
  %86 = icmp ult i64 %85, 4294967296
  br i1 %86, label %87, label %90, !prof !12

87:                                               ; preds = %80
  %88 = trunc i64 %85 to i32
  %89 = udiv i32 %88, %82
  br label %94

90:                                               ; preds = %80
  %91 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %82, i64 %85) #11, !srcloc !13
  %92 = extractvalue { i64, i64 } %91, 1
  %93 = trunc i64 %92 to i32
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i32 [ %89, %87 ], [ %93, %90 ]
  %96 = icmp ult i32 %95, 160000000
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = add nuw nsw i32 %81, 1
  %99 = icmp eq i32 %98, 255
  br i1 %99, label %117, label %80

100:                                              ; preds = %94
  %101 = freeze i32 %95
  %102 = udiv i32 %101, 10000000
  %103 = mul i32 %102, 10000000
  %104 = sub i32 %101, %103
  %105 = shl nuw nsw i32 %102, 24
  %106 = and i32 %105, 251658240
  %107 = or i32 %106, -2147483648
  br label %108

108:                                              ; preds = %100, %71
  %109 = phi i32 [ -2147483648, %71 ], [ %107, %100 ]
  %110 = phi i32 [ 0, %71 ], [ %104, %100 ]
  %111 = phi i32 [ 255, %71 ], [ %81, %100 ]
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %47) #7, !srcloc !9
  %113 = and i32 %112, 1610612736
  %114 = or i32 %109, %110
  %115 = or i32 %114, %113
  %116 = load ptr, ptr %52, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %115) #7, !srcloc !10
  br label %117

117:                                              ; preds = %108, %97, %68, %51, %46
  %118 = phi i32 [ %49, %51 ], [ %49, %46 ], [ %111, %108 ], [ -22, %68 ], [ -22, %97 ]
  %119 = load ptr, ptr %17, align 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #7, !srcloc !9
  %121 = and i32 %120, -512
  %122 = or i32 %118, %121
  %123 = or i32 %122, 256
  %124 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %123) #7, !srcloc !10
  br label %125

125:                                              ; preds = %117, %39, %25, %16, %3
  %126 = phi i32 [ 0, %117 ], [ -22, %16 ], [ -22, %3 ], [ -22, %25 ], [ -22, %39 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ti_fapll_synth_get_frac_rate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fapll_data, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %12 = getelementptr inbounds %struct.fapll_data, ptr %8, i32 0, i32 6
  %13 = load i8, ptr %12, align 4, !range !11
  %14 = icmp eq i8 %13, 0
  %15 = and i32 %11, 4
  %16 = icmp eq i32 %15, 0
  %17 = icmp ne i32 %15, 0
  %18 = select i1 %14, i1 %17, i1 %16
  br i1 %18, label %59, label %19

19:                                               ; preds = %6
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds %struct.fapll_synth, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #7, !srcloc !9
  %26 = lshr i32 %25, 24
  %27 = and i32 %26, 15
  %28 = and i32 %25, 16777215
  %29 = mul nuw nsw i32 %27, 10000000
  %30 = add nuw nsw i32 %29, %28
  %31 = mul nuw nsw i64 %20, 10000000
  %32 = icmp ult i64 %31, 4294967296
  br i1 %32, label %33, label %37, !prof !12

33:                                               ; preds = %24
  %34 = trunc i64 %31 to i32
  %35 = udiv i32 %34, %30
  %36 = zext i32 %35 to i64
  br label %40

37:                                               ; preds = %24
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %31) #11, !srcloc !13
  %39 = extractvalue { i64, i64 } %38, 1
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i64 [ %36, %33 ], [ %39, %37 ]
  %42 = shl i64 %41, 3
  br label %43

43:                                               ; preds = %40, %19
  %44 = phi i64 [ %20, %19 ], [ %42, %40 ]
  %45 = load ptr, ptr %3, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !9
  %47 = and i32 %46, 255
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, -1
  %50 = add i64 %49, %44
  %51 = icmp ult i64 %50, 4294967296
  br i1 %51, label %52, label %55, !prof !12

52:                                               ; preds = %43
  %53 = trunc i64 %50 to i32
  %54 = udiv i32 %53, %47
  br label %59

55:                                               ; preds = %43
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %47, i64 %50) #11, !srcloc !13
  %57 = extractvalue { i64, i64 } %56, 1
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %55, %52, %6, %2
  %60 = phi i32 [ 32768, %2 ], [ %1, %6 ], [ %54, %52 ], [ %58, %55 ]
  %61 = load ptr, ptr %3, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #7, !srcloc !9
  %63 = and i32 %62, 255
  %64 = mul i32 %63, %60
  ret i32 %64
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
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
!9 = !{i64 3409722}
!10 = !{i64 3409304}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148369718, i64 2148369998, i64 2148370332, i64 2148370666}
!14 = !{i64 883887, i64 883914}
!15 = !{i64 884582, i64 884609, i64 884642, i64 884663, i64 884690, i64 884716}
