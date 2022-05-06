; ModuleID = '/llk/IR/init/init_task.c_pt.bc'
source_filename = "../init/init_task.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_task:\09\09\09\09\09"
module asm "\09.asciz \09\22init_task\22\09\09\09\09\09"
module asm "__kstrtabns_init_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.87, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.87 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.35 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.35 = type { %struct.callback_head }
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.kernel_symbol = type { i32, ptr, ptr }

@init_stack = external dso_local global [2048 x i32], align 4
@init_task = dso_local global %struct.task_struct { %struct.thread_info { i32 0, i32 1, i32 0, i32 0, %struct.cpu_context_save zeroinitializer, i32 0, [16 x i8] zeroinitializer, [2 x i32] zeroinitializer, [4 x i8] undef, %union.fp_state zeroinitializer, %union.vfp_state zeroinitializer, i32 0 }, i32 0, ptr @init_stack, %struct.refcount_struct { %struct.atomic_t { i32 2 } }, i32 2097152, i32 0, i32 0, %struct.__call_single_node zeroinitializer, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 120, i32 120, i32 120, i32 0, [32 x i8] undef, %struct.sched_entity { %struct.load_weight zeroinitializer, %struct.rb_node zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 660), ptr getelementptr (i8, ptr @init_task, i64 660) }, i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, [56 x i8] undef, %struct.sched_avg zeroinitializer }, %struct.sched_rt_entity { %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 832), ptr getelementptr (i8, ptr @init_task, i64 832) }, i32 0, i32 0, i32 10, i16 0, i16 0, ptr null }, %struct.sched_dl_entity zeroinitializer, ptr null, [36 x i8] undef, %struct.sched_statistics zeroinitializer, i32 0, i32 16, ptr getelementptr (i8, ptr @init_task, i64 1104), ptr null, %struct.cpumask { [1 x i32] [i32 65535] }, ptr null, i16 0, i16 0, %struct.sched_info zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1116), ptr getelementptr (i8, ptr @init_task, i64 1116) }, %struct.plist_node { i32 140, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1128), ptr getelementptr (i8, ptr @init_task, i64 1128) }, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1136), ptr getelementptr (i8, ptr @init_task, i64 1136) } }, %struct.rb_node zeroinitializer, ptr null, ptr @init_mm, %struct.vmacache zeroinitializer, %struct.task_rss_stat zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, [3 x i8] undef, i8 0, i32 0, %struct.restart_block { i32 0, ptr @do_no_restart_syscall, %union.anon.45 zeroinitializer }, i32 0, i32 0, i32 0, ptr @init_task, ptr @init_task, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1308), ptr getelementptr (i8, ptr @init_task, i64 1308) }, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1316), ptr getelementptr (i8, ptr @init_task, i64 1316) }, ptr @init_task, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1328), ptr getelementptr (i8, ptr @init_task, i64 1328) }, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1336), ptr getelementptr (i8, ptr @init_task, i64 1336) }, ptr @init_struct_pid, [4 x %struct.hlist_node] zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1380), ptr getelementptr (i8, ptr @init_task, i64 1380) }, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 12), ptr getelementptr (i8, ptr @init_signals, i64 12) }, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, %struct.prev_cputime zeroinitializer, i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, %struct.posix_cputimers { [3 x %struct.posix_cputimer_base] [%struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }, %struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }, %struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }], i32 0, i32 0 }, ptr null, ptr @init_cred, ptr @init_cred, ptr null, [16 x i8] c"swapper\00\00\00\00\00\00\00\00\00", ptr null, %struct.sysv_sem zeroinitializer, %struct.sysv_shm zeroinitializer, ptr @init_fs, ptr @init_files, ptr null, ptr @init_nsproxy, ptr @init_signals, ptr @init_sighand, %struct.sigset_t zeroinitializer, %struct.sigset_t zeroinitializer, %struct.sigset_t zeroinitializer, %struct.sigpending { %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1648), ptr getelementptr (i8, ptr @init_task, i64 1648) }, %struct.sigset_t zeroinitializer }, i32 0, i32 0, i32 0, ptr null, %struct.seccomp zeroinitializer, %struct.syscall_user_dispatch zeroinitializer, i64 0, i64 0, %struct.spinlock zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.wake_q_node zeroinitializer, %struct.rb_root_cached zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, %struct.task_io_accounting zeroinitializer, ptr null, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, ptr null, %struct.mutex zeroinitializer, i32 0, [2 x ptr] zeroinitializer, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1848), ptr getelementptr (i8, ptr @init_task, i64 1848) } }, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1856), ptr getelementptr (i8, ptr @init_task, i64 1856) }, ptr null, i32 0, i32 0, %struct.tlbflush_unmap_batch zeroinitializer, %union.anon.87 zeroinitializer, ptr null, %struct.page_frag zeroinitializer, i32 0, i32 0, i32 0, i64 50000, i64 0, i32 0, i32 0, ptr null, %struct.kmap_ctrl zeroinitializer, i32 0, ptr null, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.thread_struct zeroinitializer, [16 x i8] undef }, align 64
@init_mm = external dso_local global %struct.mm_struct, align 8
@init_struct_pid = external dso_local global %struct.pid, align 4
@init_signals = internal global %struct.signal_struct { %struct.refcount_struct zeroinitializer, %struct.atomic_t zeroinitializer, i32 1, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1388), ptr getelementptr (i8, ptr @init_task, i64 1388) }, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 24), ptr getelementptr (i8, ptr @init_signals, i64 24) } }, ptr null, %struct.sigpending { %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 36), ptr getelementptr (i8, ptr @init_signals, i64 36) }, %struct.sigset_t zeroinitializer }, %struct.hlist_head zeroinitializer, i32 0, i32 0, ptr null, i32 0, i32 0, ptr null, i8 0, i32 0, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 88), ptr getelementptr (i8, ptr @init_signals, i64 88) }, %struct.hrtimer zeroinitializer, i64 0, [2 x %struct.cpu_itimer] zeroinitializer, %struct.thread_group_cputimer zeroinitializer, %struct.posix_cputimers { [3 x %struct.posix_cputimer_base] [%struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }, %struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }, %struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }], i32 0, i32 0 }, [4 x ptr] [ptr @init_struct_pid, ptr @init_struct_pid, ptr @init_struct_pid, ptr @init_struct_pid], ptr null, i32 0, ptr null, %struct.seqlock_t zeroinitializer, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, %struct.prev_cputime zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.task_io_accounting zeroinitializer, i64 0, [16 x %struct.rlimit] [%struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit { i32 8388608, i32 -1 }, %struct.rlimit { i32 0, i32 -1 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit zeroinitializer, %struct.rlimit { i32 1024, i32 4096 }, %struct.rlimit { i32 8388608, i32 8388608 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit zeroinitializer, %struct.rlimit { i32 819200, i32 819200 }, %struct.rlimit zeroinitializer, %struct.rlimit zeroinitializer, %struct.rlimit { i32 -1, i32 -1 }], i8 0, i16 0, i16 0, ptr null, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 592), ptr getelementptr (i8, ptr @init_signals, i64 592) } }, %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 616), ptr getelementptr (i8, ptr @init_signals, i64 616) } } }, align 8
@init_cred = external dso_local global %struct.cred, align 4
@init_fs = external dso_local global %struct.fs_struct, align 1
@init_files = external dso_local global %struct.files_struct, align 1
@init_nsproxy = external dso_local global %struct.nsproxy, align 4
@init_sighand = internal global %struct.sighand_struct { %struct.spinlock zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_sighand, i64 12), ptr getelementptr (i8, ptr @init_sighand, i64 12) } }, [64 x %struct.k_sigaction] zeroinitializer }, align 4
@__kstrtab_init_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_task = external dso_local constant [0 x i8], align 1
@__ksymtab_init_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_task to i32), ptr @__kstrtab_init_task, ptr @__kstrtabns_init_task }, section "___ksymtab+init_task", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_init_task], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_no_restart_syscall(ptr noundef) #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

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
