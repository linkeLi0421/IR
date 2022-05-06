; ModuleID = '/llk/IR/drivers/clk/bcm/clk-iproc-asiu.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-iproc-asiu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.iproc_asiu = type { ptr, ptr, ptr, ptr }
%struct.iproc_asiu_clk = type { %struct.clk_hw, ptr, ptr, i32, %struct.iproc_asiu_div, %struct.iproc_asiu_gate }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.iproc_asiu_div = type { i32, i32, i32, i32, i32, i32 }
%struct.iproc_asiu_gate = type { i32, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@.str = private unnamed_addr constant [33 x i8] c"drivers/clk/bcm/clk-iproc-asiu.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@iproc_asiu_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @iproc_asiu_clk_enable, ptr @iproc_asiu_clk_disable, ptr null, ptr null, ptr null, ptr null, ptr @iproc_asiu_clk_recalc_rate, ptr @iproc_asiu_clk_round_rate, ptr null, ptr null, ptr null, ptr @iproc_asiu_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @iproc_asiu_setup(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = alloca %struct.clk_init_data, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = icmp eq ptr %2, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 9, ptr noundef null) #10
  br label %114

12:                                               ; preds = %4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 16) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 9, ptr noundef null) #10
  br label %114

17:                                               ; preds = %12
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #10
  %19 = extractvalue { i32, i1 } %18, 1
  %20 = extractvalue { i32, i1 } %18, 0
  %21 = tail call i32 @llvm.uadd.sat.i32(i32 %20, i32 4) #10
  %22 = select i1 %19, i32 -1, i32 %21
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #12
  %24 = getelementptr inbounds %struct.iproc_asiu, ptr %14, i32 0, i32 2
  store ptr %23, ptr %24, align 8
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #10
  br label %113

27:                                               ; preds = %17
  store i32 %3, ptr %23, align 64
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 56) #10
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %30, label %32, !prof !8

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.iproc_asiu, ptr %14, i32 0, i32 3
  store ptr null, ptr %31, align 4
  br label %37

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %28, 0
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #12
  %35 = getelementptr inbounds %struct.iproc_asiu, ptr %14, i32 0, i32 3
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %32, %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef null) #10
  br label %111

38:                                               ; preds = %32
  %39 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #10
  store ptr %39, ptr %14, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #10
  br label %108

42:                                               ; preds = %38
  %43 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 1) #10
  %44 = getelementptr inbounds %struct.iproc_asiu, ptr %14, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, null
  br i1 %45, label %53, label %46, !prof !8

46:                                               ; preds = %42
  %47 = icmp eq i32 %3, 0
  br i1 %47, label %87, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  %51 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  %52 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  br label %54

53:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef null) #10
  br label %106

54:                                               ; preds = %80, %48
  %55 = phi i32 [ 0, %48 ], [ %83, %80 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store ptr null, ptr %7, align 4, !annotation !9
  %56 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %55) #10
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %78, !prof !10

58:                                               ; preds = %54
  %59 = load ptr, ptr %35, align 4
  %60 = getelementptr %struct.iproc_asiu_clk, ptr %59, i32 %55
  %61 = load ptr, ptr %7, align 4
  %62 = getelementptr %struct.iproc_asiu_clk, ptr %59, i32 %55, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr %struct.iproc_asiu_clk, ptr %59, i32 %55, i32 2
  store ptr %14, ptr %63, align 4
  %64 = getelementptr %struct.iproc_asiu_clk, ptr %59, i32 %55, i32 4
  %65 = getelementptr %struct.iproc_asiu_div, ptr %1, i32 %55
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %64, ptr noundef align 4 dereferenceable(24) %65, i32 24, i1 false)
  %66 = getelementptr %struct.iproc_asiu_clk, ptr %59, i32 %55, i32 5
  %67 = getelementptr %struct.iproc_asiu_gate, ptr %2, i32 %55
  %68 = load i64, ptr %67, align 4
  store i64 %68, ptr %66, align 4
  %69 = load ptr, ptr %7, align 4
  store ptr %69, ptr %5, align 4
  store ptr @iproc_asiu_ops, ptr %49, align 4
  store i32 0, ptr %50, align 4
  %70 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #10
  store ptr %70, ptr %6, align 4
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, ptr null, ptr %6
  store ptr %72, ptr %51, align 4
  %73 = icmp ne ptr %70, null
  %74 = zext i1 %73 to i8
  store i8 %74, ptr %52, align 4
  %75 = getelementptr inbounds %struct.clk_hw, ptr %60, i32 0, i32 2
  store ptr %5, ptr %75, align 4
  %76 = call i32 @clk_hw_register(ptr noundef null, ptr noundef %60) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78, !prof !10

78:                                               ; preds = %58, %54
  %79 = phi i32 [ 226, %54 ], [ 243, %58 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %79, i32 noundef 9, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #10
  br label %92

80:                                               ; preds = %58
  %81 = load ptr, ptr %24, align 8
  %82 = getelementptr %struct.clk_hw_onecell_data, ptr %81, i32 0, i32 1, i32 %55
  store ptr %60, ptr %82, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #10
  %83 = add nuw i32 %55, 1
  %84 = icmp eq i32 %83, %3
  br i1 %84, label %85, label %54

85:                                               ; preds = %80
  %86 = load ptr, ptr %24, align 8
  br label %87

87:                                               ; preds = %85, %46
  %88 = phi ptr [ %23, %46 ], [ %86, %85 ]
  %89 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %88) #10
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %114, label %91, !prof !10

91:                                               ; preds = %87
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #10
  br label %92

92:                                               ; preds = %91, %78
  %93 = phi i32 [ %55, %78 ], [ %3, %91 ]
  %94 = add i32 %93, -1
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %96, label %103

96:                                               ; preds = %96, %92
  %97 = phi i32 [ %101, %96 ], [ %94, %92 ]
  %98 = load ptr, ptr %24, align 8
  %99 = getelementptr %struct.clk_hw_onecell_data, ptr %98, i32 0, i32 1, i32 %97
  %100 = load ptr, ptr %99, align 4
  call void @clk_hw_unregister(ptr noundef %100) #10
  %101 = add nsw i32 %97, -1
  %102 = icmp sgt i32 %97, 0
  br i1 %102, label %96, label %103

103:                                              ; preds = %96, %92
  %104 = load ptr, ptr %44, align 4
  call void @iounmap(ptr noundef %104) #10
  %105 = load ptr, ptr %14, align 8
  br label %106

106:                                              ; preds = %103, %53
  %107 = phi ptr [ %39, %53 ], [ %105, %103 ]
  call void @iounmap(ptr noundef %107) #10
  br label %108

108:                                              ; preds = %106, %41
  %109 = load ptr, ptr %35, align 4
  call void @kfree(ptr noundef %109) #10
  %110 = load ptr, ptr %24, align 8
  br label %111

111:                                              ; preds = %108, %37
  %112 = phi ptr [ %23, %37 ], [ %110, %108 ]
  call void @kfree(ptr noundef %112) #10
  br label %113

113:                                              ; preds = %111, %26
  call void @kfree(ptr noundef nonnull %14) #10
  br label %114

114:                                              ; preds = %113, %87, %16, %11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_asiu_clk_enable(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iproc_asiu, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %3
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %12 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 5, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = or i32 %14, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %16 = load ptr, ptr %8, align 4
  %17 = load i32, ptr %2, align 4
  %18 = getelementptr i8, ptr %16, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #10, !srcloc !14
  br label %19

19:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_asiu_clk_disable(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iproc_asiu, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %3
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %12 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 5, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %17 = load ptr, ptr %8, align 4
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr i8, ptr %17, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #10, !srcloc !14
  br label %20

20:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_asiu_clk_recalc_rate(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %12 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %11, %19
  %21 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = shl nsw i32 -1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %11, %27
  %29 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = shl nsw i32 -1, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = add i32 %25, 2
  %35 = add i32 %34, %33
  %36 = udiv i32 %1, %35
  br label %37

37:                                               ; preds = %17, %4, %2
  %38 = phi i32 [ %36, %17 ], [ 0, %2 ], [ %1, %4 ]
  %39 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  ret i32 %38
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @iproc_asiu_clk_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #9 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %6, %1
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = lshr i32 %1, 1
  %12 = add i32 %6, %11
  %13 = udiv i32 %12, %1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = udiv i32 %6, %13
  br label %17

17:                                               ; preds = %15, %10, %8, %5, %3
  %18 = phi i32 [ %16, %15 ], [ -22, %5 ], [ -22, %3 ], [ %1, %8 ], [ %6, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_asiu_clk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = icmp eq i32 %2, 0
  %8 = or i1 %6, %7
  br i1 %8, label %82, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %1, %2
  br i1 %10, label %11, label %25

11:                                               ; preds = %9
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %17 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %22 = load ptr, ptr %5, align 4
  %23 = load i32, ptr %13, align 4
  %24 = getelementptr i8, ptr %22, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #10, !srcloc !14
  br label %82

25:                                               ; preds = %9
  %26 = lshr i32 %1, 1
  %27 = add i32 %26, %2
  %28 = udiv i32 %27, %1
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %82, label %30

30:                                               ; preds = %25
  %31 = lshr i32 %28, 1
  %32 = add nsw i32 %31, -1
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %38 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = shl nuw i32 1, %39
  %41 = or i32 %40, %37
  %42 = icmp eq i32 %32, 0
  %43 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = shl nsw i32 -1, %44
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %46, %48
  br i1 %42, label %66, label %50

50:                                               ; preds = %30
  %51 = xor i32 %49, -1
  %52 = and i32 %41, %51
  %53 = shl i32 %32, %48
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = shl i32 %58, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %54, %62
  %64 = shl i32 %32, %60
  %65 = or i32 %63, %64
  br label %77

66:                                               ; preds = %30
  %67 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = shl nsw i32 -1, %68
  %70 = xor i32 %69, -1
  %71 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %0, i32 0, i32 4, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = shl i32 %70, %72
  %74 = or i32 %73, %49
  %75 = xor i32 %74, -1
  %76 = and i32 %41, %75
  br label %77

77:                                               ; preds = %66, %50
  %78 = phi i32 [ %65, %50 ], [ %76, %66 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %79 = load ptr, ptr %5, align 4
  %80 = load i32, ptr %34, align 4
  %81 = getelementptr i8, ptr %79, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %78) #10, !srcloc !14
  br label %82

82:                                               ; preds = %77, %25, %11, %3
  %83 = phi i32 [ 0, %11 ], [ 0, %77 ], [ -22, %3 ], [ -22, %25 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

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
!11 = !{i64 2847298}
!12 = !{i64 2151468942}
!13 = !{i64 2151469144}
!14 = !{i64 2846880}
!15 = !{i64 2151470891}
!16 = !{i64 2151471093}
!17 = !{i64 2151472823}
!18 = !{i64 2151475699}
!19 = !{i64 2151475899}
!20 = !{i64 2151476742}
!21 = !{i64 2151477104}
