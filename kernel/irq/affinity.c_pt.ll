; ModuleID = '/llk/IR/kernel/irq/affinity.c_pt.bc'
source_filename = "../kernel/irq/affinity.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.nodemask_t = type { [1 x i32] }
%struct.node_vectors = type { i32, %union.anon }
%union.anon = type { i32 }

@irq_create_affinity_masks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [22 x i8] c"kernel/irq/affinity.c\00", align 1
@irq_default_affinity = external dso_local local_unnamed_addr global [1 x %struct.cpumask], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__irq_build_affinity_masks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@alloc_nodes_vectors.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@alloc_nodes_vectors.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_topology = external dso_local global [16 x %struct.cpu_topology], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_create_affinity_masks(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.cpumask], align 4
  %4 = alloca [1 x %struct.cpumask], align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.irq_affinity, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 %8)
  %10 = getelementptr inbounds %struct.irq_affinity, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store ptr @default_calc_sets, ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi ptr [ @default_calc_sets, %13 ], [ %11, %2 ]
  tail call void %15(ptr noundef %1, i32 noundef %9) #9
  %16 = getelementptr inbounds %struct.irq_affinity, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 4
  %19 = load i1, ptr @irq_create_affinity_masks.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %14
  store i1 true, ptr @irq_create_affinity_masks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 442, i32 noundef 9, ptr noundef null) #9
  br label %23

23:                                               ; preds = %22, %14
  %24 = icmp uge i32 %8, %0
  %25 = select i1 %18, i1 true, i1 %24
  br i1 %25, label %129, label %26

26:                                               ; preds = %23
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 8) #9
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %129, label %29, !prof !8

29:                                               ; preds = %26
  %30 = extractvalue { i32, i1 } %27, 0
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %129, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %1, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr @irq_default_affinity, align 4
  %38 = load i32, ptr %1, align 4
  br label %43

39:                                               ; preds = %43, %33
  %40 = phi i32 [ 0, %33 ], [ %46, %43 ]
  %41 = load i32, ptr %16, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %99, label %48

43:                                               ; preds = %43, %36
  %44 = phi i32 [ %46, %43 ], [ 0, %36 ]
  %45 = getelementptr %struct.irq_affinity_desc, ptr %31, i32 %44
  store i32 %37, ptr %45, align 8
  %46 = add nuw i32 %44, 1
  %47 = icmp ult i32 %46, %38
  br i1 %47, label %43, label %39

48:                                               ; preds = %93, %39
  %49 = phi i32 [ %94, %93 ], [ %40, %39 ]
  %50 = phi i32 [ %96, %93 ], [ 0, %39 ]
  %51 = phi i32 [ %95, %93 ], [ 0, %39 ]
  %52 = getelementptr %struct.irq_affinity, ptr %1, i32 0, i32 3, i32 %50
  %53 = load i32, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %3, align 4
  %54 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %55 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 4) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %92

58:                                               ; preds = %48
  store i32 0, ptr %55, align 8
  call void @cpus_read_lock() #9
  %59 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  %60 = load i32, ptr @nr_cpu_ids, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %62, %58
  %63 = phi i32 [ %64, %62 ], [ %59, %58 ]
  call void @_set_bit(i32 noundef %63, ptr noundef nonnull %55) #9
  %64 = call i32 @cpumask_next(i32 noundef %63, ptr noundef nonnull @__cpu_possible_mask) #12
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %62, label %67

67:                                               ; preds = %62, %58
  %68 = call fastcc i32 @__irq_build_affinity_masks(i32 noundef %49, i32 noundef %53, i32 noundef %49, ptr noundef nonnull %55, ptr noundef nonnull @__cpu_present_mask, ptr noundef nonnull %3, ptr noundef nonnull %31) #9
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  %71 = icmp ult i32 %68, %53
  %72 = select i1 %71, i32 %68, i32 0
  %73 = add i32 %72, %49
  %74 = load i32, ptr @__cpu_possible_mask, align 4
  %75 = load i32, ptr @__cpu_present_mask, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, 65535
  %78 = and i32 %77, %76
  store i32 %78, ptr %4, align 4
  %79 = call fastcc i32 @__irq_build_affinity_masks(i32 noundef %73, i32 noundef %53, i32 noundef %49, ptr noundef nonnull %55, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %31) #9
  %80 = call i32 @llvm.smax.i32(i32 %79, i32 0) #9
  br label %81

81:                                               ; preds = %70, %67
  %82 = phi i32 [ 0, %67 ], [ %68, %70 ]
  %83 = phi i32 [ 0, %67 ], [ %80, %70 ]
  %84 = phi i32 [ %68, %67 ], [ %79, %70 ]
  call void @cpus_read_unlock() #9
  %85 = icmp sgt i32 %84, -1
  %86 = add nuw i32 %83, %82
  %87 = icmp ult i32 %86, %53
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %90, !prof !9

89:                                               ; preds = %81
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 9, ptr noundef null) #9
  call void @kfree(ptr noundef nonnull %55) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %93

90:                                               ; preds = %81
  call void @kfree(ptr noundef nonnull %55) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %91 = icmp sgt i32 %84, -1
  br i1 %91, label %93, label %92

92:                                               ; preds = %90, %57
  call void @kfree(ptr noundef nonnull %31) #9
  br label %129

93:                                               ; preds = %90, %89
  %94 = add i32 %53, %49
  %95 = add i32 %53, %51
  %96 = add nuw i32 %50, 1
  %97 = load i32, ptr %16, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %48, label %99

99:                                               ; preds = %93, %39
  %100 = phi i32 [ 0, %39 ], [ %95, %93 ]
  %101 = load i32, ptr %1, align 4
  %102 = call i32 @llvm.umin.i32(i32 %100, i32 %9)
  %103 = add i32 %101, %102
  %104 = icmp ult i32 %103, %0
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load i32, ptr @irq_default_affinity, align 4
  br label %107

107:                                              ; preds = %107, %105
  %108 = phi i32 [ %110, %107 ], [ %103, %105 ]
  %109 = getelementptr %struct.irq_affinity_desc, ptr %31, i32 %108
  store i32 %106, ptr %109, align 8
  %110 = add nuw i32 %108, 1
  %111 = icmp eq i32 %110, %0
  br i1 %111, label %112, label %107

112:                                              ; preds = %107
  %113 = load i32, ptr %1, align 4
  br label %114

114:                                              ; preds = %112, %99
  %115 = phi i32 [ %113, %112 ], [ %101, %99 ]
  %116 = load i32, ptr %6, align 4
  %117 = sub i32 %0, %116
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load i32, ptr %6, align 4
  %121 = sub i32 %0, %120
  br label %122

122:                                              ; preds = %122, %119
  %123 = phi i32 [ %127, %122 ], [ %115, %119 ]
  %124 = getelementptr %struct.irq_affinity_desc, ptr %31, i32 %123, i32 1
  %125 = load i8, ptr %124, align 4
  %126 = or i8 %125, 1
  store i8 %126, ptr %124, align 4
  %127 = add nuw i32 %123, 1
  %128 = icmp ult i32 %127, %121
  br i1 %128, label %122, label %129

129:                                              ; preds = %122, %114, %92, %29, %26, %23
  %130 = phi ptr [ null, %92 ], [ null, %23 ], [ null, %29 ], [ null, %26 ], [ %31, %114 ], [ %31, %122 ]
  ret ptr %130
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @default_calc_sets(ptr nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_affinity, ptr %0, i32 0, i32 2
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.irq_affinity, ptr %0, i32 0, i32 3
  store i32 %1, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_calc_affinity_vectors(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4
  %5 = getelementptr inbounds %struct.irq_affinity, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.irq_affinity, ptr %2, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = sub i32 %1, %7
  br label %20

15:                                               ; preds = %9
  tail call void @cpus_read_lock() #9
  %16 = load i32, ptr @__cpu_possible_mask, align 4
  %17 = and i32 %16, 65535
  %18 = tail call i32 @__sw_hweight32(i32 noundef %17) #9
  tail call void @cpus_read_unlock() #9
  %19 = sub i32 %1, %7
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %19, %15 ], [ %14, %13 ]
  %22 = phi i32 [ %18, %15 ], [ %14, %13 ]
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %21)
  %24 = add i32 %23, %7
  br label %25

25:                                               ; preds = %20, %3
  %26 = phi i32 [ %24, %20 ], [ 0, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__irq_build_affinity_masks(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.nodemask_t, align 4
  %9 = add i32 %2, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 65535
  %12 = tail call i32 @__sw_hweight32(i32 noundef %11) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %148, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %4, align 4
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %15, 65535
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %8) #9
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi i32 [ 1, %20 ], [ 0, %14 ]
  %23 = icmp ult i32 %22, %1
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %8, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %148, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.irq_affinity_desc, ptr %6, i32 %0
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, ptr %29, align 4
  br label %148

33:                                               ; preds = %21
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 8) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %148, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %8, align 4
  store i32 0, ptr %35, align 8
  %39 = getelementptr inbounds %struct.node_vectors, ptr %35, i32 0, i32 1
  store i32 -1, ptr %39, align 4
  %40 = and i32 %38, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %4, align 4
  %44 = load i32, ptr %3, align 4
  %45 = and i32 %43, 65535
  %46 = and i32 %45, %44
  store i32 %46, ptr %5, align 4
  %47 = call i32 @__sw_hweight32(i32 noundef %46) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 %47, ptr %39, align 4
  br label %50

50:                                               ; preds = %49, %42, %37
  %51 = phi i32 [ 0, %37 ], [ %47, %49 ], [ 0, %42 ]
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 %1) #9
  call void @sort(ptr noundef nonnull %35, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @ncpus_cmp_func, ptr noundef null) #9
  %53 = load i32, ptr %39, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %146, label %55

55:                                               ; preds = %50
  %56 = icmp eq i32 %52, 0
  %57 = load i1, ptr @alloc_nodes_vectors.__already_done, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %62, !prof !8

60:                                               ; preds = %55
  store i1 true, ptr @alloc_nodes_vectors.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef null) #9
  %61 = load i32, ptr %39, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi i32 [ %61, %60 ], [ %53, %55 ]
  %64 = mul i32 %63, %52
  %65 = udiv i32 %64, %51
  %66 = icmp ugt i32 %51, %64
  %67 = select i1 %66, i32 1, i32 %65
  %68 = icmp ugt i32 %67, %63
  %69 = load i1, ptr @alloc_nodes_vectors.__already_done.1, align 1
  %70 = xor i1 %69, true
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %73, !prof !8

72:                                               ; preds = %62
  store i1 true, ptr @alloc_nodes_vectors.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #9
  br label %73

73:                                               ; preds = %72, %62
  store i32 %67, ptr %39, align 4
  %74 = icmp eq i32 %67, -1
  br i1 %74, label %146, label %75

75:                                               ; preds = %73
  %76 = load i32, ptr %35, align 8
  %77 = getelementptr [1 x %struct.cpumask], ptr %3, i32 %76
  %78 = load i32, ptr %4, align 4
  %79 = load i32, ptr %77, align 4
  %80 = and i32 %78, 65535
  %81 = and i32 %80, %79
  store i32 %81, ptr %5, align 4
  %82 = call i32 @__sw_hweight32(i32 noundef %81) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %146, label %84

84:                                               ; preds = %75
  %85 = load i32, ptr %39, align 4
  %86 = icmp ugt i32 %85, %82
  %87 = load i1, ptr @__irq_build_affinity_masks.__already_done, align 1
  %88 = xor i1 %87, true
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %92, !prof !8

90:                                               ; preds = %84
  store i1 true, ptr @__irq_build_affinity_masks.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #9
  %91 = load i32, ptr %39, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi i32 [ %91, %90 ], [ %85, %84 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %146, label %95

95:                                               ; preds = %92
  %96 = urem i32 %82, %93
  br label %97

97:                                               ; preds = %141, %95
  %98 = phi i32 [ %144, %141 ], [ %93, %95 ]
  %99 = phi i32 [ %142, %141 ], [ 0, %95 ]
  %100 = phi i32 [ %143, %141 ], [ %0, %95 ]
  %101 = phi i32 [ %108, %141 ], [ %96, %95 ]
  %102 = udiv i32 %82, %98
  %103 = icmp eq i32 %101, 0
  %104 = add i32 %101, -1
  %105 = xor i1 %103, true
  %106 = zext i1 %105 to i32
  %107 = add i32 %102, %106
  %108 = select i1 %103, i32 0, i32 %104
  %109 = icmp ult i32 %100, %9
  %110 = select i1 %109, i32 %100, i32 %2
  %111 = getelementptr %struct.irq_affinity_desc, ptr %6, i32 %110
  %112 = icmp eq i32 %107, 0
  br i1 %112, label %141, label %113

113:                                              ; preds = %97
  %114 = call i32 @_find_first_bit_le(ptr noundef %5, i32 noundef 16) #9
  %115 = load i32, ptr @nr_cpu_ids, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %121, label %141

117:                                              ; preds = %130
  %118 = call i32 @_find_first_bit_le(ptr noundef %5, i32 noundef 16) #9
  %119 = load i32, ptr @nr_cpu_ids, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %117, %113
  %122 = phi i32 [ %118, %117 ], [ %114, %113 ]
  %123 = phi i32 [ %128, %117 ], [ %107, %113 ]
  call void @_clear_bit(i32 noundef %122, ptr noundef %5) #9
  call void @_set_bit(i32 noundef %122, ptr noundef %111) #9
  %124 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %122, i32 5
  %125 = add i32 %123, -1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %138, %121
  %128 = phi i32 [ %139, %138 ], [ %125, %121 ]
  %129 = phi i32 [ %132, %138 ], [ -1, %121 ]
  br label %130

130:                                              ; preds = %135, %127
  %131 = phi i32 [ %132, %135 ], [ %129, %127 ]
  %132 = call i32 @cpumask_next(i32 noundef %131, ptr noundef %124) #12
  %133 = load i32, ptr @nr_cpu_ids, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %117

135:                                              ; preds = %130
  %136 = call i32 @_test_and_clear_bit(i32 noundef %132, ptr noundef %5) #9
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %130, label %138

138:                                              ; preds = %135
  call void @_set_bit(i32 noundef %132, ptr noundef %111) #9
  %139 = add i32 %128, -1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %127

141:                                              ; preds = %138, %121, %117, %113, %97
  %142 = add nuw i32 %99, 1
  %143 = add i32 %110, 1
  %144 = load i32, ptr %39, align 4
  %145 = icmp ult i32 %142, %144
  br i1 %145, label %97, label %146

146:                                              ; preds = %141, %92, %75, %73, %50
  %147 = phi i32 [ 0, %73 ], [ 0, %75 ], [ 0, %92 ], [ 0, %50 ], [ %144, %141 ]
  call void @kfree(ptr noundef nonnull %35) #9
  br label %148

148:                                              ; preds = %146, %33, %28, %24, %7
  %149 = phi i32 [ %147, %146 ], [ 0, %7 ], [ %1, %24 ], [ -12, %33 ], [ %1, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  ret i32 %149
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ncpus_cmp_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.node_vectors, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.node_vectors, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }

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
!9 = !{!"branch_weights", i32 1, i32 4001}
