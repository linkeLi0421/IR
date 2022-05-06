; ModuleID = '/llk/IR/drivers/clk/mvebu/clk-cpu.c_pt.bc'
source_filename = "../drivers/clk/mvebu/clk-cpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.cpu_clk = type { %struct.clk_hw, i32, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_armada_xp_cpu_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-cpu-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_cpu_clk_setup }, section "__clk_of_table", align 4
@__of_table_mv98dx3236_cpu_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv98dx3236-cpu-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_mv98dx3236_cpu_clk_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [43 x i8] c"\013%s: clock-complex base register not set\0A\00", align 1
@__func__.of_cpu_clk_setup = private unnamed_addr constant [17 x i8] c"of_cpu_clk_setup\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"\014%s: pmu-dfs base register not set, dynamic frequency scaling not available\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"drivers/clk/mvebu/clk-cpu.c\00", align 1
@clks = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1
@cpu_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpu_recalc_rate, ptr @clk_cpu_round_rate, ptr null, ptr null, ptr null, ptr @clk_cpu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_data = internal global %struct.clk_onecell_data zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_armada_xp_cpu_clock, ptr @__of_table_mv98dx3236_cpu_clock], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_cpu_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca i32, align 4
  %4 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #11
  %5 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 1) #11
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_cpu_clk_setup) #12
  br label %91

9:                                                ; preds = %1
  %10 = icmp eq ptr %5, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.of_cpu_clk_setup) #12
  br label %13

13:                                               ; preds = %11, %9
  %14 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %19, %16 ], [ 0, %13 ]
  %18 = phi ptr [ %20, %16 ], [ %14, %13 ]
  %19 = add i32 %17, 1
  %20 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %18) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %13
  %23 = phi i32 [ 0, %13 ], [ %19, %16 ]
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 32) #11
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %30, label %26, !prof !8

26:                                               ; preds = %22
  %27 = extractvalue { i32, i1 } %24, 0
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %26, %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 188, i32 noundef 9, ptr noundef null) #11
  br label %90

31:                                               ; preds = %26
  %32 = shl nuw nsw i32 %23, 2
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #13
  store ptr %33, ptr @clks, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 9, ptr noundef null) #11
  br label %89

36:                                               ; preds = %31
  %37 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %76, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %42 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %43 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  br label %44

44:                                               ; preds = %70, %39
  %45 = phi ptr [ %37, %39 ], [ %74, %70 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !9
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %47 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %79, label %49, !prof !8

49:                                               ; preds = %44
  %50 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %45, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %79, !prof !10

52:                                               ; preds = %49
  %53 = load i32, ptr %3, align 4
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.4, i32 noundef %53)
  %55 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #11
  %56 = load i32, ptr %3, align 4
  %57 = getelementptr %struct.cpu_clk, ptr %28, i32 %56, i32 3
  store ptr %55, ptr %57, align 4
  %58 = getelementptr %struct.cpu_clk, ptr %28, i32 %56, i32 2
  store ptr %47, ptr %58, align 16
  %59 = getelementptr %struct.cpu_clk, ptr %28, i32 %56, i32 1
  store i32 %56, ptr %59, align 4
  %60 = getelementptr %struct.cpu_clk, ptr %28, i32 %56, i32 4
  store ptr %4, ptr %60, align 8
  br i1 %10, label %65, label %61

61:                                               ; preds = %52
  %62 = shl i32 %56, 2
  %63 = getelementptr i8, ptr %5, i32 %62
  %64 = getelementptr %struct.cpu_clk, ptr %28, i32 %56, i32 5
  store ptr %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %61, %52
  %66 = getelementptr %struct.cpu_clk, ptr %28, i32 %56, i32 0, i32 2
  store ptr %2, ptr %66, align 8
  store ptr %47, ptr %2, align 4
  store ptr @cpu_ops, ptr %40, align 4
  store i32 0, ptr %41, align 4
  store ptr %57, ptr %42, align 4
  store i8 1, ptr %43, align 4
  %67 = getelementptr %struct.cpu_clk, ptr %28, i32 %56
  %68 = call ptr @clk_register(ptr noundef null, ptr noundef %67) #11
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %79, label %70, !prof !8

70:                                               ; preds = %65
  %71 = load ptr, ptr @clks, align 4
  %72 = load i32, ptr %3, align 4
  %73 = getelementptr ptr, ptr %71, i32 %72
  store ptr %68, ptr %73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #11
  %74 = call ptr @of_get_next_cpu_node(ptr noundef nonnull %45) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %44

76:                                               ; preds = %70, %36
  store i32 4, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %77 = load ptr, ptr @clks, align 4
  store ptr %77, ptr @clk_data, align 4
  %78 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #11
  br label %91

79:                                               ; preds = %65, %49, %44
  %80 = phi i32 [ 201, %44 ], [ 205, %49 ], [ 225, %65 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %80, i32 noundef 9, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #11
  %81 = load ptr, ptr @clks, align 4
  call void @kfree(ptr noundef %81) #11
  %82 = icmp eq i32 %23, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %83, %79
  %84 = phi i32 [ %85, %83 ], [ %23, %79 ]
  %85 = add i32 %84, -1
  %86 = getelementptr %struct.cpu_clk, ptr %28, i32 %85, i32 2
  %87 = load ptr, ptr %86, align 16
  call void @kfree(ptr noundef %87) #11
  %88 = icmp eq i32 %85, 0
  br i1 %88, label %89, label %83

89:                                               ; preds = %83, %79, %35
  call void @kfree(ptr noundef nonnull %28) #11
  br label %90

90:                                               ; preds = %89, %30
  call void @iounmap(ptr noundef nonnull %4) #11
  br label %91

91:                                               ; preds = %90, %76, %7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_mv98dx3236_cpu_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef null) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_cpu_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.cpu_clk, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %7 = getelementptr inbounds %struct.cpu_clk, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 3
  %10 = lshr i32 %6, %9
  %11 = and i32 %10, 63
  %12 = udiv i32 %1, %11
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_cpu_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #10 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = udiv i32 %4, %1
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 3)
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %8, %6 ], [ 1, %3 ]
  %11 = udiv i32 %4, %10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_cpu_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 @__clk_is_enabled(ptr noundef %5) #11
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpu_clk, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %71, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #11
  %13 = getelementptr inbounds %struct.cpu_clk, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 63
  %19 = shl i32 %12, 1
  %20 = icmp eq i32 %19, %1
  %21 = zext i1 %20 to i32
  %22 = lshr i32 %18, %21
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %8, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %26 = and i32 %25, -4128769
  %27 = shl nuw nsw i32 %22, 16
  %28 = select i1 %23, i32 65536, i32 %27
  %29 = or i32 %28, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %30 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #11, !srcloc !16
  %31 = load ptr, ptr %13, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !17
  %33 = or i32 %32, 65280
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !18
  tail call void @arm_heavy_mb() #11
  %34 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #11, !srcloc !16
  %35 = getelementptr inbounds %struct.cpu_clk, ptr %0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @mvebu_pmsu_dfs_request(i32 noundef %36) #11
  br label %71

38:                                               ; preds = %3
  %39 = udiv i32 %2, %1
  %40 = getelementptr inbounds %struct.cpu_clk, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %44 = getelementptr inbounds %struct.cpu_clk, ptr %0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 3
  %47 = shl i32 63, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %43, %48
  %50 = shl i32 %39, %46
  %51 = or i32 %49, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %52 = load ptr, ptr %40, align 4
  %53 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #11, !srcloc !16
  %54 = load i32, ptr %44, align 4
  %55 = add i32 %54, 20
  %56 = shl nuw i32 1, %55
  %57 = load ptr, ptr %40, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %59 = or i32 %58, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %60 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #11, !srcloc !16
  %61 = load ptr, ptr %40, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !23
  %63 = or i32 %62, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %64 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %63) #11, !srcloc !16
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #11
  %66 = and i32 %56, -16777217
  %67 = xor i32 %66, -16777217
  %68 = and i32 %62, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  %69 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %68) #11, !srcloc !16
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #11
  br label %71

71:                                               ; preds = %38, %11, %7
  %72 = phi i32 [ 0, %38 ], [ %37, %11 ], [ -19, %7 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__clk_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_pmsu_dfs_request(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3052481}
!12 = !{i64 2151546711}
!13 = !{i64 2151552890}
!14 = !{i64 2151553226}
!15 = !{i64 2151553420}
!16 = !{i64 3052063}
!17 = !{i64 2151553900}
!18 = !{i64 2151554101}
!19 = !{i64 2151548236}
!20 = !{i64 2151548435}
!21 = !{i64 2151548922}
!22 = !{i64 2151549116}
!23 = !{i64 2151549603}
!24 = !{i64 2151549797}
!25 = !{i64 2151550679}
