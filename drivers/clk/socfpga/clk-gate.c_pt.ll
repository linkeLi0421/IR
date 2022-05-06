; ModuleID = '/llk/IR/drivers/clk/socfpga/clk-gate.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.socfpga_gate_clk = type { %struct.clk_gate, ptr, i32, ptr, ptr, ptr, i32, i32, i32, [2 x i32] }

@.str = private unnamed_addr constant [31 x i8] c"drivers/clk/socfpga/clk-gate.c\00", align 1
@gateclk_ops = internal global %struct.clk_ops { ptr @socfpga_clk_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_clk_recalc_rate, ptr null, ptr null, ptr @socfpga_clk_set_parent, ptr @socfpga_clk_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"clk-gate\00", align 1
@clk_mgr_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@clk_gate_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"fixed-divider\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"div-reg\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"clk-phase\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"altr,sys-mgr\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\013%s: failed to find altr,sys-mgr regmap!\0A\00", align 1
@__func__.socfpga_clk_prepare = private unnamed_addr constant [20 x i8] c"socfpga_clk_prepare\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"l4_mp_clk\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"l4_sp_clk\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"sdmmc_clk\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"nand_clk\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"nand_x_clk\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @socfpga_gate_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef null) #8
  br label %89

14:                                               ; preds = %1
  %15 = tail call ptr @kmemdup(ptr noundef nonnull @gateclk_ops, i32 noundef 100, i32 noundef 3264) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef null) #8
  br label %89

18:                                               ; preds = %14
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #8
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, ptr %2, align 8
  br label %37

22:                                               ; preds = %18
  %23 = load i32, ptr %2, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @clk_mgr_base_addr, align 4
  %27 = getelementptr i8, ptr %26, i32 %23
  %28 = getelementptr inbounds %struct.clk_gate, ptr %11, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.clk_gate, ptr %11, i32 0, i32 2
  store i8 %31, ptr %32, align 8
  %33 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %34 = getelementptr inbounds %struct.clk_ops, ptr %15, i32 0, i32 4
  store ptr %33, ptr %34, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  %36 = getelementptr inbounds %struct.clk_ops, ptr %15, i32 0, i32 5
  store ptr %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %25, %22, %21
  %38 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %39 = load i32, ptr %5, align 4
  %40 = icmp slt i32 %38, 0
  %41 = select i1 %40, i32 0, i32 %39
  %42 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 3, i32 noundef 0) #8
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load ptr, ptr @clk_mgr_base_addr, align 4
  %47 = load i32, ptr %3, align 4
  %48 = getelementptr i8, ptr %46, i32 %47
  %49 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 7
  store i32 %50, ptr %51, align 8
  %52 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 6
  store i32 %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %45, %37
  %56 = phi ptr [ %48, %45 ], [ null, %37 ]
  %57 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 3
  store ptr %56, ptr %57, align 8
  %58 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 0) #8
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, ptr %4, align 8
  %62 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %11, i32 0, i32 9
  store i32 %61, ptr %62, align 8
  %63 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr %struct.socfpga_gate_clk, ptr %11, i32 0, i32 9, i32 1
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %60, %55
  %67 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #8
  %68 = load ptr, ptr %6, align 4
  store ptr %68, ptr %8, align 4
  %69 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr %15, ptr %69, align 4
  %70 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 0, ptr %70, align 4
  %71 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 5) #8
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %72, ptr %73, align 4
  %74 = and i32 %71, 254
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.clk_ops, ptr %15, i32 0, i32 14
  store ptr null, ptr %77, align 4
  %78 = getelementptr inbounds %struct.clk_ops, ptr %15, i32 0, i32 13
  store ptr null, ptr %78, align 4
  br label %79

79:                                               ; preds = %76, %66
  %80 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %7, ptr %80, align 4
  %81 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %81, align 8
  %82 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %11) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  call void @kfree(ptr noundef nonnull %11) #8
  br label %89

85:                                               ; preds = %79
  %86 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %11) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88, !prof !10

88:                                               ; preds = %85
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8
  br label %89

89:                                               ; preds = %88, %85, %84, %17, %13
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
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_clk_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr %struct.socfpga_gate_clk, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr %struct.socfpga_gate_clk, ptr %0, i32 0, i32 9, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %5, %1
  %10 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.6) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %2, align 4
  switch i32 %13, label %23 [
    i32 315, label %22
    i32 45, label %16
    i32 90, label %17
    i32 135, label %18
    i32 180, label %19
    i32 225, label %20
    i32 270, label %21
  ]

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.socfpga_clk_prepare) #10
  br label %39

16:                                               ; preds = %12
  br label %23

17:                                               ; preds = %12
  br label %23

18:                                               ; preds = %12
  br label %23

19:                                               ; preds = %12
  br label %23

20:                                               ; preds = %12
  br label %23

21:                                               ; preds = %12
  br label %23

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %12
  %24 = phi i32 [ 56, %22 ], [ 48, %21 ], [ 40, %20 ], [ 32, %19 ], [ 24, %18 ], [ 16, %17 ], [ 8, %16 ], [ 0, %12 ]
  %25 = getelementptr %struct.socfpga_gate_clk, ptr %0, i32 0, i32 9, i32 1
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %34 [
    i32 0, label %33
    i32 45, label %32
    i32 90, label %31
    i32 135, label %30
    i32 180, label %29
    i32 225, label %28
    i32 270, label %27
    i32 315, label %35
  ]

27:                                               ; preds = %23
  br label %35

28:                                               ; preds = %23
  br label %35

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %23
  br label %35

32:                                               ; preds = %23
  br label %35

33:                                               ; preds = %23
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %33, %32, %31, %30, %29, %28, %27, %23
  %36 = phi i32 [ 0, %34 ], [ 6, %27 ], [ 5, %28 ], [ 4, %29 ], [ 3, %30 ], [ 2, %31 ], [ 1, %32 ], [ 0, %33 ], [ 7, %23 ]
  %37 = or i32 %24, %36
  %38 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 264, i32 noundef %37) #8
  br label %39

39:                                               ; preds = %35, %14, %5
  %40 = phi i32 [ -22, %14 ], [ 0, %35 ], [ 0, %5 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

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
  %20 = load ptr, ptr %7, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = and i32 %21, 168
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  %25 = add i32 %19, 1
  br label %28

26:                                               ; preds = %10
  %27 = shl nuw i32 1, %19
  br label %28

28:                                               ; preds = %26, %24, %6, %2
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ], [ 1, %6 ], [ %4, %2 ]
  %30 = udiv i32 %1, %29
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_clk_set_parent(ptr noundef %0, i8 noundef zeroext %1) #5 {
  %3 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %4 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str.8)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load ptr, ptr @clk_mgr_base_addr, align 4
  %8 = getelementptr i8, ptr %7, i32 112
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %10 = and i32 %9, -2
  %11 = zext i8 %1 to i32
  %12 = or i32 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr @clk_mgr_base_addr, align 4
  %14 = getelementptr i8, ptr %13, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !15
  br label %57

15:                                               ; preds = %2
  %16 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str.9)
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @clk_mgr_base_addr, align 4
  br i1 %17, label %19, label %28

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %18, i32 112
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %22 = and i32 %21, -3
  %23 = zext i8 %1 to i32
  %24 = shl nuw nsw i32 %23, 1
  %25 = or i32 %22, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr @clk_mgr_base_addr, align 4
  %27 = getelementptr i8, ptr %26, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #8, !srcloc !15
  br label %57

28:                                               ; preds = %15
  %29 = getelementptr i8, ptr %18, i32 172
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %31 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str.10)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = and i32 %30, -4
  %35 = zext i8 %1 to i32
  %36 = or i32 %34, %35
  br label %53

37:                                               ; preds = %28
  %38 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(9) @.str.11)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(11) @.str.12)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40, %37
  %44 = and i32 %30, -13
  %45 = zext i8 %1 to i32
  %46 = shl nuw nsw i32 %45, 2
  %47 = or i32 %44, %46
  br label %53

48:                                               ; preds = %40
  %49 = and i32 %30, -49
  %50 = zext i8 %1 to i32
  %51 = shl nuw nsw i32 %50, 4
  %52 = or i32 %49, %51
  br label %53

53:                                               ; preds = %48, %43, %33
  %54 = phi i32 [ %36, %33 ], [ %47, %43 ], [ %52, %48 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %55 = load ptr, ptr @clk_mgr_base_addr, align 4
  %56 = getelementptr i8, ptr %55, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #8, !srcloc !15
  br label %57

57:                                               ; preds = %53, %19, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @socfpga_clk_get_parent(ptr noundef %0) #5 {
  %2 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %3 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(10) @.str.8)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load ptr, ptr @clk_mgr_base_addr, align 4
  %7 = getelementptr i8, ptr %6, i32 112
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  br label %43

11:                                               ; preds = %1
  %12 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(10) @.str.9)
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr @clk_mgr_base_addr, align 4
  br i1 %13, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %14, i32 112
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %18 = trunc i32 %17 to i8
  %19 = lshr i8 %18, 1
  %20 = and i8 %19, 1
  br label %43

21:                                               ; preds = %11
  %22 = getelementptr i8, ptr %14, i32 172
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %24 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(10) @.str.10)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = trunc i32 %23 to i8
  %28 = and i8 %27, 3
  br label %43

29:                                               ; preds = %21
  %30 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(9) @.str.11)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(11) @.str.12)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %29
  %36 = trunc i32 %23 to i8
  %37 = lshr i8 %36, 2
  %38 = and i8 %37, 3
  br label %43

39:                                               ; preds = %32
  %40 = trunc i32 %23 to i8
  %41 = lshr i8 %40, 4
  %42 = and i8 %41, 3
  br label %43

43:                                               ; preds = %39, %35, %26, %15, %5
  %44 = phi i8 [ %10, %5 ], [ %20, %15 ], [ %28, %26 ], [ %38, %35 ], [ %42, %39 ]
  ret i8 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!11 = !{i64 2992619}
!12 = !{i64 2151152823}
!13 = !{i64 2151149232}
!14 = !{i64 2151149433}
!15 = !{i64 2992201}
!16 = !{i64 2151149990}
!17 = !{i64 2151150191}
!18 = !{i64 2151150695}
!19 = !{i64 2151151055}
!20 = !{i64 2151147887}
!21 = !{i64 2151148300}
!22 = !{i64 2151148660}
