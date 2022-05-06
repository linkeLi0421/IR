; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_vm.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_vm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.sg_dma_page_iter = type { %struct.sg_page_iter }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.lima_bo = type { %struct.drm_gem_shmem_object, %struct.mutex, %struct.list_head, i32 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lima_bo_va = type { %struct.list_head, i32, %struct.drm_mm_node, ptr }
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.lima_vm_page = type { ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon.68 }
%union.anon.68 = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }

@lima_vm_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"&vm->lock\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\016lima vm pd %03x:%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\016  pt %03x:%08x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_vm_bo_add(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.sg_dma_page_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 2
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.lima_bo_va, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.lima_bo_va, ptr %9, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8
  tail call void @mutex_unlock(ptr noundef %5) #6
  br label %133

21:                                               ; preds = %15, %7
  br i1 %2, label %23, label %22

22:                                               ; preds = %21
  tail call void @mutex_unlock(ptr noundef %5) #6
  br label %133

23:                                               ; preds = %21
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 136) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %131, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.lima_bo_va, ptr %25, i32 0, i32 3
  store ptr %0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.lima_bo_va, ptr %25, i32 0, i32 1
  store i32 1, ptr %29, align 8
  tail call void @mutex_lock(ptr noundef %0) #6
  %30 = getelementptr inbounds %struct.lima_vm, ptr %0, i32 0, i32 2
  %31 = getelementptr inbounds %struct.lima_bo_va, ptr %25, i32 0, i32 2
  %32 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = zext i32 %33 to i64
  %35 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %30, ptr noundef %31, i64 noundef %34, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %129

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %1, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.sg_table, ptr %39, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %4, ptr noundef %40, i32 noundef %42, i32 noundef 0) #6
  %43 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %4) #6
  br i1 %43, label %44, label %106

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.sg_page_iter, ptr %4, i32 0, i32 1
  %46 = getelementptr inbounds %struct.lima_bo_va, ptr %25, i32 0, i32 2, i32 1
  %47 = getelementptr inbounds %struct.lima_vm, ptr %0, i32 0, i32 3
  %48 = getelementptr inbounds %struct.lima_vm, ptr %0, i32 0, i32 4
  br label %49

49:                                               ; preds = %100, %44
  %50 = phi i32 [ 0, %44 ], [ %104, %100 ]
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.scatterlist, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %45, align 4
  %55 = shl i32 %54, 12
  %56 = add i32 %55, %53
  %57 = load i64, ptr %46, align 8
  %58 = trunc i64 %57 to i32
  %59 = add i32 %50, %58
  %60 = lshr i32 %59, 25
  %61 = lshr i32 %59, 12
  %62 = and i32 %61, 8191
  %63 = getelementptr %struct.lima_vm, ptr %0, i32 0, i32 5, i32 %60
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %100

66:                                               ; preds = %49
  %67 = load ptr, ptr %47, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr %struct.lima_vm, ptr %0, i32 0, i32 5, i32 %60, i32 1
  %70 = call ptr @dma_alloc_attrs(ptr noundef %68, i32 noundef 32768, ptr noundef %69, i32 noundef 11712, i32 noundef 260) #6
  store ptr %70, ptr %63, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %110, label %72

72:                                               ; preds = %66
  %73 = load i32, ptr %69, align 4
  %74 = load ptr, ptr %48, align 4
  %75 = shl nuw nsw i32 %60, 3
  %76 = getelementptr i32, ptr %74, i32 %75
  %77 = or i32 %73, 1
  store i32 %77, ptr %76, align 4
  %78 = add i32 %73, 4096
  %79 = or i32 %78, 1
  %80 = getelementptr i32, ptr %76, i32 1
  store i32 %79, ptr %80, align 4
  %81 = add i32 %73, 8192
  %82 = or i32 %81, 1
  %83 = getelementptr i32, ptr %76, i32 2
  store i32 %82, ptr %83, align 4
  %84 = add i32 %73, 12288
  %85 = or i32 %84, 1
  %86 = getelementptr i32, ptr %76, i32 3
  store i32 %85, ptr %86, align 4
  %87 = add i32 %73, 16384
  %88 = or i32 %87, 1
  %89 = getelementptr i32, ptr %76, i32 4
  store i32 %88, ptr %89, align 4
  %90 = add i32 %73, 20480
  %91 = or i32 %90, 1
  %92 = getelementptr i32, ptr %76, i32 5
  store i32 %91, ptr %92, align 4
  %93 = add i32 %73, 24576
  %94 = or i32 %93, 1
  %95 = getelementptr i32, ptr %76, i32 6
  store i32 %94, ptr %95, align 4
  %96 = add i32 %73, 28672
  %97 = or i32 %96, 1
  %98 = getelementptr i32, ptr %76, i32 7
  store i32 %97, ptr %98, align 4
  %99 = load ptr, ptr %63, align 4
  br label %100

100:                                              ; preds = %72, %49
  %101 = phi ptr [ %99, %72 ], [ %64, %49 ]
  %102 = or i32 %56, 479
  %103 = getelementptr i32, ptr %101, i32 %62
  store i32 %102, ptr %103, align 4
  %104 = add i32 %50, 4096
  %105 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %4) #6
  br i1 %105, label %49, label %106

106:                                              ; preds = %100, %37
  call void @mutex_unlock(ptr noundef %0) #6
  %107 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 2, i32 1
  %108 = load ptr, ptr %107, align 4
  store ptr %25, ptr %107, align 4
  store ptr %6, ptr %25, align 8
  %109 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %108, ptr %109, align 4
  store volatile ptr %25, ptr %108, align 4
  call void @mutex_unlock(ptr noundef %5) #6
  br label %133

110:                                              ; preds = %66
  %111 = icmp eq i32 %50, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %110
  %113 = load i64, ptr %46, align 8
  %114 = trunc i64 %113 to i32
  %115 = add i32 %50, -1
  %116 = add i32 %115, %114
  %117 = icmp ult i32 %116, %114
  br i1 %117, label %128, label %118

118:                                              ; preds = %118, %112
  %119 = phi i32 [ %126, %118 ], [ %114, %112 ]
  %120 = lshr i32 %119, 25
  %121 = lshr i32 %119, 12
  %122 = and i32 %121, 8191
  %123 = getelementptr %struct.lima_vm, ptr %0, i32 0, i32 5, i32 %120
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i32, ptr %124, i32 %122
  store i32 0, ptr %125, align 4
  %126 = add i32 %119, 4096
  %127 = icmp ugt i32 %126, %116
  br i1 %127, label %128, label %118

128:                                              ; preds = %118, %112, %110
  call void @drm_mm_remove_node(ptr noundef %31) #6
  br label %129

129:                                              ; preds = %128, %27
  %130 = phi i32 [ %35, %27 ], [ -12, %128 ]
  call void @mutex_unlock(ptr noundef %0) #6
  call void @kfree(ptr noundef nonnull %25) #6
  br label %131

131:                                              ; preds = %129, %23
  %132 = phi i32 [ %130, %129 ], [ -12, %23 ]
  call void @mutex_unlock(ptr noundef %5) #6
  br label %133

133:                                              ; preds = %131, %106, %22, %17
  %134 = phi i32 [ 0, %17 ], [ %132, %131 ], [ 0, %106 ], [ -2, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 %134
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_dma_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_vm_bo_del(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 2
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.lima_bo_va, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %5

13:                                               ; preds = %9, %5
  %14 = phi ptr [ null, %5 ], [ %7, %9 ]
  %15 = getelementptr inbounds %struct.lima_bo_va, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef %3) #6
  br label %52

20:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef %0) #6
  %21 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.lima_bo_va, ptr %14, i32 0, i32 2, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %27, %24 ], [ %22, %20 ]
  %30 = getelementptr inbounds %struct.lima_bo_va, ptr %14, i32 0, i32 2
  %31 = getelementptr inbounds %struct.lima_bo_va, ptr %14, i32 0, i32 2, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = add i32 %29, -1
  %35 = add i32 %34, %33
  %36 = icmp ult i32 %35, %33
  br i1 %36, label %47, label %37

37:                                               ; preds = %37, %28
  %38 = phi i32 [ %45, %37 ], [ %33, %28 ]
  %39 = lshr i32 %38, 25
  %40 = lshr i32 %38, 12
  %41 = and i32 %40, 8191
  %42 = getelementptr %struct.lima_vm, ptr %0, i32 0, i32 5, i32 %39
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i32, ptr %43, i32 %41
  store i32 0, ptr %44, align 4
  %45 = add i32 %38, 4096
  %46 = icmp ugt i32 %45, %35
  br i1 %46, label %47, label %37

47:                                               ; preds = %37, %28
  tail call void @drm_mm_remove_node(ptr noundef %30) #6
  tail call void @mutex_unlock(ptr noundef %0) #6
  %48 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %14, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  tail call void @mutex_unlock(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %14) #6
  br label %52

52:                                               ; preds = %47, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_vm_get_va(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 2
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.lima_bo_va, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %5

13:                                               ; preds = %9, %5
  %14 = phi ptr [ null, %5 ], [ %7, %9 ]
  %15 = getelementptr inbounds %struct.lima_bo_va, ptr %14, i32 0, i32 2, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lima_vm_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1216) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lima_vm, ptr %3, i32 0, i32 3
  store ptr %0, ptr %6, align 8
  tail call void @__mutex_init(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @lima_vm_create.__key) #6
  %7 = getelementptr inbounds %struct.lima_vm, ptr %3, i32 0, i32 1
  store volatile i32 1, ptr %7, align 4
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.lima_vm, ptr %3, i32 0, i32 4
  %10 = getelementptr inbounds %struct.lima_vm, ptr %3, i32 0, i32 4, i32 1
  %11 = tail call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef 4096, ptr noundef %10, i32 noundef 11712, i32 noundef 260) #6
  store ptr %11, ptr %9, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %60, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.lima_vm, ptr %3, i32 0, i32 5, i32 127
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr %struct.lima_vm, ptr %3, i32 0, i32 5, i32 127, i32 1
  %27 = tail call ptr @dma_alloc_attrs(ptr noundef %25, i32 noundef 32768, ptr noundef %26, i32 noundef 11712, i32 noundef 260) #6
  store ptr %27, ptr %20, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %67, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %26, align 8
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i32, ptr %31, i32 1016
  %33 = or i32 %30, 1
  store i32 %33, ptr %32, align 4
  %34 = add i32 %30, 4096
  %35 = or i32 %34, 1
  %36 = getelementptr i32, ptr %31, i32 1017
  store i32 %35, ptr %36, align 4
  %37 = add i32 %30, 8192
  %38 = or i32 %37, 1
  %39 = getelementptr i32, ptr %31, i32 1018
  store i32 %38, ptr %39, align 4
  %40 = add i32 %30, 12288
  %41 = or i32 %40, 1
  %42 = getelementptr i32, ptr %31, i32 1019
  store i32 %41, ptr %42, align 4
  %43 = add i32 %30, 16384
  %44 = or i32 %43, 1
  %45 = getelementptr i32, ptr %31, i32 1020
  store i32 %44, ptr %45, align 4
  %46 = add i32 %30, 20480
  %47 = or i32 %46, 1
  %48 = getelementptr i32, ptr %31, i32 1021
  store i32 %47, ptr %48, align 4
  %49 = add i32 %30, 24576
  %50 = or i32 %49, 1
  %51 = getelementptr i32, ptr %31, i32 1022
  store i32 %50, ptr %51, align 4
  %52 = add i32 %30, 28672
  %53 = or i32 %52, 1
  %54 = getelementptr i32, ptr %31, i32 1023
  store i32 %53, ptr %54, align 4
  %55 = load ptr, ptr %20, align 4
  br label %56

56:                                               ; preds = %29, %17
  %57 = phi ptr [ %55, %29 ], [ %21, %17 ]
  %58 = or i32 %19, 479
  %59 = getelementptr i32, ptr %57, i32 7936
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %13
  %61 = getelementptr inbounds %struct.lima_vm, ptr %3, i32 0, i32 2
  %62 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 14
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 15
  %65 = load i64, ptr %64, align 8
  %66 = sub i64 %65, %63
  tail call void @drm_mm_init(ptr noundef %61, i64 noundef %63, i64 noundef %66) #6
  br label %72

67:                                               ; preds = %23
  %68 = load ptr, ptr %0, align 8
  %69 = load ptr, ptr %9, align 4
  %70 = load i32, ptr %10, align 8
  tail call void @dma_free_attrs(ptr noundef %68, i32 noundef 4096, ptr noundef %69, i32 noundef %70, i32 noundef 4) #6
  br label %71

71:                                               ; preds = %67, %5
  tail call void @kfree(ptr noundef nonnull %3) #6
  br label %72

72:                                               ; preds = %71, %60, %1
  %73 = phi ptr [ null, %71 ], [ %3, %60 ], [ null, %1 ]
  ret ptr %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_vm_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %2) #6
  %3 = getelementptr i8, ptr %0, i32 168
  %4 = getelementptr i8, ptr %0, i32 156
  br label %5

5:                                                ; preds = %15, %1
  %6 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %7 = getelementptr [128 x %struct.lima_vm_page], ptr %3, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %4, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.lima_vm_page, ptr %7, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef 32768, ptr noundef nonnull %8, i32 noundef %14, i32 noundef 4) #6
  br label %15

15:                                               ; preds = %10, %5
  %16 = add nuw nsw i32 %6, 1
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %5

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %0, i32 160
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i8, ptr %0, i32 164
  %26 = load i32, ptr %25, align 4
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef 4096, ptr noundef nonnull %20, i32 noundef %26, i32 noundef 4) #6
  br label %27

27:                                               ; preds = %22, %18
  %28 = getelementptr i8, ptr %0, i32 -20
  tail call void @kfree(ptr noundef %28) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_vm_print(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_vm, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %141, label %5

5:                                                ; preds = %138, %1
  %6 = phi i32 [ %139, %138 ], [ 0, %1 ]
  %7 = getelementptr %struct.lima_vm, ptr %0, i32 0, i32 5, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %138, label %10

10:                                               ; preds = %5
  %11 = shl i32 %6, 3
  %12 = getelementptr i32, ptr %3, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %13) #8
  br label %15

15:                                               ; preds = %23, %10
  %16 = phi i32 [ 0, %10 ], [ %24, %23 ]
  %17 = phi ptr [ %8, %10 ], [ %18, %23 ]
  %18 = getelementptr i32, ptr %17, i32 1
  %19 = load i32, ptr %17, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %16, i32 noundef %19) #8
  br label %23

23:                                               ; preds = %21, %15
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %15

26:                                               ; preds = %23
  %27 = or i32 %11, 1
  %28 = getelementptr i32, ptr %3, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %27, i32 noundef %29) #8
  br label %31

31:                                               ; preds = %39, %26
  %32 = phi i32 [ 0, %26 ], [ %40, %39 ]
  %33 = phi ptr [ %18, %26 ], [ %34, %39 ]
  %34 = getelementptr i32, ptr %33, i32 1
  %35 = load i32, ptr %33, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %32, i32 noundef %35) #8
  br label %39

39:                                               ; preds = %37, %31
  %40 = add nuw nsw i32 %32, 1
  %41 = icmp eq i32 %40, 1024
  br i1 %41, label %42, label %31

42:                                               ; preds = %39
  %43 = or i32 %11, 2
  %44 = getelementptr i32, ptr %3, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %43, i32 noundef %45) #8
  br label %47

47:                                               ; preds = %55, %42
  %48 = phi i32 [ 0, %42 ], [ %56, %55 ]
  %49 = phi ptr [ %34, %42 ], [ %50, %55 ]
  %50 = getelementptr i32, ptr %49, i32 1
  %51 = load i32, ptr %49, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %48, i32 noundef %51) #8
  br label %55

55:                                               ; preds = %53, %47
  %56 = add nuw nsw i32 %48, 1
  %57 = icmp eq i32 %56, 1024
  br i1 %57, label %58, label %47

58:                                               ; preds = %55
  %59 = or i32 %11, 3
  %60 = getelementptr i32, ptr %3, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %59, i32 noundef %61) #8
  br label %63

63:                                               ; preds = %71, %58
  %64 = phi i32 [ 0, %58 ], [ %72, %71 ]
  %65 = phi ptr [ %50, %58 ], [ %66, %71 ]
  %66 = getelementptr i32, ptr %65, i32 1
  %67 = load i32, ptr %65, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %64, i32 noundef %67) #8
  br label %71

71:                                               ; preds = %69, %63
  %72 = add nuw nsw i32 %64, 1
  %73 = icmp eq i32 %72, 1024
  br i1 %73, label %74, label %63

74:                                               ; preds = %71
  %75 = or i32 %11, 4
  %76 = getelementptr i32, ptr %3, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %75, i32 noundef %77) #8
  br label %79

79:                                               ; preds = %87, %74
  %80 = phi i32 [ 0, %74 ], [ %88, %87 ]
  %81 = phi ptr [ %66, %74 ], [ %82, %87 ]
  %82 = getelementptr i32, ptr %81, i32 1
  %83 = load i32, ptr %81, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %80, i32 noundef %83) #8
  br label %87

87:                                               ; preds = %85, %79
  %88 = add nuw nsw i32 %80, 1
  %89 = icmp eq i32 %88, 1024
  br i1 %89, label %90, label %79

90:                                               ; preds = %87
  %91 = or i32 %11, 5
  %92 = getelementptr i32, ptr %3, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %91, i32 noundef %93) #8
  br label %95

95:                                               ; preds = %103, %90
  %96 = phi i32 [ 0, %90 ], [ %104, %103 ]
  %97 = phi ptr [ %82, %90 ], [ %98, %103 ]
  %98 = getelementptr i32, ptr %97, i32 1
  %99 = load i32, ptr %97, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %96, i32 noundef %99) #8
  br label %103

103:                                              ; preds = %101, %95
  %104 = add nuw nsw i32 %96, 1
  %105 = icmp eq i32 %104, 1024
  br i1 %105, label %106, label %95

106:                                              ; preds = %103
  %107 = or i32 %11, 6
  %108 = getelementptr i32, ptr %3, i32 %107
  %109 = load i32, ptr %108, align 4
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %107, i32 noundef %109) #8
  br label %111

111:                                              ; preds = %119, %106
  %112 = phi i32 [ 0, %106 ], [ %120, %119 ]
  %113 = phi ptr [ %98, %106 ], [ %114, %119 ]
  %114 = getelementptr i32, ptr %113, i32 1
  %115 = load i32, ptr %113, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %112, i32 noundef %115) #8
  br label %119

119:                                              ; preds = %117, %111
  %120 = add nuw nsw i32 %112, 1
  %121 = icmp eq i32 %120, 1024
  br i1 %121, label %122, label %111

122:                                              ; preds = %119
  %123 = or i32 %11, 7
  %124 = getelementptr i32, ptr %3, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %123, i32 noundef %125) #8
  br label %127

127:                                              ; preds = %135, %122
  %128 = phi i32 [ 0, %122 ], [ %136, %135 ]
  %129 = phi ptr [ %114, %122 ], [ %130, %135 ]
  %130 = getelementptr i32, ptr %129, i32 1
  %131 = load i32, ptr %129, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %128, i32 noundef %131) #8
  br label %135

135:                                              ; preds = %133, %127
  %136 = add nuw nsw i32 %128, 1
  %137 = icmp eq i32 %136, 1024
  br i1 %137, label %138, label %127

138:                                              ; preds = %135, %5
  %139 = add nuw nsw i32 %6, 1
  %140 = icmp eq i32 %139, 128
  br i1 %140, label %141, label %5

141:                                              ; preds = %138, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_vm_map_bo(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.sg_dma_page_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.lima_bo, ptr %1, i32 0, i32 2
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %105, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.lima_bo_va, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %105, label %17

17:                                               ; preds = %15
  tail call void @mutex_lock(ptr noundef %0) #6
  %18 = getelementptr inbounds %struct.lima_bo_va, ptr %9, i32 0, i32 2, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = shl i32 %2, 12
  %21 = trunc i64 %19 to i32
  %22 = add i32 %20, %21
  %23 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %1, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sg_table, ptr %24, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %4, ptr noundef %25, i32 noundef %27, i32 noundef %2) #6
  %28 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %4) #6
  br i1 %28, label %29, label %103

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.sg_page_iter, ptr %4, i32 0, i32 1
  %31 = getelementptr inbounds %struct.lima_vm, ptr %0, i32 0, i32 3
  %32 = getelementptr inbounds %struct.lima_vm, ptr %0, i32 0, i32 4
  br label %33

33:                                               ; preds = %82, %29
  %34 = phi i32 [ 0, %29 ], [ %86, %82 ]
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.scatterlist, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %30, align 4
  %39 = shl i32 %38, 12
  %40 = add i32 %39, %37
  %41 = add i32 %34, %22
  %42 = lshr i32 %41, 25
  %43 = lshr i32 %41, 12
  %44 = and i32 %43, 8191
  %45 = getelementptr %struct.lima_vm, ptr %0, i32 0, i32 5, i32 %42
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %82

48:                                               ; preds = %33
  %49 = load ptr, ptr %31, align 8
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr %struct.lima_vm, ptr %0, i32 0, i32 5, i32 %42, i32 1
  %52 = call ptr @dma_alloc_attrs(ptr noundef %50, i32 noundef 32768, ptr noundef %51, i32 noundef 11712, i32 noundef 260) #6
  store ptr %52, ptr %45, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %88, label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %51, align 4
  %56 = load ptr, ptr %32, align 4
  %57 = shl nuw nsw i32 %42, 3
  %58 = getelementptr i32, ptr %56, i32 %57
  %59 = or i32 %55, 1
  store i32 %59, ptr %58, align 4
  %60 = add i32 %55, 4096
  %61 = or i32 %60, 1
  %62 = getelementptr i32, ptr %58, i32 1
  store i32 %61, ptr %62, align 4
  %63 = add i32 %55, 8192
  %64 = or i32 %63, 1
  %65 = getelementptr i32, ptr %58, i32 2
  store i32 %64, ptr %65, align 4
  %66 = add i32 %55, 12288
  %67 = or i32 %66, 1
  %68 = getelementptr i32, ptr %58, i32 3
  store i32 %67, ptr %68, align 4
  %69 = add i32 %55, 16384
  %70 = or i32 %69, 1
  %71 = getelementptr i32, ptr %58, i32 4
  store i32 %70, ptr %71, align 4
  %72 = add i32 %55, 20480
  %73 = or i32 %72, 1
  %74 = getelementptr i32, ptr %58, i32 5
  store i32 %73, ptr %74, align 4
  %75 = add i32 %55, 24576
  %76 = or i32 %75, 1
  %77 = getelementptr i32, ptr %58, i32 6
  store i32 %76, ptr %77, align 4
  %78 = add i32 %55, 28672
  %79 = or i32 %78, 1
  %80 = getelementptr i32, ptr %58, i32 7
  store i32 %79, ptr %80, align 4
  %81 = load ptr, ptr %45, align 4
  br label %82

82:                                               ; preds = %54, %33
  %83 = phi ptr [ %81, %54 ], [ %46, %33 ]
  %84 = or i32 %40, 479
  %85 = getelementptr i32, ptr %83, i32 %44
  store i32 %84, ptr %85, align 4
  %86 = add i32 %34, 4096
  %87 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %4) #6
  br i1 %87, label %33, label %103

88:                                               ; preds = %48
  %89 = icmp eq i32 %34, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %88
  %91 = add i32 %41, -1
  %92 = icmp ugt i32 %22, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %93, %90
  %94 = phi i32 [ %101, %93 ], [ %22, %90 ]
  %95 = lshr i32 %94, 25
  %96 = lshr i32 %94, 12
  %97 = and i32 %96, 8191
  %98 = getelementptr %struct.lima_vm, ptr %0, i32 0, i32 5, i32 %95
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i32, ptr %99, i32 %97
  store i32 0, ptr %100, align 4
  %101 = add i32 %94, 4096
  %102 = icmp ugt i32 %101, %91
  br i1 %102, label %103, label %93

103:                                              ; preds = %93, %90, %88, %82, %17
  %104 = phi i32 [ 0, %17 ], [ -12, %90 ], [ -12, %88 ], [ -12, %93 ], [ 0, %82 ]
  call void @mutex_unlock(ptr noundef %0) #6
  br label %105

105:                                              ; preds = %103, %15, %7
  %106 = phi i32 [ -2, %15 ], [ %104, %103 ], [ -2, %7 ]
  call void @mutex_unlock(ptr noundef %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
