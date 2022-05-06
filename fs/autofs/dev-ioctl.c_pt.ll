; ModuleID = '/llk/IR/fs/autofs/dev-ioctl.c_pt.bc'
source_filename = "../fs/autofs/dev-ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.46, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.46 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.autofs_dev_ioctl = type { i32, i32, i32, i32, %union.anon.65, [0 x i8] }
%union.anon.65 = type { %struct.args_timeout }
%struct.args_timeout = type { i64 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.62 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
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
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.50, %struct.list_head, %struct.list_head, %union.anon.51 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%union.anon.50 = type { %struct.list_head }
%union.anon.51 = type { %struct.hlist_node }
%struct.args_fail = type { i32, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.args_requester = type { i32, i32 }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.args_out = type { i32, i32 }

@__UNIQUE_ID_alias218 = internal constant [32 x i8] c"autofs4.alias=char-major-10-235\00", section ".modinfo", align 1
@__UNIQUE_ID_alias219 = internal constant [29 x i8] c"autofs4.alias=devname:autofs\00", section ".modinfo", align 1
@_autofs_dev_ioctl_misc = internal global %struct.miscdevice { i32 235, ptr @.str.1, ptr @_dev_ioctl_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 420 }, align 4
@.str = private unnamed_addr constant [62 x i8] c"\013autofs4:pid:%d:%s: misc_register failed for control device\0A\00", align 1
@__func__.autofs_dev_ioctl_init = private unnamed_addr constant [22 x i8] c"autofs_dev_ioctl_init\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@_dev_ioctl_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_dev_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@autofs_fs_type = external dso_local global %struct.file_system_type, align 4
@.str.5 = private unnamed_addr constant [85 x i8] c"\014autofs4:pid:%d:%s: invalid device control module version supplied for cmd(0x%08x)\0A\00", align 1
@__func__.validate_dev_ioctl = private unnamed_addr constant [19 x i8] c"validate_dev_ioctl\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"\014autofs4:pid:%d:%s: path string terminator missing for cmd(0x%08x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"\014autofs4:pid:%d:%s: invalid path supplied for cmd(0x%08x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [104 x i8] c"\014autofs4:pid:%d:%s: ioctl control interface version mismatch: kernel(%u.%u), user(%u.%u), cmd(0x%08x)\0A\00", align 1
@__func__.check_dev_ioctl_version = private unnamed_addr constant [24 x i8] c"check_dev_ioctl_version\00", align 1
@lookup_dev_ioctl._ioctls = internal unnamed_addr constant [14 x ptr] [ptr @autofs_dev_ioctl_version, ptr @autofs_dev_ioctl_protover, ptr @autofs_dev_ioctl_protosubver, ptr @autofs_dev_ioctl_openmount, ptr @autofs_dev_ioctl_closemount, ptr @autofs_dev_ioctl_ready, ptr @autofs_dev_ioctl_fail, ptr @autofs_dev_ioctl_setpipefd, ptr @autofs_dev_ioctl_catatonic, ptr @autofs_dev_ioctl_timeout, ptr @autofs_dev_ioctl_requester, ptr @autofs_dev_ioctl_expire, ptr @autofs_dev_ioctl_askumount, ptr @autofs_dev_ioctl_ismountpoint], align 4
@.str.9 = private unnamed_addr constant [58 x i8] c"\014autofs4:pid:%d:%s: not allowed to change PID namespace\0A\00", align 1
@__func__.autofs_dev_ioctl_setpipefd = private unnamed_addr constant [27 x i8] c"autofs_dev_ioctl_setpipefd\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_alias218, ptr @__UNIQUE_ID_alias219], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @autofs_dev_ioctl_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @misc_register(ptr noundef nonnull @_autofs_dev_ioctl_misc) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 52
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %6, ptr noundef nonnull @__func__.autofs_dev_ioctl_init) #11
  br label %8

8:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @autofs_dev_ioctl_exit() local_unnamed_addr #4 {
  tail call void @misc_deregister(ptr noundef nonnull @_autofs_dev_ioctl_misc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = alloca %struct.autofs_dev_ioctl, align 8
  %5 = inttoptr i32 %2 to ptr
  %6 = and i32 %1, 255
  %7 = and i32 %1, 65280
  %8 = icmp ne i32 %7, 37632
  %9 = add nsw i32 %6, -127
  %10 = icmp ult i32 %9, -14
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %140, label %12

12:                                               ; preds = %3
  %13 = trunc i32 %1 to i8
  switch i8 %13, label %14 [
    i8 126, label %16
    i8 113, label %16
  ]

14:                                               ; preds = %12
  %15 = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %15, label %16, label %140

16:                                               ; preds = %14, %12, %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10, !annotation !8
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 24, i32 -1090519040) #12, !srcloc !9
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28, !prof !10

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #10
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #13, !srcloc !11
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %26 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 24) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !10

28:                                               ; preds = %20, %16
  %29 = phi i32 [ %26, %20 ], [ 24, %16 ]
  %30 = sub i32 24, %29
  %31 = getelementptr i8, ptr %4, i32 %30
  call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %29, i1 false) #10
  br label %42

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %4, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = icmp ult i32 %34, 24
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = icmp ugt i32 %34, 4120
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = call ptr @memdup_user(ptr noundef %5, i32 noundef %34) #10
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %44

42:                                               ; preds = %36, %32, %28
  %43 = phi ptr [ inttoptr (i32 -36 to ptr), %36 ], [ inttoptr (i32 -22 to ptr), %32 ], [ inttoptr (i32 -14 to ptr), %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi ptr [ %43, %42 ], [ %39, %41 ]
  %46 = ptrtoint ptr %45 to i32
  br label %140

47:                                               ; preds = %38
  %48 = load i32, ptr %33, align 8
  %49 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %39, i32 0, i32 2
  store i32 %48, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %50 = load i32, ptr %39, align 8
  %51 = icmp ne i32 %50, 1
  %52 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %39, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 1
  %55 = select i1 %51, i1 true, i1 %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 52
  %58 = load i32, ptr %57, align 8
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %58, ptr noundef nonnull @__func__.check_dev_ioctl_version, i32 noundef 1, i32 noundef 1, i32 noundef %50, i32 noundef %53, i32 noundef %1) #11
  store i32 1, ptr %39, align 8
  store i32 1, ptr %52, align 4
  %60 = load i32, ptr %57, align 8
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %60, ptr noundef nonnull @__func__.validate_dev_ioctl, i32 noundef %1) #11
  br label %138

62:                                               ; preds = %47
  store i32 1, ptr %39, align 8
  store i32 1, ptr %52, align 4
  %63 = load i32, ptr %49, align 8
  %64 = icmp ugt i32 %63, 24
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %39, i32 0, i32 5
  %67 = add i32 %63, -24
  %68 = call ptr @memchr(ptr noundef %66, i32 noundef 0, i32 noundef %67) #10
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 52
  %72 = load i32, ptr %71, align 8
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %72, ptr noundef nonnull @__func__.validate_dev_ioctl, i32 noundef %1) #11
  br label %138

74:                                               ; preds = %65
  %75 = call ptr @strchr(ptr noundef %66, i32 noundef 47) #10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 52
  %79 = load i32, ptr %78, align 8
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %79, ptr noundef nonnull @__func__.validate_dev_ioctl, i32 noundef %1) #11
  br label %138

81:                                               ; preds = %62
  switch i8 %13, label %82 [
    i8 126, label %138
    i8 123, label %138
    i8 116, label %138
  ]

82:                                               ; preds = %81, %74
  %83 = add nsw i32 %6, -113
  %84 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %83, i32 14) #10, !srcloc !14
  %85 = and i32 %84, %83
  %86 = getelementptr [14 x ptr], ptr @lookup_dev_ioctl._ioctls, i32 0, i32 %85
  %87 = load ptr, ptr %86, align 4
  switch i8 %13, label %88 [
    i8 117, label %122
    i8 116, label %122
    i8 113, label %122
  ]

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %39, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = call ptr @fget(i32 noundef %90) #10
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = icmp eq i32 %6, 126
  br i1 %94, label %124, label %138

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.file, ptr %91, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 8
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 5
  %101 = load ptr, ptr %100, align 32
  %102 = icmp eq ptr %101, @autofs_fs_type
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  call void @fput(ptr noundef nonnull %91) #10
  br label %138

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 27
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.autofs_sb_info, ptr %106, i32 0, i32 8
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 93
  %113 = load ptr, ptr %112, align 16
  %114 = getelementptr %struct.signal_struct, ptr %113, i32 0, i32 22, i32 2
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.autofs_sb_info, ptr %106, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = icmp ne ptr %115, %117
  %119 = icmp ne i32 %6, 121
  %120 = and i1 %119, %118
  br i1 %120, label %121, label %126

121:                                              ; preds = %111
  call void @fput(ptr noundef nonnull %91) #10
  br label %138

122:                                              ; preds = %82, %82, %82
  %123 = call i32 %87(ptr noundef null, ptr noundef null, ptr noundef %39) #10
  br label %128

124:                                              ; preds = %93
  %125 = call i32 %87(ptr noundef null, ptr noundef null, ptr noundef %39) #10
  br label %128

126:                                              ; preds = %111, %104
  %127 = call i32 %87(ptr noundef nonnull %91, ptr noundef %106, ptr noundef %39) #10
  call void @fput(ptr noundef nonnull %91) #10
  br label %128

128:                                              ; preds = %126, %124, %122
  %129 = phi i32 [ %123, %122 ], [ %127, %126 ], [ %125, %124 ]
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #13, !srcloc !11
  %133 = and i32 %132, -13
  %134 = or i32 %133, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %134) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %135 = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef %39, i32 noundef 24) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %136, i32 %129, i32 -14
  br label %138

138:                                              ; preds = %131, %128, %121, %103, %93, %81, %81, %81, %77, %70, %56
  %139 = phi i32 [ %129, %128 ], [ -22, %103 ], [ -13, %121 ], [ -9, %93 ], [ -22, %56 ], [ -22, %70 ], [ -22, %77 ], [ -22, %81 ], [ -22, %81 ], [ -22, %81 ], [ %137, %131 ]
  call void @kfree(ptr noundef %39) #10
  br label %140

140:                                              ; preds = %138, %44, %14, %3
  %141 = phi i32 [ %46, %44 ], [ %139, %138 ], [ -25, %3 ], [ -1, %14 ]
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @autofs_dev_ioctl_version(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  store i32 1, ptr %2, align 8
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 1
  store i32 1, ptr %4, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @autofs_dev_ioctl_protover(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  store i32 %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @autofs_dev_ioctl_protosubver(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  store i32 %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_openmount(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #4 {
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.path, align 8
  %6 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 3
  store i32 -1, ptr %10, align 4
  %11 = and i32 %7, 255
  %12 = lshr i32 %7, 12
  %13 = and i32 %12, 1048320
  %14 = or i32 %13, %11
  %15 = shl i32 %7, 12
  %16 = and i32 %15, -1048576
  %17 = or i32 %14, %16
  %18 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %62, !prof !10

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !8
  %22 = call i32 @kern_path(ptr noundef %21, i32 noundef 128, ptr noundef nonnull %4) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %56

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  br label %27

27:                                               ; preds = %42, %25
  %28 = load ptr, ptr %26, align 4
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 391
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, %17
  br i1 %41, label %46, label %42

42:                                               ; preds = %38, %32
  %43 = call i32 @follow_up(ptr noundef nonnull %4) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %27

45:                                               ; preds = %42, %27
  call void @path_put(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %56

46:                                               ; preds = %38
  call void @path_get(ptr noundef nonnull %4) #10
  %47 = load i64, ptr %4, align 8
  store i64 %47, ptr %5, align 8
  call void @path_put(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %48 = tail call ptr @llvm.thread.pointer() #10
  %49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 83
  %50 = load ptr, ptr %49, align 8
  %51 = call ptr @dentry_open(ptr noundef nonnull %5, i32 noundef 0, ptr noundef %50) #10
  call void @path_put(ptr noundef nonnull %5) #10
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = ptrtoint ptr %51 to i32
  br label %56

55:                                               ; preds = %46
  call void @fd_install(i32 noundef %18, ptr noundef %51) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %58

56:                                               ; preds = %53, %45, %24
  %57 = phi i32 [ -2, %45 ], [ %22, %24 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @put_unused_fd(i32 noundef %18) #10
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ %57, %56 ], [ %18, %55 ]
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %62, label %61, !prof !15

61:                                               ; preds = %58
  store i32 %59, ptr %10, align 4
  br label %62

62:                                               ; preds = %61, %58, %9, %3
  %63 = phi i32 [ -22, %3 ], [ 0, %61 ], [ %59, %58 ], [ %18, %9 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_closemount(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @close_fd(i32 noundef %5) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_ready(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @autofs_wait_release(ptr noundef %1, i32 noundef %5, i32 noundef 0) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_fail(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.args_fail, ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %7, i32 -2
  %10 = tail call i32 @autofs_wait_release(ptr noundef %1, i32 noundef %5, i32 noundef %9) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_setpipefd(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %69, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %67, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @llvm.thread.pointer() #10
  %15 = tail call ptr @get_task_pid(ptr noundef %14, i32 noundef 2) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pid, ptr %15, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.pid, ptr %15, i32 0, i32 7, i32 %19, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi ptr [ %21, %17 ], [ null, %13 ]
  %24 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pid, ptr %25, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.pid, ptr %25, i32 0, i32 7, i32 %29, i32 1
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi ptr [ %31, %27 ], [ null, %22 ]
  %34 = icmp eq ptr %23, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 52
  %37 = load i32, ptr %36, align 8
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %37, ptr noundef nonnull @__func__.autofs_dev_ioctl_setpipefd) #11
  br label %64

39:                                               ; preds = %32
  %40 = tail call ptr @fget(i32 noundef %5) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 8
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 262144
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = load i16, ptr %49, align 8
  %51 = and i16 %50, -4096
  %52 = icmp eq i16 %51, 4096
  br i1 %52, label %54, label %53

53:                                               ; preds = %47, %42
  tail call void @fput(ptr noundef nonnull %40) #10
  br label %64

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, -67585
  %58 = or i32 %57, 65536
  store i32 %58, ptr %55, align 4
  %59 = load ptr, ptr %24, align 4
  store ptr %15, ptr %24, align 4
  %60 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 1
  store i32 %5, ptr %60, align 4
  %61 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 2
  store ptr %40, ptr %61, align 4
  %62 = load i32, ptr %9, align 4
  %63 = and i32 %62, -2
  store i32 %63, ptr %9, align 4
  br label %64

64:                                               ; preds = %54, %53, %39, %35
  %65 = phi i32 [ -22, %35 ], [ -32, %53 ], [ 0, %54 ], [ -9, %39 ]
  %66 = phi ptr [ %15, %35 ], [ %15, %53 ], [ %59, %54 ], [ %15, %39 ]
  tail call void @put_pid(ptr noundef %66) #10
  br label %67

67:                                               ; preds = %64, %7
  %68 = phi i32 [ %65, %64 ], [ -16, %7 ]
  tail call void @mutex_unlock(ptr noundef %8) #10
  br label %69

69:                                               ; preds = %67, %3
  %70 = phi i32 [ -22, %3 ], [ %68, %67 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_catatonic(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #4 {
  tail call void @autofs_catatonic_mode(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @autofs_dev_ioctl_timeout(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #8 {
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = udiv i32 %8, 100
  %10 = zext i32 %9 to i64
  store i64 %10, ptr %4, align 8
  %11 = mul i32 %6, 100
  store i32 %11, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_requester(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  %11 = getelementptr inbounds %struct.args_requester, ptr %10, i32 0, i32 1
  store i32 -1, ptr %11, align 4
  store i32 -1, ptr %10, align 8
  %12 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !8
  %13 = call i32 @kern_path(ptr noundef %12, i32 noundef 128, ptr noundef nonnull %4) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %61

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  br label %18

18:                                               ; preds = %33, %16
  %19 = load ptr, ptr %17, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 391
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, %9
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %23
  %34 = call i32 @follow_up(ptr noundef nonnull %4) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %18

36:                                               ; preds = %33, %18
  call void @path_put(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %61

37:                                               ; preds = %29
  call void @path_get(ptr noundef nonnull %4) #10
  %38 = load i64, ptr %4, align 8
  store i64 %38, ptr %5, align 8
  call void @path_put(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i32
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %37
  %46 = call i32 @autofs_expire_wait(ptr noundef nonnull %5, i32 noundef 0) #10
  %47 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %47) #10
  %48 = getelementptr inbounds %struct.autofs_info, ptr %43, i32 0, i32 9
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, -1
  %51 = load i32, ptr @overflowuid, align 4
  %52 = select i1 %50, i32 %51, i32 %49
  store i32 %52, ptr %10, align 8
  %53 = getelementptr inbounds %struct.autofs_info, ptr %43, i32 0, i32 10
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, -1
  %56 = load i32, ptr @overflowgid, align 4
  %57 = select i1 %55, i32 %56, i32 %54
  store i32 %57, ptr %11, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %58 = load i16, ptr %47, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %47, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %60

60:                                               ; preds = %45, %37
  call void @path_put(ptr noundef nonnull %5) #10
  br label %61

61:                                               ; preds = %60, %36, %15
  %62 = phi i32 [ 0, %60 ], [ %13, %15 ], [ -2, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_expire(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @autofs_do_expire_multi(ptr noundef %9, ptr noundef %7, ptr noundef %1, i32 noundef %5) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_askumount(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @may_umount(ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  store i32 1, ptr %4, align 8
  br label %10

10:                                               ; preds = %9, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_ismountpoint(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #4 {
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.path, align 8
  %6 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 5
  %8 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  store i32 0, ptr %8, align 8
  %10 = getelementptr inbounds %struct.args_out, ptr %8, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = icmp eq ptr %0, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %76

16:                                               ; preds = %12, %3
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = call i32 @kern_path(ptr noundef %7, i32 noundef 129, ptr noundef nonnull %6) #10
  br label %56

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !8
  %21 = call i32 @kern_path(ptr noundef %7, i32 noundef 128, ptr noundef nonnull %5) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  br label %25

25:                                               ; preds = %49, %23
  %26 = load ptr, ptr %24, align 4
  %27 = load ptr, ptr %5, align 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 391
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.autofs_info, ptr %38, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.autofs_sb_info, ptr %42, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  call void @path_get(ptr noundef nonnull %5) #10
  %48 = load i64, ptr %5, align 8
  store i64 %48, ptr %6, align 8
  br label %52

49:                                               ; preds = %40, %36, %30
  %50 = call i32 @follow_up(ptr noundef nonnull %5) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %25

52:                                               ; preds = %49, %47, %25
  %53 = phi i32 [ 0, %47 ], [ -2, %25 ], [ -2, %49 ]
  call void @path_put(ptr noundef nonnull %5) #10
  br label %54

54:                                               ; preds = %52, %20
  %55 = phi i32 [ %53, %52 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %56

56:                                               ; preds = %54, %18
  %57 = phi i32 [ %19, %18 ], [ %55, %54 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %132

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 9
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 255
  %67 = lshr i32 %65, 12
  %68 = and i32 %67, 1048320
  %69 = or i32 %68, %66
  %70 = shl i32 %65, 12
  %71 = and i32 %70, -1048576
  %72 = or i32 %69, %71
  %73 = load ptr, ptr %6, align 8
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %61
  br i1 %75, label %122, label %128

76:                                               ; preds = %12
  %77 = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !8
  %81 = call i32 @kern_path(ptr noundef %7, i32 noundef 128, ptr noundef nonnull %4) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %132

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  br label %86

86:                                               ; preds = %101, %84
  %87 = load ptr, ptr %85, align 4
  %88 = load ptr, ptr %4, align 8
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %87, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.dentry, ptr %87, i32 0, i32 9
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 12
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 391
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 1
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %99, %80
  br i1 %100, label %105, label %101

101:                                              ; preds = %97, %91
  %102 = call i32 @follow_up(ptr noundef nonnull %4) #10
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %86

104:                                              ; preds = %101, %86
  call void @path_put(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %132

105:                                              ; preds = %97
  call void @path_get(ptr noundef nonnull %4) #10
  %106 = load i64, ptr %4, align 8
  store i64 %106, ptr %6, align 8
  call void @path_put(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %107 = and i32 %80, 255
  %108 = lshr i32 %80, 12
  %109 = and i32 %108, 1048320
  %110 = or i32 %109, %107
  %111 = shl i32 %80, 12
  %112 = and i32 %111, -1048576
  %113 = or i32 %110, %112
  %114 = call i32 @path_has_submounts(ptr noundef nonnull %6) #10
  %115 = call i32 @follow_down_one(ptr noundef nonnull %6) #10
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.dentry, ptr %119, i32 0, i32 9
  %121 = load ptr, ptr %120, align 4
  br label %122

122:                                              ; preds = %117, %59
  %123 = phi ptr [ %121, %117 ], [ %63, %59 ]
  %124 = phi i32 [ %113, %117 ], [ %72, %59 ]
  %125 = phi i32 [ %114, %117 ], [ 1, %59 ]
  %126 = getelementptr inbounds %struct.super_block, ptr %123, i32 0, i32 12
  %127 = load i32, ptr %126, align 4
  br label %128

128:                                              ; preds = %122, %105, %59
  %129 = phi i32 [ %72, %59 ], [ %113, %105 ], [ %124, %122 ]
  %130 = phi i32 [ 0, %59 ], [ 0, %105 ], [ %127, %122 ]
  %131 = phi i32 [ 0, %59 ], [ %114, %105 ], [ %125, %122 ]
  store i32 %129, ptr %8, align 8
  store i32 %130, ptr %10, align 4
  call void @path_put(ptr noundef nonnull %6) #10
  br label %132

132:                                              ; preds = %128, %104, %83, %56
  %133 = phi i32 [ %57, %56 ], [ %131, %128 ], [ %81, %83 ], [ -2, %104 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @close_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_wait_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_catatonic_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_expire_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_do_expire_multi(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @may_umount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_has_submounts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_down_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
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
!9 = !{i64 2151587590, i64 2151587615}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 4083702}
!12 = !{i64 4083899}
!13 = !{i64 2151569178}
!14 = !{i64 319337, i64 319354, i64 2147803424}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2148942177}
!17 = !{i64 2148938001}
!18 = !{i64 2148938076, i64 2148938103, i64 2148938150, i64 2148938172, i64 2148938200, i64 2148938220}
!19 = !{i64 2148965180}
