; ModuleID = '/llk/IR/fs/notify/inotify/inotify_user.c_pt.bc'
source_filename = "../fs/notify/inotify/inotify_user.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.94 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%union.anon.94 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.inotify_inode_mark = type { %struct.fsnotify_mark, i32 }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.inotify_event_info = type { %struct.fsnotify_event, i32, i32, i32, i32, [0 x i8] }
%struct.fsnotify_event = type { %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.78, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.88, %struct.list_head, %struct.list_head, %union.anon.89 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.88 = type { %struct.list_head }
%union.anon.89 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.90, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.91, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.92, ptr, %struct.address_space, %struct.list_head, %union.anon.93, i32, i32, ptr, ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.91 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.92 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.93 = type { ptr }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [14 x %struct.atomic_t] }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.inotify_event = type { i32, i32, i32, i32, [0 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_inotify_user__281_864_inotify_user_setup5 = internal global ptr @inotify_user_setup, section ".initcall5.init", align 4
@inotify_inode_mark_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@inotify_remove_from_idr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [33 x i8] c"fs/notify/inotify/inotify_user.c\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: i_mark=%p i_mark->wd=%d i_mark->group=%p\0A\00", align 1
@__func__.inotify_remove_from_idr = private unnamed_addr constant [24 x i8] c"inotify_remove_from_idr\00", align 1
@inotify_remove_from_idr.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@inotify_remove_from_idr.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"%s: i_mark=%p i_mark->wd=%d i_mark->group=%p found_i_mark=%p found_i_mark->wd=%d found_i_mark->group=%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\013%s: i_mark=%p i_mark->wd=%d i_mark->group=%p\0A\00", align 1
@inotify_max_queued_events = internal global i32 0, section ".data..read_mostly", align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"inotify\00", align 1
@inotify_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @inotify_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inotify_poll, ptr @inotify_ioctl, ptr @inotify_ioctl, ptr null, i32 0, ptr null, ptr null, ptr @inotify_release, ptr null, ptr @fsnotify_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inotify_show_fdinfo, ptr null, ptr null, ptr null }, align 4
@inotify_fsnotify_ops = external dso_local constant %struct.fsnotify_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"inotify_inode_mark\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"fs/inotify\00", align 1
@inotify_table = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.11, ptr getelementptr (i8, ptr @init_user_ns, i64 376), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @it_zero, ptr @it_int_max }, %struct.ctl_table { ptr @.str.12, ptr getelementptr (i8, ptr @init_user_ns, i64 380), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @it_zero, ptr @it_int_max }, %struct.ctl_table { ptr @.str.13, ptr @inotify_max_queued_events, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"max_user_instances\00", align 1
@it_zero = internal global i32 0, align 4
@it_int_max = internal global i32 2147483647, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"max_user_watches\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"max_queued_events\00", align 1
@sysctl_vals = external dso_local constant [0 x i32], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_inotify_user__281_864_inotify_user_setup5], section "llvm.metadata"

@sys_inotify_init1 = dso_local alias i32 (i32), ptr @__se_sys_inotify_init1
@sys_inotify_add_watch = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_inotify_add_watch
@sys_inotify_rm_watch = dso_local alias i32 (i32, i32), ptr @__se_sys_inotify_rm_watch

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inotify_ignored_and_remove_idr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @inotify_handle_inode_event(ptr noundef %0, i32 noundef 32768, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #10
  tail call fastcc void @inotify_remove_from_idr(ptr noundef %1, ptr noundef %0)
  %4 = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 15, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @dec_ucount(ptr noundef %5, i32 noundef 9) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inotify_handle_inode_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inotify_remove_from_idr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 15, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.inotify_inode_mark, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i1, ptr @inotify_remove_from_idr.__already_done, align 1
  br i1 %10, label %57, label %11, !prof !9

11:                                               ; preds = %9
  store i1 true, ptr @inotify_remove_from_idr.__already_done, align 1
  %12 = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 455, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.inotify_remove_from_idr, ptr noundef %1, i32 noundef -1, ptr noundef %13) #10
  br label %57

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %15 = load volatile i32, ptr %4, align 4
  store volatile i32 %15, ptr %3, align 4
  %16 = lshr i32 %15, 16
  %17 = and i32 %15, 65535
  %18 = icmp eq i32 %17, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

20:                                               ; preds = %14
  %21 = tail call ptr @idr_find(ptr noundef %5, i32 noundef %7) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  tail call void @fsnotify_get_mark(ptr noundef nonnull %21) #10
  %24 = getelementptr inbounds %struct.fsnotify_mark, ptr %21, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %34, !prof !10

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

28:                                               ; preds = %20
  %29 = load i1, ptr @inotify_remove_from_idr.__already_done.2, align 1
  br i1 %29, label %57, label %30, !prof !9

30:                                               ; preds = %28
  store i1 true, ptr @inotify_remove_from_idr.__already_done.2, align 1
  %31 = load i32, ptr %6, align 4
  %32 = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 463, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.inotify_remove_from_idr, ptr noundef %1, i32 noundef %31, ptr noundef %33) #10
  br label %57

34:                                               ; preds = %23
  %35 = icmp eq ptr %21, %1
  br i1 %35, label %46, label %36, !prof !9

36:                                               ; preds = %34
  %37 = load i1, ptr @inotify_remove_from_idr.__already_done.3, align 1
  br i1 %37, label %57, label %38, !prof !9

38:                                               ; preds = %36
  store i1 true, ptr @inotify_remove_from_idr.__already_done.3, align 1
  %39 = load i32, ptr %6, align 4
  %40 = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.inotify_inode_mark, ptr %21, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.fsnotify_mark, ptr %21, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 477, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.inotify_remove_from_idr, ptr noundef %1, i32 noundef %39, ptr noundef %41, ptr noundef nonnull %21, i32 noundef %43, ptr noundef %45) #10
  br label %57

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 1
  %48 = load volatile i32, ptr %47, align 4
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %50, label %55, !prof !10

50:                                               ; preds = %46
  %51 = load i32, ptr %6, align 4
  %52 = getelementptr inbounds %struct.fsnotify_mark, ptr %1, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.inotify_remove_from_idr, ptr noundef %1, i32 noundef %51, ptr noundef %53) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 489, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

55:                                               ; preds = %46
  %56 = tail call ptr @idr_remove(ptr noundef %5, i32 noundef %7) #10
  tail call void @fsnotify_put_mark(ptr noundef %1) #10
  br label %57

57:                                               ; preds = %55, %38, %36, %30, %28, %11, %9
  %58 = phi ptr [ %1, %55 ], [ null, %11 ], [ null, %9 ], [ null, %30 ], [ null, %28 ], [ %21, %38 ], [ %21, %36 ]
  store i32 -1, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %59 = load i16, ptr %4, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %61 = icmp eq ptr %58, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @fsnotify_put_mark(ptr noundef nonnull %58) #10
  br label %63

63:                                               ; preds = %62, %57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_inotify_init1(i32 noundef %0) #0 {
  %2 = tail call fastcc i32 @do_inotify_init(i32 noundef %0) #10
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_inotify_init() local_unnamed_addr #0 {
  %1 = tail call fastcc i32 @do_inotify_init(i32 noundef 0)
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_inotify_init(i32 noundef %0) unnamed_addr #0 {
  %2 = and i32 %0, -526337
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %45

4:                                                ; preds = %1
  %5 = load i32, ptr @inotify_max_queued_events, align 4
  %6 = tail call ptr @fsnotify_alloc_user_group(ptr noundef nonnull @inotify_fsnotify_ops) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 4197568, i32 noundef 24) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12, !prof !10

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 13
  store ptr %10, ptr %13, align 4
  store volatile ptr %10, ptr %10, align 8
  %14 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inotify_event_info, ptr %10, i32 0, i32 1
  store i32 16384, ptr %15, align 8
  %16 = getelementptr inbounds %struct.inotify_event_info, ptr %10, i32 0, i32 2
  store i32 -1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.inotify_event_info, ptr %10, i32 0, i32 3
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.inotify_event_info, ptr %10, i32 0, i32 4
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 6
  store i32 %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 14
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 15
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 15, i32 0, i32 1
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 15, i32 0, i32 1, i32 0, i32 1
  store i32 33554436, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 15, i32 0, i32 1, i32 0, i32 2
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 15, i32 0, i32 1, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 15, i32 0, i32 1, i32 2
  store i32 0, ptr %26, align 4
  %27 = tail call ptr @llvm.thread.pointer() #10
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 83
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = insertvalue [1 x i32] poison, i32 %31, 0
  %33 = tail call ptr @inc_ucount(ptr noundef nonnull @init_user_ns, [1 x i32] %32, i32 noundef 8) #10
  %34 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 15, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %12, %8
  %37 = phi ptr [ inttoptr (i32 -12 to ptr), %8 ], [ inttoptr (i32 -24 to ptr), %12 ]
  tail call void @fsnotify_destroy_group(ptr noundef %6) #10
  br label %38

38:                                               ; preds = %36, %4
  %39 = phi ptr [ %37, %36 ], [ %6, %4 ]
  %40 = ptrtoint ptr %39 to i32
  br label %45

41:                                               ; preds = %12
  %42 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.6, ptr noundef nonnull @inotify_fops, ptr noundef %6, i32 noundef %0) #10
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call void @fsnotify_destroy_group(ptr noundef %6) #10
  br label %45

45:                                               ; preds = %44, %41, %38, %1
  %46 = phi i32 [ %40, %38 ], [ -22, %1 ], [ %42, %44 ], [ %42, %41 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_inotify_add_watch(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.path, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !18
  %6 = and i32 %2, 150933504
  %7 = icmp ne i32 %6, 0
  %8 = and i32 %2, -150933505
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %7, %9
  br i1 %10, label %139, label %11, !prof !19

11:                                               ; preds = %3
  %12 = tail call i32 @__fdget(i32 noundef %0) #10, !noalias !20
  %13 = and i32 %12, -4
  %14 = inttoptr i32 %13 to ptr
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %139, label %16, !prof !10

16:                                               ; preds = %11
  %17 = and i32 %2, 805306368
  %18 = icmp eq i32 %17, 805306368
  br i1 %18, label %134, label %19, !prof !10

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @inotify_fops
  br i1 %22, label %23, label %134, !prof !9

23:                                               ; preds = %19
  %24 = lshr i32 %2, 25
  %25 = and i32 %24, 1
  %26 = lshr i32 %2, 23
  %27 = and i32 %26, 2
  %28 = or i32 %25, %27
  %29 = xor i32 %28, 1
  %30 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %5, i32 noundef %29, ptr noundef nonnull %4, ptr noundef null) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %134

32:                                               ; preds = %23
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.vfsmount, ptr %33, i32 0, i32 3
  %35 = load volatile ptr, ptr %34, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %36 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dentry, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @inode_permission(ptr noundef %35, ptr noundef %39, i32 noundef 4) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %132

42:                                               ; preds = %32
  %43 = load ptr, ptr %36, align 4
  %44 = getelementptr inbounds %struct.dentry, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 15
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.fsnotify_group, ptr %47, i32 0, i32 9
  call void @mutex_lock(ptr noundef %48) #10
  %49 = and i32 %2, 536870912
  %50 = load i16, ptr %45, align 8
  %51 = and i16 %50, -4096
  %52 = icmp eq i16 %51, 16384
  %53 = select i1 %52, i32 134225920, i32 8192
  %54 = and i32 %2, -2080370689
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 46
  %57 = call ptr @fsnotify_find_mark(ptr noundef %56, ptr noundef %47) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %87, label %59

59:                                               ; preds = %42
  %60 = and i32 %2, 268435456
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %127

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.fsnotify_mark, ptr %57, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %63) #10
  %64 = load i32, ptr %57, align 4
  %65 = icmp eq i32 %49, 0
  %66 = select i1 %65, i32 0, i32 %64
  %67 = or i32 %55, %66
  store i32 %67, ptr %57, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %68 = load i16, ptr %63, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %63, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %70 = icmp eq i32 %64, %67
  br i1 %70, label %83, label %71

71:                                               ; preds = %62
  %72 = xor i32 %67, -1
  %73 = and i32 %64, %72
  %74 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 45
  %75 = load i32, ptr %74, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %67, %76
  %78 = icmp ne i32 %73, 0
  %79 = icmp ne i32 %77, 0
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load ptr, ptr %56, align 8
  call void @fsnotify_recalc_mask(ptr noundef %82) #10
  br label %83

83:                                               ; preds = %81, %71, %62
  %84 = getelementptr inbounds %struct.inotify_inode_mark, ptr %57, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  call void @fsnotify_put_mark(ptr noundef nonnull %57) #10
  %86 = icmp eq i32 %85, -2
  br i1 %86, label %87, label %130

87:                                               ; preds = %83, %42
  %88 = load i16, ptr %45, align 8
  %89 = load ptr, ptr @inotify_inode_mark_cachep, align 4
  %90 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %89, i32 noundef 3264) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %130, label %92, !prof !10

92:                                               ; preds = %87
  %93 = and i16 %88, -4096
  %94 = icmp eq i16 %93, 16384
  %95 = select i1 %94, i32 134225920, i32 8192
  %96 = or i32 %95, %54
  %97 = getelementptr inbounds %struct.fsnotify_group, ptr %47, i32 0, i32 15
  %98 = getelementptr inbounds %struct.fsnotify_group, ptr %47, i32 0, i32 15, i32 0, i32 1
  call void @fsnotify_init_mark(ptr noundef nonnull %90, ptr noundef %47) #10
  store i32 %96, ptr %90, align 8
  %99 = getelementptr inbounds %struct.inotify_inode_mark, ptr %90, i32 0, i32 1
  store i32 -1, ptr %99, align 4
  call void @idr_preload(i32 noundef 3264) #10
  call void @_raw_spin_lock(ptr noundef %97) #10
  %100 = call i32 @idr_alloc_cyclic(ptr noundef %98, ptr noundef nonnull %90, i32 noundef 1, i32 noundef 0, i32 noundef 2048) #10
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  store i32 %100, ptr %99, align 4
  call void @fsnotify_get_mark(ptr noundef nonnull %90) #10
  br label %103

103:                                              ; preds = %102, %92
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %104 = load i16, ptr %97, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %97, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %106 = call i32 @llvm.read_register.i32(metadata !0) #10
  %107 = inttoptr i32 %106 to ptr
  %108 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %107) #8, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  %109 = call i32 @llvm.smin.i32(i32 %100, i32 0) #10
  br i1 %101, label %110, label %127

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.fsnotify_group, ptr %47, i32 0, i32 15, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.ucounts, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.ucounts, ptr %112, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = insertvalue [1 x i32] undef, i32 %116, 0
  %118 = call ptr @inc_ucount(ptr noundef %114, [1 x i32] %117, i32 noundef 9) #10
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  call fastcc void @inotify_remove_from_idr(ptr noundef %47, ptr noundef nonnull %90) #10
  br label %127

121:                                              ; preds = %110
  %122 = call i32 @fsnotify_add_mark_locked(ptr noundef nonnull %90, ptr noundef %56, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  call fastcc void @inotify_remove_from_idr(ptr noundef %47, ptr noundef nonnull %90) #10
  br label %127

125:                                              ; preds = %121
  %126 = load i32, ptr %99, align 4
  br label %127

127:                                              ; preds = %125, %124, %120, %103, %59
  %128 = phi ptr [ %57, %59 ], [ %90, %125 ], [ %90, %124 ], [ %90, %120 ], [ %90, %103 ]
  %129 = phi i32 [ -17, %59 ], [ %126, %125 ], [ %122, %124 ], [ -28, %120 ], [ %109, %103 ]
  call void @fsnotify_put_mark(ptr noundef nonnull %128) #10
  br label %130

130:                                              ; preds = %127, %87, %83
  %131 = phi i32 [ %85, %83 ], [ -12, %87 ], [ %129, %127 ]
  call void @mutex_unlock(ptr noundef %48) #10
  br label %132

132:                                              ; preds = %130, %32
  %133 = phi i32 [ %131, %130 ], [ %40, %32 ]
  call void @path_put(ptr noundef nonnull %4) #10
  br label %134

134:                                              ; preds = %132, %23, %19, %16
  %135 = phi i32 [ -22, %16 ], [ -22, %19 ], [ %30, %23 ], [ %133, %132 ]
  %136 = and i32 %12, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @fput(ptr noundef nonnull %14) #10
  br label %139

139:                                              ; preds = %138, %134, %11, %3
  %140 = phi i32 [ -22, %3 ], [ -9, %11 ], [ %135, %134 ], [ %135, %138 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_inotify_rm_watch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @__fdget(i32 noundef %0) #10, !noalias !26
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %41, label %8, !prof !10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @inotify_fops
  br i1 %11, label %12, label %36, !prof !9

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 15
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %15) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %16 = load volatile i32, ptr %15, align 4
  store volatile i32 %16, ptr %3, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %16, 65535
  %19 = icmp eq i32 %18, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %19, label %20, label %21, !prof !10

20:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 15, i32 0, i32 1
  %23 = tail call ptr @idr_find(ptr noundef %22, i32 noundef %1) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  tail call void @fsnotify_get_mark(ptr noundef nonnull %23) #10
  %26 = getelementptr inbounds %struct.fsnotify_mark, ptr %23, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %30, !prof !10

29:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/inotify/inotify_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

30:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %31 = load i16, ptr %15, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @fsnotify_destroy_mark(ptr noundef nonnull %23, ptr noundef %14) #10
  tail call void @fsnotify_put_mark(ptr noundef nonnull %23) #10
  br label %36

33:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %34 = load i16, ptr %15, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %36

36:                                               ; preds = %33, %30, %8
  %37 = phi i32 [ -22, %8 ], [ 0, %30 ], [ -22, %33 ]
  %38 = and i32 %4, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @fput(ptr noundef nonnull %6) #10
  br label %41

41:                                               ; preds = %40, %36, %2
  %42 = phi i32 [ -9, %2 ], [ %37, %36 ], [ %37, %40 ]
  ret i32 %42
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @inotify_user_setup() #3 section ".init.text" {
  %1 = alloca %struct.sysinfo, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %1, i8 0, i32 64, i1 false), !annotation !18
  call void @si_meminfo(ptr noundef nonnull %1) #10
  %2 = getelementptr inbounds %struct.sysinfo, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sysinfo, ptr %1, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = udiv i32 %6, 100
  %8 = shl i32 %7, 12
  %9 = udiv i32 %8, 832
  %10 = call i32 @llvm.umax.i32(i32 %9, i32 8192)
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 1048576)
  %12 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.9, i32 noundef 48, i32 noundef 4, i32 noundef 262144, ptr noundef null) #10
  store ptr %12, ptr @inotify_inode_mark_cachep, align 4
  store i32 16384, ptr @inotify_max_queued_events, align 4
  store i32 128, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 17, i32 8), align 4
  store i32 %11, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 17, i32 9), align 4
  %13 = call ptr @register_sysctl(ptr noundef nonnull @.str.10, ptr noundef nonnull @inotify_table) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_put_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_get_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_alloc_user_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inc_ucount(ptr noundef, [1 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inotify_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.inotify_event, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %8 = tail call ptr @llvm.thread.pointer() #10
  store i32 0, ptr %6, align 4
  store ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  store ptr @woken_wake_function, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3
  store ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.fsnotify_group, ptr %13, i32 0, i32 4
  call void @add_wait_queue(ptr noundef %14, ptr noundef nonnull %6) #10
  %15 = getelementptr inbounds %struct.fsnotify_group, ptr %13, i32 0, i32 2
  %16 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.inotify_event, ptr %5, i32 0, i32 3
  %18 = getelementptr inbounds %struct.inotify_event, ptr %5, i32 0, i32 1
  %19 = getelementptr inbounds %struct.inotify_event, ptr %5, i32 0, i32 2
  %20 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  br label %21

21:                                               ; preds = %110, %4
  %22 = phi i32 [ %113, %110 ], [ %2, %4 ]
  %23 = phi ptr [ %112, %110 ], [ %1, %4 ]
  %24 = icmp eq ptr %23, %1
  br label %25

25:                                               ; preds = %127, %21
  call void @_raw_spin_lock(ptr noundef %15) #10
  %26 = call ptr @fsnotify_peek_first_event(ptr noundef %13) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.inotify_event_info, ptr %26, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = add i32 %30, 32
  %33 = and i32 %32, -16
  %34 = select i1 %31, i32 16, i32 %33
  %35 = icmp ugt i32 %34, %22
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = call ptr @fsnotify_remove_first_event(ptr noundef %13) #10
  br label %38

38:                                               ; preds = %36, %28, %25
  %39 = phi ptr [ %26, %36 ], [ null, %25 ], [ inttoptr (i32 -22 to ptr), %28 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %40 = load i16, ptr %15, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %42 = icmp eq ptr %39, null
  br i1 %42, label %114, label %43

43:                                               ; preds = %38
  %44 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %129, label %45

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %46 = getelementptr inbounds %struct.inotify_event_info, ptr %39, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = add i32 %47, 16
  %50 = and i32 %49, -16
  %51 = select i1 %48, i32 0, i32 %50
  store i32 %51, ptr %17, align 4
  %52 = getelementptr inbounds %struct.inotify_event_info, ptr %39, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1073803263
  store i32 %54, ptr %18, align 4
  %55 = getelementptr inbounds %struct.inotify_event_info, ptr %39, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %5, align 4
  %57 = getelementptr inbounds %struct.inotify_event_info, ptr %39, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %19, align 4
  %59 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 16, i32 -1090519040) #13, !srcloc !29
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %45
  %63 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #8, !srcloc !30
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #10, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !32
  %66 = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #10, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %62
  %69 = getelementptr i8, ptr %23, i32 16
  %70 = icmp eq i32 %51, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @fsnotify_destroy_event(ptr noundef %13, ptr noundef nonnull %39) #10
  br label %110

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.inotify_event_info, ptr %39, i32 0, i32 5
  %74 = icmp slt i32 %47, 0
  %75 = load i1, ptr @check_copy_size.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !10

78:                                               ; preds = %72
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %79

79:                                               ; preds = %78, %72
  br i1 %74, label %106, label %80, !prof !10

80:                                               ; preds = %79
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %69, i32 %47, i32 -1090519040) #13, !srcloc !29
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #8, !srcloc !30
  %86 = and i32 %85, -13
  %87 = or i32 %86, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #10, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !32
  %88 = call i32 @arm_copy_to_user(ptr noundef %69, ptr noundef %73, i32 noundef %47) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #10, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !32
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i32 [ %88, %84 ], [ %47, %80 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = getelementptr i8, ptr %69, i32 %47
  %94 = sub i32 %51, %47
  %95 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %93, i32 %94, i32 -1090519040) #13, !srcloc !33
  %96 = extractvalue { i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #8, !srcloc !30
  %100 = and i32 %99, -13
  %101 = or i32 %100, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #10, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !32
  %102 = call i32 @arm_clear_user(ptr noundef %93, i32 noundef %94) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #10, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !32
  br label %103

103:                                              ; preds = %98, %92
  %104 = phi i32 [ %102, %98 ], [ %94, %92 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103, %89, %79, %62, %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @fsnotify_destroy_event(ptr noundef %13, ptr noundef nonnull %39) #10
  br label %131

107:                                              ; preds = %103
  %108 = add i32 %51, 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @fsnotify_destroy_event(ptr noundef %13, ptr noundef nonnull %39) #10
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %107, %71
  %111 = phi i32 [ 16, %71 ], [ %108, %107 ]
  %112 = getelementptr i8, ptr %23, i32 %111
  %113 = sub i32 %22, %111
  br label %21

114:                                              ; preds = %38
  %115 = load i32, ptr %16, align 4
  %116 = and i32 %115, 2048
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load volatile i32, ptr %8, align 4
  %120 = and i32 %119, 256
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %131, !prof !9

122:                                              ; preds = %118
  %123 = load volatile i32, ptr %8, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i1 %24, i1 false
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = call i32 @wait_woken(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 2147483647) #10
  br label %25

129:                                              ; preds = %43
  %130 = ptrtoint ptr %39 to i32
  br label %131

131:                                              ; preds = %129, %122, %118, %114, %107, %106
  %132 = phi i32 [ -14, %106 ], [ %130, %129 ], [ -11, %114 ], [ -512, %122 ], [ -512, %118 ], [ %108, %107 ]
  call void @remove_wait_queue(ptr noundef %14, ptr noundef nonnull %6) #10
  %133 = icmp ne ptr %23, %1
  %134 = icmp ne i32 %132, -14
  %135 = select i1 %133, i1 %134, i1 false
  %136 = ptrtoint ptr %23 to i32
  %137 = ptrtoint ptr %1 to i32
  %138 = sub i32 %136, %137
  %139 = select i1 %135, i32 %138, i32 %132
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inotify_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %6, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void %9(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %1) #10
  br label %14

14:                                               ; preds = %13, %8, %2
  %15 = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %15) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %16 = load volatile i32, ptr %15, align 4
  store volatile i32 %16, ptr %3, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %16, 65535
  %19 = icmp eq i32 %18, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %19, label %20, label %21, !prof !10

20:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #10, !srcloc !34
  unreachable

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 3
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  %25 = select i1 %24, i32 0, i32 65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %26 = load i16, ptr %15, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inotify_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %2 to ptr
  %5 = icmp eq i32 %1, 21531
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.fsnotify_group, ptr %8, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.fsnotify_group, ptr %8, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %26, label %13

13:                                               ; preds = %13, %6
  %14 = phi ptr [ %24, %13 ], [ %11, %6 ]
  %15 = phi i32 [ %23, %13 ], [ 0, %6 ]
  %16 = add i32 %15, 16
  %17 = getelementptr inbounds %struct.inotify_event_info, ptr %14, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = add i32 %18, 16
  %21 = and i32 %20, -16
  %22 = select i1 %19, i32 0, i32 %21
  %23 = add i32 %16, %22
  %24 = load ptr, ptr %14, align 4
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %26, label %13

26:                                               ; preds = %13, %6
  %27 = phi i32 [ 0, %6 ], [ %23, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %28 = load i16, ptr %9, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %30 = tail call ptr @llvm.thread.pointer() #10
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %31) #8, !srcloc !30
  %33 = and i32 %32, -13
  %34 = or i32 %33, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #10, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !32
  %35 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %27, i32 -1090519041) #10, !srcloc !35
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #10, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !32
  br label %36

36:                                               ; preds = %26, %3
  %37 = phi i32 [ %35, %26 ], [ -25, %3 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inotify_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @fsnotify_destroy_group(ptr noundef %4) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_fasync(i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inotify_show_fdinfo(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_peek_first_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_remove_first_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_find_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_recalc_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_init_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_add_mark_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153906358, i64 2153906855, i64 2153906395, i64 2153906451, i64 2153906485, i64 2153906509, i64 2153906550, i64 2153906571, i64 2153906599, i64 2153906633}
!12 = !{i64 2153907461, i64 2153907958, i64 2153907498, i64 2153907554, i64 2153907588, i64 2153907612, i64 2153907653, i64 2153907674, i64 2153907702, i64 2153907736}
!13 = !{i64 2153913720, i64 2153914217, i64 2153913757, i64 2153913813, i64 2153913847, i64 2153913871, i64 2153913912, i64 2153913933, i64 2153913961, i64 2153913995}
!14 = !{i64 2149020349}
!15 = !{i64 2149016173}
!16 = !{i64 2149016248, i64 2149016275, i64 2149016322, i64 2149016344, i64 2149016372, i64 2149016392}
!17 = !{i64 2149043352}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 4001, i32 4000000}
!20 = !{!21}
!21 = distinct !{!21, !22, !"fdget: argument 0"}
!22 = distinct !{!22, !"fdget"}
!23 = !{i64 2151213040}
!24 = !{i64 777661}
!25 = !{i64 2151390516}
!26 = !{!27}
!27 = distinct !{!27, !28, !"fdget: argument 0"}
!28 = distinct !{!28, !"fdget"}
!29 = !{i64 2150985982, i64 2150986007}
!30 = !{i64 3481516}
!31 = !{i64 3481713}
!32 = !{i64 2150966992}
!33 = !{i64 2150982694, i64 2150982719}
!34 = !{i64 2151416870, i64 2151417367, i64 2151416907, i64 2151416963, i64 2151416997, i64 2151417021, i64 2151417062, i64 2151417083, i64 2151417111, i64 2151417145}
!35 = !{i64 2153902725, i64 2153903005, i64 2153903339, i64 2153903673}
