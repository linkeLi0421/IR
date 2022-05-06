; ModuleID = '/llk/IR/mm/mlock.c_pt.bc'
source_filename = "../mm/mlock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_do_mlock:\09\09\09\09\09"
module asm "\09.asciz \09\22can_do_mlock\22\09\09\09\09\09"
module asm "__kstrtabns_can_do_mlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.vm_event_state = type { [71 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon, %union.anon.88, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.88 = type { %struct.atomic_t }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.20, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.94 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.anon.7 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@__kstrtab_can_do_mlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_do_mlock = external dso_local constant [0 x i8], align 1
@__ksymtab_can_do_mlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_do_mlock to i32), ptr @__kstrtab_can_do_mlock, ptr @__kstrtabns_can_do_mlock }, section "___ksymtab+can_do_mlock", align 4
@shmlock_user_lock = internal global %struct.spinlock zeroinitializer, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_can_do_mlock], section "llvm.metadata"

@sys_mlock = dso_local alias i32 (i32, i32), ptr @__se_sys_mlock
@sys_mlock2 = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_mlock2
@sys_munlock = dso_local alias i32 (i32, i32), ptr @__se_sys_munlock
@sys_mlockall = dso_local alias i32 (i32), ptr @__se_sys_mlockall

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @can_do_mlock() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #7
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr %struct.signal_struct, ptr %3, i32 0, i32 50, i32 8
  %5 = load volatile i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br label %9

9:                                                ; preds = %7, %0
  %10 = phi i1 [ true, %0 ], [ %8, %7 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_page_mlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %0, align 4
  %17 = lshr i32 %16, 30
  %18 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %17
  tail call void @mod_zone_page_state(ptr noundef %18, i32 noundef 7, i32 noundef -1) #7
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #3, !srcloc !11
  %23 = add i32 %22, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 67) to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #7, !srcloc !12
  %27 = tail call i32 @isolate_lru_page(ptr noundef %0) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  tail call void @putback_lru_page(ptr noundef %0) #7
  br label %53

30:                                               ; preds = %15
  %31 = load volatile i32, ptr %2, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !9

34:                                               ; preds = %30
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %30
  %37 = ptrtoint ptr %0 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1048576
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #3, !srcloc !11
  %49 = add i32 %48, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 68) to i32)
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #7, !srcloc !12
  br label %53

53:                                               ; preds = %44, %38, %29, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_lru_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_lru_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mlock_vma_page(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !13

16:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #7, !srcloc !14
  unreachable

17:                                               ; preds = %10
  %18 = load volatile i32, ptr %2, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !9

21:                                               ; preds = %17
  %22 = add i32 %18, -1
  br label %25

23:                                               ; preds = %17
  %24 = ptrtoint ptr %0 to i32
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %27) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32, ptr %0, align 4
  %32 = lshr i32 %31, 30
  %33 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %32
  tail call void @mod_zone_page_state(ptr noundef %33, i32 noundef 7, i32 noundef 1) #7
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #3, !srcloc !11
  %38 = add i32 %37, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 65) to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #7, !srcloc !12
  %42 = tail call i32 @isolate_lru_page(ptr noundef %0) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  tail call void @putback_lru_page(ptr noundef %0) #7
  br label %45

45:                                               ; preds = %44, %30, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @munlock_vma_page(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !13

16:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #7, !srcloc !15
  unreachable

17:                                               ; preds = %10
  %18 = load volatile i32, ptr %2, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !9

21:                                               ; preds = %17
  %22 = add i32 %18, -1
  br label %25

23:                                               ; preds = %17
  %24 = ptrtoint ptr %0 to i32
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %27) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %59, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %0, align 4
  %32 = lshr i32 %31, 30
  %33 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %32
  tail call void @mod_zone_page_state(ptr noundef %33, i32 noundef 7, i32 noundef -1) #7
  %34 = tail call i32 @isolate_lru_page(ptr noundef %0) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call fastcc void @__munlock_isolated_page(ptr noundef %0)
  br label %59

37:                                               ; preds = %30
  %38 = load volatile i32, ptr %2, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !9

41:                                               ; preds = %37
  %42 = add i32 %38, -1
  br label %45

43:                                               ; preds = %37
  %44 = ptrtoint ptr %0 to i32
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = inttoptr i32 %46 to ptr
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1048576
  %50 = icmp eq i32 %49, 0
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %52) #3
  %54 = select i1 %50, i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 66) to i32), i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 68) to i32)
  %55 = add i32 %54, %53
  %56 = inttoptr i32 %55 to ptr
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %45, %36, %25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__munlock_isolated_page(ptr noundef %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %5, %1
  %11 = tail call i32 @__page_mapcount(ptr noundef %0) #7
  br label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %14 = load volatile i32, ptr %13, align 4
  %15 = add i32 %14, 1
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @page_mlock(ptr noundef %0) #7
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !9

25:                                               ; preds = %20
  %26 = add i32 %22, -1
  br label %29

27:                                               ; preds = %20
  %28 = ptrtoint ptr %0 to i32
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = inttoptr i32 %30 to ptr
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 2097152
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #3, !srcloc !11
  %40 = add i32 %39, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 66) to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #7, !srcloc !12
  br label %44

44:                                               ; preds = %35, %29
  tail call void @putback_lru_page(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @munlock_vma_pages_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pagevec, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.pagevec, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -532481
  store i32 %9, ptr %7, align 4
  %10 = icmp ult i32 %1, %2
  br i1 %10, label %11, label %368

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.pagevec, ptr %6, i32 0, i32 2, i32 0
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %14 = add i32 %2, -1
  br label %15

15:                                               ; preds = %364, %11
  %16 = phi i32 [ %1, %11 ], [ %365, %364 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %17 = call ptr @follow_page(ptr noundef %0, i32 noundef %16, i32 noundef 12) #7
  %18 = icmp eq ptr %17, null
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %20 = or i1 %18, %19
  br i1 %20, label %362, label %21

21:                                               ; preds = %15
  store i8 1, ptr %6, align 4
  store ptr %17, ptr %12, align 4
  %22 = load i32, ptr %17, align 4
  %23 = lshr i32 %22, 30
  %24 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !16
  %25 = load ptr, ptr %13, align 4
  %26 = call ptr @__get_locked_pte(ptr noundef %25, i32 noundef %16, ptr noundef nonnull %5) #7
  %27 = add i32 %16, 2097152
  %28 = and i32 %27, -2097152
  %29 = add i32 %28, -1
  %30 = icmp ult i32 %29, %14
  %31 = select i1 %30, i32 %28, i32 %2
  %32 = add i32 %16, 4096
  br label %33

33:                                               ; preds = %60, %21
  %34 = phi i8 [ 1, %21 ], [ %66, %60 ]
  %35 = phi ptr [ %26, %21 ], [ %39, %60 ]
  %36 = phi i32 [ %32, %21 ], [ %65, %60 ]
  %37 = icmp ult i32 %36, %31
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = getelementptr i32, ptr %35, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %38
  %44 = call ptr @vm_normal_page(ptr noundef %0, i32 noundef %36, i32 noundef %40) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %70, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %44, align 4
  %48 = lshr i32 %47, 30
  %49 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %48
  %50 = icmp eq ptr %49, %24
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !9

56:                                               ; preds = %51
  %57 = add i32 %53, -1
  br label %60

58:                                               ; preds = %51
  %59 = ptrtoint ptr %44 to i32
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #7, !srcloc !17
  %64 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #7, !srcloc !18
  %65 = add i32 %36, 4096
  %66 = add i8 %34, 1
  store i8 %66, ptr %6, align 4
  %67 = zext i8 %34 to i32
  %68 = getelementptr %struct.pagevec, ptr %6, i32 0, i32 2, i32 %67
  store ptr %44, ptr %68, align 4
  %69 = icmp eq i8 %66, 15
  br i1 %69, label %70, label %33

70:                                               ; preds = %60, %46, %43, %38, %33
  %71 = phi i8 [ %34, %33 ], [ %34, %46 ], [ %34, %43 ], [ %34, %38 ], [ 15, %60 ]
  %72 = phi ptr [ %35, %33 ], [ %39, %46 ], [ %39, %43 ], [ %39, %38 ], [ %39, %60 ]
  %73 = phi i32 [ %36, %33 ], [ %36, %46 ], [ %36, %43 ], [ %36, %38 ], [ %65, %60 ]
  %74 = load ptr, ptr %5, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %75 = load i16, ptr %74, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %74, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  call void @kunmap_local_indexed(ptr noundef %72) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %77 = tail call ptr @llvm.thread.pointer() #7
  %78 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 149
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %81 = zext i8 %71 to i32
  %82 = sub nsw i32 0, %81
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %83 = icmp eq i8 %71, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i64 64, i1 false) #7
  br i1 %83, label %212, label %84

84:                                               ; preds = %201, %70
  %85 = phi ptr [ %203, %201 ], [ null, %70 ]
  %86 = phi i32 [ %202, %201 ], [ %82, %70 ]
  %87 = phi i32 [ %204, %201 ], [ 0, %70 ]
  %88 = getelementptr %struct.pagevec, ptr %6, i32 0, i32 2, i32 %87
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1
  %91 = load volatile i32, ptr %90, align 4
  %92 = load volatile i32, ptr %90, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95, !prof !9

95:                                               ; preds = %84
  %96 = add i32 %92, -1
  br label %99

97:                                               ; preds = %84
  %98 = ptrtoint ptr %89 to i32
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = inttoptr i32 %100 to ptr
  %102 = call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %101) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %193, label %104

104:                                              ; preds = %99
  %105 = load volatile i32, ptr %90, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !9

108:                                              ; preds = %104
  %109 = add i32 %105, -1
  br label %112

110:                                              ; preds = %104
  %111 = ptrtoint ptr %89 to i32
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = inttoptr i32 %113 to ptr
  %115 = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %114) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %171, label %117

117:                                              ; preds = %112
  %118 = icmp eq ptr %85, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %117
  %120 = getelementptr i8, ptr %85, i32 -3776
  %121 = icmp eq ptr %120, @contig_page_data
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.lruvec, ptr %85, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %124 = load i16, ptr %123, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr %123, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !21
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  br label %126

126:                                              ; preds = %122, %117
  call void @_raw_spin_lock_irq(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #7
  br label %127

127:                                              ; preds = %126, %119
  %128 = phi ptr [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24), %126 ], [ %85, %119 ]
  %129 = load volatile i32, ptr %90, align 4
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132, !prof !9

132:                                              ; preds = %127
  %133 = add i32 %129, -1
  br label %136

134:                                              ; preds = %127
  %135 = ptrtoint ptr %89 to i32
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = inttoptr i32 %137 to ptr
  %139 = getelementptr inbounds %struct.anon.94, ptr %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.anon.94, ptr %138, i32 0, i32 1, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = load ptr, ptr %139, align 4
  %143 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  store ptr %141, ptr %143, align 4
  store volatile ptr %142, ptr %141, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %139, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %140, align 4
  %144 = load volatile i32, ptr %138, align 4
  %145 = and i32 %144, 1048576
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %136
  %148 = load volatile i32, ptr %138, align 4
  %149 = lshr i32 %148, 18
  %150 = and i32 %149, 2
  %151 = load volatile i32, ptr %138, align 4
  %152 = lshr i32 %151, 5
  %153 = and i32 %152, 1
  %154 = or i32 %153, %150
  %155 = xor i32 %154, 2
  br label %156

156:                                              ; preds = %147, %136
  %157 = phi i32 [ %155, %147 ], [ 4, %136 ]
  %158 = load volatile i32, ptr %138, align 4
  %159 = and i32 %158, 65536
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = getelementptr %struct.page, ptr %138, i32 1, i32 1, i32 0, i32 2
  %163 = load i32, ptr %162, align 4
  br label %164

164:                                              ; preds = %161, %156
  %165 = phi i32 [ %163, %161 ], [ 1, %156 ]
  %166 = lshr i32 %144, 30
  %167 = sub i32 0, %165
  %168 = getelementptr i8, ptr %128, i32 -3776
  call void @__mod_node_page_state(ptr noundef %168, i32 noundef %157, i32 noundef %167) #7
  %169 = getelementptr [4 x %struct.zone], ptr %168, i32 0, i32 %166
  %170 = add nsw i32 %157, 1
  call void @__mod_zone_page_state(ptr noundef %169, i32 noundef %170, i32 noundef %167) #7
  br label %201

171:                                              ; preds = %112
  %172 = load volatile i32, ptr %90, align 4
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175, !prof !9

175:                                              ; preds = %171
  %176 = add i32 %172, -1
  br label %179

177:                                              ; preds = %171
  %178 = ptrtoint ptr %89 to i32
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = inttoptr i32 %180 to ptr
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 1048576
  %184 = icmp eq i32 %183, 0
  %185 = call i32 @llvm.read_register.i32(metadata !0) #7
  %186 = inttoptr i32 %185 to ptr
  %187 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %186) #3
  %188 = select i1 %184, i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 66) to i32), i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 68) to i32)
  %189 = add i32 %188, %187
  %190 = inttoptr i32 %189 to ptr
  %191 = load i32, ptr %190, align 4
  %192 = add i32 %191, 1
  store i32 %192, ptr %190, align 4
  br label %195

193:                                              ; preds = %99
  %194 = add i32 %86, 1
  br label %195

195:                                              ; preds = %193, %179
  %196 = phi i32 [ %86, %179 ], [ %194, %193 ]
  %197 = load i8, ptr %4, align 4
  %198 = add i8 %197, 1
  store i8 %198, ptr %4, align 4
  %199 = zext i8 %197 to i32
  %200 = getelementptr %struct.pagevec, ptr %4, i32 0, i32 2, i32 %199
  store ptr %89, ptr %200, align 4
  store ptr null, ptr %88, align 4
  br label %201

201:                                              ; preds = %195, %164
  %202 = phi i32 [ %86, %164 ], [ %196, %195 ]
  %203 = phi ptr [ %128, %164 ], [ %85, %195 ]
  %204 = add nuw nsw i32 %87, 1
  %205 = icmp eq i32 %204, %81
  br i1 %205, label %206, label %84

206:                                              ; preds = %201
  %207 = icmp eq ptr %203, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %206
  call void @__mod_zone_page_state(ptr noundef %24, i32 noundef 7, i32 noundef %202) #7
  %209 = getelementptr inbounds %struct.lruvec, ptr %203, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %210 = load i16, ptr %209, align 4
  %211 = add i16 %210, 1
  store i16 %211, ptr %209, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !21
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  br label %216

212:                                              ; preds = %206, %70
  %213 = phi i32 [ %202, %206 ], [ %82, %70 ]
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %212
  call void @mod_zone_page_state(ptr noundef %24, i32 noundef 7, i32 noundef %213) #7
  br label %216

216:                                              ; preds = %215, %212, %208
  %217 = load i8, ptr %4, align 4
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %216
  call void @__pagevec_release(ptr noundef nonnull %4) #7
  br label %220

220:                                              ; preds = %219, %216
  br i1 %83, label %339, label %221

221:                                              ; preds = %335, %220
  %222 = phi i32 [ %337, %335 ], [ 0, %220 ]
  %223 = phi i32 [ %336, %335 ], [ 0, %220 ]
  %224 = getelementptr %struct.pagevec, ptr %6, i32 0, i32 2, i32 %222
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %335, label %227

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.page, ptr %225, i32 0, i32 1
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232, !prof !9

232:                                              ; preds = %227
  %233 = add i32 %229, -1
  br label %236

234:                                              ; preds = %227
  %235 = ptrtoint ptr %225 to i32
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %238 = inttoptr i32 %237 to ptr
  %239 = load volatile i32, ptr %238, align 4
  %240 = and i32 %239, 1
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %236
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %238) #7, !srcloc !17
  %243 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %238, ptr %238, i32 1, ptr elementtype(i32) %238) #7, !srcloc !27
  %244 = extractvalue { i32, i32, i32 } %243, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  %245 = and i32 %244, 1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %242, %236
  call void @__folio_lock(ptr noundef %238) #7
  br label %248

248:                                              ; preds = %247, %242
  %249 = load volatile i32, ptr %225, align 4
  %250 = and i32 %249, 65536
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = load volatile i32, ptr %228, align 4
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256, !prof !9

256:                                              ; preds = %252, %248
  %257 = call i32 @__page_mapcount(ptr noundef nonnull %225) #7
  br label %262

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.page, ptr %225, i32 0, i32 2
  %260 = load volatile i32, ptr %259, align 4
  %261 = add i32 %260, 1
  br label %262

262:                                              ; preds = %258, %256
  %263 = phi i32 [ %257, %256 ], [ %261, %258 ]
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %265, label %307

265:                                              ; preds = %262
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  %266 = call ptr @page_mapping(ptr noundef nonnull %225) #7
  %267 = icmp eq ptr %266, null
  br i1 %267, label %274, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.address_space, ptr %266, i32 0, i32 10
  %270 = load volatile i32, ptr %269, align 4
  %271 = and i32 %270, 8
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  br label %307

274:                                              ; preds = %268, %265
  %275 = load volatile i32, ptr %228, align 4
  %276 = and i32 %275, 1
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278, !prof !9

278:                                              ; preds = %274
  %279 = add i32 %275, -1
  br label %282

280:                                              ; preds = %274
  %281 = ptrtoint ptr %225 to i32
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i32 [ %279, %278 ], [ %281, %280 ]
  %284 = inttoptr i32 %283 to ptr
  %285 = load volatile i32, ptr %284, align 4
  %286 = and i32 %285, 2097152
  %287 = icmp eq i32 %286, 0
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  br i1 %287, label %288, label %307

288:                                              ; preds = %282
  %289 = load i8, ptr %4, align 4
  %290 = add i8 %289, 1
  store i8 %290, ptr %4, align 4
  %291 = zext i8 %289 to i32
  %292 = getelementptr %struct.pagevec, ptr %4, i32 0, i32 2, i32 %291
  store ptr %225, ptr %292, align 4
  %293 = load volatile i32, ptr %228, align 4
  %294 = and i32 %293, 1
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %298, label %296, !prof !9

296:                                              ; preds = %288
  %297 = add i32 %293, -1
  br label %300

298:                                              ; preds = %288
  %299 = ptrtoint ptr %225 to i32
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i32 [ %297, %296 ], [ %299, %298 ]
  %302 = inttoptr i32 %301 to ptr
  %303 = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %302) #7
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i32
  %306 = add i32 %223, %305
  call void @unlock_page(ptr noundef nonnull %225) #7
  br label %335

307:                                              ; preds = %282, %273, %262
  %308 = load volatile i32, ptr %228, align 4
  %309 = and i32 %308, 1
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311, !prof !9

311:                                              ; preds = %307
  %312 = add i32 %308, -1
  br label %315

313:                                              ; preds = %307
  %314 = ptrtoint ptr %225 to i32
  br label %315

315:                                              ; preds = %313, %311
  %316 = phi i32 [ %312, %311 ], [ %314, %313 ]
  %317 = inttoptr i32 %316 to ptr
  %318 = getelementptr inbounds %struct.page, ptr %317, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %318) #7, !srcloc !17
  %319 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %318, ptr %318, i32 1, ptr elementtype(i32) %318) #7, !srcloc !18
  call fastcc void @__munlock_isolated_page(ptr noundef nonnull %225) #7
  call void @unlock_page(ptr noundef nonnull %225) #7
  %320 = load volatile i32, ptr %228, align 4
  %321 = and i32 %320, 1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %325, label %323, !prof !9

323:                                              ; preds = %315
  %324 = add i32 %320, -1
  br label %327

325:                                              ; preds = %315
  %326 = ptrtoint ptr %225 to i32
  br label %327

327:                                              ; preds = %325, %323
  %328 = phi i32 [ %324, %323 ], [ %326, %325 ]
  %329 = inttoptr i32 %328 to ptr
  %330 = getelementptr inbounds %struct.page, ptr %329, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !31
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %330) #7, !srcloc !17
  %331 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %330, ptr %330, i32 1, ptr elementtype(i32) %330) #7, !srcloc !32
  %332 = extractvalue { i32, i32 } %331, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !33
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %327
  call void @__put_page(ptr noundef %329) #7
  br label %335

335:                                              ; preds = %334, %327, %300, %221
  %336 = phi i32 [ %223, %221 ], [ %306, %300 ], [ %223, %327 ], [ %223, %334 ]
  %337 = add nuw nsw i32 %222, 1
  %338 = icmp eq i32 %337, %81
  br i1 %338, label %339, label %221

339:                                              ; preds = %335, %220
  %340 = phi i32 [ 0, %220 ], [ %336, %335 ]
  %341 = load i8, ptr %4, align 4
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %361, label %343

343:                                              ; preds = %339
  %344 = zext i8 %341 to i32
  %345 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %346 = call i32 @llvm.read_register.i32(metadata !0) #7
  %347 = inttoptr i32 %346 to ptr
  %348 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %347) #3, !srcloc !11
  %349 = add i32 %348, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 66) to i32)
  %350 = inttoptr i32 %349 to ptr
  %351 = load i32, ptr %350, align 4
  %352 = add i32 %351, %344
  store i32 %352, ptr %350, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %345) #7, !srcloc !12
  call void @__pagevec_lru_add(ptr noundef nonnull %4) #7
  %353 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %354 = call i32 @llvm.read_register.i32(metadata !0) #7
  %355 = inttoptr i32 %354 to ptr
  %356 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %355) #3, !srcloc !11
  %357 = add i32 %356, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 64) to i32)
  %358 = inttoptr i32 %357 to ptr
  %359 = load i32, ptr %358, align 4
  %360 = add i32 %359, %340
  store i32 %360, ptr %358, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %353) #7, !srcloc !12
  br label %361

361:                                              ; preds = %343, %339
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br label %364

362:                                              ; preds = %15
  %363 = add i32 %16, 4096
  br label %364

364:                                              ; preds = %362, %361
  %365 = phi i32 [ %363, %362 ], [ %73, %361 ]
  %366 = call i32 @__cond_resched() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  %367 = icmp ult i32 %365, %2
  br i1 %367, label %15, label %368

368:                                              ; preds = %364, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @follow_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mlock(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @do_mlock(i32 noundef %0, i32 noundef %1, i32 noundef 8192) #7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mlock2(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i32 8192, i32 532480
  %8 = tail call fastcc i32 @do_mlock(i32 noundef %0, i32 noundef %1, i32 noundef %7) #7
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %8, %5 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_munlock(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = tail call ptr @llvm.thread.pointer() #7
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %6, i1 noundef zeroext true) #7
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 15
  %12 = tail call i32 @down_write_killable(ptr noundef %11) #7
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = icmp eq i32 %12, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %6, i1 noundef zeroext true, i1 noundef zeroext %16) #7
  br label %17

17:                                               ; preds = %15, %10
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %17
  %20 = and i32 %0, -4096
  %21 = and i32 %0, 4095
  %22 = add i32 %1, 4095
  %23 = add i32 %22, %21
  %24 = and i32 %23, -4096
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %25 = add i32 %24, %20
  %26 = icmp ult i32 %25, %20
  br i1 %26, label %65, label %27

27:                                               ; preds = %19
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %65, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %5, align 4
  %31 = tail call ptr @find_vma(ptr noundef %30, i32 noundef %20) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %65, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %31, align 4
  %35 = icmp ugt i32 %34, %20
  br i1 %35, label %65, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %31, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ult i32 %34, %20
  %40 = select i1 %39, ptr %31, ptr %38
  store ptr %40, ptr %3, align 4
  br label %41

41:                                               ; preds = %62, %36
  %42 = phi i32 [ %20, %36 ], [ %56, %62 ]
  %43 = phi ptr [ %31, %36 ], [ %60, %62 ]
  %44 = getelementptr inbounds %struct.vm_area_struct, ptr %43, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -532481
  %47 = getelementptr inbounds %struct.vm_area_struct, ptr %43, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 %25) #7
  %50 = call fastcc i32 @mlock_fixup(ptr noundef nonnull %43, ptr noundef nonnull %3, i32 noundef %42, i32 noundef %49, i32 noundef %46) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %41
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds %struct.vm_area_struct, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %49, i32 %55) #7
  %57 = icmp ult i32 %56, %25
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.vm_area_struct, ptr %53, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 4
  %64 = icmp eq i32 %63, %56
  br i1 %64, label %41, label %65

65:                                               ; preds = %62, %58, %52, %41, %33, %29, %27, %19
  %66 = phi i32 [ -22, %19 ], [ 0, %27 ], [ -12, %33 ], [ -12, %29 ], [ %50, %41 ], [ 0, %52 ], [ -12, %58 ], [ -12, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %67 = load ptr, ptr %5, align 4
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  tail call void @__mmap_lock_do_trace_released(ptr noundef %67, i1 noundef zeroext true) #7
  br label %71

71:                                               ; preds = %70, %65
  %72 = getelementptr inbounds %struct.anon.7, ptr %67, i32 0, i32 15
  tail call void @up_write(ptr noundef %72) #7
  br label %73

73:                                               ; preds = %71, %17
  %74 = phi i32 [ %66, %71 ], [ -4, %17 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mlockall(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %60, label %3

3:                                                ; preds = %1
  %4 = icmp ugt i32 %0, 7
  %5 = icmp eq i32 %0, 4
  %6 = or i1 %4, %5
  br i1 %6, label %60, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #7
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr %struct.signal_struct, ptr %10, i32 0, i32 50, i32 8
  %12 = load volatile i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %15, label %16, label %60

16:                                               ; preds = %14
  %17 = load ptr, ptr %9, align 16
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi ptr [ %17, %16 ], [ %10, %7 ]
  %20 = getelementptr %struct.signal_struct, ptr %19, i32 0, i32 50, i32 8
  %21 = load volatile i32, ptr %20, align 8
  %22 = lshr i32 %21, 12
  %23 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %24 = load ptr, ptr %23, align 4
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %24, i1 noundef zeroext true) #7
  br label %28

28:                                               ; preds = %27, %18
  %29 = getelementptr inbounds %struct.anon.7, ptr %24, i32 0, i32 15
  %30 = tail call i32 @down_write_killable(ptr noundef %29) #7
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = icmp eq i32 %30, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %24, i1 noundef zeroext true, i1 noundef zeroext %34) #7
  br label %35

35:                                               ; preds = %33, %28
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %35
  %38 = and i32 %0, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %23, align 4
  %42 = getelementptr inbounds %struct.anon.7, ptr %41, i32 0, i32 19
  %43 = load i32, ptr %42, align 8
  %44 = icmp ugt i32 %43, %22
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %46, label %47, label %48

47:                                               ; preds = %45, %40, %37
  tail call fastcc void @apply_mlockall_flags(i32 noundef %0) #7
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i1 [ false, %47 ], [ true, %45 ]
  %50 = phi i32 [ 0, %47 ], [ -12, %45 ]
  %51 = load ptr, ptr %23, align 4
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  tail call void @__mmap_lock_do_trace_released(ptr noundef %51, i1 noundef zeroext true) #7
  br label %55

55:                                               ; preds = %54, %48
  %56 = getelementptr inbounds %struct.anon.7, ptr %51, i32 0, i32 15
  tail call void @up_write(ptr noundef %56) #7
  %57 = or i1 %39, %49
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @__mm_populate(i32 noundef 0, i32 noundef -1090519040, i32 noundef 1) #7
  br label %60

60:                                               ; preds = %58, %55, %35, %14, %3, %1
  %61 = phi i32 [ -22, %3 ], [ -22, %1 ], [ -1, %14 ], [ -4, %35 ], [ %50, %55 ], [ %50, %58 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_munlockall() local_unnamed_addr #0 {
  %1 = alloca ptr, align 4
  %2 = tail call ptr @llvm.thread.pointer() #7
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %4, i1 noundef zeroext true) #7
  br label %8

8:                                                ; preds = %7, %0
  %9 = getelementptr inbounds %struct.anon.7, ptr %4, i32 0, i32 15
  %10 = tail call i32 @down_write_killable(ptr noundef %9) #7
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = icmp eq i32 %10, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %4, i1 noundef zeroext true, i1 noundef zeroext %14) #7
  br label %15

15:                                               ; preds = %13, %8
  %16 = icmp eq i32 %10, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #7
  store ptr null, ptr %1, align 4
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.anon.7, ptr %18, i32 0, i32 25
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -532481
  store i32 %21, ptr %19, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %25, %17
  %26 = phi ptr [ %37, %25 ], [ %23, %17 ]
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -532481
  %30 = load i32, ptr %26, align 4
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = call fastcc i32 @mlock_fixup(ptr noundef nonnull %26, ptr noundef nonnull %1, i32 noundef %30, i32 noundef %32, i32 noundef %29) #7
  %34 = tail call i32 @__cond_resched() #7
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.vm_area_struct, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %25

39:                                               ; preds = %25
  %40 = load ptr, ptr %3, align 4
  br label %41

41:                                               ; preds = %39, %17
  %42 = phi ptr [ %40, %39 ], [ %22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @__mmap_lock_do_trace_released(ptr noundef %42, i1 noundef zeroext true) #7
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.anon.7, ptr %42, i32 0, i32 15
  tail call void @up_write(ptr noundef %47) #7
  br label %48

48:                                               ; preds = %46, %15
  %49 = phi i32 [ 0, %46 ], [ -4, %15 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @apply_mlockall_flags(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4
  %3 = tail call ptr @llvm.thread.pointer() #7
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon.7, ptr %5, i32 0, i32 25
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -532481
  store i32 %8, ptr %6, align 4
  %9 = and i32 %0, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = and i32 %0, 1
  %13 = and i32 %0, 4
  %14 = icmp eq i32 %12, 0
  br label %30

15:                                               ; preds = %1
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.anon.7, ptr %16, i32 0, i32 25
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 8192
  store i32 %19, ptr %17, align 4
  %20 = and i32 %0, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.anon.7, ptr %23, i32 0, i32 25
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 524288
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %15
  %28 = and i32 %0, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %27, %11
  %31 = phi i32 [ %13, %11 ], [ %20, %27 ]
  %32 = phi i1 [ %14, %11 ], [ false, %27 ]
  %33 = icmp eq i32 %31, 0
  %34 = select i1 %33, i32 8192, i32 532480
  %35 = select i1 %32, i32 0, i32 %34
  %36 = load ptr, ptr %4, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %39, %30
  %40 = phi ptr [ %52, %39 ], [ %37, %30 ]
  %41 = getelementptr inbounds %struct.vm_area_struct, ptr %40, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, -532481
  %44 = or i32 %43, %35
  %45 = load i32, ptr %40, align 4
  %46 = getelementptr inbounds %struct.vm_area_struct, ptr %40, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = call fastcc i32 @mlock_fixup(ptr noundef nonnull %40, ptr noundef nonnull %2, i32 noundef %45, i32 noundef %47, i32 noundef %44)
  %49 = tail call i32 @__cond_resched() #7
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr inbounds %struct.vm_area_struct, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %39

54:                                               ; preds = %39, %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @user_shm_lock(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, 4095
  %4 = lshr i32 %3, 12
  %5 = tail call ptr @llvm.thread.pointer() #7
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 50, i32 8
  %9 = load volatile i32, ptr %8, align 8
  %10 = icmp eq i32 %9, -1
  %11 = zext i1 %10 to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @shmlock_user_lock) #7
  %12 = tail call i32 @inc_rlimit_ucounts(ptr noundef %1, i32 noundef 13, i32 noundef %4) #7
  br i1 %10, label %20, label %13

13:                                               ; preds = %2
  %14 = lshr i32 %9, 12
  %15 = icmp eq i32 %12, 2147483647
  %16 = icmp ugt i32 %12, %14
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %19, label %20, label %23

20:                                               ; preds = %18, %13, %2
  %21 = tail call ptr @get_ucounts(ptr noundef %1) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %18
  %24 = phi i32 [ 0, %18 ], [ %11, %20 ]
  %25 = tail call zeroext i1 @dec_rlimit_ucounts(ptr noundef %1, i32 noundef 13, i32 noundef %4) #7
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ 1, %20 ], [ %24, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %28 = load i16, ptr @shmlock_user_lock, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr @shmlock_user_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inc_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_ucounts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @user_shm_unlock(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @shmlock_user_lock) #7
  %3 = add i32 %0, 4095
  %4 = lshr i32 %3, 12
  %5 = tail call zeroext i1 @dec_rlimit_ucounts(ptr noundef %1, i32 noundef 13, i32 noundef %4) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %6 = load i16, ptr @shmlock_user_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @shmlock_user_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  tail call void @put_ucounts(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ucounts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_mlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_locked_pte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_lru_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_mlock(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #7
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr %struct.signal_struct, ptr %6, i32 0, i32 50, i32 8
  %8 = load volatile i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %11, label %12, label %112

12:                                               ; preds = %10
  %13 = load ptr, ptr %5, align 16
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi ptr [ %13, %12 ], [ %6, %3 ]
  %16 = and i32 %0, 4095
  %17 = add i32 %1, 4095
  %18 = add i32 %17, %16
  %19 = and i32 %18, -4096
  %20 = and i32 %0, -4096
  %21 = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 50, i32 8
  %22 = load volatile i32, ptr %21, align 8
  %23 = lshr i32 %22, 12
  %24 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %25 = load ptr, ptr %24, align 4
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %25, i1 noundef zeroext true) #7
  br label %29

29:                                               ; preds = %28, %14
  %30 = getelementptr inbounds %struct.anon.7, ptr %25, i32 0, i32 15
  %31 = tail call i32 @down_write_killable(ptr noundef %30) #7
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = icmp eq i32 %31, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %25, i1 noundef zeroext true, i1 noundef zeroext %35) #7
  br label %36

36:                                               ; preds = %34, %29
  %37 = icmp eq i32 %31, 0
  br i1 %37, label %38, label %112

38:                                               ; preds = %36
  %39 = lshr i32 %18, 12
  %40 = load ptr, ptr %24, align 4
  %41 = getelementptr inbounds %struct.anon.7, ptr %40, i32 0, i32 20
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %39
  %44 = icmp ugt i32 %43, %23
  br i1 %44, label %45, label %88

45:                                               ; preds = %38
  %46 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %46, label %88, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %24, align 4
  %49 = tail call ptr @find_vma(ptr noundef %48, i32 noundef %20) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %85, label %51

51:                                               ; preds = %47
  %52 = add i32 %19, %20
  br label %53

53:                                               ; preds = %77, %51
  %54 = phi i32 [ 0, %51 ], [ %78, %77 ]
  %55 = phi ptr [ %49, %51 ], [ %80, %77 ]
  %56 = getelementptr inbounds %struct.vm_area_struct, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %57, %20
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load i32, ptr %55, align 4
  %61 = icmp ugt i32 %52, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %55, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 8192
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @llvm.usub.sat.i32(i32 %20, i32 %60) #7
  %69 = sub i32 %54, %68
  %70 = icmp ult i32 %52, %57
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = sub i32 %52, %60
  %73 = add i32 %72, %69
  br label %82

74:                                               ; preds = %67
  %75 = sub i32 %57, %60
  %76 = add i32 %75, %69
  br label %77

77:                                               ; preds = %74, %62, %53
  %78 = phi i32 [ %54, %53 ], [ %76, %74 ], [ %54, %62 ]
  %79 = getelementptr inbounds %struct.vm_area_struct, ptr %55, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %53

82:                                               ; preds = %77, %71, %59
  %83 = phi i32 [ %73, %71 ], [ %54, %59 ], [ %78, %77 ]
  %84 = lshr i32 %83, 12
  br label %85

85:                                               ; preds = %82, %47
  %86 = phi i32 [ %84, %82 ], [ 0, %47 ]
  %87 = sub i32 %43, %86
  br label %88

88:                                               ; preds = %85, %45, %38
  %89 = phi i32 [ %43, %45 ], [ %87, %85 ], [ %43, %38 ]
  %90 = icmp ugt i32 %89, %23
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %92, label %93, label %95

93:                                               ; preds = %91, %88
  %94 = tail call fastcc i32 @apply_vma_lock_flags(i32 noundef %20, i32 noundef %19, i32 noundef %2)
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %94, %93 ], [ -12, %91 ]
  %97 = load ptr, ptr %24, align 4
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  tail call void @__mmap_lock_do_trace_released(ptr noundef %97, i1 noundef zeroext true) #7
  br label %101

101:                                              ; preds = %100, %95
  %102 = getelementptr inbounds %struct.anon.7, ptr %97, i32 0, i32 15
  tail call void @up_write(ptr noundef %102) #7
  %103 = icmp eq i32 %96, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = tail call i32 @__mm_populate(i32 noundef %20, i32 noundef %19, i32 noundef 0) #7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = icmp eq i32 %105, -14
  %109 = icmp eq i32 %105, -12
  %110 = select i1 %109, i32 -11, i32 %105
  %111 = select i1 %108, i32 -12, i32 %110
  br label %112

112:                                              ; preds = %107, %104, %101, %36, %10
  %113 = phi i32 [ %111, %107 ], [ -1, %10 ], [ -4, %36 ], [ %96, %101 ], [ 0, %104 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @apply_vma_lock_flags(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %5 = add i32 %1, %0
  %6 = icmp ult i32 %5, %0
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @llvm.thread.pointer() #7
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 37
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @find_vma(ptr noundef %12, i32 noundef %0) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %13, align 4
  %17 = icmp ugt i32 %16, %0
  br i1 %17, label %48, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %13, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult i32 %16, %0
  %22 = select i1 %21, ptr %13, ptr %20
  store ptr %22, ptr %4, align 4
  br label %23

23:                                               ; preds = %45, %18
  %24 = phi i32 [ %0, %18 ], [ %39, %45 ]
  %25 = phi ptr [ %13, %18 ], [ %43, %45 ]
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -532481
  %29 = or i32 %28, %2
  %30 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %5)
  %33 = call fastcc i32 @mlock_fixup(ptr noundef nonnull %25, ptr noundef nonnull %4, i32 noundef %24, i32 noundef %32, i32 noundef %29)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %23
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %32, i32 %38)
  %40 = icmp ult i32 %39, %5
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 4
  %47 = icmp eq i32 %46, %39
  br i1 %47, label %23, label %48

48:                                               ; preds = %45, %41, %35, %23, %15, %9, %7, %3
  %49 = phi i32 [ -22, %3 ], [ 0, %7 ], [ -12, %15 ], [ -12, %9 ], [ %33, %23 ], [ 0, %35 ], [ -12, %41 ], [ -12, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mlock_fixup(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %4, 8192
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, %4
  %13 = and i32 %11, 268715008
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %5
  %17 = tail call ptr @llvm.thread.pointer() #7
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 37
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @get_gate_vma(ptr noundef %19) #7
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %65, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %0, align 4
  %26 = sub i32 %2, %25
  %27 = lshr i32 %26, 12
  %28 = add i32 %27, %24
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @vma_merge(ptr noundef %7, ptr noundef %29, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %31, ptr noundef %33, i32 noundef %28, ptr noundef null, ptr noundef null) #7
  store ptr %34, ptr %1, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %22
  %37 = load i32, ptr %0, align 4
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @split_vma(ptr noundef %7, ptr noundef %0, i32 noundef %2, i32 noundef 1) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %3
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @split_vma(ptr noundef %7, ptr noundef %0, i32 noundef %3, i32 noundef 0) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46, %42, %22
  %50 = phi ptr [ %0, %46 ], [ %0, %42 ], [ %34, %22 ]
  %51 = sub i32 %3, %2
  %52 = lshr i32 %51, 12
  br i1 %9, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 %55, %52
  store i32 %56, ptr %54, align 4
  tail call void @munlock_vma_pages_range(ptr noundef %50, i32 noundef %2, i32 noundef %3)
  br label %65

57:                                               ; preds = %49
  %58 = and i32 %11, 8192
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 %52, i32 0
  %61 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 20
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.vm_area_struct, ptr %50, i32 0, i32 8
  store i32 %4, ptr %64, align 4
  br label %65

65:                                               ; preds = %57, %53, %46, %39, %16, %5
  %66 = phi ptr [ %0, %5 ], [ %0, %16 ], [ %50, %57 ], [ %50, %53 ], [ %0, %39 ], [ %0, %46 ]
  %67 = phi i32 [ 0, %5 ], [ 0, %16 ], [ 0, %57 ], [ 0, %53 ], [ %40, %39 ], [ %47, %46 ]
  store ptr %66, ptr %1, align 4
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_merge(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @split_vma(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 810659, i64 810720}
!11 = !{i64 829359}
!12 = !{i64 813676}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2154098382, i64 2154098856, i64 2154098419, i64 2154098475, i64 2154098509, i64 2154098533, i64 2154098574, i64 2154098595, i64 2154098623, i64 2154098657}
!15 = !{i64 2154099709, i64 2154100184, i64 2154099746, i64 2154099802, i64 2154099836, i64 2154099860, i64 2154099901, i64 2154099922, i64 2154099950, i64 2154099984}
!16 = !{!"auto-init"}
!17 = !{i64 904981, i64 2148394952, i64 2148394978, i64 2148395025, i64 2148395047, i64 2148395075, i64 2148395095}
!18 = !{i64 2148406367, i64 2148406393, i64 2148406422, i64 2148406456, i64 2148406487, i64 2148406510}
!19 = !{i64 2149072047}
!20 = !{i64 2149067871}
!21 = !{i64 2149067946, i64 2149067973, i64 2149068020, i64 2149068042, i64 2149068070, i64 2149068090}
!22 = !{i64 2149095050}
!23 = !{i64 2151529402}
!24 = !{i64 2152872812}
!25 = !{i64 810904}
!26 = !{i64 2149096191}
!27 = !{i64 2148414829, i64 2148414861, i64 2148414890, i64 2148414924, i64 2148414955, i64 2148414978}
!28 = !{i64 2148516169}
!29 = !{i64 2149470819}
!30 = !{i64 2149471036}
!31 = !{i64 2148507046}
!32 = !{i64 2148409408, i64 2148409440, i64 2148409469, i64 2148409503, i64 2148409534, i64 2148409557}
!33 = !{i64 2148507249}
