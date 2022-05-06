; ModuleID = '/llk/IR/mm/madvise.c_pt.bc'
source_filename = "../mm/madvise.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.13 }
%union.anon.13 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.23, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.madvise_walk_private = type { ptr, i8 }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.page = type { i32, %union.anon.4, %union.anon.94, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.94 = type { %struct.atomic_t }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.101, [64 x ptr], %union.anon.102 }
%union.anon.101 = type { %struct.list_head }
%union.anon.102 = type { [3 x [2 x i32]] }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iovec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.81, %union.anon.82 }
%union.anon.81 = type { ptr }
%union.anon.82 = type { i64 }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }

@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@swapin_walk_ops = internal constant %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @swapin_walk_pmd_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@cold_walk_ops = internal constant %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @madvise_cold_or_pageout_pte_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@madvise_free_walk_ops = internal constant %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @madvise_free_pte_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@madvise_populate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\014%s: unhandled return value: %ld\0A\00", align 1
@__func__.madvise_populate = private unnamed_addr constant [17 x i8] c"madvise_populate\00", align 1
@sysctl_max_map_count = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4

@sys_madvise = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_madvise
@sys_process_madvise = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_process_madvise

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_madvise(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct, align 4
  %7 = alloca %struct.mmu_gather, align 4
  %8 = alloca %struct.vm_area_struct, align 4
  %9 = alloca %struct.madvise_walk_private, align 8
  %10 = alloca %struct.mmu_gather, align 4
  %11 = alloca %struct.vm_area_struct, align 4
  %12 = alloca %struct.madvise_walk_private, align 8
  %13 = alloca %struct.mmu_gather, align 4
  %14 = alloca %struct.xa_state, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.blk_plug, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %16, i8 0, i32 24, i1 false), !annotation !8
  switch i32 %3, label %664 [
    i32 11, label %17
    i32 10, label %17
    i32 0, label %17
    i32 2, label %17
    i32 1, label %17
    i32 9, label %17
    i32 3, label %17
    i32 4, label %17
    i32 8, label %17
    i32 20, label %17
    i32 21, label %17
    i32 22, label %17
    i32 23, label %17
    i32 16, label %17
    i32 17, label %17
    i32 18, label %17
    i32 19, label %17
  ]

17:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %18 = and i32 %1, 4095
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %664

20:                                               ; preds = %17
  %21 = add i32 %2, 4095
  %22 = and i32 %21, -4096
  %23 = icmp eq i32 %2, 0
  %24 = icmp ne i32 %22, 0
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %664

26:                                               ; preds = %20
  %27 = add i32 %22, %1
  %28 = icmp ult i32 %27, %1
  br i1 %28, label %664, label %29

29:                                               ; preds = %26
  %30 = icmp eq i32 %22, 0
  br i1 %30, label %664, label %31

31:                                               ; preds = %29
  switch i32 %3, label %32 [
    i32 9, label %45
    i32 3, label %45
    i32 4, label %45
    i32 20, label %45
    i32 21, label %45
    i32 8, label %45
    i32 22, label %45
    i32 23, label %45
  ]

32:                                               ; preds = %31
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext true) #7
  br label %36

36:                                               ; preds = %35, %32
  %37 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 15
  %38 = tail call i32 @down_write_killable(ptr noundef %37) #7
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = icmp eq i32 %38, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %42) #7
  br label %43

43:                                               ; preds = %41, %36
  %44 = icmp eq i32 %38, 0
  br i1 %44, label %54, label %664

45:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #7
  br label %49

49:                                               ; preds = %48, %45
  %50 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 15
  tail call void @down_read(ptr noundef %50) #7
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %54

54:                                               ; preds = %53, %49, %43
  %55 = phi i1 [ false, %43 ], [ true, %49 ], [ true, %53 ]
  call void @blk_start_plug(ptr noundef nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #7
  store ptr null, ptr %15, align 4, !annotation !8
  %56 = call ptr @find_vma_prev(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %15) #7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %652, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %56, align 4
  %60 = icmp ult i32 %59, %1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store ptr %56, ptr %15, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = icmp eq i32 %3, 23
  %64 = getelementptr inbounds %struct.mmu_gather, ptr %7, i32 0, i32 3
  %65 = getelementptr inbounds %struct.mmu_gather, ptr %7, i32 0, i32 2
  %66 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 6
  %67 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 8
  %68 = getelementptr inbounds %struct.mmu_gather, ptr %7, i32 0, i32 1
  %69 = getelementptr inbounds %struct.mmu_gather, ptr %10, i32 0, i32 3
  %70 = getelementptr inbounds %struct.mmu_gather, ptr %10, i32 0, i32 2
  %71 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 6
  %72 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 8
  %73 = getelementptr inbounds %struct.mmu_gather, ptr %10, i32 0, i32 1
  %74 = getelementptr inbounds %struct.mmu_gather, ptr %13, i32 0, i32 3
  %75 = getelementptr inbounds %struct.mmu_gather, ptr %13, i32 0, i32 2
  %76 = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 6
  %77 = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 8
  %78 = getelementptr inbounds %struct.mmu_gather, ptr %13, i32 0, i32 1
  %79 = getelementptr inbounds %struct.xa_state, ptr %14, i32 0, i32 1
  %80 = getelementptr inbounds %struct.xa_state, ptr %14, i32 0, i32 2
  %81 = getelementptr inbounds %struct.xa_state, ptr %14, i32 0, i32 4
  %82 = getelementptr inbounds %struct.xa_state, ptr %14, i32 0, i32 6
  %83 = getelementptr inbounds %struct.xa_state, ptr %14, i32 0, i32 7
  %84 = getelementptr inbounds %struct.xa_state, ptr %14, i32 0, i32 8
  br label %85

85:                                               ; preds = %648, %62
  %86 = phi i32 [ 0, %62 ], [ %95, %648 ]
  %87 = phi ptr [ %56, %62 ], [ %650, %648 ]
  %88 = phi i32 [ %1, %62 ], [ %649, %648 ]
  %89 = load i32, ptr %87, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = icmp ult i32 %89, %27
  br i1 %92, label %93, label %652

93:                                               ; preds = %91, %85
  %94 = phi i32 [ %89, %91 ], [ %88, %85 ]
  %95 = phi i32 [ -12, %91 ], [ %86, %85 ]
  %96 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = call i32 @llvm.umin.i32(i32 %97, i32 %27) #7
  %99 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 8
  %100 = load i32, ptr %99, align 4
  switch i32 %3, label %584 [
    i32 9, label %101
    i32 3, label %146
    i32 20, label %268
    i32 21, label %325
    i32 8, label %404
    i32 4, label %404
    i32 22, label %491
    i32 23, label %491
    i32 0, label %545
    i32 2, label %547
    i32 1, label %550
    i32 10, label %553
    i32 11, label %555
    i32 18, label %560
    i32 19, label %569
    i32 16, label %571
    i32 17, label %573
    i32 15, label %578
    i32 14, label %578
  ]

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 6
  %103 = load ptr, ptr %102, align 4
  store ptr null, ptr %15, align 4
  %104 = and i32 %100, 8192
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %652

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 14
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %652, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.file, ptr %108, i32 0, i32 17
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %652, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %112, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %652, label %117

117:                                              ; preds = %114
  %118 = and i32 %100, 10
  %119 = icmp eq i32 %118, 10
  br i1 %119, label %120, label %652

120:                                              ; preds = %117
  %121 = load i32, ptr %87, align 4
  %122 = sub i32 %94, %121
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 13
  %125 = load i32, ptr %124, align 4
  %126 = zext i32 %125 to i64
  %127 = shl nuw nsw i64 %126, 12
  %128 = add nuw nsw i64 %127, %123
  %129 = getelementptr inbounds %struct.file, ptr %108, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #7, !srcloc !9
  %130 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 1, ptr elementtype(i32) %129) #7, !srcloc !10
  %131 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  call void @__mmap_lock_do_trace_released(ptr noundef %103, i1 noundef zeroext false) #7
  br label %134

134:                                              ; preds = %133, %120
  %135 = getelementptr inbounds %struct.anon, ptr %103, i32 0, i32 15
  call void @up_read(ptr noundef %135) #7
  %136 = sub i32 %98, %94
  %137 = zext i32 %136 to i64
  %138 = call i32 @vfs_fallocate(ptr noundef nonnull %108, i32 noundef 3, i64 noundef %128, i64 noundef %137) #7
  call void @fput(ptr noundef nonnull %108) #7
  %139 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %103, i1 noundef zeroext false) #7
  br label %142

142:                                              ; preds = %141, %134
  call void @down_read(ptr noundef %135) #7
  %143 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %627

145:                                              ; preds = %142
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %103, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %627

146:                                              ; preds = %93
  %147 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 6
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 14
  %150 = load ptr, ptr %149, align 4
  store ptr %87, ptr %15, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = call i32 @walk_page_range(ptr noundef %148, i32 noundef %94, i32 noundef %98, ptr noundef nonnull @swapin_walk_ops, ptr noundef nonnull %87) #7
  call void @lru_add_drain() #7
  br label %630

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.file, ptr %150, i32 0, i32 17
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct.address_space, ptr %156, i32 0, i32 9
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, @shmem_aops
  br i1 %159, label %160, label %242

160:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #7
  %161 = getelementptr inbounds %struct.address_space, ptr %156, i32 0, i32 1
  store ptr %161, ptr %14, align 4
  %162 = load i32, ptr %87, align 4
  %163 = sub i32 %94, %162
  %164 = lshr i32 %163, 12
  %165 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 13
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %164, %166
  store i32 %167, ptr %79, align 4
  store i32 0, ptr %80, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %82, align 4
  store ptr null, ptr %83, align 4
  store ptr null, ptr %84, align 4
  %168 = add i32 %98, 4095
  %169 = sub i32 %168, %162
  %170 = lshr i32 %169, 12
  %171 = add i32 %170, %166
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %172 = call ptr @xas_find(ptr noundef nonnull %14, i32 noundef %171) #7
  %173 = icmp eq ptr %172, null
  br i1 %173, label %241, label %174

174:                                              ; preds = %238, %160
  %175 = phi ptr [ %239, %238 ], [ %172, %160 ]
  %176 = ptrtoint ptr %175 to i32
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %202, label %179

179:                                              ; preds = %174
  call void @xas_pause(ptr noundef nonnull %14) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %180 = lshr i32 %176, 1
  %181 = insertvalue [1 x i32] poison, i32 %180, 0
  %182 = call ptr @read_swap_cache_async([1 x i32] %181, i32 noundef 17829066, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #7
  %183 = icmp eq ptr %182, null
  br i1 %183, label %201, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.page, ptr %182, i32 0, i32 1
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189, !prof !13

189:                                              ; preds = %184
  %190 = add i32 %186, -1
  br label %193

191:                                              ; preds = %184
  %192 = ptrtoint ptr %182 to i32
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = inttoptr i32 %194 to ptr
  %196 = getelementptr inbounds %struct.page, ptr %195, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %196) #7, !srcloc !9
  %197 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %196, ptr %196, i32 1, ptr elementtype(i32) %196) #7, !srcloc !15
  %198 = extractvalue { i32, i32 } %197, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  call void @__put_page(ptr noundef %195) #7
  br label %201

201:                                              ; preds = %200, %193, %179
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  br label %202

202:                                              ; preds = %201, %174
  %203 = load ptr, ptr %82, align 4
  %204 = ptrtoint ptr %203 to i32
  %205 = and i32 %204, 3
  %206 = icmp ne i32 %205, 0
  %207 = icmp eq ptr %203, null
  %208 = or i1 %207, %206
  br i1 %208, label %236, label %209, !prof !17

209:                                              ; preds = %202
  %210 = load i8, ptr %203, align 4
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %236, !prof !13

212:                                              ; preds = %209
  %213 = load i8, ptr %81, align 2
  %214 = zext i8 %213 to i32
  %215 = load i32, ptr %79, align 4
  %216 = and i32 %215, 63
  %217 = icmp eq i32 %216, %214
  br i1 %217, label %218, label %236, !prof !13

218:                                              ; preds = %232, %212
  %219 = phi i8 [ %233, %232 ], [ %213, %212 ]
  %220 = phi i32 [ %234, %232 ], [ %215, %212 ]
  %221 = icmp uge i32 %220, %171
  %222 = icmp eq i8 %219, 63
  %223 = select i1 %221, i1 true, i1 %222
  br i1 %223, label %236, label %224, !prof !18

224:                                              ; preds = %218
  %225 = zext i8 %219 to i32
  %226 = add nuw nsw i32 %225, 1
  %227 = getelementptr %struct.xa_node, ptr %203, i32 0, i32 7, i32 %226
  %228 = load volatile ptr, ptr %227, align 4
  %229 = ptrtoint ptr %228 to i32
  %230 = and i32 %229, 3
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %236, label %232, !prof !17

232:                                              ; preds = %224
  %233 = add i8 %219, 1
  store i8 %233, ptr %81, align 2
  %234 = add nuw i32 %220, 1
  store i32 %234, ptr %79, align 4
  %235 = icmp eq ptr %228, null
  br i1 %235, label %218, label %238

236:                                              ; preds = %224, %218, %212, %209, %202
  %237 = call ptr @xas_find(ptr noundef nonnull %14, i32 noundef %171) #7
  br label %238

238:                                              ; preds = %236, %232
  %239 = phi ptr [ %237, %236 ], [ %228, %232 ]
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %174

241:                                              ; preds = %238, %160
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  call void @lru_add_drain() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #7
  br label %630

242:                                              ; preds = %154
  store ptr null, ptr %15, align 4
  %243 = getelementptr inbounds %struct.file, ptr %150, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %243) #7, !srcloc !9
  %244 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %243, ptr %243, i32 1, ptr elementtype(i32) %243) #7, !srcloc !10
  %245 = load i32, ptr %87, align 4
  %246 = sub i32 %94, %245
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 13
  %249 = load i32, ptr %248, align 4
  %250 = zext i32 %249 to i64
  %251 = shl nuw nsw i64 %250, 12
  %252 = add nuw nsw i64 %251, %247
  %253 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %242
  call void @__mmap_lock_do_trace_released(ptr noundef %148, i1 noundef zeroext false) #7
  br label %256

256:                                              ; preds = %255, %242
  %257 = getelementptr inbounds %struct.anon, ptr %148, i32 0, i32 15
  call void @up_read(ptr noundef %257) #7
  %258 = sub i32 %98, %94
  %259 = zext i32 %258 to i64
  %260 = call i32 @vfs_fadvise(ptr noundef nonnull %150, i64 noundef %252, i64 noundef %259, i32 noundef 3) #7
  call void @fput(ptr noundef nonnull %150) #7
  %261 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %148, i1 noundef zeroext false) #7
  br label %264

264:                                              ; preds = %263, %256
  call void @down_read(ptr noundef %257) #7
  %265 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %630

267:                                              ; preds = %264
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %148, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %630

268:                                              ; preds = %93
  %269 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 6
  %270 = load ptr, ptr %269, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %13) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %13, i8 0, i32 68, i1 false) #7, !annotation !8
  store ptr %87, ptr %15, align 4
  %271 = load i32, ptr %99, align 4
  %272 = and i32 %271, 4203520
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %323

274:                                              ; preds = %268
  call void @lru_add_drain() #7
  call void @tlb_gather_mmu(ptr noundef nonnull %13, ptr noundef %270) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  store i64 0, ptr %12, align 8, !annotation !8
  store ptr %13, ptr %12, align 8
  %275 = load i16, ptr %74, align 4
  %276 = and i16 %275, 1
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %274
  %279 = load i32, ptr %99, align 4
  %280 = trunc i32 %279 to i16
  %281 = shl i16 %280, 5
  %282 = and i16 %281, 128
  %283 = and i16 %275, -385
  %284 = or i16 %282, %283
  store i16 %284, ptr %74, align 4
  %285 = load i32, ptr %87, align 4
  %286 = load i32, ptr %96, align 4
  call void @flush_cache_range(ptr noundef nonnull %87, i32 noundef %285, i32 noundef %286) #7
  br label %287

287:                                              ; preds = %278, %274
  %288 = load ptr, ptr %269, align 4
  %289 = call i32 @walk_page_range(ptr noundef %288, i32 noundef %94, i32 noundef %98, ptr noundef nonnull @cold_walk_ops, ptr noundef nonnull %12) #7
  %290 = load i16, ptr %74, align 4
  %291 = and i16 %290, 1
  %292 = icmp ne i16 %291, 0
  %293 = and i16 %290, 124
  %294 = icmp eq i16 %293, 0
  %295 = or i1 %292, %294
  br i1 %295, label %322, label %296

296:                                              ; preds = %287
  %297 = and i16 %290, 3
  %298 = icmp eq i16 %297, 0
  br i1 %298, label %301, label %299

299:                                              ; preds = %296
  %300 = load ptr, ptr %13, align 4
  call void @flush_tlb_mm(ptr noundef %300) #7
  br label %314

301:                                              ; preds = %296
  %302 = load i32, ptr %75, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %314, label %304

304:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %11) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %11, i8 0, i64 92, i1 false) #7
  %305 = load ptr, ptr %13, align 4
  store ptr %305, ptr %76, align 4
  %306 = lshr i16 %290, 5
  %307 = and i16 %306, 4
  %308 = zext i16 %307 to i32
  %309 = and i16 %290, 256
  %310 = zext i16 %309 to i32
  %311 = shl nuw nsw i32 %310, 14
  %312 = or i32 %311, %308
  store i32 %312, ptr %77, align 4
  %313 = load i32, ptr %78, align 4
  call void @flush_tlb_range(ptr noundef nonnull %11, i32 noundef %313, i32 noundef %302) #7
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %11) #7
  br label %314

314:                                              ; preds = %304, %301, %299
  %315 = load i16, ptr %74, align 4
  %316 = and i16 %315, 1
  %317 = icmp eq i16 %316, 0
  %318 = select i1 %317, i32 -1090519040, i32 -1
  %319 = xor i1 %317, true
  %320 = sext i1 %319 to i32
  store i32 %318, ptr %78, align 4
  store i32 %320, ptr %75, align 4
  %321 = and i16 %315, -125
  store i16 %321, ptr %74, align 4
  br label %322

322:                                              ; preds = %314, %287
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  call void @tlb_finish_mmu(ptr noundef nonnull %13) #7
  br label %323

323:                                              ; preds = %322, %268
  %324 = phi i32 [ 0, %322 ], [ -22, %268 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %13) #7
  br label %627

325:                                              ; preds = %93
  %326 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 6
  %327 = load ptr, ptr %326, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %10) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %10, i8 0, i32 68, i1 false) #7, !annotation !8
  store ptr %87, ptr %15, align 4
  %328 = load i32, ptr %99, align 4
  %329 = and i32 %328, 4203520
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %402

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 12
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %353, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 14
  %337 = load ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %402, label %339

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.file, ptr %337, i32 0, i32 2
  %341 = load ptr, ptr %340, align 8
  %342 = call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %341) #7
  br i1 %342, label %353, label %343

343:                                              ; preds = %339
  %344 = load ptr, ptr %336, align 4
  %345 = getelementptr inbounds %struct.file, ptr %344, i32 0, i32 1
  %346 = load ptr, ptr %345, align 8
  %347 = getelementptr inbounds %struct.vfsmount, ptr %346, i32 0, i32 3
  %348 = load volatile ptr, ptr %347, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %349 = getelementptr inbounds %struct.file, ptr %344, i32 0, i32 2
  %350 = load ptr, ptr %349, align 8
  %351 = call i32 @inode_permission(ptr noundef %348, ptr noundef %350, i32 noundef 2) #7
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %402

353:                                              ; preds = %343, %339, %331
  call void @lru_add_drain() #7
  call void @tlb_gather_mmu(ptr noundef nonnull %10, ptr noundef %327) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  store i64 4294967296, ptr %9, align 8, !annotation !8
  store ptr %10, ptr %9, align 8
  %354 = load i16, ptr %69, align 4
  %355 = and i16 %354, 1
  %356 = icmp eq i16 %355, 0
  br i1 %356, label %357, label %366

357:                                              ; preds = %353
  %358 = load i32, ptr %99, align 4
  %359 = trunc i32 %358 to i16
  %360 = shl i16 %359, 5
  %361 = and i16 %360, 128
  %362 = and i16 %354, -385
  %363 = or i16 %361, %362
  store i16 %363, ptr %69, align 4
  %364 = load i32, ptr %87, align 4
  %365 = load i32, ptr %96, align 4
  call void @flush_cache_range(ptr noundef nonnull %87, i32 noundef %364, i32 noundef %365) #7
  br label %366

366:                                              ; preds = %357, %353
  %367 = load ptr, ptr %326, align 4
  %368 = call i32 @walk_page_range(ptr noundef %367, i32 noundef %94, i32 noundef %98, ptr noundef nonnull @cold_walk_ops, ptr noundef nonnull %9) #7
  %369 = load i16, ptr %69, align 4
  %370 = and i16 %369, 1
  %371 = icmp ne i16 %370, 0
  %372 = and i16 %369, 124
  %373 = icmp eq i16 %372, 0
  %374 = or i1 %371, %373
  br i1 %374, label %401, label %375

375:                                              ; preds = %366
  %376 = and i16 %369, 3
  %377 = icmp eq i16 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %375
  %379 = load ptr, ptr %10, align 4
  call void @flush_tlb_mm(ptr noundef %379) #7
  br label %393

380:                                              ; preds = %375
  %381 = load i32, ptr %70, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %393, label %383

383:                                              ; preds = %380
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %8, i8 0, i64 92, i1 false) #7
  %384 = load ptr, ptr %10, align 4
  store ptr %384, ptr %71, align 4
  %385 = lshr i16 %369, 5
  %386 = and i16 %385, 4
  %387 = zext i16 %386 to i32
  %388 = and i16 %369, 256
  %389 = zext i16 %388 to i32
  %390 = shl nuw nsw i32 %389, 14
  %391 = or i32 %390, %387
  store i32 %391, ptr %72, align 4
  %392 = load i32, ptr %73, align 4
  call void @flush_tlb_range(ptr noundef nonnull %8, i32 noundef %392, i32 noundef %381) #7
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %8) #7
  br label %393

393:                                              ; preds = %383, %380, %378
  %394 = load i16, ptr %69, align 4
  %395 = and i16 %394, 1
  %396 = icmp eq i16 %395, 0
  %397 = select i1 %396, i32 -1090519040, i32 -1
  %398 = xor i1 %396, true
  %399 = sext i1 %398 to i32
  store i32 %397, ptr %73, align 4
  store i32 %399, ptr %70, align 4
  %400 = and i16 %394, -125
  store i16 %400, ptr %69, align 4
  br label %401

401:                                              ; preds = %393, %366
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  call void @tlb_finish_mmu(ptr noundef nonnull %10) #7
  br label %402

402:                                              ; preds = %401, %343, %335, %325
  %403 = phi i32 [ 0, %401 ], [ -22, %325 ], [ 0, %343 ], [ 0, %335 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %10) #7
  br label %627

404:                                              ; preds = %93, %93
  store ptr %87, ptr %15, align 4
  %405 = and i32 %100, 4203520
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %652

407:                                              ; preds = %404
  switch i32 %3, label %652 [
    i32 4, label %408
    i32 8, label %410
  ]

408:                                              ; preds = %407
  %409 = sub i32 %98, %94
  call void @zap_page_range(ptr noundef nonnull %87, i32 noundef %94, i32 noundef %409) #7
  br label %630

410:                                              ; preds = %407
  %411 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 6
  %412 = load ptr, ptr %411, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %7, i8 0, i32 68, i1 false) #7, !annotation !8
  %413 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 12
  %414 = load ptr, ptr %413, align 4
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %489

416:                                              ; preds = %410
  %417 = load i32, ptr %87, align 4
  %418 = call i32 @llvm.umax.i32(i32 %417, i32 %94) #7
  %419 = load i32, ptr %96, align 4
  %420 = icmp ult i32 %418, %419
  br i1 %420, label %421, label %489

421:                                              ; preds = %416
  %422 = call i32 @llvm.umin.i32(i32 %419, i32 %98) #7
  %423 = icmp ugt i32 %422, %417
  br i1 %423, label %424, label %489

424:                                              ; preds = %421
  call void @lru_add_drain() #7
  call void @tlb_gather_mmu(ptr noundef nonnull %7, ptr noundef %412) #7
  %425 = getelementptr inbounds %struct.anon, ptr %412, i32 0, i32 40
  %426 = load volatile i32, ptr %425, align 4
  %427 = call i32 @llvm.smax.i32(i32 %426, i32 0) #7
  %428 = getelementptr %struct.anon, ptr %412, i32 0, i32 40, i32 0, i32 1
  %429 = load volatile i32, ptr %428, align 4
  %430 = call i32 @llvm.smax.i32(i32 %429, i32 0) #7
  %431 = add nuw i32 %430, %427
  %432 = getelementptr %struct.anon, ptr %412, i32 0, i32 40, i32 0, i32 3
  %433 = load volatile i32, ptr %432, align 4
  %434 = call i32 @llvm.smax.i32(i32 %433, i32 0) #7
  %435 = add i32 %431, %434
  %436 = getelementptr inbounds %struct.anon, ptr %412, i32 0, i32 17
  %437 = load i32, ptr %436, align 8
  %438 = icmp ult i32 %437, %435
  br i1 %438, label %439, label %440

439:                                              ; preds = %424
  store i32 %435, ptr %436, align 8
  br label %440

440:                                              ; preds = %439, %424
  %441 = load i16, ptr %64, align 4
  %442 = and i16 %441, 1
  %443 = icmp eq i16 %442, 0
  br i1 %443, label %444, label %453

444:                                              ; preds = %440
  %445 = load i32, ptr %99, align 4
  %446 = trunc i32 %445 to i16
  %447 = shl i16 %446, 5
  %448 = and i16 %447, 128
  %449 = and i16 %441, -385
  %450 = or i16 %448, %449
  store i16 %450, ptr %64, align 4
  %451 = load i32, ptr %87, align 4
  %452 = load i32, ptr %96, align 4
  call void @flush_cache_range(ptr noundef nonnull %87, i32 noundef %451, i32 noundef %452) #7
  br label %453

453:                                              ; preds = %444, %440
  %454 = load ptr, ptr %411, align 4
  %455 = call i32 @walk_page_range(ptr noundef %454, i32 noundef %418, i32 noundef %422, ptr noundef nonnull @madvise_free_walk_ops, ptr noundef nonnull %7) #7
  %456 = load i16, ptr %64, align 4
  %457 = and i16 %456, 1
  %458 = icmp ne i16 %457, 0
  %459 = and i16 %456, 124
  %460 = icmp eq i16 %459, 0
  %461 = or i1 %458, %460
  br i1 %461, label %488, label %462

462:                                              ; preds = %453
  %463 = and i16 %456, 3
  %464 = icmp eq i16 %463, 0
  br i1 %464, label %467, label %465

465:                                              ; preds = %462
  %466 = load ptr, ptr %7, align 4
  call void @flush_tlb_mm(ptr noundef %466) #7
  br label %480

467:                                              ; preds = %462
  %468 = load i32, ptr %65, align 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %480, label %470

470:                                              ; preds = %467
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %6, i8 0, i64 92, i1 false) #7
  %471 = load ptr, ptr %7, align 4
  store ptr %471, ptr %66, align 4
  %472 = lshr i16 %456, 5
  %473 = and i16 %472, 4
  %474 = zext i16 %473 to i32
  %475 = and i16 %456, 256
  %476 = zext i16 %475 to i32
  %477 = shl nuw nsw i32 %476, 14
  %478 = or i32 %477, %474
  store i32 %478, ptr %67, align 4
  %479 = load i32, ptr %68, align 4
  call void @flush_tlb_range(ptr noundef nonnull %6, i32 noundef %479, i32 noundef %468) #7
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %6) #7
  br label %480

480:                                              ; preds = %470, %467, %465
  %481 = load i16, ptr %64, align 4
  %482 = and i16 %481, 1
  %483 = icmp eq i16 %482, 0
  %484 = select i1 %483, i32 -1090519040, i32 -1
  %485 = xor i1 %483, true
  %486 = sext i1 %485 to i32
  store i32 %484, ptr %68, align 4
  store i32 %486, ptr %65, align 4
  %487 = and i16 %481, -125
  store i16 %487, ptr %64, align 4
  br label %488

488:                                              ; preds = %480, %453
  call void @tlb_finish_mmu(ptr noundef nonnull %7) #7
  br label %489

489:                                              ; preds = %488, %421, %416, %410
  %490 = phi i32 [ 0, %488 ], [ -22, %410 ], [ -22, %416 ], [ -22, %421 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #7
  br label %627

491:                                              ; preds = %93, %93
  %492 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 6
  %493 = load ptr, ptr %492, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 1, ptr %5, align 4
  store ptr %87, ptr %15, align 4
  %494 = icmp ugt i32 %98, %94
  br i1 %494, label %495, label %543

495:                                              ; preds = %491
  %496 = getelementptr inbounds %struct.anon, ptr %493, i32 0, i32 15
  br label %497

497:                                              ; preds = %539, %495
  %498 = phi ptr [ %87, %495 ], [ %531, %539 ]
  %499 = phi i32 [ %94, %495 ], [ %541, %539 ]
  %500 = icmp eq ptr %498, null
  br i1 %500, label %505, label %501

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.vm_area_struct, ptr %498, i32 0, i32 1
  %503 = load i32, ptr %502, align 4
  %504 = icmp ult i32 %499, %503
  br i1 %504, label %514, label %505

505:                                              ; preds = %501, %497
  %506 = call ptr @find_vma(ptr noundef %493, i32 noundef %499) #7
  %507 = icmp eq ptr %506, null
  br i1 %507, label %543, label %508

508:                                              ; preds = %505
  %509 = load i32, ptr %506, align 4
  %510 = icmp ult i32 %499, %509
  br i1 %510, label %543, label %511

511:                                              ; preds = %508
  %512 = getelementptr inbounds %struct.vm_area_struct, ptr %506, i32 0, i32 1
  %513 = load i32, ptr %512, align 4
  br label %514

514:                                              ; preds = %511, %501
  %515 = phi i32 [ %513, %511 ], [ %503, %501 ]
  %516 = phi ptr [ %506, %511 ], [ %498, %501 ]
  %517 = call i32 @llvm.umin.i32(i32 %515, i32 %98) #7
  %518 = call i32 @faultin_vma_page_range(ptr noundef nonnull %516, i32 noundef %499, i32 noundef %517, i1 noundef zeroext %63, ptr noundef nonnull %5) #7
  %519 = load i32, ptr %5, align 4
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %530

521:                                              ; preds = %514
  %522 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %523 = icmp sgt i32 %522, 0
  br i1 %523, label %524, label %525

524:                                              ; preds = %521
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %493, i1 noundef zeroext false) #7
  br label %525

525:                                              ; preds = %524, %521
  call void @down_read(ptr noundef %496) #7
  %526 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %527 = icmp sgt i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %525
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %493, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %529

529:                                              ; preds = %528, %525
  store i32 1, ptr %5, align 4
  store ptr null, ptr %15, align 4
  br label %530

530:                                              ; preds = %529, %514
  %531 = phi ptr [ %516, %514 ], [ null, %529 ]
  %532 = icmp slt i32 %518, 0
  br i1 %532, label %533, label %539

533:                                              ; preds = %530
  switch i32 %518, label %534 [
    i32 -4, label %543
    i32 -22, label %543
    i32 -133, label %543
    i32 -14, label %543
    i32 -12, label %538
  ]

534:                                              ; preds = %533
  %535 = load i1, ptr @madvise_populate.__already_done, align 1
  br i1 %535, label %538, label %536, !prof !13

536:                                              ; preds = %534
  store i1 true, ptr @madvise_populate.__already_done, align 1
  %537 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.madvise_populate, i32 noundef %518) #8
  br label %538

538:                                              ; preds = %536, %534, %533
  br label %543

539:                                              ; preds = %530
  %540 = shl i32 %518, 12
  %541 = add i32 %540, %499
  %542 = icmp ult i32 %541, %98
  br i1 %542, label %497, label %543

543:                                              ; preds = %539, %538, %533, %533, %533, %533, %508, %505, %491
  %544 = phi i32 [ -12, %538 ], [ %518, %533 ], [ 0, %491 ], [ %518, %533 ], [ %518, %533 ], [ %518, %533 ], [ 0, %539 ], [ -12, %505 ], [ -12, %508 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %627

545:                                              ; preds = %93
  %546 = and i32 %100, -98305
  br label %579

547:                                              ; preds = %93
  %548 = and i32 %100, -98305
  %549 = or i32 %548, 32768
  br label %579

550:                                              ; preds = %93
  %551 = and i32 %100, -98305
  %552 = or i32 %551, 65536
  br label %579

553:                                              ; preds = %93
  %554 = or i32 %100, 131072
  br label %579

555:                                              ; preds = %93
  %556 = and i32 %100, 16384
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %652

558:                                              ; preds = %555
  %559 = and i32 %100, -131073
  br label %579

560:                                              ; preds = %93
  %561 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 14
  %562 = load ptr, ptr %561, align 4
  %563 = icmp eq ptr %562, null
  %564 = and i32 %100, 8
  %565 = icmp eq i32 %564, 0
  %566 = select i1 %563, i1 %565, i1 false
  br i1 %566, label %567, label %652

567:                                              ; preds = %560
  %568 = or i32 %100, 33554432
  br label %579

569:                                              ; preds = %93
  %570 = and i32 %100, -33554433
  br label %579

571:                                              ; preds = %93
  %572 = or i32 %100, 67108864
  br label %579

573:                                              ; preds = %93
  %574 = and i32 %100, 268715008
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %652

576:                                              ; preds = %573
  %577 = and i32 %100, -67108865
  br label %579

578:                                              ; preds = %93, %93
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 419, 0\0A.popsection", ""() #7, !srcloc !20
  unreachable

579:                                              ; preds = %576, %571, %569, %567, %558, %553, %550, %547, %545
  %580 = phi i32 [ %577, %576 ], [ %572, %571 ], [ %570, %569 ], [ %568, %567 ], [ %559, %558 ], [ %554, %553 ], [ %552, %550 ], [ %549, %547 ], [ %546, %545 ]
  %581 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 6
  %582 = load ptr, ptr %581, align 4
  %583 = icmp eq i32 %100, %580
  br i1 %583, label %584, label %585

584:                                              ; preds = %579, %93
  store ptr %87, ptr %15, align 4
  br label %638

585:                                              ; preds = %579
  %586 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 13
  %587 = load i32, ptr %586, align 4
  %588 = sub i32 %94, %89
  %589 = lshr i32 %588, 12
  %590 = add i32 %587, %589
  %591 = load ptr, ptr %15, align 4
  %592 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 11
  %593 = load ptr, ptr %592, align 4
  %594 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 14
  %595 = load ptr, ptr %594, align 4
  %596 = call ptr @vma_merge(ptr noundef %582, ptr noundef %591, i32 noundef %94, i32 noundef %98, i32 noundef %580, ptr noundef %593, ptr noundef %595, i32 noundef %590, ptr noundef null, ptr noundef null) #7
  store ptr %596, ptr %15, align 4
  %597 = icmp eq ptr %596, null
  br i1 %597, label %598, label %620

598:                                              ; preds = %585
  store ptr %87, ptr %15, align 4
  %599 = load i32, ptr %87, align 4
  %600 = icmp eq i32 %599, %94
  br i1 %600, label %609, label %601

601:                                              ; preds = %598
  %602 = getelementptr inbounds %struct.anon, ptr %582, i32 0, i32 13
  %603 = load i32, ptr %602, align 8
  %604 = load i32, ptr @sysctl_max_map_count, align 4
  %605 = icmp slt i32 %603, %604
  br i1 %605, label %606, label %626, !prof !13

606:                                              ; preds = %601
  %607 = call i32 @__split_vma(ptr noundef %582, ptr noundef nonnull %87, i32 noundef %94, i32 noundef 1) #7
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %623

609:                                              ; preds = %606, %598
  %610 = load i32, ptr %96, align 4
  %611 = icmp eq i32 %610, %98
  br i1 %611, label %620, label %612

612:                                              ; preds = %609
  %613 = getelementptr inbounds %struct.anon, ptr %582, i32 0, i32 13
  %614 = load i32, ptr %613, align 8
  %615 = load i32, ptr @sysctl_max_map_count, align 4
  %616 = icmp slt i32 %614, %615
  br i1 %616, label %617, label %626, !prof !13

617:                                              ; preds = %612
  %618 = call i32 @__split_vma(ptr noundef %582, ptr noundef nonnull %87, i32 noundef %98, i32 noundef 0) #7
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %623

620:                                              ; preds = %617, %609, %585
  %621 = phi ptr [ %87, %617 ], [ %87, %609 ], [ %596, %585 ]
  %622 = getelementptr inbounds %struct.vm_area_struct, ptr %621, i32 0, i32 8
  store i32 %580, ptr %622, align 4
  br label %630

623:                                              ; preds = %617, %606
  %624 = phi i32 [ %607, %606 ], [ %618, %617 ]
  %625 = icmp eq i32 %624, -12
  br i1 %625, label %626, label %652

626:                                              ; preds = %623, %612, %601
  br label %652

627:                                              ; preds = %543, %489, %402, %323, %145, %142
  %628 = phi i32 [ %544, %543 ], [ %403, %402 ], [ %324, %323 ], [ %138, %142 ], [ %138, %145 ], [ %490, %489 ]
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %652

630:                                              ; preds = %627, %620, %408, %267, %264, %241, %152
  %631 = load ptr, ptr %15, align 4
  %632 = icmp eq ptr %631, null
  br i1 %632, label %636, label %633

633:                                              ; preds = %630
  %634 = getelementptr inbounds %struct.vm_area_struct, ptr %631, i32 0, i32 1
  %635 = load i32, ptr %634, align 4
  br label %638

636:                                              ; preds = %630
  %637 = icmp ult i32 %97, %27
  br i1 %637, label %646, label %652

638:                                              ; preds = %633, %584
  %639 = phi i32 [ %97, %584 ], [ %635, %633 ]
  %640 = phi ptr [ %87, %584 ], [ %631, %633 ]
  %641 = call i32 @llvm.umax.i32(i32 %98, i32 %639) #7
  %642 = icmp ult i32 %641, %27
  br i1 %642, label %643, label %652

643:                                              ; preds = %638
  %644 = getelementptr inbounds %struct.vm_area_struct, ptr %640, i32 0, i32 2
  %645 = load ptr, ptr %644, align 4
  br label %648

646:                                              ; preds = %636
  %647 = call ptr @find_vma(ptr noundef %0, i32 noundef %98) #7
  br label %648

648:                                              ; preds = %646, %643
  %649 = phi i32 [ %98, %646 ], [ %641, %643 ]
  %650 = phi ptr [ %647, %646 ], [ %645, %643 ]
  %651 = icmp eq ptr %650, null
  br i1 %651, label %652, label %85

652:                                              ; preds = %648, %638, %636, %627, %626, %623, %573, %560, %555, %407, %404, %117, %114, %110, %106, %101, %91, %54
  %653 = phi i32 [ %624, %623 ], [ -11, %626 ], [ -12, %54 ], [ -22, %407 ], [ -22, %404 ], [ -13, %117 ], [ -22, %106 ], [ -22, %110 ], [ -22, %114 ], [ -22, %101 ], [ -22, %573 ], [ -22, %560 ], [ -22, %555 ], [ %628, %627 ], [ -12, %648 ], [ %95, %638 ], [ %95, %636 ], [ -12, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #7
  call void @blk_finish_plug(ptr noundef nonnull %16) #7
  %654 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %655 = icmp sgt i32 %654, 0
  br i1 %55, label %660, label %656

656:                                              ; preds = %652
  br i1 %655, label %657, label %658

657:                                              ; preds = %656
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext true) #7
  br label %658

658:                                              ; preds = %657, %656
  %659 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 15
  call void @up_write(ptr noundef %659) #7
  br label %664

660:                                              ; preds = %652
  br i1 %655, label %661, label %662

661:                                              ; preds = %660
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext false) #7
  br label %662

662:                                              ; preds = %661, %660
  %663 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 15
  call void @up_read(ptr noundef %663) #7
  br label %664

664:                                              ; preds = %662, %658, %43, %29, %26, %20, %17, %4
  %665 = phi i32 [ -22, %17 ], [ -22, %20 ], [ -22, %26 ], [ 0, %29 ], [ -4, %43 ], [ %653, %662 ], [ %653, %658 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #7
  ret i32 %665
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_madvise(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #7
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @do_madvise(ptr noundef %6, i32 noundef %0, i32 noundef %1, i32 noundef %2) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_process_madvise(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [8 x %struct.iovec], align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.iov_iter, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store ptr %6, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %5
  %12 = inttoptr i32 %1 to ptr
  %13 = call i32 @import_iovec(i32 noundef 0, ptr noundef %12, i32 noundef %2, i32 noundef 8, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %73, label %15

15:                                               ; preds = %11
  %16 = call ptr @pidfd_get_task(i32 noundef %0, ptr noundef nonnull %9) #7
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %70

20:                                               ; preds = %15
  switch i32 %3, label %60 [
    i32 20, label %21
    i32 21, label %21
    i32 3, label %21
  ]

21:                                               ; preds = %20, %20, %20
  %22 = call ptr @mm_access(ptr noundef %16, i32 noundef 9) #7
  %23 = icmp eq ptr %22, null
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = ptrtoint ptr %22 to i32
  %28 = select i1 %24, i32 %27, i32 -3
  br label %60

29:                                               ; preds = %21
  %30 = call zeroext i1 @capable(i32 noundef 23) #7
  br i1 %30, label %31, label %58

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.iov_iter, ptr %8, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.iov_iter, ptr %8, i32 0, i32 5
  %37 = getelementptr inbounds %struct.iov_iter, ptr %8, i32 0, i32 3
  br label %38

38:                                               ; preds = %51, %35
  %39 = phi i32 [ %33, %35 ], [ %52, %51 ]
  %40 = load ptr, ptr %36, align 4, !noalias !21
  %41 = load ptr, ptr %40, align 4, !noalias !21
  %42 = load i32, ptr %37, align 4, !noalias !21
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = getelementptr inbounds %struct.iovec, ptr %40, i32 0, i32 1
  %45 = load i32, ptr %44, align 4, !noalias !21
  %46 = sub i32 %45, %42
  %47 = call i32 @llvm.umin.i32(i32 %39, i32 %46) #7
  %48 = ptrtoint ptr %43 to i32
  %49 = call i32 @do_madvise(ptr noundef %22, i32 noundef %48, i32 noundef %47, i32 noundef %3) #7
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %38
  call void @iov_iter_advance(ptr noundef nonnull %8, i32 noundef %47) #7
  %52 = load i32, ptr %32, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %38

54:                                               ; preds = %51, %31
  %55 = phi i32 [ %13, %31 ], [ %49, %51 ]
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 %33, i32 %55
  br label %58

58:                                               ; preds = %54, %38, %29
  %59 = phi i32 [ -1, %29 ], [ %57, %54 ], [ %49, %38 ]
  call void @mmput(ptr noundef %22) #7
  br label %60

60:                                               ; preds = %58, %26, %20
  %61 = phi i32 [ %59, %58 ], [ -22, %20 ], [ %28, %26 ]
  %62 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #7, !srcloc !9
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #7, !srcloc !25
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = icmp sgt i32 %64, 0
  br i1 %67, label %70, label %68, !prof !13

68:                                               ; preds = %66
  call void @refcount_warn_saturate(ptr noundef %62, i32 noundef 3) #7
  br label %70

69:                                               ; preds = %60
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  call void @__put_task_struct(ptr noundef %16) #7
  br label %70

70:                                               ; preds = %69, %68, %66, %18
  %71 = phi i32 [ %19, %18 ], [ %61, %66 ], [ %61, %68 ], [ %61, %69 ]
  %72 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %72) #7
  br label %73

73:                                               ; preds = %70, %11, %5
  %74 = phi i32 [ %13, %11 ], [ %71, %70 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma_prev(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fadvise(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @swapin_walk_pmd_entry(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %79, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17, !prof !13

12:                                               ; preds = %9
  %13 = icmp eq i32 %1, %2
  br i1 %13, label %79, label %14

14:                                               ; preds = %12
  %15 = lshr i32 %1, 12
  %16 = and i32 %15, 511
  br label %18

17:                                               ; preds = %9
  tail call void @pmd_clear_bad(ptr noundef %0) #7
  br label %79

18:                                               ; preds = %77, %14
  %19 = phi i32 [ %7, %14 ], [ %78, %77 ]
  %20 = phi i32 [ %1, %14 ], [ %75, %77 ]
  %21 = load ptr, ptr @mem_map, align 4
  %22 = lshr i32 %19, 12
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %24 = sub i32 %22, %23
  %25 = getelementptr %struct.page, ptr %21, i32 %24, i32 1, i32 0, i32 3
  %26 = getelementptr %struct.page, ptr %21, i32 %24
  %27 = load i32, ptr @pgprot_kernel, align 4
  %28 = or i32 %27, 512
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %29 = tail call ptr @llvm.thread.pointer() #7
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 149
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  %33 = tail call ptr @__kmap_local_page_prot(ptr noundef %26, i32 noundef %28) #7
  %34 = getelementptr i32, ptr %33, i32 %16
  tail call void @_raw_spin_lock(ptr noundef %25) #7
  %35 = sub i32 %20, %1
  %36 = lshr i32 %35, 12
  %37 = getelementptr i32, ptr %34, i32 %36
  %38 = load i32, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !29
  %39 = load i16, ptr %25, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  tail call void @kunmap_local_indexed(ptr noundef %34) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  %41 = load i32, ptr %30, align 8
  %42 = add i32 %41, -1
  store i32 %42, ptr %30, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %43 = and i32 %38, 1
  %44 = icmp eq i32 %43, 0
  %45 = icmp ne i32 %38, 0
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %74

47:                                               ; preds = %18
  %48 = lshr i32 %38, 7
  %49 = shl i32 %38, 24
  %50 = and i32 %49, 2080374784
  %51 = or i32 %50, %48
  %52 = icmp ult i32 %51, 2013265920
  br i1 %52, label %53, label %74, !prof !13

53:                                               ; preds = %47
  %54 = insertvalue [1 x i32] poison, i32 %51, 0
  %55 = tail call ptr @read_swap_cache_async([1 x i32] %54, i32 noundef 17829066, ptr noundef %6, i32 noundef %20, i1 noundef zeroext false) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !13

62:                                               ; preds = %57
  %63 = add i32 %59, -1
  br label %66

64:                                               ; preds = %57
  %65 = ptrtoint ptr %55 to i32
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = inttoptr i32 %67 to ptr
  %69 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #7, !srcloc !9
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #7, !srcloc !15
  %71 = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  tail call void @__put_page(ptr noundef %68) #7
  br label %74

74:                                               ; preds = %73, %66, %53, %47, %18
  %75 = add i32 %20, 4096
  %76 = icmp eq i32 %75, %2
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %0, align 4
  br label %18

79:                                               ; preds = %74, %17, %12, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_swap_cache_async([1 x i32], i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @madvise_cold_or_pageout_pte_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.list_head, align 8
  %6 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.madvise_walk_private, ptr %7, i32 0, i32 1
  %10 = load i8, ptr %9, align 4, !range !35
  %11 = icmp eq i8 %10, 0
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store ptr %5, ptr %5, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %15, align 4
  %16 = tail call ptr @llvm.thread.pointer() #7
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 98, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %137

25:                                               ; preds = %20, %4
  %26 = load ptr, ptr @mem_map, align 4
  %27 = load i32, ptr %0, align 4
  %28 = lshr i32 %27, 12
  %29 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %30 = sub i32 %28, %29
  %31 = getelementptr %struct.page, ptr %26, i32 %30, i32 1, i32 0, i32 3
  %32 = getelementptr %struct.page, ptr %26, i32 %30
  %33 = load i32, ptr @pgprot_kernel, align 4
  %34 = or i32 %33, 512
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %35 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 149
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  %38 = call ptr @__kmap_local_page_prot(ptr noundef %32, i32 noundef %34) #7
  %39 = lshr i32 %1, 12
  %40 = and i32 %39, 511
  %41 = getelementptr i32, ptr %38, i32 %40
  call void @_raw_spin_lock(ptr noundef %31) #7
  %42 = icmp ult i32 %1, %2
  br i1 %42, label %43, label %128

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.mmu_gather, ptr %8, i32 0, i32 1
  %45 = getelementptr inbounds %struct.mmu_gather, ptr %8, i32 0, i32 2
  %46 = getelementptr inbounds %struct.mmu_gather, ptr %8, i32 0, i32 3
  br label %47

47:                                               ; preds = %124, %43
  %48 = phi i32 [ %1, %43 ], [ %126, %124 ]
  %49 = phi ptr [ %41, %43 ], [ %125, %124 ]
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %124, label %53

53:                                               ; preds = %47
  %54 = call ptr @vm_normal_page(ptr noundef %14, i32 noundef %48, i32 noundef %50) #7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %124, label %56

56:                                               ; preds = %53
  %57 = load volatile i32, ptr %54, align 4
  %58 = and i32 %57, 65536
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65, !prof !13

65:                                               ; preds = %60, %56
  %66 = call i32 @__page_mapcount(ptr noundef nonnull %54) #7
  br label %71

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 2
  %69 = load volatile i32, ptr %68, align 4
  %70 = add i32 %69, 1
  br label %71

71:                                               ; preds = %67, %65
  %72 = phi i32 [ %66, %65 ], [ %70, %67 ]
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %124

74:                                               ; preds = %71
  %75 = and i32 %50, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %49, align 4
  %79 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  call void %79(ptr noundef %49, i32 noundef 0, i32 noundef 0) #7
  %80 = and i32 %78, -3
  call void @set_pte_at(ptr noundef %12, i32 noundef %48, ptr noundef %49, i32 noundef %80) #7
  %81 = load i32, ptr %44, align 4
  %82 = call i32 @llvm.umin.i32(i32 %81, i32 %48) #7
  store i32 %82, ptr %44, align 4
  %83 = load i32, ptr %45, align 4
  %84 = add i32 %48, 4096
  %85 = call i32 @llvm.umax.i32(i32 %83, i32 %84) #7
  store i32 %85, ptr %45, align 4
  %86 = load i16, ptr %46, align 4
  %87 = or i16 %86, 8
  store i16 %87, ptr %46, align 4
  br label %88

88:                                               ; preds = %77, %74
  %89 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93, !prof !13

93:                                               ; preds = %88
  %94 = add i32 %90, -1
  br label %97

95:                                               ; preds = %88
  %96 = ptrtoint ptr %54 to i32
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = inttoptr i32 %98 to ptr
  call void @_clear_bit(i32 noundef 1, ptr noundef %99) #7
  %100 = load volatile i32, ptr %89, align 4
  br i1 %11, label %123, label %101

101:                                              ; preds = %97
  %102 = call i32 @isolate_lru_page(ptr noundef nonnull %54) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  %105 = load volatile i32, ptr %89, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !13

108:                                              ; preds = %104
  %109 = add i32 %105, -1
  br label %112

110:                                              ; preds = %104
  %111 = ptrtoint ptr %54 to i32
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = inttoptr i32 %113 to ptr
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 1048576
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  call void @putback_lru_page(ptr noundef nonnull %54) #7
  br label %124

119:                                              ; preds = %112
  %120 = load ptr, ptr %5, align 8
  %121 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %89, ptr %121, align 4
  store ptr %120, ptr %89, align 4
  %122 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %5, ptr %122, align 4
  store volatile ptr %89, ptr %5, align 8
  br label %124

123:                                              ; preds = %97
  call void @deactivate_page(ptr noundef nonnull %54) #7
  br label %124

124:                                              ; preds = %123, %119, %118, %101, %71, %53, %47
  %125 = getelementptr i32, ptr %49, i32 1
  %126 = add i32 %48, 4096
  %127 = icmp ult i32 %126, %2
  br i1 %127, label %47, label %128

128:                                              ; preds = %124, %25
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !29
  %129 = load i16, ptr %31, align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  call void @kunmap_local_indexed(ptr noundef %41) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  %131 = load i32, ptr %35, align 8
  %132 = add i32 %131, -1
  store i32 %132, ptr %35, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  br i1 %11, label %135, label %133

133:                                              ; preds = %128
  %134 = call i32 @reclaim_pages(ptr noundef nonnull %5) #7
  br label %135

135:                                              ; preds = %133, %128
  %136 = call i32 @__cond_resched() #7
  br label %137

137:                                              ; preds = %135, %20
  %138 = phi i32 [ 0, %135 ], [ -4, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_lru_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_lru_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reclaim_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_mm(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zap_page_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @madvise_free_pte_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr @mem_map, align 4
  %11 = load i32, ptr %0, align 4
  %12 = lshr i32 %11, 12
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr %struct.page, ptr %10, i32 %14, i32 1, i32 0, i32 3
  %16 = getelementptr %struct.page, ptr %10, i32 %14
  %17 = load i32, ptr @pgprot_kernel, align 4
  %18 = or i32 %17, 512
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %19 = tail call ptr @llvm.thread.pointer() #7
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 149
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  %23 = tail call ptr @__kmap_local_page_prot(ptr noundef %16, i32 noundef %18) #7
  %24 = lshr i32 %1, 12
  %25 = and i32 %24, 511
  %26 = getelementptr i32, ptr %23, i32 %25
  tail call void @_raw_spin_lock(ptr noundef %15) #7
  %27 = icmp eq i32 %1, %2
  br i1 %27, label %189, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.mmu_gather, ptr %6, i32 0, i32 1
  %30 = getelementptr inbounds %struct.mmu_gather, ptr %6, i32 0, i32 2
  %31 = getelementptr inbounds %struct.mmu_gather, ptr %6, i32 0, i32 3
  br label %32

32:                                               ; preds = %173, %28
  %33 = phi i32 [ %1, %28 ], [ %176, %173 ]
  %34 = phi ptr [ %26, %28 ], [ %175, %173 ]
  %35 = phi i32 [ 0, %28 ], [ %174, %173 ]
  %36 = load i32, ptr %34, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %173, label %38

38:                                               ; preds = %32
  %39 = and i32 %36, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = lshr i32 %36, 7
  %43 = shl i32 %36, 24
  %44 = and i32 %43, 2080374784
  %45 = or i32 %44, %42
  %46 = icmp ult i32 %45, 2013265920
  br i1 %46, label %47, label %173

47:                                               ; preds = %41
  %48 = insertvalue [1 x i32] poison, i32 %45, 0
  %49 = add i32 %35, -1
  %50 = tail call i32 @free_swap_and_cache([1 x i32] %48) #7
  %51 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %51(ptr noundef %34, i32 noundef 0, i32 noundef 0) #7
  br label %173

52:                                               ; preds = %38
  %53 = tail call ptr @vm_normal_page(ptr noundef %9, i32 noundef %33, i32 noundef %36) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %173, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 1
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !13

60:                                               ; preds = %55
  %61 = add i32 %57, -1
  br label %64

62:                                               ; preds = %55
  %63 = ptrtoint ptr %53 to i32
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = inttoptr i32 %65 to ptr
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 524288
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load volatile i32, ptr %66, align 4
  %72 = and i32 %71, 1024
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %70, %64
  %75 = load volatile i32, ptr %56, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78, !prof !13

78:                                               ; preds = %74
  %79 = add i32 %75, -1
  br label %82

80:                                               ; preds = %74
  %81 = ptrtoint ptr %53 to i32
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = inttoptr i32 %83 to ptr
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %158, label %88

88:                                               ; preds = %82, %70
  %89 = load volatile i32, ptr %56, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92, !prof !13

92:                                               ; preds = %88
  %93 = add i32 %89, -1
  br label %96

94:                                               ; preds = %88
  %95 = ptrtoint ptr %53 to i32
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = inttoptr i32 %97 to ptr
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %173

102:                                              ; preds = %96
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #7, !srcloc !9
  %103 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #7, !srcloc !36
  %104 = extractvalue { i32, i32, i32 } %103, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !37
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %173

107:                                              ; preds = %102
  %108 = load volatile i32, ptr %53, align 4
  %109 = and i32 %108, 65536
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load volatile i32, ptr %56, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115, !prof !13

115:                                              ; preds = %111, %107
  %116 = tail call i32 @__page_mapcount(ptr noundef nonnull %53) #7
  br label %121

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 2
  %119 = load volatile i32, ptr %118, align 4
  %120 = add i32 %119, 1
  br label %121

121:                                              ; preds = %117, %115
  %122 = phi i32 [ %116, %115 ], [ %120, %117 ]
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  tail call void @unlock_page(ptr noundef nonnull %53) #7
  br label %173

125:                                              ; preds = %121
  %126 = load volatile i32, ptr %56, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129, !prof !13

129:                                              ; preds = %125
  %130 = add i32 %126, -1
  br label %133

131:                                              ; preds = %125
  %132 = ptrtoint ptr %53 to i32
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = inttoptr i32 %134 to ptr
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %136, 524288
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %133
  %140 = load volatile i32, ptr %135, align 4
  %141 = and i32 %140, 1024
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = tail call i32 @try_to_free_swap(ptr noundef nonnull %53) #7
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  tail call void @unlock_page(ptr noundef nonnull %53) #7
  br label %173

147:                                              ; preds = %143, %139, %133
  %148 = load volatile i32, ptr %56, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151, !prof !13

151:                                              ; preds = %147
  %152 = add i32 %148, -1
  br label %155

153:                                              ; preds = %147
  %154 = ptrtoint ptr %53 to i32
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  %157 = inttoptr i32 %156 to ptr
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %157) #7
  tail call void @unlock_page(ptr noundef nonnull %53) #7
  br label %158

158:                                              ; preds = %155, %82
  %159 = and i32 %36, 66
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr %34, align 4
  %163 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %163(ptr noundef %34, i32 noundef 0, i32 noundef 0) #7
  %164 = and i32 %162, -67
  tail call void @set_pte_at(ptr noundef %7, i32 noundef %33, ptr noundef %34, i32 noundef %164) #7
  %165 = load i32, ptr %29, align 4
  %166 = tail call i32 @llvm.umin.i32(i32 %165, i32 %33) #7
  store i32 %166, ptr %29, align 4
  %167 = load i32, ptr %30, align 4
  %168 = add i32 %33, 4096
  %169 = tail call i32 @llvm.umax.i32(i32 %167, i32 %168) #7
  store i32 %169, ptr %30, align 4
  %170 = load i16, ptr %31, align 4
  %171 = or i16 %170, 8
  store i16 %171, ptr %31, align 4
  br label %172

172:                                              ; preds = %161, %158
  tail call void @mark_page_lazyfree(ptr noundef nonnull %53) #7
  br label %173

173:                                              ; preds = %172, %146, %124, %102, %96, %52, %47, %41, %32
  %174 = phi i32 [ %35, %124 ], [ %35, %172 ], [ %35, %146 ], [ %35, %102 ], [ %35, %52 ], [ %35, %32 ], [ %49, %47 ], [ %35, %41 ], [ %35, %96 ]
  %175 = getelementptr i32, ptr %34, i32 1
  %176 = add i32 %33, 4096
  %177 = icmp eq i32 %176, %2
  br i1 %177, label %178, label %32

178:                                              ; preds = %173
  %179 = icmp eq i32 %174, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 37
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %7
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  tail call void @sync_mm_rss(ptr noundef %7) #7
  br label %185

185:                                              ; preds = %184, %180
  %186 = getelementptr %struct.anon, ptr %7, i32 0, i32 40, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %186) #7, !srcloc !9
  %187 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %186, ptr %186, i32 %174, ptr elementtype(i32) %186) #7, !srcloc !39
  %188 = extractvalue { i32, i32 } %187, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !40
  tail call void @mm_trace_rss_stat(ptr noundef %7, i32 noundef 2, i32 noundef %188) #7
  br label %189

189:                                              ; preds = %185, %178, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !29
  %190 = load i16, ptr %15, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  tail call void @kunmap_local_indexed(ptr noundef %26) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  %192 = load i32, ptr %20, align 8
  %193 = add i32 %192, -1
  store i32 %193, ptr %20, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %194 = tail call i32 @__cond_resched() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_swap_and_cache([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_lazyfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @faultin_vma_page_range(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_merge(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__split_vma(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_get_task(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mm_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
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
!9 = !{i64 879482, i64 2148369453, i64 2148369479, i64 2148369526, i64 2148369548, i64 2148369576, i64 2148369596}
!10 = !{i64 2148380868, i64 2148380894, i64 2148380923, i64 2148380957, i64 2148380988, i64 2148381011}
!11 = !{i64 2149445320}
!12 = !{i64 2149445537}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148481547}
!15 = !{i64 2148383909, i64 2148383941, i64 2148383970, i64 2148384004, i64 2148384035, i64 2148384058}
!16 = !{i64 2148481750}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 4001, i32 4000000}
!19 = !{i64 2151768347}
!20 = !{i64 2151902603, i64 2151903091, i64 2151902640, i64 2151902696, i64 2151902730, i64 2151902754, i64 2151902795, i64 2151902816, i64 2151902844, i64 2151902878}
!21 = !{!22}
!22 = distinct !{!22, !23, !"iov_iter_iovec: argument 0"}
!23 = distinct !{!23, !"iov_iter_iovec"}
!24 = !{i64 2148482548}
!25 = !{i64 2148384683, i64 2148384715, i64 2148384744, i64 2148384778, i64 2148384809, i64 2148384832}
!26 = !{i64 2149395900}
!27 = !{i64 2152458625}
!28 = !{i64 2151543217}
!29 = !{i64 2149046548}
!30 = !{i64 2149042372}
!31 = !{i64 2149042447, i64 2149042474, i64 2149042521, i64 2149042543, i64 2149042571, i64 2149042591}
!32 = !{i64 2149069551}
!33 = !{i64 2151543424}
!34 = !{i64 2152461250}
!35 = !{i8 0, i8 2}
!36 = !{i64 2148389330, i64 2148389362, i64 2148389391, i64 2148389425, i64 2148389456, i64 2148389479}
!37 = !{i64 2148490670}
!38 = !{i64 2148478714}
!39 = !{i64 2148381552, i64 2148381584, i64 2148381613, i64 2148381647, i64 2148381678, i64 2148381701}
!40 = !{i64 2148478917}
