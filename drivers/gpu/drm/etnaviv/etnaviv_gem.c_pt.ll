; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_gem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_gem_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.73, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.73 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.81 }
%union.anon.81 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.drm_etnaviv_timespec = type { i64, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.22, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.24 = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to allocate sgt: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not allocate mmap offset\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_gem.c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Total %d objects, %zu bytes\0A\00", align 1
@etnaviv_gem_shmem_ops = internal constant %struct.etnaviv_gem_ops { ptr @etnaviv_gem_shmem_get_pages, ptr @etnaviv_gem_shmem_release, ptr @etnaviv_gem_vmap_impl, ptr @etnaviv_gem_mmap_obj }, align 4
@etnaviv_gem_userptr_ops = internal constant %struct.etnaviv_gem_ops { ptr @etnaviv_gem_userptr_get_pages, ptr @etnaviv_gem_userptr_release, ptr @etnaviv_gem_vmap_impl, ptr @etnaviv_gem_userptr_mmap_obj }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"%08x: %c %2d (%2d) %08lx %p %zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"invalid cache flag: %x\0A\00", align 1
@etnaviv_gem_new_impl.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"&etnaviv_obj->lock\00", align 1
@etnaviv_gem_object_funcs = internal constant %struct.drm_gem_object_funcs { ptr @etnaviv_gem_free_object, ptr null, ptr null, ptr null, ptr null, ptr @etnaviv_gem_prime_pin, ptr @etnaviv_gem_prime_unpin, ptr @etnaviv_gem_prime_get_sg_table, ptr @etnaviv_gem_prime_vmap, ptr null, ptr @etnaviv_gem_mmap, ptr @vm_ops }, align 4
@vm_ops = internal constant %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @etnaviv_gem_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gem_get_pages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = inttoptr i32 %9 to ptr
  br label %42

13:                                               ; preds = %5, %1
  %14 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 12
  %23 = load ptr, ptr %2, align 8
  %24 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %19, ptr noundef %23, i32 noundef %22) #10
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %36, label %26

26:                                               ; preds = %17
  store ptr %24, ptr %14, align 4
  %27 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 983040
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %18, align 8
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @dma_map_sgtable(ptr noundef %34, ptr noundef %24, i32 noundef 0, i32 noundef 0) #10
  br label %40

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str, i32 noundef %39) #11
  br label %42

40:                                               ; preds = %31, %26, %13
  %41 = load ptr, ptr %2, align 8
  br label %42

42:                                               ; preds = %40, %36, %11
  %43 = phi ptr [ %41, %40 ], [ %24, %36 ], [ %12, %11 ]
  ret ptr %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @etnaviv_gem_put_pages(ptr nocapture noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_mmap_offset(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef %0) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #11
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 4, i32 1, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = shl i64 %12, 12
  store i64 %13, ptr %1, align 8
  br label %14

14:                                               ; preds = %10, %5
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_mapping_unreference(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 233, i32 noundef 9, ptr noundef null) #10
  %9 = load i32, ptr %5, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %6, %1 ]
  %12 = add i32 %11, -1
  store i32 %12, ptr %5, align 8
  tail call void @mutex_unlock(ptr noundef %4) #10
  %13 = icmp eq ptr %3, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #10, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #10, !srcloc !11
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #10
  br label %22

21:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %3) #10
  br label %22

22:                                               ; preds = %21, %20, %18, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gem_mapping_get(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 11
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %8, i32 0, i32 4
  %16 = icmp eq ptr %8, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %8, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %1, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %22) #10
  %23 = load ptr, ptr %15, align 4
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @mutex_unlock(ptr noundef %22) #10
  br label %31

26:                                               ; preds = %21
  %27 = load i32, ptr %18, align 8
  %28 = add i32 %27, 1
  store i32 %28, ptr %18, align 8
  tail call void @mutex_unlock(ptr noundef %22) #10
  br label %84

29:                                               ; preds = %17
  %30 = add i32 %19, 1
  store i32 %30, ptr %18, align 8
  br label %84

31:                                               ; preds = %25, %14, %6
  %32 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %0)
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = ptrtoint ptr %32 to i32
  br label %87

36:                                               ; preds = %40, %31
  %37 = phi ptr [ %38, %40 ], [ %5, %31 ]
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %5
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %38, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %36

44:                                               ; preds = %40
  %45 = icmp eq ptr %38, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %44, %36
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 152) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %85, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %48, i32 0, i32 1
  store volatile ptr %51, ptr %51, align 8
  %52 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %48, i32 0, i32 1, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %48, i32 0, i32 3
  store ptr %0, ptr %53, align 8
  br label %59

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %38, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  store volatile ptr %57, ptr %56, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %55, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi ptr [ %38, %54 ], [ %48, %50 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #10, !srcloc !10
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !14
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64, !prof !8

64:                                               ; preds = %59
  %65 = add i32 %62, 1
  %66 = or i32 %65, %62
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %70, label %68, !prof !12

68:                                               ; preds = %64, %59
  %69 = phi i32 [ 2, %59 ], [ 1, %64 ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %69) #10
  br label %70

70:                                               ; preds = %68, %64
  %71 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %60, i32 0, i32 4
  store ptr %1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %60, i32 0, i32 6
  store i32 1, ptr %72, align 8
  %73 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %1, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %74, i32 0, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = tail call i32 @etnaviv_iommu_map_gem(ptr noundef %1, ptr noundef %0, i32 noundef %76, ptr noundef nonnull %60, i64 noundef %2) #10
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  tail call void @etnaviv_iommu_context_put(ptr noundef %1) #10
  tail call void @kfree(ptr noundef nonnull %60) #10
  br label %85

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 11, i32 1
  %82 = load ptr, ptr %81, align 4
  store ptr %60, ptr %81, align 4
  store ptr %5, ptr %60, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %82, ptr %83, align 4
  store volatile ptr %60, ptr %82, align 4
  br label %87

84:                                               ; preds = %29, %26
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %94

85:                                               ; preds = %79, %46
  %86 = phi i32 [ -12, %46 ], [ %77, %79 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %91

87:                                               ; preds = %80, %34
  %88 = phi ptr [ null, %34 ], [ %60, %80 ]
  %89 = phi i32 [ %35, %34 ], [ %77, %80 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87, %85
  %92 = phi i32 [ %86, %85 ], [ %89, %87 ]
  %93 = inttoptr i32 %92 to ptr
  br label %105

94:                                               ; preds = %87, %84
  %95 = phi ptr [ %8, %84 ], [ %88, %87 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !10
  %96 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !14
  %97 = extractvalue { i32, i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99, !prof !8

99:                                               ; preds = %94
  %100 = add i32 %97, 1
  %101 = or i32 %100, %97
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %105, label %103, !prof !12

103:                                              ; preds = %99, %94
  %104 = phi i32 [ 2, %94 ], [ 1, %99 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %104) #10
  br label %105

105:                                              ; preds = %103, %99, %91
  %106 = phi ptr [ %93, %91 ], [ %95, %99 ], [ %95, %103 ]
  ret ptr %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommu_map_gem(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gem_vmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = load ptr, ptr %2, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.etnaviv_gem_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr %13(ptr noundef %0) #10
  store ptr %14, ptr %2, align 8
  br label %15

15:                                               ; preds = %9, %5
  tail call void @mutex_unlock(ptr noundef %6) #10
  %16 = load ptr, ptr %2, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %3, %1 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_cpu_prep(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = and i32 %1, 2
  %9 = icmp ne i32 %8, 0
  %10 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %14) #10
  %15 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %14) #10
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = ptrtoint ptr %15 to i32
  br label %74

19:                                               ; preds = %13, %3
  %20 = and i32 %1, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 8
  %25 = tail call zeroext i1 @dma_resv_test_signaled(ptr noundef %24, i1 noundef zeroext %9) #10
  br i1 %25, label %56, label %74

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #10, !annotation !15
  %27 = load i64, ptr %2, align 8
  %28 = getelementptr inbounds %struct.drm_etnaviv_timespec, ptr %2, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  call void @ktime_get_ts64(ptr noundef nonnull %4) #10
  %31 = load i64, ptr %4, align 8
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %48, label %33

33:                                               ; preds = %26
  %34 = icmp sgt i64 %27, %31
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = sub i32 %30, %37
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %48, label %40

40:                                               ; preds = %35, %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %41 = getelementptr inbounds [2 x i64], ptr %4, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !alias.scope !16, !annotation !15
  %44 = sub i64 %27, %31
  %45 = sub i32 %30, %43
  %46 = sext i32 %45 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %5, i64 noundef %44, i64 noundef %46) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  %47 = call i32 @timespec64_to_jiffies(ptr noundef nonnull %4) #10
  br label %48

48:                                               ; preds = %40, %35, %26
  %49 = phi i32 [ %47, %40 ], [ 0, %35 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %50 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %51 = load ptr, ptr %50, align 8
  %52 = call i32 @dma_resv_wait_timeout(ptr noundef %51, i1 noundef zeroext %9, i1 noundef zeroext true, i32 noundef %49) #10
  %53 = icmp slt i32 %52, 1
  %54 = icmp eq i32 %52, 0
  %55 = select i1 %54, i32 -110, i32 %52
  br i1 %53, label %74, label %56

56:                                               ; preds = %48, %22
  %57 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 3
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65536
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %10, align 4
  %65 = and i32 %1, 1
  %66 = icmp eq i32 %65, 0
  %67 = lshr i32 %1, 1
  %68 = and i32 %67, 1
  %69 = select i1 %66, i32 %68, i32 2
  %70 = load ptr, ptr %64, align 4
  %71 = getelementptr inbounds %struct.sg_table, ptr %64, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  call void @dma_sync_sg_for_cpu(ptr noundef %63, ptr noundef %70, i32 noundef %72, i32 noundef %69) #10
  %73 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 12
  store i32 %1, ptr %73, align 4
  br label %74

74:                                               ; preds = %61, %56, %48, %22, %17
  %75 = phi i32 [ %55, %48 ], [ -16, %22 ], [ 0, %61 ], [ 0, %56 ], [ %18, %17 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_cpu_fini(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !8

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 409, i32 noundef 9, ptr noundef null) #10
  %13 = load i32, ptr %9, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ %10, %8 ]
  %16 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %15, 1
  %21 = icmp eq i32 %20, 0
  %22 = lshr i32 %15, 1
  %23 = and i32 %22, 1
  %24 = select i1 %21, i32 %23, i32 2
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr inbounds %struct.sg_table, ptr %19, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %17, ptr noundef %25, i32 noundef %27, i32 noundef %24) #10
  store i32 0, ptr %9, align 4
  br label %28

28:                                               ; preds = %14, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_wait_bo(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @etnaviv_gpu_wait_obj_inactive(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_wait_obj_inactive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_describe_objects(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %39, label %7

7:                                                ; preds = %33, %2
  %8 = phi ptr [ %37, %33 ], [ %5, %2 ]
  %9 = phi i32 [ %34, %33 ], [ 0, %2 ]
  %10 = phi i32 [ %36, %33 ], [ 0, %2 ]
  %11 = getelementptr i8, ptr %8, i32 -236
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.3) #10
  %12 = getelementptr i8, ptr %8, i32 -76
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %8, i32 -204
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr i8, ptr %8, i32 -4
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr i8, ptr %8, i32 12
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 73, i32 65
  %23 = getelementptr i8, ptr %8, i32 -88
  %24 = load i32, ptr %23, align 4
  %25 = load volatile i32, ptr %11, align 4
  %26 = getelementptr i8, ptr %8, i32 28
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %8, i32 -92
  %29 = load i32, ptr %28, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %18, i32 noundef %22, i32 noundef %24, i32 noundef %25, i32 noundef %16, ptr noundef %27, i32 noundef %29) #10
  %30 = tail call i32 @ww_mutex_lock(ptr noundef %13, ptr noundef null) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  tail call void @dma_resv_describe(ptr noundef %13, ptr noundef %1) #10
  tail call void @ww_mutex_unlock(ptr noundef %13) #10
  br label %33

33:                                               ; preds = %32, %7
  %34 = add i32 %9, 1
  %35 = load i32, ptr %28, align 8
  %36 = add i32 %35, %10
  %37 = load ptr, ptr %8, align 4
  %38 = icmp eq ptr %37, %4
  br i1 %38, label %39, label %7

39:                                               ; preds = %33, %2
  %40 = phi i32 [ 0, %2 ], [ %36, %33 ]
  %41 = phi i32 [ 0, %2 ], [ %34, %33 ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %41, i32 noundef %40) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_free_object(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !12

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 489, i32 noundef 9, ptr noundef null) #10
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %5, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 4
  %13 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %11) #10
  %17 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %38, label %20

20:                                               ; preds = %32, %10
  %21 = phi ptr [ %22, %32 ], [ %18, %10 ]
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %21, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %21, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !12

28:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 499, i32 noundef 9, ptr noundef null) #10
  br label %29

29:                                               ; preds = %28, %20
  %30 = icmp eq ptr %24, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @etnaviv_iommu_unmap_gem(ptr noundef nonnull %24, ptr noundef %21) #10
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %24) #10
  br label %32

32:                                               ; preds = %31, %29
  %33 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %21, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @kfree(ptr noundef %21) #10
  %37 = icmp eq ptr %22, %17
  br i1 %37, label %38, label %20

38:                                               ; preds = %32, %10
  tail call void @drm_gem_free_mmap_offset(ptr noundef %0) #10
  %39 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.etnaviv_gem_ops, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0) #10
  tail call void @drm_gem_object_release(ptr noundef %0) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_unmap_gem(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_free_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_obj_add(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %4, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %4, i32 0, i32 6
  %8 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %4, i32 0, i32 6, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %6, ptr %8, align 4
  store ptr %7, ptr %6, align 4
  %10 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %1, i32 0, i32 4, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %6, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_new_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %3, 983040
  switch i32 %8, label %9 [
    i32 262144, label %12
    i32 65536, label %12
    i32 131072, label %12
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef %8) #11
  br label %52

12:                                               ; preds = %5, %5, %5
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 296) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %14, i32 0, i32 3
  store i32 %3, ptr %17, align 8
  %18 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %14, i32 0, i32 1
  store ptr @etnaviv_gem_shmem_ops, ptr %18, align 8
  %19 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %14, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef nonnull @etnaviv_gem_new_impl.__key) #10
  %20 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %14, i32 0, i32 11
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %14, i32 0, i32 11, i32 1
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, ptr %14, i32 0, i32 11
  store ptr @etnaviv_gem_object_funcs, ptr %22, align 8
  %23 = add i32 %2, 4095
  %24 = and i32 %23, -4096
  %25 = tail call i32 @drm_gem_object_init(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %24) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.drm_gem_object, ptr %14, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 17
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %7, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.address_space, ptr %31, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %35, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %36) #10
  %37 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %14, i32 0, i32 4
  %38 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %35, i32 0, i32 6
  %39 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %35, i32 0, i32 6, i32 1
  %40 = load ptr, ptr %39, align 4
  store ptr %37, ptr %39, align 4
  store ptr %38, ptr %37, align 4
  %41 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %14, i32 0, i32 4, i32 1
  store ptr %40, ptr %41, align 8
  store volatile ptr %37, ptr %40, align 4
  tail call void @mutex_unlock(ptr noundef %36) #10
  %42 = tail call i32 @drm_gem_handle_create(ptr noundef %1, ptr noundef nonnull %14, ptr noundef %4) #10
  br label %43

43:                                               ; preds = %27, %16
  %44 = phi i32 [ %42, %27 ], [ %25, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %14) #10, !srcloc !10
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #10, !srcloc !11
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %52, label %50, !prof !12

50:                                               ; preds = %48
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #10
  br label %52

51:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %14) #10
  br label %52

52:                                               ; preds = %51, %50, %48, %12, %9
  %53 = phi i32 [ %44, %48 ], [ %44, %50 ], [ %44, %51 ], [ -12, %12 ], [ -22, %9 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_new_private(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = and i32 %2, 983040
  switch i32 %6, label %7 [
    i32 262144, label %10
    i32 65536, label %10
    i32 131072, label %10
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %6) #11
  br label %21

10:                                               ; preds = %5, %5, %5
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 296) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %12, i32 0, i32 3
  store i32 %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %12, i32 0, i32 1
  store ptr %3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %12, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.7, ptr noundef nonnull @etnaviv_gem_new_impl.__key) #10
  %18 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %12, i32 0, i32 11
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %12, i32 0, i32 11, i32 1
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %12, i32 0, i32 11
  store ptr @etnaviv_gem_object_funcs, ptr %20, align 8
  tail call void @drm_gem_private_object_init(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %1) #10
  store ptr %12, ptr %4, align 4
  br label %21

21:                                               ; preds = %14, %10, %7
  %22 = phi i32 [ 0, %14 ], [ -12, %10 ], [ -22, %7 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_new_userptr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 296) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 3
  store i32 65536, ptr %11, align 8
  %12 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 1
  store ptr @etnaviv_gem_userptr_ops, ptr %12, align 8
  %13 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef nonnull @etnaviv_gem_new_impl.__key) #10
  %14 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 11
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 11, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drm_gem_object, ptr %8, i32 0, i32 11
  store ptr @etnaviv_gem_object_funcs, ptr %16, align 8
  tail call void @drm_gem_private_object_init(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %3) #10
  %17 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 13
  store i32 %2, ptr %17, align 8
  %18 = tail call ptr @llvm.thread.pointer() #10
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 37
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 13, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 13, i32 2
  %23 = trunc i32 %4 to i8
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, ptr %22, align 8
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %28, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %29) #10
  %30 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 4
  %31 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %28, i32 0, i32 6
  %32 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %28, i32 0, i32 6, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %30, ptr %32, align 4
  store ptr %31, ptr %30, align 4
  %34 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %8, i32 0, i32 4, i32 1
  store ptr %33, ptr %34, align 8
  store volatile ptr %30, ptr %33, align 4
  tail call void @mutex_unlock(ptr noundef %29) #10
  %35 = tail call i32 @drm_gem_handle_create(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %5) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #10, !srcloc !10
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #10, !srcloc !11
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %10
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %43, label %41, !prof !12

41:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef 3) #10
  br label %43

42:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %8) #10
  br label %43

43:                                               ; preds = %42, %41, %39, %6
  %44 = phi i32 [ -12, %6 ], [ %35, %39 ], [ %35, %41 ], [ %35, %42 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timespec64_to_jiffies(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_describe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_prime_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gem_prime_unpin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_prime_get_sg_table(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_prime_vmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.etnaviv_gem_ops, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #10
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_fault(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %4, i32 0, i32 2
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %4)
  tail call void @mutex_unlock(ptr noundef %5) #10
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = icmp eq ptr %9, inttoptr (i32 -12 to ptr)
  %13 = select i1 %12, i32 1, i32 2
  br label %29

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.anon.24, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %2, align 4
  %18 = sub i32 %16, %17
  %19 = lshr i32 %18, 12
  %20 = getelementptr ptr, ptr %9, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @vm_insert_page(ptr noundef %2, i32 noundef %16, ptr noundef %21) #10
  %23 = icmp eq i32 %22, -12
  %24 = icmp slt i32 %22, 0
  %25 = icmp ne i32 %22, -16
  %26 = and i1 %24, %25
  %27 = select i1 %26, i32 2, i32 256
  %28 = select i1 %23, i32 1, i32 %27
  br label %29

29:                                               ; preds = %14, %11, %1
  %30 = phi i32 [ %13, %11 ], [ %28, %14 ], [ 256, %1 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_insert_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_shmem_get_pages(ptr noundef %0) #0 {
  %2 = tail call ptr @drm_gem_get_pages(ptr noundef %0) #10
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 8
  store ptr %2, ptr %7, align 8
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ 0, %6 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_gem_shmem_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  tail call void @vunmap(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 983040
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.sg_table, ptr %5, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %17, i32 noundef %19, i32 noundef 0, i32 noundef 0) #10
  %20 = load ptr, ptr %4, align 4
  br label %21

21:                                               ; preds = %12, %7
  %22 = phi ptr [ %5, %7 ], [ %20, %12 ]
  tail call void @sg_free_table(ptr noundef %22) #10
  %23 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %23) #10
  store ptr null, ptr %4, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @drm_gem_put_pages(ptr noundef %0, ptr noundef nonnull %26, i1 noundef zeroext true, i1 noundef zeroext false) #10
  store ptr null, ptr %25, align 8
  br label %29

29:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @etnaviv_gem_vmap_impl(ptr noundef %0) #0 {
  %2 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %0)
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 12
  %8 = load i32, ptr @pgprot_kernel, align 4
  %9 = and i32 %8, -573
  %10 = or i32 %9, 516
  %11 = tail call ptr @vmap(ptr noundef %2, i32 noundef %7, i32 noundef 4, i32 noundef %10) #10
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi ptr [ %11, %4 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_mmap_obj(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 335822848
  store i32 %5, ptr %3, align 4
  %6 = tail call i32 @vm_get_page_prot(i32 noundef %5) #10
  %7 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 131072
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = and i32 %6, -61
  %13 = or i32 %12, 4
  br label %23

14:                                               ; preds = %2
  %15 = and i32 %8, 262144
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = and i32 %6, -61
  br label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void @vma_set_file(ptr noundef %1, ptr noundef %22) #10
  br label %23

23:                                               ; preds = %19, %17, %11
  %24 = phi i32 [ %18, %17 ], [ %6, %19 ], [ %13, %11 ]
  %25 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_set_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_userptr_get_pages(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 13
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 12
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 13, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %7, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = shl nuw nsw i32 %5, 2
  %14 = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 3264, i32 noundef -1) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %26, %12
  %17 = phi i32 [ %27, %26 ], [ 0, %12 ]
  %18 = sub i32 %5, %17
  %19 = load i32, ptr %2, align 4
  %20 = shl i32 %17, 12
  %21 = add i32 %19, %20
  %22 = getelementptr ptr, ptr %14, i32 %17
  %23 = tail call i32 @pin_user_pages_fast(i32 noundef %21, i32 noundef %18, i32 noundef 65553, ptr noundef %22) #10
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void @unpin_user_pages(ptr noundef nonnull %14, i32 noundef %17) #10
  tail call void @kvfree(ptr noundef nonnull %14) #10
  br label %31

26:                                               ; preds = %16
  %27 = add i32 %23, %17
  %28 = icmp slt i32 %27, %5
  br i1 %28, label %16, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 8
  store ptr %14, ptr %30, align 8
  br label %31

31:                                               ; preds = %29, %25, %12, %1
  %32 = phi i32 [ 0, %29 ], [ -1, %1 ], [ -12, %12 ], [ %23, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_gem_userptr_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 983040
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %15, i32 noundef %17, i32 noundef 0, i32 noundef 0) #10
  %18 = load ptr, ptr %2, align 4
  br label %19

19:                                               ; preds = %10, %5
  %20 = phi ptr [ %3, %5 ], [ %18, %10 ]
  tail call void @sg_free_table(ptr noundef %20) #10
  %21 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %19, %1
  %23 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 12
  tail call void @unpin_user_pages(ptr noundef nonnull %24, i32 noundef %29) #10
  %30 = load ptr, ptr %23, align 8
  tail call void @kvfree(ptr noundef %30) #10
  br label %31

31:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @etnaviv_gem_userptr_mmap_obj(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{i64 2148209937}
!10 = !{i64 606074, i64 2148096045, i64 2148096071, i64 2148096118, i64 2148096140, i64 2148096168, i64 2148096188}
!11 = !{i64 2148112072, i64 2148112104, i64 2148112133, i64 2148112167, i64 2148112198, i64 2148112221}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149465252}
!14 = !{i64 2148109715, i64 2148109747, i64 2148109776, i64 2148109810, i64 2148109841, i64 2148109864}
!15 = !{!"auto-init"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"timespec64_sub: argument 0"}
!18 = distinct !{!18, !"timespec64_sub"}
