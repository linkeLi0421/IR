; ModuleID = '/llk/IR/fs/devpts/inode.c_pt.bc'
source_filename = "../fs/devpts/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.35 }
%struct.llist_node = type { ptr }
%union.anon.35 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.match_token = type { i32, ptr }
%struct.path = type { ptr, ptr }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.pts_fs_info = type { %struct.ida, %struct.pts_mount_opts, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pts_mount_opts = type { i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.seqcount = type { i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.68 = type { ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.41 = type { %struct.callback_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { i64 }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.substring_t = type { ptr, ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pty_count = internal global %struct.atomic_t zeroinitializer, align 4
@pty_limit = internal global i32 4096, align 4
@pty_reserve = internal global i32 1024, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@devpts_pty_kill.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"fs/devpts/inode.c\00", align 1
@__initcall__kmod_devpts__226_637_init_devpts_fs6 = internal global ptr @init_devpts_fs, section ".initcall6.init", align 4
@fsnotify_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"include/linux/fsnotify.h\00", align 1
@devpts_fs_type = internal global %struct.file_system_type { ptr @.str.3, i32 8, ptr null, ptr null, ptr @devpts_mount, ptr @devpts_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@pty_root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.21, ptr null, i32 0, i16 365, ptr @pty_kern_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@devpts_sops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @devpts_remount, ptr null, ptr @devpts_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@simple_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"\013devpts: get root dentry failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c",mode=%03o\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c",ptmxmode=%03o\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c",max=%d\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_task = external dso_local local_unnamed_addr global %struct.task_struct, align 64
@.str.10 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = internal constant [7 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.12 }, %struct.match_token { i32 1, ptr @.str.13 }, %struct.match_token { i32 2, ptr @.str.14 }, %struct.match_token { i32 3, ptr @.str.15 }, %struct.match_token { i32 4, ptr @.str.16 }, %struct.match_token { i32 5, ptr @.str.17 }, %struct.match_token { i32 6, ptr null }], align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"\013devpts: called with bogus options\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"mode=%o\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"ptmxmode=%o\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"newinstance\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"max=%d\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"ptmx\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"\013devpts: Unable to alloc dentry for ptmx node\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"\013devpts: Unable to alloc inode for ptmx node\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@pty_kern_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.22, ptr null, i32 0, i16 365, ptr @pty_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [4 x i8] c"pty\00", align 1
@pty_table = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.23, ptr @pty_limit, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @pty_limit_min, ptr @pty_limit_max }, %struct.ctl_table { ptr @.str.24, ptr @pty_reserve, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @pty_limit_min, ptr @pty_limit_max }, %struct.ctl_table { ptr @.str.25, ptr @pty_count, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@pty_limit_min = internal global i32 0, align 4
@pty_limit_max = internal global i32 2147483647, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"reserve\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_devpts__226_637_init_devpts_fs6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devpts_mntget(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  store i64 %5, ptr %3, align 8
  call void @path_get(ptr noundef nonnull %3) #11
  %6 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  br label %7

7:                                                ; preds = %12, %2
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = call i32 @follow_up(ptr noundef nonnull %3) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 8
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi ptr [ %16, %15 ], [ %8, %7 ]
  %19 = getelementptr inbounds %struct.vfsmount, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 7377
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %47, label %28

28:                                               ; preds = %24, %17
  %29 = call i32 @path_pts(ptr noundef nonnull %3) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.vfsmount, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 7377
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 13
  %41 = load ptr, ptr %40, align 64
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %38, %31, %28
  %44 = phi i32 [ -19, %38 ], [ -19, %31 ], [ %29, %28 ]
  %45 = load ptr, ptr %6, align 4
  call void @dput(ptr noundef %45) #11
  %46 = load ptr, ptr %3, align 8
  br label %55

47:                                               ; preds = %38, %24
  %48 = load ptr, ptr %6, align 4
  call void @dput(ptr noundef %48) #11
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.vfsmount, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 27
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %59, label %55

55:                                               ; preds = %47, %43
  %56 = phi ptr [ %49, %47 ], [ %46, %43 ]
  %57 = phi i32 [ -19, %47 ], [ %44, %43 ]
  call void @mntput(ptr noundef %56) #11
  %58 = inttoptr i32 %57 to ptr
  br label %59

59:                                               ; preds = %55, %47
  %60 = phi ptr [ %58, %55 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret ptr %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devpts_acquire(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  store i64 %4, ptr %2, align 8
  call void @path_get(ptr noundef nonnull %2) #11
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 7377
  br i1 %10, label %29, label %11

11:                                               ; preds = %1
  %12 = call i32 @path_pts(ptr noundef nonnull %2) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.vfsmount, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 7377
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 13
  %24 = load ptr, ptr %23, align 64
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %14, %11
  %27 = phi i32 [ -19, %21 ], [ -19, %14 ], [ %12, %11 ]
  %28 = inttoptr i32 %27 to ptr
  br label %35

29:                                               ; preds = %21, %1
  %30 = phi ptr [ %17, %21 ], [ %7, %1 ]
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #11, !srcloc !8
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #11, !srcloc !9
  %33 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi ptr [ %28, %26 ], [ %34, %29 ]
  call void @path_put(ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devpts_release(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @deactivate_super(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devpts_new_index(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pty_count) #11, !srcloc !8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pty_count, ptr nonnull @pty_count, i32 1, ptr nonnull elementtype(i32) @pty_count) #11, !srcloc !11
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %4 = load i32, ptr @pty_limit, align 4
  %5 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 1, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr @pty_reserve, align 4
  %9 = select i1 %7, i32 %8, i32 0
  %10 = sub i32 %4, %9
  %11 = icmp slt i32 %3, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 1, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = tail call i32 @ida_alloc_range(ptr noundef %0, i32 noundef 0, i32 noundef %15, i32 noundef 3264) #11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %1
  %19 = phi i32 [ %16, %12 ], [ -28, %1 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pty_count) #11, !srcloc !8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pty_count, ptr nonnull @pty_count, i32 1, ptr nonnull elementtype(i32) @pty_count) #11, !srcloc !13
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %19, %18 ], [ %16, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devpts_kill_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @ida_free(ptr noundef %0, i32 noundef %1) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pty_count) #11, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pty_count, ptr nonnull @pty_count, i32 1, ptr nonnull elementtype(i32) @pty_count) #11, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devpts_pty_new(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [12 x i8], align 1
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !14
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 64
  %10 = tail call ptr @new_inode(ptr noundef %7) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 1
  %14 = add i32 %1, 3
  %15 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 10
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 2
  %17 = load i32, ptr %13, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 1, i32 2
  br label %26

21:                                               ; preds = %12
  %22 = tail call ptr @llvm.thread.pointer() #11
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 83
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 7
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi ptr [ %20, %19 ], [ %25, %21 ]
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %16, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 3
  %30 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 1, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 1, i32 3
  br label %40

35:                                               ; preds = %26
  %36 = tail call ptr @llvm.thread.pointer() #11
  %37 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 83
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.cred, ptr %38, i32 0, i32 8
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi ptr [ %34, %33 ], [ %39, %35 ]
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %29, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 15
  %44 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 14
  %45 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef nonnull %10) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %44, ptr noundef align 8 dereferenceable(16) %45, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %43, ptr noundef align 8 dereferenceable(16) %45, i32 16, i1 false)
  %46 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 1, i32 4
  %47 = load i16, ptr %46, align 4
  %48 = or i16 %47, 8192
  %49 = or i32 %1, 142606336
  call void @init_special_inode(ptr noundef nonnull %10, i16 noundef zeroext %48, i32 noundef %49) #11
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef %1)
  %51 = call ptr @d_alloc_name(ptr noundef %9, ptr noundef nonnull %4) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 11
  store ptr %2, ptr %54, align 4
  call void @d_add(ptr noundef nonnull %51, ptr noundef nonnull %10) #11
  %55 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 42
  %60 = load volatile i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 4
  %64 = call i32 @fsnotify(i32 noundef 256, ptr noundef nonnull %51, i32 noundef 3, ptr noundef %56, ptr noundef %63, ptr noundef null, i32 noundef 0) #11
  br label %66

65:                                               ; preds = %40
  call void @iput(ptr noundef nonnull %10) #11
  br label %66

66:                                               ; preds = %65, %62, %53, %3
  %67 = phi ptr [ inttoptr (i32 -12 to ptr), %65 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %51, %53 ], [ %51, %62 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @devpts_get_priv(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 7377
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devpts_pty_kill(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 7377
  %7 = load i1, ptr @devpts_pty_kill.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !15

10:                                               ; preds = %1
  store i1 true, ptr @devpts_pty_kill.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 620, i32 noundef 9, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  tail call void @drop_nlink(ptr noundef %14) #11
  tail call void @d_drop(ptr noundef %0) #11
  %15 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %0, align 8
  %20 = and i32 %19, 7340032
  %21 = icmp eq i32 %20, 0
  %22 = load i1, ptr @fsnotify_unlink.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !15

25:                                               ; preds = %11
  store i1 true, ptr @fsnotify_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %26

26:                                               ; preds = %25, %11
  br i1 %21, label %41, label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr %13, align 8
  %29 = load i16, ptr %28, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 42
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %37 = and i16 %29, -4096
  %38 = icmp eq i16 %37, 16384
  %39 = select i1 %38, i32 1073742336, i32 512
  %40 = tail call i32 @fsnotify(i32 noundef %39, ptr noundef %28, i32 noundef 2, ptr noundef %18, ptr noundef %36, ptr noundef null, i32 noundef 0) #11
  br label %41

41:                                               ; preds = %35, %27, %26
  tail call void @dput(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_devpts_fs() #7 section ".init.text" {
  %1 = tail call i32 @register_filesystem(ptr noundef nonnull @devpts_fs_type) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @register_sysctl_table(ptr noundef nonnull @pty_root_table) #11
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_pts(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @devpts_mount(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = tail call ptr @mount_nodev(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull @devpts_fill_super) #11
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devpts_kill_sb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ida_destroy(ptr noundef nonnull %3) #11
  br label %6

6:                                                ; preds = %5, %1
  tail call void @kfree(ptr noundef %3) #11
  tail call void @kill_litter_super(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_nodev(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devpts_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, -5
  store i32 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 1024, ptr %9, align 16
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 7377, ptr %11, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @devpts_sops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  store ptr @simple_dentry_operations, ptr %13, align 16
  %14 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %14, align 32
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 48) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr null, ptr %19, align 4
  br label %87

20:                                               ; preds = %3
  store i32 0, ptr %16, align 8
  %21 = getelementptr inbounds %struct.xarray, ptr %16, i32 0, i32 1
  store i32 33554437, ptr %21, align 4
  %22 = getelementptr inbounds %struct.xarray, ptr %16, i32 0, i32 2
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds %struct.pts_fs_info, ptr %16, i32 0, i32 1, i32 4
  store i16 384, ptr %23, align 4
  %24 = getelementptr inbounds %struct.pts_fs_info, ptr %16, i32 0, i32 1, i32 5
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.pts_fs_info, ptr %16, i32 0, i32 2
  store ptr %0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %16, ptr %26, align 4
  %27 = getelementptr inbounds %struct.pts_fs_info, ptr %16, i32 0, i32 1
  %28 = tail call fastcc i32 @parse_mount_options(ptr noundef %1, i32 noundef 0, ptr noundef %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %20
  %31 = tail call ptr @new_inode(ptr noundef %0) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %87, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 10
  store i32 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 15
  %36 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 14
  %37 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef nonnull %31) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %36, ptr noundef align 8 dereferenceable(16) %37, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %35, ptr noundef align 8 dereferenceable(16) %37, i32 16, i1 false)
  store i16 16877, ptr %31, align 8
  %38 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 7
  store ptr @simple_dir_inode_operations, ptr %38, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %39, align 8
  call void @set_nlink(ptr noundef nonnull %31, i32 noundef 2) #11
  %40 = call ptr @d_make_root(ptr noundef nonnull %31) #11
  %41 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %40, ptr %41, align 64
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %87

45:                                               ; preds = %33
  %46 = load ptr, ptr %26, align 4
  %47 = tail call ptr @llvm.thread.pointer() #11
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 83
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.cred, ptr %49, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.cred, ptr %49, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 5
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 24
  call void @down_write(ptr noundef %56) #11
  %57 = getelementptr inbounds %struct.pts_fs_info, ptr %46, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %45
  %61 = call ptr @d_alloc_name(ptr noundef nonnull %40, ptr noundef nonnull @.str.18) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %83

65:                                               ; preds = %60
  %66 = call ptr @new_inode(ptr noundef %0) #11
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  call void @dput(ptr noundef nonnull %61) #11
  br label %83

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 10
  store i32 2, ptr %71, align 4
  %72 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 15
  %73 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 14
  %74 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef nonnull %66) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %73, ptr noundef align 8 dereferenceable(16) %74, i32 16, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %72, ptr noundef align 8 dereferenceable(16) %74, i32 16, i1 false) #11
  %75 = getelementptr inbounds %struct.pts_fs_info, ptr %46, i32 0, i32 1, i32 5
  %76 = load i16, ptr %75, align 2
  %77 = or i16 %76, 8192
  call void @init_special_inode(ptr noundef nonnull %66, i16 noundef zeroext %77, i32 noundef 5242882) #11
  %78 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 2
  store i32 %51, ptr %78, align 4
  %79 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 3
  store i32 %53, ptr %79, align 8
  call void @d_add(ptr noundef nonnull %61, ptr noundef nonnull %66) #11
  store ptr %61, ptr %57, align 4
  br label %80

80:                                               ; preds = %70, %45
  %81 = load ptr, ptr %54, align 8
  %82 = getelementptr inbounds %struct.inode, ptr %81, i32 0, i32 24
  call void @up_write(ptr noundef %82) #11
  br label %87

83:                                               ; preds = %68, %63
  %84 = load ptr, ptr %54, align 8
  %85 = getelementptr inbounds %struct.inode, ptr %84, i32 0, i32 24
  call void @up_write(ptr noundef %85) #11
  %86 = load ptr, ptr %41, align 64
  call void @dput(ptr noundef %86) #11
  store ptr null, ptr %41, align 64
  br label %87

87:                                               ; preds = %83, %80, %43, %30, %20, %18
  %88 = phi i32 [ %28, %20 ], [ -12, %83 ], [ -12, %43 ], [ -12, %30 ], [ -12, %18 ], [ 0, %80 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_mount_options(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca [3 x %struct.substring_t], align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.pts_mount_opts, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.pts_mount_opts, ptr %2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.pts_mount_opts, ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.pts_mount_opts, ptr %2, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i16 384, ptr %10, align 4
  %11 = getelementptr inbounds %struct.pts_mount_opts, ptr %2, i32 0, i32 5
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.pts_mount_opts, ptr %2, i32 0, i32 7
  store i32 1048576, ptr %12, align 4
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = tail call ptr @llvm.thread.pointer() #11
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 92
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nsproxy, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 92), align 4
  %21 = getelementptr inbounds %struct.nsproxy, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %19, %22
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.pts_mount_opts, ptr %2, i32 0, i32 6
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %14, %3
  %27 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.10) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %78, label %29

29:                                               ; preds = %75, %26
  %30 = phi ptr [ %76, %75 ], [ %27, %26 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !14
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %75, label %33

33:                                               ; preds = %29
  %34 = call i32 @match_token(ptr noundef nonnull %30, ptr noundef nonnull @tokens, ptr noundef nonnull %5) #11
  switch i32 %34, label %72 [
    i32 0, label %35
    i32 1, label %42
    i32 2, label %49
    i32 3, label %56
    i32 4, label %75
    i32 5, label %63
  ]

35:                                               ; preds = %33
  %36 = call i32 @match_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = load i32, ptr %6, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %74, label %41

41:                                               ; preds = %38
  store i32 %39, ptr %8, align 4
  store i32 1, ptr %2, align 4
  br label %75

42:                                               ; preds = %33
  %43 = call i32 @match_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load i32, ptr %6, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %74, label %48

48:                                               ; preds = %45
  store i32 %46, ptr %9, align 4
  store i32 1, ptr %7, align 4
  br label %75

49:                                               ; preds = %33
  %50 = call i32 @match_octal(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load i32, ptr %6, align 4
  %54 = trunc i32 %53 to i16
  %55 = and i16 %54, 4095
  store i16 %55, ptr %10, align 4
  br label %75

56:                                               ; preds = %33
  %57 = call i32 @match_octal(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i32, ptr %6, align 4
  %61 = trunc i32 %60 to i16
  %62 = and i16 %61, 4095
  store i16 %62, ptr %11, align 2
  br label %75

63:                                               ; preds = %33
  %64 = call i32 @match_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %65 = icmp ne i32 %64, 0
  %66 = load i32, ptr %6, align 4
  %67 = icmp slt i32 %66, 0
  %68 = select i1 %65, i1 true, i1 %67
  %69 = icmp sgt i32 %66, 1048576
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  store i32 %66, ptr %12, align 4
  br label %75

72:                                               ; preds = %33
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %74

74:                                               ; preds = %72, %63, %56, %49, %45, %42, %38, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %78

75:                                               ; preds = %71, %59, %52, %48, %41, %33, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  %76 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.10) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %29

78:                                               ; preds = %75, %74, %26
  %79 = phi i32 [ -22, %74 ], [ 0, %26 ], [ 0, %75 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devpts_remount(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pts_fs_info, ptr %5, i32 0, i32 1
  %7 = tail call fastcc i32 @parse_mount_options(ptr noundef %2, i32 noundef 1, ptr noundef %6)
  %8 = getelementptr inbounds %struct.pts_fs_info, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pts_fs_info, ptr %5, i32 0, i32 1, i32 5
  %15 = load i16, ptr %14, align 2
  %16 = or i16 %15, 8192
  store i16 %16, ptr %13, align 8
  br label %17

17:                                               ; preds = %11, %3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devpts_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pts_fs_info, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pts_fs_info, ptr %6, i32 0, i32 1, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, -1
  %14 = load i32, ptr @overflowuid, align 4
  %15 = select i1 %13, i32 %14, i32 %12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %15) #11
  br label %16

16:                                               ; preds = %10, %2
  %17 = getelementptr inbounds %struct.pts_fs_info, ptr %6, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pts_fs_info, ptr %6, i32 0, i32 1, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  %24 = load i32, ptr @overflowgid, align 4
  %25 = select i1 %23, i32 %24, i32 %22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %25) #11
  br label %26

26:                                               ; preds = %20, %16
  %27 = getelementptr inbounds %struct.pts_fs_info, ptr %6, i32 0, i32 1, i32 4
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %29) #11
  %30 = getelementptr inbounds %struct.pts_fs_info, ptr %6, i32 0, i32 1, i32 5
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %32) #11
  %33 = getelementptr inbounds %struct.pts_fs_info, ptr %6, i32 0, i32 1, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %34, 1048576
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %34) #11
  br label %37

37:                                               ; preds = %36, %26
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!8 = !{i64 554786, i64 2148044757, i64 2148044783, i64 2148044830, i64 2148044852, i64 2148044880, i64 2148044900}
!9 = !{i64 2148056172, i64 2148056198, i64 2148056227, i64 2148056261, i64 2148056292, i64 2148056315}
!10 = !{i64 2148154018}
!11 = !{i64 2148056856, i64 2148056888, i64 2148056917, i64 2148056951, i64 2148056982, i64 2148057005}
!12 = !{i64 2148154221}
!13 = !{i64 2148058529, i64 2148058555, i64 2148058584, i64 2148058618, i64 2148058649, i64 2148058672}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
