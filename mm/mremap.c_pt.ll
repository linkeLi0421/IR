; ModuleID = '/llk/IR/mm/mremap.c_pt.bc'
source_filename = "../mm/mremap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.93, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon_vma = type { ptr, %struct.rw_semaphore, %struct.atomic_t, i32, ptr, %struct.rb_root_cached }
%struct.page = type { i32, %union.anon.16, %union.anon.28, %struct.atomic_t }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.28 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%struct.llist_node = type { ptr }
%union.anon.37 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@sysctl_max_map_count = external dso_local local_unnamed_addr global i32, align 4
@vma_to_resize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"\014%s (%d): attempted to duplicate a private mapping with mremap.  This is not supported.\0A\00", align 1
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4

@sys_mremap = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_mremap

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @move_page_tables(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = add i32 %4, %1
  tail call void @flush_cache_range(ptr noundef %0, i32 noundef %1, i32 noundef %7) #6
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 6
  %9 = icmp ugt i32 %7, %1
  br i1 %9, label %10, label %162

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  br label %14

14:                                               ; preds = %158, %10
  %15 = phi i32 [ %1, %10 ], [ %159, %158 ]
  %16 = phi i32 [ %3, %10 ], [ %160, %158 ]
  %17 = tail call i32 @__cond_resched() #6
  %18 = add i32 %15, 2097152
  %19 = and i32 %18, -2097152
  %20 = sub i32 %19, %15
  %21 = sub i32 %7, %15
  %22 = tail call i32 @llvm.umin.i32(i32 %20, i32 %21) #6
  %23 = add i32 %16, 2097152
  %24 = and i32 %23, -2097152
  %25 = sub i32 %24, %16
  %26 = tail call i32 @llvm.umin.i32(i32 %22, i32 %25) #6
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = lshr i32 %15, 21
  %31 = getelementptr [2 x i32], ptr %29, i32 %30
  %32 = icmp eq ptr %31, null
  br i1 %32, label %158, label %33

33:                                               ; preds = %14
  %34 = lshr i32 %16, 21
  %35 = getelementptr [2 x i32], ptr %29, i32 %34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %162, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %31, align 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr null, ptr %31
  br i1 %39, label %158, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %35, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50, !prof !8

44:                                               ; preds = %41
  %45 = load ptr, ptr %8, align 4
  %46 = tail call i32 @__pte_alloc(ptr noundef %45, ptr noundef nonnull %35) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %162

48:                                               ; preds = %44
  %49 = load ptr, ptr %11, align 4
  br label %50

50:                                               ; preds = %48, %41
  %51 = phi ptr [ %49, %48 ], [ %27, %41 ]
  %52 = add i32 %26, %15
  br i1 %5, label %53, label %66

53:                                               ; preds = %50
  %54 = load ptr, ptr %12, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.file, ptr %54, i32 0, i32 17
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.address_space, ptr %58, i32 0, i32 6
  tail call void @down_write(ptr noundef %59) #6
  br label %60

60:                                               ; preds = %56, %53
  %61 = load ptr, ptr %13, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr inbounds %struct.anon_vma, ptr %64, i32 0, i32 1
  tail call void @down_write(ptr noundef %65) #6
  br label %66

66:                                               ; preds = %63, %60, %50
  %67 = load ptr, ptr @mem_map, align 4
  %68 = load i32, ptr %40, align 4
  %69 = lshr i32 %68, 12
  %70 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %71 = sub i32 %69, %70
  %72 = getelementptr %struct.page, ptr %67, i32 %71, i32 1, i32 0, i32 3
  %73 = getelementptr %struct.page, ptr %67, i32 %71
  %74 = load i32, ptr @pgprot_kernel, align 4
  %75 = or i32 %74, 512
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %76 = tail call ptr @llvm.thread.pointer() #6
  %77 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 149
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %80 = tail call ptr @__kmap_local_page_prot(ptr noundef %73, i32 noundef %75) #6
  %81 = lshr i32 %15, 12
  %82 = and i32 %81, 511
  %83 = getelementptr i32, ptr %80, i32 %82
  tail call void @_raw_spin_lock(ptr noundef %72) #6
  %84 = load ptr, ptr @mem_map, align 4
  %85 = load i32, ptr %35, align 4
  %86 = lshr i32 %85, 12
  %87 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %88 = sub i32 %86, %87
  %89 = getelementptr %struct.page, ptr %84, i32 %88
  %90 = load i32, ptr @pgprot_kernel, align 4
  %91 = or i32 %90, 512
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %92 = load i32, ptr %77, align 8
  %93 = add i32 %92, 1
  store i32 %93, ptr %77, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %94 = tail call ptr @__kmap_local_page_prot(ptr noundef %89, i32 noundef %91) #6
  %95 = lshr i32 %16, 12
  %96 = and i32 %95, 511
  %97 = getelementptr i32, ptr %94, i32 %96
  %98 = load ptr, ptr @mem_map, align 4
  %99 = load i32, ptr %35, align 4
  %100 = lshr i32 %99, 12
  %101 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %102 = sub i32 %100, %101
  %103 = getelementptr %struct.page, ptr %98, i32 %102, i32 1, i32 0, i32 3
  %104 = icmp eq ptr %103, %72
  br i1 %104, label %106, label %105

105:                                              ; preds = %66
  tail call void @_raw_spin_lock(ptr noundef %103) #6
  br label %106

106:                                              ; preds = %105, %66
  %107 = icmp ult i32 %15, %52
  br i1 %107, label %108, label %130

108:                                              ; preds = %121, %106
  %109 = phi i32 [ %124, %121 ], [ %15, %106 ]
  %110 = phi i32 [ %126, %121 ], [ %16, %106 ]
  %111 = phi i1 [ %122, %121 ], [ false, %106 ]
  %112 = phi ptr [ %125, %121 ], [ %97, %106 ]
  %113 = phi ptr [ %123, %121 ], [ %83, %106 ]
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %108
  %117 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %117(ptr noundef %113, i32 noundef 0, i32 noundef 0) #6
  %118 = and i32 %114, 1
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %119, i1 true, i1 %111
  tail call void @set_pte_at(ptr noundef %51, i32 noundef %110, ptr noundef %112, i32 noundef %114) #6
  br label %121

121:                                              ; preds = %116, %108
  %122 = phi i1 [ %120, %116 ], [ %111, %108 ]
  %123 = getelementptr i32, ptr %113, i32 1
  %124 = add i32 %109, 4096
  %125 = getelementptr i32, ptr %112, i32 1
  %126 = add i32 %110, 4096
  %127 = icmp ult i32 %124, %52
  br i1 %127, label %108, label %128

128:                                              ; preds = %121
  br i1 %122, label %129, label %130

129:                                              ; preds = %128
  tail call void @flush_tlb_range(ptr noundef %0, i32 noundef %15, i32 noundef %52) #6
  br label %130

130:                                              ; preds = %129, %128, %106
  %131 = phi ptr [ %125, %129 ], [ %125, %128 ], [ %97, %106 ]
  %132 = phi ptr [ %123, %129 ], [ %123, %128 ], [ %83, %106 ]
  br i1 %104, label %136, label %133

133:                                              ; preds = %130
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %134 = load i16, ptr %103, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %103, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  br label %136

136:                                              ; preds = %133, %130
  %137 = getelementptr i32, ptr %131, i32 -1
  tail call void @kunmap_local_indexed(ptr noundef %137) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %138 = load i32, ptr %77, align 8
  %139 = add i32 %138, -1
  store i32 %139, ptr %77, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %140 = load i16, ptr %72, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %142 = getelementptr i32, ptr %132, i32 -1
  tail call void @kunmap_local_indexed(ptr noundef %142) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %143 = load i32, ptr %77, align 8
  %144 = add i32 %143, -1
  store i32 %144, ptr %77, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br i1 %5, label %145, label %158

145:                                              ; preds = %136
  %146 = load ptr, ptr %13, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %146, align 4
  %150 = getelementptr inbounds %struct.anon_vma, ptr %149, i32 0, i32 1
  tail call void @up_write(ptr noundef %150) #6
  br label %151

151:                                              ; preds = %148, %145
  %152 = load ptr, ptr %12, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.file, ptr %152, i32 0, i32 17
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct.address_space, ptr %156, i32 0, i32 6
  tail call void @up_write(ptr noundef %157) #6
  br label %158

158:                                              ; preds = %154, %151, %136, %37, %14
  %159 = add i32 %26, %15
  %160 = add i32 %26, %16
  %161 = icmp ugt i32 %7, %159
  br i1 %161, label %14, label %162

162:                                              ; preds = %158, %44, %33, %6
  %163 = phi i32 [ %1, %6 ], [ %15, %44 ], [ %15, %33 ], [ %159, %158 ]
  %164 = sub i32 %163, %1
  ret i32 %164
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pte_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mremap(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.list_head, align 8
  %8 = alloca %struct.list_head, align 8
  %9 = tail call ptr @llvm.thread.pointer() #6
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 37
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store ptr %7, ptr %7, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  store ptr %8, ptr %8, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %8, ptr %13, align 4
  %14 = icmp ult i32 %3, 8
  br i1 %14, label %15, label %256

15:                                               ; preds = %5
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %3, 3
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %256, label %20

20:                                               ; preds = %15
  %21 = and i32 %3, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = icmp ne i32 %16, 0
  %25 = icmp eq i32 %1, %2
  %26 = and i1 %25, %24
  %27 = and i32 %0, 4095
  %28 = icmp eq i32 %27, 0
  %29 = and i1 %28, %26
  br i1 %29, label %33, label %256

30:                                               ; preds = %20
  %31 = and i32 %0, 4095
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %256

33:                                               ; preds = %30, %23
  %34 = add i32 %1, 4095
  %35 = and i32 %34, -4096
  %36 = add i32 %2, 4095
  %37 = and i32 %36, -4096
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %256, label %39

39:                                               ; preds = %33
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %11, i1 noundef zeroext true) #6
  br label %43

43:                                               ; preds = %42, %39
  %44 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 15
  %45 = call i32 @down_write_killable(ptr noundef %44) #6
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = icmp eq i32 %45, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %11, i1 noundef zeroext true, i1 noundef zeroext %49) #6
  br label %50

50:                                               ; preds = %48, %43
  %51 = icmp eq i32 %45, 0
  br i1 %51, label %52, label %256

52:                                               ; preds = %50
  %53 = call ptr @find_vma(ptr noundef %11, i32 noundef %0) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %225, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %53, align 4
  %57 = icmp ugt i32 %56, %0
  br i1 %57, label %225, label %58

58:                                               ; preds = %55
  %59 = and i32 %3, 6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %130, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %10, align 4
  %63 = and i32 %4, 4095
  %64 = icmp ne i32 %63, 0
  %65 = icmp ugt i32 %37, -1090519040
  %66 = or i1 %65, %64
  %67 = sub i32 -1090519040, %37
  %68 = icmp ult i32 %67, %4
  %69 = or i1 %68, %66
  br i1 %69, label %217, label %70

70:                                               ; preds = %61
  %71 = add i32 %35, %0
  %72 = icmp ugt i32 %71, %4
  %73 = add i32 %37, %4
  %74 = icmp ugt i32 %73, %0
  %75 = and i1 %72, %74
  br i1 %75, label %217, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 13
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %78, 2
  %80 = load i32, ptr @sysctl_max_map_count, align 4
  %81 = add i32 %80, -3
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %217

83:                                               ; preds = %76
  %84 = and i32 %3, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = call i32 @do_munmap(ptr noundef %62, i32 noundef %4, i32 noundef %37, ptr noundef nonnull %7) #6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %219

89:                                               ; preds = %86, %83
  %90 = icmp ult i32 %35, %37
  br i1 %90, label %98, label %91

91:                                               ; preds = %89
  %92 = add i32 %37, %0
  %93 = sub i32 %35, %37
  %94 = call i32 @do_munmap(ptr noundef %62, i32 noundef %92, i32 noundef %93, ptr noundef nonnull %8) #6
  %95 = icmp eq i32 %94, 0
  %96 = icmp eq i32 %35, %37
  %97 = or i1 %96, %95
  br i1 %97, label %98, label %219

98:                                               ; preds = %91, %89
  %99 = phi i32 [ %35, %89 ], [ %37, %91 ]
  %100 = call fastcc ptr @vma_to_resize(i32 noundef %0, i32 noundef %99, i32 noundef %37, i32 noundef %3) #6
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = ptrtoint ptr %100 to i32
  br label %219

104:                                              ; preds = %98
  br i1 %22, label %110, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.vm_area_struct, ptr %100, i32 0, i32 8
  %107 = load i32, ptr %106, align 4
  %108 = lshr exact i32 %99, 12
  %109 = call zeroext i1 @may_expand_vm(ptr noundef %62, i32 noundef %107, i32 noundef %108) #6
  br i1 %109, label %110, label %217

110:                                              ; preds = %105, %104
  %111 = shl nuw nsw i32 %84, 3
  %112 = getelementptr inbounds %struct.vm_area_struct, ptr %100, i32 0, i32 8
  %113 = load i32, ptr %112, align 4
  %114 = lshr i32 %113, 7
  %115 = and i32 %114, 1
  %116 = or i32 %115, %111
  %117 = getelementptr inbounds %struct.vm_area_struct, ptr %100, i32 0, i32 14
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.vm_area_struct, ptr %100, i32 0, i32 13
  %120 = load i32, ptr %119, align 4
  %121 = load i32, ptr %100, align 4
  %122 = sub i32 %0, %121
  %123 = lshr i32 %122, 12
  %124 = add i32 %123, %120
  %125 = call i32 @get_unmapped_area(ptr noundef %118, i32 noundef %4, i32 noundef %37, i32 noundef %124, i32 noundef %116) #6
  %126 = icmp ugt i32 %125, -4096
  br i1 %126, label %219, label %127, !prof !8

127:                                              ; preds = %110
  %128 = select i1 %85, i32 %125, i32 %4
  %129 = call fastcc i32 @move_vma(ptr noundef %100, i32 noundef %0, i32 noundef %99, i32 noundef %37, i32 noundef %128, ptr noundef nonnull %6, i32 noundef %3, ptr noundef nonnull %8) #6
  br label %219

130:                                              ; preds = %58
  %131 = icmp ugt i32 %37, %35
  br i1 %131, label %142, label %132

132:                                              ; preds = %130
  %133 = add i32 %37, %0
  %134 = sub i32 %35, %37
  %135 = call i32 @__do_munmap(ptr noundef %11, i32 noundef %133, i32 noundef %134, ptr noundef nonnull %8, i1 noundef zeroext true) #6
  %136 = icmp sgt i32 %135, -1
  %137 = icmp eq i32 %37, %35
  %138 = or i1 %137, %136
  %139 = icmp eq i32 %135, 1
  %140 = select i1 %138, i32 %0, i32 %135
  %141 = and i1 %139, %138
  br label %219

142:                                              ; preds = %130
  %143 = call fastcc ptr @vma_to_resize(i32 noundef %0, i32 noundef %35, i32 noundef %37, i32 noundef %3) #6
  %144 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = ptrtoint ptr %143 to i32
  br label %219

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.vm_area_struct, ptr %143, i32 0, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = sub i32 %149, %0
  %151 = icmp eq i32 %35, %150
  br i1 %151, label %152, label %199

152:                                              ; preds = %147
  %153 = sub i32 %37, %35
  %154 = add i32 %149, %153
  %155 = icmp ult i32 %154, %149
  br i1 %155, label %199, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.vm_area_struct, ptr %143, i32 0, i32 2
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load i32, ptr %158, align 4
  %162 = icmp ult i32 %161, %154
  br i1 %162, label %199, label %163

163:                                              ; preds = %160, %156
  %164 = load i32, ptr %143, align 4
  %165 = sub i32 %154, %164
  %166 = call i32 @get_unmapped_area(ptr noundef null, i32 noundef %164, i32 noundef %165, i32 noundef 0, i32 noundef 16) #6
  %167 = and i32 %166, 4095
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %199

169:                                              ; preds = %163
  %170 = lshr exact i32 %153, 12
  %171 = getelementptr inbounds %struct.vm_area_struct, ptr %143, i32 0, i32 8
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 1048576
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = call i32 @cap_vm_enough_memory(ptr noundef %11, i32 noundef %170) #6
  %177 = call i32 @__vm_enough_memory(ptr noundef %11, i32 noundef %170, i32 noundef %176) #6
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %225

179:                                              ; preds = %175, %169
  %180 = load i32, ptr %143, align 4
  %181 = add i32 %37, %0
  %182 = getelementptr inbounds %struct.vm_area_struct, ptr %143, i32 0, i32 13
  %183 = load i32, ptr %182, align 4
  %184 = call i32 @__vma_adjust(ptr noundef %143, i32 noundef %180, i32 noundef %181, i32 noundef %183, ptr noundef null, ptr noundef null) #6
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %179
  %187 = sub nsw i32 0, %170
  %188 = sext i32 %187 to i64
  %189 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %188, i32 noundef %189) #6
  br label %225

190:                                              ; preds = %179
  %191 = load i32, ptr %171, align 4
  call void @vm_stat_account(ptr noundef %11, i32 noundef %191, i32 noundef %170) #6
  %192 = load i32, ptr %171, align 4
  %193 = and i32 %192, 8192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %219, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 20
  %197 = load i32, ptr %196, align 4
  %198 = add i32 %197, %170
  store i32 %198, ptr %196, align 4
  store i8 1, ptr %6, align 1
  br label %219

199:                                              ; preds = %163, %160, %152, %147
  br i1 %17, label %225, label %200

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.vm_area_struct, ptr %143, i32 0, i32 8
  %202 = load i32, ptr %201, align 4
  %203 = lshr i32 %202, 7
  %204 = and i32 %203, 1
  %205 = getelementptr inbounds %struct.vm_area_struct, ptr %143, i32 0, i32 14
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.vm_area_struct, ptr %143, i32 0, i32 13
  %208 = load i32, ptr %207, align 4
  %209 = load i32, ptr %143, align 4
  %210 = sub i32 %0, %209
  %211 = lshr i32 %210, 12
  %212 = add i32 %211, %208
  %213 = call i32 @get_unmapped_area(ptr noundef %206, i32 noundef 0, i32 noundef %37, i32 noundef %212, i32 noundef %204) #6
  %214 = icmp ugt i32 %213, -4096
  br i1 %214, label %219, label %215, !prof !8

215:                                              ; preds = %200
  %216 = call fastcc i32 @move_vma(ptr noundef %143, i32 noundef %0, i32 noundef %35, i32 noundef %37, i32 noundef %213, ptr noundef nonnull %6, i32 noundef %3, ptr noundef nonnull %8) #6
  br label %219

217:                                              ; preds = %105, %76, %70, %61
  %218 = phi i32 [ -12, %105 ], [ -22, %70 ], [ -22, %61 ], [ -12, %76 ]
  store i8 0, ptr %6, align 1
  br label %236

219:                                              ; preds = %215, %200, %195, %190, %145, %132, %127, %110, %102, %91, %86
  %220 = phi i32 [ %4, %132 ], [ %4, %145 ], [ %0, %195 ], [ %4, %190 ], [ %213, %200 ], [ %213, %215 ], [ %4, %86 ], [ %4, %91 ], [ %4, %102 ], [ %4, %110 ], [ %4, %127 ]
  %221 = phi i32 [ %140, %132 ], [ %146, %145 ], [ %0, %195 ], [ %0, %190 ], [ %213, %200 ], [ %216, %215 ], [ %87, %86 ], [ %94, %91 ], [ %103, %102 ], [ %125, %110 ], [ %129, %127 ]
  %222 = phi i1 [ %141, %132 ], [ false, %145 ], [ false, %195 ], [ false, %190 ], [ false, %200 ], [ false, %215 ], [ false, %86 ], [ false, %91 ], [ false, %102 ], [ false, %110 ], [ false, %127 ]
  %223 = and i32 %221, 4095
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %228, label %227

225:                                              ; preds = %199, %186, %175, %55, %52
  %226 = phi i32 [ -12, %199 ], [ 14, %55 ], [ 14, %52 ], [ -12, %186 ], [ -12, %175 ]
  store i8 0, ptr %6, align 1
  br label %236

227:                                              ; preds = %219
  store i8 0, ptr %6, align 1
  br i1 %222, label %229, label %236

228:                                              ; preds = %219
  br i1 %222, label %229, label %236

229:                                              ; preds = %228, %227
  %230 = load ptr, ptr %10, align 4
  %231 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  call void @__mmap_lock_do_trace_released(ptr noundef %230, i1 noundef zeroext false) #6
  br label %234

234:                                              ; preds = %233, %229
  %235 = getelementptr inbounds %struct.anon, ptr %230, i32 0, i32 15
  call void @up_read(ptr noundef %235) #6
  br label %245

236:                                              ; preds = %228, %227, %225, %217
  %237 = phi i32 [ %220, %227 ], [ %220, %228 ], [ %4, %225 ], [ %4, %217 ]
  %238 = phi i32 [ %221, %227 ], [ %221, %228 ], [ %226, %225 ], [ %218, %217 ]
  %239 = load ptr, ptr %10, align 4
  %240 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  call void @__mmap_lock_do_trace_released(ptr noundef %239, i1 noundef zeroext true) #6
  br label %243

243:                                              ; preds = %242, %236
  %244 = getelementptr inbounds %struct.anon, ptr %239, i32 0, i32 15
  call void @up_write(ptr noundef %244) #6
  br label %245

245:                                              ; preds = %243, %234
  %246 = phi i32 [ %237, %243 ], [ %220, %234 ]
  %247 = phi i32 [ %238, %243 ], [ %221, %234 ]
  %248 = load i8, ptr %6, align 1, !range !17
  %249 = icmp ne i8 %248, 0
  %250 = icmp ugt i32 %37, %35
  %251 = and i1 %250, %249
  br i1 %251, label %252, label %256

252:                                              ; preds = %245
  %253 = add i32 %246, %35
  %254 = sub i32 %37, %35
  %255 = call i32 @__mm_populate(i32 noundef %253, i32 noundef %254, i32 noundef 1) #6
  br label %256

256:                                              ; preds = %252, %245, %50, %33, %30, %23, %15, %5
  %257 = phi i32 [ -22, %5 ], [ -22, %15 ], [ -22, %23 ], [ -22, %30 ], [ -22, %33 ], [ -4, %50 ], [ %247, %252 ], [ %247, %245 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  ret i32 %257
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__do_munmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @vma_to_resize(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @llvm.thread.pointer() #6
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @find_vma(ptr noundef %7, i32 noundef %0) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %82, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %8, align 4
  %12 = icmp ugt i32 %11, %0
  br i1 %12, label %82, label %13

13:                                               ; preds = %10
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 136
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i1, ptr @vma_to_resize.__already_done, align 1
  br i1 %21, label %82, label %22, !prof !18

22:                                               ; preds = %20
  store i1 true, ptr @vma_to_resize.__already_done, align 1
  %23 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %24 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %25 = load i32, ptr %24, align 8
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %23, i32 noundef %25) #7
  br label %82

27:                                               ; preds = %15, %13
  %28 = and i32 %3, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 263168
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %30, %27
  %36 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %37, %0
  %39 = icmp ult i32 %38, %1
  br i1 %39, label %82, label %40

40:                                               ; preds = %35
  %41 = icmp eq i32 %2, %1
  br i1 %41, label %82, label %42

42:                                               ; preds = %40
  %43 = sub i32 %0, %11
  %44 = lshr i32 %43, 12
  %45 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 13
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %44, %46
  %48 = lshr i32 %2, 12
  %49 = xor i32 %47, -1
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %82, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 263168
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = and i32 %53, 8192
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = sub i32 %2, %1
  br label %76

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 20
  %63 = load i32, ptr %62, align 4
  %64 = shl i32 %63, 12
  %65 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %66 = load ptr, ptr %65, align 16
  %67 = getelementptr %struct.signal_struct, ptr %66, i32 0, i32 50, i32 8
  %68 = load volatile i32, ptr %67, align 8
  %69 = sub i32 %2, %1
  %70 = add i32 %69, %64
  %71 = icmp ugt i32 %70, %68
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = tail call zeroext i1 @capable(i32 noundef 14) #6
  br i1 %73, label %74, label %82

74:                                               ; preds = %72
  %75 = load i32, ptr %52, align 4
  br label %76

76:                                               ; preds = %74, %61, %59
  %77 = phi i32 [ %60, %59 ], [ %69, %74 ], [ %69, %61 ]
  %78 = phi i32 [ %53, %59 ], [ %75, %74 ], [ %53, %61 ]
  %79 = lshr i32 %77, 12
  %80 = tail call zeroext i1 @may_expand_vm(ptr noundef %7, i32 noundef %78, i32 noundef %79) #6
  %81 = select i1 %80, ptr %8, ptr inttoptr (i32 -12 to ptr)
  br label %82

82:                                               ; preds = %76, %72, %51, %42, %40, %35, %30, %22, %20, %10, %4
  %83 = phi ptr [ %8, %40 ], [ inttoptr (i32 -14 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %22 ], [ inttoptr (i32 -22 to ptr), %20 ], [ inttoptr (i32 -22 to ptr), %30 ], [ inttoptr (i32 -14 to ptr), %35 ], [ inttoptr (i32 -22 to ptr), %42 ], [ inttoptr (i32 -14 to ptr), %51 ], [ inttoptr (i32 -11 to ptr), %72 ], [ inttoptr (i32 -14 to ptr), %10 ], [ %81, %76 ]
  ret ptr %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_stat_account(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @move_vma(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  store ptr %0, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #6
  store i8 0, ptr %10, align 1, !annotation !19
  %15 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 13
  %16 = load i32, ptr %15, align 8
  %17 = load i32, ptr @sysctl_max_map_count, align 4
  %18 = add i32 %17, -3
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %169

20:                                               ; preds = %8
  %21 = sub i32 %3, %2
  %22 = and i32 %6, 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %3, %24 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.vm_operations_struct, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %0, align 4
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = tail call i32 %32(ptr noundef %0, i32 noundef %1) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %169

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %2, %1
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %27, align 4
  %47 = getelementptr inbounds %struct.vm_operations_struct, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %0, i32 noundef %43) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %169

51:                                               ; preds = %45, %40, %30, %25
  %52 = and i32 %14, 1048576
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = ashr i32 %26, 12
  %56 = tail call i32 @cap_vm_enough_memory(ptr noundef %12, i32 noundef %55) #6
  %57 = tail call i32 @__vm_enough_memory(ptr noundef %12, i32 noundef %55, i32 noundef %56) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %169

59:                                               ; preds = %54, %51
  %60 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %0, align 4
  %63 = sub i32 %1, %62
  %64 = lshr i32 %63, 12
  %65 = add i32 %64, %61
  %66 = call ptr @copy_vma(ptr noundef nonnull %9, i32 noundef %4, i32 noundef %3, i32 noundef %65, ptr noundef nonnull %10) #6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  br i1 %53, label %169, label %69

69:                                               ; preds = %68
  %70 = ashr i32 %26, 12
  %71 = sub nsw i32 0, %70
  %72 = sext i32 %71 to i64
  %73 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %72, i32 noundef %73) #6
  br label %169

74:                                               ; preds = %59
  %75 = load ptr, ptr %9, align 4
  %76 = load i8, ptr %10, align 1, !range !17
  %77 = icmp ne i8 %76, 0
  %78 = call i32 @move_page_tables(ptr noundef %75, i32 noundef %1, ptr noundef nonnull %66, i32 noundef %4, i32 noundef %2, i1 noundef zeroext %77)
  %79 = icmp ult i32 %78, %2
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load ptr, ptr %9, align 4
  %82 = getelementptr inbounds %struct.vm_area_struct, ptr %81, i32 0, i32 12
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.vm_operations_struct, ptr %83, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = call i32 %87(ptr noundef nonnull %66) #6
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92, !prof !18

92:                                               ; preds = %89, %74
  %93 = phi i32 [ %90, %89 ], [ -12, %74 ]
  %94 = load ptr, ptr %9, align 4
  %95 = call i32 @move_page_tables(ptr noundef nonnull %66, i32 noundef %4, ptr noundef %94, i32 noundef %1, i32 noundef %78, i1 noundef zeroext true)
  store ptr %66, ptr %9, align 4
  br label %96

96:                                               ; preds = %92, %89, %85, %80
  %97 = phi i1 [ false, %92 ], [ true, %89 ], [ true, %85 ], [ true, %80 ]
  %98 = phi i32 [ %93, %92 ], [ %4, %89 ], [ %4, %85 ], [ %4, %80 ]
  %99 = phi i32 [ %3, %92 ], [ %2, %89 ], [ %2, %85 ], [ %2, %80 ]
  %100 = phi i32 [ %4, %92 ], [ %1, %89 ], [ %1, %85 ], [ %1, %80 ]
  %101 = or i1 %23, %53
  %102 = load ptr, ptr %9, align 4
  %103 = getelementptr inbounds %struct.vm_area_struct, ptr %102, i32 0, i32 8
  %104 = load i32, ptr %103, align 4
  br i1 %101, label %116, label %105

105:                                              ; preds = %96
  %106 = and i32 %104, -1048577
  store i32 %106, ptr %103, align 4
  %107 = getelementptr inbounds %struct.vm_area_struct, ptr %102, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = load i32, ptr %102, align 4
  %110 = add i32 %99, %109
  %111 = sub i32 %108, %110
  %112 = icmp ule i32 %100, %109
  %113 = add i32 %100, %99
  %114 = icmp uge i32 %113, %108
  %115 = select i1 %112, i1 true, i1 %114
  br label %116

116:                                              ; preds = %105, %96
  %117 = phi i32 [ %106, %105 ], [ %104, %96 ]
  %118 = phi i32 [ %111, %105 ], [ 0, %96 ]
  %119 = phi i1 [ %115, %105 ], [ true, %96 ]
  %120 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 18
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %3, 12
  call void @vm_stat_account(ptr noundef %12, i32 noundef %117, i32 noundef %122) #6
  %123 = load ptr, ptr %9, align 4
  %124 = and i1 %23, %97
  br i1 %124, label %125, label %139, !prof !8

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.vm_area_struct, ptr %123, i32 0, i32 8
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, -532481
  store i32 %128, ptr %126, align 4
  %129 = icmp eq ptr %66, %123
  br i1 %129, label %169, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %123, align 4
  %132 = icmp eq i32 %131, %100
  br i1 %132, label %133, label %169

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.vm_area_struct, ptr %123, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %100, %99
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %169

138:                                              ; preds = %133
  call void @unlink_anon_vmas(ptr noundef %123) #6
  br label %169

139:                                              ; preds = %116
  %140 = call i32 @do_munmap(ptr noundef %12, i32 noundef %100, i32 noundef %99, ptr noundef %7) #6
  %141 = icmp sgt i32 %140, -1
  %142 = select i1 %141, i1 true, i1 %101
  %143 = select i1 %141, i32 %118, i32 0
  br i1 %142, label %148, label %144

144:                                              ; preds = %139
  %145 = lshr i32 %99, 12
  %146 = zext i32 %145 to i64
  %147 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %146, i32 noundef %147) #6
  br label %148

148:                                              ; preds = %144, %139
  %149 = phi i32 [ %143, %139 ], [ 0, %144 ]
  %150 = and i32 %14, 8192
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 20
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, %122
  store i32 %155, ptr %153, align 4
  store i8 1, ptr %5, align 1
  br label %156

156:                                              ; preds = %152, %148
  store i32 %121, ptr %120, align 4
  %157 = icmp eq i32 %149, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %156
  %159 = load ptr, ptr %9, align 4
  %160 = getelementptr inbounds %struct.vm_area_struct, ptr %159, i32 0, i32 8
  %161 = load i32, ptr %160, align 4
  %162 = or i32 %161, 1048576
  store i32 %162, ptr %160, align 4
  br i1 %119, label %169, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.vm_area_struct, ptr %159, i32 0, i32 2
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.vm_area_struct, ptr %165, i32 0, i32 8
  %167 = load i32, ptr %166, align 4
  %168 = or i32 %167, 1048576
  store i32 %168, ptr %166, align 4
  br label %169

169:                                              ; preds = %163, %158, %156, %138, %133, %130, %125, %69, %68, %54, %45, %37, %8
  %170 = phi i32 [ -12, %8 ], [ %49, %45 ], [ -12, %54 ], [ -12, %69 ], [ -12, %68 ], [ %98, %138 ], [ %98, %133 ], [ %98, %130 ], [ %98, %125 ], [ %98, %158 ], [ %98, %163 ], [ %98, %156 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #6
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_munmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @may_expand_vm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vma_adjust(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_vma(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_anon_vmas(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 2152840115}
!10 = !{i64 2151531142}
!11 = !{i64 2149034473}
!12 = !{i64 2149030297}
!13 = !{i64 2149030372, i64 2149030399, i64 2149030446, i64 2149030468, i64 2149030496, i64 2149030516}
!14 = !{i64 2149057476}
!15 = !{i64 2151531349}
!16 = !{i64 2152846801}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"auto-init"}
