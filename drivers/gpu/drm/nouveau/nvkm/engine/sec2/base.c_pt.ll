; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.124, %struct.anon.125, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.124 = type { ptr }
%struct.anon.125 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_sec2 = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon, ptr, ptr, ptr, %struct.work_struct, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.122, %struct.anon.123, %struct.nvkm_engine }
%struct.anon.122 = type { i32, ptr, i32, i8 }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_sec2_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_sec2_func = type { ptr, i8, ptr, ptr }

@nvkm_sec2 = internal constant %struct.nvkm_engine_func { ptr @nvkm_sec2_dtor, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_sec2_fini, ptr @nvkm_sec2_intr, ptr null, ptr null, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@.str = private unnamed_addr constant [5 x i8] c"Sec2\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cmdq\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"msgq\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"%s: error parsing init message: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_sec2_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [32 x i8], align 1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 320) #7
  store ptr %9, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %103, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 1
  %13 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_sec2, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %103

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !8
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
  %18 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 1, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @nvkm_longopt(ptr noundef %21, ptr noundef nonnull %7, i32 noundef -2) #8
  %23 = icmp sgt i32 %22, -2
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  br label %40

26:                                               ; preds = %31, %15
  %27 = phi ptr [ %34, %31 ], [ %0, %15 ]
  %28 = getelementptr inbounds %struct.nvkm_sec2_fwif, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %68, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %27, align 4
  %33 = icmp ne i32 %32, %22
  %34 = getelementptr %struct.nvkm_sec2_fwif, ptr %27, i32 1
  %35 = icmp eq ptr %27, null
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %26, label %37

37:                                               ; preds = %31
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  %39 = load i32, ptr %27, align 4
  br label %40

40:                                               ; preds = %37, %24
  %41 = phi ptr [ %27, %37 ], [ null, %24 ]
  %42 = phi ptr [ %27, %37 ], [ %0, %24 ]
  %43 = phi i32 [ %39, %37 ], [ -1, %24 ]
  %44 = load ptr, ptr %18, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @nvkm_longopt(ptr noundef %46, ptr noundef nonnull %7, i32 noundef %43) #8
  %48 = getelementptr inbounds %struct.nvkm_sec2_fwif, ptr %42, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %71, label %51

51:                                               ; preds = %40
  %52 = icmp sgt i32 %47, -1
  br label %53

53:                                               ; preds = %60, %51
  %54 = phi ptr [ %49, %51 ], [ %63, %60 ]
  %55 = phi ptr [ %42, %51 ], [ %61, %60 ]
  br i1 %52, label %65, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %55, align 4
  %58 = call i32 %54(ptr noundef nonnull %9, i32 noundef %57, ptr noundef %55) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = getelementptr %struct.nvkm_sec2_fwif, ptr %55, i32 1
  %62 = getelementptr %struct.nvkm_sec2_fwif, ptr %55, i32 1, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %53

65:                                               ; preds = %53
  %66 = call i32 %49(ptr noundef nonnull %9, i32 noundef %47, ptr noundef %42) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65, %60, %26
  %69 = phi i32 [ %66, %65 ], [ %58, %60 ], [ -22, %26 ]
  %70 = inttoptr i32 %69 to ptr
  br label %71

71:                                               ; preds = %68, %65, %56, %40
  %72 = phi ptr [ %70, %68 ], [ %42, %65 ], [ %41, %40 ], [ %55, %56 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = ptrtoint ptr %72 to i32
  br label %103

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.nvkm_sec2_fwif, ptr %72, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  store ptr %78, ptr %9, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 1, i32 1, i32 4
  %81 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 2
  %82 = call i32 @nvkm_falcon_ctor(ptr noundef %79, ptr noundef %16, ptr noundef %80, i32 noundef %4, ptr noundef %81) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 3
  %86 = call i32 @nvkm_falcon_qmgr_new(ptr noundef %81, ptr noundef %85) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load ptr, ptr %85, align 8
  %90 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 4
  %91 = call i32 @nvkm_falcon_cmdq_new(ptr noundef %89, ptr noundef nonnull @.str.3, ptr noundef %90) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load ptr, ptr %85, align 8
  %95 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 5
  %96 = call i32 @nvkm_falcon_msgq_new(ptr noundef %94, ptr noundef nonnull @.str.4, ptr noundef %95) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 6
  store i32 -32, ptr %99, align 4
  %100 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 6, i32 1
  store volatile ptr %100, ptr %100, align 8
  %101 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 6, i32 1, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.nvkm_sec2, ptr %9, i32 0, i32 6, i32 2
  store ptr @nvkm_sec2_recv, ptr %102, align 8
  br label %103

103:                                              ; preds = %98, %93, %88, %84, %76, %74, %11, %6
  %104 = phi i32 [ %75, %74 ], [ 0, %98 ], [ -12, %6 ], [ %13, %11 ], [ %82, %76 ], [ %86, %84 ], [ %91, %88 ], [ %96, %93 ]
  ret i32 %104
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_qmgr_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_msgq_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_sec2_recv(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 16
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -300
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_sec2_func, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %6) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 -260
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -288
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %0, i32 -276
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.5, ptr noundef %21, i32 noundef %10) #9
  br label %26

22:                                               ; preds = %5
  store i8 1, ptr %2, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = getelementptr i8, ptr %0, i32 -4
  %25 = load ptr, ptr %24, align 4
  tail call void @nvkm_falcon_msgq_recv(ptr noundef %25) #8
  br label %26

26:                                               ; preds = %23, %16, %12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_sec2_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 292
  tail call void @nvkm_falcon_msgq_del(ptr noundef %3) #8
  %4 = getelementptr i8, ptr %0, i32 288
  tail call void @nvkm_falcon_cmdq_del(ptr noundef %4) #8
  %5 = getelementptr i8, ptr %0, i32 284
  tail call void @nvkm_falcon_qmgr_del(ptr noundef %5) #8
  %6 = getelementptr i8, ptr %0, i32 88
  tail call void @nvkm_falcon_dtor(ptr noundef %6) #8
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_sec2_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 296
  %4 = tail call zeroext i1 @flush_work(ptr noundef %3) #8
  br i1 %1, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 288
  %7 = load ptr, ptr %6, align 4
  tail call void @nvkm_falcon_cmdq_fini(ptr noundef %7) #8
  %8 = getelementptr i8, ptr %0, i32 312
  store i8 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_sec2_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_sec2_func, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_qmgr_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_recv(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
