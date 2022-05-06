; ModuleID = '/llk/IR/fs/select.c_pt.bc'
source_filename = "../fs/select.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poll_initwait:\09\09\09\09\09"
module asm "\09.asciz \09\22poll_initwait\22\09\09\09\09\09"
module asm "__kstrtabns_poll_initwait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poll_freewait:\09\09\09\09\09"
module asm "\09.asciz \09\22poll_freewait\22\09\09\09\09\09"
module asm "__kstrtabns_poll_freewait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.152, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.110 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.152 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.poll_table_struct = type { ptr, i32 }
%struct.poll_wqueues = type { %struct.poll_table_struct, ptr, ptr, i32, i32, i32, [16 x %struct.poll_table_entry] }
%struct.poll_table_entry = type { ptr, i32, %struct.wait_queue_entry, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.poll_table_page = type { ptr, ptr, [0 x %struct.poll_table_entry] }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [12 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [44 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sigset_argpack = type { ptr, i32 }
%struct.sel_arg_struct = type { i32, ptr, ptr, ptr, ptr }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.old_timeval32 = type { i32, i32 }
%struct.poll_list = type { ptr, i32, [0 x %struct.pollfd] }
%struct.pollfd = type { i32, i16, i16 }
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

@__kstrtab_poll_initwait = external dso_local constant [0 x i8], align 1
@__kstrtabns_poll_initwait = external dso_local constant [0 x i8], align 1
@__ksymtab_poll_initwait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poll_initwait to i32), ptr @__kstrtab_poll_initwait, ptr @__kstrtabns_poll_initwait }, section "___ksymtab+poll_initwait", align 4
@__kstrtab_poll_freewait = external dso_local constant [0 x i8], align 1
@__kstrtabns_poll_freewait = external dso_local constant [0 x i8], align 1
@__ksymtab_poll_freewait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poll_freewait to i32), ptr @__kstrtab_poll_freewait, ptr @__kstrtabns_poll_freewait }, section "___ksymtab+poll_freewait", align 4
@sysctl_net_busy_poll = external dso_local global i32, section ".data..read_mostly", align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"include/linux/sched/signal.h\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_poll_freewait, ptr @__ksymtab_poll_initwait], section "llvm.metadata"

@sys_select = dso_local alias i32 (i32, ptr, ptr, ptr, ptr), ptr @__se_sys_select
@sys_pselect6 = dso_local alias i32 (i32, ptr, ptr, ptr, ptr, ptr), ptr @__se_sys_pselect6
@sys_pselect6_time32 = dso_local alias i32 (i32, ptr, ptr, ptr, ptr, ptr), ptr @__se_sys_pselect6_time32
@sys_old_select = dso_local alias i32 (ptr), ptr @__se_sys_old_select
@sys_poll = dso_local alias i32 (ptr, i32, i32), ptr @__se_sys_poll
@sys_ppoll = dso_local alias i32 (ptr, i32, ptr, ptr, i32), ptr @__se_sys_ppoll
@sys_ppoll_time32 = dso_local alias i32 (ptr, i32, ptr, ptr, i32), ptr @__se_sys_ppoll_time32

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @select_estimate_accuracy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 16
  %7 = icmp sgt i32 %6, 99
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  call void @ktime_get_ts64(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %9 = load i64, ptr %0, align 8
  %10 = getelementptr inbounds [2 x i64], ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %2, align 8
  %13 = getelementptr inbounds [2 x i64], ptr %2, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %11 to i32
  %16 = trunc i64 %14 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !alias.scope !9, !annotation !8
  %17 = sub i64 %9, %12
  %18 = sub i32 %15, %16
  %19 = sext i32 %18 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %17, i64 noundef %19) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %20 = load i64, ptr %2, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 15
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -120
  %26 = icmp sgt i32 %25, 0
  %27 = select i1 %26, i32 20, i32 100
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %20, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %22
  %31 = select i1 %26, i32 5000000, i32 1000000
  %32 = select i1 %26, i32 200, i32 1000
  %33 = load i32, ptr %13, align 8
  %34 = sdiv i32 %33, %32
  %35 = trunc i64 %20 to i32
  %36 = mul i32 %31, %35
  %37 = add i32 %34, %36
  %38 = call i32 @llvm.smin.i32(i32 %37, i32 100000000) #10
  br label %39

39:                                               ; preds = %30, %22, %8
  %40 = phi i32 [ 0, %8 ], [ 100000000, %22 ], [ %38, %30 ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 143
  %43 = load i64, ptr %42, align 8
  %44 = call i64 @llvm.umax.i64(i64 %43, i64 %41)
  br label %45

45:                                               ; preds = %39, %1
  %46 = phi i64 [ 0, %1 ], [ %44, %39 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret i64 %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @poll_initwait(ptr nocapture noundef writeonly %0) #5 {
  store ptr @__pollwait, ptr %0, align 4
  %2 = getelementptr inbounds %struct.poll_table_struct, ptr %0, i32 0, i32 1
  store i32 -1, ptr %2, align 4
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.poll_wqueues, ptr %0, i32 0, i32 2
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.poll_wqueues, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.poll_wqueues, ptr %0, i32 0, i32 4
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.poll_wqueues, ptr %0, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.poll_wqueues, ptr %0, i32 0, i32 5
  store i32 0, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__pollwait(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.poll_wqueues, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.poll_wqueues, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 16
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.poll_wqueues, ptr %2, i32 0, i32 6
  %11 = add nuw nsw i32 %7, 1
  store i32 %11, ptr %6, align 4
  %12 = getelementptr %struct.poll_table_entry, ptr %10, i32 %7
  br label %38

13:                                               ; preds = %3
  %14 = icmp eq ptr %5, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.poll_table_page, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.poll_table_entry, ptr %17, i32 1
  %19 = ptrtoint ptr %18 to i32
  %20 = ptrtoint ptr %5 to i32
  %21 = add i32 %20, 4096
  %22 = icmp ult i32 %21, %19
  br i1 %22, label %23, label %33

23:                                               ; preds = %15, %13
  %24 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.poll_wqueues, ptr %2, i32 0, i32 4
  store i32 -12, ptr %27, align 4
  br label %51

28:                                               ; preds = %23
  %29 = inttoptr i32 %24 to ptr
  %30 = getelementptr inbounds %struct.poll_table_page, ptr %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.poll_table_page, ptr %29, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  store ptr %5, ptr %29, align 4
  store ptr %29, ptr %4, align 4
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %28, %15
  %34 = phi ptr [ %32, %28 ], [ %17, %15 ]
  %35 = phi ptr [ %29, %28 ], [ %5, %15 ]
  %36 = getelementptr inbounds %struct.poll_table_page, ptr %35, i32 0, i32 1
  %37 = getelementptr %struct.poll_table_entry, ptr %34, i32 1
  store ptr %37, ptr %36, align 4
  br label %38

38:                                               ; preds = %33, %9
  %39 = phi ptr [ %12, %9 ], [ %34, %33 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #10, !srcloc !12
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #10, !srcloc !13
  store ptr %0, ptr %39, align 4
  %44 = getelementptr inbounds %struct.poll_table_entry, ptr %39, i32 0, i32 3
  store ptr %1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.poll_table_struct, ptr %2, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.poll_table_entry, ptr %39, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.poll_table_entry, ptr %39, i32 0, i32 2
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.poll_table_entry, ptr %39, i32 0, i32 2, i32 1
  %50 = getelementptr inbounds %struct.poll_table_entry, ptr %39, i32 0, i32 2, i32 2
  store ptr @pollwake, ptr %50, align 4
  store ptr %2, ptr %49, align 4
  tail call void @add_wait_queue(ptr noundef %1, ptr noundef %48) #10
  br label %51

51:                                               ; preds = %41, %38, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @poll_freewait(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.poll_wqueues, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.poll_wqueues, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.poll_wqueues, ptr %0, i32 0, i32 6
  br label %11

9:                                                ; preds = %11, %1
  %10 = icmp eq ptr %3, null
  br i1 %10, label %38, label %21

11:                                               ; preds = %11, %7
  %12 = phi i32 [ 0, %7 ], [ %18, %11 ]
  %13 = getelementptr %struct.poll_table_entry, ptr %8, i32 %12
  %14 = getelementptr %struct.poll_table_entry, ptr %8, i32 %12, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.poll_table_entry, ptr %8, i32 %12, i32 2
  tail call void @remove_wait_queue(ptr noundef %15, ptr noundef %16) #10
  %17 = load ptr, ptr %13, align 4
  tail call void @fput(ptr noundef %17) #10
  %18 = add nuw nsw i32 %12, 1
  %19 = load i32, ptr %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %11, label %9

21:                                               ; preds = %34, %9
  %22 = phi ptr [ %35, %34 ], [ %3, %9 ]
  %23 = getelementptr inbounds %struct.poll_table_page, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.poll_table_page, ptr %22, i32 0, i32 2
  br label %26

26:                                               ; preds = %26, %21
  %27 = phi ptr [ %24, %21 ], [ %28, %26 ]
  %28 = getelementptr %struct.poll_table_entry, ptr %27, i32 -1
  %29 = getelementptr %struct.poll_table_entry, ptr %27, i32 -1, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.poll_table_entry, ptr %27, i32 -1, i32 2
  tail call void @remove_wait_queue(ptr noundef %30, ptr noundef %31) #10
  %32 = load ptr, ptr %28, align 4
  tail call void @fput(ptr noundef %32) #10
  %33 = icmp ugt ptr %28, %25
  br i1 %33, label %26, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %22, align 4
  %36 = ptrtoint ptr %22 to i32
  tail call void @free_pages(i32 noundef %36, i32 noundef 0) #10
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %21

38:                                               ; preds = %34, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @poll_select_set_timeout(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = zext i32 %2 to i64
  %6 = icmp sgt i64 %1, -1
  %7 = icmp ult i32 %2, 1000000000
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = icmp ne i64 %1, 0
  %11 = icmp ne i32 %2, 0
  %12 = or i1 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 0, ptr %14, align 8
  store i64 0, ptr %0, align 8
  br label %23

15:                                               ; preds = %9
  tail call void @ktime_get_ts64(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %16 = load i64, ptr %0, align 8
  %17 = insertvalue [2 x i64] undef, i64 %16, 0
  %18 = getelementptr inbounds [2 x i64], ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = insertvalue [2 x i64] %17, i64 %19, 1
  %21 = insertvalue [2 x i64] poison, i64 %1, 0
  %22 = insertvalue [2 x i64] %21, i64 %5, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %4, [2 x i64] %20, [2 x i64] %22) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %23

23:                                               ; preds = %15, %13, %3
  %24 = phi i32 [ 0, %15 ], [ 0, %13 ], [ -22, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timespec64_add_safe(ptr sret(%struct.timespec64) align 8, [2 x i64], [2 x i64]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @core_sys_select(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.poll_wqueues, align 4
  %8 = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %8, i8 0, i32 256, i1 false), !annotation !8
  %9 = icmp slt i32 %0, 0
  br i1 %9, label %445, label %10

10:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 90
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.files_struct, ptr %13, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %0)
  %18 = add i32 %17, 31
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 536870908
  %21 = icmp ugt i32 %20, 42
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = mul nuw i32 %20, 6
  %24 = tail call noalias ptr @kvmalloc_node(i32 noundef %23, i32 noundef 3264, i32 noundef -1) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %445, label %26

26:                                               ; preds = %22, %10
  %27 = phi ptr [ %24, %22 ], [ %8, %10 ]
  %28 = getelementptr i8, ptr %27, i32 %20
  %29 = shl nuw nsw i32 %20, 1
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = mul nuw nsw i32 %20, 3
  %32 = getelementptr i8, ptr %27, i32 %31
  %33 = shl nuw nsw i32 %20, 2
  %34 = getelementptr i8, ptr %27, i32 %33
  %35 = mul nuw i32 %20, 5
  %36 = getelementptr i8, ptr %27, i32 %35
  %37 = icmp eq ptr %1, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %26
  %39 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 %20, i32 -1090519040) #12, !srcloc !16
  %40 = extractvalue { i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48, !prof !17

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %44 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %43) #13, !srcloc !18
  %45 = and i32 %44, -13
  %46 = or i32 %45, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %47 = call i32 @arm_copy_from_user(ptr noundef nonnull %27, ptr noundef nonnull %1, i32 noundef %20) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi i32 [ %47, %42 ], [ %20, %38 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !17

51:                                               ; preds = %48
  %52 = sub i32 %20, %49
  %53 = getelementptr i8, ptr %27, i32 %52
  call void @llvm.memset.p0.i32(ptr align 1 %53, i8 0, i32 %49, i1 false) #10
  br label %441

54:                                               ; preds = %26
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %27, i8 0, i32 %20, i1 false) #10
  br label %55

55:                                               ; preds = %54, %48
  %56 = icmp eq ptr %2, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %55
  %58 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %2, i32 %20, i32 -1090519040) #12, !srcloc !16
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67, !prof !17

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %63 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #13, !srcloc !18
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %66 = call i32 @arm_copy_from_user(ptr noundef %28, ptr noundef nonnull %2, i32 noundef %20) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  br label %67

67:                                               ; preds = %61, %57
  %68 = phi i32 [ %66, %61 ], [ %20, %57 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70, !prof !17

70:                                               ; preds = %67
  %71 = sub i32 %20, %68
  %72 = getelementptr i8, ptr %28, i32 %71
  call void @llvm.memset.p0.i32(ptr align 1 %72, i8 0, i32 %68, i1 false) #10
  br label %441

73:                                               ; preds = %55
  call void @llvm.memset.p0.i32(ptr align 4 %28, i8 0, i32 %20, i1 false) #10
  br label %74

74:                                               ; preds = %73, %67
  %75 = icmp eq ptr %3, null
  br i1 %75, label %92, label %76

76:                                               ; preds = %74
  %77 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %3, i32 %20, i32 -1090519040) #12, !srcloc !16
  %78 = extractvalue { i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86, !prof !17

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #13, !srcloc !18
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %85 = call i32 @arm_copy_from_user(ptr noundef %30, ptr noundef nonnull %3, i32 noundef %20) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  br label %86

86:                                               ; preds = %80, %76
  %87 = phi i32 [ %85, %80 ], [ %20, %76 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89, !prof !17

89:                                               ; preds = %86
  %90 = sub i32 %20, %87
  %91 = getelementptr i8, ptr %30, i32 %90
  call void @llvm.memset.p0.i32(ptr align 1 %91, i8 0, i32 %87, i1 false) #10
  br label %441

92:                                               ; preds = %74
  call void @llvm.memset.p0.i32(ptr align 4 %30, i8 0, i32 %20, i1 false) #10
  br label %93

93:                                               ; preds = %92, %86
  call void @llvm.memset.p0.i32(ptr align 4 %32, i8 0, i32 %20, i1 false) #10
  call void @llvm.memset.p0.i32(ptr align 4 %34, i8 0, i32 %20, i1 false) #10
  call void @llvm.memset.p0.i32(ptr align 4 %36, i8 0, i32 %20, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 540, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(540) %7, i8 0, i32 540, i1 false) #10, !annotation !8
  %94 = load i32, ptr @sysctl_net_busy_poll, align 4
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 0, i32 32768
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %97 = and i32 %17, 31
  %98 = lshr i32 %17, 5
  %99 = load ptr, ptr %12, align 4
  %100 = getelementptr inbounds %struct.files_struct, ptr %99, i32 0, i32 3
  %101 = load volatile ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.fdtable, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i32, ptr %103, i32 %98
  %105 = icmp eq i32 %97, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %93
  %107 = shl nsw i32 -1, %97
  %108 = xor i32 %107, -1
  %109 = getelementptr i32, ptr %27, i32 %98
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr i32, ptr %28, i32 %98
  %112 = load i32, ptr %111, align 4
  %113 = or i32 %112, %110
  %114 = getelementptr i32, ptr %30, i32 %98
  %115 = load i32, ptr %114, align 4
  %116 = or i32 %113, %115
  %117 = and i32 %116, %108
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %106
  %120 = load i32, ptr %104, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %117, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %153, label %166

124:                                              ; preds = %163, %106, %93
  %125 = phi i32 [ %165, %163 ], [ 0, %106 ], [ 0, %93 ]
  %126 = phi ptr [ %155, %163 ], [ %104, %106 ], [ %104, %93 ]
  %127 = phi i32 [ %156, %163 ], [ %98, %106 ], [ %98, %93 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %167, label %129

129:                                              ; preds = %124
  %130 = icmp eq i32 %125, 0
  br label %131

131:                                              ; preds = %145, %129
  %132 = phi i32 [ %127, %129 ], [ %135, %145 ]
  %133 = phi ptr [ %126, %129 ], [ %134, %145 ]
  %134 = getelementptr i32, ptr %133, i32 -1
  %135 = add i32 %132, -1
  %136 = getelementptr i32, ptr %27, i32 %135
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr i32, ptr %28, i32 %135
  %139 = load i32, ptr %138, align 4
  %140 = or i32 %139, %137
  %141 = getelementptr i32, ptr %30, i32 %135
  %142 = load i32, ptr %141, align 4
  %143 = or i32 %140, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %152, %131
  %146 = icmp eq i32 %135, 0
  br i1 %146, label %167, label %131

147:                                              ; preds = %131
  %148 = load i32, ptr %134, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %143, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %147
  br i1 %130, label %153, label %145

153:                                              ; preds = %152, %119
  %154 = phi i32 [ %117, %119 ], [ %143, %152 ]
  %155 = phi ptr [ %104, %119 ], [ %134, %152 ]
  %156 = phi i32 [ %98, %119 ], [ %135, %152 ]
  br label %157

157:                                              ; preds = %157, %153
  %158 = phi i32 [ 0, %153 ], [ %160, %157 ]
  %159 = phi i32 [ %154, %153 ], [ %161, %157 ]
  %160 = add nuw nsw i32 %158, 1
  %161 = lshr i32 %159, 1
  %162 = icmp ult i32 %159, 2
  br i1 %162, label %163, label %157

163:                                              ; preds = %157
  %164 = shl i32 %156, 5
  %165 = add i32 %160, %164
  br label %124

166:                                              ; preds = %147, %119
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %414

167:                                              ; preds = %145, %124
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %168 = icmp slt i32 %125, 0
  br i1 %168, label %414, label %169

169:                                              ; preds = %167
  store ptr @__pollwait, ptr %7, align 4
  %170 = getelementptr inbounds %struct.poll_table_struct, ptr %7, i32 0, i32 1
  store i32 -1, ptr %170, align 4
  %171 = getelementptr inbounds %struct.poll_wqueues, ptr %7, i32 0, i32 2
  store ptr %11, ptr %171, align 4
  %172 = getelementptr inbounds %struct.poll_wqueues, ptr %7, i32 0, i32 3
  store i32 0, ptr %172, align 4
  %173 = getelementptr inbounds %struct.poll_wqueues, ptr %7, i32 0, i32 4
  store i32 0, ptr %173, align 4
  %174 = getelementptr inbounds %struct.poll_wqueues, ptr %7, i32 0, i32 1
  store ptr null, ptr %174, align 4
  %175 = getelementptr inbounds %struct.poll_wqueues, ptr %7, i32 0, i32 5
  store i32 0, ptr %175, align 4
  %176 = icmp eq ptr %4, null
  br i1 %176, label %188, label %177

177:                                              ; preds = %169
  %178 = load i64, ptr %4, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %182 = load i32, ptr %181, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store ptr null, ptr %7, align 4
  br label %188

185:                                              ; preds = %180, %177
  %186 = call i64 @select_estimate_accuracy(ptr noundef nonnull %4) #10
  %187 = trunc i64 %186 to i32
  br label %188

188:                                              ; preds = %185, %184, %169
  %189 = phi i32 [ 0, %185 ], [ 0, %169 ], [ 1, %184 ]
  %190 = phi i32 [ %187, %185 ], [ 0, %169 ], [ 0, %184 ]
  %191 = icmp eq i32 %125, 0
  %192 = getelementptr inbounds [2 x i64], ptr %4, i32 0, i32 1
  %193 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %194 = zext i32 %190 to i64
  br label %195

195:                                              ; preds = %410, %188
  %196 = phi ptr [ %405, %410 ], [ null, %188 ]
  %197 = phi i32 [ %413, %410 ], [ %189, %188 ]
  %198 = phi i32 [ 0, %410 ], [ %96, %188 ]
  %199 = phi i32 [ %203, %410 ], [ 0, %188 ]
  br label %200

200:                                              ; preds = %377, %195
  %201 = phi i32 [ %197, %195 ], [ 0, %377 ]
  %202 = phi i32 [ %198, %195 ], [ %355, %377 ]
  %203 = phi i32 [ %199, %195 ], [ %380, %377 ]
  %204 = icmp eq i32 %203, 0
  br label %205

205:                                              ; preds = %384, %200
  %206 = phi i32 [ 0, %384 ], [ %201, %200 ]
  %207 = phi i32 [ %355, %384 ], [ %202, %200 ]
  br i1 %191, label %353, label %208

208:                                              ; preds = %344, %205
  %209 = phi i1 [ %348, %344 ], [ false, %205 ]
  %210 = phi ptr [ %223, %344 ], [ %30, %205 ]
  %211 = phi ptr [ %221, %344 ], [ %28, %205 ]
  %212 = phi ptr [ %219, %344 ], [ %27, %205 ]
  %213 = phi ptr [ %351, %344 ], [ %36, %205 ]
  %214 = phi ptr [ %350, %344 ], [ %34, %205 ]
  %215 = phi ptr [ %349, %344 ], [ %32, %205 ]
  %216 = phi i32 [ %347, %344 ], [ %207, %205 ]
  %217 = phi i32 [ %346, %344 ], [ 0, %205 ]
  %218 = phi i32 [ %345, %344 ], [ 0, %205 ]
  %219 = getelementptr i32, ptr %212, i32 1
  %220 = load i32, ptr %212, align 4
  %221 = getelementptr i32, ptr %211, i32 1
  %222 = load i32, ptr %211, align 4
  %223 = getelementptr i32, ptr %210, i32 1
  %224 = load i32, ptr %210, align 4
  %225 = or i32 %222, %220
  %226 = or i32 %225, %224
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %208
  %229 = call i32 @llvm.smax.i32(i32 %217, i32 %125) #10
  %230 = sub i32 %229, %217
  br label %233

231:                                              ; preds = %208
  %232 = add i32 %217, 32
  br label %344

233:                                              ; preds = %315, %228
  %234 = phi i32 [ %321, %315 ], [ 0, %228 ]
  %235 = phi i32 [ %320, %315 ], [ 0, %228 ]
  %236 = phi i32 [ %319, %315 ], [ 0, %228 ]
  %237 = phi i32 [ %322, %315 ], [ 0, %228 ]
  %238 = phi i32 [ %324, %315 ], [ 1, %228 ]
  %239 = phi i1 [ %318, %315 ], [ %209, %228 ]
  %240 = phi i32 [ %317, %315 ], [ %216, %228 ]
  %241 = phi i32 [ %323, %315 ], [ %217, %228 ]
  %242 = phi i32 [ %316, %315 ], [ %218, %228 ]
  %243 = icmp eq i32 %237, %230
  br i1 %243, label %326, label %244

244:                                              ; preds = %233
  %245 = and i32 %238, %226
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %315, label %247

247:                                              ; preds = %244
  %248 = call i32 @__fdget(i32 noundef %241) #10, !noalias !21
  %249 = and i32 %248, -4
  %250 = inttoptr i32 %249 to ptr
  %251 = icmp eq i32 %249, 0
  %252 = and i32 %238, %220
  br i1 %251, label %253, label %255

253:                                              ; preds = %247
  %254 = and i32 %238, %222
  br label %275

255:                                              ; preds = %247
  %256 = icmp eq i32 %252, 0
  %257 = select i1 %256, i32 34, i32 251
  %258 = or i32 %257, %240
  %259 = and i32 %238, %222
  %260 = icmp eq i32 %259, 0
  %261 = or i32 %258, 812
  %262 = select i1 %260, i32 %258, i32 %261
  store i32 %262, ptr %170, align 4
  %263 = getelementptr inbounds %struct.file, ptr %250, i32 0, i32 3
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.file_operations, ptr %264, i32 0, i32 9
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268, !prof !24

268:                                              ; preds = %255
  %269 = call i32 %266(ptr noundef nonnull %250, ptr noundef nonnull %7) #10
  br label %270

270:                                              ; preds = %268, %255
  %271 = phi i32 [ %269, %268 ], [ 325, %255 ]
  %272 = and i32 %248, 1
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %270
  call void @fput(ptr noundef nonnull %250) #10
  br label %275

275:                                              ; preds = %274, %270, %253
  %276 = phi i32 [ %254, %253 ], [ %259, %274 ], [ %259, %270 ]
  %277 = phi i32 [ 32, %253 ], [ %271, %274 ], [ %271, %270 ]
  %278 = and i32 %277, 249
  %279 = icmp eq i32 %278, 0
  %280 = icmp eq i32 %252, 0
  %281 = select i1 %279, i1 true, i1 %280
  %282 = xor i1 %281, true
  %283 = zext i1 %282 to i32
  %284 = add i32 %242, %283
  %285 = select i1 %281, i32 0, i32 %238
  %286 = or i32 %285, %236
  %287 = and i32 %277, 812
  %288 = icmp eq i32 %287, 0
  %289 = icmp eq i32 %276, 0
  %290 = select i1 %288, i1 true, i1 %289
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i32
  %293 = add i32 %284, %292
  %294 = select i1 %290, i32 0, i32 %238
  %295 = or i32 %294, %235
  %296 = and i1 %281, %290
  %297 = and i32 %277, 34
  %298 = icmp eq i32 %297, 0
  %299 = and i32 %238, %224
  %300 = icmp eq i32 %299, 0
  %301 = select i1 %298, i1 true, i1 %300
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = add i32 %293, %303
  %305 = select i1 %301, i32 0, i32 %238
  %306 = or i32 %305, %234
  %307 = and i1 %301, %296
  br i1 %307, label %309, label %308

308:                                              ; preds = %275
  store ptr null, ptr %7, align 4
  br label %309

309:                                              ; preds = %308, %275
  %310 = icmp eq i32 %304, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %309
  %312 = and i32 %277, %240
  %313 = icmp ne i32 %312, 0
  %314 = select i1 %313, i1 true, i1 %239
  br label %315

315:                                              ; preds = %311, %309, %244
  %316 = phi i32 [ 0, %311 ], [ %304, %309 ], [ %242, %244 ]
  %317 = phi i32 [ %240, %311 ], [ 0, %309 ], [ %240, %244 ]
  %318 = phi i1 [ %314, %311 ], [ false, %309 ], [ %239, %244 ]
  %319 = phi i32 [ %286, %311 ], [ %286, %309 ], [ %236, %244 ]
  %320 = phi i32 [ %295, %311 ], [ %295, %309 ], [ %235, %244 ]
  %321 = phi i32 [ %306, %311 ], [ %306, %309 ], [ %234, %244 ]
  %322 = add nuw nsw i32 %237, 1
  %323 = add nsw i32 %241, 1
  %324 = shl i32 %238, 1
  %325 = icmp eq i32 %322, 32
  br i1 %325, label %326, label %233

326:                                              ; preds = %315, %233
  %327 = phi i32 [ %242, %233 ], [ %316, %315 ]
  %328 = phi i32 [ %241, %233 ], [ %323, %315 ]
  %329 = phi i32 [ %240, %233 ], [ %317, %315 ]
  %330 = phi i1 [ %239, %233 ], [ %318, %315 ]
  %331 = phi i32 [ %236, %233 ], [ %319, %315 ]
  %332 = phi i32 [ %235, %233 ], [ %320, %315 ]
  %333 = phi i32 [ %234, %233 ], [ %321, %315 ]
  %334 = icmp eq i32 %331, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %326
  store i32 %331, ptr %215, align 4
  br label %336

336:                                              ; preds = %335, %326
  %337 = icmp eq i32 %332, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %336
  store i32 %332, ptr %214, align 4
  br label %339

339:                                              ; preds = %338, %336
  %340 = icmp eq i32 %333, 0
  br i1 %340, label %342, label %341

341:                                              ; preds = %339
  store i32 %333, ptr %213, align 4
  br label %342

342:                                              ; preds = %341, %339
  %343 = call i32 @__cond_resched() #10
  br label %344

344:                                              ; preds = %342, %231
  %345 = phi i32 [ %218, %231 ], [ %327, %342 ]
  %346 = phi i32 [ %232, %231 ], [ %328, %342 ]
  %347 = phi i32 [ %216, %231 ], [ %329, %342 ]
  %348 = phi i1 [ %209, %231 ], [ %330, %342 ]
  %349 = getelementptr i32, ptr %215, i32 1
  %350 = getelementptr i32, ptr %214, i32 1
  %351 = getelementptr i32, ptr %213, i32 1
  %352 = icmp slt i32 %346, %125
  br i1 %352, label %208, label %353

353:                                              ; preds = %344, %205
  %354 = phi i32 [ 0, %205 ], [ %345, %344 ]
  %355 = phi i32 [ %207, %205 ], [ %347, %344 ]
  %356 = phi i1 [ false, %205 ], [ %348, %344 ]
  store ptr null, ptr %7, align 4
  %357 = icmp ne i32 %354, 0
  %358 = icmp ne i32 %206, 0
  %359 = select i1 %357, i1 true, i1 %358
  br i1 %359, label %417, label %360

360:                                              ; preds = %353
  %361 = load volatile i32, ptr %11, align 4
  %362 = and i32 %361, 256
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %416, !prof !17

364:                                              ; preds = %360
  %365 = load volatile i32, ptr %11, align 4
  %366 = and i32 %365, 1
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %416

368:                                              ; preds = %364
  %369 = load i32, ptr %173, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %417

371:                                              ; preds = %368
  br i1 %356, label %372, label %391

372:                                              ; preds = %371
  %373 = load volatile i32, ptr %11, align 4
  %374 = and i32 %373, 2
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %391

376:                                              ; preds = %372
  br i1 %204, label %377, label %381

377:                                              ; preds = %376
  %378 = call i64 @sched_clock() #10
  %379 = lshr i64 %378, 10
  %380 = trunc i64 %379 to i32
  br label %200

381:                                              ; preds = %376
  %382 = load volatile i32, ptr @sysctl_net_busy_poll, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %391, label %384

384:                                              ; preds = %381
  %385 = add i32 %382, %203
  %386 = call i64 @sched_clock() #10
  %387 = lshr i64 %386, 10
  %388 = trunc i64 %387 to i32
  %389 = sub i32 %385, %388
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %205

391:                                              ; preds = %384, %381, %372, %371
  %392 = icmp ne ptr %196, null
  %393 = select i1 %176, i1 true, i1 %392
  br i1 %393, label %404, label %394

394:                                              ; preds = %391
  %395 = load i64, ptr %4, align 8
  %396 = icmp sgt i64 %395, 9223372035
  br i1 %396, label %402, label %397, !prof !24

397:                                              ; preds = %394
  %398 = load i64, ptr %192, align 8
  %399 = mul i64 %395, 1000000000
  %400 = and i64 %398, 4294967295
  %401 = add i64 %400, %399
  br label %402

402:                                              ; preds = %397, %394
  %403 = phi i64 [ %401, %397 ], [ 9223372036854775807, %394 ]
  store i64 %403, ptr %6, align 8
  br label %404

404:                                              ; preds = %402, %391
  %405 = phi ptr [ %196, %391 ], [ %6, %402 ]
  store volatile i32 1, ptr %193, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  %406 = load i32, ptr %172, align 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %404
  %409 = call i32 @schedule_hrtimeout_range(ptr noundef %405, i64 noundef %194, i32 noundef 0) #10
  br label %410

410:                                              ; preds = %408, %404
  %411 = phi i32 [ -4, %404 ], [ %409, %408 ]
  store volatile i32 0, ptr %193, align 8
  store volatile i32 0, ptr %172, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  %412 = icmp eq i32 %411, 0
  %413 = zext i1 %412 to i32
  br label %195

414:                                              ; preds = %167, %166
  %415 = phi i32 [ -9, %166 ], [ %125, %167 ]
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %441

416:                                              ; preds = %364, %360
  call void @poll_freewait(ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %422

417:                                              ; preds = %368, %353
  %418 = phi i32 [ %369, %368 ], [ %354, %353 ]
  call void @poll_freewait(ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %441, label %420

420:                                              ; preds = %417
  %421 = icmp eq i32 %418, 0
  br i1 %421, label %422, label %430

422:                                              ; preds = %420, %416
  %423 = load volatile i32, ptr %11, align 4
  %424 = and i32 %423, 256
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %441, !prof !17

426:                                              ; preds = %422
  %427 = load volatile i32, ptr %11, align 4
  %428 = and i32 %427, 1
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %441

430:                                              ; preds = %426, %420
  %431 = phi i32 [ %418, %420 ], [ 0, %426 ]
  %432 = call fastcc i32 @set_fd_set(i32 noundef %17, ptr noundef %1, ptr noundef %32)
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %430
  %435 = call fastcc i32 @set_fd_set(i32 noundef %17, ptr noundef %2, ptr noundef %34)
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %434
  %438 = call fastcc i32 @set_fd_set(i32 noundef %17, ptr noundef %3, ptr noundef %36)
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %437, %434, %430
  br label %441

441:                                              ; preds = %440, %437, %426, %422, %417, %414, %89, %70, %51
  %442 = phi i32 [ %418, %417 ], [ -14, %440 ], [ %431, %437 ], [ -514, %426 ], [ %415, %414 ], [ -14, %51 ], [ -14, %70 ], [ -14, %89 ], [ -514, %422 ]
  %443 = icmp eq ptr %27, %8
  br i1 %443, label %445, label %444

444:                                              ; preds = %441
  call void @kvfree(ptr noundef %27) #10
  br label %445

445:                                              ; preds = %444, %441, %22, %5
  %446 = phi i32 [ -22, %5 ], [ %442, %444 ], [ %442, %441 ], [ -12, %22 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #10
  ret i32 %446
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_fd_set(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = add i32 %0, 31
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 536870908
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #13, !srcloc !18
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %14 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %8) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  br label %15

15:                                               ; preds = %5, %3
  %16 = phi i32 [ %14, %5 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_select(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %1 to ptr
  %7 = inttoptr i32 %2 to ptr
  %8 = inttoptr i32 %3 to ptr
  %9 = inttoptr i32 %4 to ptr
  %10 = tail call fastcc i32 @kern_select(i32 noundef %0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pselect6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  %9 = inttoptr i32 %3 to ptr
  %10 = inttoptr i32 %4 to ptr
  %11 = inttoptr i32 %5 to ptr
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %6
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %11, i32 8, i32 -1090519040) #12, !srcloc !27
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #10
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #13, !srcloc !18
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %11, i32 -1090519041) #10, !srcloc !28
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41, !prof !17

26:                                               ; preds = %17
  %27 = extractvalue { i32, i32 } %23, 1
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.sigset_argpack, ptr %11, i32 0, i32 1
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #13, !srcloc !18
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %33 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %29, i32 -1090519041) #10, !srcloc !29
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = extractvalue { i32, i32 } %33, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %41, !prof !17

37:                                               ; preds = %26, %6
  %38 = phi i32 [ %35, %26 ], [ 0, %6 ]
  %39 = phi ptr [ %28, %26 ], [ null, %6 ]
  %40 = tail call fastcc i32 @do_pselect(i32 noundef %0, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %39, i32 noundef %38, i32 noundef 2) #10
  br label %41

41:                                               ; preds = %37, %26, %17, %13
  %42 = phi i32 [ %40, %37 ], [ -14, %13 ], [ -14, %26 ], [ -14, %17 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pselect6_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  %9 = inttoptr i32 %3 to ptr
  %10 = inttoptr i32 %4 to ptr
  %11 = inttoptr i32 %5 to ptr
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %6
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %11, i32 8, i32 -1090519040) #12, !srcloc !27
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #10
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #13, !srcloc !18
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %11, i32 -1090519041) #10, !srcloc !28
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41, !prof !17

26:                                               ; preds = %17
  %27 = extractvalue { i32, i32 } %23, 1
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.sigset_argpack, ptr %11, i32 0, i32 1
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #13, !srcloc !18
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %33 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %29, i32 -1090519041) #10, !srcloc !29
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = extractvalue { i32, i32 } %33, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %41, !prof !17

37:                                               ; preds = %26, %6
  %38 = phi i32 [ %35, %26 ], [ 0, %6 ]
  %39 = phi ptr [ %28, %26 ], [ null, %6 ]
  %40 = tail call fastcc i32 @do_pselect(i32 noundef %0, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %39, i32 noundef %38, i32 noundef 3) #10
  br label %41

41:                                               ; preds = %37, %26, %17, %13
  %42 = phi i32 [ %40, %37 ], [ -14, %13 ], [ -14, %26 ], [ -14, %17 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_select(i32 noundef %0) #0 {
  %2 = alloca %struct.sel_arg_struct, align 4
  %3 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #10, !annotation !8
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 20, i32 -1090519040) #12, !srcloc !16
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !17

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #13, !srcloc !18
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 20) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !17

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %13, %7 ], [ 20, %1 ]
  %17 = sub i32 20, %16
  %18 = getelementptr i8, ptr %2, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #10
  br label %30

19:                                               ; preds = %7
  %20 = load i32, ptr %2, align 4
  %21 = getelementptr inbounds %struct.sel_arg_struct, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sel_arg_struct, ptr %2, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sel_arg_struct, ptr %2, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sel_arg_struct, ptr %2, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = call fastcc i32 @kern_select(i32 noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef %28) #10
  br label %30

30:                                               ; preds = %19, %15
  %31 = phi i32 [ %29, %19 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_poll(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !annotation !8
  %7 = icmp sgt i32 %2, -1
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = udiv i32 %2, 1000
  %10 = mul i32 %9, 1000
  %11 = sub i32 %2, %10
  %12 = icmp ugt i32 %2, 999
  %13 = icmp ne i32 %11, 0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = mul nuw nsw i32 %11, 1000000
  %17 = zext i32 %9 to i64
  %18 = zext i32 %16 to i64
  call void @ktime_get_ts64(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %19 = load i64, ptr %5, align 8
  %20 = insertvalue [2 x i64] undef, i64 %19, 0
  %21 = getelementptr inbounds [2 x i64], ptr %5, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = insertvalue [2 x i64] %20, i64 %22, 1
  %24 = insertvalue [2 x i64] poison, i64 %17, 0
  %25 = insertvalue [2 x i64] %24, i64 %18, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %4, [2 x i64] %23, [2 x i64] %25) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %26

26:                                               ; preds = %15, %8, %3
  %27 = phi ptr [ null, %3 ], [ %5, %15 ], [ %5, %8 ]
  %28 = call fastcc i32 @do_sys_poll(ptr noundef %6, i32 noundef %1, ptr noundef %27) #10
  %29 = icmp eq i32 %28, -514
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #10
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 51, i32 2
  store ptr %6, ptr %32, align 8
  %33 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 51, i32 2, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  br i1 %7, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, ptr %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 51, i32 2, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 51, i32 2, i32 0, i32 4
  store i32 %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i32 [ 1, %34 ], [ 0, %30 ]
  %43 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 51, i32 2, i32 0, i32 2
  store i32 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 51, i32 1
  store ptr @do_restart_poll, ptr %44, align 4
  br label %45

45:                                               ; preds = %41, %26
  %46 = phi i32 [ -516, %41 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ppoll(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = inttoptr i32 %0 to ptr
  %10 = inttoptr i32 %2 to ptr
  %11 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %5
  %14 = call i32 @get_timespec64(ptr noundef nonnull %7, ptr noundef nonnull %10) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load i64, ptr %7, align 8
  %18 = getelementptr inbounds %struct.timespec64, ptr %7, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  %21 = icmp sgt i64 %17, -1
  %22 = icmp ult i32 %19, 1000000000
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %16
  %25 = icmp ne i64 %17, 0
  %26 = icmp ne i32 %19, 0
  %27 = or i1 %25, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  store i32 0, ptr %29, align 8
  store i64 0, ptr %8, align 8
  br label %38

30:                                               ; preds = %24
  call void @ktime_get_ts64(ptr noundef nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %31 = load i64, ptr %8, align 8
  %32 = insertvalue [2 x i64] undef, i64 %31, 0
  %33 = getelementptr inbounds [2 x i64], ptr %8, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = insertvalue [2 x i64] %32, i64 %34, 1
  %36 = insertvalue [2 x i64] poison, i64 %17, 0
  %37 = insertvalue [2 x i64] %36, i64 %20, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %6, [2 x i64] %35, [2 x i64] %37) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %38

38:                                               ; preds = %30, %28, %5
  %39 = phi ptr [ null, %5 ], [ %8, %30 ], [ %8, %28 ]
  %40 = call i32 @set_user_sigmask(ptr noundef %11, i32 noundef %4) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = call fastcc i32 @do_sys_poll(ptr noundef %9, i32 noundef %1, ptr noundef %39) #10
  %44 = call fastcc i32 @poll_select_finish(ptr noundef nonnull %8, ptr noundef %10, i32 noundef 2, i32 noundef %43) #10
  br label %45

45:                                               ; preds = %42, %38, %16, %13
  %46 = phi i32 [ %44, %42 ], [ -14, %13 ], [ %40, %38 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ppoll_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = inttoptr i32 %0 to ptr
  %10 = inttoptr i32 %2 to ptr
  %11 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %5
  %14 = call i32 @get_old_timespec32(ptr noundef nonnull %7, ptr noundef nonnull %10) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load i64, ptr %7, align 8
  %18 = getelementptr inbounds %struct.timespec64, ptr %7, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  %21 = icmp sgt i64 %17, -1
  %22 = icmp ult i32 %19, 1000000000
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %16
  %25 = icmp ne i64 %17, 0
  %26 = icmp ne i32 %19, 0
  %27 = or i1 %25, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  store i32 0, ptr %29, align 8
  store i64 0, ptr %8, align 8
  br label %38

30:                                               ; preds = %24
  call void @ktime_get_ts64(ptr noundef nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %31 = load i64, ptr %8, align 8
  %32 = insertvalue [2 x i64] undef, i64 %31, 0
  %33 = getelementptr inbounds [2 x i64], ptr %8, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = insertvalue [2 x i64] %32, i64 %34, 1
  %36 = insertvalue [2 x i64] poison, i64 %17, 0
  %37 = insertvalue [2 x i64] %36, i64 %20, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %6, [2 x i64] %35, [2 x i64] %37) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %38

38:                                               ; preds = %30, %28, %5
  %39 = phi ptr [ null, %5 ], [ %8, %30 ], [ %8, %28 ]
  %40 = call i32 @set_user_sigmask(ptr noundef %11, i32 noundef %4) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = call fastcc i32 @do_sys_poll(ptr noundef %9, i32 noundef %1, ptr noundef %39) #10
  %44 = call fastcc i32 @poll_select_finish(ptr noundef nonnull %8, ptr noundef %10, i32 noundef 3, i32 noundef %43) #10
  br label %45

45:                                               ; preds = %42, %38, %16, %13
  %46 = phi i32 [ %44, %42 ], [ -14, %13 ], [ %40, %38 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %46
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pollwake(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %3 to i32
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %7, %4
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.poll_wqueues, ptr %15, i32 0, i32 2
  store i32 0, ptr %5, align 4
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @default_wake_function, ptr %19, align 4
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr null, ptr %21, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !30
  %22 = getelementptr inbounds %struct.poll_wqueues, ptr %15, i32 0, i32 3
  store i32 1, ptr %22, align 4
  %23 = call i32 @default_wake_function(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  br label %24

24:                                               ; preds = %13, %7
  %25 = phi i32 [ %23, %13 ], [ 0, %7 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kern_select(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.__kernel_old_timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !8
  %9 = icmp eq ptr %4, null
  br i1 %9, label %54, label %10

10:                                               ; preds = %5
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 8, i32 -1090519040) #12, !srcloc !16
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22, !prof !17

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #10
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #13, !srcloc !18
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef nonnull %4, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !17

22:                                               ; preds = %14, %10
  %23 = phi i32 [ %20, %14 ], [ 8, %10 ]
  %24 = sub i32 8, %23
  %25 = getelementptr i8, ptr %8, i32 %24
  call void @llvm.memset.p0.i32(ptr align 1 %25, i8 0, i32 %23, i1 false) #10
  br label %58

26:                                               ; preds = %14
  %27 = load i32, ptr %8, align 8
  %28 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %8, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = freeze i32 %29
  %31 = sdiv i32 %30, 1000000
  %32 = add i32 %31, %27
  %33 = sext i32 %32 to i64
  %34 = mul i32 %31, 1000000
  %35 = sub i32 %30, %34
  %36 = mul nsw i32 %35, 1000
  %37 = zext i32 %36 to i64
  %38 = icmp sgt i32 %32, -1
  %39 = icmp ult i32 %36, 1000000000
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %26
  %42 = or i32 %32, %35
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.timespec64, ptr %7, i32 0, i32 1
  store i32 0, ptr %45, align 8
  store i64 0, ptr %7, align 8
  br label %54

46:                                               ; preds = %41
  call void @ktime_get_ts64(ptr noundef nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %47 = load i64, ptr %7, align 8
  %48 = insertvalue [2 x i64] undef, i64 %47, 0
  %49 = getelementptr inbounds [2 x i64], ptr %7, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = insertvalue [2 x i64] %48, i64 %50, 1
  %52 = insertvalue [2 x i64] poison, i64 %33, 0
  %53 = insertvalue [2 x i64] %52, i64 %37, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %6, [2 x i64] %51, [2 x i64] %53) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %54

54:                                               ; preds = %46, %44, %5
  %55 = phi ptr [ null, %5 ], [ %7, %46 ], [ %7, %44 ]
  %56 = call i32 @core_sys_select(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %55)
  %57 = call fastcc i32 @poll_select_finish(ptr noundef nonnull %7, ptr noundef %4, i32 noundef 0, i32 noundef %56)
  br label %58

58:                                               ; preds = %54, %26, %22
  %59 = phi i32 [ %57, %54 ], [ -22, %26 ], [ -14, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @poll_select_finish(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.__kernel_old_timeval, align 8
  %8 = alloca %struct.old_timeval32, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %9 = icmp eq i32 %3, -514
  %10 = tail call ptr @llvm.thread.pointer() #10
  br i1 %9, label %11, label %20

11:                                               ; preds = %4
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25, !prof !17

15:                                               ; preds = %11
  %16 = load volatile i32, ptr %10, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25, !prof !24

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 519, i32 noundef 9, ptr noundef null) #10
  br label %25

20:                                               ; preds = %4
  %21 = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %10) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 97
  tail call void @__set_current_blocked(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %23, %20, %19, %15, %11
  %26 = icmp eq ptr %1, null
  br i1 %26, label %96, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 46
  %29 = load i32, ptr %28, align 16
  %30 = and i32 %29, 67108864
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %94

32:                                               ; preds = %27
  %33 = load i64, ptr %0, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %96, label %39

39:                                               ; preds = %35, %32
  call void @ktime_get_ts64(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %40 = load i64, ptr %0, align 8
  %41 = getelementptr inbounds [2 x i64], ptr %0, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = load i64, ptr %5, align 8
  %44 = getelementptr inbounds [2 x i64], ptr %5, i32 0, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %42 to i32
  %47 = trunc i64 %45 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #10, !alias.scope !31, !annotation !8
  %48 = sub i64 %40, %43
  %49 = sub i32 %46, %47
  %50 = sext i32 %49 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %6, i64 noundef %48, i64 noundef %50) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %51 = load i64, ptr %5, align 8
  %52 = icmp slt i64 %51, 0
  %53 = trunc i64 %51 to i32
  br i1 %52, label %54, label %55

54:                                               ; preds = %39
  store i32 0, ptr %44, align 8
  store i64 0, ptr %5, align 8
  br label %55

55:                                               ; preds = %54, %39
  %56 = phi i32 [ 0, %54 ], [ %53, %39 ]
  switch i32 %2, label %93 [
    i32 0, label %57
    i32 1, label %72
    i32 2, label %87
    i32 3, label %90
  ]

57:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i32 %56, ptr %7, align 8
  %58 = load i32, ptr %44, align 8
  %59 = sdiv i32 %58, 1000
  %60 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %7, i32 0, i32 1
  store i32 %59, ptr %60, align 4
  %61 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 8, i32 -1090519040) #12, !srcloc !34
  %62 = extractvalue { i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %94

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #13, !srcloc !18
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %70 = call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %7, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %71 = icmp eq i32 %70, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br i1 %71, label %96, label %94

72:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i32 %56, ptr %8, align 8
  %73 = load i32, ptr %44, align 8
  %74 = sdiv i32 %73, 1000
  %75 = getelementptr inbounds %struct.old_timeval32, ptr %8, i32 0, i32 1
  store i32 %74, ptr %75, align 4
  %76 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 8, i32 -1090519040) #12, !srcloc !34
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %94

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #13, !srcloc !18
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %85 = call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %86 = icmp eq i32 %85, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br i1 %86, label %96, label %94

87:                                               ; preds = %55
  %88 = call i32 @put_timespec64(ptr noundef nonnull %5, ptr noundef nonnull %1) #10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %94

90:                                               ; preds = %55
  %91 = call i32 @put_old_timespec32(ptr noundef nonnull %5, ptr noundef nonnull %1) #10
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %94

93:                                               ; preds = %55
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/select.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 354, 0\0A.popsection", ""() #10, !srcloc !35
  unreachable

94:                                               ; preds = %90, %87, %80, %79, %65, %64, %27
  %95 = select i1 %9, i32 -4, i32 %3
  br label %96

96:                                               ; preds = %94, %90, %87, %80, %65, %35, %25
  %97 = phi i32 [ %95, %94 ], [ %3, %80 ], [ %3, %65 ], [ %3, %25 ], [ %3, %35 ], [ %3, %87 ], [ %3, %90 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_pselect(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca %struct.timespec64, align 8
  %11 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i32 16, i1 false), !annotation !8
  %12 = icmp eq ptr %4, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %8
  switch i32 %7, label %20 [
    i32 2, label %14
    i32 3, label %17
  ]

14:                                               ; preds = %13
  %15 = call i32 @get_timespec64(ptr noundef nonnull %10, ptr noundef nonnull %4) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %50

17:                                               ; preds = %13
  %18 = call i32 @get_old_timespec32(ptr noundef nonnull %10, ptr noundef nonnull %4) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %50

20:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/select.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #10, !srcloc !36
  unreachable

21:                                               ; preds = %17, %14
  %22 = load i64, ptr %10, align 8
  %23 = getelementptr inbounds %struct.timespec64, ptr %10, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = zext i32 %24 to i64
  %26 = icmp sgt i64 %22, -1
  %27 = icmp ult i32 %24, 1000000000
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %21
  %30 = icmp ne i64 %22, 0
  %31 = icmp ne i32 %24, 0
  %32 = or i1 %30, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.timespec64, ptr %11, i32 0, i32 1
  store i32 0, ptr %34, align 8
  store i64 0, ptr %11, align 8
  br label %43

35:                                               ; preds = %29
  call void @ktime_get_ts64(ptr noundef nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  %36 = load i64, ptr %11, align 8
  %37 = insertvalue [2 x i64] undef, i64 %36, 0
  %38 = getelementptr inbounds [2 x i64], ptr %11, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = insertvalue [2 x i64] %37, i64 %39, 1
  %41 = insertvalue [2 x i64] poison, i64 %22, 0
  %42 = insertvalue [2 x i64] %41, i64 %25, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %9, [2 x i64] %40, [2 x i64] %42) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  br label %43

43:                                               ; preds = %35, %33, %8
  %44 = phi ptr [ null, %8 ], [ %11, %35 ], [ %11, %33 ]
  %45 = call i32 @set_user_sigmask(ptr noundef %5, i32 noundef %6) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call i32 @core_sys_select(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %44)
  %49 = call fastcc i32 @poll_select_finish(ptr noundef nonnull %11, ptr noundef %4, i32 noundef %7, i32 noundef %48)
  br label %50

50:                                               ; preds = %47, %43, %21, %17, %14
  %51 = phi i32 [ %49, %47 ], [ -14, %14 ], [ -14, %17 ], [ %45, %43 ], [ -22, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_sys_poll(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.poll_wqueues, align 4
  %6 = alloca [64 x i32], align 4
  %7 = getelementptr inbounds %struct.poll_list, ptr %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.poll_list, ptr %6, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 540, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(540) %5, i8 0, i32 540, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %6, i8 0, i32 256, i1 false), !annotation !8
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 93
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 50, i32 7
  %13 = load volatile i32, ptr %12, align 8
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %266, label %15

15:                                               ; preds = %3
  %16 = tail call i32 @llvm.umin.i32(i32 %1, i32 31)
  %17 = getelementptr %struct.pollfd, ptr %0, i32 %1
  %18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  br label %19

19:                                               ; preds = %47, %15
  %20 = phi i32 [ %1, %15 ], [ %45, %47 ]
  %21 = phi ptr [ %6, %15 ], [ %51, %47 ]
  %22 = phi i32 [ %16, %15 ], [ %48, %47 ]
  store ptr null, ptr %21, align 4
  %23 = getelementptr inbounds %struct.poll_list, ptr %21, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.poll_list, ptr %21, i32 0, i32 2
  %27 = sub i32 0, %20
  %28 = getelementptr %struct.pollfd, ptr %17, i32 %27
  %29 = shl nuw nsw i32 %22, 3
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 %29, i32 -1090519040) #12, !srcloc !16
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39, !prof !17

33:                                               ; preds = %25
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #13, !srcloc !18
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %37 = call i32 @arm_copy_from_user(ptr noundef %26, ptr noundef %28, i32 noundef %29) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !17

39:                                               ; preds = %33, %25
  %40 = phi i32 [ %37, %33 ], [ %29, %25 ]
  %41 = sub i32 %29, %40
  %42 = getelementptr i8, ptr %26, i32 %41
  call void @llvm.memset.p0.i32(ptr align 1 %42, i8 0, i32 %40, i1 false) #10
  br label %258

43:                                               ; preds = %33
  %44 = load i32, ptr %23, align 4
  %45 = sub i32 %20, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = call i32 @llvm.umin.i32(i32 %45, i32 511)
  %49 = shl nuw nsw i32 %48, 3
  %50 = add nuw nsw i32 %49, 8
  %51 = call noalias align 64 ptr @__kmalloc(i32 noundef %50, i32 noundef 3264) #11
  store ptr %51, ptr %21, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %258, label %19

53:                                               ; preds = %43, %19
  store ptr @__pollwait, ptr %5, align 4
  %54 = getelementptr inbounds %struct.poll_table_struct, ptr %5, i32 0, i32 1
  store i32 -1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.poll_wqueues, ptr %5, i32 0, i32 2
  store ptr %9, ptr %55, align 4
  %56 = getelementptr inbounds %struct.poll_wqueues, ptr %5, i32 0, i32 3
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.poll_wqueues, ptr %5, i32 0, i32 4
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.poll_wqueues, ptr %5, i32 0, i32 1
  store ptr null, ptr %58, align 4
  %59 = getelementptr inbounds %struct.poll_wqueues, ptr %5, i32 0, i32 5
  store i32 0, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !8
  %60 = load i32, ptr @sysctl_net_busy_poll, align 4
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 0, i32 32768
  %63 = icmp eq ptr %2, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %53
  %65 = load i64, ptr %2, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store ptr null, ptr %5, align 4
  br label %75

72:                                               ; preds = %67, %64
  %73 = call i64 @select_estimate_accuracy(ptr noundef nonnull %2) #10
  %74 = trunc i64 %73 to i32
  br label %75

75:                                               ; preds = %72, %71, %53
  %76 = phi i32 [ 0, %72 ], [ 0, %53 ], [ 1, %71 ]
  %77 = phi i32 [ %74, %72 ], [ 0, %53 ], [ 0, %71 ]
  %78 = getelementptr inbounds [2 x i64], ptr %2, i32 0, i32 1
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  br label %81

81:                                               ; preds = %218, %75
  %82 = phi ptr [ %213, %218 ], [ null, %75 ]
  %83 = phi i32 [ %221, %218 ], [ %76, %75 ]
  %84 = phi i32 [ 0, %218 ], [ %62, %75 ]
  %85 = phi i32 [ %89, %218 ], [ 0, %75 ]
  br label %86

86:                                               ; preds = %185, %81
  %87 = phi i32 [ %83, %81 ], [ 0, %185 ]
  %88 = phi i32 [ %84, %81 ], [ %158, %185 ]
  %89 = phi i32 [ %85, %81 ], [ %188, %185 ]
  %90 = icmp eq i32 %89, 0
  br label %91

91:                                               ; preds = %192, %86
  %92 = phi i32 [ 0, %192 ], [ %87, %86 ]
  %93 = phi i32 [ %158, %192 ], [ %88, %86 ]
  br label %94

94:                                               ; preds = %155, %91
  %95 = phi ptr [ %159, %155 ], [ %6, %91 ]
  %96 = phi i32 [ %158, %155 ], [ %93, %91 ]
  %97 = phi i32 [ %157, %155 ], [ 0, %91 ]
  %98 = phi i8 [ %156, %155 ], [ 0, %91 ]
  %99 = phi ptr [ %161, %155 ], [ %8, %91 ]
  %100 = phi ptr [ %160, %155 ], [ %7, %91 ]
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr %struct.pollfd, ptr %99, i32 %101
  %103 = icmp eq ptr %99, %102
  br i1 %103, label %155, label %104

104:                                              ; preds = %149, %94
  %105 = phi ptr [ %153, %149 ], [ %99, %94 ]
  %106 = phi i32 [ %152, %149 ], [ %96, %94 ]
  %107 = phi i32 [ %151, %149 ], [ %97, %94 ]
  %108 = phi i8 [ %150, %149 ], [ %98, %94 ]
  %109 = load i32, ptr %105, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.pollfd, ptr %105, i32 0, i32 2
  store i16 0, ptr %112, align 2
  br label %149

113:                                              ; preds = %104
  %114 = call i32 @__fdget(i32 noundef %109) #10, !noalias !37
  %115 = and i32 %114, -4
  %116 = inttoptr i32 %115 to ptr
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.pollfd, ptr %105, i32 0, i32 2
  store i16 32, ptr %119, align 2
  br label %147

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.pollfd, ptr %105, i32 0, i32 1
  %122 = load i16, ptr %121, align 4
  %123 = and i16 %122, 10215
  %124 = or i16 %123, 24
  %125 = zext i16 %124 to i32
  %126 = or i32 %106, %125
  store i32 %126, ptr %54, align 4
  %127 = getelementptr inbounds %struct.file, ptr %116, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.file_operations, ptr %128, i32 0, i32 9
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132, !prof !24

132:                                              ; preds = %120
  %133 = call i32 %130(ptr noundef nonnull %116, ptr noundef nonnull %5) #10
  br label %134

134:                                              ; preds = %132, %120
  %135 = phi i32 [ %133, %132 ], [ 325, %120 ]
  %136 = and i32 %135, %106
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i8 %108, i8 1
  %139 = and i32 %135, %125
  %140 = and i32 %114, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %134
  call void @fput(ptr noundef nonnull %116) #10
  br label %143

143:                                              ; preds = %142, %134
  %144 = trunc i32 %139 to i16
  %145 = getelementptr inbounds %struct.pollfd, ptr %105, i32 0, i32 2
  store i16 %144, ptr %145, align 2
  %146 = icmp eq i32 %139, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143, %118
  %148 = add i32 %107, 1
  store ptr null, ptr %5, align 4
  br label %149

149:                                              ; preds = %147, %143, %111
  %150 = phi i8 [ %138, %143 ], [ 0, %147 ], [ %108, %111 ]
  %151 = phi i32 [ %107, %143 ], [ %148, %147 ], [ %107, %111 ]
  %152 = phi i32 [ %106, %143 ], [ 0, %147 ], [ %106, %111 ]
  %153 = getelementptr %struct.pollfd, ptr %105, i32 1
  %154 = icmp eq ptr %153, %102
  br i1 %154, label %155, label %104

155:                                              ; preds = %149, %94
  %156 = phi i8 [ %98, %94 ], [ %150, %149 ]
  %157 = phi i32 [ %97, %94 ], [ %151, %149 ]
  %158 = phi i32 [ %96, %94 ], [ %152, %149 ]
  %159 = load ptr, ptr %95, align 4
  %160 = getelementptr inbounds %struct.poll_list, ptr %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.poll_list, ptr %159, i32 0, i32 2
  %162 = icmp eq ptr %159, null
  br i1 %162, label %163, label %94

163:                                              ; preds = %155
  store ptr null, ptr %5, align 4
  %164 = icmp eq i32 %157, 0
  br i1 %164, label %165, label %222

165:                                              ; preds = %163
  %166 = load i32, ptr %57, align 4
  %167 = load volatile i32, ptr %9, align 4
  %168 = and i32 %167, 256
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %222, !prof !17

170:                                              ; preds = %165
  %171 = load volatile i32, ptr %9, align 4
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %222

174:                                              ; preds = %170
  %175 = icmp ne i32 %166, 0
  %176 = icmp ne i32 %92, 0
  %177 = select i1 %175, i1 true, i1 %176
  br i1 %177, label %222, label %178

178:                                              ; preds = %174
  %179 = icmp eq i8 %156, 0
  br i1 %179, label %199, label %180

180:                                              ; preds = %178
  %181 = load volatile i32, ptr %9, align 4
  %182 = and i32 %181, 2
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %180
  br i1 %90, label %185, label %189

185:                                              ; preds = %184
  %186 = call i64 @sched_clock() #10
  %187 = lshr i64 %186, 10
  %188 = trunc i64 %187 to i32
  br label %86

189:                                              ; preds = %184
  %190 = load volatile i32, ptr @sysctl_net_busy_poll, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %189
  %193 = add i32 %190, %89
  %194 = call i64 @sched_clock() #10
  %195 = lshr i64 %194, 10
  %196 = trunc i64 %195 to i32
  %197 = sub i32 %193, %196
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %91

199:                                              ; preds = %192, %189, %180, %178
  %200 = icmp ne ptr %82, null
  %201 = select i1 %63, i1 true, i1 %200
  br i1 %201, label %212, label %202

202:                                              ; preds = %199
  %203 = load i64, ptr %2, align 8
  %204 = icmp sgt i64 %203, 9223372035
  br i1 %204, label %210, label %205, !prof !24

205:                                              ; preds = %202
  %206 = load i64, ptr %78, align 8
  %207 = mul i64 %203, 1000000000
  %208 = and i64 %206, 4294967295
  %209 = add i64 %208, %207
  br label %210

210:                                              ; preds = %205, %202
  %211 = phi i64 [ %209, %205 ], [ 9223372036854775807, %202 ]
  store i64 %211, ptr %4, align 8
  br label %212

212:                                              ; preds = %210, %199
  %213 = phi ptr [ %82, %199 ], [ %4, %210 ]
  store volatile i32 1, ptr %80, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  %214 = load i32, ptr %56, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = call i32 @schedule_hrtimeout_range(ptr noundef %213, i64 noundef %79, i32 noundef 0) #10
  br label %218

218:                                              ; preds = %216, %212
  %219 = phi i32 [ -4, %212 ], [ %217, %216 ]
  store volatile i32 0, ptr %80, align 8
  store volatile i32 0, ptr %56, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  %220 = icmp eq i32 %219, 0
  %221 = zext i1 %220 to i32
  br label %81

222:                                              ; preds = %174, %170, %165, %163
  %223 = phi i32 [ %166, %174 ], [ -514, %170 ], [ %157, %163 ], [ -514, %165 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @poll_freewait(ptr noundef nonnull %5)
  %224 = shl i32 %1, 3
  %225 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %224, i32 -1090519040) #12, !srcloc !40
  %226 = extractvalue { i32, i32 } %225, 0
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %258

228:                                              ; preds = %252, %222
  %229 = phi ptr [ %253, %252 ], [ %0, %222 ]
  %230 = phi ptr [ %254, %252 ], [ %6, %222 ]
  %231 = phi ptr [ %256, %252 ], [ %8, %222 ]
  %232 = phi ptr [ %255, %252 ], [ %7, %222 ]
  %233 = load i32, ptr %232, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %252, label %235

235:                                              ; preds = %247, %228
  %236 = phi ptr [ %249, %247 ], [ %229, %228 ]
  %237 = phi ptr [ %248, %247 ], [ %231, %228 ]
  %238 = phi i32 [ %250, %247 ], [ %233, %228 ]
  %239 = getelementptr inbounds %struct.pollfd, ptr %236, i32 0, i32 2
  %240 = getelementptr inbounds %struct.pollfd, ptr %237, i32 0, i32 2
  %241 = load i16, ptr %240, align 2
  %242 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #13, !srcloc !18
  %243 = and i32 %242, -13
  %244 = or i32 %243, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %244) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %245 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %239, i16 %241, i32 -1090519041) #10, !srcloc !41
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %242) #10, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !20
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %258, !prof !17

247:                                              ; preds = %235
  %248 = getelementptr %struct.pollfd, ptr %237, i32 1
  %249 = getelementptr %struct.pollfd, ptr %236, i32 1
  %250 = add i32 %238, -1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %235

252:                                              ; preds = %247, %228
  %253 = phi ptr [ %229, %228 ], [ %249, %247 ]
  %254 = load ptr, ptr %230, align 4
  %255 = getelementptr inbounds %struct.poll_list, ptr %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.poll_list, ptr %254, i32 0, i32 2
  %257 = icmp eq ptr %254, null
  br i1 %257, label %258, label %228

258:                                              ; preds = %252, %235, %222, %47, %39
  %259 = phi i32 [ -14, %222 ], [ -14, %39 ], [ -14, %235 ], [ %223, %252 ], [ -12, %47 ]
  %260 = load ptr, ptr %6, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %266, label %262

262:                                              ; preds = %262, %258
  %263 = phi ptr [ %264, %262 ], [ %260, %258 ]
  %264 = load ptr, ptr %263, align 4
  call void @kfree(ptr noundef nonnull %263) #10
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %262

266:                                              ; preds = %262, %258, %3
  %267 = phi i32 [ -22, %3 ], [ %259, %258 ], [ %259, %262 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %5) #10
  ret i32 %267
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_restart_poll(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, ptr %2, align 8
  %14 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  store i32 %15, ptr %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %2, %10 ], [ null, %1 ]
  %19 = call fastcc i32 @do_sys_poll(ptr noundef %4, i32 noundef %6, ptr noundef %18)
  %20 = icmp eq i32 %19, -514
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 1
  store ptr @do_restart_poll, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ -516, %21 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }

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
!9 = !{!10}
!10 = distinct !{!10, !11, !"timespec64_sub: argument 0"}
!11 = distinct !{!11, !"timespec64_sub"}
!12 = !{i64 467108, i64 2147957079, i64 2147957105, i64 2147957152, i64 2147957174, i64 2147957202, i64 2147957222}
!13 = !{i64 2147968494, i64 2147968520, i64 2147968549, i64 2147968583, i64 2147968614, i64 2147968637}
!14 = !{i64 2149127885}
!15 = !{i64 2149128102}
!16 = !{i64 2151093277, i64 2151093302}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 3589389}
!19 = !{i64 3589586}
!20 = !{i64 2151074865}
!21 = !{!22}
!22 = distinct !{!22, !23, !"fdget: argument 0"}
!23 = distinct !{!23, !"fdget"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2156350323}
!26 = !{i64 2156355247}
!27 = !{i64 2156391944, i64 2156391969}
!28 = !{i64 2156420288, i64 2156420598, i64 2156420912, i64 2156421226}
!29 = !{i64 2156451736, i64 2156452046, i64 2156452360, i64 2156452674}
!30 = !{i64 2156345124}
!31 = !{!32}
!32 = distinct !{!32, !33, !"timespec64_sub: argument 0"}
!33 = distinct !{!33, !"timespec64_sub"}
!34 = !{i64 2151093855, i64 2151093880}
!35 = !{i64 2156355472, i64 2156355948, i64 2156355509, i64 2156355565, i64 2156355599, i64 2156355623, i64 2156355664, i64 2156355685, i64 2156355713, i64 2156355747}
!36 = !{i64 2156390861, i64 2156391337, i64 2156390898, i64 2156390954, i64 2156390988, i64 2156391012, i64 2156391053, i64 2156391074, i64 2156391102, i64 2156391136}
!37 = !{!38}
!38 = distinct !{!38, !39, !"fdget: argument 0"}
!39 = distinct !{!39, !"fdget"}
!40 = !{i64 2156508571, i64 2156508596}
!41 = !{i64 2156525790, i64 2156526100, i64 2156526414, i64 2156526728}
