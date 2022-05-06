; ModuleID = '/llk/IR/fs/io-wq.c_pt.bc'
source_filename = "../fs/io-wq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_worker = type { %struct.refcount_struct, i32, %struct.hlist_nulls_node, %struct.list_head, ptr, ptr, ptr, ptr, %struct.raw_spinlock, %struct.completion, i32, %struct.callback_head, i32, %union.anon.73 }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.73 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.io_wqe = type { %struct.raw_spinlock, [2 x %struct.io_wqe_acct], i32, %struct.hlist_nulls_head, %struct.list_head, %struct.wait_queue_entry, ptr, [32 x ptr], [1 x %struct.cpumask] }
%struct.io_wqe_acct = type { i32, i32, i32, %struct.atomic_t, %struct.io_wq_work_list, i32 }
%struct.io_wq_work_list = type { ptr, ptr }
%struct.hlist_nulls_head = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.io_wq = type { i32, ptr, ptr, ptr, %struct.atomic_t, %struct.completion, %struct.hlist_node, ptr, [0 x ptr] }
%struct.io_cb_cancel_data = type { ptr, ptr, i32, i32, i8 }
%struct.io_wq_work = type { %struct.io_wq_work_node, i32 }
%struct.io_wq_work_node = type { ptr }
%struct.io_wq_data = type { ptr, ptr, ptr, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.io_wq_hash = type { %struct.refcount_struct, i32, %struct.wait_queue_head }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.kernel_siginfo = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.55 }
%struct.anon.55 = type { i32, i32, i32, i32, i32 }
%struct.online_data = type { i32, i8 }

@io_wq_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [11 x i8] c"fs/io-wq.c\00", align 1
@io_wq_create.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@io_wq_online = internal unnamed_addr global i32 0, align 4
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@io_wq_put_and_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__initcall__kmod_io_wq__314_1422_io_wq_init4 = internal global ptr @io_wq_init, section ".initcall4.init", align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"iou-wrk-%d\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@io_wqe_create_worker.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\014io-wq is not configured for unbound workers\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@__const.io_wq_destroy.match = private unnamed_addr constant { ptr, ptr, i32, i32, i8, [3 x i8] } { ptr @io_wq_work_match_all, ptr null, i32 0, i32 0, i8 1, [3 x i8] zeroinitializer }, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"io-wq/online\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_io_wq__314_1422_io_wq_init4], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @io_wq_worker_running(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.io_worker, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = or i32 %7, 2
  store i32 %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.io_worker, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = lshr i32 %7, 3
  %15 = and i32 %14, 1
  %16 = xor i32 %15, 1
  %17 = getelementptr %struct.io_wqe, ptr %13, i32 0, i32 1, i32 %16, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #17, !srcloc !8
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #17, !srcloc !9
  br label %19

19:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @io_wq_worker_sleeping(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 69
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.io_worker, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = and i32 %7, -3
  store i32 %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.io_worker, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void @_raw_spin_lock(ptr noundef %13) #17
  tail call fastcc void @io_wqe_dec_running(ptr noundef nonnull %3)
  %14 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  br label %17

17:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @io_wqe_dec_running(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  %9 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %8
  %10 = and i32 %5, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %1
  %13 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %8, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #17, !srcloc !8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #17, !srcloc !15
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %8, i32 4
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %8, i32 5
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #17, !srcloc !8
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #17, !srcloc !9
  %28 = getelementptr inbounds %struct.io_wqe, ptr %3, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.io_wq, ptr %29, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #17, !srcloc !8
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #17, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %32 = load i16, ptr %3, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %34 = tail call fastcc zeroext i1 @io_queue_worker_create(ptr noundef %0, ptr noundef %9, ptr noundef nonnull @create_worker_cb)
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  br label %35

35:                                               ; preds = %26, %21, %17, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @io_wq_enqueue(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @io_wqe_enqueue(ptr noundef %4, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @io_wqe_enqueue(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.io_cb_cancel_data, align 4
  %4 = getelementptr inbounds %struct.io_wq_work, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  %8 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %7
  %9 = getelementptr inbounds %struct.io_wqe, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %5, 1
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %36, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.io_wq, ptr %10, i32 0, i32 2
  %19 = getelementptr inbounds %struct.io_wq, ptr %10, i32 0, i32 1
  %20 = getelementptr inbounds %struct.io_wq_work, ptr %1, i32 0, i32 1
  %21 = or i32 %5, 1
  store i32 %21, ptr %20, align 4
  %22 = load ptr, ptr %18, align 4
  tail call void %22(ptr noundef %1) #17
  %23 = load ptr, ptr %19, align 4
  %24 = tail call ptr %23(ptr noundef %1) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %114, label %26

26:                                               ; preds = %26, %17
  %27 = phi ptr [ %34, %26 ], [ %24, %17 ]
  %28 = getelementptr inbounds %struct.io_wq_work, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.io_wq_work, ptr %27, i32 0, i32 1
  %31 = or i32 %29, 1
  store i32 %31, ptr %30, align 4
  %32 = load ptr, ptr %18, align 4
  tail call void %32(ptr noundef %27) #17
  %33 = load ptr, ptr %19, align 4
  %34 = tail call ptr %33(ptr noundef %27) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %114, label %26

36:                                               ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef %0) #17
  %37 = load i32, ptr %4, align 4
  %38 = lshr i32 %37, 2
  %39 = and i32 %38, 1
  %40 = and i32 %37, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %50, %36
  %43 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %39, i32 4
  store ptr null, ptr %1, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %39, i32 4, i32 1
  br i1 %45, label %47, label %48

47:                                               ; preds = %42
  store ptr %1, ptr %46, align 4
  store volatile ptr %1, ptr %43, align 4
  br label %60

48:                                               ; preds = %42
  %49 = load ptr, ptr %46, align 4
  store ptr %1, ptr %49, align 4
  store ptr %1, ptr %46, align 4
  br label %60

50:                                               ; preds = %36
  %51 = lshr i32 %37, 24
  %52 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 7, i32 %51
  %53 = load ptr, ptr %52, align 4
  store ptr %1, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %42, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %53, align 4
  store ptr %1, ptr %53, align 4
  store ptr %56, ptr %1, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %39, i32 4, i32 1
  store ptr %1, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %55, %48, %47
  %61 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %7, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %61) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %62 = tail call fastcc zeroext i1 @io_wqe_activate_free_worker(ptr noundef %0, ptr noundef %8)
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %63 = load i16, ptr %0, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  br i1 %62, label %114, label %65

65:                                               ; preds = %60
  %66 = and i32 %5, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %7, i32 3
  %70 = load volatile i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %68, %65
  %73 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %7, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80, !prof !19

76:                                               ; preds = %72
  %77 = load i1, ptr @io_wqe_create_worker.__already_done, align 1
  br i1 %77, label %80, label %78, !prof !20

78:                                               ; preds = %76
  store i1 true, ptr @io_wqe_create_worker.__already_done, align 1
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #18
  br label %80

80:                                               ; preds = %78, %76, %72
  tail call void @_raw_spin_lock(ptr noundef %0) #17
  %81 = load i32, ptr %8, align 4
  %82 = load i32, ptr %73, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %85 = load i16, ptr %0, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  br label %114

87:                                               ; preds = %80
  %88 = add nuw i32 %81, 1
  store i32 %88, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %89 = load i16, ptr %0, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %91 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %7, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #17, !srcloc !8
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #17, !srcloc !9
  %93 = load ptr, ptr %9, align 4
  %94 = getelementptr inbounds %struct.io_wq, ptr %93, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #17, !srcloc !8
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #17, !srcloc !9
  %96 = load ptr, ptr %9, align 4
  %97 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %7, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = tail call fastcc zeroext i1 @create_io_worker(ptr noundef %96, ptr noundef %0, i32 noundef %98) #17
  br i1 %99, label %114, label %100, !prof !20

100:                                              ; preds = %87
  tail call void @_raw_spin_lock(ptr noundef %0) #17
  %101 = load i32, ptr %8, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %104 = getelementptr inbounds i8, ptr %3, i32 16
  store i32 0, ptr %104, align 4, !annotation !21
  store ptr @io_wq_work_match_item, ptr %3, align 4
  %105 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %3, i32 0, i32 1
  store ptr %1, ptr %105, align 4
  %106 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %3, i32 0, i32 2
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %3, i32 0, i32 3
  store i32 0, ptr %107, align 4
  %108 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %3)
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  tail call void @_raw_spin_lock(ptr noundef %0) #17
  br label %110

110:                                              ; preds = %109, %103
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  br label %111

111:                                              ; preds = %110, %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %112 = load i16, ptr %0, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  br label %114

114:                                              ; preds = %111, %87, %84, %68, %60, %26, %17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @io_wq_hash_work(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i32
  %4 = mul i32 %3, 1640531527
  %5 = lshr i32 %4, 3
  %6 = and i32 %5, 520093696
  %7 = getelementptr inbounds %struct.io_wq_work, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %6, %8
  %10 = or i32 %9, 2
  store i32 %10, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @io_wq_cancel_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.io_cb_cancel_data, align 4
  %6 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #17
  %7 = getelementptr inbounds i8, ptr %5, i32 16
  store i32 0, ptr %7, align 4, !annotation !21
  store ptr %1, ptr %5, align 4
  %8 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %5, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %5, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %5, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %5, i32 0, i32 4
  store i8 %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  call void @_raw_spin_lock(ptr noundef %13) #17
  %14 = getelementptr %struct.io_wqe, ptr %13, i32 0, i32 1, i32 0
  %15 = getelementptr %struct.io_wqe, ptr %13, i32 0, i32 1, i32 1
  br label %16

16:                                               ; preds = %23, %4
  %17 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %5) #17
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %13, ptr noundef %15, ptr noundef nonnull %5) #17
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load i8, ptr %11, align 4
  %22 = icmp eq i8 %21, 0
  br label %26

23:                                               ; preds = %18, %16
  call void @_raw_spin_lock(ptr noundef %13) #17
  %24 = load i8, ptr %11, align 4, !range !22
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %16

26:                                               ; preds = %23, %20
  %27 = phi i1 [ %22, %20 ], [ true, %23 ]
  %28 = load i32, ptr %10, align 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %29, i1 %27, i1 false
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %32 = load i16, ptr %13, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %13, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  br label %43

34:                                               ; preds = %26
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  call fastcc void @io_wq_for_each_worker(ptr noundef %13, ptr noundef nonnull @io_wq_worker_cancel, ptr noundef nonnull %5) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %35 = load i16, ptr %13, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %13, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %37 = load i32, ptr %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, ptr %10, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 2, i32 0
  br label %43

43:                                               ; preds = %39, %34, %31
  %44 = phi i32 [ %42, %39 ], [ 0, %31 ], [ 1, %34 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #17
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @io_wq_create(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.io_wq_data, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.io_wq_data, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i1 [ true, %2 ], [ %9, %6 ]
  %12 = load i1, ptr @io_wq_create.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !19

15:                                               ; preds = %10
  store i1 true, ptr @io_wq_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1150, i32 noundef 9, ptr noundef null) #17
  br label %16

16:                                               ; preds = %15, %10
  br i1 %11, label %116, label %17

17:                                               ; preds = %16
  %18 = icmp eq i32 %0, 0
  %19 = load i1, ptr @io_wq_create.__already_done.1, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !19

22:                                               ; preds = %17
  store i1 true, ptr @io_wq_create.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1152, i32 noundef 9, ptr noundef null) #17
  br label %23

23:                                               ; preds = %22, %17
  br i1 %18, label %116, label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 52) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %116, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr @io_wq_online, align 4
  %30 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 6
  %31 = tail call i32 @__cpuhp_state_add_instance(i32 noundef %29, ptr noundef %30, i1 noundef zeroext false) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %113

33:                                               ; preds = %28
  %34 = load ptr, ptr %1, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #17, !srcloc !8
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #17, !srcloc !23
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !19

38:                                               ; preds = %33
  %39 = add i32 %36, 1
  %40 = or i32 %39, %36
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42, !prof !20

42:                                               ; preds = %38, %33
  %43 = phi i32 [ 2, %33 ], [ 1, %38 ]
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef %43) #17
  br label %44

44:                                               ; preds = %42, %38
  %45 = load ptr, ptr %1, align 4
  %46 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 3
  store ptr %45, ptr %46, align 4
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.io_wq_data, ptr %1, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 2
  store ptr %50, ptr %51, align 8
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 232) #19
  %54 = icmp eq ptr %53, null
  br i1 %54, label %97, label %55

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 8
  %57 = load i32, ptr @__cpu_online_mask, align 4
  store i32 %57, ptr %56, align 4
  %58 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 8
  store ptr %53, ptr %58, align 8
  %59 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 2
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 1, i32 0, i32 1
  store i32 %0, ptr %60, align 8
  %61 = tail call ptr @llvm.thread.pointer() #17
  %62 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 93
  %63 = load ptr, ptr %62, align 16
  %64 = getelementptr %struct.signal_struct, ptr %63, i32 0, i32 50, i32 6
  %65 = load volatile i32, ptr %64, align 8
  %66 = getelementptr %struct.io_wqe, ptr %53, i32 0, i32 1, i32 1, i32 1
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 5, i32 3
  store volatile ptr %67, ptr %67, align 8
  %68 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 5, i32 3, i32 1
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 5, i32 2
  store ptr @io_wqe_hash_wake, ptr %69, align 4
  %70 = getelementptr %struct.io_wqe, ptr %53, i32 0, i32 1, i32 0, i32 2
  store i32 0, ptr %70, align 4
  %71 = getelementptr %struct.io_wqe, ptr %53, i32 0, i32 1, i32 0, i32 3
  store volatile i32 0, ptr %71, align 8
  %72 = getelementptr %struct.io_wqe, ptr %53, i32 0, i32 1, i32 0, i32 4
  store ptr null, ptr %72, align 4
  %73 = getelementptr %struct.io_wqe, ptr %53, i32 0, i32 1, i32 1, i32 2
  store i32 1, ptr %73, align 8
  %74 = getelementptr %struct.io_wqe, ptr %53, i32 0, i32 1, i32 1, i32 3
  store volatile i32 0, ptr %74, align 4
  %75 = getelementptr %struct.io_wqe, ptr %53, i32 0, i32 1, i32 1, i32 4
  store ptr null, ptr %75, align 8
  %76 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 6
  store ptr %26, ptr %76, align 8
  store i32 0, ptr %53, align 8
  %77 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 3
  store ptr inttoptr (i32 1 to ptr), ptr %77, align 8
  %78 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 4
  store volatile ptr %78, ptr %78, align 4
  %79 = getelementptr inbounds %struct.io_wqe, ptr %53, i32 0, i32 4, i32 1
  store ptr %78, ptr %79, align 8
  %80 = getelementptr inbounds %struct.io_wq_data, ptr %1, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #17, !srcloc !8
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #17, !srcloc !23
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86, !prof !19

86:                                               ; preds = %55
  %87 = add i32 %84, 1
  %88 = or i32 %87, %84
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %92, label %90, !prof !20

90:                                               ; preds = %86, %55
  %91 = phi i32 [ 2, %55 ], [ 1, %86 ]
  tail call void @refcount_warn_saturate(ptr noundef %82, i32 noundef %91) #17
  br label %92

92:                                               ; preds = %90, %86
  %93 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 7
  store ptr %81, ptr %93, align 4
  %94 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 4
  store volatile i32 1, ptr %94, align 8
  %95 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 5
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %96, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #17
  br label %116

97:                                               ; preds = %44
  %98 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #17, !srcloc !8
  %99 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #17, !srcloc !25
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = icmp sgt i32 %100, 0
  br i1 %103, label %106, label %104, !prof !20

104:                                              ; preds = %102
  tail call void @refcount_warn_saturate(ptr noundef %98, i32 noundef 3) #17
  br label %106

105:                                              ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  tail call void @kfree(ptr noundef %98) #17
  br label %106

106:                                              ; preds = %105, %104, %102
  %107 = load i32, ptr @io_wq_online, align 4
  %108 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %107, ptr noundef %30, i1 noundef zeroext false) #17
  %109 = getelementptr inbounds %struct.io_wq, ptr %26, i32 0, i32 8
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  tail call void @kfree(ptr noundef nonnull %110) #17
  br label %113

113:                                              ; preds = %112, %106, %28
  %114 = phi i32 [ %31, %28 ], [ -12, %112 ], [ -12, %106 ]
  tail call void @kfree(ptr noundef nonnull %26) #17
  %115 = inttoptr i32 %114 to ptr
  br label %116

116:                                              ; preds = %113, %92, %24, %23, %16
  %117 = phi ptr [ %115, %113 ], [ %26, %92 ], [ inttoptr (i32 -22 to ptr), %16 ], [ inttoptr (i32 -22 to ptr), %23 ], [ inttoptr (i32 -12 to ptr), %24 ]
  ret ptr %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @io_wqe_hash_wake(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -76
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %11 = getelementptr i8, ptr %0, i32 -48
  %12 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %11) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = getelementptr i8, ptr %0, i32 -72
  %16 = tail call fastcc zeroext i1 @io_wqe_activate_free_worker(ptr noundef %5, ptr noundef %15)
  br label %17

17:                                               ; preds = %14, %4
  %18 = getelementptr i8, ptr %0, i32 -20
  %19 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %18) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 -44
  %23 = tail call fastcc zeroext i1 @io_wqe_activate_free_worker(ptr noundef %5, ptr noundef %22)
  br label %24

24:                                               ; preds = %21, %17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @io_wq_exit_start(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @io_wq_put_and_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.io_cb_cancel_data, align 4
  %3 = load volatile i32, ptr %0, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @io_wq_put_and_exit.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !19

9:                                                ; preds = %1
  store i1 true, ptr @io_wq_put_and_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1297, i32 noundef 9, ptr noundef null) #17
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @task_work_cancel_match(ptr noundef nonnull %12, ptr noundef nonnull @io_task_work_match, ptr noundef %0) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %21, %17 ], [ %15, %14 ]
  %19 = getelementptr i8, ptr %18, i32 -64
  tail call fastcc void @io_worker_cancel_cb(ptr noundef %19) #17
  %20 = load ptr, ptr %11, align 4
  %21 = tail call ptr @task_work_cancel_match(ptr noundef %20, ptr noundef nonnull @io_task_work_match, ptr noundef %0) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %14
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %24 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  tail call fastcc void @io_wq_for_each_worker(ptr noundef %25, ptr noundef nonnull @io_wq_worker_wake, ptr noundef null) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  %26 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #17, !srcloc !8
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #17, !srcloc !15
  %28 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 5
  tail call void @complete(ptr noundef %31) #17
  br label %32

32:                                               ; preds = %30, %23
  %33 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 5
  tail call void @wait_for_completion(ptr noundef %33) #17
  %34 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.io_wq_hash, ptr %35, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %36) #17
  %37 = load ptr, ptr %24, align 4
  %38 = getelementptr inbounds %struct.io_wqe, ptr %37, i32 0, i32 5, i32 3
  %39 = getelementptr inbounds %struct.io_wqe, ptr %37, i32 0, i32 5, i32 3, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store volatile ptr %38, ptr %38, align 4
  store ptr %38, ptr %39, align 4
  %43 = load ptr, ptr %34, align 4
  %44 = getelementptr inbounds %struct.io_wq_hash, ptr %43, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %45 = load i16, ptr %44, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  %47 = load ptr, ptr %11, align 4
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #17, !srcloc !8
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #17, !srcloc !25
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %32
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %56, label %54, !prof !20

54:                                               ; preds = %52
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef 3) #17
  br label %56

55:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  tail call void @__put_task_struct(ptr noundef %47) #17
  br label %56

56:                                               ; preds = %55, %54, %52
  store ptr null, ptr %11, align 4
  br label %57

57:                                               ; preds = %56, %10
  %58 = load i32, ptr @io_wq_online, align 4
  %59 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 6
  %60 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %58, ptr noundef %59, i1 noundef zeroext false) #17
  %61 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.io_wq_destroy.match, i32 20, i1 false) #17
  tail call void @_raw_spin_lock(ptr noundef %62) #17
  %63 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %2, i32 0, i32 4
  %64 = getelementptr %struct.io_wqe, ptr %62, i32 0, i32 1, i32 0
  %65 = getelementptr %struct.io_wqe, ptr %62, i32 0, i32 1, i32 1
  br label %66

66:                                               ; preds = %70, %57
  %67 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %62, ptr noundef %64, ptr noundef nonnull %2) #17
  br i1 %67, label %70, label %68

68:                                               ; preds = %66
  %69 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %62, ptr noundef %65, ptr noundef nonnull %2) #17
  br i1 %69, label %70, label %73

70:                                               ; preds = %68, %66
  tail call void @_raw_spin_lock(ptr noundef %62) #17
  %71 = load i8, ptr %63, align 4, !range !22
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %66

73:                                               ; preds = %70, %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %74 = load i16, ptr %62, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  tail call void @kfree(ptr noundef %62) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  %76 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #17, !srcloc !8
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #17, !srcloc !25
  %79 = extractvalue { i32, i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = icmp sgt i32 %79, 0
  br i1 %82, label %85, label %83, !prof !20

83:                                               ; preds = %81
  tail call void @refcount_warn_saturate(ptr noundef %77, i32 noundef 3) #17
  br label %85

84:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  tail call void @kfree(ptr noundef %77) #17
  br label %85

85:                                               ; preds = %84, %83, %81
  tail call void @kfree(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @io_wq_cpu_affinity(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %3 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr @__cpu_online_mask, ptr %1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.io_wqe, ptr %4, i32 0, i32 8
  store i32 %7, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @io_wq_max_workers(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %5 = load i32, ptr %1, align 4
  %6 = load ptr, ptr %4, align 16
  %7 = getelementptr %struct.signal_struct, ptr %6, i32 0, i32 50, i32 6
  %8 = load volatile i32, ptr %7, align 8
  %9 = icmp ugt i32 %5, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load volatile i32, ptr %7, align 8
  store i32 %11, ptr %1, align 4
  %12 = load ptr, ptr %4, align 16
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %6, %2 ], [ %12, %10 ]
  %15 = getelementptr i32, ptr %1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.signal_struct, ptr %14, i32 0, i32 50, i32 6
  %18 = load volatile i32, ptr %17, align 8
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load volatile i32, ptr %17, align 8
  store i32 %21, ptr %15, align 4
  br label %22

22:                                               ; preds = %20, %13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %23 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  tail call void @_raw_spin_lock(ptr noundef %24) #17
  %25 = getelementptr %struct.io_wqe, ptr %24, i32 0, i32 1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %1, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 %27, ptr %25, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = getelementptr %struct.io_wqe, ptr %24, i32 0, i32 1, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %15, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 %33, ptr %31, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = tail call i32 @llvm.smax.i32(i32 %32, i32 0)
  %38 = tail call i32 @llvm.smax.i32(i32 %26, i32 0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %39 = load i16, ptr %24, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  store i32 %38, ptr %1, align 4
  store i32 %37, ptr %15, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @io_wq_init() #6 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.5, i1 noundef zeroext false, ptr noundef nonnull @io_wq_cpu_online, ptr noundef nonnull @io_wq_cpu_offline, i1 noundef zeroext true) #17
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i32 %1, ptr @io_wq_online, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi i32 [ 0, %3 ], [ %1, %0 ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @io_queue_worker_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.io_wqe, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %86

11:                                               ; preds = %3
  %12 = load volatile i32, ptr %0, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %24, %11
  %15 = phi i32 [ %22, %24 ], [ %12, %11 ]
  %16 = add i32 %15, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #17, !srcloc !8
  br label %17

17:                                               ; preds = %17, %14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %15, i32 %16, ptr elementtype(i32) %0) #17, !srcloc !29
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %17

21:                                               ; preds = %17
  %22 = extractvalue { i32, i32 } %18, 1
  %23 = icmp eq i32 %22, %15
  br i1 %23, label %26, label %24, !prof !20

24:                                               ; preds = %21
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %14

26:                                               ; preds = %24, %21, %11
  %27 = phi i32 [ 0, %11 ], [ %15, %21 ], [ 0, %24 ]
  %28 = add i32 %27, 1
  %29 = or i32 %28, %27
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %32, label %31, !prof !20

31:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 0) #17
  br label %32

32:                                               ; preds = %31, %26
  %33 = icmp eq i32 %27, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 10
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %34
  %40 = load volatile i32, ptr %35, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #17, !srcloc !8
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #17, !srcloc !30
  %45 = extractvalue { i32, i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !31
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.io_wq, ptr %7, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #17, !srcloc !8
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #17, !srcloc !9
  %51 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 11
  %52 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 11, i32 1
  store ptr %2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.io_wqe_acct, ptr %1, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 12
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.io_wq, ptr %7, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @task_work_add(ptr noundef %57, ptr noundef %51, i32 noundef 2) #17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  %61 = load volatile i32, ptr %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call fastcc void @io_wq_cancel_tw_create(ptr noundef %7)
  br label %65

65:                                               ; preds = %64, %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #17, !srcloc !8
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #17, !srcloc !15
  %67 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %93, label %96

69:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #17, !srcloc !8
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #17, !srcloc !15
  %71 = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.io_wq, ptr %7, i32 0, i32 5
  tail call void @complete(ptr noundef %74) #17
  br label %75

75:                                               ; preds = %73, %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #17, !srcloc !8
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #17, !srcloc !33
  br label %77

77:                                               ; preds = %75, %43, %39, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #17, !srcloc !8
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #17, !srcloc !25
  %79 = extractvalue { i32, i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = icmp sgt i32 %79, 0
  br i1 %82, label %86, label %83, !prof !20

83:                                               ; preds = %81
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #17
  br label %86

84:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %85 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 9
  tail call void @complete(ptr noundef %85) #17
  br label %86

86:                                               ; preds = %84, %83, %81, %32, %3
  %87 = getelementptr inbounds %struct.io_wqe_acct, ptr %1, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #17, !srcloc !8
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #17, !srcloc !34
  %89 = getelementptr inbounds %struct.io_wq, ptr %7, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #17, !srcloc !8
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #17, !srcloc !15
  %91 = extractvalue { i32, i32 } %90, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86, %65
  %94 = phi i1 [ true, %65 ], [ false, %86 ]
  %95 = getelementptr inbounds %struct.io_wq, ptr %7, i32 0, i32 5
  tail call void @complete(ptr noundef %95) #17
  br label %96

96:                                               ; preds = %93, %86, %65
  %97 = phi i1 [ true, %65 ], [ false, %86 ], [ %94, %93 ]
  ret i1 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @create_worker_cb(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.io_wqe, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %7
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %7, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = add nuw i32 %9, 1
  store i32 %14, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %15 = load i16, ptr %3, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %17 = load i32, ptr %6, align 4
  %18 = tail call fastcc zeroext i1 @create_io_worker(ptr noundef %5, ptr noundef %3, i32 noundef %17)
  br label %30

19:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %20 = load i16, ptr %3, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %22 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %7, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #17, !srcloc !8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #17, !srcloc !34
  %24 = getelementptr inbounds %struct.io_wq, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #17, !srcloc !8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #17, !srcloc !15
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.io_wq, ptr %5, i32 0, i32 5
  tail call void @complete(ptr noundef %29) #17
  br label %30

30:                                               ; preds = %28, %19, %13
  %31 = getelementptr i8, ptr %0, i32 -64
  %32 = getelementptr i8, ptr %0, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #17, !srcloc !8
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #17, !srcloc !33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #17, !srcloc !8
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #17, !srcloc !25
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %42, label %39, !prof !20

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef 3) #17
  br label %42

40:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %41 = getelementptr i8, ptr %0, i32 -20
  tail call void @complete(ptr noundef %41) #17
  br label %42

42:                                               ; preds = %40, %39, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @io_wq_cancel_tw_create(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @task_work_cancel_match(ptr noundef %3, ptr noundef nonnull @io_task_work_match, ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -64
  tail call fastcc void @io_worker_cancel_cb(ptr noundef %8)
  %9 = load ptr, ptr %2, align 4
  %10 = tail call ptr @task_work_cancel_match(ptr noundef %9, ptr noundef nonnull @io_task_work_match, ptr noundef %0) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @io_worker_ref_put(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #17, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #17, !srcloc !15
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 5
  tail call void @complete(ptr noundef %7) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_work_cancel_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @io_task_work_match(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #7 {
  %3 = getelementptr inbounds %struct.callback_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @create_worker_cb
  %6 = icmp eq ptr %4, @create_worker_cont
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.io_wqe, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i1 [ %13, %8 ], [ false, %2 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @io_worker_cancel_cb(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  %9 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %8
  %10 = getelementptr inbounds %struct.io_wqe, ptr %3, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %8, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #17, !srcloc !8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #17, !srcloc !34
  %14 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef %14) #17
  %15 = load i32, ptr %9, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %9, align 4
  %17 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %20 = getelementptr inbounds %struct.io_wq, ptr %11, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #17, !srcloc !8
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #17, !srcloc !15
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.io_wq, ptr %11, i32 0, i32 5
  tail call void @complete(ptr noundef %25) #17
  br label %26

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #17, !srcloc !8
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #17, !srcloc !33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #17, !srcloc !8
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #17, !srcloc !25
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %37, label %34, !prof !20

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #17
  br label %37

35:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %36 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 9
  tail call void @complete(ptr noundef %36) #17
  br label %37

37:                                               ; preds = %35, %34, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @create_worker_cont(ptr noundef %0) #0 {
  %2 = alloca %struct.io_cb_cancel_data, align 4
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = getelementptr i8, ptr %0, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #17, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #17, !srcloc !33
  %6 = getelementptr i8, ptr %0, i32 -36
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.io_wqe, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @create_io_thread(ptr noundef nonnull @io_wqe_worker, ptr noundef %3, i32 noundef %9) #17
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %48, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 69
  store ptr %3, ptr %13, align 64
  %14 = getelementptr i8, ptr %0, i32 -40
  store ptr %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.io_wqe, ptr %7, i32 0, i32 8
  %16 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %10, ptr noundef %15) #17
  %17 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 67108864
  store i32 %19, ptr %17, align 4
  tail call void @_raw_spin_lock(ptr noundef %7) #17
  %20 = getelementptr i8, ptr %0, i32 -56
  %21 = getelementptr inbounds %struct.io_wqe, ptr %7, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  store ptr %22, ptr %20, align 4
  %23 = getelementptr i8, ptr %0, i32 -52
  store volatile ptr %21, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  store volatile ptr %20, ptr %21, align 4
  %24 = ptrtoint ptr %22 to i32
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.hlist_nulls_node, ptr %22, i32 0, i32 1
  store volatile ptr %20, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %12
  %30 = getelementptr i8, ptr %0, i32 -48
  %31 = getelementptr inbounds %struct.io_wqe, ptr %7, i32 0, i32 4
  %32 = getelementptr inbounds %struct.io_wqe, ptr %7, i32 0, i32 4, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %31, ptr %30, align 4
  %34 = getelementptr i8, ptr %0, i32 -44
  store ptr %33, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  store volatile ptr %30, ptr %33, align 4
  store ptr %30, ptr %32, align 4
  %35 = getelementptr i8, ptr %0, i32 -60
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 4
  store i32 %37, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %38 = load i16, ptr %7, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  tail call void @wake_up_new_task(ptr noundef %10) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #17, !srcloc !8
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #17, !srcloc !25
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %103, label %45, !prof !20

45:                                               ; preds = %43
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #17
  br label %103

46:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %47 = getelementptr i8, ptr %0, i32 -20
  tail call void @complete(ptr noundef %47) #17
  br label %103

48:                                               ; preds = %1
  %49 = ptrtoint ptr %10 to i32
  %50 = tail call ptr @llvm.thread.pointer() #17
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 98, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 256
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %48
  switch i32 %49, label %60 [
    i32 -11, label %90
    i32 -512, label %90
    i32 -513, label %90
    i32 -514, label %90
  ]

60:                                               ; preds = %59, %54
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr i8, ptr %0, i32 -60
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 3
  %65 = and i32 %64, 1
  %66 = xor i32 %65, 1
  %67 = getelementptr %struct.io_wqe, ptr %61, i32 0, i32 1, i32 %66
  %68 = getelementptr %struct.io_wqe, ptr %61, i32 0, i32 1, i32 %66, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #17, !srcloc !8
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #17, !srcloc !34
  tail call void @_raw_spin_lock(ptr noundef %7) #17
  %70 = load i32, ptr %67, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %67, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.io_wq_destroy.match, i32 20, i1 false)
  %74 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %7, ptr noundef %67, ptr noundef nonnull %2)
  br i1 %74, label %75, label %77

75:                                               ; preds = %75, %73
  tail call void @_raw_spin_lock(ptr noundef %7) #17
  %76 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %7, ptr noundef %67, ptr noundef nonnull %2)
  br i1 %76, label %75, label %77

77:                                               ; preds = %75, %73
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  br label %78

78:                                               ; preds = %77, %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %79 = load i16, ptr %7, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %81 = getelementptr inbounds %struct.io_wqe, ptr %7, i32 0, i32 6
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.io_wq, ptr %82, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #17, !srcloc !8
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #17, !srcloc !15
  %85 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.io_wq, ptr %82, i32 0, i32 5
  tail call void @complete(ptr noundef %88) #17
  br label %89

89:                                               ; preds = %87, %78
  tail call void @kfree(ptr noundef %3) #17
  br label %103

90:                                               ; preds = %59, %59, %59, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #17, !srcloc !8
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #17, !srcloc !25
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = icmp sgt i32 %92, 0
  br i1 %95, label %99, label %96, !prof !20

96:                                               ; preds = %94
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #17
  br label %99

97:                                               ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %98 = getelementptr i8, ptr %0, i32 -20
  tail call void @complete(ptr noundef %98) #17
  br label %99

99:                                               ; preds = %97, %96, %94
  %100 = getelementptr i8, ptr %0, i32 12
  %101 = load ptr, ptr @system_wq, align 4
  %102 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %101, ptr noundef %100) #17
  br label %103

103:                                              ; preds = %99, %89, %46, %45, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @create_io_thread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @io_wqe_worker(ptr noundef %0) #8 {
  %2 = alloca [16 x i8], align 1
  %3 = alloca %struct.ksignal, align 4
  %4 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = getelementptr %struct.io_wqe, ptr %5, i32 0, i32 1, i32 %10
  %12 = getelementptr inbounds %struct.io_wqe, ptr %5, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !21
  %14 = or i32 %7, 3
  store i32 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.io_wq, ptr %13, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 52
  %18 = load i32, ptr %17, align 8
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %18)
  %20 = tail call ptr @llvm.thread.pointer() #17
  call void @__set_task_comm(ptr noundef %20, ptr noundef nonnull %2, i1 noundef zeroext false) #17
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %22 = getelementptr %struct.io_wqe, ptr %5, i32 0, i32 1, i32 %10, i32 5
  %23 = getelementptr %struct.io_wqe, ptr %5, i32 0, i32 1, i32 %10, i32 4
  %24 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 2
  %25 = getelementptr inbounds %struct.io_wqe, ptr %5, i32 0, i32 3
  %26 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 102
  %28 = load volatile i32, ptr %13, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %85, %1
  %32 = phi i1 [ %86, %85 ], [ false, %1 ]
  store volatile i32 1, ptr %21, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !37
  call void @_raw_spin_lock(ptr noundef %5) #17
  %33 = load volatile ptr, ptr %23, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %39, %31
  %36 = load volatile i32, ptr %22, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  call fastcc void @io_worker_handle_work(ptr noundef %0)
  call void @_raw_spin_lock(ptr noundef %5) #17
  %40 = load volatile ptr, ptr %23, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35

42:                                               ; preds = %39, %35, %31
  br i1 %32, label %43, label %50

43:                                               ; preds = %42
  %44 = load i32, ptr %11, align 4
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = add i32 %44, -1
  store i32 %47, ptr %11, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %48 = load i16, ptr %5, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  store volatile i32 0, ptr %21, align 8
  br label %90

50:                                               ; preds = %43, %42
  %51 = load i32, ptr %6, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = or i32 %51, 4
  store i32 %55, ptr %6, align 4
  %56 = load ptr, ptr %25, align 4
  store ptr %56, ptr %24, align 4
  store volatile ptr %25, ptr %26, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  store volatile ptr %24, ptr %25, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.hlist_nulls_node, ptr %56, i32 0, i32 1
  store volatile ptr %24, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %54, %50
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %63 = load i16, ptr %5, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %65 = load volatile i32, ptr %20, align 4
  %66 = and i32 %65, 256
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68, !prof !20

68:                                               ; preds = %62
  store volatile i32 0, ptr %21, align 8
  call void @_clear_bit(i32 noundef 8, ptr noundef %20) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  %69 = load ptr, ptr %27, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %68
  call void @task_work_run() #17
  br label %85

72:                                               ; preds = %62
  %73 = call i32 @schedule_timeout(i32 noundef 500) #17
  %74 = load volatile i32, ptr %20, align 4
  %75 = and i32 %74, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81, !prof !20

77:                                               ; preds = %72
  %78 = load volatile i32, ptr %20, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77, %72
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !21
  %82 = call zeroext i1 @get_signal(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  br i1 %82, label %90, label %85

83:                                               ; preds = %77
  %84 = icmp eq i32 %73, 0
  br label %85

85:                                               ; preds = %83, %81, %71, %68
  %86 = phi i1 [ false, %81 ], [ %84, %83 ], [ false, %71 ], [ false, %68 ]
  %87 = load volatile i32, ptr %13, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %31, label %90

90:                                               ; preds = %85, %81, %46, %1
  %91 = load volatile i32, ptr %13, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  call void @_raw_spin_lock(ptr noundef %5) #17
  call fastcc void @io_worker_handle_work(ptr noundef %0)
  br label %95

95:                                               ; preds = %94, %90
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr inbounds %struct.io_wqe, ptr %96, i32 0, i32 6
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.io_wq, ptr %98, i32 0, i32 7
  %100 = load ptr, ptr %99, align 4
  %101 = call ptr @task_work_cancel_match(ptr noundef %100, ptr noundef nonnull @io_task_worker_match, ptr noundef %0) #17
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %103, %95
  call fastcc void @io_worker_cancel_cb(ptr noundef %0) #17
  %104 = load ptr, ptr %99, align 4
  %105 = call ptr @task_work_cancel_match(ptr noundef %104, ptr noundef nonnull @io_task_worker_match, ptr noundef %0) #17
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %103

107:                                              ; preds = %103, %95
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #17, !srcloc !8
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #17, !srcloc !25
  %109 = extractvalue { i32, i32, i32 } %108, 0
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = icmp sgt i32 %109, 0
  br i1 %112, label %116, label %113, !prof !20

113:                                              ; preds = %111
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #17
  br label %116

114:                                              ; preds = %107
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %115 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 9
  call void @complete(ptr noundef %115) #17
  br label %116

116:                                              ; preds = %114, %113, %111
  %117 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 9
  call void @wait_for_completion(ptr noundef %117) #17
  call void @_raw_spin_lock(ptr noundef %96) #17
  %118 = load i32, ptr %6, align 4
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %24, align 4
  %123 = load ptr, ptr %26, align 4
  store volatile ptr %122, ptr %123, align 4
  %124 = ptrtoint ptr %122 to i32
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.hlist_nulls_node, ptr %122, i32 0, i32 1
  store volatile ptr %123, ptr %128, align 4
  br label %129

129:                                              ; preds = %127, %121
  store volatile ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  br label %130

130:                                              ; preds = %129, %116
  %131 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 3
  %132 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 3, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %131, align 4
  %135 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  store ptr %133, ptr %135, align 4
  store volatile ptr %134, ptr %133, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %132, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !39
  call fastcc void @io_wqe_dec_running(ptr noundef %0) #17
  store i32 0, ptr %6, align 4
  %136 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, -17
  store i32 %138, ptr %136, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !40
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %139 = load i16, ptr %96, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr %96, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %141 = icmp eq ptr %0, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 13
  call void @kvfree_call_rcu(ptr noundef %143, ptr noundef nonnull inttoptr (i32 76 to ptr)) #17
  br label %144

144:                                              ; preds = %142, %130
  %145 = load ptr, ptr %97, align 4
  call fastcc void @io_worker_ref_put(ptr noundef %145) #17
  call void @do_exit(i32 noundef 0) #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @io_wq_work_match_all(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #9 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.io_wqe_acct, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %2, i32 0, i32 1
  br label %6

6:                                                ; preds = %11, %3
  %7 = phi ptr [ null, %3 ], [ %9, %11 ]
  %8 = phi ptr [ %4, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = tail call zeroext i1 %12(ptr noundef nonnull %9, ptr noundef %13) #17
  br i1 %14, label %15, label %6

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.io_wq_work, ptr %9, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 2
  %19 = and i32 %18, 1
  %20 = lshr i32 %17, 24
  %21 = and i32 %17, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 7, i32 %20
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %9
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = icmp eq ptr %7, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.io_wq_work, ptr %7, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 24
  %33 = icmp eq i32 %32, %20
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  store ptr %7, ptr %24, align 4
  %35 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %19, i32 4
  %36 = load ptr, ptr %9, align 4
  br label %43

37:                                               ; preds = %29, %27
  store ptr null, ptr %24, align 4
  br label %38

38:                                               ; preds = %37, %23, %15
  %39 = getelementptr %struct.io_wqe, ptr %0, i32 0, i32 1, i32 %19, i32 4
  %40 = icmp eq ptr %7, null
  %41 = load ptr, ptr %9, align 4
  br i1 %40, label %42, label %43

42:                                               ; preds = %38
  store volatile ptr %41, ptr %39, align 4
  br label %46

43:                                               ; preds = %38, %34
  %44 = phi ptr [ %36, %34 ], [ %41, %38 ]
  %45 = phi ptr [ %35, %34 ], [ %39, %38 ]
  store ptr %44, ptr %7, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi ptr [ %45, %43 ], [ %39, %42 ]
  %48 = getelementptr inbounds %struct.io_wq_work_list, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %9
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store ptr %7, ptr %48, align 4
  br label %52

52:                                               ; preds = %51, %46
  store ptr null, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %53 = load i16, ptr %0, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %55 = getelementptr inbounds %struct.io_wqe, ptr %0, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.io_wq, ptr %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.io_wq, ptr %56, i32 0, i32 1
  br label %59

59:                                               ; preds = %59, %52
  %60 = phi ptr [ %9, %52 ], [ %66, %59 ]
  %61 = getelementptr inbounds %struct.io_wq_work, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 1
  store i32 %63, ptr %61, align 4
  %64 = load ptr, ptr %57, align 4
  tail call void %64(ptr noundef nonnull %60) #17
  %65 = load ptr, ptr %58, align 4
  %66 = tail call ptr %65(ptr noundef nonnull %60) #17
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %59

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %2, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %68, %6
  %73 = xor i1 %10, true
  ret i1 %73
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @io_worker_handle_work(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  %9 = getelementptr inbounds %struct.io_wqe, ptr %3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %8, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %239, label %17

17:                                               ; preds = %1
  %18 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %8, i32 4, i32 1
  %19 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 2, i32 1
  %20 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 2
  %21 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 8
  %22 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 7
  %23 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.io_wq, ptr %10, i32 0, i32 2
  %25 = getelementptr inbounds %struct.io_wq, ptr %10, i32 0, i32 1
  %26 = getelementptr inbounds %struct.io_wq, ptr %10, i32 0, i32 3
  %27 = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %8, i32 5
  br label %28

28:                                               ; preds = %237, %17
  %29 = phi ptr [ %3, %17 ], [ %238, %237 ]
  %30 = phi ptr [ %15, %17 ], [ %235, %237 ]
  %31 = getelementptr inbounds %struct.io_wqe, ptr %29, i32 0, i32 6
  br label %32

32:                                               ; preds = %66, %28
  %33 = phi ptr [ %30, %28 ], [ %69, %66 ]
  %34 = phi ptr [ null, %28 ], [ %51, %66 ]
  %35 = phi i32 [ -1, %28 ], [ %68, %66 ]
  %36 = getelementptr inbounds %struct.io_wq_work, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = icmp eq ptr %34, null
  %42 = load ptr, ptr %33, align 4
  br i1 %41, label %43, label %44

43:                                               ; preds = %40
  store volatile ptr %42, ptr %14, align 4
  br label %45

44:                                               ; preds = %40
  store ptr %42, ptr %34, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load ptr, ptr %18, align 4
  %47 = icmp eq ptr %46, %33
  br i1 %47, label %130, label %132

48:                                               ; preds = %32
  %49 = lshr i32 %37, 24
  %50 = getelementptr %struct.io_wqe, ptr %29, i32 0, i32 7, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %31, align 4
  %53 = getelementptr inbounds %struct.io_wq, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.io_wq_hash, ptr %54, i32 0, i32 1
  %56 = tail call i32 @_test_and_set_bit(i32 noundef %49, ptr noundef %55) #17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  store ptr null, ptr %50, align 4
  %59 = icmp eq ptr %34, null
  %60 = load ptr, ptr %51, align 4
  br i1 %59, label %61, label %62

61:                                               ; preds = %58
  store volatile ptr %60, ptr %14, align 4
  br label %63

62:                                               ; preds = %58
  store ptr %60, ptr %34, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load ptr, ptr %18, align 4
  %65 = icmp eq ptr %64, %51
  br i1 %65, label %130, label %132

66:                                               ; preds = %48
  %67 = icmp eq i32 %35, -1
  %68 = select i1 %67, i32 %49, i32 %35
  %69 = load ptr, ptr %51, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %32

71:                                               ; preds = %66
  tail call void @_set_bit(i32 noundef 0, ptr noundef %27) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %72 = load i16, ptr %29, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %74 = load ptr, ptr %31, align 4
  %75 = getelementptr inbounds %struct.io_wq, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.io_wq_hash, ptr %76, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %77) #17
  %78 = getelementptr inbounds %struct.io_wqe, ptr %29, i32 0, i32 5, i32 3
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %81, label %112

81:                                               ; preds = %71
  %82 = load ptr, ptr %75, align 4
  %83 = getelementptr inbounds %struct.io_wq_hash, ptr %82, i32 0, i32 2, i32 1
  br label %84

84:                                               ; preds = %88, %81
  %85 = phi ptr [ %83, %81 ], [ %86, %88 ]
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %83
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %86, i32 -12
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %84

93:                                               ; preds = %88, %84
  %94 = phi ptr [ %86, %88 ], [ %83, %84 ]
  %95 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %78, ptr %95, align 4
  store ptr %94, ptr %78, align 4
  %96 = getelementptr inbounds %struct.io_wqe, ptr %29, i32 0, i32 5, i32 3, i32 1
  store ptr %85, ptr %96, align 4
  store volatile ptr %78, ptr %85, align 4
  %97 = load ptr, ptr %75, align 4
  %98 = getelementptr inbounds %struct.io_wq_hash, ptr %97, i32 0, i32 1
  %99 = lshr i32 %68, 5
  %100 = getelementptr i32, ptr %98, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %68, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %93
  %107 = tail call ptr @llvm.thread.pointer() #17
  %108 = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 1
  store volatile i32 0, ptr %108, align 8
  %109 = load ptr, ptr %96, align 4
  %110 = load ptr, ptr %78, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %109, ptr %111, align 4
  store volatile ptr %110, ptr %109, align 4
  store volatile ptr %78, ptr %78, align 4
  store ptr %78, ptr %96, align 4
  br label %112

112:                                              ; preds = %106, %93, %71
  %113 = phi i1 [ false, %93 ], [ true, %106 ], [ false, %71 ]
  %114 = load ptr, ptr %75, align 4
  %115 = getelementptr inbounds %struct.io_wq_hash, ptr %114, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %116 = load i16, ptr %115, align 4
  %117 = add i16 %116, 1
  store i16 %117, ptr %115, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  tail call void @_raw_spin_lock(ptr noundef %29) #17
  br i1 %113, label %118, label %239

118:                                              ; preds = %112
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %27) #17
  %119 = load ptr, ptr %31, align 4
  %120 = getelementptr inbounds %struct.io_wq, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !41
  %122 = getelementptr inbounds %struct.io_wq_hash, ptr %121, i32 0, i32 2, i32 1
  %123 = load volatile ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, %122
  br i1 %124, label %239, label %125

125:                                              ; preds = %118
  %126 = load ptr, ptr %31, align 4
  %127 = getelementptr inbounds %struct.io_wq, ptr %126, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.io_wq_hash, ptr %128, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %129, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %239

130:                                              ; preds = %63, %45
  %131 = phi ptr [ %33, %45 ], [ %51, %63 ]
  store ptr %34, ptr %18, align 4
  br label %132

132:                                              ; preds = %130, %63, %45
  %133 = phi ptr [ %33, %45 ], [ %51, %63 ], [ %131, %130 ]
  store ptr null, ptr %133, align 4
  %134 = load i32, ptr %4, align 4
  %135 = and i32 %134, 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %132
  %138 = and i32 %134, -5
  store i32 %138, ptr %4, align 4
  %139 = load ptr, ptr %19, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %20, align 4
  store volatile ptr %142, ptr %139, align 4
  %143 = ptrtoint ptr %142 to i32
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.hlist_nulls_node, ptr %142, i32 0, i32 1
  store volatile ptr %139, ptr %147, align 4
  br label %148

148:                                              ; preds = %146, %141
  store volatile ptr null, ptr %19, align 4
  br label %149

149:                                              ; preds = %148, %137, %132
  tail call void @_raw_spin_lock(ptr noundef %21) #17
  store ptr %33, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %150 = load i16, ptr %21, align 4
  %151 = add i16 %150, 1
  store i16 %151, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %152 = load i16, ptr %3, align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %154 = tail call ptr @llvm.thread.pointer() #17
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %155, 256
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158, !prof !20

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 1
  store volatile i32 0, ptr %159, align 8
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %154) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  %160 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 102
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  tail call void @task_work_run() #17
  br label %164

164:                                              ; preds = %163, %158, %149
  %165 = tail call i32 @__cond_resched() #17
  tail call void @_raw_spin_lock(ptr noundef %21) #17
  store ptr %33, ptr %23, align 4
  store ptr null, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %166 = load i16, ptr %21, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %168 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 1
  store volatile i32 0, ptr %168, align 8
  %169 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 102
  br label %170

170:                                              ; preds = %233, %164
  %171 = phi ptr [ %33, %164 ], [ %211, %233 ]
  %172 = getelementptr inbounds %struct.io_wq_work, ptr %171, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 24
  %175 = load ptr, ptr %171, align 4
  br i1 %13, label %181, label %176, !prof !20

176:                                              ; preds = %170
  %177 = and i32 %173, 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = or i32 %173, 1
  store i32 %180, ptr %172, align 4
  br label %181

181:                                              ; preds = %179, %176, %170
  %182 = load ptr, ptr %24, align 4
  tail call void %182(ptr noundef %171) #17
  tail call void @_raw_spin_lock(ptr noundef %21) #17
  store ptr null, ptr %23, align 4
  store ptr null, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %183 = load i16, ptr %21, align 4
  %184 = add i16 %183, 1
  store i16 %184, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %185 = load ptr, ptr %25, align 4
  %186 = tail call ptr %185(ptr noundef %171) #17
  %187 = icmp eq ptr %175, null
  %188 = icmp ne ptr %186, null
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %190, label %195

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.io_wq_work, ptr %186, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, 2
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %196, label %208

195:                                              ; preds = %181
  br i1 %187, label %208, label %196

196:                                              ; preds = %195, %190
  %197 = phi ptr [ %186, %195 ], [ null, %190 ]
  %198 = phi ptr [ %175, %195 ], [ %186, %190 ]
  %199 = load volatile i32, ptr %154, align 4
  %200 = and i32 %199, 256
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %206, label %202, !prof !20

202:                                              ; preds = %196
  store volatile i32 0, ptr %168, align 8
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %154) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  %203 = load ptr, ptr %169, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %202
  tail call void @task_work_run() #17
  br label %206

206:                                              ; preds = %205, %202, %196
  %207 = tail call i32 @__cond_resched() #17
  br label %208

208:                                              ; preds = %206, %195, %190
  %209 = phi i1 [ true, %195 ], [ false, %206 ], [ true, %190 ]
  %210 = phi ptr [ %186, %195 ], [ %197, %206 ], [ %186, %190 ]
  %211 = phi ptr [ null, %195 ], [ %198, %206 ], [ null, %190 ]
  tail call void @_raw_spin_lock(ptr noundef %21) #17
  store ptr %211, ptr %23, align 4
  store ptr null, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %212 = load i16, ptr %21, align 4
  %213 = add i16 %212, 1
  store i16 %213, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %214 = icmp eq ptr %210, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %208
  tail call fastcc void @io_wqe_enqueue(ptr noundef %3, ptr noundef nonnull %210)
  br label %216

216:                                              ; preds = %215, %208
  br i1 %187, label %217, label %233

217:                                              ; preds = %216
  %218 = load ptr, ptr %26, align 4
  %219 = getelementptr inbounds %struct.io_wq_hash, ptr %218, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %219) #17
  %220 = load ptr, ptr %26, align 4
  %221 = getelementptr inbounds %struct.io_wq_hash, ptr %220, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %174, ptr noundef %221) #17
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %27) #17
  %222 = load ptr, ptr %26, align 4
  %223 = getelementptr inbounds %struct.io_wq_hash, ptr %222, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %224 = load i16, ptr %223, align 4
  %225 = add i16 %224, 1
  store i16 %225, ptr %223, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  %226 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !41
  %227 = getelementptr inbounds %struct.io_wq_hash, ptr %226, i32 0, i32 2, i32 1
  %228 = load volatile ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, %227
  br i1 %229, label %233, label %230

230:                                              ; preds = %217
  %231 = load ptr, ptr %26, align 4
  %232 = getelementptr inbounds %struct.io_wq_hash, ptr %231, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %232, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %233

233:                                              ; preds = %230, %217, %216
  br i1 %209, label %234, label %170

234:                                              ; preds = %233
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  %235 = load ptr, ptr %14, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr %2, align 4
  br label %28

239:                                              ; preds = %234, %125, %118, %112, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %240 = load i16, ptr %3, align 4
  %241 = add i16 %240, 1
  store i16 %241, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @get_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @io_task_worker_match(ptr noundef readonly %0, ptr noundef readnone %1) #11 {
  %3 = getelementptr inbounds %struct.callback_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @create_worker_cb
  %6 = getelementptr i8, ptr %0, i32 -64
  %7 = icmp eq ptr %6, %1
  %8 = and i1 %7, %5
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_new_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @create_io_worker(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %2
  %5 = tail call ptr @llvm.thread.pointer() #17
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 92) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %77, %3
  %12 = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %2, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #17, !srcloc !8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #17, !srcloc !34
  tail call void @_raw_spin_lock(ptr noundef %1) #17
  %14 = load i32, ptr %4, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %16 = load i16, ptr %1, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %18 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #17, !srcloc !8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #17, !srcloc !15
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.io_wq, ptr %0, i32 0, i32 5
  tail call void @complete(ptr noundef %23) #17
  br label %85

24:                                               ; preds = %3
  store volatile i32 1, ptr %9, align 8
  %25 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 5
  store ptr %1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 8
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 9
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %28, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #17
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 8
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, ptr %7, align 4
  %36 = tail call ptr @create_io_thread(ptr noundef nonnull @io_wqe_worker, ptr noundef nonnull %9, i32 noundef %35) #17
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %66, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 69
  store ptr %9, ptr %39, align 64
  %40 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 4
  store ptr %36, ptr %40, align 8
  %41 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 8
  %42 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %36, ptr noundef %41) #17
  %43 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 67108864
  store i32 %45, ptr %43, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #17
  %46 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 2
  %47 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  store ptr %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 2, i32 1
  store volatile ptr %47, ptr %49, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  store volatile ptr %46, ptr %47, align 4
  %50 = ptrtoint ptr %48 to i32
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.hlist_nulls_node, ptr %48, i32 0, i32 1
  store volatile ptr %46, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %38
  %56 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 3
  %57 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 4
  %58 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 4, i32 1
  %59 = load ptr, ptr %58, align 4
  store ptr %57, ptr %56, align 8
  %60 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 3, i32 1
  store ptr %59, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  store volatile ptr %56, ptr %59, align 4
  store ptr %56, ptr %58, align 4
  %61 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 4
  store i32 %63, ptr %61, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %64 = load i16, ptr %1, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  tail call void @wake_up_new_task(ptr noundef %36) #17
  br label %85

66:                                               ; preds = %34
  %67 = ptrtoint ptr %36 to i32
  %68 = load volatile i32, ptr %5, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 98, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 256
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %66
  switch i32 %67, label %77 [
    i32 -11, label %78
    i32 -512, label %78
    i32 -513, label %78
    i32 -514, label %78
  ]

77:                                               ; preds = %76, %71
  tail call void @kfree(ptr noundef nonnull %9) #17
  br label %11

78:                                               ; preds = %76, %76, %76, %76
  %79 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 13
  store i32 -32, ptr %79, align 4
  %80 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 13, i32 0, i32 1
  store volatile ptr %80, ptr %80, align 8
  %81 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 13, i32 0, i32 1, i32 1
  store ptr %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.io_worker, ptr %9, i32 0, i32 13, i32 0, i32 2
  store ptr @io_workqueue_create, ptr %82, align 8
  %83 = load ptr, ptr @system_wq, align 4
  %84 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %83, ptr noundef %79) #17
  br label %85

85:                                               ; preds = %78, %55, %22, %11
  %86 = phi i1 [ true, %78 ], [ true, %55 ], [ false, %11 ], [ false, %22 ]
  ret i1 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @io_workqueue_create(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -76
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -72
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  %10 = getelementptr %struct.io_wqe, ptr %4, i32 0, i32 1, i32 %9
  %11 = tail call fastcc zeroext i1 @io_queue_worker_create(ptr noundef %2, ptr noundef %10, ptr noundef nonnull @create_worker_cont)
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void @kfree(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @io_wqe_activate_free_worker(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  %3 = getelementptr inbounds %struct.io_wqe, ptr %0, i32 0, i32 3
  %4 = load volatile ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %73, %2
  %9 = phi ptr [ %74, %73 ], [ %4, %2 ]
  %10 = getelementptr i8, ptr %9, i32 -8
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %23, %8
  %14 = phi i32 [ %21, %23 ], [ %11, %8 ]
  %15 = add i32 %14, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #17, !srcloc !8
  br label %16

16:                                               ; preds = %16, %13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %14, i32 %15, ptr elementtype(i32) %10) #17, !srcloc !29
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = extractvalue { i32, i32 } %17, 1
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %25, label %23, !prof !20

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %13

25:                                               ; preds = %23, %20, %8
  %26 = phi i32 [ 0, %8 ], [ %14, %20 ], [ 0, %23 ]
  %27 = add i32 %26, 1
  %28 = or i32 %27, %26
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30, !prof !20

30:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 0) #17
  br label %31

31:                                               ; preds = %30, %25
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %73, label %33

33:                                               ; preds = %31
  %34 = getelementptr i8, ptr %9, i32 20
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %9, i32 -4
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 3
  %39 = and i32 %38, 1
  %40 = xor i32 %39, 1
  %41 = getelementptr %struct.io_wqe, ptr %35, i32 0, i32 1, i32 %40
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %52, label %43

43:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #17, !srcloc !8
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #17, !srcloc !25
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %73, label %49, !prof !20

49:                                               ; preds = %47
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #17
  br label %73

50:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %51 = getelementptr i8, ptr %9, i32 36
  tail call void @complete(ptr noundef %51) #17
  br label %73

52:                                               ; preds = %33
  %53 = getelementptr i8, ptr %9, i32 16
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @wake_up_process(ptr noundef %54) #17
  %56 = icmp eq i32 %55, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #17
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #17
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 1
  br i1 %56, label %67, label %60

60:                                               ; preds = %52
  %61 = extractvalue { i32, i32, i32 } %57, 0
  br i1 %59, label %65, label %62

62:                                               ; preds = %60
  %63 = icmp sgt i32 %61, 0
  br i1 %63, label %78, label %64, !prof !20

64:                                               ; preds = %62
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #17
  br label %78

65:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %66 = getelementptr i8, ptr %9, i32 36
  tail call void @complete(ptr noundef %66) #17
  br label %78

67:                                               ; preds = %52
  br i1 %59, label %71, label %68

68:                                               ; preds = %67
  %69 = icmp sgt i32 %58, 0
  br i1 %69, label %73, label %70, !prof !20

70:                                               ; preds = %68
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #17
  br label %73

71:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %72 = getelementptr i8, ptr %9, i32 36
  tail call void @complete(ptr noundef %72) #17
  br label %73

73:                                               ; preds = %71, %70, %68, %50, %49, %47, %31
  %74 = load volatile ptr, ptr %9, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %8, label %78

78:                                               ; preds = %73, %65, %64, %62, %2
  %79 = phi i1 [ true, %65 ], [ true, %64 ], [ true, %62 ], [ false, %2 ], [ false, %73 ]
  ret i1 %79
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @io_wq_work_match_item(ptr noundef readnone %0, ptr noundef readnone %1) #9 {
  %3 = icmp eq ptr %0, %1
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @io_wq_for_each_worker(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.io_wqe, ptr %0, i32 0, i32 4
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %52, label %7

7:                                                ; preds = %49, %3
  %8 = phi ptr [ %50, %49 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 -16
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %22, %7
  %13 = phi i32 [ %20, %22 ], [ %10, %7 ]
  %14 = add i32 %13, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #17, !srcloc !8
  br label %15

15:                                               ; preds = %15, %12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %13, i32 %14, ptr elementtype(i32) %9) #17, !srcloc !29
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %24, label %22, !prof !20

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %12

24:                                               ; preds = %22, %19, %7
  %25 = phi i32 [ 0, %7 ], [ %13, %19 ], [ 0, %22 ]
  %26 = add i32 %25, 1
  %27 = or i32 %26, %25
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29, !prof !20

29:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 0) #17
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %25, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %30
  %33 = getelementptr i8, ptr %8, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call zeroext i1 %1(ptr noundef %9, ptr noundef %2) #17, !callees !43
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i1 [ %37, %36 ], [ false, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #17, !srcloc !8
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #17, !srcloc !25
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %48, label %45, !prof !20

45:                                               ; preds = %43
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #17
  br label %48

46:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  %47 = getelementptr i8, ptr %8, i32 28
  tail call void @complete(ptr noundef %47) #17
  br label %48

48:                                               ; preds = %46, %45, %43
  br i1 %39, label %52, label %49

49:                                               ; preds = %48, %30
  %50 = load volatile ptr, ptr %8, align 4
  %51 = icmp eq ptr %50, %4
  br i1 %51, label %52, label %7

52:                                               ; preds = %49, %48, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @io_wq_worker_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  %4 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 %8(ptr noundef nonnull %5, ptr noundef %10) #17
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.io_wq_work, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %12
  %21 = tail call i32 @wake_up_state(ptr noundef %17, i32 noundef 1) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %45

23:                                               ; preds = %7, %2
  %24 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call zeroext i1 %28(ptr noundef nonnull %25, ptr noundef %30) #17
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.io_wq_work, ptr %25, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %37) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = tail call i32 @wake_up_state(ptr noundef %37, i32 noundef 1) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %20
  %44 = phi ptr [ %17, %20 ], [ %37, %40 ]
  tail call void @kick_process(ptr noundef %44) #17
  br label %45

45:                                               ; preds = %43, %40, %32, %20, %12
  %46 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %45, %27, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %50 = load i16, ptr %3, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %52 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %1, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %1, i32 0, i32 4
  %57 = load i8, ptr %56, align 4, !range !22
  %58 = icmp eq i8 %57, 0
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ false, %49 ], [ %58, %55 ]
  ret i1 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kick_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @io_wq_worker_wake(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %4) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @wake_up_state(ptr noundef %4, i32 noundef 1) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @kick_process(ptr noundef %4) #17
  br label %11

11:                                               ; preds = %10, %7, %2
  %12 = load ptr, ptr %3, align 4
  %13 = tail call i32 @wake_up_process(ptr noundef %12) #17
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @io_wq_cpu_online(i32 noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.online_data, align 8
  %4 = icmp eq ptr %1, null
  %5 = getelementptr i8, ptr %1, i32 -36
  %6 = select i1 %4, ptr null, ptr %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 4294967296, ptr %3, align 8, !annotation !21
  store i32 %0, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %7 = getelementptr inbounds %struct.io_wq, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  call fastcc void @io_wq_for_each_worker(ptr noundef %8, ptr noundef nonnull @io_wq_worker_affinity, ptr noundef nonnull %3) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @io_wq_cpu_offline(i32 noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.online_data, align 8
  %4 = icmp eq ptr %1, null
  %5 = getelementptr i8, ptr %1, i32 -36
  %6 = select i1 %4, ptr null, ptr %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !annotation !21
  store i32 %0, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %7 = getelementptr inbounds %struct.io_wq, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  call fastcc void @io_wq_for_each_worker(ptr noundef %8, ptr noundef nonnull @io_wq_worker_affinity, ptr noundef nonnull %3) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @io_wq_worker_affinity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.online_data, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4, !range !22
  %5 = icmp eq i8 %4, 0
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds %struct.io_worker, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.io_wqe, ptr %8, i32 0, i32 8
  br i1 %5, label %11, label %10

10:                                               ; preds = %2
  tail call void @_set_bit(i32 noundef %6, ptr noundef %9) #17
  br label %12

11:                                               ; preds = %2
  tail call void @_clear_bit(i32 noundef %6, ptr noundef %9) #17
  br label %12

12:                                               ; preds = %11, %10
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { noreturn nounwind }

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
!8 = !{i64 442844, i64 2147932815, i64 2147932841, i64 2147932888, i64 2147932910, i64 2147932938, i64 2147932958}
!9 = !{i64 2147945027, i64 2147945053, i64 2147945082, i64 2147945116, i64 2147945147, i64 2147945170}
!10 = !{i64 2149265017}
!11 = !{i64 2149260841}
!12 = !{i64 2149260916, i64 2149260943, i64 2149260990, i64 2149261012, i64 2149261040, i64 2149261060}
!13 = !{i64 2149288020}
!14 = !{i64 2148045682}
!15 = !{i64 2147948068, i64 2147948100, i64 2147948129, i64 2147948163, i64 2147948194, i64 2147948217}
!16 = !{i64 2148045885}
!17 = !{i64 2148912407}
!18 = !{i64 2148912624}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"auto-init"}
!22 = !{i8 0, i8 2}
!23 = !{i64 2147946485, i64 2147946517, i64 2147946546, i64 2147946580, i64 2147946611, i64 2147946634}
!24 = !{i64 2148046683}
!25 = !{i64 2147948842, i64 2147948874, i64 2147948903, i64 2147948937, i64 2147948968, i64 2147948991}
!26 = !{i64 2149338932}
!27 = !{i64 338328}
!28 = !{i64 2149289161}
!29 = !{i64 428907, i64 428931, i64 428952, i64 428969, i64 428986}
!30 = !{i64 2147953489, i64 2147953521, i64 2147953550, i64 2147953584, i64 2147953615, i64 2147953638}
!31 = !{i64 2148054805}
!32 = !{i64 2148053770}
!33 = !{i64 2147951948, i64 2147951980, i64 2147952009, i64 2147952043, i64 2147952074, i64 2147952097}
!34 = !{i64 2147947384, i64 2147947410, i64 2147947439, i64 2147947473, i64 2147947504, i64 2147947527}
!35 = !{i64 2150951585}
!36 = !{i64 2148937648}
!37 = !{i64 2153900267}
!38 = !{i64 2153725263}
!39 = !{i64 2153866075}
!40 = !{i64 2153866148}
!41 = !{i64 2149319992}
!42 = !{i64 2153872396}
!43 = !{ptr @io_wq_worker_affinity, ptr @io_wq_worker_cancel, ptr @io_wq_worker_wake}
