; ModuleID = '/llk/IR/drivers/clk/socfpga/clk-gate-a10.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-gate-a10.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.socfpga_gate_clk = type { %struct.clk_gate, ptr, i32, ptr, ptr, ptr, i32, i32, i32, [2 x i32] }

@gateclk_ops = internal global %struct.clk_ops { ptr @socfpga_clk_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_gate_clk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [35 x i8] c"drivers/clk/socfpga/clk-gate-a10.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"clk-gate\00", align 1
@clk_mgr_a10_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@clk_gate_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"fixed-divider\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"div-reg\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"clk-phase\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"altr,sys-mgr\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"\013%s: failed to find altr,sys-mgr regmap!\0A\00", align 1
@__func__.__socfpga_gate_init = private unnamed_addr constant [20 x i8] c"__socfpga_gate_init\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [72 x i8] c"\013%s: cannot set clk_phase because sys_mgr_base_addr is not available!\0A\00", align 1
@__func__.socfpga_clk_prepare = private unnamed_addr constant [20 x i8] c"socfpga_clk_prepare\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @socfpga_a10_gate_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @__socfpga_gate_init(ptr noundef %0) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @__socfpga_gate_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca [2 x i32], align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [5 x ptr], align 4
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %9 = load ptr, ptr %0, align 4
  store ptr %9, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false), !annotation !8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 64) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #8
  br label %82

14:                                               ; preds = %1
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #8
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, ptr %2, align 8
  br label %31

18:                                               ; preds = %14
  %19 = load i32, ptr %2, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @clk_mgr_a10_base_addr, align 4
  %23 = getelementptr i8, ptr %22, i32 %19
  %24 = getelementptr inbounds %struct.clk_gate, ptr %11, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.clk_gate, ptr %11, i32 0, i32 2
  store i8 %27, ptr %28, align 8
  %29 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  store ptr %29, ptr getelementptr inbounds (%struct.clk_ops, ptr @gateclk_ops, i32 0, i32 4), align 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  store ptr %30, ptr getelementptr inbounds (%struct.clk_ops, ptr @gateclk_ops, i32 0, i32 5), align 4
  br label %31

31:                                               ; preds = %21, %18, %17
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %33 = load i32, ptr %5, align 4
  %34 = icmp slt i32 %32, 0
  %35 = select i1 %34, i32 0, i32 %33
  %36 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 3, i32 noundef 0) #8
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load ptr, ptr @clk_mgr_a10_base_addr, align 4
  %41 = load i32, ptr %3, align 4
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 7
  store i32 %44, ptr %45, align 8
  %46 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %39, %31
  %50 = phi ptr [ %42, %39 ], [ null, %31 ]
  %51 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 3
  store ptr %50, ptr %51, align 8
  %52 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 0) #8
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, ptr %4, align 8
  %56 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 9
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.socfpga_gate_clk, ptr %11, i32 0, i32 9, i32 1
  store i32 %58, ptr %59, align 4
  %60 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.5) #8
  %61 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 5
  store ptr %60, ptr %61, align 8
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.__socfpga_gate_init) #10
  call void @kfree(ptr noundef nonnull %11) #8
  br label %82

65:                                               ; preds = %54, %49
  %66 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #8
  %67 = load ptr, ptr %6, align 4
  store ptr %67, ptr %8, align 4
  %68 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @gateclk_ops, ptr %68, align 4
  %69 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 0, ptr %69, align 4
  %70 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 5) #8
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %7, ptr %73, align 4
  %74 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %74, align 8
  %75 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %11) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  call void @kfree(ptr noundef nonnull %11) #8
  br label %82

78:                                               ; preds = %65
  %79 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %11) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81, !prof !10

81:                                               ; preds = %78
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #8
  br label %82

82:                                               ; preds = %81, %78, %77, %63, %13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_clk_prepare(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr %struct.socfpga_gate_clk, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %15 [
    i32 0, label %4
    i32 315, label %14
    i32 45, label %8
    i32 90, label %9
    i32 135, label %10
    i32 180, label %11
    i32 225, label %12
    i32 270, label %13
  ]

4:                                                ; preds = %1
  %5 = getelementptr %struct.socfpga_gate_clk, ptr %0, i32 0, i32 9, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %15

8:                                                ; preds = %1
  br label %15

9:                                                ; preds = %1
  br label %15

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  br label %15

12:                                               ; preds = %1
  br label %15

13:                                               ; preds = %1
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %4, %1
  %16 = phi i32 [ 112, %14 ], [ 96, %13 ], [ 80, %12 ], [ 64, %11 ], [ 48, %10 ], [ 32, %9 ], [ 16, %8 ], [ 0, %4 ], [ 0, %1 ]
  %17 = getelementptr %struct.socfpga_gate_clk, ptr %0, i32 0, i32 9, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %26 [
    i32 0, label %25
    i32 45, label %24
    i32 90, label %23
    i32 135, label %22
    i32 180, label %21
    i32 225, label %20
    i32 270, label %19
    i32 315, label %27
  ]

19:                                               ; preds = %15
  br label %27

20:                                               ; preds = %15
  br label %27

21:                                               ; preds = %15
  br label %27

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  br label %27

24:                                               ; preds = %15
  br label %27

25:                                               ; preds = %15
  br label %27

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %15
  %28 = phi i32 [ 0, %26 ], [ 6, %19 ], [ 5, %20 ], [ 4, %21 ], [ 3, %22 ], [ 2, %23 ], [ 1, %24 ], [ 0, %25 ], [ 7, %15 ]
  %29 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = or i32 %16, %28
  %34 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 40, i32 noundef %33) #8
  br label %37

35:                                               ; preds = %27
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.socfpga_clk_prepare) #10
  br label %37

37:                                               ; preds = %35, %32, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_gate_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %12 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %11, %13
  %15 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 32, %16
  %18 = lshr i32 -1, %17
  %19 = and i32 %18, %14
  %20 = shl nuw i32 1, %19
  br label %21

21:                                               ; preds = %10, %6, %2
  %22 = phi i32 [ %20, %10 ], [ 1, %6 ], [ %4, %2 ]
  %23 = udiv i32 %1, %22
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2990710}
!12 = !{i64 2151147189}
