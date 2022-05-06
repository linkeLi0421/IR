; ModuleID = '/llk/IR/mm/mincore.c_pt.bc'
source_filename = "../mm/mincore.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.23, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.90, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.90 = type { %struct.atomic_t }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@mincore_walk_ops = internal constant %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @mincore_pte_range, ptr null, ptr @mincore_unmapped_range, ptr @mincore_hugetlb, ptr null, ptr null, ptr null }, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@swapper_spaces = external dso_local local_unnamed_addr global [0 x ptr], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4

@sys_mincore = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_mincore

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mincore(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %2 to ptr
  %5 = and i32 %0, 4095
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %118

7:                                                ; preds = %3
  %8 = inttoptr i32 %0 to ptr
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %1, i32 -1090519040) #6, !srcloc !8
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %118

12:                                               ; preds = %7
  %13 = lshr i32 %1, 12
  %14 = and i32 %1, 4095
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %13, %16
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %17, i32 -1090519040) #6, !srcloc !9
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %118

21:                                               ; preds = %12
  %22 = tail call i32 @__get_free_pages(i32 noundef 1051840, i32 noundef 0) #7
  %23 = inttoptr i32 %22 to ptr
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %118, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %17, 0
  br i1 %26, label %116, label %27

27:                                               ; preds = %25
  %28 = tail call ptr @llvm.thread.pointer() #7
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 37
  %30 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  br label %31

31:                                               ; preds = %110, %27
  %32 = phi i32 [ %0, %27 ], [ %114, %110 ]
  %33 = phi ptr [ %4, %27 ], [ %112, %110 ]
  %34 = phi i32 [ %17, %27 ], [ %111, %110 ]
  %35 = load ptr, ptr %29, align 4
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %35, i1 noundef zeroext false) #7
  br label %39

39:                                               ; preds = %38, %31
  %40 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 15
  tail call void @down_read(ptr noundef %40) #7
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %35, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %44

44:                                               ; preds = %43, %39
  %45 = tail call i32 @llvm.umin.i32(i32 %34, i32 4096) #7
  %46 = load ptr, ptr %29, align 4
  %47 = tail call ptr @find_vma(ptr noundef %46, i32 noundef %32) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %91, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %47, align 4
  %51 = icmp ugt i32 %50, %32
  br i1 %51, label %91, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = shl nuw nsw i32 %45, 12
  %56 = add i32 %55, %32
  %57 = tail call i32 @llvm.umin.i32(i32 %54, i32 %56) #7
  %58 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 12
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %83, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 14
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.file, ptr %63, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %67) #7
  br i1 %68, label %83, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %62, align 4
  %71 = getelementptr inbounds %struct.file, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.vfsmount, ptr %72, i32 0, i32 3
  %74 = load volatile ptr, ptr %73, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %75 = getelementptr inbounds %struct.file, ptr %70, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = tail call i32 @inode_permission(ptr noundef %74, ptr noundef %76, i32 noundef 2) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %69, %61
  %80 = sub i32 4095, %32
  %81 = add i32 %80, %57
  %82 = lshr i32 %81, 12
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %23, i8 1, i32 %82, i1 false) #7
  br label %91

83:                                               ; preds = %69, %65, %52
  %84 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 6
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 @walk_page_range(ptr noundef %85, i32 noundef %32, i32 noundef %57, ptr noundef nonnull @mincore_walk_ops, ptr noundef nonnull %23) #7
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = sub i32 %57, %32
  %90 = lshr i32 %89, 12
  br label %91

91:                                               ; preds = %88, %83, %79, %49, %44
  %92 = phi i32 [ %90, %88 ], [ %82, %79 ], [ -12, %49 ], [ -12, %44 ], [ %86, %83 ]
  %93 = load ptr, ptr %29, align 4
  %94 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  tail call void @__mmap_lock_do_trace_released(ptr noundef %93, i1 noundef zeroext false) #7
  br label %97

97:                                               ; preds = %96, %91
  %98 = getelementptr inbounds %struct.anon, ptr %93, i32 0, i32 15
  tail call void @up_read(ptr noundef %98) #7
  %99 = icmp slt i32 %92, 1
  br i1 %99, label %116, label %100

100:                                              ; preds = %97
  %101 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 %92, i32 -1090519040) #6, !srcloc !11
  %102 = extractvalue { i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #8, !srcloc !12
  %106 = and i32 %105, -13
  %107 = or i32 %106, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #7, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  %108 = tail call i32 @arm_copy_to_user(ptr noundef %33, ptr noundef nonnull %23, i32 noundef %92) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #7, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !14
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = sub i32 %34, %92
  %112 = getelementptr i8, ptr %33, i32 %92
  %113 = shl nuw i32 %92, 12
  %114 = add i32 %113, %32
  %115 = icmp eq i32 %111, 0
  br i1 %115, label %116, label %31

116:                                              ; preds = %110, %104, %100, %97, %25
  %117 = phi i32 [ 0, %25 ], [ -14, %100 ], [ -14, %104 ], [ %92, %97 ], [ 0, %110 ]
  tail call void @free_pages(i32 noundef %22, i32 noundef 0) #7
  br label %118

118:                                              ; preds = %116, %21, %12, %7, %3
  %119 = phi i32 [ %117, %116 ], [ -22, %3 ], [ -12, %7 ], [ -14, %12 ], [ -11, %21 ]
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mincore_pte_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @mem_map, align 4
  %10 = load i32, ptr %0, align 4
  %11 = lshr i32 %10, 12
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %13 = sub i32 %11, %12
  %14 = getelementptr %struct.page, ptr %9, i32 %13, i32 1, i32 0, i32 3
  %15 = getelementptr %struct.page, ptr %9, i32 %13
  %16 = load i32, ptr @pgprot_kernel, align 4
  %17 = or i32 %16, 512
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  %18 = tail call ptr @llvm.thread.pointer() #7
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 149
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %22 = tail call ptr @__kmap_local_page_prot(ptr noundef %15, i32 noundef %17) #7
  %23 = lshr i32 %1, 12
  %24 = and i32 %23, 511
  %25 = getelementptr i32, ptr %22, i32 %24
  tail call void @_raw_spin_lock(ptr noundef %14) #7
  %26 = icmp eq i32 %2, %1
  br i1 %26, label %94, label %27

27:                                               ; preds = %89, %4
  %28 = phi i32 [ %92, %89 ], [ %1, %4 ]
  %29 = phi ptr [ %91, %89 ], [ %25, %4 ]
  %30 = phi ptr [ %90, %89 ], [ %8, %4 ]
  %31 = load i32, ptr %29, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = add i32 %28, 4096
  %35 = tail call fastcc i32 @__mincore_unmapped_range(i32 noundef %28, i32 noundef %34, ptr noundef %6, ptr noundef %30)
  br label %89

36:                                               ; preds = %27
  %37 = and i32 %31, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i8 1, ptr %30, align 1
  br label %89

40:                                               ; preds = %36
  %41 = shl i32 %31, 24
  %42 = and i32 %41, 2080374784
  %43 = icmp ult i32 %42, 2013265920
  br i1 %43, label %44, label %87

44:                                               ; preds = %40
  %45 = lshr i32 %31, 7
  %46 = lshr exact i32 %42, 26
  %47 = getelementptr [0 x ptr], ptr @swapper_spaces, i32 0, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = lshr i32 %31, 21
  %50 = getelementptr %struct.address_space, ptr %48, i32 %49
  %51 = tail call ptr @find_get_incore_page(ptr noundef %50, i32 noundef %45) #7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %87, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !17

58:                                               ; preds = %53
  %59 = add i32 %55, -1
  br label %62

60:                                               ; preds = %53
  %61 = ptrtoint ptr %51 to i32
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = inttoptr i32 %63 to ptr
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  br label %69

69:                                               ; preds = %68, %62
  %70 = lshr exact i32 %66, 2
  %71 = trunc i32 %70 to i8
  %72 = load volatile i32, ptr %54, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75, !prof !17

75:                                               ; preds = %69
  %76 = add i32 %72, -1
  br label %79

77:                                               ; preds = %69
  %78 = ptrtoint ptr %51 to i32
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.page, ptr %81, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #7, !srcloc !20
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #7, !srcloc !21
  %84 = extractvalue { i32, i32 } %83, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  tail call void @__put_page(ptr noundef %81) #7
  br label %87

87:                                               ; preds = %86, %79, %44, %40
  %88 = phi i8 [ 1, %40 ], [ 0, %44 ], [ %71, %79 ], [ %71, %86 ]
  store i8 %88, ptr %30, align 1
  br label %89

89:                                               ; preds = %87, %39, %33
  %90 = getelementptr i8, ptr %30, i32 1
  %91 = getelementptr i32, ptr %29, i32 1
  %92 = add i32 %28, 4096
  %93 = icmp eq i32 %92, %2
  br i1 %93, label %94, label %27

94:                                               ; preds = %89, %4
  %95 = phi ptr [ %25, %4 ], [ %91, %89 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !23
  %96 = load i16, ptr %14, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %98 = getelementptr i32, ptr %95, i32 -1
  tail call void @kunmap_local_indexed(ptr noundef %98) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %99 = load i32, ptr %19, align 8
  %100 = add i32 %99, -1
  store i32 %100, ptr %19, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  %101 = sub i32 %2, %1
  %102 = lshr i32 %101, 12
  %103 = load ptr, ptr %7, align 4
  %104 = getelementptr i8, ptr %103, i32 %102
  store ptr %104, ptr %7, align 4
  %105 = tail call i32 @__cond_resched() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mincore_unmapped_range(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @__mincore_unmapped_range(i32 noundef %0, i32 noundef %1, ptr noundef %6, ptr noundef %8)
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 %9
  store ptr %11, ptr %7, align 4
  ret i32 0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mincore_hugetlb(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #4 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mincore.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 40, 0\0A.popsection", ""() #7, !srcloc !29
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mincore_unmapped_range(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = sub i32 %1, %0
  %6 = lshr i32 %5, 12
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp ult i32 %5, 4096
  br i1 %9, label %11, label %14

11:                                               ; preds = %4
  br i1 %10, label %73, label %12

12:                                               ; preds = %11
  %13 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  call void @llvm.memset.p0.i32(ptr align 1 %3, i8 0, i32 %13, i1 false)
  br label %73

14:                                               ; preds = %4
  br i1 %10, label %73, label %15

15:                                               ; preds = %14
  %16 = load i32, ptr %2, align 4
  %17 = sub i32 %0, %16
  %18 = lshr i32 %17, 12
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  %22 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %23

23:                                               ; preds = %70, %15
  %24 = phi ptr [ %72, %70 ], [ %8, %15 ]
  %25 = phi i32 [ %71, %70 ], [ %21, %15 ]
  %26 = phi i32 [ %68, %70 ], [ 0, %15 ]
  %27 = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 17
  %28 = load ptr, ptr %27, align 8
  %29 = tail call ptr @find_get_incore_page(ptr noundef %28, i32 noundef %25) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %65, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !17

36:                                               ; preds = %31
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %31
  %39 = ptrtoint ptr %29 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  br label %47

47:                                               ; preds = %46, %40
  %48 = lshr exact i32 %44, 2
  %49 = trunc i32 %48 to i8
  %50 = load volatile i32, ptr %32, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !17

53:                                               ; preds = %47
  %54 = add i32 %50, -1
  br label %57

55:                                               ; preds = %47
  %56 = ptrtoint ptr %29 to i32
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #7, !srcloc !20
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #7, !srcloc !21
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call void @__put_page(ptr noundef %59) #7
  br label %65

65:                                               ; preds = %64, %57, %23
  %66 = phi i8 [ 0, %23 ], [ %49, %57 ], [ %49, %64 ]
  %67 = getelementptr i8, ptr %3, i32 %26
  store i8 %66, ptr %67, align 1
  %68 = add nuw nsw i32 %26, 1
  %69 = icmp eq i32 %68, %22
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = add i32 %25, 1
  %72 = load ptr, ptr %7, align 4
  br label %23

73:                                               ; preds = %65, %14, %12, %11
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_incore_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

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
!8 = !{i64 2154083917, i64 2154083942}
!9 = !{i64 2154084603, i64 2154084628}
!10 = !{i64 2151773266}
!11 = !{i64 2151546208, i64 2151546233}
!12 = !{i64 4041742}
!13 = !{i64 4041939}
!14 = !{i64 2151527218}
!15 = !{i64 2152416146}
!16 = !{i64 2151548136}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149882570}
!19 = !{i64 2148486466}
!20 = !{i64 884401, i64 2148374372, i64 2148374398, i64 2148374445, i64 2148374467, i64 2148374495, i64 2148374515}
!21 = !{i64 2148388828, i64 2148388860, i64 2148388889, i64 2148388923, i64 2148388954, i64 2148388977}
!22 = !{i64 2148486669}
!23 = !{i64 2149051467}
!24 = !{i64 2149047291}
!25 = !{i64 2149047366, i64 2149047393, i64 2149047440, i64 2149047462, i64 2149047490, i64 2149047510}
!26 = !{i64 2149074470}
!27 = !{i64 2151548343}
!28 = !{i64 2152418771}
!29 = !{i64 2154067789, i64 2154068265, i64 2154067826, i64 2154067882, i64 2154067916, i64 2154067940, i64 2154067981, i64 2154068002, i64 2154068030, i64 2154068064}
