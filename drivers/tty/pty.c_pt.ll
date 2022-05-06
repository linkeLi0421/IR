; ModuleID = '/llk/IR/drivers/tty/pty.c_pt.bc'
source_filename = "../drivers/tty/pty.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.path = type { ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__param_str_legacy_count = internal constant [17 x i8] c"pty.legacy_count\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@legacy_count = internal global i32 256, align 4
@__param_legacy_count = internal constant %struct.kernel_param { ptr @__param_str_legacy_count, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.66 { ptr @legacy_count } }, section "__param", align 4
@__UNIQUE_ID_legacy_counttype226 = internal constant [30 x i8] c"pty.parmtype=legacy_count:int\00", section ".modinfo", align 1
@ptm_driver = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_pty__227_957_pty_init6 = internal global ptr @pty_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't allocate pty driver\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't allocate pty slave driver\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pty_master\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pty\00", align 1
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@master_pty_ops_bsd = internal constant %struct.tty_operations { ptr null, ptr @pty_install, ptr @pty_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr @pty_bsd_ioctl, ptr null, ptr null, ptr null, ptr @pty_unthrottle, ptr null, ptr null, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pty_resize, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"pty_slave\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ttyp\00", align 1
@slave_pty_ops_bsd = internal constant %struct.tty_operations { ptr null, ptr @pty_install, ptr @pty_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr null, ptr null, ptr @pty_set_termios, ptr null, ptr @pty_unthrottle, ptr @pty_stop, ptr @pty_start, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pty_resize, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Couldn't register pty driver\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Couldn't register pty slave driver\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"drivers/tty/pty.c\00", align 1
@devpts_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devpts_mutex, i64 12), ptr getelementptr (i8, ptr @devpts_mutex, i64 12) } }, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Couldn't allocate Unix98 ptm driver\00", align 1
@pts_driver = internal unnamed_addr global ptr null, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Couldn't allocate Unix98 pts driver\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ptm\00", align 1
@ptm_unix98_ops = internal constant %struct.tty_operations { ptr @ptm_unix98_lookup, ptr @pty_unix98_install, ptr @pty_unix98_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr @pty_unix98_ioctl, ptr null, ptr null, ptr null, ptr @pty_unthrottle, ptr null, ptr null, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pty_resize, ptr null, ptr null, ptr null, ptr @pty_show_fdinfo, ptr null }, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"pts\00", align 1
@pty_unix98_ops = internal constant %struct.tty_operations { ptr @pts_unix98_lookup, ptr @pty_unix98_install, ptr @pty_unix98_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr null, ptr null, ptr @pty_set_termios, ptr null, ptr @pty_unthrottle, ptr @pty_stop, ptr @pty_start, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"Couldn't register Unix98 ptm driver\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Couldn't register Unix98 pts driver\00", align 1
@ptmx_fops = internal global %struct.file_operations zeroinitializer, section ".data..ro_after_init", align 4
@ptmx_cdev = internal global %struct.cdev zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/ptmx\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Couldn't register /dev/ptmx driver\00", align 1
@tty_class = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"ptmx\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"tty-index:\09%d\0A\00", align 1
@tty_mutex = external dso_local global %struct.mutex, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_legacy_counttype226, ptr @__initcall__kmod_pty__227_957_pty_init6, ptr @__param_legacy_count], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptm_open_peer(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr @ptm_driver, align 4
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = tail call i32 @get_unused_fd_flags(i32 noundef %2) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @devpts_mntget(ptr noundef %0, ptr noundef %14) #12
  store ptr %15, ptr %4, align 8
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 24
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 30
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = tail call ptr @llvm.thread.pointer() #12
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 83
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @dentry_open(ptr noundef nonnull %4, i32 noundef %2, ptr noundef %25) #12
  %27 = load ptr, ptr %4, align 8
  call void @mntput(ptr noundef %27) #12
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  call void @fd_install(i32 noundef %10, ptr noundef %26) #12
  br label %33

30:                                               ; preds = %17, %12
  %31 = phi ptr [ %15, %12 ], [ %26, %17 ]
  %32 = ptrtoint ptr %31 to i32
  call void @put_unused_fd(i32 noundef %10) #12
  br label %33

33:                                               ; preds = %30, %29, %9, %3
  %34 = phi i32 [ %10, %29 ], [ -5, %3 ], [ %32, %30 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devpts_mntget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pty_init() #4 section ".init.text" {
  tail call fastcc void @legacy_pty_init() #13
  tail call fastcc void @unix98_pty_init() #13
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @legacy_pty_init() unnamed_addr #4 section ".init.text" {
  %1 = load i32, ptr @legacy_count, align 4
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %46, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @__tty_alloc_driver(i32 noundef %1, ptr noundef null, i32 noundef 70) #12
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #14
  unreachable

7:                                                ; preds = %3
  %8 = load i32, ptr @legacy_count, align 4
  %9 = tail call ptr @__tty_alloc_driver(i32 noundef %8, ptr noundef null, i32 noundef 70) #12
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #14
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 4
  store ptr @.str.2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 5
  store ptr @.str.3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 7
  store i32 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 8
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 10
  store i16 4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 11
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %19, ptr noundef nonnull align 4 dereferenceable(44) @tty_std_termios, i32 36, i1 false)
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 12, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 12, i32 2
  store i32 191, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 12, i32 3
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 12, i32 6
  store i32 38400, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 12, i32 7
  store i32 38400, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 15
  store ptr %9, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 20
  store ptr @master_pty_ops_bsd, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 4
  store ptr @.str.4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 5
  store ptr @.str.5, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 7
  store i32 3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 8
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 10
  store i16 4, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 11
  store i16 2, ptr %32, align 2
  %33 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %33, ptr noundef nonnull align 4 dereferenceable(44) @tty_std_termios, i32 36, i1 false)
  %34 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12, i32 2
  store i32 191, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12, i32 6
  store i32 38400, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12, i32 7
  store i32 38400, ptr %36, align 4
  %37 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 15
  store ptr %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 20
  store ptr @slave_pty_ops_bsd, ptr %38, align 4
  %39 = tail call i32 @tty_register_driver(ptr noundef %4) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %12
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #14
  unreachable

42:                                               ; preds = %12
  %43 = tail call i32 @tty_register_driver(ptr noundef %9) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #14
  unreachable

46:                                               ; preds = %42, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @unix98_pty_init() unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @__tty_alloc_driver(i32 noundef 1048576, ptr noundef null, i32 noundef 94) #12
  store ptr %1, ptr @ptm_driver, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.9) #14
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @__tty_alloc_driver(i32 noundef 1048576, ptr noundef null, i32 noundef 94) #12
  store ptr %5, ptr @pts_driver, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10) #14
  unreachable

8:                                                ; preds = %4
  %9 = load ptr, ptr @ptm_driver, align 4
  %10 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 4
  store ptr @.str.2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 5
  store ptr @.str.11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 7
  store i32 128, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 8
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 10
  store i16 4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 11
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %16, ptr noundef nonnull align 4 dereferenceable(44) @tty_std_termios, i32 36, i1 false)
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12, i32 1
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12, i32 2
  store i32 191, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12, i32 3
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12, i32 6
  store i32 38400, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12, i32 7
  store i32 38400, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 15
  store ptr %5, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 20
  store ptr @ptm_unix98_ops, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 4
  store ptr @.str.4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 5
  store ptr @.str.12, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 7
  store i32 136, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 8
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 10
  store i16 4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 11
  store i16 2, ptr %29, align 2
  %30 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %30, ptr noundef nonnull align 4 dereferenceable(44) @tty_std_termios, i32 36, i1 false)
  %31 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 12, i32 2
  store i32 191, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 12, i32 6
  store i32 38400, ptr %32, align 4
  %33 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 12, i32 7
  store i32 38400, ptr %33, align 4
  %34 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 15
  store ptr %9, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 20
  store ptr @pty_unix98_ops, ptr %35, align 4
  %36 = tail call i32 @tty_register_driver(ptr noundef %9) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %8
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.13) #14
  unreachable

39:                                               ; preds = %8
  %40 = load ptr, ptr @pts_driver, align 4
  %41 = tail call i32 @tty_register_driver(ptr noundef %40) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14) #14
  unreachable

44:                                               ; preds = %39
  tail call void @tty_default_fops(ptr noundef nonnull @ptmx_fops) #12
  store ptr @ptmx_open, ptr getelementptr inbounds (%struct.file_operations, ptr @ptmx_fops, i32 0, i32 14), align 4
  tail call void @cdev_init(ptr noundef nonnull @ptmx_cdev, ptr noundef nonnull @ptmx_fops) #12
  %45 = tail call i32 @cdev_add(ptr noundef nonnull @ptmx_cdev, i32 noundef 5242882, i32 noundef 1) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = tail call i32 @register_chrdev_region(i32 noundef 5242882, i32 noundef 1, ptr noundef nonnull @.str.15) #12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16) #14
  unreachable

51:                                               ; preds = %47
  %52 = load ptr, ptr @tty_class, align 4
  %53 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %52, ptr noundef null, i32 noundef 5242882, ptr noundef null, ptr noundef nonnull @.str.17) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pty_install(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @pty_common_install(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @pty_remove(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr ptr, ptr %6, i32 %8
  store ptr null, ptr %9, align 4
  %10 = icmp eq ptr %4, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_driver, ptr %13, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr ptr, ptr %15, i32 %17
  store ptr null, ptr %18, align 4
  br label %19

19:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pty_open(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tty_driver, ptr %20, i32 0, i32 11
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %9) #12
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.tty_struct, ptr %29, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %30) #12
  br label %31

31:                                               ; preds = %28, %24, %13, %8
  %32 = phi i32 [ 0, %28 ], [ 1, %24 ], [ 1, %13 ], [ 1, %8 ]
  %33 = phi i32 [ 0, %28 ], [ -5, %24 ], [ -5, %13 ], [ -5, %8 ]
  tail call void @_set_bit(i32 noundef %32, ptr noundef %9) #12
  br label %34

34:                                               ; preds = %31, %4, %2
  %35 = phi i32 [ -19, %4 ], [ -19, %2 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pty_close(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 11
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %22, !prof !9

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 50, i32 noundef 9, ptr noundef null) #12
  br label %22

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 17
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %56, label %22

22:                                               ; preds = %18, %12, %8
  %23 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %23) #12
  %24 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %24, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %25 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %25, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %26 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %26) #12
  %27 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 4
  store i8 0, ptr %27, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %28 = load i16, ptr %26, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %30 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.tty_struct, ptr %31, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %34) #12
  %35 = load ptr, ptr %30, align 4
  %36 = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %36, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %37 = load ptr, ptr %30, align 4
  %38 = getelementptr inbounds %struct.tty_struct, ptr %37, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %38, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.tty_driver, ptr %39, i32 0, i32 11
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, 1
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  tail call void @_set_bit(i32 noundef 2, ptr noundef %23) #12
  %44 = load ptr, ptr %3, align 4
  %45 = load ptr, ptr @ptm_driver, align 4
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  tail call void @mutex_lock(ptr noundef nonnull @devpts_mutex) #12
  %48 = load ptr, ptr %30, align 4
  %49 = getelementptr inbounds %struct.tty_struct, ptr %48, i32 0, i32 30
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @devpts_pty_kill(ptr noundef nonnull %50) #12
  br label %53

53:                                               ; preds = %52, %47
  tail call void @mutex_unlock(ptr noundef nonnull @devpts_mutex) #12
  br label %54

54:                                               ; preds = %53, %43
  %55 = load ptr, ptr %30, align 4
  tail call void @tty_vhangup(ptr noundef %55) #12
  br label %56

56:                                               ; preds = %54, %33, %22, %18, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pty_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 4
  tail call void @tty_port_put(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pty_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %7 = load i8, ptr %6, align 4, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 37
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_port, ptr %13, i32 0, i32 5
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #12
  %16 = load ptr, ptr %12, align 4
  %17 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %16, ptr noundef %1, i8 noundef zeroext 0, i32 noundef %2) #12
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.tty_port, ptr %18, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %15) #12
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr %12, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %22) #12
  br label %23

23:                                               ; preds = %21, %11, %9, %3
  %24 = phi i32 [ 0, %3 ], [ %17, %21 ], [ 0, %11 ], [ %2, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pty_write_room(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %3 = load i8, ptr %2, align 4, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @tty_buffer_space_avail(ptr noundef %9) #12
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pty_bsd_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %81 [
    i32 1074025521, label %4
    i32 -2147199943, label %20
    i32 21536, label %32
    i32 -2147199944, label %59
    i32 1074025526, label %70
    i32 -2147199952, label %82
  ]

4:                                                ; preds = %3
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %7) #15, !srcloc !16
  %9 = and i32 %8, -13
  %10 = or i32 %9, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %5, i32 -1090519041) #12, !srcloc !19
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %82

14:                                               ; preds = %4
  %15 = extractvalue { i32, i32 } %11, 1
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  br i1 %16, label %19, label %18

18:                                               ; preds = %14
  tail call void @_set_bit(i32 noundef 16, ptr noundef %17) #12
  br label %82

19:                                               ; preds = %14
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %17) #12
  br label %82

20:                                               ; preds = %3
  %21 = inttoptr i32 %2 to ptr
  %22 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %23 = load volatile i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 1
  %26 = tail call ptr @llvm.thread.pointer() #12
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #15, !srcloc !16
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 %25, i32 -1090519041) #12, !srcloc !20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  br label %82

32:                                               ; preds = %3
  %33 = inttoptr i32 %2 to ptr
  %34 = tail call ptr @llvm.thread.pointer() #12
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #15, !srcloc !16
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %39 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %33, i32 -1090519041) #12, !srcloc !21
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %32
  %43 = extractvalue { i32, i32 } %39, 1
  %44 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %44) #12
  %45 = icmp eq i32 %43, 0
  %46 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 4
  br i1 %45, label %54, label %47

47:                                               ; preds = %42
  %48 = load i8, ptr %46, align 1, !range !15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tty_struct, ptr %52, i32 0, i32 20, i32 3
  store i8 0, ptr %53, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  br label %54

54:                                               ; preds = %50, %42
  %55 = phi i8 [ 1, %50 ], [ 0, %42 ]
  store i8 %55, ptr %46, align 1
  br label %56

56:                                               ; preds = %54, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %57 = load i16, ptr %44, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %82

59:                                               ; preds = %3
  %60 = inttoptr i32 %2 to ptr
  %61 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 4
  %62 = load i8, ptr %61, align 1, !range !15
  %63 = zext i8 %62 to i32
  %64 = tail call ptr @llvm.thread.pointer() #12
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %65) #15, !srcloc !16
  %67 = and i32 %66, -13
  %68 = or i32 %67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %69 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %60, i32 %63, i32 -1090519041) #12, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  br label %82

70:                                               ; preds = %3
  switch i32 %2, label %82 [
    i32 20, label %71
    i32 3, label %71
    i32 2, label %71
  ]

71:                                               ; preds = %70, %70, %70
  %72 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = tail call ptr @tty_get_pgrp(ptr noundef nonnull %73) #12
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = tail call i32 @kill_pgrp(ptr noundef nonnull %76, i32 noundef %2, i32 noundef 1) #12
  br label %80

80:                                               ; preds = %78, %75
  tail call void @put_pid(ptr noundef %76) #12
  br label %82

81:                                               ; preds = %3
  br label %82

82:                                               ; preds = %81, %80, %71, %70, %59, %56, %32, %20, %19, %18, %4, %3
  %83 = phi i32 [ -515, %81 ], [ %69, %59 ], [ %31, %20 ], [ -22, %3 ], [ -14, %4 ], [ 0, %19 ], [ 0, %18 ], [ 0, %56 ], [ -14, %32 ], [ -22, %70 ], [ 0, %80 ], [ 0, %71 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pty_unthrottle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  tail call void @tty_wakeup(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pty_flush_buffer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  tail call void @tty_buffer_flush(ptr noundef nonnull %3, ptr noundef null) #12
  %6 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 20, i32 4
  %7 = load i8, ptr %6, align 1, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = or i8 %12, 2
  store i8 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %14, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %15 = load i16, ptr %10, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %17

17:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pty_resize(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 18
  %7 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %1, ptr noundef dereferenceable(8) %6, i32 8)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @tty_get_pgrp(ptr noundef %0) #12
  %11 = tail call ptr @tty_get_pgrp(ptr noundef %4) #12
  %12 = icmp eq ptr %10, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @kill_pgrp(ptr noundef nonnull %10, i32 noundef 28, i32 noundef 1) #12
  br label %15

15:                                               ; preds = %13, %9
  %16 = icmp ne ptr %11, %10
  %17 = icmp ne ptr %11, null
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 @kill_pgrp(ptr noundef nonnull %11, i32 noundef 28, i32 noundef 1) #12
  br label %21

21:                                               ; preds = %19, %15
  tail call void @put_pid(ptr noundef %10) #12
  tail call void @put_pid(ptr noundef %11) #12
  %22 = load i64, ptr %1, align 2
  store i64 %22, ptr %6, align 4
  %23 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 18
  %24 = load i64, ptr %1, align 2
  store i64 %24, ptr %23, align 4
  br label %25

25:                                               ; preds = %21, %2
  tail call void @mutex_unlock(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pty_common_install(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 11
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %88

9:                                                ; preds = %3
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 212) #16
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 212) #16
  %14 = icmp ne ptr %11, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %87

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tty_driver, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call zeroext i1 @try_module_get(ptr noundef %21) #12
  br i1 %22, label %23, label %87

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 4
  %25 = tail call ptr @alloc_tty_struct(ptr noundef %24, i32 noundef %5) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %83, label %27

27:                                               ; preds = %23
  tail call void @tty_set_lock_subclass(ptr noundef nonnull %25) #12
  br i1 %2, label %28, label %36

28:                                               ; preds = %27
  tail call void @tty_init_termios(ptr noundef %1) #12
  tail call void @tty_init_termios(ptr noundef nonnull %25) #12
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr inbounds %struct.tty_driver, ptr %29, i32 0, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr ptr, ptr %31, i32 %5
  store ptr %25, ptr %32, align 4
  %33 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 16
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr ptr, ptr %34, i32 %5
  store ptr %1, ptr %35, align 4
  br label %44

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 14
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %37, i8 0, i32 44, i1 false)
  %38 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  %39 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %38, ptr noundef align 4 dereferenceable(44) %39, i32 44, i1 false)
  %40 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 14
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %40, i8 0, i32 44, i1 false)
  %41 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 13
  %42 = load ptr, ptr %18, align 4
  %43 = getelementptr inbounds %struct.tty_driver, ptr %42, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %41, ptr noundef align 4 dereferenceable(44) %43, i32 44, i1 false)
  br label %44

44:                                               ; preds = %36, %28
  %45 = load ptr, ptr %18, align 4
  %46 = getelementptr inbounds %struct.tty_driver, ptr %45, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #12, !srcloc !24
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #12, !srcloc !25
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !9

50:                                               ; preds = %44
  %51 = add i32 %48, 1
  %52 = or i32 %51, %48
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %56, label %54, !prof !26

54:                                               ; preds = %50, %44
  %55 = phi i32 [ 2, %44 ], [ 1, %50 ]
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef %55) #12
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 24
  store ptr %25, ptr %57, align 4
  %58 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 24
  store ptr %1, ptr %58, align 4
  tail call void @tty_port_init(ptr noundef nonnull %11) #12
  tail call void @tty_port_init(ptr noundef nonnull %13) #12
  %59 = tail call i32 @tty_buffer_set_limit(ptr noundef nonnull %11, i32 noundef 8192) #12
  %60 = tail call i32 @tty_buffer_set_limit(ptr noundef nonnull %13, i32 noundef 8192) #12
  %61 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 37
  store ptr %11, ptr %61, align 4
  %62 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 37
  store ptr %13, ptr %62, align 4
  %63 = load ptr, ptr %61, align 4
  %64 = getelementptr inbounds %struct.tty_port, ptr %63, i32 0, i32 2
  store ptr %25, ptr %64, align 4
  %65 = load ptr, ptr %61, align 4
  tail call void @tty_buffer_set_lock_subclass(ptr noundef %65) #12
  %66 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #12, !srcloc !24
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #12, !srcloc !25
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70, !prof !9

70:                                               ; preds = %56
  %71 = add i32 %68, 1
  %72 = or i32 %71, %68
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %76, label %74, !prof !26

74:                                               ; preds = %70, %56
  %75 = phi i32 [ 2, %56 ], [ 1, %70 ]
  tail call void @refcount_warn_saturate(ptr noundef %66, i32 noundef %75) #12
  br label %76

76:                                               ; preds = %74, %70
  %77 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 17
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 17
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  br label %88

83:                                               ; preds = %23
  %84 = load ptr, ptr %18, align 4
  %85 = getelementptr inbounds %struct.tty_driver, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  tail call void @module_put(ptr noundef %86) #12
  br label %87

87:                                               ; preds = %83, %17, %9
  tail call void @kfree(ptr noundef %11) #12
  tail call void @kfree(ptr noundef %13) #12
  br label %88

88:                                               ; preds = %87, %76, %3
  %89 = phi i32 [ 0, %76 ], [ -12, %87 ], [ -5, %3 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_tty_struct(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_set_lock_subclass(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_init_termios(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_set_limit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_set_lock_subclass(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devpts_pty_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_space_avail(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_get_pgrp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pty_set_termios(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %67, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 20, i32 4
  %8 = load i8, ptr %7, align 1, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %67, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %14 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %12
  %17 = and i32 %16, 65536
  %18 = load i32, ptr %1, align 4
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %10
  %22 = getelementptr %struct.ktermios, ptr %1, i32 0, i32 5, i32 9
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 19
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr %struct.ktermios, ptr %1, i32 0, i32 5, i32 8
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 17
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %25, %21, %10
  %31 = phi i32 [ 0, %21 ], [ 0, %10 ], [ %29, %25 ]
  %32 = load i32, ptr %13, align 4
  %33 = and i32 %32, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 9
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 19
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 8
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 17
  br label %43

43:                                               ; preds = %39, %35, %30
  %44 = phi i1 [ false, %35 ], [ false, %30 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = icmp ne i32 %31, %45
  %47 = icmp ne i32 %17, 0
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %50) #12
  br i1 %46, label %51, label %57

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 3
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, -49
  %55 = select i1 %44, i8 32, i8 16
  %56 = or i8 %54, %55
  store i8 %56, ptr %52, align 4
  br label %57

57:                                               ; preds = %51, %49
  br i1 %47, label %58, label %62

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 3
  %60 = load i8, ptr %59, align 4
  %61 = or i8 %60, 64
  store i8 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %58, %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %63 = load i16, ptr %50, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.tty_struct, ptr %65, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %66, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %67

67:                                               ; preds = %62, %43, %6, %2
  %68 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, -433
  %71 = or i32 %70, 176
  store i32 %71, ptr %68, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pty_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 20, i32 4
  %7 = load i8, ptr %6, align 1, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #12
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, -13
  %15 = or i8 %14, 4
  store i8 %15, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #12
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #12
  br label %18

18:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pty_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 20, i32 4
  %7 = load i8, ptr %6, align 1, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #12
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, -13
  %15 = or i8 %14, 8
  store i8 %15, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #12
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #12
  br label %18

18:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_default_fops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptmx_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #12
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = or i32 %5, 67108864
  store i32 %6, ptr %4, align 8
  %7 = tail call i32 @tty_alloc_file(ptr noundef %1) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = tail call ptr @devpts_acquire(ptr noundef %1) #12
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = ptrtoint ptr %10 to i32
  br label %48

14:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @devpts_mutex) #12
  %15 = tail call i32 @devpts_new_index(ptr noundef %10) #12
  tail call void @mutex_unlock(ptr noundef nonnull @devpts_mutex) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %14
  tail call void @mutex_lock(ptr noundef nonnull @tty_mutex) #12
  %18 = load ptr, ptr @ptm_driver, align 4
  %19 = tail call ptr @tty_init_dev(ptr noundef %18, i32 noundef %15) #12
  tail call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #12
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %44, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 16, ptr noundef %22) #12
  %23 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 30
  store ptr %10, ptr %23, align 4
  tail call void @tty_add_file(ptr noundef %19, ptr noundef %1) #12
  %24 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 24
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @devpts_pty_new(ptr noundef %10, i32 noundef %15, ptr noundef %25) #12
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = ptrtoint ptr %26 to i32
  br label %41

30:                                               ; preds = %21
  %31 = load ptr, ptr %24, align 4
  %32 = getelementptr inbounds %struct.tty_struct, ptr %31, i32 0, i32 30
  store ptr %26, ptr %32, align 4
  %33 = load ptr, ptr @ptm_driver, align 4
  %34 = getelementptr inbounds %struct.tty_driver, ptr %33, i32 0, i32 20
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tty_operations, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %19, ptr noundef %1) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  tail call void @tty_unlock(ptr noundef %19) #12
  br label %50

41:                                               ; preds = %30, %28
  %42 = phi i32 [ %29, %28 ], [ %38, %30 ]
  tail call void @tty_unlock(ptr noundef %19) #12
  %43 = tail call i32 @tty_release(ptr noundef %0, ptr noundef %1) #12
  br label %50

44:                                               ; preds = %17
  %45 = ptrtoint ptr %19 to i32
  tail call void @devpts_kill_index(ptr noundef %10, i32 noundef %15) #12
  br label %46

46:                                               ; preds = %44, %14
  %47 = phi i32 [ %15, %14 ], [ %45, %44 ]
  tail call void @devpts_release(ptr noundef %10) #12
  br label %48

48:                                               ; preds = %46, %12
  %49 = phi i32 [ %13, %12 ], [ %47, %46 ]
  tail call void @tty_free_file(ptr noundef %1) #12
  br label %50

50:                                               ; preds = %48, %41, %40, %2
  %51 = phi i32 [ %49, %48 ], [ %42, %41 ], [ 0, %40 ], [ %7, %2 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @ptm_unix98_lookup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #10 {
  ret ptr inttoptr (i32 -5 to ptr)
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pty_unix98_install(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @pty_common_install(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pty_unix98_remove(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 11
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %1, %2 ]
  %13 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  tail call void @devpts_kill_index(ptr noundef nonnull %14, i32 noundef %18) #12
  tail call void @devpts_release(ptr noundef nonnull %14) #12
  br label %19

19:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pty_unix98_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %91 [
    i32 1074025521, label %4
    i32 -2147199943, label %20
    i32 21536, label %32
    i32 -2147199944, label %59
    i32 -2147199952, label %70
    i32 1074025526, label %80
  ]

4:                                                ; preds = %3
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %7) #15, !srcloc !16
  %9 = and i32 %8, -13
  %10 = or i32 %9, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %5, i32 -1090519041) #12, !srcloc !19
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %4
  %15 = extractvalue { i32, i32 } %11, 1
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  br i1 %16, label %19, label %18

18:                                               ; preds = %14
  tail call void @_set_bit(i32 noundef 16, ptr noundef %17) #12
  br label %91

19:                                               ; preds = %14
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %17) #12
  br label %91

20:                                               ; preds = %3
  %21 = inttoptr i32 %2 to ptr
  %22 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %23 = load volatile i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 1
  %26 = tail call ptr @llvm.thread.pointer() #12
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #15, !srcloc !16
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 %25, i32 -1090519041) #12, !srcloc !20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  br label %91

32:                                               ; preds = %3
  %33 = inttoptr i32 %2 to ptr
  %34 = tail call ptr @llvm.thread.pointer() #12
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #15, !srcloc !16
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %39 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %33, i32 -1090519041) #12, !srcloc !21
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %91

42:                                               ; preds = %32
  %43 = extractvalue { i32, i32 } %39, 1
  %44 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %44) #12
  %45 = icmp eq i32 %43, 0
  %46 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 4
  br i1 %45, label %54, label %47

47:                                               ; preds = %42
  %48 = load i8, ptr %46, align 1, !range !15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tty_struct, ptr %52, i32 0, i32 20, i32 3
  store i8 0, ptr %53, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  br label %54

54:                                               ; preds = %50, %42
  %55 = phi i8 [ 1, %50 ], [ 0, %42 ]
  store i8 %55, ptr %46, align 1
  br label %56

56:                                               ; preds = %54, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %57 = load i16, ptr %44, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %91

59:                                               ; preds = %3
  %60 = inttoptr i32 %2 to ptr
  %61 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 4
  %62 = load i8, ptr %61, align 1, !range !15
  %63 = zext i8 %62 to i32
  %64 = tail call ptr @llvm.thread.pointer() #12
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %65) #15, !srcloc !16
  %67 = and i32 %66, -13
  %68 = or i32 %67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %69 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %60, i32 %63, i32 -1090519041) #12, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  br label %91

70:                                               ; preds = %3
  %71 = inttoptr i32 %2 to ptr
  %72 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = tail call ptr @llvm.thread.pointer() #12
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %76 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %75) #15, !srcloc !16
  %77 = and i32 %76, -13
  %78 = or i32 %77, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  %79 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %71, i32 %73, i32 -1090519041) #12, !srcloc !27
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #12, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !18
  br label %91

80:                                               ; preds = %3
  switch i32 %2, label %91 [
    i32 20, label %81
    i32 3, label %81
    i32 2, label %81
  ]

81:                                               ; preds = %80, %80, %80
  %82 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = tail call ptr @tty_get_pgrp(ptr noundef nonnull %83) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = tail call i32 @kill_pgrp(ptr noundef nonnull %86, i32 noundef %2, i32 noundef 1) #12
  br label %90

90:                                               ; preds = %88, %85
  tail call void @put_pid(ptr noundef %86) #12
  br label %91

91:                                               ; preds = %90, %81, %80, %70, %59, %56, %32, %20, %19, %18, %4, %3
  %92 = phi i32 [ %79, %70 ], [ %69, %59 ], [ %31, %20 ], [ -515, %3 ], [ -14, %4 ], [ 0, %19 ], [ 0, %18 ], [ 0, %56 ], [ -14, %32 ], [ -22, %80 ], [ 0, %90 ], [ 0, %81 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pty_show_fdinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devpts_kill_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devpts_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pts_unix98_lookup(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @devpts_mutex) #12
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @devpts_get_priv(ptr noundef %5) #12
  tail call void @mutex_unlock(ptr noundef nonnull @devpts_mutex) #12
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr inttoptr (i32 -5 to ptr), ptr %6
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devpts_get_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_alloc_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devpts_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devpts_new_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_init_dev(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_add_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devpts_pty_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_free_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148949069}
!11 = !{i64 2148944893}
!12 = !{i64 2148944968, i64 2148944995, i64 2148945042, i64 2148945064, i64 2148945092, i64 2148945112}
!13 = !{i64 470467}
!14 = !{i64 2148973213}
!15 = !{i8 0, i8 2}
!16 = !{i64 4189779}
!17 = !{i64 4189976}
!18 = !{i64 2151675255}
!19 = !{i64 2153126580, i64 2153126860, i64 2153127194, i64 2153127528}
!20 = !{i64 2153139744, i64 2153140024, i64 2153140358, i64 2153140692}
!21 = !{i64 2153150914, i64 2153151194, i64 2153151528, i64 2153151862}
!22 = !{i64 2153154596}
!23 = !{i64 2153159940, i64 2153160220, i64 2153160554, i64 2153160888}
!24 = !{i64 564544, i64 2148054515, i64 2148054541, i64 2148054588, i64 2148054610, i64 2148054638, i64 2148054658}
!25 = !{i64 2148067388, i64 2148067420, i64 2148067449, i64 2148067483, i64 2148067514, i64 2148067537}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2153181344, i64 2153181624, i64 2153181958, i64 2153182292}
