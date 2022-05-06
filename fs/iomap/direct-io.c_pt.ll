; ModuleID = '/llk/IR/fs/iomap/direct-io.c_pt.bc'
source_filename = "../fs/iomap/direct-io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_dio_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_dio_complete\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_dio_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___iomap_dio_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22__iomap_dio_rw\22\09\09\09\09\09"
module asm "__kstrtabns___iomap_dio_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_dio_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_dio_rw\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_dio_rw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.iomap_dio = type { ptr, ptr, i64, i64, %struct.atomic_t, i32, i32, i32, i8, %union.anon.71 }
%union.anon.71 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.work_struct }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.19, %union.anon.20 }
%union.anon.19 = type { ptr }
%union.anon.20 = type { i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26 }
%struct.llist_node = type { ptr }
%union.anon.26 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.25, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.25 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iomap_dio_ops = type { ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.18, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.18 = type { %struct.atomic_t }

@__kstrtab_iomap_dio_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_dio_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_dio_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_dio_complete to i32), ptr @__kstrtab_iomap_dio_complete, ptr @__kstrtabns_iomap_dio_complete }, section "___ksymtab_gpl+iomap_dio_complete", align 4
@__kstrtab___iomap_dio_rw = external dso_local constant [0 x i8], align 1
@__kstrtabns___iomap_dio_rw = external dso_local constant [0 x i8], align 1
@__ksymtab___iomap_dio_rw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__iomap_dio_rw to i32), ptr @__kstrtab___iomap_dio_rw, ptr @__kstrtabns___iomap_dio_rw }, section "___ksymtab_gpl+__iomap_dio_rw", align 4
@__kstrtab_iomap_dio_rw = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_dio_rw = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_dio_rw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_dio_rw to i32), ptr @__kstrtab_iomap_dio_rw, ptr @__kstrtabns_iomap_dio_rw }, section "___ksymtab_gpl+iomap_dio_rw", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_iomap_dio_invalidate_fail = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@iomap_dio_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"fs/iomap/direct-io.c\00", align 1
@iomap_dio_iter._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.iomap_dio_iter = private unnamed_addr constant [15 x i8] c"iomap_dio_iter\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"\014Direct I/O collision with buffered writes! File: %pD4 Comm: %.20s\0A\00", align 1
@iomap_dio_iter.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@iomap_dio_bio_opflags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@iomap_dio_inline_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___iomap_dio_rw, ptr @__ksymtab_iomap_dio_complete, ptr @__ksymtab_iomap_dio_rw], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_dio_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kiocb, ptr %4, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 3
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 %14(ptr noundef %4, i32 noundef %19, i32 noundef %11, i32 noundef %21) #9
  br label %23

23:                                               ; preds = %16, %13, %1
  %24 = phi i32 [ %22, %16 ], [ %11, %13 ], [ %11, %1 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %49, !prof !8

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 3
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = add i64 %9, %30
  %32 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1073741824
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = sub i64 %33, %9
  %42 = trunc i64 %41 to i32
  %43 = sext i32 %42 to i64
  br label %44

44:                                               ; preds = %40, %35, %26
  %45 = phi i64 [ %43, %40 ], [ %30, %35 ], [ %30, %26 ]
  %46 = phi i32 [ %42, %40 ], [ %29, %35 ], [ %29, %26 ]
  %47 = load i64, ptr %8, align 8
  %48 = add i64 %47, %45
  store i64 %48, ptr %8, align 8
  br label %49

49:                                               ; preds = %44, %23
  %50 = phi i32 [ %46, %44 ], [ %24, %23 ]
  %51 = load i32, ptr %10, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 3
  %55 = load i64, ptr %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 1073741824
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.address_space, ptr %64, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %62
  %69 = lshr i64 %9, 12
  %70 = trunc i64 %69 to i32
  %71 = add i64 %9, 17592186044415
  %72 = add i64 %71, %55
  %73 = lshr i64 %72, 12
  %74 = trunc i64 %73 to i32
  %75 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %64, i32 noundef %70, i32 noundef %74) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  %78 = load ptr, ptr %4, align 8
  tail call void @dio_warn_stale_pagecache(ptr noundef %78) #9
  br label %79

79:                                               ; preds = %77, %68, %62, %57, %53, %49
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds %struct.file, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.inode, ptr %82, i32 0, i32 36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #9, !srcloc !10
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #9, !srcloc !11
  %85 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.inode, ptr %82, i32 0, i32 23
  tail call void @wake_up_bit(ptr noundef %88, i32 noundef 9) #9
  br label %89

89:                                               ; preds = %87, %79
  %90 = icmp sgt i32 %50, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 536870912
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.kiocb, ptr %4, i32 0, i32 4
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %4, align 8
  %103 = load i64, ptr %8, align 8
  %104 = zext i32 %50 to i64
  %105 = sub i64 %103, %104
  %106 = add i64 %103, -1
  %107 = lshr i32 %98, 2
  %108 = and i32 %107, 1
  %109 = xor i32 %108, 1
  %110 = tail call i32 @vfs_fsync_range(ptr noundef %102, i64 noundef %105, i64 noundef %106, i32 noundef %109) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %101
  %113 = icmp sgt i32 %110, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %112, %101, %96, %91
  %115 = phi i32 [ %110, %112 ], [ %50, %91 ], [ %50, %101 ], [ %50, %96 ]
  %116 = getelementptr inbounds %struct.iomap_dio, ptr %0, i32 0, i32 7
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, %115
  br label %119

119:                                              ; preds = %114, %112, %89
  %120 = phi i32 [ %118, %114 ], [ %110, %112 ], [ %50, %89 ]
  tail call void @kfree(ptr noundef %0) #9
  ret i32 %120
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dio_warn_stale_pagecache(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__iomap_dio_rw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.iomap_iter, align 8
  %8 = alloca %struct.blk_plug, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 17
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %7, i8 0, i64 136, i1 false)
  store ptr %13, ptr %7, align 8
  %14 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 1
  %15 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 2
  %18 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  store i64 %20, ptr %17, align 8
  %21 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 4
  store i32 16, ptr %21, align 8
  %22 = add i64 %16, -1
  %23 = add i64 %22, %20
  %24 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = and i32 %4, 1
  %28 = icmp ne i32 %27, 0
  %29 = or i1 %28, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !13
  %30 = icmp eq i32 %19, 0
  br i1 %30, label %421, label %31

31:                                               ; preds = %6
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 64) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %421, label %35

35:                                               ; preds = %31
  store ptr %0, ptr %33, align 8
  %36 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 4
  store volatile i32 1, ptr %36, align 8
  %37 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 3
  store i64 0, ptr %37, align 8
  %38 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 22
  %39 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 13
  br label %40

40:                                               ; preds = %48, %35
  %41 = load volatile i32, ptr %38, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %44, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !15
  %45 = load volatile i32, ptr %38, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %41, %40 ], [ %45, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %50 = load i64, ptr %39, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %51 = load volatile i32, ptr %38, align 4
  %52 = icmp eq i32 %51, %49
  br i1 %52, label %53, label %40

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 2
  store i64 %50, ptr %54, align 8
  %55 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 1
  store ptr %3, ptr %55, align 4
  %56 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 6
  store i32 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 5
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 7
  store i32 %5, ptr %58, align 4
  %59 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 9
  store ptr %1, ptr %59, align 4
  %60 = tail call ptr @llvm.thread.pointer() #9
  %61 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 9, i32 0, i32 0, i32 1
  store ptr %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  store ptr null, ptr %62, align 4
  %63 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 2
  %64 = load i8, ptr %63, align 2, !range !18
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %53
  %67 = icmp slt i64 %16, %50
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  tail call void @kfree(ptr noundef nonnull %33) #9
  br label %421

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 1, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 100663296
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = tail call zeroext i1 @filemap_range_has_writeback(ptr noundef %11, i64 noundef %16, i64 noundef %23) #9
  br i1 %84, label %418, label %85

85:                                               ; preds = %83, %78, %74
  store i32 48, ptr %21, align 8
  br label %86

86:                                               ; preds = %85, %69
  %87 = phi i32 [ 48, %85 ], [ 16, %69 ]
  %88 = load i8, ptr %1, align 8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %110, label %115

90:                                               ; preds = %53
  store i32 17, ptr %21, align 8
  store i32 1073741824, ptr %57, align 4
  %91 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = tail call zeroext i1 @filemap_range_has_page(ptr noundef %11, i64 noundef %16, i64 noundef %23) #9
  br i1 %96, label %418, label %97

97:                                               ; preds = %95
  store i32 49, ptr %21, align 8
  %98 = load i32, ptr %91, align 8
  br label %99

99:                                               ; preds = %97, %90
  %100 = phi i32 [ 49, %97 ], [ 17, %90 ]
  %101 = phi i32 [ %98, %97 ], [ %92, %90 ]
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, ptr %57, align 4
  %106 = or i32 %105, 536870912
  store i32 %106, ptr %57, align 4
  br label %107

107:                                              ; preds = %104, %99
  %108 = and i32 %101, 6
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %115

110:                                              ; preds = %107, %86
  %111 = phi i32 [ -2147483648, %86 ], [ 268435456, %107 ]
  %112 = phi i32 [ %87, %86 ], [ %100, %107 ]
  %113 = load i32, ptr %57, align 4
  %114 = or i32 %113, %111
  store i32 %114, ptr %57, align 4
  br label %115

115:                                              ; preds = %110, %107, %86
  %116 = phi i32 [ %100, %107 ], [ %87, %86 ], [ %112, %110 ]
  %117 = and i32 %4, 2
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load i64, ptr %54, align 8
  %121 = icmp sge i64 %16, %120
  %122 = add i64 %16, %20
  %123 = icmp ugt i64 %122, %120
  %124 = select i1 %121, i1 true, i1 %123
  br i1 %124, label %418, label %125

125:                                              ; preds = %119
  %126 = or i32 %116, 64
  store i32 %126, ptr %21, align 8
  br label %127

127:                                              ; preds = %125, %115
  %128 = tail call i32 @filemap_write_and_wait_range(ptr noundef %11, i64 noundef %16, i64 noundef %23) #9
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %418

130:                                              ; preds = %127
  %131 = load i8, ptr %63, align 2, !range !18
  %132 = icmp eq i8 %131, 1
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = lshr i64 %16, 12
  %135 = trunc i64 %134 to i32
  %136 = lshr i64 %23, 12
  %137 = trunc i64 %136 to i32
  %138 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %11, i32 noundef %135, i32 noundef %137) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %133
  tail call fastcc void @trace_iomap_dio_invalidate_fail(ptr noundef %13, i64 noundef %16, i64 noundef %20)
  br label %418

141:                                              ; preds = %133
  br i1 %29, label %151, label %142

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.super_block, ptr %144, i32 0, i32 45
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = tail call i32 @sb_init_dio_done_wq(ptr noundef %144) #9
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %418, label %151

151:                                              ; preds = %148, %142, %141, %130
  %152 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %152) #9, !srcloc !10
  %153 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %152, ptr %152, i32 1, ptr elementtype(i32) %152) #9, !srcloc !19
  call void @blk_start_plug(ptr noundef nonnull %8) #9
  %154 = call i32 @iomap_iter(ptr noundef nonnull %7, ptr noundef %2) #9
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %346

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 5, i32 3
  %158 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 85
  %159 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 5, i32 7
  %160 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 5, i32 1
  %161 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 5, i32 2
  %162 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 6, i32 3
  %163 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 6, i32 1
  %164 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 6, i32 2
  %165 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 3
  %166 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  br label %167

167:                                              ; preds = %340, %156
  %168 = load i16, ptr %157, align 8
  switch i16 %168, label %337 [
    i16 0, label %169
    i16 3, label %203
    i16 2, label %234
    i16 4, label %236
    i16 1, label %330
  ]

169:                                              ; preds = %167
  %170 = load i32, ptr %57, align 4
  %171 = and i32 %170, 1073741824
  %172 = icmp ne i32 %171, 0
  %173 = load i1, ptr @iomap_dio_iter.__already_done, align 1
  %174 = xor i1 %173, true
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %177, !prof !20

176:                                              ; preds = %169
  store i1 true, ptr @iomap_dio_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 426, i32 noundef 9, ptr noundef null) #9
  br label %177

177:                                              ; preds = %176, %169
  br i1 %172, label %340, label %178

178:                                              ; preds = %177
  %179 = load i64, ptr %160, align 8
  %180 = load i64, ptr %161, align 8
  %181 = add i64 %180, %179
  %182 = load i16, ptr %162, align 8
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %178
  %185 = load i64, ptr %163, align 8
  %186 = load i64, ptr %164, align 8
  %187 = add i64 %186, %185
  %188 = call i64 @llvm.umin.i64(i64 %181, i64 %187) #9
  br label %189

189:                                              ; preds = %184, %178
  %190 = phi i64 [ %188, %184 ], [ %181, %178 ]
  %191 = load i64, ptr %17, align 8
  %192 = load i64, ptr %14, align 8
  %193 = sub i64 %190, %192
  %194 = call i64 @llvm.umin.i64(i64 %191, i64 %193) #9
  %195 = trunc i64 %194 to i32
  %196 = load ptr, ptr %59, align 4
  %197 = call i32 @iov_iter_zero(i32 noundef %195, ptr noundef %196) #9
  %198 = zext i32 %197 to i64
  %199 = load i64, ptr %37, align 8
  %200 = add i64 %199, %198
  store i64 %200, ptr %37, align 8
  %201 = icmp eq i32 %197, 0
  %202 = select i1 %201, i64 -14, i64 %198
  br label %340

203:                                              ; preds = %167
  %204 = load i32, ptr %57, align 4
  %205 = and i32 %204, 1073741824
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %232

207:                                              ; preds = %203
  %208 = load i64, ptr %160, align 8
  %209 = load i64, ptr %161, align 8
  %210 = add i64 %209, %208
  %211 = load i16, ptr %162, align 8
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %207
  %214 = load i64, ptr %163, align 8
  %215 = load i64, ptr %164, align 8
  %216 = add i64 %215, %214
  %217 = call i64 @llvm.umin.i64(i64 %210, i64 %216) #9
  br label %218

218:                                              ; preds = %213, %207
  %219 = phi i64 [ %217, %213 ], [ %210, %207 ]
  %220 = load i64, ptr %17, align 8
  %221 = load i64, ptr %14, align 8
  %222 = sub i64 %219, %221
  %223 = call i64 @llvm.umin.i64(i64 %220, i64 %222) #9
  %224 = trunc i64 %223 to i32
  %225 = load ptr, ptr %59, align 4
  %226 = call i32 @iov_iter_zero(i32 noundef %224, ptr noundef %225) #9
  %227 = zext i32 %226 to i64
  %228 = load i64, ptr %37, align 8
  %229 = add i64 %228, %227
  store i64 %229, ptr %37, align 8
  %230 = icmp eq i32 %226, 0
  %231 = select i1 %230, i64 -14, i64 %227
  br label %340

232:                                              ; preds = %203
  %233 = call fastcc i64 @iomap_dio_bio_iter(ptr noundef nonnull %7, ptr noundef nonnull %33) #9
  br label %340

234:                                              ; preds = %167
  %235 = call fastcc i64 @iomap_dio_bio_iter(ptr noundef nonnull %7, ptr noundef nonnull %33) #9
  br label %340

236:                                              ; preds = %167
  %237 = load ptr, ptr %59, align 4
  %238 = load i64, ptr %14, align 8
  %239 = load ptr, ptr %159, align 4
  %240 = trunc i64 %238 to i32
  %241 = getelementptr i8, ptr %239, i32 %240
  %242 = load i64, ptr %160, align 8
  %243 = trunc i64 %242 to i32
  %244 = sub i32 0, %243
  %245 = getelementptr i8, ptr %241, i32 %244
  %246 = load i64, ptr %161, align 8
  %247 = add i64 %246, %242
  %248 = load i16, ptr %162, align 8
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %236
  %251 = load i64, ptr %163, align 8
  %252 = load i64, ptr %164, align 8
  %253 = add i64 %252, %251
  %254 = call i64 @llvm.umin.i64(i64 %247, i64 %253) #9
  br label %255

255:                                              ; preds = %250, %236
  %256 = phi i64 [ %254, %250 ], [ %247, %236 ]
  %257 = load i64, ptr %17, align 8
  %258 = sub i64 %256, %238
  %259 = call i64 @llvm.umin.i64(i64 %257, i64 %258) #9
  %260 = ptrtoint ptr %239 to i32
  %261 = and i32 %260, 4095
  %262 = sub nuw nsw i32 4096, %261
  %263 = zext i32 %262 to i64
  %264 = icmp ule i64 %246, %263
  %265 = load i1, ptr @iomap_dio_inline_iter.__already_done, align 1
  %266 = select i1 %264, i1 true, i1 %265
  br i1 %266, label %268, label %267, !prof !8

267:                                              ; preds = %255
  store i1 true, ptr @iomap_dio_inline_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 398, i32 noundef 9, ptr noundef null) #9
  br label %268

268:                                              ; preds = %267, %255
  br i1 %264, label %269, label %340

269:                                              ; preds = %268
  %270 = load i32, ptr %57, align 4
  %271 = and i32 %270, 1073741824
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %315, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr %7, align 8
  %275 = getelementptr inbounds %struct.inode, ptr %274, i32 0, i32 13
  %276 = load i64, ptr %275, align 8
  %277 = icmp sgt i64 %238, %276
  br i1 %277, label %278, label %288

278:                                              ; preds = %273
  %279 = load ptr, ptr %159, align 4
  %280 = trunc i64 %276 to i32
  %281 = getelementptr i8, ptr %279, i32 %280
  %282 = load i64, ptr %160, align 8
  %283 = trunc i64 %282 to i32
  %284 = sub i32 0, %283
  %285 = getelementptr i8, ptr %281, i32 %284
  %286 = sub i64 %238, %276
  %287 = trunc i64 %286 to i32
  call void @llvm.memset.p0.i32(ptr align 1 %285, i8 0, i32 %287, i1 false) #9
  br label %288

288:                                              ; preds = %278, %273
  %289 = trunc i64 %259 to i32
  %290 = icmp slt i32 %289, 0
  %291 = load i1, ptr @check_copy_size.__already_done, align 1
  %292 = xor i1 %291, true
  %293 = select i1 %290, i1 %292, i1 false
  br i1 %293, label %294, label %295, !prof !20

294:                                              ; preds = %288
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %295

295:                                              ; preds = %294, %288
  br i1 %290, label %329, label %296, !prof !20

296:                                              ; preds = %295
  %297 = call i32 @_copy_from_iter(ptr noundef %245, i32 noundef %289, ptr noundef %237) #9
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %329, label %299

299:                                              ; preds = %296
  %300 = zext i32 %297 to i64
  %301 = add i64 %238, %300
  %302 = icmp sgt i64 %301, %276
  br i1 %302, label %303, label %311

303:                                              ; preds = %299
  %304 = load ptr, ptr %7, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %305 = getelementptr inbounds %struct.inode, ptr %304, i32 0, i32 22
  %306 = load i32, ptr %305, align 4
  %307 = add i32 %306, 1
  store i32 %307, ptr %305, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !22
  %308 = getelementptr inbounds %struct.inode, ptr %304, i32 0, i32 13
  store i64 %301, ptr %308, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !23
  %309 = load i32, ptr %305, align 4
  %310 = add i32 %309, 1
  store i32 %310, ptr %305, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  br label %311

311:                                              ; preds = %303, %299
  %312 = load ptr, ptr %7, align 8
  call void @__mark_inode_dirty(ptr noundef %312, i32 noundef 7) #9
  %313 = load i64, ptr %37, align 8
  %314 = add i64 %313, %300
  store i64 %314, ptr %37, align 8
  br label %340

315:                                              ; preds = %269
  %316 = trunc i64 %259 to i32
  %317 = icmp slt i32 %316, 0
  %318 = load i1, ptr @check_copy_size.__already_done, align 1
  %319 = xor i1 %318, true
  %320 = select i1 %317, i1 %319, i1 false
  br i1 %320, label %321, label %322, !prof !20

321:                                              ; preds = %315
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %322

322:                                              ; preds = %321, %315
  br i1 %317, label %329, label %323, !prof !20

323:                                              ; preds = %322
  %324 = call i32 @_copy_to_iter(ptr noundef %245, i32 noundef %316, ptr noundef %237) #9
  %325 = zext i32 %324 to i64
  %326 = load i64, ptr %37, align 8
  %327 = add i64 %326, %325
  store i64 %327, ptr %37, align 8
  %328 = icmp eq i32 %324, 0
  br i1 %328, label %329, label %340

329:                                              ; preds = %323, %322, %296, %295
  br label %340

330:                                              ; preds = %167
  %331 = call i32 @___ratelimit(ptr noundef nonnull @iomap_dio_iter._rs, ptr noundef nonnull @__func__.iomap_dio_iter) #9
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %340, label %333

333:                                              ; preds = %330
  %334 = load ptr, ptr %33, align 8
  %335 = load ptr, ptr %334, align 8
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %335, ptr noundef %158) #11
  br label %340

337:                                              ; preds = %167
  %338 = load i1, ptr @iomap_dio_iter.__already_done.3, align 1
  br i1 %338, label %340, label %339, !prof !8

339:                                              ; preds = %337
  store i1 true, ptr @iomap_dio_iter.__already_done.3, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 448, i32 noundef 9, ptr noundef null) #9
  br label %340

340:                                              ; preds = %339, %337, %333, %330, %329, %323, %311, %268, %234, %232, %218, %189, %177
  %341 = phi i64 [ %235, %234 ], [ %233, %232 ], [ %231, %218 ], [ %202, %189 ], [ -5, %177 ], [ -5, %333 ], [ -5, %330 ], [ -5, %339 ], [ -5, %337 ], [ -5, %268 ], [ -14, %329 ], [ %325, %323 ], [ %300, %311 ]
  store i64 %341, ptr %165, align 8
  %342 = load i32, ptr %166, align 8
  %343 = and i32 %342, -2
  store i32 %343, ptr %166, align 8
  %344 = call i32 @iomap_iter(ptr noundef nonnull %7, ptr noundef %2) #9
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %167, label %346

346:                                              ; preds = %340, %151
  %347 = phi i32 [ %154, %151 ], [ %344, %340 ]
  %348 = sext i32 %347 to i64
  call void @blk_finish_plug(ptr noundef nonnull %8) #9
  %349 = load i8, ptr %63, align 2, !range !18
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %346
  %352 = load i64, ptr %14, align 8
  %353 = load i64, ptr %54, align 8
  %354 = icmp slt i64 %352, %353
  br i1 %354, label %358, label %355

355:                                              ; preds = %351
  %356 = sub i64 %352, %353
  %357 = trunc i64 %356 to i32
  call void @iov_iter_revert(ptr noundef %1, i32 noundef %357) #9
  br label %358

358:                                              ; preds = %355, %351, %346
  %359 = icmp eq i32 %347, -14
  br i1 %359, label %360, label %372

360:                                              ; preds = %358
  %361 = load i64, ptr %37, align 8
  %362 = icmp eq i64 %361, 0
  %363 = and i32 %4, 4
  %364 = icmp eq i32 %363, 0
  %365 = or i1 %364, %362
  br i1 %365, label %372, label %366

366:                                              ; preds = %360
  %367 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 8
  %370 = icmp eq i32 %369, 0
  %371 = select i1 %370, i1 true, i1 %29
  br label %372

372:                                              ; preds = %366, %360, %358
  %373 = phi i64 [ 0, %366 ], [ -14, %360 ], [ %348, %358 ]
  %374 = phi i1 [ %371, %366 ], [ %29, %360 ], [ %29, %358 ]
  %375 = icmp eq i64 %373, -15
  %376 = select i1 %375, i64 0, i64 %373
  %377 = select i1 %375, i1 true, i1 %374
  %378 = icmp slt i64 %376, 0
  br i1 %378, label %379, label %386

379:                                              ; preds = %372
  %380 = trunc i64 %376 to i32
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #9, !srcloc !10
  br label %381

381:                                              ; preds = %381, %379
  %382 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %56, i32 0, i32 %380) #9, !srcloc !26
  %383 = extractvalue { i32, i32 } %382, 0
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %381

385:                                              ; preds = %381
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !27
  br label %386

386:                                              ; preds = %385, %372
  %387 = load i32, ptr %57, align 4
  %388 = and i32 %387, 268435456
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %386
  %391 = and i32 %387, -536870913
  store i32 %391, ptr %57, align 4
  br label %392

392:                                              ; preds = %390, %386
  %393 = load ptr, ptr %62, align 4
  %394 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 3
  store volatile ptr %393, ptr %394, align 4
  %395 = getelementptr inbounds %struct.iomap_dio, ptr %33, i32 0, i32 8
  %396 = zext i1 %377 to i8
  store i8 %396, ptr %395, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #9, !srcloc !10
  %397 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #9, !srcloc !11
  %398 = extractvalue { i32, i32 } %397, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %399 = icmp eq i32 %398, 0
  %400 = xor i1 %377, true
  %401 = select i1 %399, i1 true, i1 %400
  %402 = select i1 %399, ptr %33, ptr inttoptr (i32 -529 to ptr)
  br i1 %401, label %421, label %403

403:                                              ; preds = %392
  %404 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 1
  store volatile i32 2, ptr %404, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %405 = load volatile ptr, ptr %61, align 8
  %406 = icmp eq ptr %405, null
  br i1 %406, label %417, label %407

407:                                              ; preds = %414, %403
  %408 = load ptr, ptr %62, align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %413, label %410

410:                                              ; preds = %407
  %411 = call i32 @bio_poll(ptr noundef nonnull %408, ptr noundef null, i32 noundef 0) #9
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %410, %407
  call void @blk_io_schedule() #9
  br label %414

414:                                              ; preds = %413, %410
  store volatile i32 2, ptr %404, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %415 = load volatile ptr, ptr %61, align 8
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %407

417:                                              ; preds = %414, %403
  store volatile i32 0, ptr %404, align 8
  br label %421

418:                                              ; preds = %148, %140, %127, %119, %95, %83
  %419 = phi i32 [ -11, %95 ], [ -11, %83 ], [ -15, %140 ], [ -11, %119 ], [ %128, %127 ], [ %149, %148 ]
  tail call void @kfree(ptr noundef nonnull %33) #9
  %420 = inttoptr i32 %419 to ptr
  br label %421

421:                                              ; preds = %418, %417, %392, %68, %31, %6
  %422 = phi ptr [ %420, %418 ], [ null, %6 ], [ %33, %417 ], [ %402, %392 ], [ inttoptr (i32 -12 to ptr), %31 ], [ null, %68 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %7) #9
  ret ptr %422
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_range_has_page(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_iomap_dio_invalidate_fail(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_dio_invalidate_fail, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %18 = tail call i32 @__traceiter_iomap_dio_invalidate_fail(ptr noundef null, ptr noundef %0, i64 noundef %1, i64 noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br label %19

19:                                               ; preds = %17, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_init_dio_done_wq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_poll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_dio_rw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call ptr @__iomap_dio_rw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = ptrtoint ptr %7 to i32
  %13 = select i1 %9, i32 %12, i32 0
  br label %16

14:                                               ; preds = %6
  %15 = tail call i32 @iomap_dio_complete(ptr noundef nonnull %7)
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %13, %11 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_range_has_writeback(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_dio_invalidate_fail(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @iomap_dio_bio_iter(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 512, i32 %12
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ %14, %10 ], [ 512, %2 ]
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ %21, %17 ], [ %16, %15 ]
  %19 = phi i32 [ %20, %17 ], [ 8, %15 ]
  %20 = add nuw nsw i32 %19, 1
  %21 = lshr i32 %18, 1
  %22 = icmp ugt i32 %18, 513
  br i1 %22, label %17, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 19
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @iov_iter_alignment(ptr noundef %29) #9
  %31 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, %32
  %36 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 3
  %37 = load i16, ptr %36, align 8
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %43, %41
  %45 = tail call i64 @llvm.umin.i64(i64 %35, i64 %44) #9
  br label %46

46:                                               ; preds = %39, %23
  %47 = phi i64 [ %45, %39 ], [ %35, %23 ]
  %48 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = sub i64 %47, %51
  %53 = tail call i64 @llvm.umin.i64(i64 %49, i64 %52) #9
  %54 = zext i32 %30 to i64
  %55 = or i64 %51, %54
  %56 = or i64 %55, %53
  %57 = shl i32 -2, %19
  %58 = xor i32 %57, -1
  %59 = sext i32 %58 to i64
  %60 = and i64 %56, %59
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %336

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 3
  %64 = load i16, ptr %63, align 8
  %65 = icmp eq i16 %64, 3
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, 1
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 4
  %72 = load i16, ptr %71, align 2
  %73 = and i16 %72, 4
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 2
  store i32 %78, ptr %76, align 4
  %79 = load i16, ptr %71, align 2
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i16 [ %79, %75 ], [ %72, %70 ]
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %80
  %86 = load i16, ptr %63, align 8
  %87 = icmp eq i16 %86, 2
  %88 = and i32 %82, 6
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 268435456
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr inbounds %struct.block_device, ptr %97, i32 0, i32 18
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.request_queue, ptr %99, i32 0, i32 11
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 262144
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %96, %91, %85, %80
  %105 = phi i1 [ %65, %91 ], [ %65, %85 ], [ true, %80 ], [ %65, %96 ]
  %106 = phi i1 [ false, %91 ], [ false, %85 ], [ false, %80 ], [ %103, %96 ]
  %107 = load ptr, ptr %28, align 4
  %108 = getelementptr inbounds %struct.iov_iter, ptr %107, i32 0, i32 4
  %109 = load i32, ptr %108, align 8
  %110 = zext i32 %109 to i64
  %111 = icmp ult i64 %53, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = trunc i64 %53 to i32
  store i32 %113, ptr %108, align 8
  %114 = load ptr, ptr %28, align 4
  %115 = getelementptr inbounds %struct.iov_iter, ptr %114, i32 0, i32 4
  %116 = load i32, ptr %115, align 8
  br label %117

117:                                              ; preds = %112, %104
  %118 = phi i32 [ %109, %104 ], [ %116, %112 ]
  %119 = phi ptr [ %107, %104 ], [ %114, %112 ]
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %323, label %121

121:                                              ; preds = %117
  br i1 %105, label %145, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 1073741824
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %162, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 22
  %129 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  br label %130

130:                                              ; preds = %138, %127
  %131 = load volatile i32, ptr %128, align 4
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %134, %130
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !15
  %135 = load volatile i32, ptr %128, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %134

138:                                              ; preds = %134, %130
  %139 = phi i32 [ %131, %130 ], [ %135, %134 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %140 = load i64, ptr %129, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %141 = load volatile i32, ptr %128, align 4
  %142 = icmp eq i32 %141, %139
  br i1 %142, label %143, label %130

143:                                              ; preds = %138
  %144 = icmp slt i64 %51, %140
  br i1 %144, label %162, label %157

145:                                              ; preds = %121
  %146 = load ptr, ptr %1, align 8
  %147 = getelementptr inbounds %struct.kiocb, ptr %146, i32 0, i32 4
  %148 = load i32, ptr %147, align 8
  %149 = and i32 %148, -2
  store i32 %149, ptr %147, align 8
  %150 = add i32 %27, -1
  %151 = trunc i64 %51 to i32
  %152 = and i32 %150, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %145
  %155 = zext i32 %152 to i64
  %156 = sub i64 %51, %155
  tail call fastcc void @iomap_dio_zero(ptr noundef %0, ptr noundef %1, i64 noundef %156, i32 noundef %152)
  br label %162

157:                                              ; preds = %143
  %158 = load ptr, ptr %1, align 8
  %159 = getelementptr inbounds %struct.kiocb, ptr %158, i32 0, i32 4
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, -2
  store i32 %161, ptr %159, align 8
  br label %162

162:                                              ; preds = %157, %154, %145, %143, %122
  %163 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 5
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 1073741824
  %166 = icmp eq i32 %165, 0
  %167 = load i16, ptr %71, align 2
  %168 = and i16 %167, 32
  br i1 %166, label %169, label %175

169:                                              ; preds = %162
  %170 = icmp ne i16 %168, 0
  %171 = load i1, ptr @iomap_dio_bio_opflags.__already_done, align 1
  %172 = xor i1 %171, true
  %173 = select i1 %170, i1 %172, i1 false
  br i1 %173, label %174, label %182, !prof !20

174:                                              ; preds = %169
  store i1 true, ptr @iomap_dio_bio_opflags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef 9, ptr noundef null) #9
  br label %182

175:                                              ; preds = %162
  %176 = icmp eq i16 %168, 0
  %177 = select i1 %176, i32 34817, i32 34829
  br i1 %106, label %178, label %180

178:                                              ; preds = %175
  %179 = or i32 %177, 131072
  br label %182

180:                                              ; preds = %175
  %181 = and i32 %164, -268435457
  store i32 %181, ptr %163, align 4
  br label %182

182:                                              ; preds = %180, %178, %174, %169
  %183 = phi i32 [ 0, %174 ], [ 0, %169 ], [ %179, %178 ], [ %177, %180 ]
  %184 = load ptr, ptr %28, align 4
  %185 = load i8, ptr %184, align 8
  %186 = icmp eq i8 %185, 2
  br i1 %186, label %189, label %187

187:                                              ; preds = %182
  %188 = tail call i32 @iov_iter_npages(ptr noundef %184, i32 noundef 256) #9
  br label %189

189:                                              ; preds = %187, %182
  %190 = phi i32 [ %188, %187 ], [ 0, %182 ]
  %191 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 6
  %192 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 3
  %193 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 4
  %194 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  %195 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 1
  br label %196

196:                                              ; preds = %288, %189
  %197 = phi i64 [ %51, %189 ], [ %289, %288 ]
  %198 = phi i32 [ %190, %189 ], [ %260, %288 ]
  %199 = phi i32 [ 0, %189 ], [ %247, %288 ]
  %200 = load i32, ptr %191, align 8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %285

202:                                              ; preds = %196
  %203 = trunc i32 %198 to i16
  %204 = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %203, ptr noundef nonnull @fs_bio_set) #9
  %205 = load ptr, ptr %5, align 4
  %206 = getelementptr inbounds %struct.bio, ptr %204, i32 0, i32 3
  %207 = load i16, ptr %206, align 4
  %208 = and i16 %207, -2049
  store i16 %208, ptr %206, align 4
  %209 = getelementptr inbounds %struct.bio, ptr %204, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, %205
  br i1 %211, label %214, label %212

212:                                              ; preds = %202
  %213 = and i16 %207, -2177
  store i16 %213, ptr %206, align 4
  br label %214

214:                                              ; preds = %212, %202
  store ptr %205, ptr %209, align 4
  %215 = load i64, ptr %3, align 8
  %216 = add i64 %215, %197
  %217 = load i64, ptr %31, align 8
  %218 = sub i64 %216, %217
  %219 = lshr i64 %218, 9
  %220 = getelementptr inbounds %struct.bio, ptr %204, i32 0, i32 8
  store i64 %219, ptr %220, align 4
  %221 = load ptr, ptr %1, align 8
  %222 = getelementptr inbounds %struct.kiocb, ptr %221, i32 0, i32 5
  %223 = load i16, ptr %222, align 4
  %224 = getelementptr inbounds %struct.bio, ptr %204, i32 0, i32 5
  store i16 %223, ptr %224, align 4
  %225 = load ptr, ptr %1, align 8
  %226 = getelementptr inbounds %struct.kiocb, ptr %225, i32 0, i32 6
  %227 = load i16, ptr %226, align 2
  %228 = getelementptr inbounds %struct.bio, ptr %204, i32 0, i32 4
  store i16 %227, ptr %228, align 2
  %229 = getelementptr inbounds %struct.bio, ptr %204, i32 0, i32 11
  store ptr %1, ptr %229, align 4
  %230 = getelementptr inbounds %struct.bio, ptr %204, i32 0, i32 10
  store ptr @iomap_dio_bio_end_io, ptr %230, align 4
  %231 = getelementptr inbounds %struct.bio, ptr %204, i32 0, i32 2
  store i32 %183, ptr %231, align 4
  %232 = load ptr, ptr %28, align 4
  %233 = tail call i32 @bio_iov_iter_get_pages(ptr noundef %204, ptr noundef %232) #9
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %236, label %235, !prof !8

235:                                              ; preds = %214
  tail call void @bio_put(ptr noundef %204) #9
  br label %291

236:                                              ; preds = %214
  %237 = getelementptr inbounds %struct.bio, ptr %204, i32 0, i32 8, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = load i32, ptr %163, align 4
  %240 = and i32 %239, -1073741824
  %241 = icmp eq i32 %240, -2147483648
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  tail call void @bio_set_pages_dirty(ptr noundef %204) #9
  br label %243

243:                                              ; preds = %242, %236
  %244 = zext i32 %238 to i64
  %245 = load i64, ptr %192, align 8
  %246 = add i64 %245, %244
  store i64 %246, ptr %192, align 8
  %247 = add i32 %238, %199
  %248 = load ptr, ptr %28, align 4
  %249 = load i8, ptr %248, align 8
  %250 = icmp eq i8 %249, 2
  br i1 %250, label %259, label %251

251:                                              ; preds = %243
  %252 = tail call i32 @iov_iter_npages(ptr noundef %248, i32 noundef 256) #9
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %1, align 8
  %256 = getelementptr inbounds %struct.kiocb, ptr %255, i32 0, i32 4
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, -2
  store i32 %258, ptr %256, align 8
  br label %259

259:                                              ; preds = %254, %251, %243
  %260 = phi i32 [ %252, %254 ], [ 0, %251 ], [ 0, %243 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %193) #9, !srcloc !10
  %261 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %193, ptr %193, i32 1, ptr elementtype(i32) %193) #9, !srcloc !19
  %262 = load ptr, ptr %1, align 8
  %263 = getelementptr inbounds %struct.kiocb, ptr %262, i32 0, i32 4
  %264 = load i32, ptr %263, align 8
  %265 = and i32 %264, 1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %259
  %268 = load i32, ptr %231, align 4
  %269 = or i32 %268, 16777216
  store i32 %269, ptr %231, align 4
  %270 = getelementptr inbounds %struct.kiocb, ptr %262, i32 0, i32 2
  %271 = load ptr, ptr %270, align 8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %275, label %273

273:                                              ; preds = %267
  %274 = or i32 %268, 18874368
  store i32 %274, ptr %231, align 4
  br label %275

275:                                              ; preds = %273, %267
  store ptr %204, ptr %194, align 4
  br label %276

276:                                              ; preds = %275, %259
  %277 = load ptr, ptr %195, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %284, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.iomap_dio_ops, ptr %277, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %284, label %283

283:                                              ; preds = %279
  tail call void %281(ptr noundef %0, ptr noundef %204, i64 noundef %197) #9
  br label %288

284:                                              ; preds = %279, %276
  tail call void @submit_bio(ptr noundef %204) #9
  br label %288

285:                                              ; preds = %196
  %286 = load ptr, ptr %28, align 4
  tail call void @iov_iter_revert(ptr noundef %286, i32 noundef %199) #9
  %287 = load ptr, ptr %28, align 4
  br label %323

288:                                              ; preds = %284, %283
  %289 = add i64 %197, %244
  %290 = icmp eq i32 %260, 0
  br i1 %290, label %291, label %196

291:                                              ; preds = %288, %235
  %292 = phi i32 [ %199, %235 ], [ %247, %288 ]
  %293 = phi i64 [ %197, %235 ], [ %289, %288 ]
  br i1 %105, label %316, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %163, align 4
  %296 = and i32 %295, 1073741824
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %326, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 22
  %300 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  br label %301

301:                                              ; preds = %309, %298
  %302 = load volatile i32, ptr %299, align 4
  %303 = and i32 %302, 1
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %305, %301
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !15
  %306 = load volatile i32, ptr %299, align 4
  %307 = and i32 %306, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %305

309:                                              ; preds = %305, %301
  %310 = phi i32 [ %302, %301 ], [ %306, %305 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %311 = load i64, ptr %300, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %312 = load volatile i32, ptr %299, align 4
  %313 = icmp eq i32 %312, %310
  br i1 %313, label %314, label %301

314:                                              ; preds = %309
  %315 = icmp slt i64 %293, %311
  br i1 %315, label %326, label %316

316:                                              ; preds = %314, %291
  %317 = add i32 %27, -1
  %318 = trunc i64 %293 to i32
  %319 = and i32 %317, %318
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %326, label %321

321:                                              ; preds = %316
  %322 = sub i32 %27, %319
  tail call fastcc void @iomap_dio_zero(ptr noundef %0, ptr noundef %1, i64 noundef %293, i32 noundef %322)
  br label %326

323:                                              ; preds = %285, %117
  %324 = phi ptr [ %287, %285 ], [ %119, %117 ]
  %325 = getelementptr inbounds %struct.iov_iter, ptr %324, i32 0, i32 4
  store i32 %109, ptr %325, align 8
  br label %333

326:                                              ; preds = %321, %316, %314, %294
  %327 = load ptr, ptr %28, align 4
  %328 = sub i32 %109, %292
  %329 = getelementptr inbounds %struct.iov_iter, ptr %327, i32 0, i32 4
  store i32 %328, ptr %329, align 8
  %330 = icmp eq i32 %292, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %326
  %332 = zext i32 %292 to i64
  br label %336

333:                                              ; preds = %326, %323
  %334 = phi i32 [ 0, %323 ], [ %233, %326 ]
  %335 = sext i32 %334 to i64
  br label %336

336:                                              ; preds = %333, %331, %46
  %337 = phi i64 [ %332, %331 ], [ %335, %333 ], [ -22, %46 ]
  ret i64 %337
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iomap_dio_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @empty_zero_page, align 4
  %6 = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #9
  %7 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 3
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, -2049
  store i16 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = and i16 %11, -2177
  store i16 %17, ptr %10, align 4
  br label %18

18:                                               ; preds = %16, %4
  store ptr %9, ptr %13, align 4
  %19 = load i64, ptr %7, align 8
  %20 = add i64 %19, %2
  %21 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = sub i64 %20, %22
  %24 = lshr i64 %23, 9
  %25 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8
  store i64 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 11
  store ptr %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 10
  store ptr @iomap_dio_bio_end_io, ptr %27, align 4
  %28 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !8

32:                                               ; preds = %18
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %18
  %35 = ptrtoint ptr %5 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #9, !srcloc !10
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #9, !srcloc !19
  tail call void @__bio_add_page(ptr noundef %6, ptr noundef %5, i32 noundef %3, i32 noundef 0) #9
  %41 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 2
  store i32 34817, ptr %41, align 4
  %42 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #9, !srcloc !10
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #9, !srcloc !19
  %44 = load ptr, ptr %1, align 8
  %45 = getelementptr inbounds %struct.kiocb, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %36
  %50 = load i32, ptr %41, align 4
  %51 = or i32 %50, 16777216
  store i32 %51, ptr %41, align 4
  %52 = getelementptr inbounds %struct.kiocb, ptr %44, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = or i32 %50, 18874368
  store i32 %56, ptr %41, align 4
  br label %57

57:                                               ; preds = %55, %49
  %58 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  store ptr %6, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %36
  %60 = getelementptr inbounds %struct.iomap_dio, ptr %1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.iomap_dio_ops, ptr %61, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void %65(ptr noundef %0, ptr noundef %6, i64 noundef %2) #9
  br label %69

68:                                               ; preds = %63, %59
  tail call void @submit_bio(ptr noundef %6) #9
  br label %69

69:                                               ; preds = %68, %67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iomap_dio_bio_end_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.iomap_dio, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %8) #9
  %12 = getelementptr inbounds %struct.iomap_dio, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !10
  br label %13

13:                                               ; preds = %13, %10
  %14 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %12, i32 0, i32 %11) #9, !srcloc !26
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !27
  br label %18

18:                                               ; preds = %17, %1
  %19 = getelementptr inbounds %struct.iomap_dio, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #9, !srcloc !10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #9, !srcloc !11
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.iomap_dio, ptr %3, i32 0, i32 8
  %25 = load i8, ptr %24, align 8, !range !18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.iomap_dio, ptr %3, i32 0, i32 9, i32 0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  store volatile ptr null, ptr %28, align 4
  %30 = tail call ptr @llvm.thread.pointer() #9
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  store volatile i32 0, ptr %33, align 8
  br label %61

34:                                               ; preds = %27
  %35 = tail call i32 @wake_up_process(ptr noundef %29) #9
  br label %61

36:                                               ; preds = %23
  %37 = load i32, ptr %4, align 4
  %38 = and i32 %37, 1073741824
  %39 = icmp eq i32 %38, 0
  %40 = load ptr, ptr %3, align 8
  br i1 %39, label %55, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %40, align 8
  %43 = getelementptr inbounds %struct.file, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.kiocb, ptr %40, i32 0, i32 3
  store volatile ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.iomap_dio, ptr %3, i32 0, i32 9
  store i32 -32, ptr %46, align 4
  %47 = getelementptr inbounds %struct.iomap_dio, ptr %3, i32 0, i32 9, i32 0, i32 0, i32 1
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.iomap_dio, ptr %3, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.iomap_dio, ptr %3, i32 0, i32 9, i32 0, i32 0, i32 2
  store ptr @iomap_dio_complete_work, ptr %49, align 4
  %50 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 45
  %53 = load ptr, ptr %52, align 4
  %54 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %53, ptr noundef %46) #9
  br label %61

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.kiocb, ptr %40, i32 0, i32 3
  store volatile ptr null, ptr %56, align 4
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.kiocb, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call i32 @iomap_dio_complete(ptr noundef %3) #9
  tail call void %59(ptr noundef %57, i32 noundef %60) #9
  br label %61

61:                                               ; preds = %55, %41, %34, %32, %18
  br i1 %6, label %63, label %62

62:                                               ; preds = %61
  tail call void @bio_check_pages_dirty(ptr noundef %0) #9
  br label %70

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %65 = load i16, ptr %64, align 4
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  tail call void @__bio_release_pages(ptr noundef %0, i1 noundef zeroext false) #9
  br label %69

69:                                               ; preds = %68, %63
  tail call void @bio_put(ptr noundef %0) #9
  br label %70

70:                                               ; preds = %69, %62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_iov_iter_get_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_set_pages_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iomap_dio_complete_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -44
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.kiocb, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @iomap_dio_complete(ptr noundef %2)
  tail call void %5(ptr noundef %3, i32 noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_check_pages_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_release_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148160954}
!10 = !{i64 558889, i64 2148048860, i64 2148048886, i64 2148048933, i64 2148048955, i64 2148048983, i64 2148049003}
!11 = !{i64 2148063316, i64 2148063348, i64 2148063377, i64 2148063411, i64 2148063442, i64 2148063465}
!12 = !{i64 2148161157}
!13 = !{!"auto-init"}
!14 = !{i64 2151525767}
!15 = !{i64 2151525609}
!16 = !{i64 2151525911}
!17 = !{i64 2149398990}
!18 = !{i8 0, i8 2}
!19 = !{i64 2148060275, i64 2148060301, i64 2148060330, i64 2148060364, i64 2148060395, i64 2148060418}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2151527549}
!22 = !{i64 2149399289}
!23 = !{i64 2149399590}
!24 = !{i64 2151539168}
!25 = !{i64 2153374750}
!26 = !{i64 570263, i64 570284, i64 570307, i64 570326, i64 570345}
!27 = !{i64 2153375127}
!28 = !{i64 2153395039}
!29 = !{i64 2153297377}
!30 = !{i64 2153297569}
