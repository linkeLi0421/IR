; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_gem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
%struct.lima_bo = type { %struct.drm_gem_shmem_object, %struct.mutex, %struct.list_head, i32 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.lima_submit = type { ptr, i32, i32, ptr, ptr, i32, [2 x i32], i32, ptr }
%struct.drm_lima_gem_submit_bo = type { i32, i32 }
%struct.lima_ctx = type { %struct.kref, ptr, [2 x %struct.lima_sched_context], %struct.atomic_t, [16 x i8], i32 }
%struct.lima_sched_context = type { %struct.drm_sched_entity }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_fence = type { ptr, ptr, %union.anon.74, i64, i64, i32, %struct.kref, i32 }
%union.anon.74 = type { i64 }

@lima_heap_init_nr_pages = external dso_local local_unnamed_addr global i32, align 4
@lima_gem_create_object.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"&bo->lock\00", align 1
@lima_gem_funcs = internal constant %struct.drm_gem_object_funcs { ptr @lima_gem_free_object, ptr @lima_gem_object_open, ptr @lima_gem_object_close, ptr @drm_gem_shmem_object_print_info, ptr null, ptr @lima_gem_pin, ptr @drm_gem_shmem_object_unpin, ptr @drm_gem_shmem_object_get_sg_table, ptr @lima_gem_vmap, ptr @drm_gem_shmem_object_vunmap, ptr @lima_gem_mmap, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"lima gem free bo still has va\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_heap_alloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.sg_table, align 4
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.lima_bo, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @lima_heap_init_nr_pages, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %15 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %86

18:                                               ; preds = %2
  %19 = icmp eq i32 %13, 0
  %20 = shl i32 %14, 12
  %21 = shl i32 %13, 1
  %22 = select i1 %19, i32 %20, i32 %21
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %16)
  %24 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %24) #10
  %25 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load i32, ptr %15, align 8
  %30 = lshr i32 %29, 10
  %31 = and i32 %30, 4194300
  %32 = tail call noalias ptr @kvmalloc_node(i32 noundef %31, i32 noundef 3520, i32 noundef -1) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef %24) #10
  br label %86

35:                                               ; preds = %28
  store ptr %32, ptr %25, align 4
  %36 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 3
  store i32 1, ptr %36, align 8
  %37 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %37) #10
  br label %38

38:                                               ; preds = %35, %18
  %39 = phi ptr [ %32, %35 ], [ %26, %18 ]
  %40 = lshr i32 %13, 12
  %41 = lshr i32 %23, 12
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 3
  br label %45

45:                                               ; preds = %52, %43
  %46 = phi i32 [ %40, %43 ], [ %54, %52 ]
  %47 = load i32, ptr %44, align 4
  %48 = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %7, i32 noundef %46, i32 noundef %47) #10
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  tail call void @mutex_unlock(ptr noundef %24) #10
  %51 = ptrtoint ptr %48 to i32
  br label %86

52:                                               ; preds = %45
  %53 = getelementptr ptr, ptr %39, i32 %46
  store ptr %48, ptr %53, align 4
  %54 = add nuw nsw i32 %46, 1
  %55 = icmp eq i32 %54, %41
  br i1 %55, label %56, label %45

56:                                               ; preds = %52, %38
  %57 = phi i32 [ %40, %38 ], [ %41, %52 ]
  tail call void @mutex_unlock(ptr noundef %24) #10
  %58 = call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %3, ptr noundef %39, i32 noundef %57, i32 noundef 0, i32 noundef %23, i32 noundef -1, i32 noundef 3264) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %62, align 4
  %66 = getelementptr inbounds %struct.sg_table, ptr %62, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %65, i32 noundef %67, i32 noundef 0, i32 noundef 0) #10
  %68 = load ptr, ptr %61, align 4
  call void @sg_free_table(ptr noundef %68) #10
  br label %74

69:                                               ; preds = %60
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %71 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 12) #12
  store ptr %71, ptr %61, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  call void @sg_free_table(ptr noundef nonnull %3) #10
  br label %86

74:                                               ; preds = %69, %64
  %75 = call i32 @dma_map_sgtable(ptr noundef %11, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  call void @sg_free_table(ptr noundef nonnull %3) #10
  %78 = load ptr, ptr %61, align 4
  call void @kfree(ptr noundef %78) #10
  store ptr null, ptr %61, align 4
  br label %86

79:                                               ; preds = %74
  %80 = load ptr, ptr %61, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %80, ptr noundef nonnull align 4 dereferenceable(12) %3, i32 12, i1 false)
  %81 = icmp eq ptr %1, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = call i32 @lima_vm_map_bo(ptr noundef nonnull %1, ptr noundef %0, i32 noundef %40) #10
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %79
  store i32 %23, ptr %12, align 4
  br label %86

86:                                               ; preds = %85, %82, %77, %73, %56, %50, %34, %2
  %87 = phi i32 [ %75, %77 ], [ 0, %85 ], [ -12, %73 ], [ -12, %34 ], [ -28, %2 ], [ %58, %56 ], [ %83, %82 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %87
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_vm_map_bo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_gem_create_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @drm_gem_shmem_create(ptr noundef %0, i32 noundef %2) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %42

10:                                               ; preds = %5
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.drm_gem_object, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 17
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -7
  %20 = or i32 %19, 4
  store i32 %20, ptr %17, align 4
  br i1 %12, label %24, label %21

21:                                               ; preds = %10
  %22 = tail call i32 @lima_heap_alloc(ptr noundef %6, ptr noundef null)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %31

24:                                               ; preds = %10
  %25 = tail call ptr @drm_gem_shmem_get_pages_sgt(ptr noundef %6) #10
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  br label %31

29:                                               ; preds = %24, %21
  %30 = tail call i32 @drm_gem_handle_create(ptr noundef %1, ptr noundef %6, ptr noundef %4) #10
  br label %31

31:                                               ; preds = %29, %27, %21
  %32 = phi i32 [ %22, %21 ], [ %30, %29 ], [ %28, %27 ]
  %33 = icmp eq ptr %6, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #10, !srcloc !10
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #10, !srcloc !11
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %42, label %40, !prof !12

40:                                               ; preds = %38
  tail call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef 3) #10
  br label %42

41:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %6) #10, !callees !14
  br label %42

42:                                               ; preds = %41, %40, %38, %31, %8
  %43 = phi i32 [ %9, %8 ], [ %32, %31 ], [ %32, %38 ], [ %32, %40 ], [ %32, %41 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_create(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_get_pages_sgt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lima_gem_create_object(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 320) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lima_bo, ptr %4, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @lima_gem_create_object.__key) #10
  %8 = getelementptr inbounds %struct.lima_bo, ptr %4, i32 0, i32 2
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.lima_bo, ptr %4, i32 0, i32 2, i32 1
  store ptr %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %4, i32 0, i32 11
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 11
  store ptr @lima_gem_funcs, ptr %11, align 8
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_gem_get_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @drm_gem_object_lookup(ptr noundef %0, i32 noundef %1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @lima_vm_get_va(ptr noundef %7, ptr noundef nonnull %8) #10
  store i32 %11, ptr %2, align 4
  %12 = getelementptr inbounds %struct.drm_gem_object, ptr %8, i32 0, i32 4, i32 1, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = shl i64 %13, 12
  store i64 %14, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #10, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #10, !srcloc !11
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef 3) #10
  br label %22

21:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %8) #10, !callees !14
  br label %22

22:                                               ; preds = %21, %20, %18, %4
  %23 = phi i32 [ -2, %4 ], [ 0, %18 ], [ 0, %20 ], [ 0, %21 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_vm_get_va(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_gem_submit(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.ww_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.lima_submit, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.lima_submit, ptr %1, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = tail call ptr @drm_syncobj_find(ptr noundef %0, i32 noundef %11) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %227, label %16

16:                                               ; preds = %13, %2
  %17 = phi ptr [ %14, %13 ], [ null, %2 ]
  %18 = getelementptr inbounds %struct.lima_submit, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.lima_submit, ptr %1, i32 0, i32 3
  br label %23

23:                                               ; preds = %41, %21
  %24 = phi i32 [ 0, %21 ], [ %43, %41 ]
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr %struct.drm_lima_gem_submit_bo, ptr %25, i32 %24
  %27 = load i32, ptr %26, align 4
  %28 = tail call ptr @drm_gem_object_lookup(ptr noundef %0, i32 noundef %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %193, label %30

30:                                               ; preds = %23
  %31 = tail call i32 @lima_vm_bo_add(ptr noundef %7, ptr noundef nonnull %28, i1 noundef zeroext false) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #10, !srcloc !10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #10, !srcloc !11
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %193, label %39, !prof !12

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef 3) #10
  br label %193

40:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %28) #10, !callees !14
  br label %193

41:                                               ; preds = %30
  %42 = getelementptr ptr, ptr %9, i32 %24
  store ptr %28, ptr %42, align 4
  %43 = add nuw i32 %24, 1
  %44 = load i32, ptr %18, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %23, label %46

46:                                               ; preds = %41, %16
  %47 = phi i32 [ 0, %16 ], [ %44, %41 ]
  %48 = call i32 @drm_gem_lock_reservations(ptr noundef %9, i32 noundef %47, ptr noundef nonnull %4) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %193

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.lima_submit, ptr %1, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %1, align 4
  %54 = getelementptr inbounds %struct.lima_ctx, ptr %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.lima_submit, ptr %1, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.lima_sched_context, ptr %54, i32 %56
  %58 = load i32, ptr %18, align 4
  %59 = call i32 @lima_sched_task_init(ptr noundef %52, ptr noundef %57, ptr noundef %9, i32 noundef %58, ptr noundef %7) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %190

61:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4
  %62 = getelementptr %struct.lima_submit, ptr %1, i32 0, i32 6, i32 0
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %61
  %66 = call i32 @drm_syncobj_find_fence(ptr noundef %0, i32 noundef %63, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load ptr, ptr %51, align 4
  %70 = load ptr, ptr %3, align 4
  %71 = call i32 @drm_sched_job_add_dependency(ptr noundef %69, ptr noundef %70) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %95, %68
  %74 = phi i32 [ %71, %68 ], [ %98, %95 ]
  %75 = load ptr, ptr %3, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.dma_fence, ptr %75, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #10, !srcloc !10
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 1, ptr elementtype(i32) %78) #10, !srcloc !11
  %80 = extractvalue { i32, i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = icmp sgt i32 %80, 0
  br i1 %83, label %86, label %84, !prof !12

84:                                               ; preds = %82
  call void @refcount_warn_saturate(ptr noundef %78, i32 noundef 3) #10
  br label %86

85:                                               ; preds = %77
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  call void @dma_fence_release(ptr noundef %78) #10, !callees !14
  br label %86

86:                                               ; preds = %92, %85, %84, %82, %73, %65
  %87 = phi i32 [ %74, %85 ], [ %74, %84 ], [ %74, %82 ], [ %74, %73 ], [ %66, %65 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %187

88:                                               ; preds = %68, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4
  %89 = getelementptr %struct.lima_submit, ptr %1, i32 0, i32 6, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = call i32 @drm_syncobj_find_fence(ptr noundef %0, i32 noundef %90, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %86

95:                                               ; preds = %92
  %96 = load ptr, ptr %51, align 4
  %97 = load ptr, ptr %3, align 4
  %98 = call i32 @drm_sched_job_add_dependency(ptr noundef %96, ptr noundef %97) #10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %73

100:                                              ; preds = %95, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %101 = load i32, ptr %18, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %138, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.lima_submit, ptr %1, i32 0, i32 3
  %105 = getelementptr inbounds %struct.lima_submit, ptr %1, i32 0, i32 2
  br label %106

106:                                              ; preds = %134, %103
  %107 = phi i32 [ %101, %103 ], [ %135, %134 ]
  %108 = phi i32 [ 0, %103 ], [ %136, %134 ]
  %109 = load ptr, ptr %51, align 4
  %110 = getelementptr ptr, ptr %9, i32 %108
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %104, align 4
  %113 = getelementptr %struct.drm_lima_gem_submit_bo, ptr %112, i32 %108, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 2
  %116 = icmp ne i32 %115, 0
  %117 = load i32, ptr %105, align 4
  %118 = and i32 %117, 1
  br i1 %116, label %125, label %119

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.drm_gem_object, ptr %111, i32 0, i32 9
  %121 = load ptr, ptr %120, align 8
  %122 = call i32 @dma_resv_reserve_shared(ptr noundef %121, i32 noundef 1) #10
  %123 = or i32 %122, %118
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %129

125:                                              ; preds = %106
  %126 = icmp eq i32 %118, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %125, %119
  %128 = call i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %109, ptr noundef %111, i1 noundef zeroext %116) #10
  br label %129

129:                                              ; preds = %127, %119
  %130 = phi i32 [ %128, %127 ], [ %122, %119 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %187

132:                                              ; preds = %129
  %133 = load i32, ptr %18, align 4
  br label %134

134:                                              ; preds = %132, %125
  %135 = phi i32 [ %133, %132 ], [ %107, %125 ]
  %136 = add nuw i32 %108, 1
  %137 = icmp ult i32 %136, %135
  br i1 %137, label %106, label %138

138:                                              ; preds = %134, %100
  %139 = load ptr, ptr %51, align 4
  %140 = call ptr @lima_sched_context_queue_task(ptr noundef %139) #10
  %141 = load i32, ptr %18, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %162, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.lima_submit, ptr %1, i32 0, i32 3
  br label %145

145:                                              ; preds = %158, %143
  %146 = phi i32 [ 0, %143 ], [ %159, %158 ]
  %147 = load ptr, ptr %144, align 4
  %148 = getelementptr %struct.drm_lima_gem_submit_bo, ptr %147, i32 %146, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 2
  %151 = icmp eq i32 %150, 0
  %152 = getelementptr ptr, ptr %9, i32 %146
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.drm_gem_object, ptr %153, i32 0, i32 9
  %155 = load ptr, ptr %154, align 8
  br i1 %151, label %157, label %156

156:                                              ; preds = %145
  call void @dma_resv_add_excl_fence(ptr noundef %155, ptr noundef %140) #10
  br label %158

157:                                              ; preds = %145
  call void @dma_resv_add_shared_fence(ptr noundef %155, ptr noundef %140) #10
  br label %158

158:                                              ; preds = %157, %156
  %159 = add nuw i32 %146, 1
  %160 = load i32, ptr %18, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %145, label %162

162:                                              ; preds = %158, %138
  %163 = phi i32 [ 0, %138 ], [ %160, %158 ]
  call void @drm_gem_unlock_reservations(ptr noundef %9, i32 noundef %163, ptr noundef nonnull %4) #10
  %164 = load i32, ptr %18, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %183, label %166

166:                                              ; preds = %179, %162
  %167 = phi i32 [ %180, %179 ], [ 0, %162 ]
  %168 = getelementptr ptr, ptr %9, i32 %167
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %179, label %171

171:                                              ; preds = %166
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %169) #10, !srcloc !10
  %172 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %169, ptr nonnull %169, i32 1, ptr nonnull elementtype(i32) %169) #10, !srcloc !11
  %173 = extractvalue { i32, i32, i32 } %172, 0
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = icmp sgt i32 %173, 0
  br i1 %176, label %179, label %177, !prof !12

177:                                              ; preds = %175
  call void @refcount_warn_saturate(ptr noundef nonnull %169, i32 noundef 3) #10
  br label %179

178:                                              ; preds = %171
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  call void @drm_gem_object_free(ptr noundef nonnull %169) #10, !callees !14
  br label %179

179:                                              ; preds = %178, %177, %175, %166
  %180 = add nuw i32 %167, 1
  %181 = load i32, ptr %18, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %166, label %183

183:                                              ; preds = %179, %162
  %184 = icmp eq ptr %17, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %183
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %17, ptr noundef %140) #10
  call fastcc void @drm_syncobj_put(ptr noundef nonnull %17)
  br label %186

186:                                              ; preds = %185, %183
  call fastcc void @dma_fence_put(ptr noundef %140)
  br label %227

187:                                              ; preds = %129, %86
  %188 = phi i32 [ %87, %86 ], [ %130, %129 ]
  %189 = load ptr, ptr %51, align 4
  call void @lima_sched_task_fini(ptr noundef %189) #10
  br label %190

190:                                              ; preds = %187, %50
  %191 = phi i32 [ %59, %50 ], [ %188, %187 ]
  %192 = load i32, ptr %18, align 4
  call void @drm_gem_unlock_reservations(ptr noundef %9, i32 noundef %192, ptr noundef nonnull %4) #10
  br label %193

193:                                              ; preds = %190, %46, %40, %39, %37, %23
  %194 = phi i32 [ %48, %46 ], [ %191, %190 ], [ %31, %40 ], [ %31, %39 ], [ %31, %37 ], [ -2, %23 ]
  %195 = load i32, ptr %18, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %217, label %197

197:                                              ; preds = %213, %193
  %198 = phi i32 [ %214, %213 ], [ 0, %193 ]
  %199 = getelementptr ptr, ptr %9, i32 %198
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %217, label %202

202:                                              ; preds = %197
  call void @lima_vm_bo_del(ptr noundef %7, ptr noundef nonnull %200) #10
  %203 = load ptr, ptr %199, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %213, label %205

205:                                              ; preds = %202
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %203) #10, !srcloc !10
  %206 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %203, ptr nonnull %203, i32 1, ptr nonnull elementtype(i32) %203) #10, !srcloc !11
  %207 = extractvalue { i32, i32, i32 } %206, 0
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %212, label %209

209:                                              ; preds = %205
  %210 = icmp sgt i32 %207, 0
  br i1 %210, label %213, label %211, !prof !12

211:                                              ; preds = %209
  call void @refcount_warn_saturate(ptr noundef nonnull %203, i32 noundef 3) #10
  br label %213

212:                                              ; preds = %205
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  call void @drm_gem_object_free(ptr noundef nonnull %203) #10, !callees !14
  br label %213

213:                                              ; preds = %212, %211, %209, %202
  %214 = add nuw i32 %198, 1
  %215 = load i32, ptr %18, align 4
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %197, label %217

217:                                              ; preds = %213, %197, %193
  %218 = icmp eq ptr %17, null
  br i1 %218, label %227, label %219

219:                                              ; preds = %217
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %17) #10, !srcloc !10
  %220 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #10, !srcloc !11
  %221 = extractvalue { i32, i32, i32 } %220, 0
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = icmp sgt i32 %221, 0
  br i1 %224, label %227, label %225, !prof !12

225:                                              ; preds = %223
  call void @refcount_warn_saturate(ptr noundef nonnull %17, i32 noundef 3) #10
  br label %227

226:                                              ; preds = %219
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  call void @drm_syncobj_free(ptr noundef nonnull %17) #10, !callees !14
  br label %227

227:                                              ; preds = %226, %225, %223, %217, %186, %13
  %228 = phi i32 [ 0, %186 ], [ -2, %13 ], [ %194, %217 ], [ %194, %223 ], [ %194, %225 ], [ %194, %226 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %228
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_vm_bo_add(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_lock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_sched_task_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_sched_context_queue_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_unlock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_syncobj_put(ptr noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !11
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %9, label %7, !prof !12

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #10
  br label %9

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void @drm_syncobj_free(ptr noundef %0) #10, !callees !14
  br label %9

9:                                                ; preds = %8, %7, %5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !11
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !12

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #10
  br label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void @dma_fence_release(ptr noundef %4) #10, !callees !14
  br label %12

12:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_sched_task_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_bo_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_gem_wait(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = and i32 %2, 2
  %8 = icmp ne i32 %7, 0
  %9 = tail call i32 @drm_timeout_abs_to_jiffies(i64 noundef %3) #10
  %10 = tail call i32 @drm_gem_dma_resv_wait(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %8, i32 noundef %9) #10
  %11 = icmp eq i32 %10, -62
  %12 = icmp eq i32 %9, 0
  %13 = select i1 %12, i32 -16, i32 -110
  %14 = select i1 %11, i32 %13, i32 %10
  br label %15

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %14, %6 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_timeout_abs_to_jiffies(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dma_resv_wait(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_gem_free_object(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.lima_bo, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #13
  br label %10

10:                                               ; preds = %5, %1
  tail call void @drm_gem_shmem_free(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_gem_object_open(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @lima_vm_bo_add(ptr noundef %5, ptr noundef %0, i1 noundef zeroext true) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_gem_object_close(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @lima_vm_bo_del(ptr noundef %5, ptr noundef %0) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_print_info(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
  tail call void @drm_gem_shmem_print_info(ptr noundef %2, ptr noundef %0, i32 noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_gem_pin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.lima_bo, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @drm_gem_shmem_pin(ptr noundef %0) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_unpin(ptr noundef %0) #5 {
  tail call void @drm_gem_shmem_unpin(ptr noundef %0) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @drm_gem_shmem_object_get_sg_table(ptr noundef %0) #5 {
  %2 = tail call ptr @drm_gem_shmem_get_sg_table(ptr noundef %0) #10
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_gem_vmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lima_bo, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @drm_gem_shmem_vmap(ptr noundef %0, ptr noundef %1) #10
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_vunmap(ptr noundef %0, ptr noundef %1) #5 {
  tail call void @drm_gem_shmem_vunmap(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_gem_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lima_bo, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @drm_gem_shmem_mmap(ptr noundef %0, ptr noundef %1) #10
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_print_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_pin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_get_sg_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_dependency(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_implicit_dependencies(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!9 = !{i64 2148450410}
!10 = !{i64 847344, i64 2148337315, i64 2148337341, i64 2148337388, i64 2148337410, i64 2148337438, i64 2148337458}
!11 = !{i64 2148352545, i64 2148352577, i64 2148352606, i64 2148352640, i64 2148352671, i64 2148352694}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149363762}
!14 = !{ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @drm_syncobj_free}
