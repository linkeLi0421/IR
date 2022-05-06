; ModuleID = '/llk/IR/fs/jbd2/commit.c_pt.bc'
source_filename = "../fs/jbd2/commit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_submit_inode_data:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_submit_inode_data\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_submit_inode_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_wait_inode_data:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_wait_inode_data\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_wait_inode_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.jbd2_inode = type { ptr, ptr, %struct.list_head, ptr, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.72 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.journal_superblock_s = type { %struct.journal_header_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i8, [3 x i8], i32, [41 x i32], i32, [768 x i8] }
%struct.journal_header_s = type { i32, i32, i32 }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.journal_head = type { ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.journal_block_tag_s = type { i32, i16, i16, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.45, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16 }
%struct.llist_node = type { ptr }
%union.anon.16 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.45 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.journal_block_tag3_s = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.0, %union.anon.64, %struct.atomic_t }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.commit_header = type { i32, i32, i32, i8, i8, [2 x i8], [8 x i32], i64, i32 }

@__kstrtab_jbd2_submit_inode_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_submit_inode_data = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_submit_inode_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_submit_inode_data to i32), ptr @__kstrtab_jbd2_submit_inode_data, ptr @__kstrtabns_jbd2_submit_inode_data }, section "___ksymtab+jbd2_submit_inode_data", align 4
@__kstrtab_jbd2_wait_inode_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_wait_inode_data = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_wait_inode_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_wait_inode_data to i32), ptr @__kstrtab_jbd2_wait_inode_data, ptr @__kstrtabns_jbd2_wait_inode_data }, section "___ksymtab+jbd2_wait_inode_data", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [17 x i8] c"fs/jbd2/commit.c\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\014JBD2: Detected IO errors while flushing file data on %s\0A\00", align 1
@jbd2_journal_commit_transaction.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_jbd2_submit_inode_data = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@jbd2_journal_has_csum_v2or3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/jbd2.h\00", align 1
@__tracepoint_jbd2_start_commit = external dso_local global %struct.tracepoint, align 4
@__tracepoint_jbd2_commit_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_jbd2_commit_flushing = external dso_local global %struct.tracepoint, align 4
@__tracepoint_jbd2_commit_logging = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@blockdev_superblock = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_jbd2_run_stats = external dso_local global %struct.tracepoint, align 4
@__tracepoint_jbd2_end_commit = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_jbd2_submit_inode_data, ptr @__ksymtab_jbd2_wait_inode_data], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_submit_inode_data_buffers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.writeback_control, align 8
  %3 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  %7 = getelementptr inbounds i8, ptr %2, i32 24
  store i64 0, ptr %7, align 8, !annotation !8
  %8 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 1
  store i32 %10, ptr %2, align 8
  %11 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 2
  %13 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 3
  %16 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 6
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 4
  store i32 1, ptr %18, align 8
  %19 = call i32 @generic_writepages(ptr noundef %6, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_submit_inode_data(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.writeback_control, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %44, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_submit_inode_data, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = tail call ptr @llvm.thread.pointer() #9
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %26 = tail call i32 @__traceiter_jbd2_submit_inode_data(ptr noundef null, ptr noundef %11) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %27 = load ptr, ptr %10, align 8
  br label %28

28:                                               ; preds = %25, %14, %9
  %29 = phi ptr [ %11, %9 ], [ %11, %14 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  %32 = getelementptr inbounds i8, ptr %2, i32 24
  store i64 1, ptr %32, align 8, !annotation !8
  %33 = getelementptr inbounds %struct.address_space, ptr %31, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 1
  store i32 %35, ptr %2, align 8
  %36 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 2
  %38 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 5
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 3
  %41 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 6
  %42 = load i64, ptr %41, align 8
  store i64 %42, ptr %40, align 8
  %43 = call i32 @generic_writepages(ptr noundef %31, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  br label %44

44:                                               ; preds = %28, %4, %1
  %45 = phi i32 [ %43, %28 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_wait_inode_data(ptr nocapture readnone %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = tail call i32 @filemap_fdatawait_range_keep_errors(ptr noundef nonnull %15, i64 noundef %19, i64 noundef %21) #9
  br label %23

23:                                               ; preds = %17, %13, %9, %4, %2
  %24 = phi i32 [ %22, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range_keep_errors(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_finish_inode_data_buffers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 5
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.jbd2_inode, ptr %0, i32 0, i32 6
  %9 = load i64, ptr %8, align 8
  %10 = tail call i32 @filemap_fdatawait_range_keep_errors(ptr noundef %5, i64 noundef %7, i64 noundef %9) #9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_commit_transaction(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.72, align 8
  %3 = alloca %struct.anon.72, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.transaction_stats_s, align 4
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 4
  %8 = alloca %struct.blk_plug, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head, align 8
  %12 = alloca %struct.list_head, align 8
  %13 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !8
  %14 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 54
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !8
  %16 = tail call i32 @journal_tag_bytes(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr null, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  store ptr %11, ptr %11, align 8
  %17 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %11, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  store ptr %12, ptr %12, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %12, ptr %18, align 4
  %19 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.journal_superblock_s, ptr %24, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 402653184
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  %33 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !11

36:                                               ; preds = %29
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1735, i32 noundef 9, ptr noundef null) #9
  br label %37

37:                                               ; preds = %36, %29, %22, %1
  %38 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, i32 0, i32 4
  %42 = load i32, ptr %0, align 8
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 19
  call void @mutex_lock_io(ptr noundef %46) #9
  %47 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 41
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 25
  %50 = load i32, ptr %49, align 8
  %51 = call i32 @jbd2_journal_update_sb_log_tail(ptr noundef %0, i32 noundef %48, i32 noundef %50, i32 noundef 2048) #9
  call void @mutex_unlock(ptr noundef %46) #9
  br label %52

52:                                               ; preds = %45, %37
  %53 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 10
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57, !prof !11

56:                                               ; preds = %52
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 439, 0\0A.popsection", ""() #9, !srcloc !12
  unreachable

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61, !prof !13

61:                                               ; preds = %57
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 7
  call void @_raw_write_lock(ptr noundef %63) #9
  %64 = load i32, ptr %0, align 8
  %65 = or i32 %64, 512
  store i32 %65, ptr %0, align 8
  %66 = and i32 %64, 256
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.wait_queue_entry, ptr %13, i32 0, i32 1
  %70 = tail call ptr @llvm.thread.pointer() #9
  %71 = getelementptr inbounds %struct.wait_queue_entry, ptr %13, i32 0, i32 2
  %72 = getelementptr inbounds %struct.wait_queue_entry, ptr %13, i32 0, i32 3
  %73 = getelementptr inbounds %struct.wait_queue_entry, ptr %13, i32 0, i32 3, i32 1
  %74 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 18
  br label %75

75:                                               ; preds = %75, %68
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #9
  store i32 0, ptr %13, align 4
  store ptr %70, ptr %69, align 4
  store ptr @autoremove_wake_function, ptr %71, align 4
  store ptr %72, ptr %72, align 4
  store ptr %72, ptr %73, align 4
  call void @prepare_to_wait(ptr noundef %74, ptr noundef nonnull %13, i32 noundef 2) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  call void @schedule() #9
  call void @_raw_write_lock(ptr noundef %63) #9
  call void @finish_wait(ptr noundef %74, ptr noundef nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #9
  %76 = load i32, ptr %0, align 8
  %77 = and i32 %76, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %75

79:                                               ; preds = %75, %62
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %80 = load ptr, ptr %53, align 8
  %81 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_start_commit, i32 0, i32 1), align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = tail call ptr @llvm.thread.pointer() #9
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = lshr i32 %86, 5
  %88 = getelementptr i32, ptr @__cpu_online_mask, i32 %87
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %86, 31
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, %89
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %83
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %95 = call i32 @__traceiter_jbd2_start_commit(ptr noundef null, ptr noundef %0, ptr noundef %80) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  br label %96

96:                                               ; preds = %94, %83, %79
  call void @_raw_write_lock(ptr noundef %63) #9
  %97 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 30
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101, !prof !13

101:                                              ; preds = %96
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 473, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

102:                                              ; preds = %96
  store i32 1, ptr %98, align 8
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_locking, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = tail call ptr @llvm.thread.pointer() #9
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %117 = call i32 @__traceiter_jbd2_commit_locking(ptr noundef null, ptr noundef %0, ptr noundef %80) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  br label %118

118:                                              ; preds = %116, %105, %102
  %119 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 13
  %120 = load i32, ptr %119, align 8
  %121 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 2
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 2, i32 1
  store i32 0, ptr %122, align 4
  %123 = load volatile i32, ptr @jiffies, align 64
  %124 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 2, i32 3
  store i32 %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 15
  %126 = load i32, ptr %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %118
  %129 = icmp ult i32 %123, %126
  %130 = select i1 %129, i32 1073741822, i32 0
  %131 = sub i32 %123, %126
  %132 = add i32 %131, %130
  store i32 %132, ptr %122, align 4
  br label %133

133:                                              ; preds = %128, %118
  %134 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 14
  %135 = load i32, ptr %134, align 4
  %136 = icmp ult i32 %123, %135
  %137 = select i1 %136, i32 1073741822, i32 0
  %138 = sub i32 %123, %135
  %139 = add i32 %138, %137
  %140 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 2, i32 2
  store i32 %139, ptr %140, align 4
  call void @jbd2_journal_wait_updates(ptr noundef %0) #9
  store i32 2, ptr %98, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %141 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 18
  %142 = load volatile i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 47
  %144 = load i32, ptr %143, align 8
  %145 = icmp sgt i32 %142, %144
  br i1 %145, label %150, label %146, !prof !11

146:                                              ; preds = %133
  %147 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 5
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %167, label %151

150:                                              ; preds = %133
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #9, !srcloc !25
  unreachable

151:                                              ; preds = %164, %146
  %152 = phi ptr [ %165, %164 ], [ %148, %146 ]
  %153 = getelementptr inbounds %struct.journal_head, ptr %152, i32 0, i32 6
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %164, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %152, align 4
  %158 = getelementptr inbounds %struct.journal_head, ptr %152, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %158) #9
  %159 = load ptr, ptr %153, align 4
  %160 = getelementptr inbounds %struct.buffer_head, ptr %157, i32 0, i32 4
  %161 = load i32, ptr %160, align 8
  call void @jbd2_free(ptr noundef %159, i32 noundef %161) #9
  store ptr null, ptr %153, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %162 = load i16, ptr %158, align 4
  %163 = add i16 %162, 1
  store i16 %163, ptr %158, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %164

164:                                              ; preds = %156, %151
  call void @jbd2_journal_refile_buffer(ptr noundef %0, ptr noundef nonnull %152) #9
  %165 = load ptr, ptr %147, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %151

167:                                              ; preds = %164, %146
  %168 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  call void @_raw_spin_lock(ptr noundef %168) #9
  call void @__jbd2_journal_clean_checkpoint_list(ptr noundef %0, i1 noundef zeroext false) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %169 = load i16, ptr %168, align 4
  %170 = add i16 %169, 1
  store i16 %170, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  call void @jbd2_clear_buffer_revoked_flags(ptr noundef %0) #9
  call void @jbd2_journal_switch_revoke_table(ptr noundef %0) #9
  %171 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 38
  %172 = load volatile i32, ptr %171, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #9, !srcloc !28
  %173 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 %172, ptr elementtype(i32) %141) #9, !srcloc !29
  call void @_raw_write_lock(ptr noundef %63) #9
  %174 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_flushing, i32 0, i32 1), align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %167
  %177 = tail call ptr @llvm.thread.pointer() #9
  %178 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = lshr i32 %179, 5
  %181 = getelementptr i32, ptr @__cpu_online_mask, i32 %180
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %179, 31
  %184 = shl nuw i32 1, %183
  %185 = and i32 %184, %182
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %176
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %188 = call i32 @__traceiter_jbd2_commit_flushing(ptr noundef null, ptr noundef %0, ptr noundef %80) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  br label %189

189:                                              ; preds = %187, %176, %167
  %190 = load volatile i32, ptr @jiffies, align 64
  %191 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 2, i32 4
  store i32 %190, ptr %191, align 4
  %192 = load i32, ptr %124, align 4
  %193 = icmp ult i32 %190, %192
  %194 = select i1 %193, i32 1073741822, i32 0
  %195 = sub i32 %190, %192
  %196 = add i32 %195, %194
  store i32 %196, ptr %124, align 4
  store i32 3, ptr %98, align 8
  store ptr %80, ptr %58, align 4
  store ptr null, ptr %53, align 8
  %197 = call i64 @ktime_get() #9
  %198 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 24
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 3
  store i32 %199, ptr %200, align 4
  %201 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 13
  call void @__wake_up(ptr noundef %201, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  call void @_raw_spin_lock(ptr noundef %168) #9
  %202 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 11
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, %202
  br i1 %204, label %255, label %205

205:                                              ; preds = %189
  %206 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 63
  br label %207

207:                                              ; preds = %251, %205
  %208 = phi ptr [ %203, %205 ], [ %253, %251 ]
  %209 = phi i32 [ 0, %205 ], [ %252, %251 ]
  %210 = getelementptr i8, ptr %208, i32 -8
  %211 = getelementptr i8, ptr %208, i32 12
  %212 = load i32, ptr %211, align 4
  %213 = and i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %251, label %215

215:                                              ; preds = %207
  %216 = or i32 %212, 1
  store i32 %216, ptr %211, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %217 = load i16, ptr %168, align 4
  %218 = add i16 %217, 1
  store i16 %218, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %219 = getelementptr i8, ptr %208, i32 8
  %220 = load ptr, ptr %219, align 8
  %221 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_submit_inode_data, i32 0, i32 1), align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %215
  %224 = tail call ptr @llvm.thread.pointer() #9
  %225 = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 2
  %226 = load i32, ptr %225, align 8
  %227 = lshr i32 %226, 5
  %228 = getelementptr i32, ptr @__cpu_online_mask, i32 %227
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %226, 31
  %231 = shl nuw i32 1, %230
  %232 = and i32 %231, %229
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %223
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %235 = call i32 @__traceiter_jbd2_submit_inode_data(ptr noundef null, ptr noundef %220) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %236

236:                                              ; preds = %234, %223, %215
  %237 = load ptr, ptr %206, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  %240 = call i32 %237(ptr noundef %210) #9
  %241 = icmp eq i32 %209, 0
  %242 = select i1 %241, i32 %240, i32 %209
  br label %243

243:                                              ; preds = %239, %236
  %244 = phi i32 [ %209, %236 ], [ %242, %239 ]
  call void @_raw_spin_lock(ptr noundef %168) #9
  %245 = load ptr, ptr %210, align 8
  %246 = icmp eq ptr %245, %80
  br i1 %246, label %248, label %247, !prof !13

247:                                              ; preds = %243
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #9, !srcloc !32
  unreachable

248:                                              ; preds = %243
  %249 = load i32, ptr %211, align 4
  %250 = and i32 %249, -2
  store i32 %250, ptr %211, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  call void @wake_up_bit(ptr noundef %211, i32 noundef 0) #9
  br label %251

251:                                              ; preds = %248, %207
  %252 = phi i32 [ %244, %248 ], [ %209, %207 ]
  %253 = load ptr, ptr %208, align 4
  %254 = icmp eq ptr %253, %202
  br i1 %254, label %255, label %207

255:                                              ; preds = %251, %189
  %256 = phi i32 [ 0, %189 ], [ %252, %251 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %257 = load i16, ptr %168, align 4
  %258 = add i16 %257, 1
  store i16 %258, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %259 = icmp eq i32 %256, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %255
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %256) #9
  br label %261

261:                                              ; preds = %260, %255
  call void @blk_start_plug(ptr noundef nonnull %8) #9
  call void @jbd2_journal_write_revoke_records(ptr noundef %80, ptr noundef nonnull %12) #9
  call void @_raw_write_lock(ptr noundef %63) #9
  store i32 4, ptr %98, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %262 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_commit_logging, i32 0, i32 1), align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %277

264:                                              ; preds = %261
  %265 = tail call ptr @llvm.thread.pointer() #9
  %266 = getelementptr inbounds %struct.thread_info, ptr %265, i32 0, i32 2
  %267 = load i32, ptr %266, align 8
  %268 = lshr i32 %267, 5
  %269 = getelementptr i32, ptr @__cpu_online_mask, i32 %268
  %270 = load volatile i32, ptr %269, align 4
  %271 = and i32 %267, 31
  %272 = shl nuw i32 1, %271
  %273 = and i32 %272, %270
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %264
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %276 = call i32 @__traceiter_jbd2_commit_logging(ptr noundef null, ptr noundef %0, ptr noundef %80) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !35
  br label %277

277:                                              ; preds = %275, %264, %261
  %278 = load volatile i32, ptr @jiffies, align 64
  %279 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 2, i32 5
  store i32 %278, ptr %279, align 4
  %280 = load i32, ptr %191, align 4
  %281 = icmp ult i32 %278, %280
  %282 = select i1 %281, i32 1073741822, i32 0
  %283 = sub i32 %278, %280
  %284 = add i32 %283, %282
  store i32 %284, ptr %191, align 4
  %285 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 4
  %286 = load i32, ptr %285, align 8
  %287 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 2, i32 7
  store i32 %286, ptr %287, align 4
  %288 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 2, i32 8
  store i32 0, ptr %288, align 4
  %289 = load i32, ptr %285, align 8
  %290 = load volatile i32, ptr %141, align 4
  %291 = icmp sgt i32 %289, %290
  br i1 %291, label %303, label %292, !prof !11

292:                                              ; preds = %277
  %293 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 6
  %294 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %295 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 1
  %296 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 71
  %297 = getelementptr inbounds %struct.anon.72, ptr %3, i32 0, i32 1
  %298 = getelementptr inbounds %struct.anon.72, ptr %2, i32 0, i32 1
  %299 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 45
  %300 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 56
  %301 = add i32 %16, 16
  %302 = add i32 %301, %41
  br label %582

303:                                              ; preds = %277
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #9, !srcloc !36
  unreachable

304:                                              ; preds = %331, %311
  %305 = phi ptr [ %334, %331 ], [ %320, %311 ]
  %306 = icmp eq ptr %305, null
  br i1 %306, label %593, label %307

307:                                              ; preds = %304
  %308 = load i32, ptr %0, align 8
  %309 = and i32 %308, 2
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %307
  %312 = load ptr, ptr %305, align 4
  call void @_clear_bit(i32 noundef 21, ptr noundef %312) #9
  %313 = getelementptr inbounds %struct.journal_head, ptr %305, i32 0, i32 5
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  %316 = getelementptr inbounds %struct.journal_head, ptr %305, i32 0, i32 15
  %317 = getelementptr inbounds %struct.journal_head, ptr %305, i32 0, i32 14
  %318 = select i1 %315, ptr %317, ptr %316
  %319 = load ptr, ptr %318, align 4
  call void @jbd2_buffer_abort_trigger(ptr noundef nonnull %305, ptr noundef %319) #9
  call void @jbd2_journal_refile_buffer(ptr noundef %0, ptr noundef nonnull %305) #9
  %320 = load ptr, ptr %293, align 8
  %321 = icmp eq ptr %320, null
  br i1 %321, label %511, label %304

322:                                              ; preds = %307
  %323 = icmp eq ptr %333, null
  br i1 %323, label %324, label %355

324:                                              ; preds = %322
  %325 = icmp eq i32 %332, 0
  br i1 %325, label %327, label %326, !prof !13

326:                                              ; preds = %324
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 639, 0\0A.popsection", ""() #9, !srcloc !37
  unreachable

327:                                              ; preds = %324
  %328 = call ptr @jbd2_journal_get_descriptor_buffer(ptr noundef %80, i32 noundef 1) #9
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %335

330:                                              ; preds = %327
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef -5) #9
  br label %331

331:                                              ; preds = %365, %330
  %332 = phi i32 [ %369, %365 ], [ 0, %330 ]
  %333 = phi ptr [ %370, %365 ], [ null, %330 ]
  %334 = load ptr, ptr %293, align 8
  br label %304

335:                                              ; preds = %327
  %336 = getelementptr inbounds %struct.buffer_head, ptr %328, i32 0, i32 5
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr i8, ptr %337, i32 12
  %339 = getelementptr inbounds %struct.buffer_head, ptr %328, i32 0, i32 4
  %340 = load i32, ptr %339, align 8
  %341 = add i32 %340, -12
  %342 = load volatile i32, ptr %328, align 4
  %343 = and i32 %342, 131072
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %335
  call void @_set_bit(i32 noundef 17, ptr noundef nonnull %328) #9
  br label %346

346:                                              ; preds = %345, %335
  %347 = load volatile i32, ptr %328, align 4
  %348 = and i32 %347, 2
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %346
  call void @_set_bit(i32 noundef 1, ptr noundef nonnull %328) #9
  br label %351

351:                                              ; preds = %350, %346
  store ptr %328, ptr %15, align 4
  %352 = getelementptr inbounds %struct.buffer_head, ptr %328, i32 0, i32 9
  %353 = load ptr, ptr %18, align 4
  store ptr %352, ptr %18, align 4
  store ptr %12, ptr %352, align 4
  %354 = getelementptr inbounds %struct.buffer_head, ptr %328, i32 0, i32 9, i32 1
  store ptr %353, ptr %354, align 4
  store volatile ptr %352, ptr %353, align 4
  br label %355

355:                                              ; preds = %351, %322
  %356 = phi i32 [ 1, %351 ], [ %366, %322 ]
  %357 = phi i32 [ %341, %351 ], [ %367, %322 ]
  %358 = phi ptr [ %338, %351 ], [ %368, %322 ]
  %359 = phi i32 [ 1, %351 ], [ %332, %322 ]
  %360 = phi ptr [ %328, %351 ], [ %333, %322 ]
  %361 = call i32 @jbd2_journal_next_log_block(ptr noundef %0, ptr noundef nonnull %6) #9
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %371, label %363

363:                                              ; preds = %371, %355
  %364 = phi i32 [ %379, %371 ], [ %361, %355 ]
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %364) #9
  br label %365

365:                                              ; preds = %587, %363
  %366 = phi i32 [ %588, %587 ], [ %356, %363 ]
  %367 = phi i32 [ %589, %587 ], [ %357, %363 ]
  %368 = phi ptr [ %590, %587 ], [ %358, %363 ]
  %369 = phi i32 [ %591, %587 ], [ %359, %363 ]
  %370 = phi ptr [ %592, %587 ], [ %360, %363 ]
  br label %331

371:                                              ; preds = %355
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #9, !srcloc !28
  %372 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 1, ptr elementtype(i32) %141) #9, !srcloc !29
  %373 = load ptr, ptr %305, align 4
  %374 = getelementptr inbounds %struct.buffer_head, ptr %373, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %374) #9, !srcloc !28
  %375 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %374, ptr %374, i32 1, ptr elementtype(i32) %374) #9, !srcloc !38
  %376 = load ptr, ptr %305, align 4
  call void @_set_bit(i32 noundef 17, ptr noundef %376) #9
  %377 = getelementptr ptr, ptr %15, i32 %359
  %378 = load i64, ptr %6, align 8
  %379 = call i32 @jbd2_journal_write_metadata_buffer(ptr noundef %80, ptr noundef nonnull %305, ptr noundef %377, i64 noundef %378) #9
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %363, label %381

381:                                              ; preds = %371
  %382 = load ptr, ptr %377, align 4
  %383 = getelementptr inbounds %struct.buffer_head, ptr %382, i32 0, i32 9
  %384 = load ptr, ptr %17, align 4
  store ptr %383, ptr %17, align 4
  store ptr %11, ptr %383, align 4
  %385 = getelementptr inbounds %struct.buffer_head, ptr %382, i32 0, i32 9, i32 1
  store ptr %384, ptr %385, align 4
  store volatile ptr %383, ptr %384, align 4
  %386 = and i32 %379, 1
  %387 = icmp eq i32 %356, 0
  %388 = or i32 %386, 2
  %389 = select i1 %387, i32 %388, i32 %386
  %390 = load ptr, ptr %305, align 4
  %391 = getelementptr inbounds %struct.buffer_head, ptr %390, i32 0, i32 3
  %392 = load i64, ptr %391, align 8
  %393 = trunc i64 %392 to i32
  %394 = call i32 @llvm.bswap.i32(i32 %393) #9
  store i32 %394, ptr %358, align 4
  %395 = load i32, ptr %19, align 8
  %396 = icmp sgt i32 %395, 1
  br i1 %396, label %397, label %408

397:                                              ; preds = %381
  %398 = load ptr, ptr %294, align 4
  %399 = getelementptr inbounds %struct.journal_superblock_s, ptr %398, i32 0, i32 8
  %400 = load i32, ptr %399, align 4
  %401 = and i32 %400, 33554432
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %408, label %403

403:                                              ; preds = %397
  %404 = lshr i64 %392, 32
  %405 = trunc i64 %404 to i32
  %406 = call i32 @llvm.bswap.i32(i32 %405) #9
  %407 = getelementptr inbounds %struct.journal_block_tag_s, ptr %358, i32 0, i32 3
  store i32 %406, ptr %407, align 4
  br label %408

408:                                              ; preds = %403, %397, %381
  %409 = trunc i32 %389 to i16
  %410 = shl nuw nsw i16 %409, 8
  %411 = getelementptr inbounds %struct.journal_block_tag_s, ptr %358, i32 0, i32 2
  store i16 %410, ptr %411, align 2
  %412 = load ptr, ptr %377, align 4
  %413 = load i32, ptr %295, align 4
  %414 = getelementptr inbounds %struct.buffer_head, ptr %412, i32 0, i32 2
  %415 = load ptr, ptr %414, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %416 = load i32, ptr %19, align 8
  %417 = icmp sgt i32 %416, 1
  br i1 %417, label %418, label %431

418:                                              ; preds = %408
  %419 = load ptr, ptr %294, align 4
  %420 = getelementptr inbounds %struct.journal_superblock_s, ptr %419, i32 0, i32 8
  %421 = load i32, ptr %420, align 4
  %422 = and i32 %421, 402653184
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %431, label %424

424:                                              ; preds = %418
  %425 = load ptr, ptr %38, align 8
  %426 = icmp eq ptr %425, null
  %427 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %428 = xor i1 %427, true
  %429 = select i1 %426, i1 %428, i1 false
  br i1 %429, label %430, label %433, !prof !11

430:                                              ; preds = %424
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1735, i32 noundef 9, ptr noundef null) #9
  br label %431

431:                                              ; preds = %430, %418, %408
  %432 = load ptr, ptr %38, align 8
  br label %433

433:                                              ; preds = %431, %424
  %434 = phi ptr [ %432, %431 ], [ %425, %424 ]
  %435 = icmp eq ptr %434, null
  br i1 %435, label %490, label %436

436:                                              ; preds = %433
  %437 = call i32 @llvm.bswap.i32(i32 %413) #9
  store i32 %437, ptr %4, align 4
  %438 = load i32, ptr @pgprot_kernel, align 4
  %439 = or i32 %438, 512
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  %440 = tail call ptr @llvm.thread.pointer() #9
  %441 = getelementptr inbounds %struct.task_struct, ptr %440, i32 0, i32 149
  %442 = load i32, ptr %441, align 8
  %443 = add i32 %442, 1
  store i32 %443, ptr %441, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %444 = call ptr @__kmap_local_page_prot(ptr noundef %415, i32 noundef %439) #9
  %445 = load i32, ptr %296, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !8
  %446 = load ptr, ptr %38, align 8
  %447 = load i32, ptr %446, align 64
  %448 = icmp ugt i32 %447, 4
  br i1 %448, label %449, label %450, !prof !11

449:                                              ; preds = %436
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

450:                                              ; preds = %436
  store ptr %446, ptr %3, align 8
  store i32 %445, ptr %297, align 8
  %451 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 4) #9
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %454, label %453, !prof !13

453:                                              ; preds = %450
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #9, !srcloc !42
  unreachable

454:                                              ; preds = %450
  %455 = load i32, ptr %297, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  %456 = getelementptr inbounds %struct.buffer_head, ptr %412, i32 0, i32 5
  %457 = load ptr, ptr %456, align 4
  %458 = getelementptr inbounds %struct.buffer_head, ptr %412, i32 0, i32 4
  %459 = load i32, ptr %458, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #9, !annotation !8
  %460 = load ptr, ptr %38, align 8
  %461 = load i32, ptr %460, align 64
  %462 = icmp ugt i32 %461, 4
  br i1 %462, label %463, label %464, !prof !11

463:                                              ; preds = %454
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

464:                                              ; preds = %454
  %465 = ptrtoint ptr %457 to i32
  %466 = and i32 %465, 4095
  %467 = getelementptr i8, ptr %444, i32 %466
  store ptr %460, ptr %2, align 8
  store i32 %455, ptr %298, align 8
  %468 = call i32 @crypto_shash_update(ptr noundef nonnull %2, ptr noundef %467, i32 noundef %459) #9
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %471, label %470, !prof !13

470:                                              ; preds = %464
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #9, !srcloc !42
  unreachable

471:                                              ; preds = %464
  %472 = load i32, ptr %298, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  call void @kunmap_local_indexed(ptr noundef %444) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %473 = load i32, ptr %441, align 8
  %474 = add i32 %473, -1
  store i32 %474, ptr %441, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %475 = load i32, ptr %19, align 8
  %476 = icmp sgt i32 %475, 1
  br i1 %476, label %477, label %486

477:                                              ; preds = %471
  %478 = load ptr, ptr %294, align 4
  %479 = getelementptr inbounds %struct.journal_superblock_s, ptr %478, i32 0, i32 8
  %480 = load i32, ptr %479, align 4
  %481 = and i32 %480, 268435456
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %486, label %483

483:                                              ; preds = %477
  %484 = call i32 @llvm.bswap.i32(i32 %472) #9
  %485 = getelementptr inbounds %struct.journal_block_tag3_s, ptr %358, i32 0, i32 3
  store i32 %484, ptr %485, align 4
  br label %490

486:                                              ; preds = %477, %471
  %487 = trunc i32 %472 to i16
  %488 = call i16 @llvm.bswap.i16(i16 %487) #9
  %489 = getelementptr inbounds %struct.journal_block_tag_s, ptr %358, i32 0, i32 1
  store i16 %488, ptr %489, align 4
  br label %490

490:                                              ; preds = %486, %483, %433
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %491 = getelementptr i8, ptr %358, i32 %16
  %492 = sub i32 %357, %16
  %493 = add i32 %359, 1
  br i1 %387, label %497, label %494

494:                                              ; preds = %490
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %491, ptr noundef align 4 dereferenceable(16) %299, i32 16, i1 false)
  %495 = getelementptr i8, ptr %491, i32 16
  %496 = add i32 %492, -16
  br label %497

497:                                              ; preds = %494, %490
  %498 = phi i32 [ %496, %494 ], [ %492, %490 ]
  %499 = phi ptr [ %495, %494 ], [ %491, %490 ]
  %500 = load i32, ptr %300, align 8
  %501 = icmp eq i32 %493, %500
  br i1 %501, label %507, label %502

502:                                              ; preds = %497
  %503 = load ptr, ptr %293, align 8
  %504 = icmp eq ptr %503, null
  %505 = icmp slt i32 %498, %302
  %506 = select i1 %504, i1 true, i1 %505
  br i1 %506, label %507, label %587

507:                                              ; preds = %502, %497
  %508 = getelementptr inbounds %struct.journal_block_tag_s, ptr %358, i32 0, i32 2
  %509 = load i16, ptr %508, align 2
  %510 = or i16 %509, 2048
  store i16 %510, ptr %508, align 2
  br label %513

511:                                              ; preds = %311
  %512 = icmp eq ptr %333, null
  br i1 %512, label %519, label %513

513:                                              ; preds = %511, %507
  %514 = phi ptr [ %360, %507 ], [ %333, %511 ]
  %515 = phi i32 [ %493, %507 ], [ %332, %511 ]
  %516 = phi ptr [ %499, %507 ], [ %368, %511 ]
  %517 = phi i32 [ %498, %507 ], [ %367, %511 ]
  %518 = phi i32 [ 0, %507 ], [ %366, %511 ]
  call void @jbd2_descriptor_block_csum_set(ptr noundef %0, ptr noundef nonnull %514) #9
  br label %519

519:                                              ; preds = %513, %511
  %520 = phi i32 [ %515, %513 ], [ %332, %511 ]
  %521 = phi ptr [ %516, %513 ], [ %368, %511 ]
  %522 = phi i32 [ %517, %513 ], [ %367, %511 ]
  %523 = phi i32 [ %518, %513 ], [ %366, %511 ]
  %524 = icmp sgt i32 %520, 0
  br i1 %524, label %525, label %579

525:                                              ; preds = %574, %519
  %526 = phi i32 [ %577, %574 ], [ 0, %519 ]
  %527 = phi i32 [ %559, %574 ], [ %583, %519 ]
  %528 = getelementptr ptr, ptr %15, i32 %526
  %529 = load ptr, ptr %528, align 4
  %530 = load i32, ptr %19, align 8
  %531 = icmp sgt i32 %530, 1
  br i1 %531, label %532, label %558

532:                                              ; preds = %525
  %533 = load ptr, ptr %294, align 4
  %534 = getelementptr inbounds %struct.journal_superblock_s, ptr %533, i32 0, i32 7
  %535 = load i32, ptr %534, align 4
  %536 = and i32 %535, 16777216
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %558, label %538

538:                                              ; preds = %532
  %539 = getelementptr inbounds %struct.buffer_head, ptr %529, i32 0, i32 2
  %540 = load ptr, ptr %539, align 8
  %541 = load i32, ptr @pgprot_kernel, align 4
  %542 = or i32 %541, 512
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  %543 = tail call ptr @llvm.thread.pointer() #9
  %544 = getelementptr inbounds %struct.task_struct, ptr %543, i32 0, i32 149
  %545 = load i32, ptr %544, align 8
  %546 = add i32 %545, 1
  store i32 %546, ptr %544, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %547 = call ptr @__kmap_local_page_prot(ptr noundef %540, i32 noundef %542) #9
  %548 = getelementptr inbounds %struct.buffer_head, ptr %529, i32 0, i32 5
  %549 = load ptr, ptr %548, align 4
  %550 = ptrtoint ptr %549 to i32
  %551 = and i32 %550, 4095
  %552 = getelementptr i8, ptr %547, i32 %551
  %553 = getelementptr inbounds %struct.buffer_head, ptr %529, i32 0, i32 4
  %554 = load i32, ptr %553, align 8
  %555 = call i32 @crc32_be(i32 noundef %527, ptr noundef %552, i32 noundef %554) #10
  call void @kunmap_local_indexed(ptr noundef %547) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %556 = load i32, ptr %544, align 8
  %557 = add i32 %556, -1
  store i32 %557, ptr %544, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  br label %558

558:                                              ; preds = %538, %532, %525
  %559 = phi i32 [ %555, %538 ], [ %527, %532 ], [ %527, %525 ]
  %560 = load volatile i32, ptr %529, align 4
  %561 = and i32 %560, 4
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %568

563:                                              ; preds = %558
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %529) #9, !srcloc !28
  %564 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %529, ptr %529, i32 4, ptr elementtype(i32) %529) #9, !srcloc !45
  %565 = extractvalue { i32, i32, i32 } %564, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !46
  %566 = and i32 %565, 4
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %569, label %568

568:                                              ; preds = %563, %558
  call void @__lock_buffer(ptr noundef %529) #9
  br label %569

569:                                              ; preds = %568, %563
  call void @_clear_bit(i32 noundef 1, ptr noundef %529) #9
  %570 = load volatile i32, ptr %529, align 4
  %571 = and i32 %570, 1
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %574

573:                                              ; preds = %569
  call void @_set_bit(i32 noundef 0, ptr noundef %529) #9
  br label %574

574:                                              ; preds = %573, %569
  %575 = getelementptr inbounds %struct.buffer_head, ptr %529, i32 0, i32 7
  store ptr @journal_end_buffer_io_sync, ptr %575, align 4
  %576 = call i32 @submit_bh(i32 noundef 1, i32 noundef 2048, ptr noundef %529) #9
  %577 = add nuw nsw i32 %526, 1
  %578 = icmp eq i32 %577, %520
  br i1 %578, label %579, label %525

579:                                              ; preds = %574, %519
  %580 = phi i32 [ %583, %519 ], [ %559, %574 ]
  %581 = call i32 @__cond_resched() #9
  br label %582

582:                                              ; preds = %579, %292
  %583 = phi i32 [ %580, %579 ], [ -1, %292 ]
  %584 = phi i32 [ %523, %579 ], [ 0, %292 ]
  %585 = phi i32 [ %522, %579 ], [ 0, %292 ]
  %586 = phi ptr [ %521, %579 ], [ null, %292 ]
  br label %587

587:                                              ; preds = %582, %502
  %588 = phi i32 [ 0, %502 ], [ %584, %582 ]
  %589 = phi i32 [ %498, %502 ], [ %585, %582 ]
  %590 = phi ptr [ %499, %502 ], [ %586, %582 ]
  %591 = phi i32 [ %493, %502 ], [ 0, %582 ]
  %592 = phi ptr [ %360, %502 ], [ null, %582 ]
  br label %365

593:                                              ; preds = %304
  call void @_raw_spin_lock(ptr noundef %168) #9
  %594 = load ptr, ptr %202, align 4
  %595 = icmp eq ptr %594, %202
  br i1 %595, label %645, label %596

596:                                              ; preds = %593
  %597 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 64
  br label %598

598:                                              ; preds = %620, %596
  %599 = phi ptr [ %594, %596 ], [ %622, %620 ]
  %600 = phi i32 [ 0, %596 ], [ %621, %620 ]
  %601 = getelementptr i8, ptr %599, i32 -8
  %602 = getelementptr i8, ptr %599, i32 12
  %603 = load i32, ptr %602, align 4
  %604 = and i32 %603, 4
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %620, label %606

606:                                              ; preds = %598
  %607 = or i32 %603, 1
  store i32 %607, ptr %602, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %608 = load i16, ptr %168, align 4
  %609 = add i16 %608, 1
  store i16 %609, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %610 = load ptr, ptr %597, align 8
  %611 = icmp eq ptr %610, null
  br i1 %611, label %616, label %612

612:                                              ; preds = %606
  %613 = call i32 %610(ptr noundef %601) #9
  %614 = icmp eq i32 %600, 0
  %615 = select i1 %614, i32 %613, i32 %600
  br label %616

616:                                              ; preds = %612, %606
  %617 = phi i32 [ %600, %606 ], [ %615, %612 ]
  call void @_raw_spin_lock(ptr noundef %168) #9
  %618 = load i32, ptr %602, align 4
  %619 = and i32 %618, -2
  store i32 %619, ptr %602, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !47
  call void @wake_up_bit(ptr noundef %602, i32 noundef 0) #9
  br label %620

620:                                              ; preds = %616, %598
  %621 = phi i32 [ %617, %616 ], [ %600, %598 ]
  %622 = load ptr, ptr %599, align 4
  %623 = icmp eq ptr %622, %202
  br i1 %623, label %624, label %598

624:                                              ; preds = %620
  %625 = load ptr, ptr %202, align 4
  %626 = icmp eq ptr %625, %202
  br i1 %626, label %645, label %627

627:                                              ; preds = %643, %624
  %628 = phi ptr [ %630, %643 ], [ %625, %624 ]
  %629 = getelementptr i8, ptr %628, i32 -8
  %630 = load ptr, ptr %628, align 8
  %631 = getelementptr inbounds %struct.list_head, ptr %628, i32 0, i32 1
  %632 = load ptr, ptr %631, align 4
  %633 = getelementptr inbounds %struct.list_head, ptr %630, i32 0, i32 1
  store ptr %632, ptr %633, align 4
  store volatile ptr %630, ptr %632, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %628, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %631, align 4
  %634 = getelementptr i8, ptr %628, i32 -4
  %635 = load ptr, ptr %634, align 4
  %636 = icmp eq ptr %635, null
  br i1 %636, label %641, label %637

637:                                              ; preds = %627
  store ptr %635, ptr %629, align 8
  store ptr null, ptr %634, align 4
  %638 = getelementptr inbounds %struct.transaction_s, ptr %635, i32 0, i32 11
  %639 = load ptr, ptr %638, align 4
  %640 = getelementptr inbounds %struct.list_head, ptr %639, i32 0, i32 1
  store ptr %628, ptr %640, align 4
  store ptr %639, ptr %628, align 4
  store ptr %638, ptr %631, align 4
  store volatile ptr %628, ptr %638, align 4
  br label %643

641:                                              ; preds = %627
  store ptr null, ptr %629, align 8
  %642 = getelementptr i8, ptr %628, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %642, i8 0, i64 16, i1 false) #9
  br label %643

643:                                              ; preds = %641, %637
  %644 = icmp eq ptr %630, %202
  br i1 %644, label %645, label %627

645:                                              ; preds = %643, %624, %593
  %646 = phi i32 [ %621, %624 ], [ 0, %593 ], [ %621, %643 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %647 = load i16, ptr %168, align 4
  %648 = add i16 %647, 1
  store i16 %648, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %649 = icmp eq i32 %646, 0
  br i1 %649, label %657, label %650

650:                                              ; preds = %645
  %651 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 35
  %652 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %651) #11
  %653 = load i32, ptr %0, align 8
  %654 = and i32 %653, 64
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %657, label %656

656:                                              ; preds = %650
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %646) #9
  br label %657

657:                                              ; preds = %656, %650, %645
  %658 = call i32 @jbd2_journal_get_log_tail(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %9) #9
  call void @_raw_write_lock(ptr noundef %63) #9
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %683, label %660

660:                                              ; preds = %657
  %661 = load i32, ptr %9, align 4
  %662 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 25
  %663 = load i32, ptr %662, align 8
  %664 = sub i32 %661, %663
  %665 = icmp ult i32 %661, %663
  br i1 %665, label %666, label %673

666:                                              ; preds = %660
  %667 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 28
  %668 = load i32, ptr %667, align 4
  %669 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 27
  %670 = load i32, ptr %669, align 8
  %671 = add i32 %668, %664
  %672 = sub i32 %671, %670
  br label %673

673:                                              ; preds = %666, %660
  %674 = phi i32 [ %672, %666 ], [ %664, %660 ]
  %675 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 37
  %676 = load i32, ptr %675, align 4
  %677 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 57
  %678 = load i32, ptr %677, align 4
  %679 = sub i32 %676, %678
  %680 = lshr i32 %679, 2
  %681 = icmp slt i32 %674, %680
  %682 = select i1 %681, i32 0, i32 %658
  br label %683

683:                                              ; preds = %673, %657
  %684 = phi i32 [ %682, %673 ], [ 0, %657 ]
  %685 = load i32, ptr %98, align 8
  %686 = icmp eq i32 %685, 4
  br i1 %686, label %688, label %687, !prof !13

687:                                              ; preds = %683
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 803, 0\0A.popsection", ""() #9, !srcloc !48
  unreachable

688:                                              ; preds = %683
  store i32 5, ptr %98, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %689 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 26
  %690 = load i32, ptr %689, align 4
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %704, label %692

692:                                              ; preds = %688
  %693 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %694 = load ptr, ptr %693, align 8
  %695 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 32
  %696 = load ptr, ptr %695, align 4
  %697 = icmp eq ptr %694, %696
  br i1 %697, label %704, label %698

698:                                              ; preds = %692
  %699 = load i32, ptr %0, align 8
  %700 = and i32 %699, 32
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %704, label %702

702:                                              ; preds = %698
  %703 = call i32 @blkdev_issue_flush(ptr noundef %694) #9
  br label %704

704:                                              ; preds = %702, %698, %692, %688
  %705 = load i32, ptr %19, align 8
  %706 = icmp sgt i32 %705, 1
  br i1 %706, label %707, label %717

707:                                              ; preds = %704
  %708 = load ptr, ptr %294, align 4
  %709 = getelementptr inbounds %struct.journal_superblock_s, ptr %708, i32 0, i32 8
  %710 = load i32, ptr %709, align 4
  %711 = and i32 %710, 67108864
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %717, label %713

713:                                              ; preds = %707
  %714 = call fastcc i32 @journal_submit_commit_record(ptr noundef %0, ptr noundef %80, ptr noundef nonnull %7, i32 noundef %583)
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %717, label %716

716:                                              ; preds = %713
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %714) #9
  br label %717

717:                                              ; preds = %716, %713, %707, %704
  %718 = phi i32 [ %714, %716 ], [ 0, %713 ], [ 0, %707 ], [ 0, %704 ]
  call void @blk_finish_plug(ptr noundef nonnull %8) #9
  %719 = load volatile ptr, ptr %11, align 8
  %720 = icmp eq ptr %719, %11
  br i1 %720, label %766, label %721

721:                                              ; preds = %717
  %722 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 10
  br label %723

723:                                              ; preds = %763, %721
  %724 = phi i32 [ %718, %721 ], [ %738, %763 ]
  %725 = load ptr, ptr %17, align 4
  %726 = getelementptr i8, ptr %725, i32 -44
  %727 = load volatile i32, ptr %726, align 4
  %728 = and i32 %727, 4
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %731, label %730

730:                                              ; preds = %723
  call void @__wait_on_buffer(ptr noundef %726) #9
  br label %731

731:                                              ; preds = %730, %723
  %732 = call i32 @__cond_resched() #9
  %733 = load volatile i32, ptr %726, align 4
  %734 = and i32 %733, 1
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %737, !prof !11

736:                                              ; preds = %731
  br label %737

737:                                              ; preds = %736, %731
  %738 = phi i32 [ -5, %736 ], [ %724, %731 ]
  %739 = getelementptr i8, ptr %725, i32 4
  %740 = load ptr, ptr %739, align 4
  %741 = load ptr, ptr %725, align 4
  %742 = getelementptr inbounds %struct.list_head, ptr %741, i32 0, i32 1
  store ptr %740, ptr %742, align 4
  store volatile ptr %741, ptr %740, align 4
  store volatile ptr %725, ptr %725, align 4
  store ptr %725, ptr %739, align 4
  %743 = load i32, ptr %288, align 4
  %744 = add i32 %743, 1
  store i32 %744, ptr %288, align 4
  call void @__brelse(ptr noundef %726) #9
  %745 = getelementptr i8, ptr %725, i32 12
  %746 = load volatile i32, ptr %745, align 4
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %749, label %748, !prof !13

748:                                              ; preds = %737
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 859, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

749:                                              ; preds = %737
  call void @free_buffer_head(ptr noundef %726) #9
  %750 = load ptr, ptr %722, align 8
  %751 = getelementptr inbounds %struct.journal_head, ptr %750, i32 0, i32 10
  %752 = load ptr, ptr %751, align 4
  %753 = load ptr, ptr %752, align 4
  call void @_clear_bit(i32 noundef 17, ptr noundef %753) #9
  %754 = load volatile i32, ptr %753, align 4
  %755 = and i32 %754, 2097152
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %758, !prof !11

757:                                              ; preds = %749
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 866, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

758:                                              ; preds = %749
  %759 = load volatile i32, ptr %753, align 4
  %760 = and i32 %759, 8388608
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %763, label %762, !prof !13

762:                                              ; preds = %758
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 867, 0\0A.popsection", ""() #9, !srcloc !51
  unreachable

763:                                              ; preds = %758
  call void @jbd2_journal_file_buffer(ptr noundef %752, ptr noundef %80, i32 noundef 2) #9
  call void @__brelse(ptr noundef %753) #9
  %764 = load volatile ptr, ptr %11, align 8
  %765 = icmp eq ptr %764, %11
  br i1 %765, label %766, label %723

766:                                              ; preds = %763, %717
  %767 = phi i32 [ %718, %717 ], [ %738, %763 ]
  %768 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 10
  %769 = load ptr, ptr %768, align 8
  %770 = icmp eq ptr %769, null
  br i1 %770, label %771, label %774, !prof !13

771:                                              ; preds = %766
  %772 = load volatile ptr, ptr %12, align 8
  %773 = icmp eq ptr %772, %12
  br i1 %773, label %799, label %775

774:                                              ; preds = %766
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 879, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

775:                                              ; preds = %789, %771
  %776 = phi i32 [ %790, %789 ], [ %767, %771 ]
  %777 = load ptr, ptr %18, align 4
  %778 = getelementptr i8, ptr %777, i32 -44
  %779 = load volatile i32, ptr %778, align 4
  %780 = and i32 %779, 4
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %783, label %782

782:                                              ; preds = %775
  call void @__wait_on_buffer(ptr noundef %778) #9
  br label %783

783:                                              ; preds = %782, %775
  %784 = call i32 @__cond_resched() #9
  %785 = load volatile i32, ptr %778, align 4
  %786 = and i32 %785, 1
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %789, !prof !11

788:                                              ; preds = %783
  br label %789

789:                                              ; preds = %788, %783
  %790 = phi i32 [ -5, %788 ], [ %776, %783 ]
  call void @_clear_bit(i32 noundef 17, ptr noundef %778) #9
  %791 = getelementptr i8, ptr %777, i32 4
  %792 = load ptr, ptr %791, align 4
  %793 = load ptr, ptr %777, align 4
  %794 = getelementptr inbounds %struct.list_head, ptr %793, i32 0, i32 1
  store ptr %792, ptr %794, align 4
  store volatile ptr %793, ptr %792, align 4
  store volatile ptr %777, ptr %777, align 4
  store ptr %777, ptr %791, align 4
  %795 = load i32, ptr %288, align 4
  %796 = add i32 %795, 1
  store i32 %796, ptr %288, align 4
  call void @__brelse(ptr noundef %778) #9
  %797 = load volatile ptr, ptr %12, align 8
  %798 = icmp eq ptr %797, %12
  br i1 %798, label %799, label %775

799:                                              ; preds = %789, %771
  %800 = phi i32 [ %767, %771 ], [ %790, %789 ]
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %803, label %802

802:                                              ; preds = %799
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %800) #9
  br label %803

803:                                              ; preds = %802, %799
  call void @_raw_write_lock(ptr noundef %63) #9
  %804 = load i32, ptr %98, align 8
  %805 = icmp eq i32 %804, 5
  br i1 %805, label %807, label %806, !prof !13

806:                                              ; preds = %803
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 907, 0\0A.popsection", ""() #9, !srcloc !53
  unreachable

807:                                              ; preds = %803
  store i32 6, ptr %98, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %808 = load i32, ptr %19, align 8
  %809 = icmp sgt i32 %808, 1
  br i1 %809, label %810, label %816

810:                                              ; preds = %807
  %811 = load ptr, ptr %294, align 4
  %812 = getelementptr inbounds %struct.journal_superblock_s, ptr %811, i32 0, i32 8
  %813 = load i32, ptr %812, align 4
  %814 = and i32 %813, 67108864
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %820

816:                                              ; preds = %810, %807
  %817 = call fastcc i32 @journal_submit_commit_record(ptr noundef %0, ptr noundef %80, ptr noundef nonnull %7, i32 noundef %583)
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %820, label %819

819:                                              ; preds = %816
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %817) #9
  br label %820

820:                                              ; preds = %819, %816, %810
  %821 = phi i32 [ %800, %810 ], [ %817, %819 ], [ 0, %816 ]
  %822 = load ptr, ptr %7, align 4
  %823 = icmp eq ptr %822, null
  br i1 %823, label %838, label %824

824:                                              ; preds = %820
  call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %822) #9
  %825 = load volatile i32, ptr %822, align 4
  %826 = and i32 %825, 4
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %829, label %828

828:                                              ; preds = %824
  call void @__wait_on_buffer(ptr noundef nonnull %822) #9
  br label %829

829:                                              ; preds = %828, %824
  %830 = load volatile i32, ptr %822, align 4
  %831 = and i32 %830, 1
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %834, !prof !11

833:                                              ; preds = %829
  br label %834

834:                                              ; preds = %833, %829
  %835 = phi i32 [ -5, %833 ], [ 0, %829 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !54
  %836 = getelementptr inbounds %struct.buffer_head, ptr %822, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %836) #9, !srcloc !28
  %837 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %836, ptr %836, i32 1, ptr elementtype(i32) %836) #9, !srcloc !29
  br label %838

838:                                              ; preds = %834, %820
  %839 = phi i32 [ %835, %834 ], [ %821, %820 ]
  %840 = load i32, ptr %288, align 4
  %841 = add i32 %840, 1
  store i32 %841, ptr %288, align 4
  %842 = load i32, ptr %19, align 8
  %843 = icmp sgt i32 %842, 1
  br i1 %843, label %844, label %858

844:                                              ; preds = %838
  %845 = load ptr, ptr %294, align 4
  %846 = getelementptr inbounds %struct.journal_superblock_s, ptr %845, i32 0, i32 8
  %847 = load i32, ptr %846, align 4
  %848 = and i32 %847, 67108864
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %858, label %850

850:                                              ; preds = %844
  %851 = load i32, ptr %0, align 8
  %852 = and i32 %851, 32
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %858, label %854

854:                                              ; preds = %850
  %855 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 32
  %856 = load ptr, ptr %855, align 4
  %857 = call i32 @blkdev_issue_flush(ptr noundef %856) #9
  br label %858

858:                                              ; preds = %854, %850, %844, %838
  %859 = icmp eq i32 %839, 0
  br i1 %859, label %861, label %860

860:                                              ; preds = %858
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %839) #9
  br label %861

861:                                              ; preds = %860, %858
  %862 = load volatile i32, ptr %141, align 4
  %863 = icmp slt i32 %862, 0
  %864 = load i1, ptr @jbd2_journal_commit_transaction.__already_done, align 1
  %865 = xor i1 %864, true
  %866 = select i1 %863, i1 %865, i1 false
  br i1 %866, label %867, label %868, !prof !11

867:                                              ; preds = %861
  store i1 true, ptr @jbd2_journal_commit_transaction.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 929, i32 noundef 9, ptr noundef null) #9
  br label %868

868:                                              ; preds = %867, %861
  %869 = icmp eq i32 %684, 0
  br i1 %869, label %873, label %870

870:                                              ; preds = %868
  %871 = load i32, ptr %10, align 4
  %872 = load i32, ptr %9, align 4
  call void @jbd2_update_log_tail(ptr noundef %0, i32 noundef %871, i32 noundef %872) #9
  br label %873

873:                                              ; preds = %870, %868
  %874 = load volatile ptr, ptr %202, align 4
  %875 = icmp eq ptr %874, %202
  br i1 %875, label %877, label %876, !prof !13

876:                                              ; preds = %873
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 946, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

877:                                              ; preds = %873
  %878 = load ptr, ptr %293, align 8
  %879 = icmp eq ptr %878, null
  br i1 %879, label %881, label %880, !prof !13

880:                                              ; preds = %877
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 947, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

881:                                              ; preds = %877
  %882 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 8
  %883 = load ptr, ptr %882, align 8
  %884 = icmp eq ptr %883, null
  br i1 %884, label %886, label %885, !prof !13

885:                                              ; preds = %881
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 948, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

886:                                              ; preds = %881
  %887 = load ptr, ptr %768, align 8
  %888 = icmp eq ptr %887, null
  br i1 %888, label %889, label %891, !prof !13

889:                                              ; preds = %886
  %890 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 7
  br label %892

891:                                              ; preds = %886
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 949, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

892:                                              ; preds = %1059, %889
  call void @_raw_spin_lock(ptr noundef %168) #9
  %893 = load ptr, ptr %890, align 4
  %894 = icmp eq ptr %893, null
  br i1 %894, label %1054, label %895

895:                                              ; preds = %1050, %892
  %896 = phi ptr [ %1052, %1050 ], [ %893, %892 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %897 = load i16, ptr %168, align 4
  %898 = add i16 %897, 1
  store i16 %898, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %899 = load ptr, ptr %896, align 4
  %900 = getelementptr inbounds %struct.buffer_head, ptr %899, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %900) #9, !srcloc !28
  %901 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %900, ptr %900, i32 1, ptr elementtype(i32) %900) #9, !srcloc !38
  %902 = getelementptr inbounds %struct.journal_head, ptr %896, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %902) #9
  %903 = getelementptr inbounds %struct.journal_head, ptr %896, i32 0, i32 7
  %904 = load ptr, ptr %903, align 4
  %905 = icmp eq ptr %904, %80
  br i1 %905, label %907, label %906, !prof !13

906:                                              ; preds = %895
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 972, 0\0A.popsection", ""() #9, !srcloc !59
  unreachable

907:                                              ; preds = %895
  %908 = getelementptr inbounds %struct.journal_head, ptr %896, i32 0, i32 6
  %909 = load ptr, ptr %908, align 4
  %910 = icmp eq ptr %909, null
  br i1 %910, label %918, label %911

911:                                              ; preds = %907
  %912 = getelementptr inbounds %struct.buffer_head, ptr %899, i32 0, i32 4
  %913 = load i32, ptr %912, align 8
  call void @jbd2_free(ptr noundef nonnull %909, i32 noundef %913) #9
  store ptr null, ptr %908, align 4
  %914 = getelementptr inbounds %struct.journal_head, ptr %896, i32 0, i32 5
  %915 = load ptr, ptr %914, align 4
  %916 = icmp eq ptr %915, null
  br i1 %916, label %928, label %917

917:                                              ; preds = %911
  store ptr %915, ptr %908, align 4
  br label %925

918:                                              ; preds = %907
  %919 = getelementptr inbounds %struct.journal_head, ptr %896, i32 0, i32 5
  %920 = load ptr, ptr %919, align 4
  %921 = icmp eq ptr %920, null
  br i1 %921, label %928, label %922

922:                                              ; preds = %918
  %923 = getelementptr inbounds %struct.buffer_head, ptr %899, i32 0, i32 4
  %924 = load i32, ptr %923, align 8
  call void @jbd2_free(ptr noundef nonnull %920, i32 noundef %924) #9
  br label %925

925:                                              ; preds = %922, %917
  %926 = phi ptr [ %919, %922 ], [ %914, %917 ]
  store ptr null, ptr %926, align 4
  %927 = getelementptr inbounds %struct.journal_head, ptr %896, i32 0, i32 15
  store ptr null, ptr %927, align 4
  br label %928

928:                                              ; preds = %925, %918, %911
  call void @_raw_spin_lock(ptr noundef %168) #9
  %929 = getelementptr inbounds %struct.journal_head, ptr %896, i32 0, i32 11
  %930 = load ptr, ptr %929, align 4
  %931 = icmp eq ptr %930, null
  br i1 %931, label %937, label %932

932:                                              ; preds = %928
  %933 = getelementptr inbounds %struct.transaction_s, ptr %930, i32 0, i32 16, i32 3
  %934 = load i32, ptr %933, align 4
  %935 = add i32 %934, 1
  store i32 %935, ptr %933, align 4
  %936 = call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %896) #9
  br label %937

937:                                              ; preds = %932, %928
  %938 = load volatile i32, ptr %899, align 4
  %939 = and i32 %938, 262144
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %959, label %941

941:                                              ; preds = %937
  %942 = getelementptr inbounds %struct.journal_head, ptr %896, i32 0, i32 8
  %943 = load ptr, ptr %942, align 4
  %944 = icmp eq ptr %943, null
  br i1 %944, label %945, label %959

945:                                              ; preds = %941
  call void @_clear_bit(i32 noundef 18, ptr noundef %899) #9
  call void @_clear_bit(i32 noundef 21, ptr noundef %899) #9
  %946 = getelementptr inbounds %struct.buffer_head, ptr %899, i32 0, i32 2
  %947 = load ptr, ptr %946, align 8
  %948 = getelementptr inbounds %struct.page, ptr %947, i32 0, i32 1, i32 0, i32 1
  %949 = load volatile ptr, ptr %948, align 4
  %950 = icmp eq ptr %949, null
  br i1 %950, label %959, label %951

951:                                              ; preds = %945
  %952 = load ptr, ptr %949, align 4
  %953 = getelementptr inbounds %struct.inode, ptr %952, i32 0, i32 8
  %954 = load ptr, ptr %953, align 4
  %955 = load ptr, ptr @blockdev_superblock, align 4
  %956 = icmp eq ptr %955, %954
  br i1 %956, label %959, label %957

957:                                              ; preds = %951
  call void @_clear_bit(i32 noundef 4, ptr noundef %899) #9
  call void @_clear_bit(i32 noundef 5, ptr noundef %899) #9
  call void @_clear_bit(i32 noundef 3, ptr noundef %899) #9
  %958 = getelementptr inbounds %struct.buffer_head, ptr %899, i32 0, i32 6
  store ptr null, ptr %958, align 8
  br label %959

959:                                              ; preds = %957, %951, %945, %941, %937
  %960 = load volatile i32, ptr %899, align 4
  %961 = and i32 %960, 2097152
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %968, label %963

963:                                              ; preds = %959
  call void @__jbd2_journal_insert_checkpoint(ptr noundef nonnull %896, ptr noundef %80) #9
  %964 = load i32, ptr %0, align 8
  %965 = and i32 %964, 2
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %977, label %967

967:                                              ; preds = %963
  call void @_clear_bit(i32 noundef 21, ptr noundef %899) #9
  br label %977

968:                                              ; preds = %959
  %969 = load volatile i32, ptr %899, align 4
  %970 = and i32 %969, 2
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %973, label %972, !prof !13

972:                                              ; preds = %968
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1057, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

973:                                              ; preds = %968
  %974 = getelementptr inbounds %struct.journal_head, ptr %896, i32 0, i32 8
  %975 = load ptr, ptr %974, align 4
  %976 = icmp ne ptr %975, null
  br label %977

977:                                              ; preds = %973, %967, %963
  %978 = phi i1 [ true, %967 ], [ true, %963 ], [ %976, %973 ]
  %979 = call zeroext i1 @__jbd2_journal_refile_buffer(ptr noundef nonnull %896) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %980 = load i16, ptr %902, align 4
  %981 = add i16 %980, 1
  store i16 %981, ptr %902, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br i1 %979, label %982, label %983

982:                                              ; preds = %977
  call void @jbd2_journal_put_journal_head(ptr noundef nonnull %896) #9
  br label %983

983:                                              ; preds = %982, %977
  br i1 %978, label %1049, label %984

984:                                              ; preds = %983
  %985 = load volatile i32, ptr %899, align 4
  %986 = and i32 %985, 2
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %1048

988:                                              ; preds = %984
  %989 = load volatile i32, ptr %900, align 4
  %990 = icmp eq i32 %989, 1
  br i1 %990, label %991, label %1048

991:                                              ; preds = %988
  %992 = getelementptr inbounds %struct.buffer_head, ptr %899, i32 0, i32 2
  %993 = load ptr, ptr %992, align 8
  %994 = icmp eq ptr %993, null
  br i1 %994, label %1048, label %995

995:                                              ; preds = %991
  %996 = getelementptr inbounds %struct.page, ptr %993, i32 0, i32 1, i32 0, i32 1
  %997 = load ptr, ptr %996, align 4
  %998 = icmp eq ptr %997, null
  br i1 %998, label %999, label %1048

999:                                              ; preds = %995
  %1000 = getelementptr inbounds %struct.page, ptr %993, i32 0, i32 1
  %1001 = load volatile i32, ptr %1000, align 4
  %1002 = and i32 %1001, 1
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1006, label %1004, !prof !13

1004:                                             ; preds = %999
  %1005 = add i32 %1001, -1
  br label %1008

1006:                                             ; preds = %999
  %1007 = ptrtoint ptr %993 to i32
  br label %1008

1008:                                             ; preds = %1006, %1004
  %1009 = phi i32 [ %1005, %1004 ], [ %1007, %1006 ]
  %1010 = inttoptr i32 %1009 to ptr
  %1011 = load volatile i32, ptr %1010, align 4
  %1012 = and i32 %1011, 1
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1014, label %1048

1014:                                             ; preds = %1008
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1010) #9, !srcloc !28
  %1015 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1010, ptr %1010, i32 1, ptr elementtype(i32) %1010) #9, !srcloc !45
  %1016 = extractvalue { i32, i32, i32 } %1015, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !46
  %1017 = and i32 %1016, 1
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %1048

1019:                                             ; preds = %1014
  %1020 = load volatile i32, ptr %1000, align 4
  %1021 = and i32 %1020, 1
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1025, label %1023, !prof !13

1023:                                             ; preds = %1019
  %1024 = add i32 %1020, -1
  br label %1027

1025:                                             ; preds = %1019
  %1026 = ptrtoint ptr %993 to i32
  br label %1027

1027:                                             ; preds = %1025, %1023
  %1028 = phi i32 [ %1024, %1023 ], [ %1026, %1025 ]
  %1029 = inttoptr i32 %1028 to ptr
  %1030 = getelementptr inbounds %struct.page, ptr %1029, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1030) #9, !srcloc !28
  %1031 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1030, ptr %1030, i32 1, ptr elementtype(i32) %1030) #9, !srcloc !38
  call void @__brelse(ptr noundef %899) #9
  %1032 = call i32 @try_to_free_buffers(ptr noundef nonnull %993) #9
  call void @unlock_page(ptr noundef nonnull %993) #9
  %1033 = load volatile i32, ptr %1000, align 4
  %1034 = and i32 %1033, 1
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1038, label %1036, !prof !13

1036:                                             ; preds = %1027
  %1037 = add i32 %1033, -1
  br label %1040

1038:                                             ; preds = %1027
  %1039 = ptrtoint ptr %993 to i32
  br label %1040

1040:                                             ; preds = %1038, %1036
  %1041 = phi i32 [ %1037, %1036 ], [ %1039, %1038 ]
  %1042 = inttoptr i32 %1041 to ptr
  %1043 = getelementptr inbounds %struct.page, ptr %1042, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !61
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1043) #9, !srcloc !28
  %1044 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1043, ptr %1043, i32 1, ptr elementtype(i32) %1043) #9, !srcloc !62
  %1045 = extractvalue { i32, i32 } %1044, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !63
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1047, label %1050

1047:                                             ; preds = %1040
  call void @__put_page(ptr noundef %1042) #9
  br label %1050

1048:                                             ; preds = %1014, %1008, %995, %991, %988, %984
  call void @__brelse(ptr noundef %899) #9
  br label %1050

1049:                                             ; preds = %983
  call void @__brelse(ptr noundef %899) #9
  br label %1050

1050:                                             ; preds = %1049, %1048, %1047, %1040
  %1051 = call i32 @__cond_resched_lock(ptr noundef %168) #9
  %1052 = load ptr, ptr %890, align 4
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1054, label %895

1054:                                             ; preds = %1050, %892
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %1055 = load i16, ptr %168, align 4
  %1056 = add i16 %1055, 1
  store i16 %1056, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  call void @_raw_write_lock(ptr noundef %63) #9
  call void @_raw_spin_lock(ptr noundef %168) #9
  %1057 = load ptr, ptr %890, align 4
  %1058 = icmp eq ptr %1057, null
  br i1 %1058, label %1062, label %1059

1059:                                             ; preds = %1054
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %1060 = load i16, ptr %168, align 4
  %1061 = add i16 %1060, 1
  store i16 %1061, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %892

1062:                                             ; preds = %1054
  %1063 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 12
  %1064 = load ptr, ptr %1063, align 8
  %1065 = icmp eq ptr %1064, null
  br i1 %1065, label %1066, label %1069

1066:                                             ; preds = %1062
  store ptr %80, ptr %1063, align 8
  %1067 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 21
  store ptr %80, ptr %1067, align 4
  %1068 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 22
  store ptr %80, ptr %1068, align 8
  br label %1076

1069:                                             ; preds = %1062
  %1070 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 21
  store ptr %1064, ptr %1070, align 4
  %1071 = getelementptr inbounds %struct.transaction_s, ptr %1064, i32 0, i32 22
  %1072 = load ptr, ptr %1071, align 8
  %1073 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 22
  store ptr %1072, ptr %1073, align 8
  store ptr %80, ptr %1071, align 8
  %1074 = load ptr, ptr %1073, align 8
  %1075 = getelementptr inbounds %struct.transaction_s, ptr %1074, i32 0, i32 21
  store ptr %80, ptr %1075, align 4
  br label %1076

1076:                                             ; preds = %1069, %1066
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %1077 = load i16, ptr %168, align 4
  %1078 = add i16 %1077, 1
  store i16 %1078, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %1079 = load i32, ptr %98, align 8
  %1080 = icmp eq i32 %1079, 6
  br i1 %1080, label %1082, label %1081, !prof !13

1081:                                             ; preds = %1076
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1123, 0\0A.popsection", ""() #9, !srcloc !64
  unreachable

1082:                                             ; preds = %1076
  %1083 = load volatile i32, ptr @jiffies, align 64
  store i32 %1083, ptr %134, align 4
  %1084 = load i32, ptr %279, align 4
  %1085 = icmp ult i32 %1083, %1084
  %1086 = select i1 %1085, i32 1073741822, i32 0
  %1087 = sub i32 %1083, %1084
  %1088 = add i32 %1087, %1086
  store i32 %1088, ptr %279, align 4
  %1089 = load i32, ptr %295, align 4
  store i32 %1089, ptr %5, align 4
  %1090 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 20
  %1091 = load volatile i32, ptr %1090, align 4
  %1092 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 2, i32 6
  store i32 %1091, ptr %1092, align 4
  %1093 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %1094 = load ptr, ptr %1093, align 8
  %1095 = getelementptr inbounds %struct.block_device, ptr %1094, i32 0, i32 5
  %1096 = load i32, ptr %1095, align 4
  %1097 = load i32, ptr %295, align 4
  %1098 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_run_stats, i32 0, i32 1), align 4
  %1099 = icmp sgt i32 %1098, 0
  br i1 %1099, label %1100, label %1113

1100:                                             ; preds = %1082
  %1101 = tail call ptr @llvm.thread.pointer() #9
  %1102 = getelementptr inbounds %struct.thread_info, ptr %1101, i32 0, i32 2
  %1103 = load i32, ptr %1102, align 8
  %1104 = lshr i32 %1103, 5
  %1105 = getelementptr i32, ptr @__cpu_online_mask, i32 %1104
  %1106 = load volatile i32, ptr %1105, align 4
  %1107 = and i32 %1103, 31
  %1108 = shl nuw i32 1, %1107
  %1109 = and i32 %1108, %1106
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1113, label %1111

1111:                                             ; preds = %1100
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %1112 = call i32 @__traceiter_jbd2_run_stats(ptr noundef null, i32 noundef %1096, i32 noundef %1097, ptr noundef %121) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  br label %1113

1113:                                             ; preds = %1111, %1100, %1082
  %1114 = load i32, ptr %125, align 8
  %1115 = icmp ne i32 %1114, 0
  %1116 = zext i1 %1115 to i32
  %1117 = getelementptr inbounds %struct.transaction_stats_s, ptr %5, i32 0, i32 1
  store i32 %1116, ptr %1117, align 4
  store i32 7, ptr %98, align 8
  %1118 = load ptr, ptr %58, align 4
  %1119 = icmp eq ptr %80, %1118
  br i1 %1119, label %1121, label %1120, !prof !13

1120:                                             ; preds = %1113
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/commit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1140, 0\0A.popsection", ""() #9, !srcloc !67
  unreachable

1121:                                             ; preds = %1113
  %1122 = load i32, ptr %295, align 4
  %1123 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 43
  store i32 %1122, ptr %1123, align 4
  store ptr null, ptr %58, align 4
  %1124 = call i64 @ktime_get() #9
  %1125 = sub i64 %1124, %197
  %1126 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 59
  %1127 = load i64, ptr %1126, align 8
  %1128 = icmp eq i64 %1127, 0
  br i1 %1128, label %1133, label %1129, !prof !11

1129:                                             ; preds = %1121
  %1130 = mul i64 %1127, 3
  %1131 = add i64 %1130, %1125
  %1132 = lshr i64 %1131, 2
  br label %1133

1133:                                             ; preds = %1129, %1121
  %1134 = phi i64 [ %1132, %1129 ], [ %1125, %1121 ]
  store i64 %1134, ptr %1126, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %1135 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 62
  %1136 = load ptr, ptr %1135, align 8
  %1137 = icmp eq ptr %1136, null
  br i1 %1137, label %1139, label %1138

1138:                                             ; preds = %1133
  call void %1136(ptr noundef %0, ptr noundef %80) #9
  br label %1139

1139:                                             ; preds = %1138, %1133
  %1140 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 72
  %1141 = load ptr, ptr %1140, align 8
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1145, label %1143

1143:                                             ; preds = %1139
  %1144 = load i32, ptr %295, align 4
  call void %1141(ptr noundef %0, i32 noundef 1, i32 noundef %1144) #9
  br label %1145

1145:                                             ; preds = %1143, %1139
  %1146 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_end_commit, i32 0, i32 1), align 4
  %1147 = icmp sgt i32 %1146, 0
  br i1 %1147, label %1148, label %1161

1148:                                             ; preds = %1145
  %1149 = tail call ptr @llvm.thread.pointer() #9
  %1150 = getelementptr inbounds %struct.thread_info, ptr %1149, i32 0, i32 2
  %1151 = load i32, ptr %1150, align 8
  %1152 = lshr i32 %1151, 5
  %1153 = getelementptr i32, ptr @__cpu_online_mask, i32 %1152
  %1154 = load volatile i32, ptr %1153, align 4
  %1155 = and i32 %1151, 31
  %1156 = shl nuw i32 1, %1155
  %1157 = and i32 %1156, %1154
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1161, label %1159

1159:                                             ; preds = %1148
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !68
  %1160 = call i32 @__traceiter_jbd2_end_commit(ptr noundef null, ptr noundef %0, ptr noundef %80) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !69
  br label %1161

1161:                                             ; preds = %1159, %1148, %1145
  call void @_raw_write_lock(ptr noundef %63) #9
  %1162 = load i32, ptr %0, align 8
  %1163 = and i32 %1162, -769
  store i32 %1163, ptr %0, align 8
  call void @_raw_spin_lock(ptr noundef %168) #9
  store i32 8, ptr %98, align 8
  %1164 = load ptr, ptr %882, align 8
  %1165 = icmp eq ptr %1164, null
  br i1 %1165, label %1166, label %1171

1166:                                             ; preds = %1161
  %1167 = getelementptr inbounds %struct.transaction_s, ptr %80, i32 0, i32 9
  %1168 = load ptr, ptr %1167, align 4
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %1170, label %1171

1170:                                             ; preds = %1166
  call void @__jbd2_journal_drop_transaction(ptr noundef %0, ptr noundef %80) #9
  call void @jbd2_journal_free_transaction(ptr noundef %80) #9
  br label %1171

1171:                                             ; preds = %1170, %1166, %1161
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %1172 = load i16, ptr %168, align 4
  %1173 = add i16 %1172, 1
  store i16 %1173, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #9, !srcloc !16
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %1174 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 14
  call void @__wake_up(ptr noundef %1174, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %1175 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 18
  call void @__wake_up(ptr noundef %1175, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %1176 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 65
  call void @_raw_spin_lock(ptr noundef %1176) #9
  %1177 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67
  %1178 = load i32, ptr %1177, align 4
  %1179 = add i32 %1178, 1
  store i32 %1179, ptr %1177, align 4
  %1180 = load i32, ptr %1117, align 4
  %1181 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 1
  %1182 = load i32, ptr %1181, align 4
  %1183 = add i32 %1182, %1180
  store i32 %1183, ptr %1181, align 4
  %1184 = load i32, ptr %121, align 4
  %1185 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 2
  %1186 = load i32, ptr %1185, align 4
  %1187 = add i32 %1186, %1184
  store i32 %1187, ptr %1185, align 4
  %1188 = load i32, ptr %122, align 4
  %1189 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 2, i32 1
  %1190 = load i32, ptr %1189, align 4
  %1191 = add i32 %1190, %1188
  store i32 %1191, ptr %1189, align 4
  %1192 = load i32, ptr %140, align 4
  %1193 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 2, i32 2
  %1194 = load i32, ptr %1193, align 4
  %1195 = add i32 %1194, %1192
  store i32 %1195, ptr %1193, align 4
  %1196 = load i32, ptr %124, align 4
  %1197 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 2, i32 3
  %1198 = load i32, ptr %1197, align 4
  %1199 = add i32 %1198, %1196
  store i32 %1199, ptr %1197, align 4
  %1200 = load i32, ptr %191, align 4
  %1201 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 2, i32 4
  %1202 = load i32, ptr %1201, align 4
  %1203 = add i32 %1202, %1200
  store i32 %1203, ptr %1201, align 4
  %1204 = load i32, ptr %279, align 4
  %1205 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 2, i32 5
  %1206 = load i32, ptr %1205, align 4
  %1207 = add i32 %1206, %1204
  store i32 %1207, ptr %1205, align 4
  %1208 = load i32, ptr %1092, align 4
  %1209 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 2, i32 6
  %1210 = load i32, ptr %1209, align 4
  %1211 = add i32 %1210, %1208
  store i32 %1211, ptr %1209, align 4
  %1212 = load i32, ptr %287, align 4
  %1213 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 2, i32 7
  %1214 = load i32, ptr %1213, align 4
  %1215 = add i32 %1214, %1212
  store i32 %1215, ptr %1213, align 4
  %1216 = load i32, ptr %288, align 4
  %1217 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 67, i32 2, i32 8
  %1218 = load i32, ptr %1217, align 4
  %1219 = add i32 %1218, %1216
  store i32 %1219, ptr %1217, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %1220 = load i16, ptr %1176, align 4
  %1221 = add i16 %1220, 1
  store i16 %1221, ptr %1176, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_tag_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_update_sb_log_tail(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_wait_updates(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_refile_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_journal_clean_checkpoint_list(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_clear_buffer_revoked_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_switch_revoke_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_abort(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_write_revoke_records(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_buffer_abort_trigger(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_get_descriptor_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_next_log_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_write_metadata_buffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_descriptor_block_csum_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @journal_end_buffer_io_sync(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load volatile i32, ptr %0, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #9
  br label %12

11:                                               ; preds = %2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %0) #9
  br label %12

12:                                               ; preds = %11, %10, %6
  %13 = icmp eq ptr %4, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !70
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #9, !srcloc !28
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 8388608, ptr nonnull elementtype(i32) %4) #9, !srcloc !71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !72
  tail call void @wake_up_bit(ptr noundef nonnull %4, i32 noundef 23) #9
  br label %16

16:                                               ; preds = %14, %12
  tail call void @unlock_buffer(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_log_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @journal_submit_commit_record(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.anon.72, align 8
  %6 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  store ptr null, ptr %2, align 4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %114

10:                                               ; preds = %4
  %11 = tail call ptr @jbd2_journal_get_descriptor_buffer(ptr noundef %1, i32 noundef 2) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %114, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %6) #9
  %16 = load i64, ptr %6, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  %18 = getelementptr inbounds %struct.commit_header, ptr %15, i32 0, i32 7
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.timespec64, ptr %6, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = getelementptr inbounds %struct.commit_header, ptr %15, i32 0, i32 8
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %54

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.journal_superblock_s, ptr %28, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 16777216
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.commit_header, ptr %15, i32 0, i32 3
  store i8 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.commit_header, ptr %15, i32 0, i32 4
  store i8 4, ptr %35, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %3)
  %37 = getelementptr inbounds %struct.commit_header, ptr %15, i32 0, i32 6
  store i32 %36, ptr %37, align 8
  %38 = load i32, ptr %23, align 8
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %54

40:                                               ; preds = %33, %26
  %41 = load ptr, ptr %27, align 4
  %42 = getelementptr inbounds %struct.journal_superblock_s, ptr %41, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 402653184
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  %50 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %54, !prof !11

53:                                               ; preds = %46
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1735, i32 noundef 9, ptr noundef null) #9
  br label %54

54:                                               ; preds = %53, %46, %40, %33, %13
  %55 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %80, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %14, align 4
  %60 = getelementptr inbounds %struct.commit_header, ptr %59, i32 0, i32 3
  store i8 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.commit_header, ptr %59, i32 0, i32 4
  store i8 0, ptr %61, align 1
  %62 = getelementptr inbounds %struct.commit_header, ptr %59, i32 0, i32 6
  store i32 0, ptr %62, align 8
  %63 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 71
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %14, align 4
  %66 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  %67 = load i32, ptr %66, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #9, !annotation !8
  %68 = load ptr, ptr %55, align 8
  %69 = load i32, ptr %68, align 64
  %70 = icmp ugt i32 %69, 4
  br i1 %70, label %71, label %72, !prof !11

71:                                               ; preds = %58
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

72:                                               ; preds = %58
  store ptr %68, ptr %5, align 8
  %73 = getelementptr inbounds %struct.anon.72, ptr %5, i32 0, i32 1
  store i32 %64, ptr %73, align 8
  %74 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef %65, i32 noundef %67) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76, !prof !13

76:                                               ; preds = %72
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/jbd2.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #9, !srcloc !42
  unreachable

77:                                               ; preds = %72
  %78 = load i32, ptr %73, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %79 = call i32 @llvm.bswap.i32(i32 %78) #9
  store i32 %79, ptr %62, align 8
  br label %80

80:                                               ; preds = %77, %54
  %81 = load volatile i32, ptr %11, align 4
  %82 = and i32 %81, 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #9, !srcloc !28
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 4, ptr nonnull elementtype(i32) %11) #9, !srcloc !45
  %86 = extractvalue { i32, i32, i32 } %85, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !46
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84, %80
  call void @__lock_buffer(ptr noundef nonnull %11) #9
  br label %90

90:                                               ; preds = %89, %84
  call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %11) #9
  %91 = load volatile i32, ptr %11, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %11) #9
  br label %95

95:                                               ; preds = %94, %90
  %96 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 7
  store ptr @journal_end_buffer_io_sync, ptr %96, align 4
  %97 = load i32, ptr %0, align 8
  %98 = and i32 %97, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %23, align 8
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.journal_superblock_s, ptr %105, i32 0, i32 8
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 67108864
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103, %95
  br label %111

111:                                              ; preds = %110, %103, %100
  %112 = phi i32 [ 2048, %110 ], [ 395264, %100 ], [ 395264, %103 ]
  %113 = call i32 @submit_bh(i32 noundef 1, i32 noundef %112, ptr noundef nonnull %11) #9
  store ptr %11, ptr %2, align 4
  br label %114

114:                                              ; preds = %111, %10, %4
  %115 = phi i32 [ %113, %111 ], [ 0, %4 ], [ 1, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_buffer_head(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_file_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_update_log_tail(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jbd2_journal_remove_checkpoint(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_journal_insert_checkpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__jbd2_journal_refile_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_put_journal_head(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_journal_drop_transaction(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_free_transaction(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_submit_inode_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_start_commit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_commit_locking(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_commit_flushing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_commit_logging(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_run_stats(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_end_commit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 2153569904}
!10 = !{i64 2153570070}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153855112, i64 2153855593, i64 2153855149, i64 2153855205, i64 2153855239, i64 2153855263, i64 2153855304, i64 2153855325, i64 2153855353, i64 2153855387}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153856280, i64 2153856761, i64 2153856317, i64 2153856373, i64 2153856407, i64 2153856431, i64 2153856472, i64 2153856493, i64 2153856521, i64 2153856555}
!15 = !{i64 2149061565}
!16 = !{i64 1564779}
!17 = !{i64 2149050312}
!18 = !{i64 2149050387, i64 2149050414, i64 2149050461, i64 2149050483, i64 2149050511, i64 2149050531}
!19 = !{i64 2149099534}
!20 = !{i64 2153459999}
!21 = !{i64 2153460199}
!22 = !{i64 2153858641, i64 2153859122, i64 2153858678, i64 2153858734, i64 2153858768, i64 2153858792, i64 2153858833, i64 2153858854, i64 2153858882, i64 2153858916}
!23 = !{i64 2153481042}
!24 = !{i64 2153481246}
!25 = !{i64 2153860036, i64 2153860517, i64 2153860073, i64 2153860129, i64 2153860163, i64 2153860187, i64 2153860228, i64 2153860249, i64 2153860277, i64 2153860311}
!26 = !{i64 2149054488}
!27 = !{i64 2149077491}
!28 = !{i64 436225, i64 2147926196, i64 2147926222, i64 2147926269, i64 2147926291, i64 2147926319, i64 2147926339}
!29 = !{i64 2147939968, i64 2147939994, i64 2147940023, i64 2147940057, i64 2147940088, i64 2147940111}
!30 = !{i64 2153498170}
!31 = !{i64 2153498376}
!32 = !{i64 2153839310, i64 2153839791, i64 2153839347, i64 2153839403, i64 2153839437, i64 2153839461, i64 2153839502, i64 2153839523, i64 2153839551, i64 2153839585}
!33 = !{i64 2153840168}
!34 = !{i64 2153515314}
!35 = !{i64 2153515518}
!36 = !{i64 2153862968, i64 2153863449, i64 2153863005, i64 2153863061, i64 2153863095, i64 2153863119, i64 2153863160, i64 2153863181, i64 2153863209, i64 2153863243}
!37 = !{i64 2153864035, i64 2153864516, i64 2153864072, i64 2153864128, i64 2153864162, i64 2153864186, i64 2153864227, i64 2153864248, i64 2153864276, i64 2153864310}
!38 = !{i64 2147937611, i64 2147937637, i64 2147937666, i64 2147937700, i64 2147937731, i64 2147937754}
!39 = !{i64 2152508023}
!40 = !{i64 2150998398}
!41 = !{i64 2153298503, i64 2153298989, i64 2153298540, i64 2153298596, i64 2153298630, i64 2153298654, i64 2153298695, i64 2153298716, i64 2153298744, i64 2153298778}
!42 = !{i64 2153299507, i64 2153299993, i64 2153299544, i64 2153299600, i64 2153299634, i64 2153299658, i64 2153299699, i64 2153299720, i64 2153299748, i64 2153299782}
!43 = !{i64 2150998605}
!44 = !{i64 2152510648}
!45 = !{i64 2147946073, i64 2147946105, i64 2147946134, i64 2147946168, i64 2147946199, i64 2147946222}
!46 = !{i64 2148047389}
!47 = !{i64 2153844100}
!48 = !{i64 2153867639, i64 2153868120, i64 2153867676, i64 2153867732, i64 2153867766, i64 2153867790, i64 2153867831, i64 2153867852, i64 2153867880, i64 2153867914}
!49 = !{i64 2153874924, i64 2153875405, i64 2153874961, i64 2153875017, i64 2153875051, i64 2153875075, i64 2153875116, i64 2153875137, i64 2153875165, i64 2153875199}
!50 = !{i64 2153876028, i64 2153876509, i64 2153876065, i64 2153876121, i64 2153876155, i64 2153876179, i64 2153876220, i64 2153876241, i64 2153876269, i64 2153876303}
!51 = !{i64 2153877128, i64 2153877609, i64 2153877165, i64 2153877221, i64 2153877255, i64 2153877279, i64 2153877320, i64 2153877341, i64 2153877369, i64 2153877403}
!52 = !{i64 2153878330, i64 2153878811, i64 2153878367, i64 2153878423, i64 2153878457, i64 2153878481, i64 2153878522, i64 2153878543, i64 2153878571, i64 2153878605}
!53 = !{i64 2153881901, i64 2153882382, i64 2153881938, i64 2153881994, i64 2153882028, i64 2153882052, i64 2153882093, i64 2153882114, i64 2153882142, i64 2153882176}
!54 = !{i64 2152597214}
!55 = !{i64 2153884621, i64 2153885102, i64 2153884658, i64 2153884714, i64 2153884748, i64 2153884772, i64 2153884813, i64 2153884834, i64 2153884862, i64 2153884896}
!56 = !{i64 2153885777, i64 2153886258, i64 2153885814, i64 2153885870, i64 2153885904, i64 2153885928, i64 2153885969, i64 2153885990, i64 2153886018, i64 2153886052}
!57 = !{i64 2153886957, i64 2153887438, i64 2153886994, i64 2153887050, i64 2153887084, i64 2153887108, i64 2153887149, i64 2153887170, i64 2153887198, i64 2153887232}
!58 = !{i64 2153888125, i64 2153888606, i64 2153888162, i64 2153888218, i64 2153888252, i64 2153888276, i64 2153888317, i64 2153888338, i64 2153888366, i64 2153888400}
!59 = !{i64 2153889309, i64 2153889790, i64 2153889346, i64 2153889402, i64 2153889436, i64 2153889460, i64 2153889501, i64 2153889522, i64 2153889550, i64 2153889584}
!60 = !{i64 2153893522, i64 2153894004, i64 2153893559, i64 2153893615, i64 2153893649, i64 2153893673, i64 2153893714, i64 2153893735, i64 2153893763, i64 2153893797}
!61 = !{i64 2148038266}
!62 = !{i64 2147940652, i64 2147940684, i64 2147940713, i64 2147940747, i64 2147940778, i64 2147940801}
!63 = !{i64 2148038469}
!64 = !{i64 2153895441, i64 2153895923, i64 2153895478, i64 2153895534, i64 2153895568, i64 2153895592, i64 2153895633, i64 2153895654, i64 2153895682, i64 2153895716}
!65 = !{i64 2153664369}
!66 = !{i64 2153664539}
!67 = !{i64 2153896621, i64 2153897103, i64 2153896658, i64 2153896714, i64 2153896748, i64 2153896772, i64 2153896813, i64 2153896834, i64 2153896862, i64 2153896896}
!68 = !{i64 2153553588}
!69 = !{i64 2153553784}
!70 = !{i64 2148046354}
!71 = !{i64 2147944532, i64 2147944564, i64 2147944593, i64 2147944627, i64 2147944658, i64 2147944681}
!72 = !{i64 2153831780}
