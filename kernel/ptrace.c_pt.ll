; ModuleID = '/llk/IR/kernel/ptrace.c_pt.bc'
source_filename = "../kernel/ptrace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_task_user_regset_view:\09\09\09\09\09"
module asm "\09.asciz \09\22task_user_regset_view\22\09\09\09\09\09"
module asm "__kstrtabns_task_user_regset_view:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.59 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.59 = type { %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.ptrace_rseq_configuration = type { i64, i32, i32, i32, i32 }
%struct.ptrace_syscall_info = type { i8, [3 x i8], i32, i64, i64, %union.anon.100 }
%union.anon.100 = type { %struct.anon.103 }
%struct.anon.103 = type { i64, [6 x i64], i32 }
%struct.ptrace_peeksiginfo_args = type { i64, i32, i32 }
%struct.kernel_siginfo = type { %struct.anon.74 }
%struct.anon.74 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.78 }
%struct.anon.78 = type { i32, i32, i32, i32, i32 }
%struct.iovec = type { ptr, i32 }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, ptr }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }

@__kstrtab_task_user_regset_view = external dso_local constant [0 x i8], align 1
@__kstrtabns_task_user_regset_view = external dso_local constant [0 x i8], align 1
@__ksymtab_task_user_regset_view = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @task_user_regset_view to i32), ptr @__kstrtab_task_user_regset_view, ptr @__kstrtabns_task_user_regset_view }, section "___ksymtab_gpl+task_user_regset_view", align 4
@.str = private unnamed_addr constant [16 x i8] c"kernel/ptrace.c\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"denying ptrace access check without PTRACE_MODE_*CREDS\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_task_user_regset_view], section "llvm.metadata"

@sys_ptrace = dso_local alias i32 (i32, i32, i32, i32), ptr @__se_sys_ptrace

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptrace_access_vm(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @get_task_mm(ptr noundef %0) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #7
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 43
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 46
  %24 = load ptr, ptr %23, align 4
  %25 = tail call zeroext i1 @ptracer_capable(ptr noundef %0, ptr noundef %24) #7
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %17
  %27 = tail call i32 @__access_remote_vm(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #7
  br label %28

28:                                               ; preds = %26, %22, %12, %8
  %29 = phi i32 [ %27, %26 ], [ 0, %22 ], [ 0, %12 ], [ 0, %8 ]
  tail call void @mmput(ptr noundef nonnull %6) #7
  br label %30

30:                                               ; preds = %28, %5
  %31 = phi i32 [ 0, %5 ], [ %29, %28 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptracer_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__access_remote_vm(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ptrace_link(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 61
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ptrace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 60
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %4, ptr %11, align 4
  store ptr %10, ptr %4, align 4
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 61, i32 1
  store ptr %9, ptr %12, align 4
  store volatile ptr %4, ptr %9, align 4
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  store ptr %1, ptr %13, align 8
  %14 = icmp eq ptr %2, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 24
  store i32 0, ptr %16, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #7, !srcloc !10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #7, !srcloc !11
  br label %18

18:                                               ; preds = %15, %8
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 81
  store ptr %2, ptr %19, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ptrace_unlink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !12

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ptrace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

6:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 55
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  store ptr %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 61
  %11 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 61, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %11, align 4
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 81
  %16 = load ptr, ptr %15, align 16
  store ptr null, ptr %15, align 16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #7, !srcloc !10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #7, !srcloc !15
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @__put_cred(ptr noundef nonnull %16) #7
  br label %23

23:                                               ; preds = %22, %18, %6
  %24 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %25 = load ptr, ptr %24, align 4
  tail call void @_raw_spin_lock(ptr noundef %25) #7
  store i32 0, ptr %2, align 8
  tail call void @task_clear_jobctl_pending(ptr noundef %0, i32 noundef 1572864) #7
  tail call void @task_clear_jobctl_trapping(ptr noundef %0) #7
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %32 = load ptr, ptr %31, align 16
  %33 = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 12
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37, %30
  %42 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 131072
  store i32 %44, ptr %42, align 4
  %45 = and i32 %43, 65535
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = or i32 %43, 131091
  store i32 %48, ptr %42, align 4
  br label %49

49:                                               ; preds = %47, %41, %37, %23
  %50 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 131072
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %56 = load volatile i32, ptr %55, align 8
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %49
  tail call void @signal_wake_up_state(ptr noundef %0, i32 noundef 8) #7
  br label %60

60:                                               ; preds = %59, %54
  %61 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %62 = load i16, ptr %61, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_clear_jobctl_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_clear_jobctl_trapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ptrace_may_access(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = tail call fastcc i32 @__ptrace_may_access(ptr noundef %0, i32 noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %7 = icmp eq i32 %4, 0
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ptrace_may_access(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #7
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 83
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %1, 8
  %7 = icmp eq i32 %6, 0
  %8 = lshr exact i32 %6, 3
  %9 = lshr i32 %1, 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %83

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %17 = load ptr, ptr %16, align 16
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %83, label %19

19:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %20 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7
  %21 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %22 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 2
  %24 = select i1 %7, ptr %22, ptr %20
  %25 = select i1 %7, ptr %23, ptr %21
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %24, align 4
  %28 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %29 = load volatile ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %27, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %27, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %26, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %26, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %26, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %49, %45, %41, %37, %33, %19
  %54 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 21
  %55 = load ptr, ptr %54, align 4
  %56 = and i32 %1, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = tail call zeroext i1 @ns_capable_noaudit(ptr noundef %55, i32 noundef 19) #7
  br i1 %59, label %63, label %62

60:                                               ; preds = %53
  %61 = tail call zeroext i1 @ns_capable(ptr noundef %55, i32 noundef 19) #7
  br i1 %61, label %63, label %62

62:                                               ; preds = %60, %58
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  br label %83

63:                                               ; preds = %60, %58, %49
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !23
  %64 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %81, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.anon, ptr %65, i32 0, i32 43
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.anon, ptr %65, i32 0, i32 46
  %74 = load ptr, ptr %73, align 4
  %75 = and i32 %1, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call zeroext i1 @ns_capable_noaudit(ptr noundef %74, i32 noundef 19) #7
  br i1 %78, label %81, label %83

79:                                               ; preds = %72
  %80 = tail call zeroext i1 @ns_capable(ptr noundef %74, i32 noundef 19) #7
  br i1 %80, label %81, label %83

81:                                               ; preds = %79, %77, %67, %63
  %82 = tail call i32 @cap_ptrace_access_check(ptr noundef %0, i32 noundef %1) #7
  br label %83

83:                                               ; preds = %81, %79, %77, %62, %13, %12
  %84 = phi i32 [ -1, %12 ], [ %82, %81 ], [ -1, %62 ], [ 0, %13 ], [ -1, %79 ], [ -1, %77 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_ptrace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 60
  %4 = load ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %24, label %6

6:                                                ; preds = %22, %2
  %7 = phi ptr [ %9, %22 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -1336
  %9 = load ptr, ptr %7, align 8
  %10 = getelementptr i8, ptr %7, i32 -784
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 8388608
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !8

14:                                               ; preds = %6
  %15 = tail call i32 @send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %8) #7
  br label %16

16:                                               ; preds = %14, %6
  %17 = tail call fastcc zeroext i1 @__ptrace_detach(ptr noundef %0, ptr noundef %8)
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %7, ptr %20, align 4
  store ptr %19, ptr %7, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  store volatile ptr %7, ptr %1, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = icmp eq ptr %9, %3
  br i1 %23, label %24, label %6

24:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__ptrace_detach(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @__ptrace_unlink(ptr noundef %1)
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 41
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 43
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 64
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 55
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 93
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %20 = load ptr, ptr %19, align 16
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %24 = load ptr, ptr %23, align 4
  tail call void @_raw_spin_lock(ptr noundef %24) #7
  %25 = getelementptr %struct.sighand_struct, ptr %24, i32 0, i32 3, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, inttoptr (i32 1 to ptr)
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = getelementptr %struct.sighand_struct, ptr %24, i32 0, i32 3, i32 16, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %33 = load i16, ptr %24, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  br i1 %32, label %42, label %38

35:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %36 = load i16, ptr %24, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  br label %38

38:                                               ; preds = %35, %28
  tail call void @__wake_up_parent(ptr noundef %1, ptr noundef %0) #7
  br label %41

39:                                               ; preds = %14
  %40 = tail call zeroext i1 @do_notify_parent(ptr noundef %1, i32 noundef %8) #7
  br i1 %40, label %41, label %42

41:                                               ; preds = %39, %38, %6
  store i32 16, ptr %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %28, %10, %2
  %43 = phi i1 [ false, %2 ], [ true, %41 ], [ false, %39 ], [ false, %28 ], [ false, %10 ]
  ret i1 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptrace_readdata(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [128 x i8], align 1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  br label %10

10:                                               ; preds = %57, %7
  %11 = phi i32 [ 0, %7 ], [ %58, %57 ]
  %12 = phi i32 [ %3, %7 ], [ %61, %57 ]
  %13 = phi ptr [ %2, %7 ], [ %60, %57 ]
  %14 = phi i32 [ %1, %7 ], [ %59, %57 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !24
  %15 = call i32 @llvm.umin.i32(i32 %12, i32 128)
  %16 = call ptr @get_task_mm(ptr noundef %0) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %8, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #7
  %23 = load ptr, ptr %9, align 8
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 43
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 46
  %32 = load ptr, ptr %31, align 4
  %33 = call zeroext i1 @ptracer_capable(ptr noundef %0, ptr noundef %32) #7
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %21, %18
  call void @mmput(ptr noundef nonnull %16) #7
  br label %38

35:                                               ; preds = %30, %25
  %36 = call i32 @__access_remote_vm(ptr noundef nonnull %16, i32 noundef %14, ptr noundef nonnull %5, i32 noundef %15, i32 noundef 16) #7
  call void @mmput(ptr noundef nonnull %16) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %34, %10
  %39 = icmp eq i32 %11, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #7
  br label %63

41:                                               ; preds = %35
  %42 = icmp ugt i32 %36, 128
  br i1 %42, label %43, label %44, !prof !12

43:                                               ; preds = %41
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef %36) #7
  br label %55

44:                                               ; preds = %41
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %36, i32 -1090519040) #8, !srcloc !25
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #9, !srcloc !26
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %53 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %5, i32 noundef %36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48, %44, %43, %38
  %56 = phi i32 [ -14, %43 ], [ -5, %38 ], [ -14, %44 ], [ -14, %48 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #7
  br label %63

57:                                               ; preds = %48
  %58 = add i32 %36, %11
  %59 = add i32 %36, %14
  %60 = getelementptr i8, ptr %13, i32 %36
  %61 = sub nsw i32 %12, %36
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #7
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %10, label %63

63:                                               ; preds = %57, %55, %40, %4
  %64 = phi i32 [ %56, %55 ], [ %11, %40 ], [ 0, %4 ], [ %58, %57 ]
  ret i32 %64
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptrace_writedata(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [128 x i8], align 1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  br label %10

10:                                               ; preds = %58, %7
  %11 = phi i32 [ 0, %7 ], [ %59, %58 ]
  %12 = phi i32 [ %3, %7 ], [ %62, %58 ]
  %13 = phi i32 [ %2, %7 ], [ %61, %58 ]
  %14 = phi ptr [ %1, %7 ], [ %60, %58 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !24
  %15 = call i32 @llvm.umin.i32(i32 %12, i32 128)
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 %15, i32 -1090519040) #8, !srcloc !29
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27, !prof !8

19:                                               ; preds = %10
  %20 = tail call ptr @llvm.thread.pointer() #7
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #9, !srcloc !26
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %25 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %14, i32 noundef %15) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !8

27:                                               ; preds = %19, %10
  %28 = phi i32 [ %25, %19 ], [ %15, %10 ]
  %29 = sub i32 %15, %28
  %30 = getelementptr i8, ptr %5, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %28, i1 false) #7
  br label %56

31:                                               ; preds = %19
  %32 = call ptr @get_task_mm(ptr noundef %0) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %8, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %9, align 8
  %39 = icmp eq ptr %20, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 43
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 3
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 46
  %47 = load ptr, ptr %46, align 4
  %48 = call zeroext i1 @ptracer_capable(ptr noundef %0, ptr noundef %47) #7
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %37, %34
  call void @mmput(ptr noundef nonnull %32) #7
  br label %53

50:                                               ; preds = %45, %40
  %51 = call i32 @__access_remote_vm(ptr noundef nonnull %32, i32 noundef %13, ptr noundef nonnull %5, i32 noundef %15, i32 noundef 17) #7
  call void @mmput(ptr noundef nonnull %32) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50, %49, %31
  %54 = icmp eq i32 %11, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #7
  br label %64

56:                                               ; preds = %53, %27
  %57 = phi i32 [ -14, %27 ], [ -5, %53 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #7
  br label %64

58:                                               ; preds = %50
  %59 = add i32 %51, %11
  %60 = getelementptr i8, ptr %14, i32 %51
  %61 = add i32 %51, %13
  %62 = sub i32 %12, %51
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #7
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %10, label %64

64:                                               ; preds = %58, %56, %55, %4
  %65 = phi i32 [ %57, %56 ], [ %11, %55 ], [ 0, %4 ], [ %59, %58 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_user_regset_view(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptrace_request(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ptrace_rseq_configuration, align 8
  %6 = alloca %struct.ptrace_syscall_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ptrace_peeksiginfo_args, align 8
  %9 = alloca %struct.kernel_siginfo, align 4
  %10 = alloca %struct.kernel_siginfo, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sigset_t, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, i8 0, i32 32, i1 false), !annotation !24
  %18 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  store i32 0, ptr %11, align 4, !annotation !24
  switch i32 %1, label %457 [
    i32 1, label %19
    i32 2, label %19
    i32 4, label %21
    i32 5, label %21
    i32 21, label %23
    i32 16896, label %23
    i32 16897, label %30
    i32 16905, label %39
    i32 16898, label %143
    i32 16899, label %160
    i32 16906, label %165
    i32 16907, label %186
    i32 16903, label %216
    i32 16904, label %231
    i32 17, label %256
    i32 9, label %270
    i32 24, label %270
    i32 7, label %270
    i32 8, label %272
    i32 16900, label %278
    i32 16901, label %278
    i32 16910, label %315
    i32 16908, label %429
    i32 16909, label %430
    i32 16911, label %431
  ]

19:                                               ; preds = %4, %4
  %20 = tail call i32 @generic_ptrace_peekdata(ptr noundef %0, i32 noundef %2, i32 noundef %3)
  br label %457

21:                                               ; preds = %4, %4
  %22 = tail call i32 @generic_ptrace_pokedata(ptr noundef %0, i32 noundef %2, i32 noundef %3)
  br label %457

23:                                               ; preds = %4, %4
  %24 = and i32 %3, -1048832
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %457, !prof !30

26:                                               ; preds = %23
  %27 = and i32 %15, -25167865
  %28 = shl nuw nsw i32 %3, 3
  %29 = or i32 %27, %28
  store i32 %29, ptr %14, align 8
  br label %457

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 120
  %32 = load i32, ptr %31, align 8
  %33 = tail call ptr @llvm.thread.pointer() #7
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #9, !srcloc !26
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %18, i32 %32, i32 -1090519041) #7, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  br label %457

39:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #7, !annotation !24
  %40 = inttoptr i32 %2 to ptr
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %40, i32 16, i32 -1090519040) #8, !srcloc !29
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52, !prof !8

44:                                               ; preds = %39
  %45 = tail call ptr @llvm.thread.pointer() #7
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #9, !srcloc !26
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %50 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %40, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !8

52:                                               ; preds = %44, %39
  %53 = phi i32 [ %50, %44 ], [ 16, %39 ]
  %54 = sub i32 16, %53
  %55 = getelementptr i8, ptr %8, i32 %54
  call void @llvm.memset.p0.i32(ptr align 1 %55, i8 0, i32 %53, i1 false) #7
  br label %141

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, ptr %8, i32 0, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %141

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, ptr %8, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %141, label %64

64:                                               ; preds = %60
  %65 = load i64, ptr %8, align 8
  %66 = icmp ugt i64 %65, 4294967295
  br i1 %66, label %141, label %67

67:                                               ; preds = %64
  %68 = icmp eq i32 %58, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %71 = load ptr, ptr %70, align 16
  %72 = getelementptr inbounds %struct.signal_struct, ptr %71, i32 0, i32 6
  br label %75

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 98
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi ptr [ %72, %69 ], [ %74, %73 ]
  %77 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %78 = icmp eq i32 %62, 0
  br i1 %78, label %141, label %79

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %9, i8 0, i32 32, i1 false) #7, !annotation !24
  %80 = load ptr, ptr %77, align 4
  call void @_raw_spin_lock_irq(ptr noundef %80) #7
  %81 = load ptr, ptr %76, align 4
  %82 = icmp eq ptr %81, %76
  br i1 %82, label %107, label %83

83:                                               ; preds = %79
  %84 = trunc i64 %65 to i32
  br label %85

85:                                               ; preds = %129, %83
  %86 = phi ptr [ %133, %129 ], [ %81, %83 ]
  %87 = phi i32 [ %114, %129 ], [ 0, %83 ]
  %88 = phi i32 [ %113, %129 ], [ %3, %83 ]
  %89 = phi i32 [ %131, %129 ], [ %84, %83 ]
  %90 = add i32 %87, %89
  br label %95

91:                                               ; preds = %95
  %92 = add i32 %97, -1
  %93 = load ptr, ptr %96, align 4
  %94 = icmp eq ptr %93, %76
  br i1 %94, label %107, label %95

95:                                               ; preds = %91, %85
  %96 = phi ptr [ %93, %91 ], [ %86, %85 ]
  %97 = phi i32 [ %92, %91 ], [ %90, %85 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %91

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.sigqueue, ptr %96, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef align 4 dereferenceable(32) %100, i32 32, i1 false) #7
  %101 = load ptr, ptr %77, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %102 = load i16, ptr %101, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %101, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  %104 = inttoptr i32 %88 to ptr
  %105 = call i32 @copy_siginfo_to_user(ptr noundef %104, ptr noundef nonnull %9) #7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %124

107:                                              ; preds = %129, %91, %79
  %108 = phi i32 [ 0, %79 ], [ %87, %91 ], [ %114, %129 ]
  %109 = load ptr, ptr %77, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %110 = load i16, ptr %109, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %109, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  br label %122

112:                                              ; preds = %99
  %113 = add i32 %88, 128
  %114 = add nuw nsw i32 %87, 1
  %115 = load volatile i32, ptr %45, align 4
  %116 = and i32 %115, 256
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122, !prof !8

118:                                              ; preds = %112
  %119 = load volatile i32, ptr %45, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118, %112, %107
  %123 = phi i32 [ %108, %107 ], [ %114, %112 ], [ %114, %118 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #7
  br label %135

124:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #7
  br label %135

125:                                              ; preds = %118
  %126 = call i32 @__cond_resched() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #7
  %127 = load i32, ptr %61, align 4
  %128 = icmp slt i32 %114, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load i64, ptr %8, align 8
  %131 = trunc i64 %130 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %9, i8 0, i32 32, i1 false) #7, !annotation !24
  %132 = load ptr, ptr %77, align 4
  call void @_raw_spin_lock_irq(ptr noundef %132) #7
  %133 = load ptr, ptr %76, align 4
  %134 = icmp eq ptr %133, %76
  br i1 %134, label %107, label %85

135:                                              ; preds = %124, %122
  %136 = phi i32 [ %123, %122 ], [ %87, %124 ]
  %137 = phi i32 [ 0, %122 ], [ -14, %124 ]
  %138 = icmp sgt i32 %136, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135, %125
  %140 = phi i32 [ %136, %135 ], [ %114, %125 ]
  br label %141

141:                                              ; preds = %139, %135, %75, %64, %60, %56, %52
  %142 = phi i32 [ -22, %56 ], [ -22, %60 ], [ 0, %64 ], [ -14, %52 ], [ %140, %139 ], [ %137, %135 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %457

143:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !24
  %144 = call ptr @__lock_task_sighand(ptr noundef %0, ptr noundef nonnull %7) #7
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %457

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %155, !prof !12

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %153, i32 noundef %154) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %457

155:                                              ; preds = %147
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(32) %149, i32 32, i1 false) #7
  %156 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %157 = load ptr, ptr %156, align 4
  %158 = load i32, ptr %7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %157, i32 noundef %158) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %159 = call i32 @copy_siginfo_to_user(ptr noundef %18, ptr noundef nonnull %10) #7
  br label %457

160:                                              ; preds = %4
  %161 = call i32 @copy_siginfo_from_user(ptr noundef nonnull %10, ptr noundef %18) #7
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %457

163:                                              ; preds = %160
  %164 = call fastcc i32 @ptrace_setsiginfo(ptr noundef %0, ptr noundef nonnull %10)
  br label %457

165:                                              ; preds = %4
  %166 = icmp eq i32 %2, 8
  br i1 %166, label %167, label %457

167:                                              ; preds = %165
  %168 = load volatile i32, ptr %0, align 4
  %169 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 8, i32 -1090519040) #8, !srcloc !25
  %170 = extractvalue { i32, i32 } %169, 0
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %457

172:                                              ; preds = %167
  %173 = and i32 %168, 1048576
  %174 = icmp eq i32 %173, 0
  %175 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 95
  %176 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 97
  %177 = select i1 %174, ptr %175, ptr %176
  %178 = tail call ptr @llvm.thread.pointer() #7
  %179 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 3
  %180 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %179) #9, !srcloc !26
  %181 = and i32 %180, -13
  %182 = or i32 %181, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %182) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %183 = tail call i32 @arm_copy_to_user(ptr noundef %18, ptr noundef %177, i32 noundef 8) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %180) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i32 0, i32 -14
  br label %457

186:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  store i64 0, ptr %12, align 8, !annotation !24
  %187 = icmp eq i32 %2, 8
  br i1 %187, label %188, label %214

188:                                              ; preds = %186
  %189 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 8, i32 -1090519040) #8, !srcloc !29
  %190 = extractvalue { i32, i32 } %189, 0
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %200, !prof !8

192:                                              ; preds = %188
  %193 = tail call ptr @llvm.thread.pointer() #7
  %194 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 3
  %195 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %194) #9, !srcloc !26
  %196 = and i32 %195, -13
  %197 = or i32 %196, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %197) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %198 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %18, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %195) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %204, label %200, !prof !8

200:                                              ; preds = %192, %188
  %201 = phi i32 [ %198, %192 ], [ 8, %188 ]
  %202 = sub i32 8, %201
  %203 = getelementptr i8, ptr %12, i32 %202
  call void @llvm.memset.p0.i32(ptr align 1 %203, i8 0, i32 %201, i1 false) #7
  br label %214

204:                                              ; preds = %192
  %205 = load i32, ptr %12, align 8
  %206 = and i32 %205, -262401
  store i32 %206, ptr %12, align 8
  %207 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %208 = load ptr, ptr %207, align 4
  call void @_raw_spin_lock_irq(ptr noundef %208) #7
  %209 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 95
  %210 = load i64, ptr %12, align 8
  store i64 %210, ptr %209, align 8
  %211 = load ptr, ptr %207, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %212 = load i16, ptr %211, align 4
  %213 = add i16 %212, 1
  store i16 %213, ptr %211, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  call void @_clear_bit(i32 noundef 20, ptr noundef %0) #7
  br label %214

214:                                              ; preds = %204, %200, %186
  %215 = phi i32 [ 0, %204 ], [ -22, %186 ], [ -14, %200 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  br label %457

216:                                              ; preds = %4
  br i1 %17, label %457, label %217, !prof !12

217:                                              ; preds = %216
  %218 = call ptr @__lock_task_sighand(ptr noundef %0, ptr noundef nonnull %11) #7
  %219 = icmp eq ptr %218, null
  br i1 %219, label %457, label %220, !prof !12

220:                                              ; preds = %217
  %221 = call zeroext i1 @task_set_jobctl_pending(ptr noundef %0, i32 noundef 524288) #7
  br i1 %221, label %222, label %227, !prof !8

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %224 = load i32, ptr %223, align 4
  %225 = lshr i32 %224, 19
  %226 = and i32 %225, 8
  call void @signal_wake_up_state(ptr noundef %0, i32 noundef %226) #7
  br label %227

227:                                              ; preds = %222, %220
  %228 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %229 = load ptr, ptr %228, align 4
  %230 = load i32, ptr %11, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %229, i32 noundef %230) #7
  br label %457

231:                                              ; preds = %4
  br i1 %17, label %457, label %232, !prof !12

232:                                              ; preds = %231
  %233 = call ptr @__lock_task_sighand(ptr noundef %0, ptr noundef nonnull %11) #7
  %234 = icmp eq ptr %233, null
  br i1 %234, label %457, label %235, !prof !12

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %251, label %239, !prof !12

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.anon.74, ptr %237, i32 0, i32 2
  %241 = load i32, ptr %240, align 4
  %242 = and i32 %241, -256
  %243 = icmp eq i32 %242, 32768
  br i1 %243, label %244, label %251, !prof !8

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %246 = load i32, ptr %245, align 4
  %247 = or i32 %246, 4194304
  store i32 %247, ptr %245, align 4
  %248 = and i32 %246, 1048576
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %244
  call void @signal_wake_up_state(ptr noundef %0, i32 noundef 8) #7
  br label %251

251:                                              ; preds = %250, %244, %239, %235
  %252 = phi i32 [ -5, %239 ], [ 0, %250 ], [ 0, %244 ], [ -5, %235 ]
  %253 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %254 = load ptr, ptr %253, align 4
  %255 = load i32, ptr %11, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %254, i32 noundef %255) #7
  br label %457

256:                                              ; preds = %4
  %257 = icmp ugt i32 %3, 64
  br i1 %257, label %457, label %258

258:                                              ; preds = %256
  tail call void @ptrace_disable(ptr noundef %0) #7
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #7
  %259 = load i32, ptr %14, align 8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 41
  %263 = load i32, ptr %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %266, label %265, !prof !8

265:                                              ; preds = %261, %258
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 571, i32 noundef 9, ptr noundef null) #7
  br label %266

266:                                              ; preds = %265, %261
  %267 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 42
  store i32 %3, ptr %267, align 64
  %268 = tail call ptr @llvm.thread.pointer() #7
  %269 = tail call fastcc zeroext i1 @__ptrace_detach(ptr noundef %268, ptr noundef %0) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !34
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #7, !srcloc !35
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  br label %457

270:                                              ; preds = %4, %4, %4
  %271 = tail call fastcc i32 @ptrace_resume(ptr noundef %0, i32 noundef %1, i32 noundef %3)
  br label %457

272:                                              ; preds = %4
  %273 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 41
  %274 = load i32, ptr %273, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %457

276:                                              ; preds = %272
  %277 = tail call fastcc i32 @ptrace_resume(ptr noundef %0, i32 noundef 8, i32 noundef 9)
  br label %457

278:                                              ; preds = %4, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  %279 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 8, i32 -1090519040) #8, !srcloc !37
  %280 = extractvalue { i32, i32 } %279, 0
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %312

282:                                              ; preds = %278
  %283 = tail call ptr @llvm.thread.pointer() #7
  %284 = getelementptr inbounds %struct.thread_info, ptr %283, i32 0, i32 3
  %285 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %284) #9, !srcloc !26
  %286 = and i32 %285, -13
  %287 = or i32 %286, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %287) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %288 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %18, i32 -1090519041) #7, !srcloc !38
  %289 = extractvalue { i32, i32 } %288, 0
  %290 = extractvalue { i32, i32 } %288, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %285) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %291 = inttoptr i32 %290 to ptr
  store ptr %291, ptr %13, align 8
  %292 = icmp eq i32 %289, 0
  br i1 %292, label %293, label %312

293:                                              ; preds = %282
  %294 = getelementptr inbounds %struct.iovec, ptr %18, i32 0, i32 1
  %295 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %284) #9, !srcloc !26
  %296 = and i32 %295, -13
  %297 = or i32 %296, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %297) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %298 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %294, i32 -1090519041) #7, !srcloc !39
  %299 = extractvalue { i32, i32 } %298, 0
  %300 = extractvalue { i32, i32 } %298, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %295) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %301 = getelementptr inbounds %struct.iovec, ptr %13, i32 0, i32 1
  store i32 %300, ptr %301, align 4
  %302 = icmp eq i32 %299, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %293
  %304 = call fastcc i32 @ptrace_regset(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13)
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %303
  %307 = load i32, ptr %301, align 4
  %308 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %284) #9, !srcloc !26
  %309 = and i32 %308, -13
  %310 = or i32 %309, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %310) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %311 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %294, i32 %307, i32 -1090519041) #7, !srcloc !40
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %308) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  br label %313

312:                                              ; preds = %293, %282, %278
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  br label %457

313:                                              ; preds = %306, %303
  %314 = phi i32 [ %304, %303 ], [ %311, %306 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  br label %457

315:                                              ; preds = %4
  %316 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr i8, ptr %317, i32 8112
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #7
  %319 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i64 88, i1 false) #7
  store i32 1073741864, ptr %319, align 4
  %320 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 3
  %321 = getelementptr i8, ptr %317, i32 8172
  %322 = load i32, ptr %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, ptr %320, align 8
  %324 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 4
  %325 = getelementptr i8, ptr %317, i32 8164
  %326 = load i32, ptr %325, align 4
  %327 = zext i32 %326 to i64
  store i64 %327, ptr %324, align 8
  %328 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %412, label %331

331:                                              ; preds = %315
  %332 = getelementptr inbounds %struct.anon.74, ptr %329, i32 0, i32 2
  %333 = load i32, ptr %332, align 4
  switch i32 %333, label %412 [
    i32 133, label %334
    i32 1797, label %380
  ]

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 120
  %336 = load i32, ptr %335, align 8
  switch i32 %336, label %412 [
    i32 1, label %337
    i32 2, label %366
  ]

337:                                              ; preds = %334
  store i8 1, ptr %6, align 8
  %338 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 5
  %339 = load i32, ptr %338, align 64
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5
  store i64 %340, ptr %341, align 8
  %342 = getelementptr i8, ptr %317, i32 8180
  %343 = load i32, ptr %342, align 4
  %344 = getelementptr i8, ptr %317, i32 8116
  %345 = load i32, ptr %344, align 4
  %346 = getelementptr i8, ptr %317, i32 8120
  %347 = load i32, ptr %346, align 4
  %348 = getelementptr i8, ptr %317, i32 8124
  %349 = load i32, ptr %348, align 4
  %350 = getelementptr i8, ptr %317, i32 8128
  %351 = load i32, ptr %350, align 4
  %352 = getelementptr i8, ptr %317, i32 8132
  %353 = load i32, ptr %352, align 4
  %354 = zext i32 %343 to i64
  %355 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 0
  store i64 %354, ptr %355, align 8
  %356 = zext i32 %345 to i64
  %357 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 1
  store i64 %356, ptr %357, align 8
  %358 = zext i32 %347 to i64
  %359 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 2
  store i64 %358, ptr %359, align 8
  %360 = zext i32 %349 to i64
  %361 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 3
  store i64 %360, ptr %361, align 8
  %362 = zext i32 %351 to i64
  %363 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 4
  store i64 %362, ptr %363, align 8
  %364 = zext i32 %353 to i64
  %365 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 5
  store i64 %364, ptr %365, align 8
  br label %412

366:                                              ; preds = %334
  store i8 2, ptr %6, align 8
  %367 = load i32, ptr %318, align 4
  %368 = icmp ugt i32 %367, -4096
  br i1 %368, label %369, label %370, !prof !12

369:                                              ; preds = %366
  br label %370

370:                                              ; preds = %369, %366
  %371 = phi i32 [ %367, %369 ], [ 0, %366 ]
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5
  store i64 %372, ptr %373, align 8
  %374 = icmp ne i32 %371, 0
  %375 = zext i1 %374 to i8
  %376 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1
  store i8 %375, ptr %376, align 8
  br i1 %374, label %412, label %377

377:                                              ; preds = %370
  %378 = load i32, ptr %318, align 4
  %379 = sext i32 %378 to i64
  store i64 %379, ptr %373, align 8
  br label %412

380:                                              ; preds = %331
  store i8 1, ptr %6, align 8
  %381 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 5
  %382 = load i32, ptr %381, align 64
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5
  store i64 %383, ptr %384, align 8
  %385 = getelementptr i8, ptr %317, i32 8180
  %386 = load i32, ptr %385, align 4
  %387 = getelementptr i8, ptr %317, i32 8116
  %388 = load i32, ptr %387, align 4
  %389 = getelementptr i8, ptr %317, i32 8120
  %390 = load i32, ptr %389, align 4
  %391 = getelementptr i8, ptr %317, i32 8124
  %392 = load i32, ptr %391, align 4
  %393 = getelementptr i8, ptr %317, i32 8128
  %394 = load i32, ptr %393, align 4
  %395 = getelementptr i8, ptr %317, i32 8132
  %396 = load i32, ptr %395, align 4
  %397 = zext i32 %386 to i64
  %398 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 0
  store i64 %397, ptr %398, align 8
  %399 = zext i32 %388 to i64
  %400 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 1
  store i64 %399, ptr %400, align 8
  %401 = zext i32 %390 to i64
  %402 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 2
  store i64 %401, ptr %402, align 8
  %403 = zext i32 %392 to i64
  %404 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 3
  store i64 %403, ptr %404, align 8
  %405 = zext i32 %394 to i64
  %406 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 4
  store i64 %405, ptr %406, align 8
  %407 = zext i32 %396 to i64
  %408 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 5
  store i64 %407, ptr %408, align 8
  store i8 3, ptr %6, align 8
  %409 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 120
  %410 = load i32, ptr %409, align 8
  %411 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %6, i32 0, i32 5, i32 0, i32 2
  store i32 %410, ptr %411, align 8
  br label %412

412:                                              ; preds = %380, %377, %370, %337, %334, %331, %315
  %413 = phi i32 [ 24, %331 ], [ 84, %380 ], [ 24, %334 ], [ 80, %337 ], [ 33, %370 ], [ 33, %377 ], [ 24, %315 ]
  %414 = tail call i32 @llvm.umin.i32(i32 %413, i32 %2) #7
  %415 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 %414, i32 -1090519040) #8, !srcloc !25
  %416 = extractvalue { i32, i32 } %415, 0
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %425

418:                                              ; preds = %412
  %419 = tail call ptr @llvm.thread.pointer() #7
  %420 = getelementptr inbounds %struct.thread_info, ptr %419, i32 0, i32 3
  %421 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %420) #9, !srcloc !26
  %422 = and i32 %421, -13
  %423 = or i32 %422, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %423) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %424 = call i32 @arm_copy_to_user(ptr noundef %18, ptr noundef nonnull %6, i32 noundef %414) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %421) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  br label %425

425:                                              ; preds = %418, %412
  %426 = phi i32 [ %424, %418 ], [ %414, %412 ]
  %427 = icmp eq i32 %426, 0
  %428 = select i1 %427, i32 %413, i32 -14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #7
  br label %457

429:                                              ; preds = %4
  br label %457

430:                                              ; preds = %4
  br label %457

431:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  %432 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 133
  %433 = load ptr, ptr %432, align 8
  %434 = ptrtoint ptr %433 to i32
  %435 = zext i32 %434 to i64
  store i64 %435, ptr %5, align 8
  %436 = getelementptr inbounds %struct.ptrace_rseq_configuration, ptr %5, i32 0, i32 1
  store i32 32, ptr %436, align 8
  %437 = getelementptr inbounds %struct.ptrace_rseq_configuration, ptr %5, i32 0, i32 2
  %438 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 134
  %439 = load i32, ptr %438, align 4
  store i32 %439, ptr %437, align 4
  %440 = getelementptr inbounds %struct.ptrace_rseq_configuration, ptr %5, i32 0, i32 3
  store i32 0, ptr %440, align 8
  %441 = getelementptr inbounds %struct.ptrace_rseq_configuration, ptr %5, i32 0, i32 4
  store i32 0, ptr %441, align 4
  %442 = tail call i32 @llvm.umin.i32(i32 %2, i32 24) #7
  %443 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 %442, i32 -1090519040) #8, !srcloc !25
  %444 = extractvalue { i32, i32 } %443, 0
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %453

446:                                              ; preds = %431
  %447 = tail call ptr @llvm.thread.pointer() #7
  %448 = getelementptr inbounds %struct.thread_info, ptr %447, i32 0, i32 3
  %449 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %448) #9, !srcloc !26
  %450 = and i32 %449, -13
  %451 = or i32 %450, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %451) #7, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %452 = call i32 @arm_copy_to_user(ptr noundef %18, ptr noundef nonnull %5, i32 noundef %442) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %449) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  br label %453

453:                                              ; preds = %446, %431
  %454 = phi i32 [ %452, %446 ], [ %442, %431 ]
  %455 = icmp eq i32 %454, 0
  %456 = select i1 %455, i32 24, i32 -14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  br label %457

457:                                              ; preds = %453, %430, %429, %425, %313, %312, %276, %272, %270, %266, %256, %251, %232, %231, %227, %217, %216, %214, %172, %167, %165, %163, %160, %155, %151, %146, %141, %30, %26, %23, %21, %19, %4
  %458 = phi i32 [ %277, %276 ], [ %271, %270 ], [ %22, %21 ], [ %20, %19 ], [ 0, %272 ], [ -14, %312 ], [ -5, %4 ], [ %456, %453 ], [ -22, %430 ], [ -22, %429 ], [ %428, %425 ], [ %314, %313 ], [ -5, %232 ], [ %252, %251 ], [ -5, %217 ], [ 0, %227 ], [ %215, %214 ], [ %161, %160 ], [ %164, %163 ], [ %159, %155 ], [ %142, %141 ], [ %38, %30 ], [ -22, %165 ], [ -5, %216 ], [ -5, %231 ], [ 0, %26 ], [ -22, %23 ], [ -3, %146 ], [ 0, %266 ], [ -5, %256 ], [ -14, %167 ], [ %185, %172 ], [ -22, %151 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #7
  ret i32 %458
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_ptrace_peekdata(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !24
  %5 = tail call ptr @get_task_mm(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #7
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 43
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 46
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i1 @ptracer_capable(ptr noundef %0, ptr noundef %23) #7
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %11, %7
  tail call void @mmput(ptr noundef nonnull %5) #7
  br label %37

26:                                               ; preds = %21, %16
  %27 = call i32 @__access_remote_vm(ptr noundef nonnull %5, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 4, i32 noundef 16) #7
  call void @mmput(ptr noundef nonnull %5) #7
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = inttoptr i32 %2 to ptr
  %31 = load i32, ptr %4, align 4
  %32 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #9, !srcloc !26
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  %36 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %30, i32 %31, i32 -1090519041) #7, !srcloc !41
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #7, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !28
  br label %37

37:                                               ; preds = %29, %26, %25, %3
  %38 = phi i32 [ %36, %29 ], [ -5, %26 ], [ -5, %25 ], [ -5, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_ptrace_pokedata(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  %5 = tail call ptr @get_task_mm(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #7
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 43
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 46
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i1 @ptracer_capable(ptr noundef %0, ptr noundef %23) #7
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %11, %7
  tail call void @mmput(ptr noundef nonnull %5) #7
  br label %30

26:                                               ; preds = %21, %16
  %27 = call i32 @__access_remote_vm(ptr noundef nonnull %5, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 4, i32 noundef 17) #7
  call void @mmput(ptr noundef nonnull %5) #7
  %28 = icmp eq i32 %27, 4
  %29 = select i1 %28, i32 0, i32 -5
  br label %30

30:                                               ; preds = %26, %25, %3
  %31 = phi i32 [ -5, %25 ], [ -5, %3 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_siginfo_to_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_siginfo_from_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ptrace_setsiginfo(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !24
  %4 = call ptr @__lock_task_sighand(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !12

10:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false) #7
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i32 [ 0, %10 ], [ -22, %6 ]
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #7
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %12, %11 ], [ -3, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @task_set_jobctl_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ptrace_resume(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp ugt i32 %2, 64
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 24
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %0) #7
  br label %10

8:                                                ; preds = %5
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %0) #7
  %9 = icmp eq i32 %1, 9
  br i1 %9, label %28, label %10

10:                                               ; preds = %8, %7
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @llvm.thread.pointer() #7
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 64
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %19 = load ptr, ptr %18, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 42
  store i32 %2, ptr %20, align 64
  %21 = tail call i32 @wake_up_state(ptr noundef %0, i32 noundef 8) #7
  %22 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  br label %28

25:                                               ; preds = %12, %10
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 42
  store i32 %2, ptr %26, align 64
  %27 = tail call i32 @wake_up_state(ptr noundef %0, i32 noundef 8) #7
  br label %28

28:                                               ; preds = %25, %17, %8, %3
  %29 = phi i32 [ -5, %3 ], [ -5, %8 ], [ 0, %25 ], [ 0, %17 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ptrace_regset(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @task_user_regset_view(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.user_regset_view, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %53, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.user_regset_view, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = getelementptr %struct.user_regset, ptr %11, i32 %13, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %53, label %12

20:                                               ; preds = %12
  %21 = getelementptr %struct.user_regset, ptr %11, i32 %13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.iovec, ptr %3, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.user_regset, ptr %11, i32 %13, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = urem i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %23
  %31 = mul i32 %13, 36
  %32 = sdiv exact i32 %31, 36
  %33 = getelementptr %struct.user_regset, ptr %11, i32 %13, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, %27
  %36 = tail call i32 @llvm.umin.i32(i32 %25, i32 %35)
  store i32 %36, ptr %24, align 4
  %37 = icmp eq i32 %1, 16900
  %38 = load ptr, ptr %3, align 4
  br i1 %37, label %39, label %41

39:                                               ; preds = %30
  %40 = tail call i32 @copy_regset_to_user(ptr noundef %0, ptr noundef %5, i32 noundef %32, i32 noundef 0, i32 noundef %36, ptr noundef %38) #7
  br label %53

41:                                               ; preds = %30
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr %struct.user_regset, ptr %42, i32 %32
  %44 = getelementptr %struct.user_regset, ptr %42, i32 %32, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 %36, i32 -1090519040) #8, !srcloc !42
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call i32 %45(ptr noundef %0, ptr noundef %43, i32 noundef 0, i32 noundef %36, ptr noundef null, ptr noundef %38) #7
  br label %53

53:                                               ; preds = %51, %47, %41, %39, %23, %20, %17, %4
  %54 = phi i32 [ %40, %39 ], [ -22, %23 ], [ -22, %20 ], [ %52, %51 ], [ -95, %41 ], [ -14, %47 ], [ -22, %4 ], [ -22, %17 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ptrace(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %4
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #7
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 56
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @cap_ptrace_traceme(ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 55
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  store i32 1, ptr %8, align 8
  %24 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 61
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %30, label %29, !prof !8

29:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ptrace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 60
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %26, ptr %33, align 4
  store ptr %32, ptr %26, align 4
  %34 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 61, i32 1
  store ptr %31, ptr %34, align 4
  store volatile ptr %26, ptr %31, align 4
  store ptr %18, ptr %12, align 8
  %35 = icmp eq ptr %25, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 24
  store i32 0, ptr %37, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #7, !srcloc !10
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #7, !srcloc !11
  br label %39

39:                                               ; preds = %36, %30
  %40 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 81
  store ptr %25, ptr %40, align 16
  br label %41

41:                                               ; preds = %39, %16, %11, %6
  %42 = phi i32 [ -1, %6 ], [ %14, %11 ], [ 0, %16 ], [ 0, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !34
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #7, !srcloc !35
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  br label %254

43:                                               ; preds = %4
  %44 = tail call ptr @find_get_task_by_vpid(i32 noundef %1) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %254, label %46

46:                                               ; preds = %43
  switch i32 %0, label %136 [
    i32 16902, label %47
    i32 16, label %47
  ]

47:                                               ; preds = %46, %46
  %48 = icmp eq i32 %0, 16902
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  %50 = and i32 %3, -3145984
  %51 = or i32 %50, %2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %244

53:                                               ; preds = %49
  %54 = shl nuw nsw i32 %3, 3
  %55 = or i32 %54, 65537
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi i32 [ %55, %53 ], [ 1, %47 ]
  %58 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 2097152
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %244, !prof !8

62:                                               ; preds = %56
  %63 = tail call ptr @llvm.thread.pointer() #7
  %64 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 93
  %65 = load ptr, ptr %64, align 16
  %66 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 93
  %67 = load ptr, ptr %66, align 16
  %68 = icmp eq ptr %65, %67
  br i1 %68, label %244, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.signal_struct, ptr %65, i32 0, i32 55
  %71 = tail call i32 @mutex_lock_interruptible(ptr noundef %70) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %244

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %74) #7
  %75 = tail call fastcc i32 @__ptrace_may_access(ptr noundef nonnull %44, i32 noundef 18) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %76 = load i16, ptr %74, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %78 = icmp eq i32 %75, 0
  br i1 %78, label %79, label %124

79:                                               ; preds = %73
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #7
  %80 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 41
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %122, !prof !8

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 5
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %122

87:                                               ; preds = %83
  store i32 %57, ptr %84, align 8
  %88 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 83
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 61
  %91 = load volatile ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %90
  br i1 %92, label %94, label %93, !prof !8

93:                                               ; preds = %87
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ptrace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 60
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %90, ptr %97, align 4
  store ptr %96, ptr %90, align 4
  %98 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 61, i32 1
  store ptr %95, ptr %98, align 4
  store volatile ptr %90, ptr %95, align 4
  %99 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 56
  store ptr %63, ptr %99, align 8
  %100 = icmp eq ptr %89, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.cred, ptr %89, i32 0, i32 24
  store i32 0, ptr %102, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %89) #7, !srcloc !10
  %103 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %89, ptr nonnull %89, i32 1, ptr nonnull elementtype(i32) %89) #7, !srcloc !11
  br label %104

104:                                              ; preds = %101, %94
  %105 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 81
  store ptr %89, ptr %105, align 16
  br i1 %48, label %108, label %106

106:                                              ; preds = %104
  %107 = tail call i32 @send_sig_info(i32 noundef 19, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %44) #7
  br label %108

108:                                              ; preds = %106, %104
  %109 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 94
  %110 = load ptr, ptr %109, align 4
  tail call void @_raw_spin_lock(ptr noundef %110) #7
  %111 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %112 = load volatile i32, ptr %111, align 8
  %113 = and i32 %112, 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = tail call zeroext i1 @task_set_jobctl_pending(ptr noundef nonnull %44, i32 noundef 2621440) #7
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  tail call void @signal_wake_up_state(ptr noundef nonnull %44, i32 noundef 4) #7
  br label %118

118:                                              ; preds = %117, %115, %108
  %119 = load ptr, ptr %109, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %120 = load i16, ptr %119, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr %119, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  br label %122

122:                                              ; preds = %118, %83, %79
  %123 = phi i32 [ -1, %79 ], [ -1, %83 ], [ 0, %118 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !34
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #7, !srcloc !35
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  br label %124

124:                                              ; preds = %122, %73
  %125 = phi i32 [ %75, %73 ], [ %123, %122 ]
  %126 = load ptr, ptr %64, align 16
  %127 = getelementptr inbounds %struct.signal_struct, ptr %126, i32 0, i32 55
  tail call void @mutex_unlock(ptr noundef %127) #7
  %128 = icmp eq i32 %125, 0
  br i1 %128, label %129, label %244

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 45
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %131, 2097152
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %244, label %134

134:                                              ; preds = %129
  %135 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %130, i32 noundef 21, ptr noundef nonnull @bit_wait, i32 noundef 258) #7
  br label %244

136:                                              ; preds = %46
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #7
  %137 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 5
  %138 = load i32, ptr %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %192, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 56
  %142 = load ptr, ptr %141, align 8
  %143 = tail call ptr @llvm.thread.pointer() #7
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %145, label %192

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %147 = load volatile i32, ptr %146, align 8
  %148 = icmp eq i32 %147, 8
  br i1 %148, label %149, label %150, !prof !12

149:                                              ; preds = %145
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef null) #7
  br label %150

150:                                              ; preds = %149, %145
  switch i32 %0, label %151 [
    i32 16903, label %192
    i32 8, label %192
  ]

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 45
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, 4194304
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %192

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 94
  %158 = load ptr, ptr %157, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %158) #7
  %159 = load volatile i32, ptr %146, align 8
  %160 = and i32 %159, 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %180, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 42
  %164 = load i32, ptr %163, align 64
  %165 = icmp eq i32 %164, 1029
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = tail call i32 @__task_pid_nr_ns(ptr noundef nonnull %44, i32 noundef 0, ptr noundef null) #7
  %168 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 120
  %169 = load i32, ptr %168, align 8
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %166, %162
  %172 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 98, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = and i32 %173, 256
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %171
  store volatile i32 8, ptr %146, align 8
  %177 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %178 = load i16, ptr %177, align 4
  %179 = add i16 %178, 1
  store i16 %179, ptr %177, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  br label %192

180:                                              ; preds = %156
  %181 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %182 = load i16, ptr %181, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %181, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  br label %192

184:                                              ; preds = %166
  %185 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %186 = load i16, ptr %185, align 4
  %187 = add i16 %186, 1
  store i16 %187, ptr %185, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  br label %192

188:                                              ; preds = %171
  %189 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %190 = load i16, ptr %189, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr %189, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  br label %192

192:                                              ; preds = %188, %184, %180, %176, %151, %150, %150, %140, %136
  %193 = phi i1 [ true, %180 ], [ true, %140 ], [ true, %136 ], [ true, %151 ], [ true, %184 ], [ true, %188 ], [ false, %176 ], [ false, %150 ], [ false, %150 ]
  %194 = phi i32 [ -3, %180 ], [ -3, %140 ], [ -3, %136 ], [ -3, %151 ], [ -3, %184 ], [ -3, %188 ], [ 0, %176 ], [ 0, %150 ], [ 0, %150 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #7, !srcloc !10
  %195 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #7, !srcloc !44
  %196 = extractvalue { i32, i32 } %195, 0
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  br label %199

199:                                              ; preds = %198, %192
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  br i1 %193, label %244, label %200

200:                                              ; preds = %199
  switch i32 %0, label %201 [
    i32 16903, label %209
    i32 8, label %209
  ]

201:                                              ; preds = %200
  %202 = tail call i32 @wait_task_inactive(ptr noundef nonnull %44, i32 noundef 8) #7
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %206 = load volatile i32, ptr %205, align 8
  %207 = icmp eq i32 %206, 8
  br i1 %207, label %208, label %244, !prof !12

208:                                              ; preds = %204
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #7
  br label %244

209:                                              ; preds = %201, %200, %200
  %210 = tail call i32 @arch_ptrace(ptr noundef nonnull %44, i32 noundef %0, i32 noundef %2, i32 noundef %3) #7
  %211 = icmp ne i32 %210, 0
  %212 = icmp ne i32 %0, 17
  %213 = or i1 %212, %211
  br i1 %213, label %214, label %244

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %216 = load volatile i32, ptr %215, align 8
  %217 = icmp eq i32 %216, 8
  br i1 %217, label %218, label %244

218:                                              ; preds = %214
  %219 = load i32, ptr %137, align 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 56
  %223 = load ptr, ptr %222, align 8
  %224 = tail call ptr @llvm.thread.pointer() #7
  %225 = icmp eq ptr %223, %224
  br i1 %225, label %227, label %226, !prof !8

226:                                              ; preds = %221, %218
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #7
  br label %227

227:                                              ; preds = %226, %221
  %228 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 94
  %229 = load ptr, ptr %228, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %229) #7
  %230 = load volatile i32, ptr %215, align 8
  %231 = icmp eq i32 %230, 8
  br i1 %231, label %232, label %240

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 98, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, 256
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %232
  %238 = tail call i32 @wake_up_state(ptr noundef nonnull %44, i32 noundef 8) #7
  br label %240

239:                                              ; preds = %232
  store volatile i32 264, ptr %215, align 8
  br label %240

240:                                              ; preds = %239, %237, %227
  %241 = load ptr, ptr %228, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %242 = load i16, ptr %241, align 4
  %243 = add i16 %242, 1
  store i16 %243, ptr %241, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  br label %244

244:                                              ; preds = %240, %214, %209, %208, %204, %199, %134, %129, %124, %69, %62, %56, %49
  %245 = phi i32 [ 0, %209 ], [ %125, %124 ], [ 0, %129 ], [ 0, %134 ], [ -513, %69 ], [ -1, %62 ], [ -1, %56 ], [ -5, %49 ], [ %210, %214 ], [ %210, %240 ], [ -3, %208 ], [ -3, %204 ], [ %194, %199 ]
  %246 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %246) #7, !srcloc !10
  %247 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %246, ptr %246, i32 1, ptr elementtype(i32) %246) #7, !srcloc !47
  %248 = extractvalue { i32, i32, i32 } %247, 0
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %253, label %250

250:                                              ; preds = %244
  %251 = icmp sgt i32 %248, 0
  br i1 %251, label %254, label %252, !prof !8

252:                                              ; preds = %250
  tail call void @refcount_warn_saturate(ptr noundef %246, i32 noundef 3) #7
  br label %254

253:                                              ; preds = %244
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !48
  tail call void @__put_task_struct(ptr noundef nonnull %44) #7
  br label %254

254:                                              ; preds = %253, %252, %250, %43, %41
  %255 = phi i32 [ %42, %41 ], [ -3, %43 ], [ %245, %250 ], [ %245, %252 ], [ %245, %253 ]
  ret i32 %255
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_ptrace_access_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @do_notify_parent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_regset_to_user(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_ptrace(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_ptrace_traceme(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2154049745, i64 2154050224, i64 2154049782, i64 2154049838, i64 2154049872, i64 2154049896, i64 2154049937, i64 2154049958, i64 2154049986, i64 2154050020}
!10 = !{i64 598050, i64 2148099616, i64 2148099642, i64 2148099689, i64 2148099711, i64 2148099739, i64 2148099759}
!11 = !{i64 2148162878, i64 2148162904, i64 2148162933, i64 2148162967, i64 2148162998, i64 2148163021}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2154051169, i64 2154051649, i64 2154051206, i64 2154051262, i64 2154051296, i64 2154051320, i64 2154051361, i64 2154051382, i64 2154051410, i64 2154051444}
!14 = !{i64 2148263557}
!15 = !{i64 2148165919, i64 2148165951, i64 2148165980, i64 2148166014, i64 2148166045, i64 2148166068}
!16 = !{i64 2148263760}
!17 = !{i64 2149240893}
!18 = !{i64 2149236717}
!19 = !{i64 2149236792, i64 2149236819, i64 2149236866, i64 2149236888, i64 2149236916, i64 2149236936}
!20 = !{i64 2149263896}
!21 = !{i64 2149014694}
!22 = !{i64 2149014911}
!23 = !{i64 2154082819}
!24 = !{!"auto-init"}
!25 = !{i64 2150607346, i64 2150607371}
!26 = !{i64 3102880}
!27 = !{i64 3103077}
!28 = !{i64 2150588356}
!29 = !{i64 2150606768, i64 2150606793}
!30 = !{!"branch_weights", i32 2000, i32 2002}
!31 = !{i64 2154116507, i64 2154116787, i64 2154117121, i64 2154117455}
!32 = !{i64 627042}
!33 = !{i64 2149265037}
!34 = !{i64 2149247970}
!35 = !{i64 1751184}
!36 = !{i64 2149289587}
!37 = !{i64 2154119997, i64 2154120022}
!38 = !{i64 2154128975, i64 2154129255, i64 2154129589, i64 2154129923}
!39 = !{i64 2154141048, i64 2154141328, i64 2154141662, i64 2154141996}
!40 = !{i64 2154150058, i64 2154150338, i64 2154150672, i64 2154151006}
!41 = !{i64 2154170264, i64 2154170544, i64 2154170878, i64 2154171212}
!42 = !{i64 2153943492, i64 2153943517}
!43 = !{i64 2149248775}
!44 = !{i64 1752199, i64 1752222, i64 1752242, i64 1752266, i64 1752282}
!45 = !{i64 2149286378}
!46 = !{i64 2148264558}
!47 = !{i64 2148166693, i64 2148166725, i64 2148166754, i64 2148166788, i64 2148166819, i64 2148166842}
!48 = !{i64 2149314808}
