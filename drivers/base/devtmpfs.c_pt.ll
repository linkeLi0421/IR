; ModuleID = '/llk/IR/drivers/base/devtmpfs.c_pt.bc'
source_filename = "../drivers/base/devtmpfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.29, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.req = type { ptr, %struct.completion, i32, ptr, i16, %struct.kuid_t, %struct.kgid_t, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.91, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.92, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.93, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr }
%union.anon.91 = type { i32 }
%union.anon.92 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.93 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.94 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__setup_str_mount_param = internal constant [16 x i8] c"devtmpfs.mount=\00", section ".init.rodata", align 1
@__setup_mount_param = internal global %struct.obs_kernel_param { ptr @__setup_str_mount_param, ptr @mount_param, i32 0 }, section ".init.setup", align 4
@thread = internal global ptr null, align 4
@mount_dev = internal unnamed_addr global i32 1, section ".init.data", align 4
@.str = private unnamed_addr constant [9 x i8] c"devtmpfs\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\016devtmpfs: error mounting %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\016devtmpfs: mounted\0A\00", align 1
@__const.devtmpfs_init.opts = private unnamed_addr constant [10 x i8] c"mode=0755\00", align 1
@internal_fs_type = internal global %struct.file_system_type { ptr @.str, i32 0, ptr @shmem_init_fs_context, ptr @shmem_fs_parameters, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@mnt = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"\013devtmpfs: unable to create devtmpfs %ld\0A\00", align 1
@dev_fs_type = internal global %struct.file_system_type { ptr @.str, i32 0, ptr null, ptr null, ptr @public_dev_mount, ptr null, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"\013devtmpfs: unable to register devtmpfs type %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"kdevtmpfs\00", align 1
@setup_done = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @setup_done, i64 8), ptr getelementptr (i8, ptr @setup_done, i64 8) } } }, section ".init.data", align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"\013devtmpfs: unable to create devtmpfs %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\016devtmpfs: initialized\0A\00", align 1
@block_class = external dso_local global %struct.class, align 4
@req_lock = internal global %struct.spinlock zeroinitializer, align 4
@requests = internal unnamed_addr global ptr null, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@shmem_fs_parameters = external dso_local constant [0 x %struct.fs_parameter_spec], align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_mount_param], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mount_param(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @simple_strtoul(ptr noundef %0, ptr noundef null, i32 noundef 0) #12
  store i32 %2, ptr @mount_dev, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devtmpfs_create_node(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.req, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !8
  %4 = load ptr, ptr @thread, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 4
  %8 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 5
  %9 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 6
  %10 = call ptr @device_get_devnode(ptr noundef %0, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %2) #12
  %11 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %6
  %14 = load i16, ptr %7, align 4
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, i16 384, i16 %14
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @block_class
  %20 = select i1 %19, i16 24576, i16 8192
  %21 = or i16 %20, %16
  store i16 %21, ptr %7, align 4
  %22 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 7
  store ptr %0, ptr %22, align 4
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %25, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #12
  call void @_raw_spin_lock(ptr noundef nonnull @req_lock) #12
  %26 = load ptr, ptr @requests, align 4
  store ptr %26, ptr %3, align 4
  store ptr %3, ptr @requests, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %27 = load i16, ptr @req_lock, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr @req_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %29 = load ptr, ptr @thread, align 4
  %30 = call i32 @wake_up_process(ptr noundef %29) #12
  call void @wait_for_completion(ptr noundef %24) #12
  call void @kfree(ptr noundef %23) #12
  %31 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %13, %6, %1
  %34 = phi i32 [ %32, %13 ], [ 0, %1 ], [ -12, %6 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_devnode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devtmpfs_delete_node(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.req, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 40, i1 false), !annotation !8
  %4 = load ptr, ptr @thread, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = call ptr @device_get_devnode(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #12
  %8 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 4
  store i16 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 7
  store ptr %0, ptr %12, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #12
  call void @_raw_spin_lock(ptr noundef nonnull @req_lock) #12
  %16 = load ptr, ptr @requests, align 4
  store ptr %16, ptr %3, align 4
  store ptr %3, ptr @requests, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %17 = load i16, ptr @req_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @req_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %19 = load ptr, ptr @thread, align 4
  %20 = call i32 @wake_up_process(ptr noundef %19) #12
  call void @wait_for_completion(ptr noundef %14) #12
  call void @kfree(ptr noundef %13) #12
  %21 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %10, %6, %1
  %24 = phi i32 [ %22, %10 ], [ 0, %1 ], [ -12, %6 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %24
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @devtmpfs_mount() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @mount_dev, align 4
  %2 = icmp eq i32 %1, 0
  %3 = load ptr, ptr @thread, align 4
  %4 = icmp eq ptr %3, null
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = tail call i32 @init_mount(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 32768, ptr noundef null) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %7) #13
  br label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %13

13:                                               ; preds = %11, %9, %0
  %14 = phi i32 [ 0, %0 ], [ 0, %11 ], [ %7, %9 ]
  ret i32 %14
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mount(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @devtmpfs_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %1) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 1 dereferenceable(10) @__const.devtmpfs_init.opts, i32 10, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %3 = call ptr @vfs_kern_mount(ptr noundef nonnull @internal_fs_type, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %1) #12
  store ptr %3, ptr @mnt, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = ptrtoint ptr %3 to i32
  %7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %6) #13
  %8 = load ptr, ptr @mnt, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %32

10:                                               ; preds = %0
  %11 = call i32 @register_filesystem(ptr noundef nonnull @dev_fs_type) #12
  store i32 %11, ptr %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %11) #13
  br label %32

15:                                               ; preds = %10
  %16 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @devtmpfsd, ptr noundef nonnull %2, i32 noundef -1, ptr noundef nonnull @.str.6) #12
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call i32 @wake_up_process(ptr noundef %16) #12
  store ptr %16, ptr @thread, align 4
  call void @wait_for_completion(ptr noundef nonnull @setup_done) #12
  %20 = load i32, ptr %2, align 4
  br label %23

21:                                               ; preds = %15
  %22 = ptrtoint ptr %16 to i32
  store i32 %22, ptr %2, align 4
  store ptr null, ptr @thread, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ %20, %18 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %24) #13
  %28 = call i32 @unregister_filesystem(ptr noundef nonnull @dev_fs_type) #12
  %29 = load i32, ptr %2, align 4
  br label %32

30:                                               ; preds = %23
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %32

32:                                               ; preds = %30, %26, %13, %5
  %33 = phi i32 [ %9, %5 ], [ %11, %13 ], [ %29, %26 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %1) #12
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_kern_mount(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devtmpfsd(ptr nocapture noundef writeonly %0) #7 section ".ref.text" {
  %2 = tail call fastcc i32 @devtmpfs_setup(ptr noundef %0) #14
  tail call void @complete(ptr noundef nonnull @setup_done) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  ret i32 %2

5:                                                ; preds = %1
  tail call fastcc void @devtmpfs_work_loop() #15
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_init_fs_context(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @public_dev_mount(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #1 {
  %5 = load ptr, ptr @mnt, align 4
  %6 = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #12, !srcloc !13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #12, !srcloc !14
  %10 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 14
  tail call void @down_write(ptr noundef %10) #12
  %11 = tail call i32 @reconfigure_single(ptr noundef %7, i32 noundef %1, ptr noundef %3) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  tail call void @deactivate_locked_super(ptr noundef %7) #12
  %14 = inttoptr i32 %11 to ptr
  br label %21

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 13
  %17 = load ptr, ptr %16, align 64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %20) #12
  br label %21

21:                                               ; preds = %19, %15, %13
  %22 = phi ptr [ %14, %13 ], [ null, %15 ], [ %17, %19 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reconfigure_single(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @devtmpfs_setup(ptr nocapture noundef writeonly %0) unnamed_addr #8 section ".init.text" {
  %2 = tail call i32 @ksys_unshare(i32 noundef 131072) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call i32 @init_mount(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef 32768, ptr noundef null) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call i32 @init_chdir(ptr noundef nonnull @.str.11) #13
  %9 = tail call i32 @init_chroot(ptr noundef nonnull @.str.12) #13
  br label %10

10:                                               ; preds = %7, %4, %1
  %11 = phi i32 [ %2, %1 ], [ %5, %4 ], [ 0, %7 ]
  store i32 %11, ptr %0, align 4
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @devtmpfs_work_loop() unnamed_addr #9 {
  %1 = alloca %struct.path, align 8
  %2 = alloca %struct.path, align 8
  %3 = alloca %struct.kstat, align 8
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.iattr, align 8
  %6 = alloca %struct.path, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca %struct.iattr, align 8
  %9 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.iattr, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.iattr, ptr %8, i32 0, i32 2
  %13 = getelementptr inbounds %struct.iattr, ptr %8, i32 0, i32 3
  %14 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %15 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 8
  %17 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 1
  %18 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  br label %20

20:                                               ; preds = %204, %0
  call void @_raw_spin_lock(ptr noundef nonnull @req_lock) #12
  %21 = load ptr, ptr @requests, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %204, label %23

23:                                               ; preds = %201, %20
  %24 = phi ptr [ %202, %201 ], [ %21, %20 ]
  store ptr null, ptr @requests, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %25 = load i16, ptr @req_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @req_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %27

27:                                               ; preds = %196, %23
  %28 = phi ptr [ %24, %23 ], [ %29, %196 ]
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.req, ptr %28, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.req, ptr %28, i32 0, i32 4
  %33 = load i16, ptr %32, align 4
  %34 = getelementptr inbounds %struct.req, ptr %28, i32 0, i32 5
  %35 = getelementptr inbounds %struct.req, ptr %28, i32 0, i32 6
  %36 = getelementptr inbounds %struct.req, ptr %28, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %34, align 4
  %39 = load i32, ptr %35, align 4
  %40 = icmp eq i16 %33, 0
  br i1 %40, label %101, label %41

41:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store i64 0, ptr %7, align 8, !annotation !8
  %42 = call ptr @kern_path_create(i32 noundef -100, ptr noundef %31, ptr noundef nonnull %7, i32 noundef 0) #12
  %43 = icmp eq ptr %42, inttoptr (i32 -2 to ptr)
  br i1 %43, label %44, label %76

44:                                               ; preds = %41
  %45 = call noalias ptr @kstrdup(ptr noundef %31, i32 noundef 3264) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %74, label %47

47:                                               ; preds = %44
  %48 = call ptr @strchr(ptr noundef nonnull %45, i32 noundef 47) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %73, label %50

50:                                               ; preds = %69, %47
  %51 = phi ptr [ %71, %69 ], [ %48, %47 ]
  store i8 0, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !8
  %52 = call ptr @kern_path_create(i32 noundef -100, ptr noundef nonnull %45, ptr noundef nonnull %6, i32 noundef 2) #12
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = ptrtoint ptr %52 to i32
  br label %67

56:                                               ; preds = %50
  %57 = load ptr, ptr %9, align 4
  %58 = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 @vfs_mkdir(ptr noundef nonnull @init_user_ns, ptr noundef %59, ptr noundef %52, i16 noundef zeroext 493) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 5
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 47
  store ptr @thread, ptr %65, align 4
  br label %66

66:                                               ; preds = %62, %56
  call void @done_path_create(ptr noundef nonnull %6, ptr noundef %52) #12
  br label %67

67:                                               ; preds = %66, %54
  %68 = phi i32 [ %55, %54 ], [ %60, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  switch i32 %68, label %73 [
    i32 -17, label %69
    i32 0, label %69
  ]

69:                                               ; preds = %67, %67
  store i8 47, ptr %51, align 1
  %70 = getelementptr i8, ptr %51, i32 1
  %71 = call ptr @strchr(ptr noundef %70, i32 noundef 47) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %50

73:                                               ; preds = %69, %67, %47
  call void @kfree(ptr noundef nonnull %45) #12
  br label %74

74:                                               ; preds = %73, %44
  %75 = call ptr @kern_path_create(i32 noundef -100, ptr noundef %31, ptr noundef nonnull %7, i32 noundef 0) #12
  br label %76

76:                                               ; preds = %74, %41
  %77 = phi ptr [ %75, %74 ], [ %42, %41 ]
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = ptrtoint ptr %77 to i32
  br label %99

81:                                               ; preds = %76
  %82 = load ptr, ptr %10, align 4
  %83 = getelementptr inbounds %struct.dentry, ptr %82, i32 0, i32 5
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %86 = load i32, ptr %85, align 8
  %87 = call i32 @vfs_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %84, ptr noundef %77, i16 noundef zeroext %33, i32 noundef %86) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %8, i8 0, i32 80, i1 false) #12, !annotation !8
  store i16 %33, ptr %11, align 4
  store i32 %38, ptr %12, align 8
  store i32 %39, ptr %13, align 4
  store i32 7, ptr %8, align 8
  %90 = getelementptr inbounds %struct.dentry, ptr %77, i32 0, i32 5
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 24
  call void @down_write(ptr noundef %92) #12
  %93 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %77, ptr noundef nonnull %8, ptr noundef null) #12
  %94 = load ptr, ptr %90, align 8
  %95 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 24
  call void @up_write(ptr noundef %95) #12
  %96 = load ptr, ptr %90, align 8
  %97 = getelementptr inbounds %struct.inode, ptr %96, i32 0, i32 47
  store ptr @thread, ptr %97, align 4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #12
  br label %98

98:                                               ; preds = %89, %81
  call void @done_path_create(ptr noundef nonnull %7, ptr noundef %77) #12
  br label %99

99:                                               ; preds = %98, %79
  %100 = phi i32 [ %80, %79 ], [ %87, %98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  br label %196

101:                                              ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !8
  %102 = call ptr @kern_path_locked(ptr noundef %31, ptr noundef nonnull %2) #12
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = ptrtoint ptr %102 to i32
  br label %194

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.dentry, ptr %102, i32 0, i32 5
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %152, label %110

110:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i32 144, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %111 = load ptr, ptr %2, align 8
  store ptr %111, ptr %4, align 8
  store ptr %102, ptr %14, align 4
  %112 = call i32 @vfs_getattr(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 3, i32 noundef 0) #12
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %149

114:                                              ; preds = %110
  %115 = load ptr, ptr %107, align 8
  %116 = getelementptr inbounds %struct.inode, ptr %115, i32 0, i32 47
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, @thread
  br i1 %118, label %119, label %149

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 31
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, @block_class
  %123 = load i16, ptr %15, align 4
  %124 = and i16 %123, -4096
  br i1 %122, label %125, label %127

125:                                              ; preds = %119
  %126 = icmp eq i16 %124, 24576
  br i1 %126, label %129, label %149

127:                                              ; preds = %119
  %128 = icmp eq i16 %124, 8192
  br i1 %128, label %129, label %149

129:                                              ; preds = %127, %125
  %130 = load i32, ptr %16, align 4
  %131 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %132 = load i32, ptr %131, align 8
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #12
  %135 = and i16 %123, -512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false) #12
  store i16 %135, ptr %17, align 4
  store i32 7, ptr %5, align 8
  %136 = load ptr, ptr %107, align 8
  %137 = getelementptr inbounds %struct.inode, ptr %136, i32 0, i32 24
  call void @down_write(ptr noundef %137) #12
  %138 = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %102, ptr noundef nonnull %5, ptr noundef null) #12
  %139 = load ptr, ptr %107, align 8
  %140 = getelementptr inbounds %struct.inode, ptr %139, i32 0, i32 24
  call void @up_write(ptr noundef %140) #12
  %141 = load ptr, ptr %18, align 4
  %142 = getelementptr inbounds %struct.dentry, ptr %141, i32 0, i32 5
  %143 = load ptr, ptr %142, align 8
  %144 = call i32 @vfs_unlink(ptr noundef nonnull @init_user_ns, ptr noundef %143, ptr noundef %102, ptr noundef null) #12
  %145 = add i32 %144, 2
  %146 = and i32 %145, -3
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #12
  br label %149

149:                                              ; preds = %134, %129, %127, %125, %114, %110
  %150 = phi i32 [ 0, %110 ], [ %148, %134 ], [ 0, %129 ], [ 0, %114 ], [ 0, %125 ], [ 0, %127 ]
  %151 = phi i32 [ %112, %110 ], [ %144, %134 ], [ 0, %129 ], [ 0, %114 ], [ 0, %125 ], [ 0, %127 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #12
  br label %152

152:                                              ; preds = %149, %106
  %153 = phi i32 [ %150, %149 ], [ 0, %106 ]
  %154 = phi i32 [ %151, %149 ], [ -2, %106 ]
  call void @dput(ptr noundef %102) #12
  %155 = load ptr, ptr %18, align 4
  %156 = getelementptr inbounds %struct.dentry, ptr %155, i32 0, i32 5
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %struct.inode, ptr %157, i32 0, i32 24
  call void @up_write(ptr noundef %158) #12
  call void @path_put(ptr noundef nonnull %2) #12
  %159 = icmp eq i32 %153, 0
  br i1 %159, label %194, label %160

160:                                              ; preds = %152
  %161 = call ptr @strchr(ptr noundef %31, i32 noundef 47) #12
  %162 = icmp eq ptr %161, null
  br i1 %162, label %194, label %163

163:                                              ; preds = %160
  %164 = call noalias ptr @kstrdup(ptr noundef %31, i32 noundef 3264) #12
  %165 = icmp eq ptr %164, null
  br i1 %165, label %194, label %166

166:                                              ; preds = %186, %163
  %167 = call ptr @strrchr(ptr noundef nonnull %164, i32 noundef 47) #12
  %168 = icmp eq ptr %167, null
  br i1 %168, label %193, label %169

169:                                              ; preds = %166
  store i8 0, ptr %167, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  store i64 0, ptr %1, align 8, !annotation !8
  %170 = call ptr @kern_path_locked(ptr noundef nonnull %164, ptr noundef nonnull %1) #12
  %171 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  br label %193

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.dentry, ptr %170, i32 0, i32 5
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.inode, ptr %175, i32 0, i32 47
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, @thread
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load ptr, ptr %19, align 4
  %183 = getelementptr inbounds %struct.dentry, ptr %182, i32 0, i32 5
  %184 = load ptr, ptr %183, align 8
  %185 = call i32 @vfs_rmdir(ptr noundef nonnull @init_user_ns, ptr noundef %184, ptr noundef %170) #12
  br label %186

186:                                              ; preds = %181, %177, %173
  %187 = phi i32 [ %185, %181 ], [ -1, %177 ], [ -1, %173 ]
  call void @dput(ptr noundef %170) #12
  %188 = load ptr, ptr %19, align 4
  %189 = getelementptr inbounds %struct.dentry, ptr %188, i32 0, i32 5
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds %struct.inode, ptr %190, i32 0, i32 24
  call void @up_write(ptr noundef %191) #12
  call void @path_put(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  %192 = icmp eq i32 %187, 0
  br i1 %192, label %166, label %193

193:                                              ; preds = %186, %172, %166
  call void @kfree(ptr noundef nonnull %164) #12
  br label %194

194:                                              ; preds = %193, %163, %160, %152, %104
  %195 = phi i32 [ %105, %104 ], [ %154, %160 ], [ %154, %152 ], [ %154, %163 ], [ %154, %193 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %196

196:                                              ; preds = %194, %99
  %197 = phi i32 [ %100, %99 ], [ %195, %194 ]
  %198 = getelementptr inbounds %struct.req, ptr %28, i32 0, i32 2
  store i32 %197, ptr %198, align 4
  %199 = getelementptr inbounds %struct.req, ptr %28, i32 0, i32 1
  call void @complete(ptr noundef %199) #12
  %200 = icmp eq ptr %29, null
  br i1 %200, label %201, label %27

201:                                              ; preds = %196
  call void @_raw_spin_lock(ptr noundef nonnull @req_lock) #12
  %202 = load ptr, ptr @requests, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %23

204:                                              ; preds = %201, %20
  %205 = tail call ptr @llvm.thread.pointer() #12
  %206 = getelementptr inbounds %struct.task_struct, ptr %205, i32 0, i32 1
  store volatile i32 1, ptr %206, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %207 = load i16, ptr @req_lock, align 4
  %208 = add i16 %207, 1
  store i16 %208, ptr @req_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  call void @schedule() #12
  br label %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_unshare(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chdir(ptr noundef) local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chroot(ptr noundef) local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_path_create(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @done_path_create(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_path_locked(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rmdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn }

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
!9 = !{i64 2149064974}
!10 = !{i64 2149060798}
!11 = !{i64 2149060873, i64 2149060900, i64 2149060947, i64 2149060969, i64 2149060997, i64 2149061017}
!12 = !{i64 2149087977}
!13 = !{i64 418890, i64 2147908861, i64 2147908887, i64 2147908934, i64 2147908956, i64 2147908984, i64 2147909004}
!14 = !{i64 2147921073, i64 2147921099, i64 2147921128, i64 2147921162, i64 2147921193, i64 2147921216}
