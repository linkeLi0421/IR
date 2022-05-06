; ModuleID = '/llk/IR/drivers/gpu/drm/drm_scatter.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_scatter.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.61, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.66, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.61 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.66 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_sg_mem = type { i32, ptr, i32, ptr, ptr }
%struct.drm_scatter_gather = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"size=%ld pages=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"handle  = %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"virtual = %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"virtual  = %p\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_sg_cleanup(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = and i32 %8, 268435456
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 54
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = and i32 %8, 67108864
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %44, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.drm_sg_mem, ptr %13, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drm_sg_mem, ptr %13, i32 0, i32 3
  br label %24

24:                                               ; preds = %33, %22
  %25 = phi i32 [ %20, %22 ], [ %34, %33 ]
  %26 = phi i32 [ 0, %22 ], [ %35, %33 ]
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr ptr, ptr %27, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  tail call void @_clear_bit(i32 noundef 12, ptr noundef nonnull %29) #6
  %32 = load i32, ptr %19, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %25, %24 ], [ %32, %31 ]
  %35 = add nuw nsw i32 %26, 1
  %36 = icmp slt i32 %35, %34
  br i1 %36, label %24, label %37

37:                                               ; preds = %33, %18
  %38 = getelementptr inbounds %struct.drm_sg_mem, ptr %13, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void @vfree(ptr noundef %39) #6
  %40 = getelementptr inbounds %struct.drm_sg_mem, ptr %13, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %41) #6
  %42 = getelementptr inbounds %struct.drm_sg_mem, ptr %13, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  tail call void @kfree(ptr noundef %43) #6
  tail call void @kfree(ptr noundef nonnull %13) #6
  store ptr null, ptr %12, align 4
  br label %44

44:                                               ; preds = %37, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_sg_cleanup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_sg_mem, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_sg_mem, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi i32 [ %3, %5 ], [ %17, %16 ]
  %9 = phi i32 [ 0, %5 ], [ %18, %16 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  tail call void @_clear_bit(i32 noundef 12, ptr noundef nonnull %12) #6
  %15 = load i32, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi i32 [ %8, %7 ], [ %15, %14 ]
  %18 = add nuw nsw i32 %9, 1
  %19 = icmp slt i32 %18, %17
  br i1 %19, label %7, label %20

20:                                               ; preds = %16, %1
  %21 = getelementptr inbounds %struct.drm_sg_mem, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @vfree(ptr noundef %22) #6
  %23 = getelementptr inbounds %struct.drm_sg_mem, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #6
  %25 = getelementptr inbounds %struct.drm_sg_mem, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_sg_alloc(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #6
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, 335544320
  %12 = icmp eq i32 %11, 335544320
  br i1 %12, label %13, label %74

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 4
  %15 = icmp ugt i32 %14, -4097
  br i1 %15, label %74, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 54
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %74

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 20) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %74, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %1, align 4
  %26 = add i32 %25, 4095
  %27 = lshr i32 %26, 12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %25, i32 noundef %27) #6
  %28 = getelementptr inbounds %struct.drm_sg_mem, ptr %22, i32 0, i32 2
  store i32 %27, ptr %28, align 8
  %29 = shl nuw nsw i32 %27, 2
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #8
  %31 = getelementptr inbounds %struct.drm_sg_mem, ptr %22, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %22) #6
  br label %74

34:                                               ; preds = %24
  %35 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #8
  %36 = getelementptr inbounds %struct.drm_sg_mem, ptr %22, i32 0, i32 4
  store ptr %35, ptr %36, align 8
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %39) #6
  tail call void @kfree(ptr noundef nonnull %22) #6
  br label %74

40:                                               ; preds = %34
  %41 = and i32 %26, -4096
  %42 = tail call noalias ptr @vmalloc_32(i32 noundef %41) #8
  %43 = getelementptr inbounds %struct.drm_sg_mem, ptr %22, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load ptr, ptr %36, align 8
  tail call void @kfree(ptr noundef %46) #6
  %47 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %47) #6
  tail call void @kfree(ptr noundef nonnull %22) #6
  br label %74

48:                                               ; preds = %40
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %42, i8 0, i32 %41, i1 false)
  %49 = ptrtoint ptr %42 to i32
  store i32 %49, ptr %22, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %49) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull %42) #6
  %50 = icmp ult i32 %26, 4096
  br i1 %50, label %70, label %51

51:                                               ; preds = %48
  %52 = call i32 @llvm.umax.i32(i32 %27, i32 1)
  br label %53

53:                                               ; preds = %64, %51
  %54 = phi i32 [ %66, %64 ], [ 0, %51 ]
  %55 = phi i32 [ %65, %64 ], [ %49, %51 ]
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call ptr @vmalloc_to_page(ptr noundef %56) #6
  %58 = load ptr, ptr %31, align 4
  %59 = getelementptr ptr, ptr %58, i32 %54
  store ptr %57, ptr %59, align 4
  %60 = load ptr, ptr %31, align 4
  %61 = getelementptr ptr, ptr %60, i32 %54
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %53
  tail call void @_set_bit(i32 noundef 12, ptr noundef nonnull %62) #6
  %65 = add i32 %55, 4096
  %66 = add nuw nsw i32 %54, 1
  %67 = icmp eq i32 %66, %52
  br i1 %67, label %68, label %53

68:                                               ; preds = %64
  %69 = load i32, ptr %22, align 8
  br label %70

70:                                               ; preds = %68, %48
  %71 = phi i32 [ %69, %68 ], [ %49, %48 ]
  %72 = getelementptr inbounds %struct.drm_scatter_gather, ptr %1, i32 0, i32 1
  store i32 %71, ptr %72, align 4
  store ptr %22, ptr %17, align 4
  br label %74

73:                                               ; preds = %53
  tail call fastcc void @drm_sg_cleanup(ptr noundef nonnull %22)
  br label %74

74:                                               ; preds = %73, %70, %45, %38, %33, %20, %16, %13, %3
  %75 = phi i32 [ -12, %73 ], [ 0, %70 ], [ -12, %45 ], [ -12, %38 ], [ -12, %33 ], [ -95, %3 ], [ -22, %13 ], [ -22, %16 ], [ -12, %20 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_32(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_sg_free(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, 335544320
  %12 = icmp eq i32 %11, 335544320
  br i1 %12, label %13, label %49

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 54
  %15 = load ptr, ptr %14, align 4
  store ptr null, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 4
  %19 = getelementptr inbounds %struct.drm_scatter_gather, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.drm_sg_mem, ptr %15, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %24) #6
  %25 = getelementptr inbounds %struct.drm_sg_mem, ptr %15, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.drm_sg_mem, ptr %15, i32 0, i32 3
  br label %30

30:                                               ; preds = %39, %28
  %31 = phi i32 [ %26, %28 ], [ %40, %39 ]
  %32 = phi i32 [ 0, %28 ], [ %41, %39 ]
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr ptr, ptr %33, i32 %32
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  tail call void @_clear_bit(i32 noundef 12, ptr noundef nonnull %35) #6
  %38 = load i32, ptr %25, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi i32 [ %31, %30 ], [ %38, %37 ]
  %41 = add nuw nsw i32 %32, 1
  %42 = icmp slt i32 %41, %40
  br i1 %42, label %30, label %43

43:                                               ; preds = %39, %22
  %44 = load ptr, ptr %23, align 4
  tail call void @vfree(ptr noundef %44) #6
  %45 = getelementptr inbounds %struct.drm_sg_mem, ptr %15, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  tail call void @kfree(ptr noundef %46) #6
  %47 = getelementptr inbounds %struct.drm_sg_mem, ptr %15, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #6
  tail call void @kfree(ptr noundef nonnull %15) #6
  br label %49

49:                                               ; preds = %43, %17, %13, %3
  %50 = phi i32 [ 0, %43 ], [ -95, %3 ], [ -22, %17 ], [ -22, %13 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind allocsize(0) }

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
