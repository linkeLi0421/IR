; ModuleID = '/llk/IR/drivers/tty/vt/vt_ioctl.c_pt.bc'
source_filename = "../drivers/tty/vt/vt_ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_set_vt_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_set_vt_switch\22\09\09\09\09\09"
module asm "__kstrtabns_pm_set_vt_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vt_spawn_console = type { %struct.spinlock, ptr, i32 }
%struct.vt_event_wait = type { %struct.list_head, %struct.vt_event, i32 }
%struct.vt_event = type { i32, i32, i32, [4 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.unimapdesc = type { i16, ptr }
%struct.kbd_repeat = type { i32, i32 }
%struct.console_font_op = type { i32, i32, i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.69, %struct.anon.70, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.69 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.70 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
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
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.68, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.68 = type { ptr }
%struct.llist_head = type { ptr }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_stat = type { i16, i16, i16 }
%struct.vt_sizes = type { i16, i16, i16 }
%struct.vt_setactivate = type { i32, %struct.vt_mode }
%struct.vt_consize = type { i16, i16, i16, i16, i16, i16 }

@vt_event_lock = internal global %struct.spinlock zeroinitializer, align 4
@vt_events = internal global %struct.list_head { ptr @vt_events, ptr @vt_events }, align 4
@vt_event_waitqueue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vt_event_waitqueue, i64 4), ptr getelementptr (i8, ptr @vt_event_waitqueue, i64 4) } }, align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@vt_dont_switch = dso_local local_unnamed_addr global i8 0, align 1
@disable_vt_switch = internal unnamed_addr global i32 0, align 4
@__kstrtab_pm_set_vt_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_set_vt_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_set_vt_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_set_vt_switch to i32), ptr @__kstrtab_pm_set_vt_switch, ptr @__kstrtabns_pm_set_vt_switch }, section "___ksymtab+pm_set_vt_switch", align 4
@vt_spawn_con = external dso_local global %struct.vt_spawn_console, align 4
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"drivers/tty/vt/vt_ioctl.c\00", align 1
@last_console = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_pm_set_vt_switch], section "llvm.metadata"
@switch.table.vt_kdsetmode = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vt_event_post(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %5 = load ptr, ptr @vt_events, align 4
  %6 = icmp eq ptr %5, @vt_events
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %4) #6
  br label %29

8:                                                ; preds = %3
  %9 = add i32 %1, 1
  %10 = add i32 %2, 1
  br label %11

11:                                               ; preds = %22, %8
  %12 = phi ptr [ %5, %8 ], [ %24, %22 ]
  %13 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %14 = getelementptr inbounds %struct.vt_event_wait, ptr %12, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  store i32 %0, ptr %14, align 4
  %19 = getelementptr inbounds %struct.vt_event_wait, ptr %12, i32 0, i32 1, i32 1
  store i32 %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vt_event_wait, ptr %12, i32 0, i32 1, i32 2
  store i32 %10, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vt_event_wait, ptr %12, i32 0, i32 2
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ 1, %18 ], [ %13, %11 ]
  %24 = load ptr, ptr %12, align 4
  %25 = icmp eq ptr %24, @vt_events
  br i1 %25, label %26, label %11

26:                                               ; preds = %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %4) #6
  %27 = icmp eq i32 %23, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  tail call void @__wake_up(ptr noundef nonnull @vt_event_waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %29

29:                                               ; preds = %28, %26, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_waitactive(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca %struct.vt_event_wait, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 24, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.vt_event_wait, ptr %3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.vt_event_wait, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.vt_event_wait, ptr %3, i32 0, i32 1, i32 2
  br label %9

9:                                                ; preds = %44, %1
  store i32 1, ptr %5, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %10 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %11 = load ptr, ptr @vt_events, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %3, ptr %12, align 4
  store ptr %11, ptr %3, align 4
  store ptr @vt_events, ptr %6, align 4
  store volatile ptr %3, ptr @vt_events, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %10) #6
  %13 = load i32, ptr @fg_console, align 4
  %14 = add i32 %13, 1
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %18 = load ptr, ptr %6, align 4
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %17) #6
  br label %47

21:                                               ; preds = %9
  %22 = load i32, ptr %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #6, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #6
  %25 = call i32 @prepare_to_wait_event(ptr noundef nonnull @vt_event_waitqueue, ptr noundef nonnull %2, i32 noundef 1) #6
  %26 = load i32, ptr %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %31, %24
  %29 = phi i32 [ %32, %31 ], [ %25, %24 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  call void @schedule() #6
  %32 = call i32 @prepare_to_wait_event(ptr noundef nonnull @vt_event_waitqueue, ptr noundef nonnull %2, i32 noundef 1) #6
  %33 = load i32, ptr %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %28, label %35

35:                                               ; preds = %31, %24
  call void @finish_wait(ptr noundef nonnull @vt_event_waitqueue, ptr noundef nonnull %2) #6
  br label %36

36:                                               ; preds = %35, %28
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  br label %37

37:                                               ; preds = %36, %21
  %38 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %39 = load ptr, ptr %6, align 4
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %38) #6
  %42 = load i32, ptr %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, ptr %8, align 4
  %46 = icmp eq i32 %45, %0
  br i1 %46, label %47, label %9

47:                                               ; preds = %44, %37, %16
  %48 = phi i32 [ 0, %16 ], [ 0, %44 ], [ -4, %37 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  ret i32 %48
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.unimapdesc, align 8
  %5 = alloca %struct.kbd_repeat, align 8
  %6 = alloca %struct.console_font_op, align 4
  %7 = alloca %struct.vt_mode, align 8
  %8 = alloca %struct.vt_mode, align 8
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %10 = load ptr, ptr %9, align 4
  %11 = inttoptr i32 %2 to ptr
  %12 = tail call ptr @llvm.thread.pointer() #6
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 93
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = tail call zeroext i1 @capable(i32 noundef 26) #6
  br i1 %19, label %20, label %21

20:                                               ; preds = %18, %3
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i1 [ true, %20 ], [ false, %18 ]
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr inbounds %struct.vc_data, ptr %23, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  switch i32 %1, label %455 [
    i32 19247, label %27
    i32 19248, label %34
    i32 19251, label %46
    i32 19282, label %52
    i32 19258, label %80
    i32 19259, label %83
    i32 19260, label %456
    i32 19261, label %456
    i32 19269, label %92
    i32 19268, label %97
    i32 19299, label %104
    i32 19298, label %106
    i32 19276, label %113
    i32 19277, label %113
    i32 19270, label %118
    i32 19271, label %118
    i32 19272, label %121
    i32 19273, label %121
    i32 19274, label %124
    i32 19450, label %124
    i32 19275, label %124
    i32 19451, label %124
    i32 19300, label %127
    i32 19301, label %127
    i32 19249, label %127
    i32 19250, label %127
    i32 19278, label %130
    i32 19314, label %145
    i32 19313, label %181
    i32 19312, label %184
    i32 19265, label %186
    i32 19264, label %189
    i32 19306, label %191
    i32 19305, label %194
    i32 19304, label %196
    i32 19303, label %199
    i32 19302, label %199
    i32 21532, label %238
    i32 22018, label %240
    i32 22017, label %271
    i32 22019, label %285
    i32 22016, label %333
    i32 22022, label %368
    i32 22031, label %380
    i32 22023, label %383
    i32 22021, label %389
    i32 22024, label %392
    i32 22025, label %400
    i32 22026, label %435
    i32 22027, label %438
    i32 22028, label %441
    i32 22029, label %444
    i32 22030, label %452
  ]

27:                                               ; preds = %21
  br i1 %22, label %28, label %456

28:                                               ; preds = %27
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = udiv i32 1193182, %2
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %31, %30 ], [ 0, %28 ]
  tail call void @kd_mksound(i32 noundef %33, i32 noundef 0) #6
  br label %176

34:                                               ; preds = %21
  br i1 %22, label %35, label %456

35:                                               ; preds = %34
  %36 = lshr i32 %2, 16
  %37 = tail call i32 @__msecs_to_jiffies(i32 noundef %36) #6
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %2, 65535
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %40, %38
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = udiv i32 1193182, %39
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi i32 [ %43, %42 ], [ 0, %35 ]
  tail call void @kd_mksound(i32 noundef %45, i32 noundef %37) #6
  br label %176

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #7, !srcloc !9
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %51 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i8 2, i32 -1090519041) #6, !srcloc !12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %177

52:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !8
  %53 = tail call zeroext i1 @capable(i32 noundef 26) #6
  br i1 %53, label %54, label %72

54:                                               ; preds = %52
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 8, i32 -1090519040) #8
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65, !prof !13

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %60 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %59) #7, !srcloc !9
  %61 = and i32 %60, -13
  %62 = or i32 %61, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %63 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %11, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65, !prof !13

65:                                               ; preds = %58, %54
  %66 = phi i32 [ %63, %58 ], [ 8, %54 ]
  %67 = sub i32 8, %66
  %68 = getelementptr i8, ptr %5, i32 %67
  call void @llvm.memset.p0.i32(ptr align 1 %68, i8 0, i32 %66, i1 false) #6
  br label %72

69:                                               ; preds = %58
  %70 = call i32 @kbd_rate(ptr noundef nonnull %5) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69, %65, %52
  %73 = phi i32 [ %70, %69 ], [ -1, %52 ], [ -14, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %177

74:                                               ; preds = %69
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %59) #7, !srcloc !9
  %76 = and i32 %75, -13
  %77 = or i32 %76, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %78 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %79 = icmp eq i32 %78, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br i1 %79, label %176, label %456

80:                                               ; preds = %21
  br i1 %22, label %81, label %456

81:                                               ; preds = %80
  tail call void @console_lock() #6
  %82 = tail call fastcc i32 @vt_kdsetmode(ptr noundef %23, i32 noundef %2) #6
  tail call void @console_unlock() #6
  br label %177

83:                                               ; preds = %21
  %84 = getelementptr inbounds %struct.vc_data, ptr %23, i32 0, i32 17
  %85 = load i8, ptr %84, align 4
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %88 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %87) #7, !srcloc !9
  %89 = and i32 %88, -13
  %90 = or i32 %89, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %91 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %86, i32 -1090519041) #6, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %177

92:                                               ; preds = %21
  br i1 %22, label %93, label %456

93:                                               ; preds = %92
  %94 = tail call i32 @vt_do_kdskbmode(i32 noundef %26, i32 noundef %2) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %177

96:                                               ; preds = %93
  tail call void @tty_ldisc_flush(ptr noundef %0) #6
  br label %176

97:                                               ; preds = %21
  %98 = tail call i32 @vt_do_kdgkbmode(i32 noundef %26) #6
  %99 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %100 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %99) #7, !srcloc !9
  %101 = and i32 %100, -13
  %102 = or i32 %101, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %103 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %98, i32 -1090519041) #6, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %177

104:                                              ; preds = %21
  %105 = tail call i32 @vt_do_kdskbmeta(i32 noundef %26, i32 noundef %2) #6
  br label %177

106:                                              ; preds = %21
  %107 = tail call i32 @vt_do_kdgkbmeta(i32 noundef %26) #6
  %108 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %109 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %108) #7, !srcloc !9
  %110 = and i32 %109, -13
  %111 = or i32 %110, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %112 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %107, i32 -1090519041) #6, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %177

113:                                              ; preds = %21, %21
  %114 = tail call zeroext i1 @capable(i32 noundef 26) #6
  %115 = and i1 %22, %114
  %116 = zext i1 %115 to i32
  %117 = tail call i32 @vt_do_kbkeycode_ioctl(i32 noundef %1, ptr noundef %11, i32 noundef %116) #6
  br label %177

118:                                              ; preds = %21, %21
  %119 = zext i1 %22 to i32
  %120 = tail call i32 @vt_do_kdsk_ioctl(i32 noundef %1, ptr noundef %11, i32 noundef %119, i32 noundef %26) #6
  br label %177

121:                                              ; preds = %21, %21
  %122 = zext i1 %22 to i32
  %123 = tail call i32 @vt_do_kdgkb_ioctl(i32 noundef %1, ptr noundef %11, i32 noundef %122) #6
  br label %177

124:                                              ; preds = %21, %21, %21, %21
  %125 = zext i1 %22 to i32
  %126 = tail call i32 @vt_do_diacrit(i32 noundef %1, ptr noundef %11, i32 noundef %125) #6
  br label %177

127:                                              ; preds = %21, %21, %21, %21
  %128 = zext i1 %22 to i32
  %129 = tail call i32 @vt_do_kdskled(i32 noundef %26, i32 noundef %1, i32 noundef %2, i32 noundef %128) #6
  br label %177

130:                                              ; preds = %21
  br i1 %22, label %131, label %456

131:                                              ; preds = %130
  %132 = tail call zeroext i1 @capable(i32 noundef 5) #6
  br i1 %132, label %133, label %456

133:                                              ; preds = %131
  %134 = add i32 %2, -65
  %135 = icmp ult i32 %134, -64
  %136 = icmp eq i32 %2, 9
  %137 = or i1 %136, %135
  br i1 %137, label %456, label %138

138:                                              ; preds = %133
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @vt_spawn_con) #6
  %139 = load ptr, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  tail call void @put_pid(ptr noundef %139) #6
  %140 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 62
  %141 = load ptr, ptr %140, align 64
  %142 = tail call fastcc ptr @get_pid(ptr noundef %141) #6
  store ptr %141, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  store i32 %2, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 2), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %143 = load i16, ptr @vt_spawn_con, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr @vt_spawn_con, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  br label %176

145:                                              ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false) #6, !annotation !8
  %146 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 24, i32 -1090519040) #8
  %147 = extractvalue { i32, i32 } %146, 0
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %156, !prof !13

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %151 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %150) #7, !srcloc !9
  %152 = and i32 %151, -13
  %153 = or i32 %152, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %154 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %11, i32 noundef 24) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %151) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156, !prof !13

156:                                              ; preds = %149, %145
  %157 = phi i32 [ %154, %149 ], [ 24, %145 ]
  %158 = sub i32 24, %157
  %159 = getelementptr i8, ptr %6, i32 %158
  call void @llvm.memset.p0.i32(ptr align 1 %159, i8 0, i32 %157, i1 false) #6
  br label %168

160:                                              ; preds = %149
  %161 = xor i1 %22, true
  %162 = load i32, ptr %6, align 4
  %163 = icmp ne i32 %162, 1
  %164 = select i1 %161, i1 %163, i1 false
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = call i32 @con_font_op(ptr noundef %23, ptr noundef nonnull %6) #6
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165, %160, %156
  %169 = phi i32 [ %166, %165 ], [ -1, %160 ], [ -14, %156 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  br label %177

170:                                              ; preds = %165
  %171 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %150) #7, !srcloc !9
  %172 = and i32 %171, -13
  %173 = or i32 %172, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %173) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %174 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %6, i32 noundef 24) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %171) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %175 = icmp eq i32 %174, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  br i1 %175, label %176, label %456

176:                                              ; preds = %170, %138, %96, %74, %44, %32
  br label %456

177:                                              ; preds = %168, %127, %124, %121, %118, %113, %106, %104, %97, %93, %83, %81, %72, %46
  %178 = phi i32 [ %129, %127 ], [ %126, %124 ], [ %123, %121 ], [ %120, %118 ], [ %117, %113 ], [ %112, %106 ], [ %105, %104 ], [ %103, %97 ], [ %91, %83 ], [ %82, %81 ], [ %51, %46 ], [ %94, %93 ], [ %73, %72 ], [ %169, %168 ]
  %179 = icmp eq i32 %178, -515
  br i1 %179, label %180, label %456

180:                                              ; preds = %177
  switch i32 %1, label %456 [
    i32 19313, label %181
    i32 19312, label %184
    i32 19265, label %186
    i32 19264, label %189
    i32 19306, label %191
    i32 19305, label %194
    i32 19304, label %196
    i32 19303, label %199
    i32 19302, label %199
  ]

181:                                              ; preds = %180, %21
  br i1 %22, label %182, label %456

182:                                              ; preds = %181
  %183 = call i32 @con_set_cmap(ptr noundef %11) #6
  br label %235

184:                                              ; preds = %180, %21
  %185 = call i32 @con_get_cmap(ptr noundef %11) #6
  br label %235

186:                                              ; preds = %180, %21
  br i1 %22, label %187, label %456

187:                                              ; preds = %186
  %188 = call i32 @con_set_trans_old(ptr noundef %11) #6
  br label %235

189:                                              ; preds = %180, %21
  %190 = call i32 @con_get_trans_old(ptr noundef %11) #6
  br label %235

191:                                              ; preds = %180, %21
  br i1 %22, label %192, label %456

192:                                              ; preds = %191
  %193 = call i32 @con_set_trans_new(ptr noundef %11) #6
  br label %235

194:                                              ; preds = %180, %21
  %195 = call i32 @con_get_trans_new(ptr noundef %11) #6
  br label %235

196:                                              ; preds = %180, %21
  br i1 %22, label %197, label %456

197:                                              ; preds = %196
  %198 = call i32 @con_clear_unimap(ptr noundef %10) #6
  br label %456

199:                                              ; preds = %180, %180, %21, %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !annotation !8
  %200 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 8, i32 -1090519040) #8, !srcloc !22
  %201 = extractvalue { i32, i32 } %200, 0
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %210, !prof !13

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %205 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %204) #7, !srcloc !9
  %206 = and i32 %205, -13
  %207 = or i32 %206, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %207) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %208 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %205) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %214, label %210, !prof !13

210:                                              ; preds = %203, %199
  %211 = phi i32 [ %208, %203 ], [ 8, %199 ]
  %212 = sub i32 8, %211
  %213 = getelementptr i8, ptr %4, i32 %212
  call void @llvm.memset.p0.i32(ptr align 1 %213, i8 0, i32 %211, i1 false) #6
  br label %233

214:                                              ; preds = %203
  switch i32 %1, label %233 [
    i32 19303, label %215
    i32 19302, label %221
  ]

215:                                              ; preds = %214
  br i1 %22, label %216, label %233

216:                                              ; preds = %215
  %217 = load i16, ptr %4, align 8
  %218 = getelementptr inbounds %struct.unimapdesc, ptr %4, i32 0, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = call i32 @con_set_unimap(ptr noundef %10, i16 noundef zeroext %217, ptr noundef %219) #6
  br label %233

221:                                              ; preds = %214
  br i1 %22, label %228, label %222

222:                                              ; preds = %221
  %223 = load i32, ptr @fg_console, align 4
  %224 = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 3
  %225 = load i16, ptr %224, align 4
  %226 = zext i16 %225 to i32
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %222, %221
  %229 = load i16, ptr %4, align 8
  %230 = getelementptr inbounds %struct.unimapdesc, ptr %4, i32 0, i32 1
  %231 = load ptr, ptr %230, align 4
  %232 = call i32 @con_get_unimap(ptr noundef %10, i16 noundef zeroext %229, ptr noundef %11, ptr noundef %231) #6
  br label %233

233:                                              ; preds = %228, %222, %216, %215, %214, %210
  %234 = phi i32 [ %232, %228 ], [ %220, %216 ], [ -1, %215 ], [ -1, %222 ], [ 0, %214 ], [ -14, %210 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %235

235:                                              ; preds = %233, %194, %192, %189, %187, %184, %182
  %236 = phi i32 [ %234, %233 ], [ %195, %194 ], [ %193, %192 ], [ %190, %189 ], [ %188, %187 ], [ %185, %184 ], [ %183, %182 ]
  %237 = icmp eq i32 %236, -515
  br i1 %237, label %455, label %456

238:                                              ; preds = %21
  %239 = call i32 @tioclinux(ptr noundef %0, i32 noundef %2) #6
  br label %456

240:                                              ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store i64 0, ptr %7, align 8, !annotation !8
  br i1 %22, label %241, label %259

241:                                              ; preds = %240
  %242 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 8, i32 -1090519040) #8, !srcloc !22
  %243 = extractvalue { i32, i32 } %242, 0
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %252, !prof !13

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %247 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %246) #7, !srcloc !9
  %248 = and i32 %247, -13
  %249 = or i32 %248, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %249) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %250 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %11, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %247) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %256, label %252, !prof !13

252:                                              ; preds = %245, %241
  %253 = phi i32 [ %250, %245 ], [ 8, %241 ]
  %254 = sub i32 8, %253
  %255 = getelementptr i8, ptr %7, i32 %254
  call void @llvm.memset.p0.i32(ptr align 1 %255, i8 0, i32 %253, i1 false) #6
  br label %259

256:                                              ; preds = %245
  %257 = load i8, ptr %7, align 8
  %258 = icmp ugt i8 %257, 1
  br i1 %258, label %259, label %261

259:                                              ; preds = %256, %252, %240
  %260 = phi i32 [ -22, %256 ], [ -1, %240 ], [ -14, %252 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br label %456

261:                                              ; preds = %256
  call void @console_lock() #6
  %262 = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 33
  %263 = load i64, ptr %7, align 8
  store i64 %263, ptr %262, align 4
  %264 = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 33, i32 4
  store i16 0, ptr %264, align 2
  %265 = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 34
  %266 = load ptr, ptr %265, align 4
  call void @put_pid(ptr noundef %266) #6
  %267 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 62
  %268 = load ptr, ptr %267, align 64
  %269 = call fastcc ptr @get_pid(ptr noundef %268)
  store ptr %268, ptr %265, align 4
  %270 = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 35
  store i32 -1, ptr %270, align 4
  call void @console_unlock() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br label %454

271:                                              ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  call void @console_lock() #6
  %272 = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 33
  %273 = load i64, ptr %272, align 4
  store i64 %273, ptr %8, align 8
  call void @console_unlock() #6
  %274 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 8, i32 -1090519040) #8, !srcloc !23
  %275 = extractvalue { i32, i32 } %274, 0
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %271
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  br label %456

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %280 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %279) #7, !srcloc !9
  %281 = and i32 %280, -13
  %282 = or i32 %281, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %282) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %283 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %8, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %280) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %284 = icmp eq i32 %283, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  br i1 %284, label %454, label %456

285:                                              ; preds = %21
  %286 = load i32, ptr @fg_console, align 4
  %287 = trunc i32 %286 to i16
  %288 = add i16 %287, 1
  %289 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %290 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %289) #7, !srcloc !9
  %291 = and i32 %290, -13
  %292 = or i32 %291, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %292) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %293 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i16 %288, i32 -1090519041) #6, !srcloc !24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %290) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %456

295:                                              ; preds = %285
  call void @console_lock() #6
  br label %296

296:                                              ; preds = %321, %295
  %297 = phi i32 [ 2, %295 ], [ %325, %321 ]
  %298 = phi i32 [ 0, %295 ], [ %323, %321 ]
  %299 = phi i16 [ 1, %295 ], [ %322, %321 ]
  %300 = phi i32 [ 2, %295 ], [ %324, %321 ]
  %301 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %298
  %302 = load ptr, ptr %301, align 4
  %303 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %296
  %306 = call i32 @is_console_locked() #6
  %307 = icmp eq i32 %306, 0
  %308 = load i32, ptr @oops_in_progress, align 4
  %309 = icmp eq i32 %308, 0
  %310 = select i1 %307, i1 %309, i1 false
  br i1 %310, label %311, label %312, !prof !25

311:                                              ; preds = %305
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %312

312:                                              ; preds = %311, %305, %296
  %313 = icmp eq ptr %302, null
  br i1 %313, label %321, label %314

314:                                              ; preds = %312
  %315 = getelementptr inbounds %struct.tty_port, ptr %302, i32 0, i32 19
  %316 = load volatile i32, ptr %315, align 4
  %317 = icmp ugt i32 %316, 1
  %318 = trunc i32 %300 to i16
  %319 = select i1 %317, i16 %318, i16 0
  %320 = or i16 %319, %299
  br label %321

321:                                              ; preds = %314, %312
  %322 = phi i16 [ %299, %312 ], [ %320, %314 ]
  %323 = add nuw nsw i32 %298, 1
  %324 = shl nuw nsw i32 %297, 1
  %325 = and i32 %324, 65532
  %326 = icmp eq i32 %323, 15
  br i1 %326, label %327, label %296

327:                                              ; preds = %321
  call void @console_unlock() #6
  %328 = getelementptr inbounds %struct.vt_stat, ptr %11, i32 0, i32 2
  %329 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %289) #7, !srcloc !9
  %330 = and i32 %329, -13
  %331 = or i32 %330, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %331) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %332 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %328, i16 %322, i32 -1090519041) #6, !srcloc !26
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %329) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %456

333:                                              ; preds = %21
  call void @console_lock() #6
  br label %334

334:                                              ; preds = %354, %333
  %335 = phi i1 [ true, %333 ], [ %356, %354 ]
  %336 = phi i32 [ 0, %333 ], [ %355, %354 ]
  %337 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %336
  %338 = load ptr, ptr %337, align 4
  %339 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %334
  %342 = call i32 @is_console_locked() #6
  %343 = icmp eq i32 %342, 0
  %344 = load i32, ptr @oops_in_progress, align 4
  %345 = icmp eq i32 %344, 0
  %346 = select i1 %343, i1 %345, i1 false
  br i1 %346, label %347, label %348, !prof !25

347:                                              ; preds = %341
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %348

348:                                              ; preds = %347, %341, %334
  %349 = icmp eq ptr %338, null
  br i1 %349, label %358, label %350

350:                                              ; preds = %348
  %351 = getelementptr inbounds %struct.tty_port, ptr %338, i32 0, i32 19
  %352 = load volatile i32, ptr %351, align 4
  %353 = icmp ugt i32 %352, 1
  br i1 %353, label %354, label %358

354:                                              ; preds = %350
  %355 = add nuw nsw i32 %336, 1
  %356 = icmp ult i32 %336, 62
  %357 = icmp eq i32 %355, 63
  br i1 %357, label %358, label %334

358:                                              ; preds = %354, %350, %348
  %359 = phi i32 [ %336, %348 ], [ %336, %350 ], [ 63, %354 ]
  %360 = phi i1 [ %335, %348 ], [ %335, %350 ], [ %356, %354 ]
  call void @console_unlock() #6
  %361 = add nuw i32 %359, 1
  %362 = select i1 %360, i32 %361, i32 -1
  %363 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %364 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %363) #7, !srcloc !9
  %365 = and i32 %364, -13
  %366 = or i32 %365, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %366) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %367 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %362, i32 -1090519041) #6, !srcloc !27
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %364) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %456

368:                                              ; preds = %21
  br i1 %22, label %369, label %456

369:                                              ; preds = %368
  %370 = add i32 %2, -64
  %371 = icmp ult i32 %370, -63
  br i1 %371, label %456, label %372

372:                                              ; preds = %369
  %373 = add nsw i32 %2, -1
  %374 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %373, i32 63) #6, !srcloc !28
  %375 = and i32 %374, %373
  call void @console_lock() #6
  %376 = call i32 @vc_allocate(i32 noundef %375) #6
  call void @console_unlock() #6
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %456

378:                                              ; preds = %372
  %379 = call i32 @set_console(i32 noundef %375) #6
  br label %454

380:                                              ; preds = %21
  br i1 %22, label %381, label %456

381:                                              ; preds = %380
  %382 = call fastcc i32 @vt_setactivate(ptr noundef %11)
  br label %456

383:                                              ; preds = %21
  br i1 %22, label %384, label %456

384:                                              ; preds = %383
  %385 = add i32 %2, -64
  %386 = icmp ult i32 %385, -63
  br i1 %386, label %456, label %387

387:                                              ; preds = %384
  %388 = call i32 @vt_waitactive(i32 noundef %2)
  br label %456

389:                                              ; preds = %21
  br i1 %22, label %390, label %456

390:                                              ; preds = %389
  call void @console_lock() #6
  %391 = call fastcc i32 @vt_reldisp(ptr noundef %10, i32 noundef %2)
  call void @console_unlock() #6
  br label %456

392:                                              ; preds = %21
  %393 = icmp ugt i32 %2, 63
  br i1 %393, label %456, label %394

394:                                              ; preds = %392
  %395 = icmp eq i32 %2, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %394
  call fastcc void @vt_disallocate_all()
  br label %454

397:                                              ; preds = %394
  %398 = add nsw i32 %2, -1
  %399 = call fastcc i32 @vt_disallocate(i32 noundef %398)
  br label %456

400:                                              ; preds = %21
  br i1 %22, label %401, label %456

401:                                              ; preds = %400
  %402 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %403 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %402) #7, !srcloc !9
  %404 = and i32 %403, -13
  %405 = or i32 %404, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %405) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %406 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %11, i32 -1090519041) #6, !srcloc !29
  %407 = extractvalue { i32, i32 } %406, 0
  %408 = extractvalue { i32, i32 } %406, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %403) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %409 = icmp eq i32 %407, 0
  br i1 %409, label %410, label %456

410:                                              ; preds = %401
  %411 = getelementptr inbounds %struct.vt_sizes, ptr %11, i32 0, i32 1
  %412 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %402) #7, !srcloc !9
  %413 = and i32 %412, -13
  %414 = or i32 %413, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %414) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %415 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %411, i32 -1090519041) #6, !srcloc !30
  %416 = extractvalue { i32, i32 } %415, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %412) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %456

418:                                              ; preds = %410
  %419 = extractvalue { i32, i32 } %415, 1
  call void @console_lock() #6
  %420 = and i32 %419, 65535
  %421 = and i32 %408, 65535
  br label %422

422:                                              ; preds = %431, %418
  %423 = phi i32 [ 0, %418 ], [ %432, %431 ]
  %424 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %423
  %425 = load ptr, ptr %424, align 4
  %426 = icmp eq ptr %425, null
  br i1 %426, label %431, label %427

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.vc_data, ptr %425, i32 0, i32 43
  store i32 1, ptr %428, align 4
  %429 = load ptr, ptr %424, align 4
  %430 = call i32 @vc_resize(ptr noundef %429, i32 noundef %420, i32 noundef %421) #6
  br label %431

431:                                              ; preds = %427, %422
  %432 = add nuw nsw i32 %423, 1
  %433 = icmp eq i32 %432, 63
  br i1 %433, label %434, label %422

434:                                              ; preds = %431
  call void @console_unlock() #6
  br label %454

435:                                              ; preds = %21
  br i1 %22, label %436, label %456

436:                                              ; preds = %435
  %437 = call fastcc i32 @vt_resizex(ptr noundef %10, ptr noundef %11)
  br label %456

438:                                              ; preds = %21
  %439 = call zeroext i1 @capable(i32 noundef 26) #6
  br i1 %439, label %440, label %456

440:                                              ; preds = %438
  store i8 1, ptr @vt_dont_switch, align 1
  br label %454

441:                                              ; preds = %21
  %442 = call zeroext i1 @capable(i32 noundef 26) #6
  br i1 %442, label %443, label %456

443:                                              ; preds = %441
  store i8 0, ptr @vt_dont_switch, align 1
  br label %454

444:                                              ; preds = %21
  %445 = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 27
  %446 = load i16, ptr %445, align 4
  %447 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %448 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %447) #7, !srcloc !9
  %449 = and i32 %448, -13
  %450 = or i32 %449, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %450) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %451 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i16 %446, i32 -1090519041) #6, !srcloc !31
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %448) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  br label %456

452:                                              ; preds = %21
  %453 = call fastcc i32 @vt_event_wait_ioctl(ptr noundef %11)
  br label %456

454:                                              ; preds = %443, %440, %434, %396, %378, %278, %261
  br label %456

455:                                              ; preds = %235, %21
  br label %456

456:                                              ; preds = %455, %454, %452, %444, %441, %438, %436, %435, %410, %401, %400, %397, %392, %390, %389, %387, %384, %383, %381, %380, %372, %369, %368, %358, %327, %285, %278, %277, %259, %238, %235, %197, %196, %191, %186, %181, %180, %177, %176, %170, %133, %131, %130, %92, %80, %74, %34, %27, %21, %21
  %457 = phi i32 [ %453, %452 ], [ %451, %444 ], [ 0, %454 ], [ %437, %436 ], [ %399, %397 ], [ %391, %390 ], [ %388, %387 ], [ %382, %381 ], [ %367, %358 ], [ -14, %278 ], [ %239, %238 ], [ %178, %177 ], [ %236, %235 ], [ %332, %327 ], [ -14, %285 ], [ -1, %368 ], [ -6, %369 ], [ %376, %372 ], [ -1, %380 ], [ -1, %383 ], [ -6, %384 ], [ -1, %389 ], [ -6, %392 ], [ -1, %435 ], [ -1, %438 ], [ -1, %441 ], [ %260, %259 ], [ -14, %277 ], [ -22, %133 ], [ -1, %130 ], [ -1, %131 ], [ -1, %92 ], [ -22, %21 ], [ -22, %21 ], [ -1, %80 ], [ -1, %34 ], [ -1, %27 ], [ -14, %74 ], [ -14, %170 ], [ 0, %176 ], [ -1, %196 ], [ -1, %191 ], [ -1, %186 ], [ -1, %181 ], [ 0, %197 ], [ -14, %401 ], [ -14, %410 ], [ -1, %400 ], [ -515, %180 ], [ -515, %455 ]
  ret i32 %457
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tioclinux(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_pid(ptr noundef returned %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #6, !srcloc !32
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #6, !srcloc !33
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !34

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !13

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 2, %3 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %12) #6
  br label %13

13:                                               ; preds = %11, %7, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_allocate(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_console(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vt_setactivate(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.vt_setactivate, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1090519040) #8, !srcloc !22
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !13

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #6
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #7, !srcloc !9
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %12 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 12) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !13

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 12, %1 ]
  %16 = sub i32 12, %15
  %17 = getelementptr i8, ptr %2, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #6
  br label %56

18:                                               ; preds = %6
  %19 = load i32, ptr %2, align 4
  %20 = add i32 %19, -64
  %21 = icmp ult i32 %20, -63
  br i1 %21, label %56, label %22

22:                                               ; preds = %18
  %23 = add nsw i32 %19, -1
  store i32 %23, ptr %2, align 4
  %24 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %23, i32 63) #6, !srcloc !28
  %25 = and i32 %24, %23
  store i32 %25, ptr %2, align 4
  call void @console_lock() #6
  %26 = load i32, ptr %2, align 4
  %27 = call i32 @vc_allocate(i32 noundef %26) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  call void @console_unlock() #6
  br label %56

30:                                               ; preds = %22
  %31 = load i32, ptr %2, align 4
  %32 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.vc_data, ptr %33, i32 0, i32 33
  %35 = getelementptr inbounds %struct.vt_setactivate, ptr %2, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  store i64 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.vc_data, ptr %33, i32 0, i32 33, i32 4
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.vc_data, ptr %33, i32 0, i32 34
  %39 = load ptr, ptr %38, align 4
  call void @put_pid(ptr noundef %39) #6
  %40 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 62
  %41 = load ptr, ptr %40, align 64
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %41) #6, !srcloc !32
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #6, !srcloc !33
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !34

47:                                               ; preds = %43
  %48 = add i32 %45, 1
  %49 = or i32 %48, %45
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %53, label %51, !prof !13

51:                                               ; preds = %47, %43
  %52 = phi i32 [ 2, %43 ], [ 1, %47 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef %52) #6
  br label %53

53:                                               ; preds = %51, %47, %30
  store ptr %41, ptr %38, align 4
  call void @console_unlock() #6
  %54 = load i32, ptr %2, align 4
  %55 = call i32 @set_console(i32 noundef %54) #6
  br label %56

56:                                               ; preds = %53, %29, %18, %14
  %57 = phi i32 [ %27, %29 ], [ 0, %53 ], [ -6, %18 ], [ -14, %14 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vt_reldisp(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 33
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 35
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = icmp eq i32 %1, 2
  %12 = select i1 %11, i32 0, i32 -22
  br label %21

13:                                               ; preds = %6
  %14 = icmp eq i32 %1, 0
  store i32 -1, ptr %7, align 4
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @vc_allocate(i32 noundef %8) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %8
  %20 = load ptr, ptr %19, align 4
  tail call fastcc void @complete_change_console(ptr noundef %20)
  br label %21

21:                                               ; preds = %18, %15, %13, %10, %2
  %22 = phi i32 [ %12, %10 ], [ 0, %18 ], [ -22, %2 ], [ %16, %15 ], [ 0, %13 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vt_disallocate_all() unnamed_addr #0 {
  %1 = alloca [63 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %1) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(252) %1, i8 0, i32 252, i1 false), !annotation !8
  tail call void @console_lock() #6
  br label %2

2:                                                ; preds = %31, %0
  %3 = phi i32 [ 1, %0 ], [ %34, %31 ]
  %4 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = tail call i32 @is_console_locked() #6
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr @oops_in_progress, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !25

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %15

15:                                               ; preds = %14, %8, %2
  %16 = icmp eq ptr %5, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 19
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 1
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i1 [ false, %15 ], [ %20, %17 ]
  %23 = load i32, ptr @fg_console, align 4
  %24 = icmp eq i32 %23, %3
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 4
  %28 = tail call zeroext i1 @vc_is_sel(ptr noundef %27) #6
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @vc_deallocate(i32 noundef %3) #6
  br label %31

31:                                               ; preds = %29, %26, %21
  %32 = phi ptr [ %30, %29 ], [ null, %21 ], [ null, %26 ]
  %33 = getelementptr [63 x ptr], ptr %1, i32 0, i32 %3
  store ptr %32, ptr %33, align 4
  %34 = add nuw nsw i32 %3, 1
  %35 = icmp eq i32 %34, 63
  br i1 %35, label %36, label %2

36:                                               ; preds = %31
  tail call void @console_unlock() #6
  br label %37

37:                                               ; preds = %43, %36
  %38 = phi i32 [ 1, %36 ], [ %44, %43 ]
  %39 = getelementptr [63 x ptr], ptr %1, i32 0, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @tty_port_put(ptr noundef nonnull %40) #6
  br label %43

43:                                               ; preds = %42, %37
  %44 = add nuw nsw i32 %38, 1
  %45 = icmp eq i32 %44, 63
  br i1 %45, label %46, label %37

46:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vt_disallocate(i32 noundef %0) unnamed_addr #0 {
  tail call void @console_lock() #6
  %2 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = tail call i32 @is_console_locked() #6
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !25

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %13

13:                                               ; preds = %12, %6, %1
  %14 = icmp eq ptr %3, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 19
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 1
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i1 [ false, %13 ], [ %18, %15 ]
  %21 = load i32, ptr @fg_console, align 4
  %22 = icmp eq i32 %21, %0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 4
  %26 = tail call zeroext i1 @vc_is_sel(ptr noundef %25) #6
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %0, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = tail call ptr @vc_deallocate(i32 noundef %0) #6
  br label %31

31:                                               ; preds = %29, %27, %24, %19
  %32 = phi ptr [ %30, %29 ], [ null, %27 ], [ null, %24 ], [ null, %19 ]
  %33 = phi i32 [ 0, %29 ], [ 0, %27 ], [ -16, %24 ], [ -16, %19 ]
  tail call void @console_unlock() #6
  %34 = icmp ne ptr %32, null
  %35 = icmp ne i32 %0, 0
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  tail call void @tty_port_put(ptr noundef nonnull %32) #6
  br label %38

38:                                               ; preds = %37, %31
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vt_resizex(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.vt_consize, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1090519040) #8, !srcloc !22
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !13

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #6
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #7, !srcloc !9
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 12) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !13

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 12, %2 ]
  %17 = sub i32 12, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #6
  br label %94

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.vt_consize, ptr %3, i32 0, i32 2
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %20, align 2
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i16 [ %26, %23 ], [ %21, %19 ]
  %29 = getelementptr inbounds %struct.vt_consize, ptr %3, i32 0, i32 3
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = udiv i16 %28, %30
  %34 = load i16, ptr %3, align 2
  %35 = icmp eq i16 %34, %33
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = icmp eq i16 %34, 0
  br i1 %37, label %38, label %94

38:                                               ; preds = %36
  store i16 %33, ptr %3, align 2
  br label %39

39:                                               ; preds = %38, %32, %27
  %40 = getelementptr inbounds %struct.vt_consize, ptr %3, i32 0, i32 4
  %41 = load i16, ptr %40, align 2
  %42 = icmp ne i16 %41, 0
  %43 = getelementptr inbounds %struct.vt_consize, ptr %3, i32 0, i32 5
  %44 = load i16, ptr %43, align 2
  %45 = icmp ne i16 %44, 0
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = udiv i16 %41, %44
  %49 = getelementptr inbounds %struct.vt_consize, ptr %3, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = icmp eq i16 %50, %48
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = icmp eq i16 %50, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %52
  store i16 %48, ptr %49, align 2
  br label %55

55:                                               ; preds = %54, %47, %39
  %56 = icmp ugt i16 %30, 32
  br i1 %56, label %94, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.vt_consize, ptr %3, i32 0, i32 1
  br label %59

59:                                               ; preds = %91, %57
  %60 = phi i32 [ 0, %57 ], [ %92, %91 ]
  %61 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %91, label %64

64:                                               ; preds = %59
  call void @console_lock() #6
  %65 = load ptr, ptr %61, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %89, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.vc_data, ptr %65, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.vc_data, ptr %65, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = load i16, ptr %20, align 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = zext i16 %72 to i32
  store i32 %75, ptr %68, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = load i16, ptr %29, align 2
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = zext i16 %77 to i32
  store i32 %80, ptr %70, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = getelementptr inbounds %struct.vc_data, ptr %65, i32 0, i32 43
  store i32 1, ptr %82, align 4
  %83 = load i16, ptr %58, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, ptr %3, align 2
  %86 = zext i16 %85 to i32
  %87 = call i32 @vc_resize(ptr noundef nonnull %65, i32 noundef %84, i32 noundef %86) #6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81, %64
  call void @console_unlock() #6
  br label %91

90:                                               ; preds = %81
  store i32 %69, ptr %68, align 4
  store i32 %71, ptr %70, align 4
  call void @console_unlock() #6
  br label %94

91:                                               ; preds = %89, %59
  %92 = add nuw nsw i32 %60, 1
  %93 = icmp eq i32 %92, 63
  br i1 %93, label %94, label %59

94:                                               ; preds = %91, %90, %55, %52, %36, %15
  %95 = phi i32 [ %87, %90 ], [ -22, %55 ], [ -22, %36 ], [ -22, %52 ], [ -14, %15 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vt_event_wait_ioctl(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca %struct.vt_event_wait, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.vt_event_wait, ptr %3, i32 0, i32 1
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 28, i32 -1090519040) #8
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !13

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #6
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #7, !srcloc !9
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %14 = call i32 @arm_copy_from_user(ptr noundef %4, ptr noundef %0, i32 noundef 28) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !13

16:                                               ; preds = %8, %1
  %17 = phi i32 [ %14, %8 ], [ 28, %1 ]
  %18 = sub i32 28, %17
  %19 = getelementptr i8, ptr %4, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #6
  br label %58

20:                                               ; preds = %8
  %21 = load i32, ptr %4, align 4
  %22 = icmp ult i32 %21, 16
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  store volatile ptr %3, ptr %3, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vt_event_wait, ptr %3, i32 0, i32 2
  store i32 0, ptr %25, align 4
  %26 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %27 = load ptr, ptr @vt_events, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %3, ptr %28, align 4
  store ptr %27, ptr %3, align 4
  store ptr @vt_events, ptr %24, align 4
  store volatile ptr %3, ptr @vt_events, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %26) #6
  %29 = load i32, ptr %25, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #6, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #6
  %32 = call i32 @prepare_to_wait_event(ptr noundef nonnull @vt_event_waitqueue, ptr noundef nonnull %2, i32 noundef 1) #6
  %33 = load i32, ptr %25, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %38, %31
  %36 = phi i32 [ %39, %38 ], [ %32, %31 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  call void @schedule() #6
  %39 = call i32 @prepare_to_wait_event(ptr noundef nonnull @vt_event_waitqueue, ptr noundef nonnull %2, i32 noundef 1) #6
  %40 = load i32, ptr %25, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %35, label %42

42:                                               ; preds = %38, %31
  call void @finish_wait(ptr noundef nonnull @vt_event_waitqueue, ptr noundef nonnull %2) #6
  br label %43

43:                                               ; preds = %42, %35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  br label %44

44:                                               ; preds = %43, %23
  %45 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %46 = load ptr, ptr %24, align 4
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %45) #6
  %49 = load i32, ptr %25, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #7, !srcloc !9
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %55 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %4, i32 noundef 28) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 0, i32 -14
  br label %58

58:                                               ; preds = %51, %44, %20, %16
  %59 = phi i32 [ -22, %20 ], [ -4, %44 ], [ -14, %16 ], [ %57, %51 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_vc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  tail call void @vt_reset_unicode(i32 noundef %5) #6
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 33
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 34
  store i64 0, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  tail call void @put_pid(ptr noundef %8) #6
  store ptr null, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 35
  store i32 -1, ptr %9, align 4
  tail call void @reset_palette(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_reset_unicode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_palette(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc_SAK(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call void @console_lock() #6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @__do_SAK(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.vc_data, ptr %3, i32 0, i32 17
  store i8 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vc_data, ptr %3, i32 0, i32 3
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  tail call void @vt_reset_unicode(i32 noundef %14) #6
  %15 = getelementptr inbounds %struct.vc_data, ptr %3, i32 0, i32 33
  %16 = getelementptr inbounds %struct.vc_data, ptr %3, i32 0, i32 34
  store i64 0, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  tail call void @put_pid(ptr noundef %17) #6
  store ptr null, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vc_data, ptr %3, i32 0, i32 35
  store i32 -1, ptr %18, align 4
  tail call void @reset_palette(ptr noundef nonnull %3) #6
  br label %19

19:                                               ; preds = %10, %1
  tail call void @console_unlock() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @change_console(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = load i32, ptr @fg_console, align 4
  %8 = icmp ne i32 %7, %6
  %9 = load i8, ptr @vt_dont_switch, align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %38

12:                                               ; preds = %3
  %13 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vc_data, ptr %14, i32 0, i32 33
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.vc_data, ptr %14, i32 0, i32 35
  store i32 %6, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vc_data, ptr %14, i32 0, i32 34
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.vc_data, ptr %14, i32 0, i32 33, i32 2
  %23 = load i16, ptr %22, align 2
  %24 = sext i16 %23 to i32
  %25 = tail call i32 @kill_pid(ptr noundef %21, i32 noundef %24, i32 noundef 1) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.vc_data, ptr %14, i32 0, i32 17
  store i8 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.vc_data, ptr %14, i32 0, i32 3
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  tail call void @vt_reset_unicode(i32 noundef %31) #6
  store i64 0, ptr %15, align 4
  %32 = load ptr, ptr %20, align 4
  tail call void @put_pid(ptr noundef %32) #6
  store ptr null, ptr %20, align 4
  store i32 -1, ptr %19, align 4
  tail call void @reset_palette(ptr noundef %14) #6
  br label %33

33:                                               ; preds = %27, %12
  %34 = getelementptr inbounds %struct.vc_data, ptr %14, i32 0, i32 17
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call fastcc void @complete_change_console(ptr noundef nonnull %0)
  br label %38

38:                                               ; preds = %37, %33, %18, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @complete_change_console(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @fg_console, align 4
  store i32 %2, ptr @last_console, align 4
  %3 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 17
  %6 = load i8, ptr %5, align 4
  tail call void @redraw_screen(ptr noundef %0, i32 noundef 1) #6
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %6, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = icmp eq i8 %8, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @do_unblank_screen(i32 noundef 1) #6
  br label %14

13:                                               ; preds = %10
  tail call void @do_blank_screen(i32 noundef 1) #6
  br label %14

14:                                               ; preds = %13, %12, %1
  %15 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 33
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 34
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 33, i32 3
  %22 = load i16, ptr %21, align 4
  %23 = sext i16 %22 to i32
  %24 = tail call i32 @kill_pid(ptr noundef %20, i32 noundef %23, i32 noundef 1) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %18
  store i8 0, ptr %7, align 4
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  tail call void @vt_reset_unicode(i32 noundef %29) #6
  store i64 0, ptr %15, align 4
  %30 = load ptr, ptr %19, align 4
  tail call void @put_pid(ptr noundef %30) #6
  store ptr null, ptr %19, align 4
  %31 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 35
  store i32 -1, ptr %31, align 4
  tail call void @reset_palette(ptr noundef %0) #6
  %32 = load i8, ptr %7, align 4
  %33 = icmp eq i8 %6, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = icmp eq i8 %32, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call void @do_unblank_screen(i32 noundef 1) #6
  br label %38

37:                                               ; preds = %34
  tail call void @do_blank_screen(i32 noundef 1) #6
  br label %38

38:                                               ; preds = %37, %36, %26, %18, %14
  %39 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %40 = load i16, ptr %39, align 4
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vt_event_lock) #6
  %42 = load ptr, ptr @vt_events, align 4
  %43 = icmp eq ptr %42, @vt_events
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %41) #6
  br label %67

45:                                               ; preds = %38
  %46 = zext i16 %40 to i32
  %47 = add i32 %2, 1
  %48 = add nuw nsw i32 %46, 1
  br label %49

49:                                               ; preds = %60, %45
  %50 = phi ptr [ %42, %45 ], [ %62, %60 ]
  %51 = phi i32 [ 0, %45 ], [ %61, %60 ]
  %52 = getelementptr inbounds %struct.vt_event_wait, ptr %50, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  store i32 1, ptr %52, align 4
  %57 = getelementptr inbounds %struct.vt_event_wait, ptr %50, i32 0, i32 1, i32 1
  store i32 %47, ptr %57, align 4
  %58 = getelementptr inbounds %struct.vt_event_wait, ptr %50, i32 0, i32 1, i32 2
  store i32 %48, ptr %58, align 4
  %59 = getelementptr inbounds %struct.vt_event_wait, ptr %50, i32 0, i32 2
  store i32 1, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i32 [ 1, %56 ], [ %51, %49 ]
  %62 = load ptr, ptr %50, align 4
  %63 = icmp eq ptr %62, @vt_events
  br i1 %63, label %64, label %49

64:                                               ; preds = %60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vt_event_lock, i32 noundef %41) #6
  %65 = icmp eq i32 %61, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call void @__wake_up(ptr noundef nonnull @vt_event_waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %67

67:                                               ; preds = %66, %64, %44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_move_to_console(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @console_lock() #6
  %3 = load i32, ptr @disable_vt_switch, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @console_unlock() #6
  br label %21

6:                                                ; preds = %2
  %7 = load i32, ptr @fg_console, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @vc_allocate(i32 noundef %0) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @console_unlock() #6
  br label %21

13:                                               ; preds = %9, %6
  %14 = tail call i32 @set_console(i32 noundef %0) #6
  %15 = icmp eq i32 %14, 0
  tail call void @console_unlock() #6
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = add i32 %0, 1
  %18 = tail call i32 @vt_waitactive(i32 noundef %17)
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %7, i32 -4
  br label %21

21:                                               ; preds = %16, %13, %12, %5
  %22 = phi i32 [ 0, %5 ], [ -28, %12 ], [ %20, %16 ], [ -5, %13 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_set_vt_switch(i32 noundef %0) #0 {
  tail call void @console_lock() #6
  %2 = icmp eq i32 %0, 0
  %3 = zext i1 %2 to i32
  store i32 %3, ptr @disable_vt_switch, align 4
  tail call void @console_unlock() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kd_mksound(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kbd_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vt_kdsetmode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = getelementptr inbounds [4 x i32], ptr @switch.table.vt_kdsetmode, i32 0, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %4
  %12 = trunc i32 %6 to i8
  store i8 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = load i32, ptr @fg_console, align 4
  %17 = icmp eq i32 %16, %15
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = icmp eq i32 %1, 1
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @do_unblank_screen(i32 noundef 1) #6
  br label %22

21:                                               ; preds = %18
  tail call void @do_blank_screen(i32 noundef 1) #6
  br label %22

22:                                               ; preds = %21, %20, %11, %4, %2
  %23 = phi i32 [ -22, %2 ], [ 0, %4 ], [ 0, %11 ], [ 0, %21 ], [ 0, %20 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdskbmode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkbmode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdskbmeta(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkbmeta(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kbkeycode_ioctl(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdsk_ioctl(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkb_ioctl(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_diacrit(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdskled(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_font_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_unblank_screen(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_blank_screen(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_trans_old(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_trans_old(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_trans_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_trans_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_clear_unimap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_unimap(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_get_unimap(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc_deallocate(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vc_is_sel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @redraw_screen(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 2483726}
!10 = !{i64 2483923}
!11 = !{i64 2149969202}
!12 = !{i64 2153744650, i64 2153744930, i64 2153745264, i64 2153745598}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153756513, i64 2153756793, i64 2153757127, i64 2153757461}
!15 = !{i64 2153764773, i64 2153765053, i64 2153765387, i64 2153765721}
!16 = !{i64 2153773014, i64 2153773294, i64 2153773628, i64 2153773962}
!17 = !{i64 2149260997}
!18 = !{i64 2149256821}
!19 = !{i64 2149256896, i64 2149256923, i64 2149256970, i64 2149256992, i64 2149257020, i64 2149257040}
!20 = !{i64 514595}
!21 = !{i64 2149285141}
!22 = !{i64 2149987614, i64 2149987639}
!23 = !{i64 2149988192, i64 2149988217}
!24 = !{i64 2153782771, i64 2153783051, i64 2153783385, i64 2153783719}
!25 = !{!"branch_weights", i32 1, i32 4001}
!26 = !{i64 2153790961, i64 2153791241, i64 2153791575, i64 2153791909}
!27 = !{i64 2153800969, i64 2153801249, i64 2153801583, i64 2153801917}
!28 = !{i64 359718, i64 359735, i64 2147843805}
!29 = !{i64 2153812407, i64 2153812687, i64 2153813021, i64 2153813355}
!30 = !{i64 2153824363, i64 2153824643, i64 2153824977, i64 2153825311}
!31 = !{i64 2153834202, i64 2153834482, i64 2153834816, i64 2153835150}
!32 = !{i64 485603, i64 2147987169, i64 2147987195, i64 2147987242, i64 2147987264, i64 2147987292, i64 2147987312}
!33 = !{i64 2148051889, i64 2148051921, i64 2148051950, i64 2148051984, i64 2148052015, i64 2148052038}
!34 = !{!"branch_weights", i32 1, i32 2000}
