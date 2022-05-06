; ModuleID = '/llk/IR/fs/exportfs/expfs.c_pt.bc'
source_filename = "../fs/exportfs/expfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exportfs_encode_inode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22exportfs_encode_inode_fh\22\09\09\09\09\09"
module asm "__kstrtabns_exportfs_encode_inode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exportfs_encode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22exportfs_encode_fh\22\09\09\09\09\09"
module asm "__kstrtabns_exportfs_encode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exportfs_decode_fh_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22exportfs_decode_fh_raw\22\09\09\09\09\09"
module asm "__kstrtabns_exportfs_decode_fh_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exportfs_decode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22exportfs_decode_fh\22\09\09\09\09\09"
module asm "__kstrtabns_exportfs_decode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.anon.33 = type { i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.path = type { ptr, ptr }
%struct.getdents_callback = type { %struct.dir_context, ptr, i64, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_exportfs_encode_inode_fh = external dso_local constant [0 x i8], align 1
@__kstrtabns_exportfs_encode_inode_fh = external dso_local constant [0 x i8], align 1
@__ksymtab_exportfs_encode_inode_fh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exportfs_encode_inode_fh to i32), ptr @__kstrtab_exportfs_encode_inode_fh, ptr @__kstrtabns_exportfs_encode_inode_fh }, section "___ksymtab_gpl+exportfs_encode_inode_fh", align 4
@__kstrtab_exportfs_encode_fh = external dso_local constant [0 x i8], align 1
@__kstrtabns_exportfs_encode_fh = external dso_local constant [0 x i8], align 1
@__ksymtab_exportfs_encode_fh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exportfs_encode_fh to i32), ptr @__kstrtab_exportfs_encode_fh, ptr @__kstrtabns_exportfs_encode_fh }, section "___ksymtab_gpl+exportfs_encode_fh", align 4
@__kstrtab_exportfs_decode_fh_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_exportfs_decode_fh_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_exportfs_decode_fh_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exportfs_decode_fh_raw to i32), ptr @__kstrtab_exportfs_decode_fh_raw, ptr @__kstrtabns_exportfs_decode_fh_raw }, section "___ksymtab_gpl+exportfs_decode_fh_raw", align 4
@__kstrtab_exportfs_decode_fh = external dso_local constant [0 x i8], align 1
@__kstrtabns_exportfs_decode_fh = external dso_local constant [0 x i8], align 1
@__ksymtab_exportfs_decode_fh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exportfs_decode_fh to i32), ptr @__kstrtab_exportfs_decode_fh, ptr @__kstrtabns_exportfs_decode_fh }, section "___ksymtab_gpl+exportfs_decode_fh", align 4
@__UNIQUE_ID_file196 = internal constant [35 x i8] c"exportfs.file=fs/exportfs/exportfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [21 x i8] c"exportfs.license=GPL\00", section ".modinfo", align 1
@clear_disconnected.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"fs/exportfs/expfs.c\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__ksymtab_exportfs_decode_fh, ptr @__ksymtab_exportfs_decode_fh_raw, ptr @__ksymtab_exportfs_encode_fh, ptr @__ksymtab_exportfs_encode_inode_fh], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exportfs_encode_inode_fh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 %11(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  br label %38

15:                                               ; preds = %10, %4
  %16 = load i32, ptr %2, align 4
  %17 = icmp ne ptr %3, null
  %18 = icmp slt i32 %16, 4
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = icmp slt i32 %16, 2
  br i1 %21, label %35, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %1, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.anon.33, ptr %1, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  br i1 %17, label %28, label %35

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.anon.33, ptr %1, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 44
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.anon.33, ptr %1, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %28, %22, %20, %15
  %36 = phi i32 [ 4, %15 ], [ 2, %20 ], [ 4, %28 ], [ 2, %22 ]
  %37 = phi i32 [ 255, %15 ], [ 255, %20 ], [ 2, %28 ], [ 1, %22 ]
  store i32 %36, ptr %2, align 4
  br label %38

38:                                               ; preds = %35, %13
  %39 = phi i32 [ %14, %13 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exportfs_encode_fh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %6, align 8
  %10 = and i16 %9, -4096
  %11 = icmp eq i16 %10, 16384
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @dget_parent(ptr noundef %0) #8
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %12, %8, %4
  %17 = phi ptr [ null, %8 ], [ %13, %12 ], [ null, %4 ]
  %18 = phi ptr [ null, %8 ], [ %15, %12 ], [ null, %4 ]
  %19 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %22, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 %25(ptr noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %18) #8
  br label %52

29:                                               ; preds = %24, %16
  %30 = load i32, ptr %2, align 4
  %31 = icmp ne ptr %18, null
  %32 = icmp slt i32 %30, 4
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = icmp slt i32 %30, 2
  br i1 %35, label %49, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %1, align 4
  %39 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 44
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.anon.33, ptr %1, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  br i1 %31, label %42, label %49

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.anon.33, ptr %1, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 44
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.anon.33, ptr %1, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %42, %36, %34, %29
  %50 = phi i32 [ 4, %29 ], [ 2, %34 ], [ 4, %42 ], [ 2, %36 ]
  %51 = phi i32 [ 255, %29 ], [ 255, %34 ], [ 2, %42 ], [ 1, %36 ]
  store i32 %50, ptr %2, align 4
  br label %52

52:                                               ; preds = %49, %27
  %53 = phi i32 [ %28, %27 ], [ %51, %49 ]
  tail call void @dput(ptr noundef %17) #8
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exportfs_decode_fh_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef %5) #0 {
  %7 = alloca [256 x i8], align 1
  %8 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %7, i8 0, i32 256, i1 false), !annotation !8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.export_operations, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %87, label %17

17:                                               ; preds = %13
  %18 = tail call ptr %15(ptr noundef %9, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  %22 = icmp eq ptr %4, null
  %23 = or i1 %22, %21
  br i1 %23, label %87, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %18, align 8
  %26 = and i32 %25, 6291456
  %27 = icmp eq i32 %26, 2097152
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = and i32 %25, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call fastcc i32 @reconnect_path(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %7)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %31, %28
  %35 = call i32 %4(ptr noundef %5, ptr noundef nonnull %18) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %83, label %87

37:                                               ; preds = %24
  %38 = tail call fastcc ptr @find_acceptable_alias(ptr noundef nonnull %18, ptr noundef nonnull %4, ptr noundef %5)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %87

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.export_operations, ptr %11, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %8, align 4
  %46 = tail call ptr %42(ptr noundef %45, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %83, label %48

48:                                               ; preds = %44
  %49 = ptrtoint ptr %46 to i32
  %50 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %83, label %51

51:                                               ; preds = %48
  %52 = call fastcc i32 @reconnect_path(ptr noundef %0, ptr noundef nonnull %46, ptr noundef nonnull %7)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void @dput(ptr noundef nonnull %46) #8
  br label %83

55:                                               ; preds = %51
  %56 = call fastcc i32 @exportfs_get_name(ptr noundef %0, ptr noundef nonnull %46, ptr noundef nonnull %7, ptr noundef nonnull %18)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @dput(ptr noundef nonnull %46) #8
  br label %83

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 5
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 24
  call void @down_write(ptr noundef %62) #8
  %63 = call i32 @strlen(ptr noundef nonnull %7)
  %64 = call ptr @lookup_one_len(ptr noundef nonnull %7, ptr noundef nonnull %46, i32 noundef %63) #8
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.dentry, ptr %64, i32 0, i32 5
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %66
  call void @dput(ptr noundef %64) #8
  br label %73

73:                                               ; preds = %72, %66, %59
  %74 = phi ptr [ %64, %59 ], [ inttoptr (i32 -116 to ptr), %72 ], [ %64, %66 ]
  %75 = load ptr, ptr %60, align 8
  %76 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 24
  call void @up_write(ptr noundef %76) #8
  call void @dput(ptr noundef nonnull %46) #8
  %77 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = ptrtoint ptr %74 to i32
  br label %83

80:                                               ; preds = %73
  call void @dput(ptr noundef nonnull %18) #8
  %81 = call fastcc ptr @find_acceptable_alias(ptr noundef %74, ptr noundef nonnull %4, ptr noundef %5)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %78, %58, %54, %48, %44, %40, %34, %31
  %84 = phi ptr [ %18, %31 ], [ %74, %80 ], [ %18, %34 ], [ %18, %54 ], [ %18, %58 ], [ %18, %78 ], [ %18, %40 ], [ %18, %44 ], [ %18, %48 ]
  %85 = phi i32 [ %32, %31 ], [ -13, %80 ], [ -13, %34 ], [ %52, %54 ], [ %56, %58 ], [ %79, %78 ], [ -116, %40 ], [ -116, %44 ], [ %49, %48 ]
  call void @dput(ptr noundef %84) #8
  %86 = inttoptr i32 %85 to ptr
  br label %87

87:                                               ; preds = %83, %80, %37, %34, %17, %13, %6
  %88 = phi ptr [ %86, %83 ], [ %81, %80 ], [ %18, %17 ], [ %18, %34 ], [ inttoptr (i32 -116 to ptr), %13 ], [ inttoptr (i32 -116 to ptr), %6 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #8
  ret ptr %88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @reconnect_path(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %6) #8
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  br label %9

9:                                                ; preds = %78, %7
  %10 = phi ptr [ %1, %7 ], [ %76, %78 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %83, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 13
  %17 = load ptr, ptr %16, align 64
  %18 = icmp eq ptr %10, %17
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exportfs/expfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %10, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 24
  tail call void @down_write(ptr noundef %27) #8
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr inbounds %struct.export_operations, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = tail call ptr %32(ptr noundef %10) #8
  br label %36

36:                                               ; preds = %34, %24
  %37 = phi ptr [ %35, %34 ], [ inttoptr (i32 -13 to ptr), %24 ]
  %38 = load ptr, ptr %25, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 24
  tail call void @up_write(ptr noundef %39) #8
  %40 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %75, label %41

41:                                               ; preds = %36
  %42 = tail call fastcc i32 @exportfs_get_name(ptr noundef %0, ptr noundef %37, ptr noundef %2, ptr noundef %10) #8
  switch i32 %42, label %55 [
    i32 -2, label %58
    i32 0, label %43
  ]

43:                                               ; preds = %41
  %44 = tail call i32 @strlen(ptr noundef %2) #8
  %45 = tail call ptr @lookup_one_len_unlocked(ptr noundef %2, ptr noundef %37, i32 noundef %44) #8
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = ptrtoint ptr %45 to i32
  br label %55

49:                                               ; preds = %43
  %50 = icmp eq ptr %45, %10
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @dput(ptr noundef %45) #8
  br label %58

52:                                               ; preds = %49
  tail call void @dput(ptr noundef %10) #8
  %53 = load ptr, ptr %21, align 8
  %54 = icmp eq ptr %53, %10
  br i1 %54, label %55, label %75

55:                                               ; preds = %52, %47, %41
  %56 = phi i32 [ %48, %47 ], [ %42, %41 ], [ -116, %52 ]
  tail call void @dput(ptr noundef %37) #8
  %57 = inttoptr i32 %56 to ptr
  br label %75

58:                                               ; preds = %51, %41
  tail call void @dput(ptr noundef %37) #8
  %59 = icmp eq ptr %10, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %61) #8
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %69, %62
  %64 = phi ptr [ %70, %69 ], [ %10, %62 ]
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  tail call void @dput(ptr noundef %64) #8
  br label %83

69:                                               ; preds = %63
  %70 = tail call ptr @dget_parent(ptr noundef %64) #8
  tail call void @dput(ptr noundef %64) #8
  %71 = icmp eq ptr %64, %70
  br i1 %71, label %72, label %63

72:                                               ; preds = %69
  tail call void @dput(ptr noundef %64) #8
  tail call void @dput(ptr noundef %10) #8
  br label %80

73:                                               ; preds = %20
  %74 = tail call ptr @dget_parent(ptr noundef %10) #8
  br label %75

75:                                               ; preds = %73, %55, %52, %36
  %76 = phi ptr [ %74, %73 ], [ %57, %55 ], [ %37, %36 ], [ %37, %52 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  tail call void @dput(ptr noundef %10) #8
  %79 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %9

80:                                               ; preds = %78, %72
  %81 = phi ptr [ inttoptr (i32 -116 to ptr), %72 ], [ %76, %78 ]
  %82 = ptrtoint ptr %81 to i32
  br label %111

83:                                               ; preds = %75, %68, %9
  tail call void @dput(ptr noundef %10) #8
  br i1 %4, label %86, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %85) #8
  br label %86

86:                                               ; preds = %84, %83
  %87 = load i32, ptr %1, align 8
  %88 = and i32 %87, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %100, %86
  %91 = phi ptr [ %92, %100 ], [ %1, %86 ]
  %92 = tail call ptr @dget_parent(ptr noundef %91) #8
  %93 = getelementptr inbounds %struct.dentry, ptr %91, i32 0, i32 3
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %91, %94
  %96 = load i1, ptr @clear_disconnected.__already_done, align 1
  %97 = xor i1 %96, true
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %100, !prof !10

99:                                               ; preds = %90
  store i1 true, ptr @clear_disconnected.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #8
  br label %100

100:                                              ; preds = %99, %90
  %101 = getelementptr inbounds %struct.dentry, ptr %91, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %101) #8
  %102 = load i32, ptr %91, align 8
  %103 = and i32 %102, -33
  store i32 %103, ptr %91, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %104 = load i16, ptr %101, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %101, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call void @dput(ptr noundef %91) #8
  %106 = load i32, ptr %92, align 8
  %107 = and i32 %106, 32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %90

109:                                              ; preds = %100, %86
  %110 = phi ptr [ %1, %86 ], [ %92, %100 ]
  tail call void @dput(ptr noundef %110) #8
  br label %111

111:                                              ; preds = %109, %80
  %112 = phi i32 [ %82, %80 ], [ 0, %109 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_acceptable_alias(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 %1(ptr noundef %2, ptr noundef %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 32
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -128
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %37, label %16

16:                                               ; preds = %30, %6
  %17 = phi ptr [ %34, %30 ], [ %13, %6 ]
  %18 = phi ptr [ %17, %30 ], [ null, %6 ]
  %19 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %19) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %20 = load i16, ptr %9, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %22 = icmp eq ptr %18, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void @dput(ptr noundef nonnull %18) #8
  br label %24

24:                                               ; preds = %23, %16
  %25 = icmp eq ptr %17, %0
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = tail call i32 %1(ptr noundef %2, ptr noundef nonnull %17) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @dput(ptr noundef %0) #8
  br label %43

30:                                               ; preds = %26, %24
  tail call void @_raw_spin_lock(ptr noundef %9) #8
  %31 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 15
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %32, i32 -128
  %35 = icmp eq ptr %34, null
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %16

37:                                               ; preds = %30, %6
  %38 = phi ptr [ null, %6 ], [ %17, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %39 = load i16, ptr %9, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %41 = icmp eq ptr %38, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @dput(ptr noundef nonnull %38) #8
  br label %43

43:                                               ; preds = %42, %37, %29, %3
  %44 = phi ptr [ %17, %29 ], [ %0, %3 ], [ null, %42 ], [ null, %37 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exportfs_get_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.kstat, align 8
  %6 = alloca %struct.path, align 8
  %7 = alloca %struct.getdents_callback, align 8
  %8 = alloca %struct.path, align 8
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store ptr %0, ptr %8, align 8
  %13 = getelementptr inbounds %struct.path, ptr %8, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.export_operations, ptr %12, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = tail call i32 %15(ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  br label %73

19:                                               ; preds = %4
  %20 = tail call ptr @llvm.thread.pointer() #8
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 83
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %5, i8 0, i32 144, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store ptr %0, ptr %6, align 8
  %25 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  store ptr %3, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false) #8
  store ptr @filldir_one, ptr %7, align 8
  %26 = getelementptr inbounds %struct.getdents_callback, ptr %7, i32 0, i32 1
  store ptr %2, ptr %26, align 8
  %27 = icmp eq ptr %24, null
  br i1 %27, label %71, label %28

28:                                               ; preds = %19
  %29 = load i16, ptr %24, align 8
  %30 = and i16 %29, -4096
  %31 = icmp eq i16 %30, 16384
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 39
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %71, label %36

36:                                               ; preds = %32
  %37 = call i32 @vfs_getattr_nosec(ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 256, i32 noundef 0) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.kstat, ptr %5, i32 0, i32 6
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.getdents_callback, ptr %7, i32 0, i32 2
  store i64 %41, ptr %42, align 8
  %43 = call ptr @dentry_open(ptr noundef nonnull %8, i32 noundef 0, ptr noundef %22) #8
  %44 = ptrtoint ptr %43 to i32
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %71, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.file_operations, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.file_operations, ptr %48, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %52, %46
  %57 = getelementptr inbounds %struct.getdents_callback, ptr %7, i32 0, i32 4
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.getdents_callback, ptr %7, i32 0, i32 3
  br label %59

59:                                               ; preds = %66, %56
  %60 = phi i32 [ %67, %66 ], [ 0, %56 ]
  %61 = call i32 @iterate_dir(ptr noundef %43, ptr noundef nonnull %7) #8
  %62 = load i32, ptr %58, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = icmp slt i32 %61, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %57, align 4
  %68 = icmp eq i32 %60, %67
  br i1 %68, label %69, label %59

69:                                               ; preds = %66, %64, %59, %52
  %70 = phi i32 [ -22, %52 ], [ %61, %64 ], [ 0, %59 ], [ -2, %66 ]
  call void @fput(ptr noundef %43) #8
  br label %71

71:                                               ; preds = %69, %39, %36, %32, %28, %19
  %72 = phi i32 [ %37, %36 ], [ %44, %39 ], [ %70, %69 ], [ -22, %32 ], [ -20, %28 ], [ -20, %19 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #8
  br label %73

73:                                               ; preds = %71, %17
  %74 = phi i32 [ %18, %17 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exportfs_decode_fh(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = tail call ptr @exportfs_decode_fh_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  %11 = icmp eq ptr %7, inttoptr (i32 -12 to ptr)
  %12 = select i1 %11, ptr inttoptr (i32 -12 to ptr), ptr inttoptr (i32 -116 to ptr)
  %13 = select i1 %10, ptr %12, ptr %7
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @filldir_one(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #5 {
  %7 = getelementptr inbounds %struct.getdents_callback, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.getdents_callback, ptr %0, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, %4
  %13 = icmp slt i32 %2, 256
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.getdents_callback, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %1, i32 %2, i1 false)
  %18 = load ptr, ptr %16, align 8
  %19 = getelementptr i8, ptr %18, i32 %2
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.getdents_callback, ptr %0, i32 0, i32 3
  store i32 1, ptr %20, align 8
  br label %21

21:                                               ; preds = %15, %6
  %22 = phi i32 [ -1, %15 ], [ 0, %6 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr_nosec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151587655, i64 2151588139, i64 2151587692, i64 2151587748, i64 2151587782, i64 2151587806, i64 2151587847, i64 2151587868, i64 2151587896, i64 2151587930}
!12 = !{i64 2149017477}
!13 = !{i64 2149013301}
!14 = !{i64 2149013376, i64 2149013403, i64 2149013450, i64 2149013472, i64 2149013500, i64 2149013520}
!15 = !{i64 2149040480}
