; ModuleID = '/llk/IR/fs/fat/file.c_pt.bc'
source_filename = "../fs/fat/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_getattr\22\09\09\09\09\09"
module asm "__kstrtabns_fat_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_setattr\22\09\09\09\09\09"
module asm "__kstrtabns_fat_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%union.anon.66 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { i64 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.40 }
%struct.llist_node = type { ptr }
%union.anon.40 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fat_entry = type { i32, %union.anon.76, i32, [2 x ptr], ptr }
%union.anon.76 = type { [2 x ptr] }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.46 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.46 = type { %struct.callback_head }

@fat_file_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @fat_generic_ioctl, ptr null, ptr @generic_file_mmap, i32 0, ptr null, ptr null, ptr @fat_file_release, ptr @fat_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @fat_fallocate, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_fat_getattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_getattr = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_getattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_getattr to i32), ptr @__kstrtab_fat_getattr, ptr @__kstrtabns_fat_getattr }, section "___ksymtab_gpl+fat_getattr", align 4
@__kstrtab_fat_setattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_setattr = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_setattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_setattr to i32), ptr @__kstrtab_fat_setattr, ptr @__kstrtabns_fat_setattr }, section "___ksymtab_gpl+fat_setattr", align 4
@fat_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fat_setattr, ptr @fat_getattr, ptr null, ptr null, ptr @fat_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: invalid cluster chain (i_pos %lld)\00", align 1
@__func__.fat_free = private unnamed_addr constant [9 x i8] c"fat_free\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_fat_getattr, ptr @__ksymtab_fat_setattr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_generic_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.fstrim_range, align 8
  %5 = alloca %struct.iattr, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = inttoptr i32 %2 to ptr
  switch i32 %1, label %312 [
    i32 -2147192304, label %9
    i32 1074033169, label %51
    i32 -2147192301, label %251
    i32 -1072146311, label %264
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  tail call void @down_read(ptr noundef %10) #7
  %11 = getelementptr i8, ptr %7, i32 -56
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i8
  %14 = load i16, ptr %7, align 8
  %15 = and i16 %14, -4096
  %16 = icmp eq i16 %15, 16384
  %17 = or i8 %13, 16
  %18 = select i1 %16, i8 %17, i8 %13
  %19 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  br i1 %16, label %23, label %30

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.msdos_sb_info, ptr %22, i32 0, i32 19, i32 12
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 4096
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.msdos_sb_info, ptr %22, i32 0, i32 19, i32 3
  br label %32

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.msdos_sb_info, ptr %22, i32 0, i32 19, i32 2
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %29, %28 ], [ %31, %30 ]
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %34, 146
  %36 = icmp eq i16 %35, 146
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = and i16 %14, 146
  %39 = icmp eq i16 %38, 0
  %40 = zext i1 %39 to i8
  %41 = or i8 %18, %40
  br label %42

42:                                               ; preds = %37, %32, %23
  %43 = phi i8 [ %18, %32 ], [ %41, %37 ], [ %17, %23 ]
  %44 = zext i8 %43 to i32
  tail call void @up_read(ptr noundef %10) #7
  %45 = tail call ptr @llvm.thread.pointer() #7
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #8, !srcloc !8
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #7, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  %50 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %44, i32 -1090519041) #7, !srcloc !11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #7, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  br label %312

51:                                               ; preds = %3
  %52 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 27
  %55 = load ptr, ptr %54, align 4
  %56 = load i16, ptr %7, align 8
  %57 = and i16 %56, -4096
  %58 = icmp eq i16 %57, 16384
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i32 80, i1 false) #7, !annotation !12
  %59 = tail call ptr @llvm.thread.pointer() #7
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %60) #8, !srcloc !8
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #7, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  %64 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %8, i32 -1090519041) #7, !srcloc !13
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = extractvalue { i32, i32 } %64, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #7, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %249

68:                                               ; preds = %51
  %69 = tail call i32 @mnt_want_write_file(ptr noundef %0) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %249

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  tail call void @down_write(ptr noundef %72) #7
  %73 = and i32 %66, 231
  %74 = getelementptr i8, ptr %7, i32 -56
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 8
  %77 = select i1 %58, i32 16, i32 0
  %78 = or i32 %73, %77
  %79 = or i32 %78, %76
  %80 = trunc i32 %75 to i8
  %81 = load i16, ptr %7, align 8
  %82 = and i16 %81, -4096
  %83 = icmp eq i16 %82, 16384
  %84 = or i8 %80, 16
  %85 = select i1 %83, i8 %84, i8 %80
  br i1 %83, label %86, label %94

86:                                               ; preds = %71
  %87 = load ptr, ptr %52, align 4
  %88 = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 27
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.msdos_sb_info, ptr %89, i32 0, i32 19, i32 12
  %91 = load i16, ptr %90, align 4
  %92 = and i16 %91, 4096
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86, %71
  br label %95

95:                                               ; preds = %94, %86
  %96 = phi i8 [ %84, %86 ], [ %85, %94 ]
  %97 = zext i8 %96 to i32
  store i32 65, ptr %5, align 8
  %98 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %98, ptr noundef %7) #7
  br i1 %58, label %99, label %111

99:                                               ; preds = %95
  %100 = and i32 %66, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.msdos_sb_info, ptr %55, i32 0, i32 19, i32 12
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %104, 4096
  %106 = icmp eq i16 %105, 0
  %107 = select i1 %106, i16 511, i16 365
  br label %108

108:                                              ; preds = %102, %99
  %109 = phi i16 [ %107, %102 ], [ 511, %99 ]
  %110 = getelementptr inbounds %struct.msdos_sb_info, ptr %55, i32 0, i32 19, i32 3
  br label %119

111:                                              ; preds = %95
  %112 = load i16, ptr %7, align 8
  %113 = and i16 %112, 73
  %114 = and i32 %66, 1
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i16 438, i16 292
  %117 = or i16 %113, %116
  %118 = getelementptr inbounds %struct.msdos_sb_info, ptr %55, i32 0, i32 19, i32 2
  br label %119

119:                                              ; preds = %111, %108
  %120 = phi ptr [ %118, %111 ], [ %110, %108 ]
  %121 = phi i16 [ %117, %111 ], [ %109, %108 ]
  %122 = phi i16 [ -32768, %111 ], [ 16384, %108 ]
  %123 = load i16, ptr %120, align 2
  %124 = xor i16 %123, -1
  %125 = and i16 %121, %124
  %126 = or i16 %125, %122
  %127 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 1
  store i16 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 10
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 1
  %131 = icmp ne i32 %79, 16
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %247, label %133

133:                                              ; preds = %119
  %134 = getelementptr inbounds %struct.msdos_sb_info, ptr %55, i32 0, i32 19, i32 12
  %135 = load i16, ptr %134, align 4
  %136 = and i16 %135, 4
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %133
  %139 = or i32 %66, %97
  %140 = and i32 %139, 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = call zeroext i1 @capable(i32 noundef 9) #7
  br i1 %143, label %144, label %247

144:                                              ; preds = %142, %138, %133
  %145 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %146 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.vfsmount, ptr %147, i32 0, i32 3
  %149 = load volatile ptr, ptr %148, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %150 = load ptr, ptr %145, align 4
  %151 = call i32 @fat_setattr(ptr noundef %149, ptr noundef %150, ptr noundef nonnull %5) #7
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %247

153:                                              ; preds = %144
  %154 = load ptr, ptr %145, align 4
  %155 = load i32, ptr %5, align 8
  %156 = shl i32 %155, 1
  %157 = and i32 %156, 4
  %158 = and i32 %155, 4
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, i32 %157, i32 4
  %161 = or i32 %160, 2
  %162 = lshr i32 %155, 2
  %163 = and i32 %162, 2
  %164 = or i32 %160, %163
  %165 = and i32 %155, 48
  %166 = icmp eq i32 %165, 48
  br i1 %166, label %167, label %169

167:                                              ; preds = %153
  %168 = or i32 %163, 4
  br label %178

169:                                              ; preds = %153
  %170 = and i32 %155, 16
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  %173 = or i32 %164, 1
  br label %178

174:                                              ; preds = %169
  %175 = and i32 %155, 32
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i32 %164, i32 %161
  br label %178

178:                                              ; preds = %174, %172, %167
  %179 = phi i32 [ %168, %167 ], [ %173, %172 ], [ %177, %174 ]
  %180 = shl i32 %155, 2
  %181 = and i32 %180, 4
  %182 = or i32 %179, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %211, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.dentry, ptr %154, i32 0, i32 5
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr inbounds %struct.inode, ptr %186, i32 0, i32 8
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.super_block, ptr %188, i32 0, i32 42
  %190 = load volatile i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %211, label %192

192:                                              ; preds = %184
  %193 = load i16, ptr %186, align 8
  %194 = and i16 %193, -4096
  %195 = icmp eq i16 %194, 16384
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = or i32 %182, 1073741824
  %198 = load i32, ptr %154, align 8
  %199 = and i32 %198, 16384
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %196, %192
  %202 = phi i32 [ %197, %196 ], [ %182, %192 ]
  %203 = getelementptr inbounds %struct.dentry, ptr %154, i32 0, i32 3
  %204 = load ptr, ptr %203, align 8
  %205 = icmp eq ptr %204, %154
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  %207 = call i32 @__fsnotify_parent(ptr noundef %154, i32 noundef %202, ptr noundef %154, i32 noundef 3) #7
  br label %211

208:                                              ; preds = %201, %196
  %209 = phi i32 [ %202, %201 ], [ %197, %196 ]
  %210 = call i32 @fsnotify(i32 noundef %209, ptr noundef %154, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef %186, i32 noundef 0) #7
  br label %211

211:                                              ; preds = %208, %206, %184, %178
  %212 = load i16, ptr %134, align 4
  %213 = and i16 %212, 4
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, -9
  %219 = shl i32 %66, 1
  %220 = and i32 %219, 8
  %221 = or i32 %218, %220
  store i32 %221, ptr %216, align 4
  br label %222

222:                                              ; preds = %215, %211
  %223 = load ptr, ptr %52, align 4
  %224 = getelementptr inbounds %struct.super_block, ptr %223, i32 0, i32 27
  %225 = load ptr, ptr %224, align 4
  %226 = load i16, ptr %7, align 8
  %227 = and i16 %226, -4096
  %228 = icmp eq i16 %227, 16384
  br i1 %228, label %229, label %236

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.msdos_sb_info, ptr %225, i32 0, i32 19, i32 12
  %231 = load i16, ptr %230, align 4
  %232 = and i16 %231, 4096
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %243, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.msdos_sb_info, ptr %225, i32 0, i32 19, i32 3
  br label %238

236:                                              ; preds = %222
  %237 = getelementptr inbounds %struct.msdos_sb_info, ptr %225, i32 0, i32 19, i32 2
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi ptr [ %235, %234 ], [ %237, %236 ]
  %240 = load i16, ptr %239, align 2
  %241 = and i16 %240, 146
  %242 = icmp eq i16 %241, 146
  br i1 %242, label %243, label %244

243:                                              ; preds = %238, %229
  br label %244

244:                                              ; preds = %243, %238
  %245 = phi i32 [ 47, %243 ], [ 46, %238 ]
  %246 = and i32 %245, %79
  store i32 %246, ptr %74, align 8
  call void @__mark_inode_dirty(ptr noundef %7, i32 noundef 7) #7
  br label %247

247:                                              ; preds = %244, %144, %142, %119
  %248 = phi i32 [ %151, %144 ], [ 0, %244 ], [ -22, %119 ], [ -1, %142 ]
  call void @up_write(ptr noundef %72) #7
  call void @mnt_drop_write_file(ptr noundef %0) #7
  br label %249

249:                                              ; preds = %247, %68, %51
  %250 = phi i32 [ %65, %51 ], [ %69, %68 ], [ %248, %247 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #7
  br label %312

251:                                              ; preds = %3
  %252 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.super_block, ptr %253, i32 0, i32 27
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.msdos_sb_info, ptr %255, i32 0, i32 25
  %257 = load i32, ptr %256, align 4
  %258 = tail call ptr @llvm.thread.pointer() #7
  %259 = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 3
  %260 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %259) #8, !srcloc !8
  %261 = and i32 %260, -13
  %262 = or i32 %261, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %262) #7, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  %263 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %257, i32 -1090519041) #7, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %260) #7, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  br label %312

264:                                              ; preds = %3
  %265 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %266 = load ptr, ptr %265, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false) #7, !annotation !12
  %267 = getelementptr inbounds %struct.super_block, ptr %266, i32 0, i32 20
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.block_device, ptr %268, i32 0, i32 18
  %270 = load ptr, ptr %269, align 4
  %271 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %271, label %272, label %310

272:                                              ; preds = %264
  %273 = getelementptr inbounds %struct.request_queue, ptr %270, i32 0, i32 11
  %274 = load volatile i32, ptr %273, align 4
  %275 = and i32 %274, 256
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %310, label %277

277:                                              ; preds = %272
  %278 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 24, i32 -1090519040) #9
  %279 = extractvalue { i32, i32 } %278, 0
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %289, !prof !16

281:                                              ; preds = %277
  %282 = tail call ptr @llvm.thread.pointer() #7
  %283 = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 3
  %284 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %283) #8, !srcloc !8
  %285 = and i32 %284, -13
  %286 = or i32 %285, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %286) #7, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  %287 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %8, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %284) #7, !srcloc !9
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %293, label %289, !prof !16

289:                                              ; preds = %281, %277
  %290 = phi i32 [ %287, %281 ], [ 24, %277 ]
  %291 = sub i32 24, %290
  %292 = getelementptr i8, ptr %4, i32 %291
  call void @llvm.memset.p0.i32(ptr align 1 %292, i8 0, i32 %290, i1 false) #7
  br label %310

293:                                              ; preds = %281
  %294 = getelementptr inbounds %struct.fstrim_range, ptr %4, i32 0, i32 2
  %295 = load i64, ptr %294, align 8
  %296 = trunc i64 %295 to i32
  %297 = getelementptr inbounds %struct.request_queue, ptr %270, i32 0, i32 32, i32 18
  %298 = load i32, ptr %297, align 4
  %299 = call i32 @llvm.umax.i32(i32 %298, i32 %296) #7
  %300 = zext i32 %299 to i64
  store i64 %300, ptr %294, align 8
  %301 = call i32 @fat_trim_fs(ptr noundef %7, ptr noundef nonnull %4) #7
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %293
  %304 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %283) #8, !srcloc !8
  %305 = and i32 %304, -13
  %306 = or i32 %305, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %306) #7, !srcloc !9
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  %307 = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %4, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %304) #7, !srcloc !9
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !10
  %308 = icmp eq i32 %307, 0
  %309 = select i1 %308, i32 0, i32 -14
  br label %310

310:                                              ; preds = %303, %293, %289, %272, %264
  %311 = phi i32 [ -1, %264 ], [ -95, %272 ], [ %301, %293 ], [ -14, %289 ], [ %309, %303 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %312

312:                                              ; preds = %310, %251, %249, %42, %3
  %313 = phi i32 [ %311, %310 ], [ %263, %251 ], [ %250, %249 ], [ %50, %42 ], [ -25, %3 ]
  ret i32 %313
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_file_fsync(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__generic_file_fsync(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @sync_mapping_buffers(ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @blkdev_issue_flush(ptr noundef %24) #7
  br label %26

26:                                               ; preds = %21, %10, %4
  %27 = phi i32 [ %25, %21 ], [ %8, %4 ], [ %19, %10 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_file_release(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 19, i32 12
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 256
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @fat_flush_inodes(ptr noundef %9, ptr noundef %0, ptr noundef null) #7
  %18 = tail call ptr @llvm.thread.pointer() #7
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 1
  store volatile i32 2, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %20 = tail call i32 @io_schedule_timeout(i32 noundef 10) #7
  br label %21

21:                                               ; preds = %16, %7, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_fallocate(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ult i32 %1, 2
  br i1 %12, label %13, label %68

13:                                               ; preds = %4
  %14 = load i16, ptr %7, align 8
  %15 = and i16 %14, -4096
  %16 = icmp eq i16 %15, -32768
  br i1 %16, label %17, label %68

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  tail call void @down_write(ptr noundef %18) #7
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 21
  %22 = load i64, ptr %21, align 8
  %23 = shl i64 %22, 9
  %24 = add i64 %3, %2
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %26, label %66

26:                                               ; preds = %20
  %27 = sub i64 %24, %23
  %28 = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = zext i32 %30 to i64
  %32 = add i64 %27, %31
  %33 = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i64
  %36 = ashr i64 %32, %35
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %41, %26
  %39 = phi i32 [ %37, %26 ], [ %42, %41 ]
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = add nsw i32 %39, -1
  %43 = tail call i32 @fat_add_cluster(ptr noundef %7) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %38, label %66

45:                                               ; preds = %17
  %46 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 22
  %47 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  br label %48

48:                                               ; preds = %56, %45
  %49 = load volatile i32, ptr %46, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %52, %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !19
  %53 = load volatile i32, ptr %46, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %52

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %49, %48 ], [ %53, %52 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %58 = load i64, ptr %47, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !21
  %59 = load volatile i32, ptr %46, align 4
  %60 = icmp eq i32 %59, %57
  br i1 %60, label %61, label %48

61:                                               ; preds = %56
  %62 = add i64 %3, %2
  %63 = icmp sgt i64 %62, %58
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call fastcc i32 @fat_cont_expand(ptr noundef %7, i64 noundef %62)
  br label %66

66:                                               ; preds = %64, %61, %41, %38, %20
  %67 = phi i32 [ 0, %20 ], [ 0, %61 ], [ %65, %64 ], [ 0, %38 ], [ %43, %41 ]
  tail call void @up_write(ptr noundef %18) #7
  br label %68

68:                                               ; preds = %66, %13, %4
  %69 = phi i32 [ %67, %66 ], [ -95, %4 ], [ -95, %13 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fat_truncate_blocks(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.fat_entry, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -72
  %13 = load i64, ptr %12, align 8
  %14 = icmp sgt i64 %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 %1, ptr %12, align 8
  br label %16

16:                                               ; preds = %15, %2
  %17 = add i32 %11, -1
  %18 = zext i32 %17 to i64
  %19 = add i64 %18, %1
  %20 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i64
  %23 = ashr i64 %19, %22
  %24 = trunc i64 %23 to i32
  %25 = getelementptr i8, ptr %0, i32 -64
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %124, label %28

28:                                               ; preds = %16
  tail call void @fat_cache_inval_inode(ptr noundef %0) #7
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 144
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 65
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %28
  %40 = phi i1 [ true, %28 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, ptr %25, align 8
  %43 = getelementptr i8, ptr %0, i32 -60
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %24, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, ptr %25, align 8
  store i32 0, ptr %43, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = getelementptr i8, ptr %0, i32 -56
  %49 = load i32, ptr %48, align 8
  %50 = or i32 %49, 32
  store i32 %50, ptr %48, align 8
  %51 = tail call i32 @fat_truncate_time(ptr noundef %0, ptr noundef null, i32 noundef 6) #7
  br i1 %40, label %52, label %56

52:                                               ; preds = %47
  %53 = tail call i32 @fat_sync_inode(ptr noundef %0) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  store i32 %42, ptr %25, align 8
  store i32 %44, ptr %43, align 4
  br label %124

56:                                               ; preds = %47
  tail call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #7
  br label %57

57:                                               ; preds = %56, %52
  br i1 %45, label %113, label %58

58:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  %59 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %59, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !12
  %60 = add i32 %24, -1
  %61 = call i32 @fat_get_cluster(ptr noundef %0, i32 noundef %60, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %62 = icmp slt i32 %61, 0
  %63 = icmp eq i32 %61, 268435455
  %64 = or i1 %62, %63
  br i1 %64, label %110, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.fat_entry, ptr %3, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %67 = getelementptr inbounds %struct.fat_entry, ptr %3, i32 0, i32 1
  store ptr null, ptr %67, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %66, i8 0, i64 16, i1 false) #7
  %68 = load i32, ptr %5, align 4
  %69 = call i32 @fat_ent_read(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %68) #7
  switch i32 %69, label %88 [
    i32 268435455, label %70
    i32 0, label %85
  ]

70:                                               ; preds = %65
  store ptr null, ptr %67, align 4
  %71 = load i32, ptr %66, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %81, %70
  %74 = phi i32 [ %82, %81 ], [ %71, %70 ]
  %75 = phi i32 [ %83, %81 ], [ 0, %70 ]
  %76 = getelementptr %struct.fat_entry, ptr %3, i32 0, i32 3, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  call void @__brelse(ptr noundef nonnull %77) #7
  %80 = load i32, ptr %66, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = phi i32 [ %74, %73 ], [ %80, %79 ]
  %83 = add nuw nsw i32 %75, 1
  %84 = icmp slt i32 %83, %82
  br i1 %84, label %73, label %110

85:                                               ; preds = %65
  %86 = getelementptr i8, ptr %0, i32 -48
  %87 = load i64, ptr %86, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.fat_free, i64 noundef %87) #10
  br label %94

88:                                               ; preds = %65
  %89 = icmp sgt i32 %69, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = call i32 @fat_ent_write(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 268435455, i32 noundef %41) #7
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 %69, i32 %91
  br label %94

94:                                               ; preds = %90, %88, %85
  %95 = phi i32 [ -5, %85 ], [ %69, %88 ], [ %93, %90 ]
  store ptr null, ptr %67, align 4
  %96 = load i32, ptr %66, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %106, %94
  %99 = phi i32 [ %107, %106 ], [ %96, %94 ]
  %100 = phi i32 [ %108, %106 ], [ 0, %94 ]
  %101 = getelementptr %struct.fat_entry, ptr %3, i32 0, i32 3, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %98
  call void @__brelse(ptr noundef nonnull %102) #7
  %105 = load i32, ptr %66, align 4
  br label %106

106:                                              ; preds = %104, %98
  %107 = phi i32 [ %99, %98 ], [ %105, %104 ]
  %108 = add nuw nsw i32 %100, 1
  %109 = icmp slt i32 %108, %107
  br i1 %109, label %98, label %111

110:                                              ; preds = %81, %70, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  br label %124

111:                                              ; preds = %106, %94
  %112 = icmp slt i32 %95, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  br i1 %112, label %124, label %113

113:                                              ; preds = %111, %57
  %114 = phi i32 [ %95, %111 ], [ %42, %57 ]
  %115 = load ptr, ptr %8, align 4
  %116 = getelementptr inbounds %struct.msdos_sb_info, ptr %115, i32 0, i32 1
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  %119 = add nsw i32 %118, -9
  %120 = shl i32 %24, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %121, ptr %122, align 8
  %123 = call i32 @fat_free_clusters(ptr noundef %0, i32 noundef %114) #7
  br label %124

124:                                              ; preds = %113, %111, %110, %55, %16
  %125 = load ptr, ptr %6, align 4
  %126 = call i32 @fat_flush_inodes(ptr noundef %125, ptr noundef %0, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_flush_inodes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_getattr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 %3, i32 %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void @generic_fillattr(ptr noundef %0, ptr noundef %9, ptr noundef %2) #7
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.msdos_sb_info, ptr %19, i32 0, i32 19, i32 10
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.msdos_sb_info, ptr %19, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %24) #7
  %25 = getelementptr i8, ptr %9, i32 -48
  %26 = load i64, ptr %25, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %27 = load i16, ptr %24, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %29 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 6
  store i64 %26, ptr %29, align 8
  br label %30

30:                                               ; preds = %23, %5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_setattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %2, align 8
  %11 = and i32 %10, 65920
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @llvm.thread.pointer() #7
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 83
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 11
  %24 = load i16, ptr %23, align 2
  %25 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = insertvalue [1 x i32] poison, i32 %26, 0
  %28 = tail call i32 @in_group_p([1 x i32] %27) #7
  %29 = icmp eq i32 %28, 0
  %30 = lshr i16 %24, 3
  %31 = select i1 %29, i16 %24, i16 %30
  %32 = and i16 %31, 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, ptr %2, align 8
  %36 = and i32 %35, -65921
  store i32 %36, ptr %2, align 8
  br label %37

37:                                               ; preds = %34, %22, %13, %3
  %38 = tail call i32 @setattr_prepare(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  store i32 %10, ptr %2, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 12
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  %45 = select i1 %44, i32 %38, i32 0
  br label %193

46:                                               ; preds = %37
  %47 = and i32 %10, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  tail call void @inode_dio_wait(ptr noundef %9) #7
  %50 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  %53 = load i64, ptr %52, align 8
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %2, align 8
  br label %65

57:                                               ; preds = %49
  %58 = tail call fastcc i32 @fat_cont_expand(ptr noundef %9, i64 noundef %51)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %193

60:                                               ; preds = %57
  %61 = load i32, ptr %2, align 8
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %193, label %63

63:                                               ; preds = %60
  %64 = and i32 %61, -9
  store i32 %64, ptr %2, align 8
  br label %65

65:                                               ; preds = %63, %55, %46
  %66 = phi i32 [ %56, %55 ], [ %64, %63 ], [ %10, %46 ]
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 2
  %71 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19
  %72 = load i32, ptr %70, align 8
  %73 = load i32, ptr %71, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %69, %65
  %76 = and i32 %66, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 3
  %80 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 1
  %81 = load i32, ptr %79, align 4
  %82 = load i32, ptr %80, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78, %75
  %85 = and i32 %66, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %152, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %89 = load i16, ptr %88, align 4
  %90 = and i16 %89, 15872
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87, %78, %69
  %93 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 12
  %94 = load i16, ptr %93, align 4
  %95 = and i16 %94, 1
  %96 = add nsw i16 %95, -1
  %97 = sext i16 %96 to i32
  br label %193

98:                                               ; preds = %87
  %99 = load i16, ptr %9, align 8
  %100 = and i16 %99, -4096
  %101 = icmp eq i16 %100, -32768
  %102 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 2
  %103 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 3
  %104 = select i1 %101, ptr %102, ptr %103
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = and i16 %105, 4095
  %108 = xor i16 %107, 4095
  %109 = and i16 %108, %89
  %110 = zext i16 %109 to i32
  %111 = and i32 %110, 365
  %112 = and i16 %99, 365
  %113 = zext i16 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %150

115:                                              ; preds = %98
  %116 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.super_block, ptr %117, i32 0, i32 27
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq i16 %100, 16384
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.msdos_sb_info, ptr %119, i32 0, i32 19, i32 12
  %123 = load i16, ptr %122, align 4
  %124 = and i16 %123, 4096
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.msdos_sb_info, ptr %119, i32 0, i32 19, i32 3
  br label %130

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.msdos_sb_info, ptr %119, i32 0, i32 19, i32 2
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi ptr [ %127, %126 ], [ %129, %128 ]
  %132 = load i16, ptr %131, align 2
  %133 = and i16 %132, 146
  %134 = icmp eq i16 %133, 146
  br i1 %134, label %142, label %135

135:                                              ; preds = %130
  %136 = and i32 %110, 146
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %135
  %139 = and i32 %106, 146
  %140 = xor i32 %139, 146
  %141 = icmp eq i32 %136, %140
  br i1 %141, label %147, label %150

142:                                              ; preds = %130, %121
  %143 = and i32 %110, 146
  %144 = and i32 %106, 146
  %145 = xor i32 %144, 146
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142, %138, %135
  %148 = or i16 %109, -4096
  %149 = and i16 %148, %89
  store i16 %149, ptr %88, align 2
  br label %152

150:                                              ; preds = %142, %138, %98
  %151 = and i32 %66, -2
  store i32 %151, ptr %2, align 8
  br label %152

152:                                              ; preds = %150, %147, %84
  %153 = phi i32 [ %66, %84 ], [ %66, %147 ], [ %151, %150 ]
  %154 = and i32 %153, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %158 = load i64, ptr %157, align 8
  %159 = tail call i32 @fat_block_truncate_page(ptr noundef %9, i64 noundef %158) #7
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %193

161:                                              ; preds = %156
  %162 = getelementptr i8, ptr %9, i32 -24
  tail call void @down_write(ptr noundef %162) #7
  %163 = load i64, ptr %157, align 8
  tail call void @truncate_setsize(ptr noundef %9, i64 noundef %163) #7
  %164 = load i64, ptr %157, align 8
  tail call void @fat_truncate_blocks(ptr noundef %9, i64 noundef %164)
  tail call void @up_write(ptr noundef %162) #7
  %165 = load i32, ptr %2, align 8
  br label %166

166:                                              ; preds = %161, %152
  %167 = phi i32 [ %165, %161 ], [ %153, %152 ]
  %168 = and i32 %167, 16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 5
  %172 = tail call i32 @fat_truncate_time(ptr noundef %9, ptr noundef %171, i32 noundef 1) #7
  %173 = load i32, ptr %2, align 8
  br label %174

174:                                              ; preds = %170, %166
  %175 = phi i32 [ %173, %170 ], [ %167, %166 ]
  %176 = and i32 %175, 64
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 7
  %180 = tail call i32 @fat_truncate_time(ptr noundef %9, ptr noundef %179, i32 noundef 4) #7
  %181 = load i32, ptr %2, align 8
  br label %182

182:                                              ; preds = %178, %174
  %183 = phi i32 [ %181, %178 ], [ %175, %174 ]
  %184 = and i32 %183, 32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 6
  %188 = tail call i32 @fat_truncate_time(ptr noundef %9, ptr noundef %187, i32 noundef 2) #7
  %189 = load i32, ptr %2, align 8
  br label %190

190:                                              ; preds = %186, %182
  %191 = phi i32 [ %189, %186 ], [ %183, %182 ]
  %192 = and i32 %191, -113
  store i32 %192, ptr %2, align 8
  tail call void @setattr_copy(ptr noundef %0, ptr noundef %9, ptr noundef %2) #7
  tail call void @__mark_inode_dirty(ptr noundef %9, i32 noundef 7) #7
  br label %193

193:                                              ; preds = %190, %156, %92, %60, %57, %40
  %194 = phi i32 [ %58, %57 ], [ 0, %60 ], [ %159, %156 ], [ 0, %190 ], [ %45, %40 ], [ %97, %92 ]
  ret i32 %194
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fat_cont_expand(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @generic_cont_expand_simple(ptr noundef %0, i64 noundef %1) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = tail call i32 @fat_truncate_time(ptr noundef %0, ptr noundef null, i32 noundef 6) #7
  tail call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #7
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17, %9
  %23 = add i64 %1, -1
  %24 = tail call i32 @filemap_fdatawrite_range(ptr noundef %4, i64 noundef %6, i64 noundef %23) #7
  %25 = tail call i32 @sync_mapping_buffers(ptr noundef %4) #7
  %26 = icmp eq i32 %24, 0
  %27 = select i1 %26, i32 %25, i32 %24
  %28 = tail call i32 @write_inode_now(ptr noundef %0, i32 noundef 1) #7
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i32 %28, i32 %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = tail call i32 @filemap_fdatawait_range(ptr noundef %4, i64 noundef %6, i64 noundef %23) #7
  br label %34

34:                                               ; preds = %32, %22, %17, %2
  %35 = phi i32 [ %7, %2 ], [ 0, %17 ], [ %30, %22 ], [ %33, %32 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_block_truncate_page(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_update_time(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_trim_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_add_cluster(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_cache_inval_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_cluster(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_cont_expand_simple(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }

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
!8 = !{i64 3837107}
!9 = !{i64 3837304}
!10 = !{i64 2151322583}
!11 = !{i64 2153606288, i64 2153606568, i64 2153606902, i64 2153607236}
!12 = !{!"auto-init"}
!13 = !{i64 2153617517, i64 2153617797, i64 2153618131, i64 2153618465}
!14 = !{i64 2151532725}
!15 = !{i64 2153626690, i64 2153626970, i64 2153627304, i64 2153627638}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2153637684}
!18 = !{i64 2151620010}
!19 = !{i64 2151619852}
!20 = !{i64 2151620154}
!21 = !{i64 2149423001}
!22 = !{i64 2148967425}
!23 = !{i64 2148963249}
!24 = !{i64 2148963324, i64 2148963351, i64 2148963398, i64 2148963420, i64 2148963448, i64 2148963468}
!25 = !{i64 2148990428}
