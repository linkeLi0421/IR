; ModuleID = '/llk/IR/fs/proc/array.c_pt.bc'
source_filename = "../fs/proc/array.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.path = type { ptr, ptr }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [12 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [44 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [14 x %struct.atomic_t] }
%struct.anon.5 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@.str = private unnamed_addr constant [3 x i8] c"\0A\\\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.64s\00", align 1
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Name:\09\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"0 0 0 0 0 0 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Umask:\09%#04o\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"State:\09\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\0ATgid:\09\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\0ANgid:\09\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\0APid:\09\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\0APPid:\09\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\0ATracerPid:\09\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\0AUid:\09\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\0AGid:\09\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"\0AFDSize:\09\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\0AGroups:\09\00", align 1
@task_state_array = internal unnamed_addr constant [9 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"R (running)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"S (sleeping)\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"D (disk sleep)\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"T (stopped)\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"t (tracing stop)\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"X (dead)\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Z (zombie)\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"P (parked)\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"I (idle)\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"CoreDumping:\09\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"THP_enabled:\09%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Threads:\09\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"\0ASigQ:\09\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"\0ASigPnd:\09\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"ShdPnd:\09\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"SigBlk:\09\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"SigIgn:\09\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"SigCgt:\09\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"CapInh:\09\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"CapPrm:\09\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"CapEff:\09\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"CapBnd:\09\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"CapAmb:\09\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"NoNewPrivs:\09\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"\0ASeccomp:\09\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"\0ASeccomp_filters:\09\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"\0ASpeculation_Store_Bypass:\09\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"not vulnerable\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"thread force mitigated\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"thread mitigated\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"thread vulnerable\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"globally mitigated\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"vulnerable\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"\0ASpeculationIndirectBranch:\09\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"not affected\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"conditional force disabled\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"conditional disabled\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"conditional enabled\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"always enabled\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"always disabled\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"Cpus_allowed:\09%*pb\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.62 = private unnamed_addr constant [26 x i8] c"Cpus_allowed_list:\09%*pbl\0A\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"voluntary_ctxt_switches:\09\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"\0Anonvoluntary_ctxt_switches:\09\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c" 0 0 0 0 0 0 0\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c" 0\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_task_name(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  call void @wq_worker_comm(ptr noundef nonnull %4, i32 noundef 64, ptr noundef %1) #6
  br label %16

10:                                               ; preds = %3
  %11 = and i32 %6, 2097152
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void @get_kthread_comm(ptr noundef nonnull %4, i32 noundef 64, ptr noundef %1) #6
  br label %16

14:                                               ; preds = %10
  %15 = call ptr @__get_task_comm(ptr noundef nonnull %4, i32 noundef 64, ptr noundef %1) #6
  br label %16

16:                                               ; preds = %14, %13, %9
  br i1 %2, label %17, label %19

17:                                               ; preds = %16
  %18 = call i32 @strlen(ptr noundef nonnull %4) #6
  call void @seq_escape_mem(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %18, i32 noundef 3, ptr noundef nonnull @.str) #6
  br label %20

19:                                               ; preds = %16
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #6
  br label %20

20:                                               ; preds = %19, %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wq_worker_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_kthread_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @render_sigset_t(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef %1) #6
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi i32 [ 64, %3 ], [ %6, %4 ]
  %6 = add nsw i32 %5, -4
  %7 = lshr i32 %6, 5
  %8 = getelementptr [2 x i32], ptr %2, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %6, 28
  %11 = lshr i32 %9, %10
  %12 = and i32 %11, 1
  %13 = add nsw i32 %5, -3
  %14 = lshr i32 %13, 5
  %15 = getelementptr [2 x i32], ptr %2, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %13, 29
  %18 = shl nuw nsw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  %21 = or i32 %12, 2
  %22 = select i1 %20, i32 %12, i32 %21
  %23 = add nsw i32 %5, -1
  %24 = add nsw i32 %5, -2
  %25 = lshr i32 %24, 5
  %26 = getelementptr [2 x i32], ptr %2, i32 0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %24, 30
  %29 = shl nuw nsw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  %32 = or i32 %22, 4
  %33 = select i1 %31, i32 %22, i32 %32
  %34 = lshr i32 %23, 5
  %35 = getelementptr [2 x i32], ptr %2, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %23, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %39, 0
  %41 = or i32 %33, 8
  %42 = select i1 %40, i32 %33, i32 %41
  %43 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %44) #6
  %45 = icmp eq i32 %6, 0
  br i1 %45, label %46, label %4

46:                                               ; preds = %4
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_pid_status(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigset_t, align 8
  %7 = alloca %struct.sigset_t, align 8
  %8 = alloca %struct.sigset_t, align 8
  %9 = alloca %struct.sigset_t, align 8
  %10 = alloca %struct.sigset_t, align 8
  %11 = tail call ptr @get_task_mm(ptr noundef %3) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  tail call void @proc_task_name(ptr noundef %0, ptr noundef %3, i1 noundef zeroext true)
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 62
  %13 = load ptr, ptr %12, align 64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 55
  %17 = load volatile ptr, ptr %16, align 4
  %18 = tail call i32 @__task_pid_nr_ns(ptr noundef %17, i32 noundef 1, ptr noundef %1) #6
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i32 [ %18, %15 ], [ 0, %4 ]
  %21 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24, !prof !10

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 56
  %26 = load volatile ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @__task_pid_nr_ns(ptr noundef nonnull %26, i32 noundef 0, ptr noundef %1) #6
  br label %30

30:                                               ; preds = %28, %24, %19
  %31 = phi i32 [ %29, %28 ], [ 0, %24 ], [ 0, %19 ]
  %32 = tail call i32 @__task_pid_nr_ns(ptr noundef %3, i32 noundef 1, ptr noundef %1) #6
  %33 = tail call ptr @get_task_cred(ptr noundef %3) #6
  %34 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %34) #6
  %35 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 89
  %36 = load ptr, ptr %35, align 64
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.fs_struct, ptr %36, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi i32 [ %40, %38 ], [ -1, %30 ]
  %43 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 90
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.files_struct, ptr %44, i32 0, i32 3
  %48 = load volatile ptr, ptr %47, align 4
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i32 [ %49, %46 ], [ 0, %41 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %52 = load i16, ptr %34, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %54 = icmp sgt i32 %42, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %42) #6
  br label %56

56:                                               ; preds = %55, %50
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #6
  %57 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %58 = load volatile i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 41
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, %58
  %62 = and i32 %61, 127
  %63 = icmp eq i32 %58, 1026
  %64 = select i1 %63, i32 128, i32 %62
  %65 = icmp eq i32 %64, 0
  %66 = tail call i32 @llvm.ctlz.i32(i32 %64, i1 false) #6, !range !16
  %67 = sub nuw nsw i32 32, %66
  %68 = select i1 %65, i32 0, i32 %67
  %69 = getelementptr [9 x ptr], ptr @task_state_array, i32 0, i32 %68
  %70 = load ptr, ptr %69, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef %70) #6
  %71 = sext i32 %32 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %71) #6
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef 0) #6
  %72 = tail call i32 @pid_nr_ns(ptr noundef %2, ptr noundef %1) #6
  %73 = sext i32 %72 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %73) #6
  %74 = sext i32 %20 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef %74) #6
  %75 = sext i32 %31 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %75) #6
  %76 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, -1
  %79 = load i32, ptr @overflowuid, align 4
  %80 = select i1 %78, i32 %79, i32 %77
  %81 = zext i32 %80 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %81) #6
  %82 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, -1
  %85 = load i32, ptr @overflowuid, align 4
  %86 = select i1 %84, i32 %85, i32 %83
  %87 = zext i32 %86 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %87) #6
  %88 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, -1
  %91 = load i32, ptr @overflowuid, align 4
  %92 = select i1 %90, i32 %91, i32 %89
  %93 = zext i32 %92 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %93) #6
  %94 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 7
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, -1
  %97 = load i32, ptr @overflowuid, align 4
  %98 = select i1 %96, i32 %97, i32 %95
  %99 = zext i32 %98 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %99) #6
  %100 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, -1
  %103 = load i32, ptr @overflowgid, align 4
  %104 = select i1 %102, i32 %103, i32 %101
  %105 = zext i32 %104 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.15, i64 noundef %105) #6
  %106 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 6
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, -1
  %109 = load i32, ptr @overflowgid, align 4
  %110 = select i1 %108, i32 %109, i32 %107
  %111 = zext i32 %110 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %111) #6
  %112 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, -1
  %115 = load i32, ptr @overflowgid, align 4
  %116 = select i1 %114, i32 %115, i32 %113
  %117 = zext i32 %116 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %117) #6
  %118 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 8
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, -1
  %121 = load i32, ptr @overflowgid, align 4
  %122 = select i1 %120, i32 %121, i32 %119
  %123 = zext i32 %122 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %123) #6
  %124 = zext i32 %51 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.16, i64 noundef %124) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.17) #6
  %125 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 23
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.group_info, ptr %126, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %130, %56
  %131 = phi i32 [ %140, %130 ], [ 0, %56 ]
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, ptr @.str.3, ptr @.str.4
  %134 = getelementptr %struct.group_info, ptr %126, i32 0, i32 2, i32 %131
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, -1
  %137 = load i32, ptr @overflowgid, align 4
  %138 = select i1 %136, i32 %137, i32 %135
  %139 = zext i32 %138 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull %133, i64 noundef %139) #6
  %140 = add nuw nsw i32 %131, 1
  %141 = load i32, ptr %127, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %130, label %143

143:                                              ; preds = %130, %56
  %144 = icmp eq ptr %33, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %143
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %33) #6, !srcloc !18
  %146 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #6, !srcloc !19
  %147 = extractvalue { i32, i32 } %146, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  tail call void @__put_cred(ptr noundef nonnull %33) #6
  br label %150

150:                                              ; preds = %149, %145, %143
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #6
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  %151 = icmp eq ptr %11, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %150
  tail call void @task_mem(ptr noundef %0, ptr noundef nonnull %11) #6
  %153 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %154 = load ptr, ptr %153, align 16
  %155 = getelementptr inbounds %struct.signal_struct, ptr %154, i32 0, i32 13
  %156 = load ptr, ptr %155, align 4
  %157 = icmp ne ptr %156, null
  %158 = zext i1 %157 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef %158) #6
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 0) #6
  tail call void @mmput(ptr noundef nonnull %11) #6
  br label %159

159:                                              ; preds = %152, %150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store i64 0, ptr %7, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  store i64 0, ptr %8, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  store i64 0, ptr %9, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store i64 0, ptr %10, align 8, !annotation !8
  %160 = call ptr @__lock_task_sighand(ptr noundef %3, ptr noundef nonnull %5) #6
  %161 = icmp eq ptr %160, null
  br i1 %161, label %207, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 98, i32 1
  %164 = load i64, ptr %163, align 8
  store i64 %164, ptr %6, align 8
  %165 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %166 = load ptr, ptr %165, align 16
  %167 = getelementptr inbounds %struct.signal_struct, ptr %166, i32 0, i32 6, i32 1
  %168 = load i64, ptr %167, align 4
  store i64 %168, ptr %7, align 8
  %169 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 95
  %170 = load i64, ptr %169, align 8
  store i64 %170, ptr %8, align 8
  %171 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.sighand_struct, ptr %172, i32 0, i32 3
  br label %174

174:                                              ; preds = %189, %162
  %175 = phi i32 [ 1, %162 ], [ %190, %189 ]
  %176 = phi ptr [ %173, %162 ], [ %191, %189 ]
  %177 = load ptr, ptr %176, align 4
  %178 = ptrtoint ptr %177 to i32
  switch i32 %178, label %179 [
    i32 1, label %180
    i32 0, label %189
  ]

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %179, %174
  %181 = phi ptr [ %10, %179 ], [ %9, %174 ]
  %182 = add nsw i32 %175, -1
  %183 = and i32 %182, 31
  %184 = shl nuw i32 1, %183
  %185 = lshr i32 %182, 5
  %186 = getelementptr [2 x i32], ptr %181, i32 0, i32 %185
  %187 = load i32, ptr %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, ptr %186, align 4
  br label %189

189:                                              ; preds = %180, %174
  %190 = add nuw nsw i32 %175, 1
  %191 = getelementptr %struct.k_sigaction, ptr %176, i32 1
  %192 = icmp eq i32 %190, 65
  br i1 %192, label %193, label %174

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.signal_struct, ptr %166, i32 0, i32 2
  %195 = load i32, ptr %194, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %196 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 82
  %197 = load volatile ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.cred, ptr %197, i32 0, i32 22
  %199 = load ptr, ptr %198, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %200 = getelementptr %struct.ucounts, ptr %199, i32 0, i32 4, i32 12
  %201 = load volatile i32, ptr %200, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %202 = load ptr, ptr %165, align 16
  %203 = getelementptr %struct.signal_struct, ptr %202, i32 0, i32 50, i32 11
  %204 = load volatile i32, ptr %203, align 8
  %205 = load ptr, ptr %171, align 4
  %206 = load i32, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %205, i32 noundef %206) #6
  br label %207

207:                                              ; preds = %193, %159
  %208 = phi i32 [ %204, %193 ], [ 0, %159 ]
  %209 = phi i32 [ %201, %193 ], [ 0, %159 ]
  %210 = phi i32 [ %195, %193 ], [ 0, %159 ]
  %211 = sext i32 %210 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %211) #6
  %212 = zext i32 %209 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %212) #6
  %213 = zext i32 %208 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef %213) #6
  call void @render_sigset_t(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull %6) #6
  call void @render_sigset_t(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %7) #6
  call void @render_sigset_t(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %8) #6
  call void @render_sigset_t(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %9) #6
  call void @render_sigset_t(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %214 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 82
  %215 = load volatile ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.cred, ptr %215, i32 0, i32 10
  %217 = load i64, ptr %216, align 4
  %218 = lshr i64 %217, 32
  %219 = getelementptr inbounds %struct.cred, ptr %215, i32 0, i32 11
  %220 = load i64, ptr %219, align 4
  %221 = lshr i64 %220, 32
  %222 = getelementptr inbounds %struct.cred, ptr %215, i32 0, i32 12
  %223 = load i64, ptr %222, align 4
  %224 = lshr i64 %223, 32
  %225 = getelementptr inbounds %struct.cred, ptr %215, i32 0, i32 13
  %226 = load i64, ptr %225, align 4
  %227 = lshr i64 %226, 32
  %228 = getelementptr inbounds %struct.cred, ptr %215, i32 0, i32 14
  %229 = load i64, ptr %228, align 4
  %230 = lshr i64 %229, 32
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.37) #6
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %218, i32 noundef 8) #6
  %231 = and i64 %217, 4294967295
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %231, i32 noundef 8) #6
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #6
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %221, i32 noundef 8) #6
  %232 = and i64 %220, 4294967295
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %232, i32 noundef 8) #6
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.39) #6
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %224, i32 noundef 8) #6
  %233 = and i64 %223, 4294967295
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %233, i32 noundef 8) #6
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.40) #6
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %227, i32 noundef 8) #6
  %234 = and i64 %226, 4294967295
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %234, i32 noundef 8) #6
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.41) #6
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %230, i32 noundef 8) #6
  %235 = and i64 %229, 4294967295
  call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %235, i32 noundef 8) #6
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  %236 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 50
  %237 = load volatile i32, ptr %236, align 4
  %238 = and i32 %237, 1
  %239 = zext i32 %238 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef %239) #6
  %240 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 103
  %241 = load i32, ptr %240, align 16
  %242 = sext i32 %241 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.43, i64 noundef %242) #6
  %243 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 103, i32 1
  %244 = load volatile i32, ptr %243, align 4
  %245 = sext i32 %244 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.44, i64 noundef %245) #6
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.45) #6
  %246 = call i32 @arch_prctl_spec_ctrl_get(ptr noundef %3, i32 noundef 0) #6
  switch i32 %246, label %252 [
    i32 -22, label %253
    i32 0, label %247
    i32 9, label %248
    i32 5, label %249
    i32 3, label %250
    i32 4, label %251
  ]

247:                                              ; preds = %207
  br label %253

248:                                              ; preds = %207
  br label %253

249:                                              ; preds = %207
  br label %253

250:                                              ; preds = %207
  br label %253

251:                                              ; preds = %207
  br label %253

252:                                              ; preds = %207
  br label %253

253:                                              ; preds = %252, %251, %250, %249, %248, %247, %207
  %254 = phi ptr [ @.str.52, %252 ], [ @.str.51, %251 ], [ @.str.50, %250 ], [ @.str.49, %249 ], [ @.str.48, %248 ], [ @.str.47, %247 ], [ @.str.46, %207 ]
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull %254) #6
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.53) #6
  %255 = call i32 @arch_prctl_spec_ctrl_get(ptr noundef %3, i32 noundef 1) #6
  switch i32 %255, label %262 [
    i32 -22, label %263
    i32 0, label %256
    i32 9, label %257
    i32 5, label %258
    i32 3, label %259
    i32 2, label %260
    i32 4, label %261
  ]

256:                                              ; preds = %253
  br label %263

257:                                              ; preds = %253
  br label %263

258:                                              ; preds = %253
  br label %263

259:                                              ; preds = %253
  br label %263

260:                                              ; preds = %253
  br label %263

261:                                              ; preds = %253
  br label %263

262:                                              ; preds = %253
  br label %263

263:                                              ; preds = %262, %261, %260, %259, %258, %257, %256, %253
  %264 = phi ptr [ @.str.46, %262 ], [ @.str.60, %261 ], [ @.str.59, %260 ], [ @.str.58, %259 ], [ @.str.57, %258 ], [ @.str.56, %257 ], [ @.str.55, %256 ], [ @.str.54, %253 ]
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull %264) #6
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  %265 = load i32, ptr @nr_cpu_ids, align 4
  %266 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 29
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %265, ptr noundef %266) #6
  %267 = load i32, ptr @nr_cpu_ids, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %267, ptr noundef %266) #6
  %268 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 74
  %269 = load i32, ptr %268, align 8
  %270 = zext i32 %269 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.63, i64 noundef %270) #6
  %271 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 75
  %272 = load i32, ptr %271, align 4
  %273 = zext i32 %272 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.64, i64 noundef %273) #6
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_mem(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_tid_stat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @do_task_stat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_task_stat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [64 x i8], align 1
  %7 = alloca %struct.sigset_t, align 8
  %8 = alloca %struct.sigset_t, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store i64 0, ptr %7, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  store i64 0, ptr %8, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  store i64 0, ptr %9, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store i64 0, ptr %10, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 0, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 42
  %13 = load i32, ptr %12, align 64
  %14 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 41
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  %19 = and i32 %18, 127
  %20 = icmp eq i32 %15, 1026
  %21 = select i1 %20, i32 128, i32 %19
  %22 = icmp eq i32 %21, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 false) #6, !range !16
  %24 = sub nuw nsw i32 32, %23
  %25 = select i1 %22, i32 0, i32 %24
  %26 = getelementptr [9 x ptr], ptr @task_state_array, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = load i8, ptr %27, align 1
  %29 = tail call zeroext i1 @ptrace_may_access(ptr noundef %3, i32 noundef 13) #6
  %30 = tail call ptr @get_task_mm(ptr noundef %3) #6
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %72

32:                                               ; preds = %5
  %33 = tail call i32 @task_vsize(ptr noundef nonnull %30) #6
  br i1 %29, label %34, label %72

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 516
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %72, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 151
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %53, %39
  %44 = phi i32 [ %51, %53 ], [ %41, %39 ]
  %45 = add i32 %44, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #6, !srcloc !18
  br label %46

46:                                               ; preds = %46, %43
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 %44, i32 %45, ptr elementtype(i32) %40) #6, !srcloc !21
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %46

50:                                               ; preds = %46
  %51 = extractvalue { i32, i32 } %47, 1
  %52 = icmp eq i32 %51, %44
  br i1 %52, label %55, label %53, !prof !10

53:                                               ; preds = %50
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %55, label %43

55:                                               ; preds = %53, %50, %39
  %56 = phi i32 [ 0, %39 ], [ %44, %50 ], [ 0, %53 ]
  %57 = add i32 %56, 1
  %58 = or i32 %57, %56
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %61, label %60, !prof !10

60:                                               ; preds = %55
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 0) #6
  br label %61

61:                                               ; preds = %60, %55
  %62 = icmp eq i32 %56, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %65, i32 8172
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %65, i32 8164
  %71 = load i32, ptr %70, align 4
  tail call void @put_task_stack(ptr noundef %3) #6
  br label %72

72:                                               ; preds = %67, %63, %61, %34, %32, %5
  %73 = phi i32 [ %71, %67 ], [ 0, %63 ], [ 0, %34 ], [ 0, %32 ], [ 0, %5 ], [ 0, %61 ]
  %74 = phi i32 [ %69, %67 ], [ 0, %63 ], [ 0, %34 ], [ 0, %32 ], [ 0, %5 ], [ 0, %61 ]
  %75 = phi i32 [ %33, %67 ], [ %33, %63 ], [ %33, %34 ], [ %33, %32 ], [ 0, %5 ], [ %33, %61 ]
  store i64 0, ptr %10, align 8
  store i64 0, ptr %9, align 8
  %76 = call ptr @__lock_task_sighand(ptr noundef %3, ptr noundef nonnull %11) #6
  %77 = icmp eq ptr %76, null
  br i1 %77, label %186, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %80 = load ptr, ptr %79, align 16
  %81 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 25
  %82 = load ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %97, label %84

84:                                               ; preds = %78
  %85 = call ptr @tty_get_pgrp(ptr noundef nonnull %82) #6
  %86 = call i32 @pid_nr_ns(ptr noundef %85, ptr noundef %1) #6
  call void @put_pid(ptr noundef %85) #6
  %87 = load ptr, ptr %81, align 8
  %88 = call i32 @tty_devnum(ptr noundef %87) #6
  %89 = and i32 %88, 255
  %90 = lshr i32 %88, 12
  %91 = and i32 %90, 1048320
  %92 = or i32 %91, %89
  %93 = shl i32 %88, 12
  %94 = and i32 %93, -1048576
  %95 = or i32 %92, %94
  %96 = load ptr, ptr %79, align 16
  br label %97

97:                                               ; preds = %84, %78
  %98 = phi ptr [ %96, %84 ], [ %80, %78 ]
  %99 = phi i32 [ %86, %84 ], [ -1, %78 ]
  %100 = phi i32 [ %95, %84 ], [ 0, %78 ]
  %101 = getelementptr inbounds %struct.signal_struct, ptr %98, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.sighand_struct, ptr %104, i32 0, i32 3
  br label %106

106:                                              ; preds = %121, %97
  %107 = phi i32 [ 1, %97 ], [ %122, %121 ]
  %108 = phi ptr [ %105, %97 ], [ %123, %121 ]
  %109 = load ptr, ptr %108, align 4
  %110 = ptrtoint ptr %109 to i32
  switch i32 %110, label %111 [
    i32 1, label %112
    i32 0, label %121
  ]

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %106
  %113 = phi ptr [ %8, %111 ], [ %7, %106 ]
  %114 = add nsw i32 %107, -1
  %115 = and i32 %114, 31
  %116 = shl nuw i32 1, %115
  %117 = lshr i32 %114, 5
  %118 = getelementptr [2 x i32], ptr %113, i32 0, i32 %117
  %119 = load i32, ptr %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, ptr %118, align 4
  br label %121

121:                                              ; preds = %112, %106
  %122 = add nuw nsw i32 %107, 1
  %123 = getelementptr %struct.k_sigaction, ptr %108, i32 1
  %124 = icmp eq i32 %122, 65
  br i1 %124, label %125, label %106

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 40
  %127 = load i32, ptr %126, align 8
  %128 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 41
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 29
  %131 = load i64, ptr %130, align 8
  %132 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 30
  %133 = load i64, ptr %132, align 8
  %134 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 32
  %135 = load i64, ptr %134, align 8
  %136 = getelementptr %struct.signal_struct, ptr %80, i32 0, i32 50, i32 5
  %137 = load volatile i32, ptr %136, align 8
  %138 = icmp eq i32 %4, 0
  br i1 %138, label %174, label %139

139:                                              ; preds = %139, %125
  %140 = phi i32 [ %146, %139 ], [ 0, %125 ]
  %141 = phi i32 [ %149, %139 ], [ 0, %125 ]
  %142 = phi i64 [ %152, %139 ], [ 0, %125 ]
  %143 = phi ptr [ %155, %139 ], [ %3, %125 ]
  %144 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 78
  %145 = load i32, ptr %144, align 16
  %146 = add i32 %145, %140
  %147 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 79
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, %141
  %150 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 72
  %151 = load i64, ptr %150, align 8
  %152 = add i64 %151, %142
  %153 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 64
  %154 = load volatile ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %154, i32 -1380
  %156 = icmp eq ptr %155, %3
  br i1 %156, label %157, label %139

157:                                              ; preds = %139
  %158 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 38
  %159 = load i32, ptr %158, align 8
  %160 = add i32 %159, %146
  %161 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 39
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, %149
  call void @thread_group_cputime_adjusted(ptr noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %10) #6
  %164 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 31
  %165 = load i64, ptr %164, align 8
  %166 = add i64 %165, %152
  %167 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 12
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 5
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %157
  %172 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 8
  %173 = load i32, ptr %172, align 8
  br label %174

174:                                              ; preds = %171, %157, %125
  %175 = phi i32 [ 0, %125 ], [ %160, %171 ], [ %160, %157 ]
  %176 = phi i32 [ 0, %125 ], [ %163, %171 ], [ %163, %157 ]
  %177 = phi i64 [ 0, %125 ], [ %166, %171 ], [ %166, %157 ]
  %178 = phi i32 [ %13, %125 ], [ %173, %171 ], [ %13, %157 ]
  %179 = call i32 @__task_pid_nr_ns(ptr noundef %3, i32 noundef 3, ptr noundef %1) #6
  %180 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 55
  %181 = load ptr, ptr %180, align 4
  %182 = call i32 @__task_pid_nr_ns(ptr noundef %181, i32 noundef 1, ptr noundef %1) #6
  %183 = call i32 @__task_pid_nr_ns(ptr noundef %3, i32 noundef 2, ptr noundef %1) #6
  %184 = load ptr, ptr %103, align 4
  %185 = load i32, ptr %11, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %184, i32 noundef %185) #6
  br label %186

186:                                              ; preds = %174, %72
  %187 = phi i32 [ %99, %174 ], [ -1, %72 ]
  %188 = phi i32 [ %100, %174 ], [ 0, %72 ]
  %189 = phi i32 [ %182, %174 ], [ 0, %72 ]
  %190 = phi i32 [ %183, %174 ], [ -1, %72 ]
  %191 = phi i32 [ %179, %174 ], [ -1, %72 ]
  %192 = phi i32 [ %102, %174 ], [ 0, %72 ]
  %193 = phi i32 [ %127, %174 ], [ 0, %72 ]
  %194 = phi i32 [ %129, %174 ], [ 0, %72 ]
  %195 = phi i32 [ %175, %174 ], [ 0, %72 ]
  %196 = phi i32 [ %176, %174 ], [ 0, %72 ]
  %197 = phi i64 [ %131, %174 ], [ 0, %72 ]
  %198 = phi i64 [ %133, %174 ], [ 0, %72 ]
  %199 = phi i64 [ %135, %174 ], [ 0, %72 ]
  %200 = phi i64 [ %177, %174 ], [ 0, %72 ]
  %201 = phi i32 [ %137, %174 ], [ 0, %72 ]
  %202 = phi i32 [ %178, %174 ], [ %13, %72 ]
  br i1 %29, label %203, label %211

203:                                              ; preds = %186
  %204 = icmp eq i32 %4, 0
  %205 = icmp slt i32 %192, 2
  %206 = select i1 %204, i1 true, i1 %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %203
  %208 = load volatile i32, ptr %14, align 8
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i32
  br label %211

211:                                              ; preds = %207, %186
  %212 = phi i32 [ %210, %207 ], [ 0, %186 ]
  %213 = icmp eq i32 %4, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 78
  %216 = load i32, ptr %215, align 16
  %217 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 79
  %218 = load i32, ptr %217, align 4
  call void @task_cputime_adjusted(ptr noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %10) #6
  %219 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 72
  %220 = load i64, ptr %219, align 8
  br label %221

221:                                              ; preds = %214, %211, %203
  %222 = phi i32 [ %212, %211 ], [ %212, %214 ], [ 0, %203 ]
  %223 = phi i32 [ %195, %211 ], [ %216, %214 ], [ %195, %203 ]
  %224 = phi i32 [ %196, %211 ], [ %218, %214 ], [ %196, %203 ]
  %225 = phi i64 [ %200, %211 ], [ %220, %214 ], [ %200, %203 ]
  %226 = call i32 @task_prio(ptr noundef %3) #6
  %227 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 15
  %228 = load i32, ptr %227, align 4
  %229 = add i32 %228, -120
  %230 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 77
  %231 = load i64, ptr %230, align 8
  %232 = call i64 @nsec_to_clock_t(i64 noundef %231) #6
  %233 = call i32 @pid_nr_ns(ptr noundef %2, ptr noundef %1) #6
  %234 = sext i32 %233 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %234) #6
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.65) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false) #6, !annotation !8
  %235 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %236 = load i32, ptr %235, align 4
  %237 = and i32 %236, 32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %221
  call void @wq_worker_comm(ptr noundef nonnull %6, i32 noundef 64, ptr noundef %3) #6
  br label %246

240:                                              ; preds = %221
  %241 = and i32 %236, 2097152
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %240
  call void @get_kthread_comm(ptr noundef nonnull %6, i32 noundef 64, ptr noundef %3) #6
  br label %246

244:                                              ; preds = %240
  %245 = call ptr @__get_task_comm(ptr noundef nonnull %6, i32 noundef 64, ptr noundef %3) #6
  br label %246

246:                                              ; preds = %244, %243, %239
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.66) #6
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext %28) #6
  %247 = sext i32 %189 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %247) #6
  %248 = sext i32 %190 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %248) #6
  %249 = sext i32 %191 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %249) #6
  %250 = sext i32 %188 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %250) #6
  %251 = sext i32 %187 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %251) #6
  %252 = load i32, ptr %235, align 4
  %253 = zext i32 %252 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %253) #6
  %254 = zext i32 %223 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %254) #6
  %255 = zext i32 %193 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %255) #6
  %256 = zext i32 %224 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %256) #6
  %257 = zext i32 %194 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %257) #6
  %258 = load i64, ptr %9, align 8
  %259 = call i64 @nsec_to_clock_t(i64 noundef %258) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %259) #6
  %260 = load i64, ptr %10, align 8
  %261 = call i64 @nsec_to_clock_t(i64 noundef %260) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %261) #6
  %262 = call i64 @nsec_to_clock_t(i64 noundef %197) #6
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %262) #6
  %263 = call i64 @nsec_to_clock_t(i64 noundef %198) #6
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %263) #6
  %264 = sext i32 %226 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %264) #6
  %265 = sext i32 %229 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %265) #6
  %266 = sext i32 %192 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %266) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 0) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %232) #6
  %267 = zext i32 %75 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %267) #6
  br i1 %31, label %268, label %282

268:                                              ; preds = %246
  %269 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 40
  %270 = load volatile i32, ptr %269, align 4
  %271 = call i32 @llvm.smax.i32(i32 %270, i32 0) #6
  %272 = getelementptr %struct.anon.5, ptr %30, i32 0, i32 40, i32 0, i32 1
  %273 = load volatile i32, ptr %272, align 4
  %274 = call i32 @llvm.smax.i32(i32 %273, i32 0) #6
  %275 = add nuw i32 %274, %271
  %276 = getelementptr %struct.anon.5, ptr %30, i32 0, i32 40, i32 0, i32 3
  %277 = load volatile i32, ptr %276, align 4
  %278 = call i32 @llvm.smax.i32(i32 %277, i32 0) #6
  %279 = add i32 %275, %278
  %280 = zext i32 %279 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %280) #6
  %281 = zext i32 %201 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %281) #6
  br i1 %29, label %288, label %284

282:                                              ; preds = %246
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 0) #6
  %283 = zext i32 %201 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %283) #6
  br label %284

284:                                              ; preds = %282, %268
  %285 = phi i64 [ 0, %282 ], [ 1, %268 ]
  %286 = phi i32 [ 0, %282 ], [ 1, %268 ]
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %285) #6
  %287 = zext i32 %286 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %287) #6
  br label %297

288:                                              ; preds = %268
  %289 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 28
  %290 = load i32, ptr %289, align 8
  %291 = zext i32 %290 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %291) #6
  %292 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 29
  %293 = load i32, ptr %292, align 4
  %294 = zext i32 %293 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %294) #6
  %295 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 34
  %296 = load i32, ptr %295, align 8
  br label %297

297:                                              ; preds = %288, %284
  %298 = phi i32 [ %296, %288 ], [ 0, %284 ]
  %299 = zext i32 %298 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %299) #6
  %300 = zext i32 %73 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %300) #6
  %301 = zext i32 %74 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %301) #6
  %302 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 98, i32 1
  %303 = load i32, ptr %302, align 8
  %304 = and i32 %303, 2147483647
  %305 = zext i32 %304 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %305) #6
  %306 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 95
  %307 = load i32, ptr %306, align 8
  %308 = and i32 %307, 2147483647
  %309 = zext i32 %308 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %309) #6
  %310 = load i32, ptr %7, align 8
  %311 = and i32 %310, 2147483647
  %312 = zext i32 %311 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %312) #6
  %313 = load i32, ptr %8, align 8
  %314 = and i32 %313, 2147483647
  %315 = zext i32 %314 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %315) #6
  %316 = zext i32 %222 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %316) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 0) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 0) #6
  %317 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 43
  %318 = load i32, ptr %317, align 4
  %319 = sext i32 %318 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %319) #6
  %320 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %321 = load volatile i32, ptr %320, align 8
  %322 = zext i32 %321 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %322) #6
  %323 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 17
  %324 = load i32, ptr %323, align 4
  %325 = zext i32 %324 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %325) #6
  %326 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 25
  %327 = load i32, ptr %326, align 64
  %328 = zext i32 %327 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %328) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 0) #6
  %329 = call i64 @nsec_to_clock_t(i64 noundef %225) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %329) #6
  %330 = call i64 @nsec_to_clock_t(i64 noundef %199) #6
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %330) #6
  %331 = select i1 %31, i1 %29, i1 false
  br i1 %331, label %332, label %354

332:                                              ; preds = %297
  %333 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 30
  %334 = load i32, ptr %333, align 8
  %335 = zext i32 %334 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %335) #6
  %336 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 31
  %337 = load i32, ptr %336, align 4
  %338 = zext i32 %337 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %338) #6
  %339 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 32
  %340 = load i32, ptr %339, align 8
  %341 = zext i32 %340 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %341) #6
  %342 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 35
  %343 = load i32, ptr %342, align 4
  %344 = zext i32 %343 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %344) #6
  %345 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 36
  %346 = load i32, ptr %345, align 8
  %347 = zext i32 %346 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %347) #6
  %348 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 37
  %349 = load i32, ptr %348, align 4
  %350 = zext i32 %349 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %350) #6
  %351 = getelementptr inbounds %struct.anon.5, ptr %30, i32 0, i32 38
  %352 = load i32, ptr %351, align 8
  %353 = zext i32 %352 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %353) #6
  br label %355

354:                                              ; preds = %297
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.67) #6
  br label %355

355:                                              ; preds = %354, %332
  br i1 %29, label %356, label %358

356:                                              ; preds = %355
  %357 = sext i32 %202 to i64
  call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %357) #6
  br label %359

358:                                              ; preds = %355
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.68) #6
  br label %359

359:                                              ; preds = %358, %356
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  br i1 %31, label %360, label %361

360:                                              ; preds = %359
  call void @mmput(ptr noundef nonnull %30) #6
  br label %361

361:                                              ; preds = %360, %359
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_tgid_stat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @do_task_stat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_pid_statm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @get_task_mm(ptr noundef %3) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4
  %12 = call i32 @task_statm(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5) #6
  call void @mmput(ptr noundef nonnull %9) #6
  %13 = zext i32 %12 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %13) #6
  %14 = load i32, ptr %5, align 4
  %15 = zext i32 %14 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %15) #6
  %16 = load i32, ptr %6, align 4
  %17 = zext i32 %16 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %17) #6
  %18 = load i32, ptr %7, align 4
  %19 = zext i32 %18 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %19) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 0) #6
  %20 = load i32, ptr %8, align 4
  %21 = zext i32 %20 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %21) #6
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 0) #6
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %24

22:                                               ; preds = %4
  %23 = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 14) #6
  br label %24

24:                                               ; preds = %22, %11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_statm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_hex_ll(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_prctl_spec_ctrl_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_vsize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_task_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_get_pgrp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_devnum(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_prio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ll(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{i64 2148987047}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149213246}
!12 = !{i64 2149209070}
!13 = !{i64 2149209145, i64 2149209172, i64 2149209219, i64 2149209241, i64 2149209269, i64 2149209289}
!14 = !{i64 2149236249}
!15 = !{i64 2148987264}
!16 = !{i32 0, i32 33}
!17 = !{i64 2148032990}
!18 = !{i64 430949, i64 2147920920, i64 2147920946, i64 2147920993, i64 2147921015, i64 2147921043, i64 2147921063}
!19 = !{i64 2147935376, i64 2147935408, i64 2147935437, i64 2147935471, i64 2147935502, i64 2147935525}
!20 = !{i64 2148033193}
!21 = !{i64 417012, i64 417036, i64 417057, i64 417074, i64 417091}
