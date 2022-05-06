; ModuleID = '/llk/IR/fs/jbd2/transaction.c_pt.bc'
source_filename = "../fs/jbd2/transaction.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2__journal_start:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2__journal_start\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2__journal_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_journal_start:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_journal_start\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_journal_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_journal_free_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_journal_free_reserved\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_journal_free_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_journal_start_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_journal_start_reserved\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_journal_start_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2__journal_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2__journal_restart\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2__journal_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jbd2_journal_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22jbd2_journal_restart\22\09\09\09\09\09"
module asm "__kstrtabns_jbd2_journal_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.45, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.45 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.jbd2_journal_handle = type { %union.anon.72, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.72 = type { ptr }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.journal_superblock_s = type { %struct.journal_header_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i8, [3 x i8], i32, [41 x i32], i32, [768 x i8] }
%struct.journal_header_s = type { i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.journal_head = type { ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.page = type { i32, %union.anon.0, %union.anon.64, %struct.atomic_t }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.jbd2_inode = type { ptr, ptr, %struct.list_head, ptr, i32, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.68 = type { ptr }

@transaction_cache = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [19 x i8] c"jbd2_transaction_s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\010JBD2: failed to create transaction cache\0A\00", align 1
@__kstrtab_jbd2__journal_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2__journal_start = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2__journal_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2__journal_start to i32), ptr @__kstrtab_jbd2__journal_start, ptr @__kstrtabns_jbd2__journal_start }, section "___ksymtab+jbd2__journal_start", align 4
@__kstrtab_jbd2_journal_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_journal_start = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_journal_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_journal_start to i32), ptr @__kstrtab_jbd2_journal_start, ptr @__kstrtabns_jbd2_journal_start }, section "___ksymtab+jbd2_journal_start", align 4
@__kstrtab_jbd2_journal_free_reserved = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_journal_free_reserved = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_journal_free_reserved = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_journal_free_reserved to i32), ptr @__kstrtab_jbd2_journal_free_reserved, ptr @__kstrtabns_jbd2_journal_free_reserved }, section "___ksymtab+jbd2_journal_free_reserved", align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"fs/jbd2/transaction.c\00", align 1
@__kstrtab_jbd2_journal_start_reserved = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_journal_start_reserved = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_journal_start_reserved = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_journal_start_reserved to i32), ptr @__kstrtab_jbd2_journal_start_reserved, ptr @__kstrtabns_jbd2_journal_start_reserved }, section "___ksymtab+jbd2_journal_start_reserved", align 4
@__kstrtab_jbd2__journal_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2__journal_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2__journal_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2__journal_restart to i32), ptr @__kstrtab_jbd2__journal_restart, ptr @__kstrtabns_jbd2__journal_restart }, section "___ksymtab+jbd2__journal_restart", align 4
@__kstrtab_jbd2_journal_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_jbd2_journal_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_jbd2_journal_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jbd2_journal_restart to i32), ptr @__kstrtab_jbd2_journal_restart, ptr @__kstrtabns_jbd2_journal_restart }, section "___ksymtab+jbd2_journal_restart", align 4
@jbd2_journal_set_triggers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"\013JBD2: assertion failure: h_type=%u h_line_no=%u block_no=%llu jlist=%u\0A\00", align 1
@jbd2_journal_dirty_metadata.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"\013JBD2: %s: jh->b_transaction (%llu, %p, %u) != journal->j_running_transaction (%p, %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [151 x i8] c"\013jbd2_journal_dirty_metadata: %s: bad jh for block %llu: transaction (%p, %u), jh->b_transaction (%p, %u), jh->b_next_transaction (%p, %u), jlist %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\013JBD2 unexpected failure: %s: %s;\0A\00", align 1
@__func__.jbd2_journal_forget = private unnamed_addr constant [20 x i8] c"jbd2_journal_forget\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"!jh->b_committed_data\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\013inconsistent data on disk\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@jbd2_handle_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [68 x i8] c"\013JBD2: %s wants too many credits credits:%d rsv_credits:%d max:%d\0A\00", align 1
@jbd2_journal_has_csum_v2or3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/jbd2.h\00", align 1
@add_transaction_credits.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_jbd2_handle_start = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_jbd2_handle_extend = external dso_local global %struct.tracepoint, align 4
@stop_this_handle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_jbd2_handle_restart = external dso_local global %struct.tracepoint, align 4
@__tracepoint_jbd2_lock_buffer_stall = external dso_local global %struct.tracepoint, align 4
@__func__.jbd2_freeze_jh_data = private unnamed_addr constant [20 x i8] c"jbd2_freeze_jh_data\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"buffer_uptodate(bh)\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"\013Possible IO failure.\0A\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_jbd2_handle_stats = external dso_local global %struct.tracepoint, align 4
@.str.14 = private unnamed_addr constant [133 x i8] c"\014JBD2: Spotted dirty metadata buffer (dev = %pg, blocknr = %llu). There's a risk of filesystem corruption in case of system crash.\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_jbd2__journal_restart, ptr @__ksymtab_jbd2__journal_start, ptr @__ksymtab_jbd2_journal_free_reserved, ptr @__ksymtab_jbd2_journal_restart, ptr @__ksymtab_jbd2_journal_start, ptr @__ksymtab_jbd2_journal_start_reserved], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_init_transaction_cache() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @transaction_cache, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 0, i32 noundef 139264, ptr noundef null) #9
  store ptr %5, ptr @transaction_cache, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ -12, %7 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_transaction_cache() local_unnamed_addr #3 {
  %1 = load ptr, ptr @transaction_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #9
  store ptr null, ptr @transaction_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_free_transaction(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp ult ptr %0, inttoptr (i32 17 to ptr)
  br i1 %2, label %5, label %3, !prof !10

3:                                                ; preds = %1
  %4 = load ptr, ptr @transaction_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %0) #9
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @jbd2__journal_start(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #3 {
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 113
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %0, null
  br i1 %11, label %94, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %10, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %10, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 501, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %10, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  br label %94

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 48
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %3, -1
  %27 = add i32 %26, %25
  %28 = sdiv i32 %27, %25
  %29 = add i32 %28, %1
  %30 = load ptr, ptr @jbd2_handle_cache, align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %30, i32 noundef 3392) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %94, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %31, i32 0, i32 2
  store i32 %29, ptr %34, align 8
  %35 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %31, i32 0, i32 5
  store i32 1, ptr %35, align 4
  %36 = icmp eq i32 %2, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @jbd2_handle_cache, align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %38, i32 noundef 3392) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load ptr, ptr @jbd2_handle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %42, ptr noundef nonnull %31) #9
  br label %94

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %39, i32 0, i32 2
  store i32 %2, ptr %44, align 8
  %45 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %39, i32 0, i32 5
  store i32 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %39, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 4
  store i32 %48, ptr %46, align 4
  store ptr %0, ptr %39, align 8
  %49 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %31, i32 0, i32 1
  store ptr %39, ptr %49, align 4
  br label %50

50:                                               ; preds = %43, %33
  %51 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %31, i32 0, i32 3
  store i32 %3, ptr %51, align 4
  %52 = tail call fastcc i32 @start_this_handle(ptr noundef nonnull %0, ptr noundef nonnull %31, i32 noundef %4)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %31, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @jbd2_handle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %59, ptr noundef nonnull %56) #9
  br label %60

60:                                               ; preds = %58, %54
  %61 = load ptr, ptr @jbd2_handle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %61, ptr noundef nonnull %31) #9
  %62 = inttoptr i32 %52 to ptr
  br label %94

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %31, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %5, 4
  %67 = and i32 %66, 4080
  %68 = and i32 %65, -268435441
  %69 = shl i32 %6, 12
  %70 = and i32 %69, 268431360
  %71 = or i32 %70, %67
  %72 = or i32 %71, %68
  store i32 %72, ptr %64, align 4
  %73 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.block_device, ptr %74, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %31, align 8
  %78 = getelementptr inbounds %struct.transaction_s, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_start, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %63
  %83 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %82
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %93 = tail call i32 @__traceiter_jbd2_handle_start(ptr noundef null, i32 noundef %76, i32 noundef %79, i32 noundef %5, i32 noundef %6, i32 noundef %29) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %94

94:                                               ; preds = %92, %82, %63, %60, %41, %23, %19, %7
  %95 = phi ptr [ %10, %19 ], [ %62, %60 ], [ inttoptr (i32 -30 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %23 ], [ inttoptr (i32 -12 to ptr), %41 ], [ %31, %63 ], [ %31, %82 ], [ %31, %92 ]
  ret ptr %95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @start_this_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = alloca %struct.wait_queue_entry, align 4
  %8 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %12, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i32 [ %16, %14 ], [ 0, %3 ]
  %19 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 47
  %20 = load i32, ptr %19, align 8
  %21 = sdiv i32 %20, 2
  %22 = icmp sgt i32 %18, %21
  %23 = add i32 %18, %9
  %24 = icmp sgt i32 %23, %20
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 10
  %28 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 7
  %29 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 2
  %30 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %1, i32 0, i32 7
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  %33 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  %35 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 13
  %36 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 8
  %37 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 26
  %38 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 11
  %39 = icmp eq i32 %18, 0
  %40 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 38
  %41 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 17
  %42 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 42
  %43 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 49
  %44 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  %45 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5
  %47 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 70
  %48 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 50
  %49 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 50, i32 1
  br label %54

50:                                               ; preds = %17
  %51 = tail call ptr @llvm.thread.pointer() #9
  %52 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 85
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %52, i32 noundef %9, i32 noundef %18, i32 noundef %20) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 358, i32 noundef 9, ptr noundef null) #9
  br label %383

54:                                               ; preds = %135, %26
  %55 = phi i32 [ %2, %26 ], [ %69, %135 ]
  %56 = load ptr, ptr %27, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = shl i32 %55, 8
  %60 = and i32 %59, 32768
  %61 = xor i32 %60, 32768
  %62 = or i32 %61, %55
  %63 = load ptr, ptr @transaction_cache, align 4
  %64 = or i32 %62, 256
  %65 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %63, i32 noundef %64) #9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %383, label %67

67:                                               ; preds = %58, %54
  %68 = phi ptr [ null, %54 ], [ %65, %58 ]
  %69 = phi i32 [ %55, %54 ], [ %62, %58 ]
  call void @_raw_read_lock(ptr noundef %28) #9
  %70 = load i32, ptr %0, align 8
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76, !prof !8

73:                                               ; preds = %208, %67
  %74 = phi i32 [ %210, %208 ], [ %70, %67 ]
  %75 = phi ptr [ %209, %208 ], [ %68, %67 ]
  br label %77

76:                                               ; preds = %208, %120, %67
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 389, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

77:                                               ; preds = %120, %73
  %78 = phi i32 [ %74, %73 ], [ %121, %120 ]
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, ptr %29, align 8
  %83 = icmp ne i32 %82, 0
  %84 = and i32 %78, 4
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %96

87:                                               ; preds = %81, %77
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !16
  %88 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %28) #9, !srcloc !17
  %89 = extractvalue { i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %92

92:                                               ; preds = %91, %87
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %93 = icmp ult ptr %75, inttoptr (i32 17 to ptr)
  br i1 %93, label %383, label %94, !prof !10

94:                                               ; preds = %92
  %95 = load ptr, ptr @transaction_cache, align 4
  call void @kmem_cache_free(ptr noundef %95, ptr noundef %75) #9
  br label %383

96:                                               ; preds = %81
  %97 = load i32, ptr %30, align 4
  %98 = and i32 %97, 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = load i32, ptr %36, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %124, label %103

103:                                              ; preds = %100
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !16
  %104 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %28) #9, !srcloc !17
  %105 = extractvalue { i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %108

108:                                              ; preds = %107, %103
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %109 = load i32, ptr %36, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !21
  call void @init_wait_entry(ptr noundef nonnull %7, i32 noundef 0) #9
  %112 = call i32 @prepare_to_wait_event(ptr noundef %35, ptr noundef nonnull %7, i32 noundef 2) #9
  %113 = load i32, ptr %36, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %115, %111
  call void @schedule() #9
  %116 = call i32 @prepare_to_wait_event(ptr noundef %35, ptr noundef nonnull %7, i32 noundef 2) #9
  %117 = load i32, ptr %36, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %115

119:                                              ; preds = %115, %111
  call void @finish_wait(ptr noundef %35, ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #9
  br label %120

120:                                              ; preds = %350, %329, %309, %294, %259, %258, %241, %223, %119, %108
  call void @_raw_read_lock(ptr noundef %28) #9
  %121 = load i32, ptr %0, align 8
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %77, label %76, !prof !8

124:                                              ; preds = %100
  %125 = load ptr, ptr %27, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %213

127:                                              ; preds = %96
  %128 = load ptr, ptr %27, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %330

130:                                              ; preds = %127, %124
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !16
  %131 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %28) #9, !srcloc !17
  %132 = extractvalue { i32, i32 } %131, 0
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %135

135:                                              ; preds = %134, %130
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %136 = icmp eq ptr %75, null
  br i1 %136, label %54, label %137

137:                                              ; preds = %135
  call void @_raw_write_lock(ptr noundef %28) #9
  %138 = load ptr, ptr %27, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %208

140:                                              ; preds = %137
  %141 = load i32, ptr %30, align 4
  %142 = and i32 %141, 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, ptr %36, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %208

147:                                              ; preds = %144, %140
  store ptr %0, ptr %75, align 8
  %148 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 2
  store i32 0, ptr %148, align 8
  %149 = call i64 @ktime_get() #9
  %150 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 24
  store i64 %149, ptr %150, align 8
  %151 = load i32, ptr %42, align 8
  %152 = add i32 %151, 1
  store i32 %152, ptr %42, align 8
  %153 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 1
  store i32 %151, ptr %153, align 4
  %154 = load volatile i32, ptr @jiffies, align 64
  %155 = load i32, ptr %43, align 8
  %156 = add i32 %155, %154
  %157 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 23
  store i32 %156, ptr %157, align 4
  %158 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 12
  store i32 0, ptr %158, align 4
  %159 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 17
  store volatile i32 0, ptr %159, align 4
  %160 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 18
  %161 = load i32, ptr %44, align 8
  %162 = load i32, ptr %45, align 8
  %163 = icmp sgt i32 %162, 1
  br i1 %163, label %164, label %177

164:                                              ; preds = %147
  %165 = load ptr, ptr %46, align 4
  %166 = getelementptr inbounds %struct.journal_superblock_s, ptr %165, i32 0, i32 8
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 402653184
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %164
  %171 = load ptr, ptr %47, align 8
  %172 = icmp eq ptr %171, null
  %173 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %174 = xor i1 %173, true
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %177, !prof !10

176:                                              ; preds = %170
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1735, i32 noundef 9, ptr noundef null) #9
  br label %177

177:                                              ; preds = %176, %170, %164, %147
  %178 = load ptr, ptr %47, align 8
  %179 = icmp eq ptr %178, null
  %180 = select i1 %179, i32 -28, i32 -32
  %181 = add i32 %161, -16
  %182 = add i32 %181, %180
  %183 = call i32 @journal_tag_bytes(ptr noundef %0) #9
  %184 = udiv i32 %182, %183
  %185 = load i32, ptr %19, align 8
  %186 = add i32 %184, -1
  %187 = add i32 %186, %185
  %188 = sdiv i32 %187, %184
  %189 = add i32 %188, 1
  %190 = load volatile i32, ptr %40, align 4
  %191 = add i32 %189, %190
  store volatile i32 %191, ptr %160, align 4
  %192 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 19
  store volatile i32 0, ptr %192, align 4
  %193 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 20
  store volatile i32 0, ptr %193, align 4
  %194 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 11
  store volatile ptr %194, ptr %194, align 4
  %195 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 11, i32 1
  store ptr %194, ptr %195, align 4
  %196 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 27
  store volatile ptr %196, ptr %196, align 4
  %197 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 27, i32 1
  store ptr %196, ptr %197, align 4
  %198 = load i32, ptr %157, align 4
  %199 = call i32 @round_jiffies_up(i32 noundef %198) #9
  store i32 %199, ptr %49, align 4
  call void @add_timer(ptr noundef %48) #9
  %200 = load ptr, ptr %27, align 8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %203, label %202, !prof !8

202:                                              ; preds = %177
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

203:                                              ; preds = %177
  store ptr %75, ptr %27, align 8
  %204 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 13
  store i32 0, ptr %204, align 8
  %205 = load volatile i32, ptr @jiffies, align 64
  %206 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 14
  store i32 %205, ptr %206, align 4
  %207 = getelementptr inbounds %struct.transaction_s, ptr %75, i32 0, i32 15
  store i32 0, ptr %207, align 8
  br label %208

208:                                              ; preds = %203, %144, %137
  %209 = phi ptr [ %75, %137 ], [ null, %203 ], [ %75, %144 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %28, i32 0) #9, !srcloc !24
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  call void @_raw_read_lock(ptr noundef %28) #9
  %210 = load i32, ptr %0, align 8
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %73, label %76, !prof !8

213:                                              ; preds = %124
  %214 = getelementptr inbounds %struct.transaction_s, ptr %125, i32 0, i32 2
  %215 = load i32, ptr %214, align 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %213
  %218 = icmp ugt i32 %215, 2
  %219 = load i1, ptr @add_transaction_credits.__already_done, align 1
  %220 = xor i1 %219, true
  %221 = select i1 %218, i1 %220, i1 false
  br i1 %221, label %222, label %223, !prof !10

222:                                              ; preds = %217
  store i1 true, ptr @add_transaction_credits.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef null) #9
  br label %223

223:                                              ; preds = %222, %217
  call fastcc void @wait_transaction_locked(ptr noundef %0) #9
  br label %120

224:                                              ; preds = %213
  %225 = getelementptr inbounds %struct.transaction_s, ptr %125, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %225) #9, !srcloc !16
  %226 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %225, ptr %225, i32 %23, ptr elementtype(i32) %225) #9, !srcloc !27
  %227 = extractvalue { i32, i32 } %226, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %228 = load i32, ptr %19, align 8
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %260

230:                                              ; preds = %224
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %225) #9, !srcloc !16
  %231 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %225, ptr %225, i32 %23, ptr elementtype(i32) %225) #9, !srcloc !29
  %232 = load volatile i32, ptr %40, align 4
  %233 = add i32 %232, %23
  %234 = load i32, ptr %19, align 8
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %259

236:                                              ; preds = %230
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !16
  %237 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %28) #9, !srcloc !17
  %238 = extractvalue { i32, i32 } %237, 0
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %241

241:                                              ; preds = %240, %236
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %242 = load volatile i32, ptr %40, align 4
  %243 = add i32 %242, %23
  %244 = load i32, ptr %19, align 8
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %120

246:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #9, !annotation !21
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #9
  %247 = call i32 @prepare_to_wait_event(ptr noundef %41, ptr noundef nonnull %5, i32 noundef 2) #9
  %248 = load volatile i32, ptr %40, align 4
  %249 = add i32 %248, %23
  %250 = load i32, ptr %19, align 8
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %252, %246
  call void @schedule() #9
  %253 = call i32 @prepare_to_wait_event(ptr noundef %41, ptr noundef nonnull %5, i32 noundef 2) #9
  %254 = load volatile i32, ptr %40, align 4
  %255 = add i32 %254, %23
  %256 = load i32, ptr %19, align 8
  %257 = icmp sgt i32 %255, %256
  br i1 %257, label %252, label %258

258:                                              ; preds = %252, %246
  call void @finish_wait(ptr noundef %41, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br label %120

259:                                              ; preds = %230
  call fastcc void @wait_transaction_locked(ptr noundef %0) #9
  br label %120

260:                                              ; preds = %224
  %261 = load i32, ptr %37, align 4
  %262 = add i32 %261, -32
  %263 = load ptr, ptr %38, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %269, label %265

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.transaction_s, ptr %263, i32 0, i32 18
  %267 = load volatile i32, ptr %266, align 4
  %268 = sub i32 %262, %267
  br label %269

269:                                              ; preds = %265, %260
  %270 = phi i32 [ %268, %265 ], [ %262, %260 ]
  %271 = call i32 @llvm.smax.i32(i32 %270, i32 0) #9
  %272 = icmp ult i32 %271, %228
  br i1 %272, label %273, label %295

273:                                              ; preds = %269
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %225) #9, !srcloc !16
  %274 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %225, ptr %225, i32 %23, ptr elementtype(i32) %225) #9, !srcloc !29
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !16
  %275 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %28) #9, !srcloc !17
  %276 = extractvalue { i32, i32 } %275, 0
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %279

279:                                              ; preds = %278, %273
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  call void @_raw_write_lock(ptr noundef %28) #9
  %280 = load i32, ptr %37, align 4
  %281 = add i32 %280, -32
  %282 = load ptr, ptr %38, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.transaction_s, ptr %282, i32 0, i32 18
  %286 = load volatile i32, ptr %285, align 4
  %287 = sub i32 %281, %286
  br label %288

288:                                              ; preds = %284, %279
  %289 = phi i32 [ %287, %284 ], [ %281, %279 ]
  %290 = call i32 @llvm.smax.i32(i32 %289, i32 0) #9
  %291 = load i32, ptr %19, align 8
  %292 = icmp ult i32 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  call void @__jbd2_log_wait_for_space(ptr noundef %0) #9
  br label %294

294:                                              ; preds = %293, %288
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %28, i32 0) #9, !srcloc !24
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %120

295:                                              ; preds = %269
  br i1 %39, label %355, label %296

296:                                              ; preds = %295
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #9, !srcloc !16
  %297 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 %18, ptr elementtype(i32) %40) #9, !srcloc !27
  %298 = extractvalue { i32, i32 } %297, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %299 = load i32, ptr %19, align 8
  %300 = sdiv i32 %299, 2
  %301 = icmp sgt i32 %298, %300
  br i1 %301, label %302, label %355

302:                                              ; preds = %296
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #9, !srcloc !16
  %303 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 %18, ptr elementtype(i32) %40) #9, !srcloc !29
  call void @__wake_up(ptr noundef %41, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %225) #9, !srcloc !16
  %304 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %225, ptr %225, i32 %23, ptr elementtype(i32) %225) #9, !srcloc !29
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !16
  %305 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %28) #9, !srcloc !17
  %306 = extractvalue { i32, i32 } %305, 0
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %302
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %309

309:                                              ; preds = %308, %302
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %310 = load volatile i32, ptr %40, align 4
  %311 = add i32 %310, %18
  %312 = load i32, ptr %19, align 8
  %313 = sdiv i32 %312, 2
  %314 = icmp sgt i32 %311, %313
  br i1 %314, label %315, label %120

315:                                              ; preds = %309
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #9, !annotation !21
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #9
  %316 = call i32 @prepare_to_wait_event(ptr noundef %41, ptr noundef nonnull %6, i32 noundef 2) #9
  %317 = load volatile i32, ptr %40, align 4
  %318 = add i32 %317, %18
  %319 = load i32, ptr %19, align 8
  %320 = sdiv i32 %319, 2
  %321 = icmp sgt i32 %318, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %322, %315
  call void @schedule() #9
  %323 = call i32 @prepare_to_wait_event(ptr noundef %41, ptr noundef nonnull %6, i32 noundef 2) #9
  %324 = load volatile i32, ptr %40, align 4
  %325 = add i32 %324, %18
  %326 = load i32, ptr %19, align 8
  %327 = sdiv i32 %326, 2
  %328 = icmp sgt i32 %325, %327
  br i1 %328, label %322, label %329

329:                                              ; preds = %322, %315
  call void @finish_wait(ptr noundef %41, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  br label %120

330:                                              ; preds = %127
  %331 = getelementptr inbounds %struct.transaction_s, ptr %128, i32 0, i32 2
  %332 = load i32, ptr %331, align 8
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %351

334:                                              ; preds = %330
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  %335 = tail call ptr @llvm.thread.pointer() #9
  store i32 0, ptr %4, align 4
  store ptr %335, ptr %31, align 4
  store ptr @autoremove_wake_function, ptr %32, align 4
  store ptr %33, ptr %33, align 4
  store ptr %33, ptr %34, align 4
  %336 = load i32, ptr %331, align 8
  %337 = icmp eq i32 %336, 2
  br i1 %337, label %344, label %338, !prof !8

338:                                              ; preds = %334
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !16
  %339 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %28) #9, !srcloc !17
  %340 = extractvalue { i32, i32 } %339, 0
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %343

343:                                              ; preds = %342, %338
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %350

344:                                              ; preds = %334
  call void @prepare_to_wait(ptr noundef %35, ptr noundef nonnull %4, i32 noundef 2) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !16
  %345 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %28) #9, !srcloc !17
  %346 = extractvalue { i32, i32 } %345, 0
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %344
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %349

349:                                              ; preds = %348, %344
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  call void @schedule() #9
  call void @finish_wait(ptr noundef %35, ptr noundef nonnull %4) #9
  br label %350

350:                                              ; preds = %349, %343
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  br label %120

351:                                              ; preds = %330
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #9, !srcloc !16
  %352 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 %9, ptr elementtype(i32) %40) #9, !srcloc !29
  call void @__wake_up(ptr noundef %41, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %353 = load i32, ptr %30, align 4
  %354 = and i32 %353, -5
  store i32 %354, ptr %30, align 4
  br label %355

355:                                              ; preds = %351, %296, %295
  %356 = phi ptr [ %128, %351 ], [ %125, %295 ], [ %125, %296 ]
  store ptr %356, ptr %1, align 4
  %357 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %1, i32 0, i32 9
  store i32 %9, ptr %357, align 4
  %358 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %1, i32 0, i32 3
  %359 = load i32, ptr %358, align 4
  %360 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %1, i32 0, i32 4
  store i32 %359, ptr %360, align 4
  %361 = load volatile i32, ptr @jiffies, align 64
  %362 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %1, i32 0, i32 8
  store i32 %361, ptr %362, align 4
  %363 = getelementptr inbounds %struct.transaction_s, ptr %356, i32 0, i32 17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %363) #9, !srcloc !16
  %364 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %363, ptr %363, i32 1, ptr elementtype(i32) %363) #9, !srcloc !30
  %365 = getelementptr inbounds %struct.transaction_s, ptr %356, i32 0, i32 20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %365) #9, !srcloc !16
  %366 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %365, ptr %365, i32 1, ptr elementtype(i32) %365) #9, !srcloc !30
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !16
  %367 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %28) #9, !srcloc !17
  %368 = extractvalue { i32, i32 } %367, 0
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %355
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %371

371:                                              ; preds = %370, %355
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %372 = tail call ptr @llvm.thread.pointer() #9
  %373 = getelementptr inbounds %struct.task_struct, ptr %372, i32 0, i32 113
  store ptr %1, ptr %373, align 4
  %374 = icmp ult ptr %75, inttoptr (i32 17 to ptr)
  br i1 %374, label %377, label %375, !prof !10

375:                                              ; preds = %371
  %376 = load ptr, ptr @transaction_cache, align 4
  call void @kmem_cache_free(ptr noundef %376, ptr noundef %75) #9
  br label %377

377:                                              ; preds = %375, %371
  %378 = getelementptr inbounds %struct.task_struct, ptr %372, i32 0, i32 4
  %379 = load i32, ptr %378, align 4
  %380 = and i32 %379, 262144
  %381 = or i32 %379, 262144
  store i32 %381, ptr %378, align 4
  %382 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %1, i32 0, i32 10
  store i32 %380, ptr %382, align 4
  br label %383

383:                                              ; preds = %377, %94, %92, %58, %50
  %384 = phi i32 [ -28, %50 ], [ 0, %377 ], [ -30, %92 ], [ -30, %94 ], [ -12, %58 ]
  ret i32 %384
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @jbd2_journal_start(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call ptr @jbd2__journal_start(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 3136, i32 noundef 0, i32 noundef 0)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_free_reserved(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.journal_s, ptr %2, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.journal_s, ptr %2, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 572, i32 noundef 9, ptr noundef null) #9
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.journal_s, ptr %6, i32 0, i32 38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #9, !srcloc !16
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 %14, ptr elementtype(i32) %15) #9, !srcloc !29
  %17 = getelementptr inbounds %struct.journal_s, ptr %6, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %17, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %18 = icmp eq ptr %5, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %13, align 4
  %21 = getelementptr inbounds %struct.transaction_s, ptr %5, i32 0, i32 18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #9, !srcloc !16
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 %20, ptr elementtype(i32) %21) #9, !srcloc !29
  br label %23

23:                                               ; preds = %19, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !16
  %24 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %3) #9, !srcloc !17
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %28

28:                                               ; preds = %27, %23
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %29 = load ptr, ptr @jbd2_handle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_start_reserved(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11, !prof !10

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 610, i32 noundef 9, ptr noundef null) #9
  %10 = tail call i32 @jbd2_journal_stop(ptr noundef %0)
  br label %53

11:                                               ; preds = %3
  %12 = tail call ptr @llvm.thread.pointer() #9
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 113
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 619, i32 noundef 9, ptr noundef null) #9
  tail call void @jbd2_journal_free_reserved(ptr noundef %0)
  br label %53

17:                                               ; preds = %11
  store ptr null, ptr %0, align 4
  %18 = tail call fastcc i32 @start_this_handle(ptr noundef %4, ptr noundef %0, i32 noundef 3136)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store ptr %4, ptr %0, align 4
  tail call void @jbd2_journal_free_reserved(ptr noundef %0)
  br label %53

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4
  %23 = shl i32 %1, 4
  %24 = and i32 %23, 4080
  %25 = and i32 %22, -268435441
  %26 = shl i32 %2, 12
  %27 = and i32 %26, 268431360
  %28 = or i32 %27, %24
  %29 = or i32 %28, %25
  store i32 %29, ptr %5, align 4
  %30 = getelementptr inbounds %struct.journal_s, ptr %4, i32 0, i32 36
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.transaction_s, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_start, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %52 = tail call i32 @__traceiter_jbd2_handle_start(ptr noundef null, i32 noundef %33, i32 noundef %36, i32 noundef %1, i32 noundef %2, i32 noundef %38) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %53

53:                                               ; preds = %51, %41, %21, %20, %16, %9
  %54 = phi i32 [ -5, %9 ], [ -5, %16 ], [ %18, %20 ], [ 0, %21 ], [ 0, %41 ], [ 0, %51 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_stop(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp ne i32 %11, 0
  %13 = icmp eq ptr %3, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %164, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %3, align 8
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 -5
  br label %164

21:                                               ; preds = %1
  %22 = icmp eq ptr %3, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = tail call ptr @llvm.thread.pointer() #9
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -262145
  %30 = or i32 %29, %25
  store i32 %30, ptr %27, align 4
  br label %155

31:                                               ; preds = %21
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, ptr %32, align 8
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 0, i32 -5
  br label %44

44:                                               ; preds = %39, %31
  %45 = phi i32 [ -5, %31 ], [ %43, %39 ]
  %46 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 36
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.block_device, ptr %47, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %36, 4
  %51 = and i32 %50, 255
  %52 = lshr i32 %36, 12
  %53 = and i32 %52, 65535
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 8
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 %54, %56
  %58 = and i32 %36, 1
  %59 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 9
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = sub i32 %60, %62
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_stats, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  %66 = tail call ptr @llvm.thread.pointer() #9
  br i1 %65, label %67, label %81

67:                                               ; preds = %44
  %68 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %78 = tail call i32 @__traceiter_jbd2_handle_stats(ptr noundef null, i32 noundef %49, i32 noundef %34, i32 noundef %51, i32 noundef %53, i32 noundef %57, i32 noundef %58, i32 noundef %60, i32 noundef %63) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !32
  %79 = load i32, ptr %35, align 4
  %80 = and i32 %79, 1
  br label %81

81:                                               ; preds = %77, %67, %44
  %82 = phi i32 [ %58, %67 ], [ %80, %77 ], [ %58, %44 ]
  %83 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 52
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %122, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 58
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, %84
  br i1 %89, label %122, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 61
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %122, label %94

94:                                               ; preds = %90
  store i32 %84, ptr %87, align 8
  %95 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %95) #9
  %96 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 59
  %97 = load i64, ptr %96, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %95) #9, !srcloc !16
  %98 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %95) #9, !srcloc !17
  %99 = extractvalue { i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %102

102:                                              ; preds = %101, %94
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %103 = tail call i64 @ktime_get() #9
  %104 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 24
  %105 = load i64, ptr %104, align 8
  %106 = sub i64 %103, %105
  %107 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 60
  %108 = load i32, ptr %107, align 8
  %109 = mul i32 %108, 1000
  %110 = zext i32 %109 to i64
  %111 = tail call i64 @llvm.umax.i64(i64 %97, i64 %110)
  %112 = load i32, ptr %91, align 4
  %113 = mul i32 %112, 1000
  %114 = zext i32 %113 to i64
  %115 = tail call i64 @llvm.umin.i64(i64 %111, i64 %114)
  %116 = icmp ult i64 %106, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %118 = tail call i64 @ktime_get() #9
  %119 = add i64 %118, %115
  store i64 %119, ptr %2, align 8
  %120 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 1
  store volatile i32 2, ptr %120, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  %121 = call i32 @schedule_hrtimeout(ptr noundef nonnull %2, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %122

122:                                              ; preds = %117, %102, %90, %86, %81
  %123 = load i32, ptr %35, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 25
  %128 = load i8, ptr %127, align 8
  %129 = or i8 %128, 1
  store i8 %129, ptr %127, align 8
  %130 = load i32, ptr %35, align 4
  br label %131

131:                                              ; preds = %126, %122
  %132 = phi i32 [ %130, %126 ], [ %123, %122 ]
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load volatile i32, ptr @jiffies, align 64
  %137 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 23
  %138 = load i32, ptr %137, align 4
  %139 = sub i32 %136, %138
  %140 = icmp sgt i32 %139, -1
  br i1 %140, label %141, label %154

141:                                              ; preds = %135, %131
  %142 = call i32 @jbd2_log_start_commit(ptr noundef %32, i32 noundef %34) #9
  %143 = load i32, ptr %35, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 2048
  %150 = icmp eq i32 %149, 0
  call fastcc void @stop_this_handle(ptr noundef %0)
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = call i32 @jbd2_log_wait_commit(ptr noundef %32, i32 noundef %34) #9
  br label %155

153:                                              ; preds = %141
  call fastcc void @stop_this_handle(ptr noundef %0)
  br label %155

154:                                              ; preds = %135
  call fastcc void @stop_this_handle(ptr noundef %0)
  br label %155

155:                                              ; preds = %154, %153, %151, %146, %23
  %156 = phi i32 [ %152, %151 ], [ %45, %146 ], [ 0, %23 ], [ %45, %153 ], [ %45, %154 ]
  %157 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr @jbd2_handle_cache, align 4
  call void @kmem_cache_free(ptr noundef %161, ptr noundef nonnull %158) #9
  br label %162

162:                                              ; preds = %160, %155
  %163 = load ptr, ptr @jbd2_handle_cache, align 4
  call void @kmem_cache_free(ptr noundef %163, ptr noundef %0) #9
  br label %164

164:                                              ; preds = %162, %15, %8
  %165 = phi i32 [ %156, %162 ], [ -5, %8 ], [ %20, %15 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_extend(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq ptr %4, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %95, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %95

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.journal_s, ptr %12, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %17) #9
  %18 = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %88

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.journal_s, ptr %12, i32 0, i32 48
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %23, -1
  %27 = add i32 %26, %2
  %28 = add i32 %27, %25
  %29 = sdiv i32 %28, %25
  %30 = add i32 %26, %25
  %31 = sdiv i32 %30, %25
  %32 = sub i32 %29, %31
  %33 = add i32 %32, %1
  %34 = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %34) #9
  %35 = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #9, !srcloc !16
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 %33, ptr elementtype(i32) %35) #9, !srcloc !27
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %38 = getelementptr inbounds %struct.journal_s, ptr %12, i32 0, i32 47
  %39 = load i32, ptr %38, align 8
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #9, !srcloc !16
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 %33, ptr elementtype(i32) %35) #9, !srcloc !29
  br label %84

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.journal_s, ptr %12, i32 0, i32 36
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %5, align 4
  %51 = lshr i32 %50, 4
  %52 = and i32 %51, 255
  %53 = lshr i32 %50, 12
  %54 = and i32 %53, 65535
  %55 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_extend, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %43
  %60 = tail call ptr @llvm.thread.pointer() #9
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %71 = tail call i32 @__traceiter_jbd2_handle_extend(ptr noundef null, i32 noundef %47, i32 noundef %49, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %33) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !35
  %72 = load i32, ptr %55, align 4
  br label %73

73:                                               ; preds = %70, %59, %43
  %74 = phi i32 [ %56, %43 ], [ %56, %59 ], [ %72, %70 ]
  %75 = add i32 %74, %33
  store i32 %75, ptr %55, align 4
  %76 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %33
  store i32 %78, ptr %76, align 4
  %79 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, %2
  store i32 %81, ptr %79, align 4
  %82 = load i32, ptr %22, align 4
  %83 = add i32 %82, %2
  store i32 %83, ptr %22, align 4
  br label %84

84:                                               ; preds = %73, %41
  %85 = phi i32 [ 1, %41 ], [ 0, %73 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %86 = load i16, ptr %34, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %88

88:                                               ; preds = %84, %16
  %89 = phi i32 [ %85, %84 ], [ 1, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #9, !srcloc !16
  %90 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %17) #9, !srcloc !17
  %91 = extractvalue { i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %94

94:                                               ; preds = %93, %88
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %95

95:                                               ; preds = %94, %11, %3
  %96 = phi i32 [ %89, %94 ], [ -30, %11 ], [ -30, %3 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp ne i32 %8, 0
  %10 = icmp eq ptr %5, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %75, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.transaction_s, ptr %5, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  tail call fastcc void @stop_this_handle(ptr noundef %0)
  store ptr null, ptr %0, align 4
  %20 = getelementptr inbounds %struct.journal_s, ptr %13, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.journal_s, ptr %13, i32 0, i32 44
  %22 = load i32, ptr %21, align 8
  %23 = xor i32 %22, -1
  %24 = add i32 %19, %23
  %25 = icmp sgt i32 %24, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #9, !srcloc !16
  %26 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %20) #9, !srcloc !17
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %30

30:                                               ; preds = %29, %17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br i1 %25, label %31, label %33

31:                                               ; preds = %30
  %32 = tail call i32 @jbd2_log_start_commit(ptr noundef %13, i32 noundef %19) #9
  br label %33

33:                                               ; preds = %31, %30
  %34 = getelementptr inbounds %struct.journal_s, ptr %13, i32 0, i32 48
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %2, -1
  %37 = add i32 %36, %35
  %38 = sdiv i32 %37, %35
  %39 = add i32 %38, %1
  %40 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 3
  store i32 %2, ptr %41, align 4
  %42 = tail call fastcc i32 @start_this_handle(ptr noundef %13, ptr noundef %0, i32 noundef %3)
  %43 = getelementptr inbounds %struct.journal_s, ptr %13, i32 0, i32 36
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.block_device, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %42, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.transaction_s, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %48, %33
  %53 = phi i32 [ %51, %48 ], [ 0, %33 ]
  %54 = load i32, ptr %6, align 4
  %55 = lshr i32 %54, 4
  %56 = and i32 %55, 255
  %57 = lshr i32 %54, 12
  %58 = and i32 %57, 65535
  %59 = load i32, ptr %40, align 4
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_handle_restart, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %52
  %63 = tail call ptr @llvm.thread.pointer() #9
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  %74 = tail call i32 @__traceiter_jbd2_handle_restart(ptr noundef null, i32 noundef %46, i32 noundef %53, i32 noundef %56, i32 noundef %58, i32 noundef %59) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  br label %75

75:                                               ; preds = %73, %62, %52, %12, %4
  %76 = phi i32 [ 0, %12 ], [ %42, %52 ], [ %42, %62 ], [ %42, %73 ], [ 0, %4 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stop_this_handle(ptr noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @llvm.thread.pointer() #9
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 113
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 730, 0\0A.popsection", ""() #9, !srcloc !40
  unreachable

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.transaction_s, ptr %2, i32 0, i32 17
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14, !prof !10

13:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 731, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

14:                                               ; preds = %9
  store ptr null, ptr %5, align 4
  %15 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = icmp eq i32 %16, %18
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  br label %50

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 48
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = add i32 %27, %19
  %29 = sdiv i32 %28, %26
  %30 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %29, %31
  %33 = load i1, ptr @stop_this_handle.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !10

36:                                               ; preds = %24
  store i1 true, ptr @stop_this_handle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 745, i32 noundef 9, ptr noundef null) #9
  br label %37

37:                                               ; preds = %36, %24
  %38 = getelementptr inbounds %struct.transaction_s, ptr %2, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #9, !srcloc !16
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 %19, ptr elementtype(i32) %38) #9, !srcloc !27
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %41 = add i32 %27, %40
  %42 = sdiv i32 %41, %26
  %43 = xor i32 %19, -1
  %44 = add i32 %26, %43
  %45 = add i32 %44, %40
  %46 = sdiv i32 %45, %26
  %47 = sub i32 %46, %42
  %48 = load i32, ptr %30, align 4
  %49 = add i32 %47, %48
  store i32 %49, ptr %30, align 4
  br label %50

50:                                               ; preds = %37, %21
  %51 = phi i32 [ %23, %21 ], [ %49, %37 ]
  %52 = getelementptr inbounds %struct.transaction_s, ptr %2, i32 0, i32 18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #9, !srcloc !16
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 %51, ptr elementtype(i32) %52) #9, !srcloc !29
  %54 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %55, align 4
  %59 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %55, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64, !prof !10

63:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 572, i32 noundef 9, ptr noundef null) #9
  br label %64

64:                                               ; preds = %63, %57
  %65 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %55, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.journal_s, ptr %58, i32 0, i32 38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #9, !srcloc !16
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 %66, ptr elementtype(i32) %67) #9, !srcloc !29
  %69 = getelementptr inbounds %struct.journal_s, ptr %58, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %69, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %70 = icmp eq ptr %2, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, ptr %65, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #9, !srcloc !16
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 %72, ptr elementtype(i32) %52) #9, !srcloc !29
  br label %74

74:                                               ; preds = %71, %64, %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #9, !srcloc !16
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #9, !srcloc !43
  %76 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !44
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %79, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 10
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, -262145
  %86 = or i32 %85, %82
  store i32 %86, ptr %83, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_log_start_commit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_restart(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 3136)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_wait_updates(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 17
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %13 = tail call ptr @llvm.thread.pointer() #9
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  %17 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 16
  %18 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 7
  br label %19

19:                                               ; preds = %25, %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4
  store ptr %13, ptr %12, align 4
  store ptr @autoremove_wake_function, ptr %14, align 4
  store ptr %15, ptr %15, align 4
  store ptr %15, ptr %16, align 4
  call void @prepare_to_wait(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 2) #9
  %20 = load volatile i32, ptr %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %23 = load i16, ptr %7, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %18, i32 0) #9, !srcloc !24
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  call void @schedule() #9
  call void @_raw_write_lock(ptr noundef %18) #9
  call void @_raw_spin_lock(ptr noundef %7) #9
  br label %25

25:                                               ; preds = %22, %19
  call void @finish_wait(ptr noundef %17, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  %26 = load volatile i32, ptr %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %25, %6
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %29 = load i16, ptr %7, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_lock_updates(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %5 = tail call ptr @llvm.thread.pointer() #9
  store i32 0, ptr %2, align 4
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 7
  call void @_raw_write_lock(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 38
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %9, i32 0) #9, !srcloc !24
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %17 = load volatile i32, ptr %13, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !21
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #9
  %20 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 17
  %21 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 2) #9
  %22 = load volatile i32, ptr %13, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %24, %19
  call void @schedule() #9
  %25 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 2) #9
  %26 = load volatile i32, ptr %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24, %19
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br label %29

29:                                               ; preds = %28, %16
  call void @_raw_write_lock(ptr noundef %9) #9
  br label %30

30:                                               ; preds = %29, %1
  call void @jbd2_journal_wait_updates(ptr noundef %0)
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %9, i32 0) #9, !srcloc !24
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %31 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 9
  call void @mutex_lock(ptr noundef %31) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_unlock_updates(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 919, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 7
  tail call void @_raw_write_lock(ptr noundef %8) #9
  %9 = load i32, ptr %2, align 8
  %10 = add i32 %9, -1
  store i32 %10, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %8, i32 0) #9, !srcloc !24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %11 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_get_write_access(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %1, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  %20 = load volatile i32, ptr %1, align 4
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 8
  %25 = load volatile ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.journal_head, ptr %25, i32 0, i32 7
  %29 = load volatile ptr, ptr %28, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.journal_head, ptr %25, i32 0, i32 8
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %30
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %23, %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  br label %40

37:                                               ; preds = %32, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !48
  %38 = load ptr, ptr %25, align 4
  %39 = icmp eq ptr %38, %1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %36, %15
  %41 = tail call ptr @jbd2_journal_add_journal_head(ptr noundef %1) #9
  %42 = tail call fastcc i32 @do_get_write_access(ptr noundef %0, ptr noundef %41, i32 noundef 0)
  tail call void @jbd2_journal_put_journal_head(ptr noundef %41) #9
  br label %43

43:                                               ; preds = %40, %37, %10, %7, %2
  %44 = phi i32 [ %42, %40 ], [ -30, %10 ], [ 0, %37 ], [ -30, %7 ], [ -30, %2 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_add_journal_head(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_get_write_access(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 7
  %8 = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 11
  %9 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 8
  %10 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %11 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 5
  %13 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 3
  %14 = icmp ne i32 %2, 0
  br label %15

15:                                               ; preds = %148, %3
  %16 = phi ptr [ %154, %148 ], [ null, %3 ]
  br label %17

17:                                               ; preds = %139, %15
  %18 = load ptr, ptr %1, align 4
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #9, !srcloc !16
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 4, ptr elementtype(i32) %18) #9, !srcloc !49
  %25 = extractvalue { i32, i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !50
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %17
  tail call void @__lock_buffer(ptr noundef %18) #9
  br label %29

29:                                               ; preds = %28, %23
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = icmp ult i32 %30, %19
  %32 = select i1 %31, i32 1073741822, i32 0
  %33 = sub i32 %30, %19
  %34 = add i32 %32, %33
  %35 = icmp ugt i32 %34, 10
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @jiffies_to_msecs(i32 noundef %34) #9
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_lock_buffer_stall, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = tail call ptr @llvm.thread.pointer() #9
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !51
  %56 = tail call i32 @__traceiter_jbd2_lock_buffer_stall(ptr noundef null, i32 noundef %40, i32 noundef %41) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  br label %57

57:                                               ; preds = %55, %44, %36, %29
  %58 = load volatile i32, ptr %18, align 4
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %7, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %82, label %64

64:                                               ; preds = %61
  %65 = icmp eq ptr %62, %4
  br i1 %65, label %70, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %8, align 4
  %68 = icmp eq ptr %62, %67
  br i1 %68, label %70, label %69, !prof !8

69:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1024, 0\0A.popsection", ""() #9, !srcloc !53
  unreachable

70:                                               ; preds = %66, %64
  %71 = load ptr, ptr %9, align 4
  %72 = icmp eq ptr %71, null
  %73 = icmp eq ptr %71, %4
  %74 = or i1 %72, %73
  br i1 %74, label %76, label %75, !prof !54

75:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1027, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 6
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 3
  %80 = load i64, ptr %79, align 8
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %78, i64 noundef %80) #10
  br label %82

82:                                               ; preds = %76, %61
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %18) #9
  %83 = load volatile i32, ptr %18, align 4
  %84 = and i32 %83, 2097152
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call void @_set_bit(i32 noundef 21, ptr noundef %18) #9
  br label %87

87:                                               ; preds = %86, %82, %57
  tail call void @unlock_buffer(ptr noundef %18) #9
  %88 = load i32, ptr %10, align 4
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %92, align 8
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94, %91, %87
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %100 = load i16, ptr %6, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %203

102:                                              ; preds = %94
  %103 = load ptr, ptr %7, align 4
  %104 = icmp eq ptr %103, %4
  br i1 %104, label %198, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %9, align 4
  %107 = icmp eq ptr %106, %4
  br i1 %107, label %198, label %108

108:                                              ; preds = %105
  store i32 0, ptr %11, align 4
  %109 = icmp eq ptr %103, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %108
  %111 = icmp eq ptr %106, null
  br i1 %111, label %113, label %112, !prof !8

112:                                              ; preds = %110
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

113:                                              ; preds = %110
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !57
  %114 = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %114) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef %1, ptr noundef %4, i32 noundef 4)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %115 = load i16, ptr %114, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %114, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %198

117:                                              ; preds = %108
  %118 = load ptr, ptr %12, align 4
  %119 = icmp eq ptr %118, null
  %120 = icmp eq ptr %106, null
  br i1 %119, label %123, label %121

121:                                              ; preds = %117
  br i1 %120, label %196, label %122, !prof !8

122:                                              ; preds = %121
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1089, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

123:                                              ; preds = %117
  br i1 %120, label %125, label %124, !prof !8

124:                                              ; preds = %123
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1094, 0\0A.popsection", ""() #9, !srcloc !59
  unreachable

125:                                              ; preds = %123
  %126 = load ptr, ptr %8, align 4
  %127 = icmp eq ptr %103, %126
  br i1 %127, label %129, label %128, !prof !8

128:                                              ; preds = %125
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1095, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

129:                                              ; preds = %125
  %130 = load volatile i32, ptr %18, align 4
  %131 = and i32 %130, 8388608
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %129
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %134 = load i16, ptr %6, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %136 = load volatile i32, ptr %18, align 4
  %137 = and i32 %136, 8388608
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %140, %133
  br label %17

140:                                              ; preds = %133
  %141 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %18, i32 noundef 23, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #9
  br label %139

142:                                              ; preds = %129
  %143 = load i32, ptr %13, align 4
  %144 = icmp eq i32 %143, 1
  %145 = or i1 %14, %144
  br i1 %145, label %146, label %196

146:                                              ; preds = %142
  %147 = icmp eq ptr %16, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %146
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %149 = load i16, ptr %6, align 4
  %150 = add i16 %149, 1
  store i16 %150, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %151 = load ptr, ptr %1, align 4
  %152 = getelementptr inbounds %struct.buffer_head, ptr %151, i32 0, i32 4
  %153 = load i32, ptr %152, align 8
  %154 = tail call ptr @jbd2_alloc(i32 noundef %153, i32 noundef 35904) #9
  br label %15

155:                                              ; preds = %146
  store ptr %16, ptr %12, align 4
  %156 = load ptr, ptr %1, align 4
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.jbd2_freeze_jh_data, ptr noundef nonnull @.str.12) #10
  %162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %163

163:                                              ; preds = %160, %155
  %164 = getelementptr inbounds %struct.buffer_head, ptr %156, i32 0, i32 2
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr inbounds %struct.buffer_head, ptr %156, i32 0, i32 5
  %167 = load ptr, ptr %166, align 4
  %168 = ptrtoint ptr %167 to i32
  %169 = and i32 %168, 4095
  %170 = load i32, ptr @pgprot_kernel, align 4
  %171 = or i32 %170, 512
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %172 = tail call ptr @llvm.thread.pointer() #9
  %173 = getelementptr inbounds %struct.task_struct, ptr %172, i32 0, i32 149
  %174 = load i32, ptr %173, align 8
  %175 = add i32 %174, 1
  store i32 %175, ptr %173, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %176 = tail call ptr @__kmap_local_page_prot(ptr noundef %165, i32 noundef %171) #9
  %177 = getelementptr i8, ptr %176, i32 %169
  %178 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 14
  %179 = load ptr, ptr %178, align 4
  %180 = load ptr, ptr %1, align 4
  %181 = icmp eq ptr %179, null
  br i1 %181, label %188, label %182

182:                                              ; preds = %163
  %183 = load ptr, ptr %179, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.buffer_head, ptr %180, i32 0, i32 4
  %187 = load i32, ptr %186, align 8
  tail call void %183(ptr noundef nonnull %179, ptr noundef %180, ptr noundef %177, i32 noundef %187) #9
  br label %188

188:                                              ; preds = %185, %182, %163
  %189 = load ptr, ptr %12, align 4
  %190 = getelementptr inbounds %struct.buffer_head, ptr %156, i32 0, i32 4
  %191 = load i32, ptr %190, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %189, ptr align 1 %177, i32 %191, i1 false) #9
  tail call void @kunmap_local_indexed(ptr noundef %176) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  %192 = load i32, ptr %173, align 8
  %193 = add i32 %192, -1
  store i32 %193, ptr %173, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %194 = load ptr, ptr %178, align 4
  %195 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 15
  store ptr %194, ptr %195, align 4
  br label %196

196:                                              ; preds = %188, %142, %121
  %197 = phi ptr [ %16, %121 ], [ null, %188 ], [ %16, %142 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !65
  store ptr %4, ptr %9, align 4
  br label %198

198:                                              ; preds = %196, %113, %105, %102
  %199 = phi ptr [ %197, %196 ], [ %16, %113 ], [ %16, %105 ], [ %16, %102 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %200 = load i16, ptr %6, align 4
  %201 = add i16 %200, 1
  store i16 %201, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %202 = tail call i32 @jbd2_journal_cancel_revoke(ptr noundef %0, ptr noundef %1) #9
  br label %203

203:                                              ; preds = %198, %99
  %204 = phi i32 [ -30, %99 ], [ 0, %198 ]
  %205 = phi ptr [ %16, %99 ], [ %199, %198 ]
  %206 = icmp eq ptr %205, null
  br i1 %206, label %210, label %207, !prof !8

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 4
  %209 = load i32, ptr %208, align 8
  tail call void @jbd2_free(ptr noundef nonnull %205, i32 noundef %209) #9
  br label %210

210:                                              ; preds = %207, %203
  ret i32 %204
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_put_journal_head(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_get_create_access(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call ptr @jbd2_journal_add_journal_head(ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %64

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.journal_head, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.journal_head, ptr %4, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %3
  %23 = icmp eq ptr %21, null
  %24 = or i1 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.journal_s, ptr %18, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %21, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.journal_head, ptr %4, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %34, label %33, !prof !8

33:                                               ; preds = %29, %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1295, 0\0A.popsection", ""() #9, !srcloc !66
  unreachable

34:                                               ; preds = %29, %17
  %35 = getelementptr inbounds %struct.journal_head, ptr %4, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38, !prof !8

38:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1297, 0\0A.popsection", ""() #9, !srcloc !67
  unreachable

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 4
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45, !prof !10

44:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1298, 0\0A.popsection", ""() #9, !srcloc !68
  unreachable

45:                                               ; preds = %39
  br i1 %23, label %46, label %51

46:                                               ; preds = %45
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %40) #9
  %47 = getelementptr inbounds %struct.journal_head, ptr %4, i32 0, i32 4
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.journal_s, ptr %18, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %48) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef %4, ptr noundef %3, i32 noundef 4)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %49 = load i16, ptr %48, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %60

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.journal_s, ptr %18, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %21, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.journal_head, ptr %4, i32 0, i32 4
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.journal_s, ptr %18, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %57) #9
  store ptr %3, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %58 = load i16, ptr %57, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %60

60:                                               ; preds = %55, %51, %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %61 = load i16, ptr %19, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %63 = tail call i32 @jbd2_journal_cancel_revoke(ptr noundef %0, ptr noundef %4) #9
  br label %64

64:                                               ; preds = %60, %12, %9, %2
  %65 = phi i32 [ -30, %12 ], [ 0, %60 ], [ -30, %9 ], [ -30, %2 ]
  tail call void @jbd2_journal_put_journal_head(ptr noundef %4) #9
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__jbd2_journal_file_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr inbounds %struct.journal_s, ptr %6, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %8 = load volatile i32, ptr %7, align 4
  store volatile i32 %8, ptr %4, align 4
  %9 = lshr i32 %8, 16
  %10 = and i32 %8, 65535
  %11 = icmp eq i32 %10, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2505, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 4
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2507, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %20, %1
  %22 = icmp ne ptr %20, null
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %25, !prof !10

24:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2509, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

25:                                               ; preds = %18
  %26 = icmp eq i32 %15, %2
  %27 = select i1 %22, i1 %26, i1 false
  br i1 %27, label %97, label %28

28:                                               ; preds = %25
  %29 = add i32 %2, -1
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load volatile i32, ptr %5, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %39 = load i64, ptr %38, align 8
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %37, i64 noundef %39) #10
  br label %41

41:                                               ; preds = %35, %31
  %42 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %5) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %5) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %44, %28
  %49 = phi i1 [ true, %44 ], [ false, %47 ], [ true, %28 ]
  %50 = load ptr, ptr %19, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %0)
  br label %55

53:                                               ; preds = %48
  %54 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %5) #9
  br label %55

55:                                               ; preds = %53, %52
  store ptr %1, ptr %19, align 4
  switch i32 %2, label %77 [
    i32 0, label %56
    i32 1, label %66
    i32 2, label %71
    i32 3, label %73
    i32 4, label %75
  ]

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !8

60:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2538, 0\0A.popsection", ""() #9, !srcloc !72
  unreachable

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %97, label %65, !prof !8

65:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2539, 0\0A.popsection", ""() #9, !srcloc !73
  unreachable

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 4
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8
  %70 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 6
  br label %77

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 7
  br label %77

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 10
  br label %77

75:                                               ; preds = %55
  %76 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 5
  br label %77

77:                                               ; preds = %75, %73, %71, %66, %55
  %78 = phi ptr [ null, %55 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], [ %70, %66 ]
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 10
  store ptr %0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 9
  store ptr %0, ptr %83, align 4
  br label %90

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.journal_head, ptr %79, i32 0, i32 10
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 10
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 9
  store ptr %79, ptr %88, align 4
  store ptr %0, ptr %85, align 4
  %89 = getelementptr inbounds %struct.journal_head, ptr %86, i32 0, i32 9
  br label %90

90:                                               ; preds = %84, %81
  %91 = phi ptr [ %89, %84 ], [ %78, %81 ]
  store ptr %0, ptr %91, align 4
  store i32 %2, ptr %14, align 4
  br i1 %49, label %97, label %92

92:                                               ; preds = %90
  %93 = load volatile i32, ptr %5, align 4
  %94 = and i32 %93, 2097152
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  tail call void @_set_bit(i32 noundef 21, ptr noundef %5) #9
  br label %97

97:                                               ; preds = %96, %92, %90, %61, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_cancel_revoke(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_get_undo_access(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %82

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %82, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %82

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %1, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  %20 = load volatile i32, ptr %1, align 4
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 8
  %25 = load volatile ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.journal_head, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.journal_head, ptr %25, i32 0, i32 7
  %33 = load volatile ptr, ptr %32, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.journal_head, ptr %25, i32 0, i32 8
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %34
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %27, %23, %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  br label %44

41:                                               ; preds = %36, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !48
  %42 = load ptr, ptr %25, align 4
  %43 = icmp eq ptr %42, %1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  br i1 %43, label %82, label %44

44:                                               ; preds = %41, %40, %15
  %45 = tail call ptr @jbd2_journal_add_journal_head(ptr noundef %1) #9
  %46 = tail call fastcc i32 @do_get_write_access(ptr noundef %0, ptr noundef %45, i32 noundef 1)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.journal_head, ptr %45, i32 0, i32 6
  %50 = getelementptr inbounds %struct.journal_head, ptr %45, i32 0, i32 1
  br label %52

51:                                               ; preds = %44
  tail call void @jbd2_journal_put_journal_head(ptr noundef %45) #9
  br label %82

52:                                               ; preds = %66, %48
  %53 = load ptr, ptr %49, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load ptr, ptr %45, align 4
  %57 = getelementptr inbounds %struct.buffer_head, ptr %56, i32 0, i32 4
  %58 = load i32, ptr %57, align 8
  %59 = tail call ptr @jbd2_alloc(i32 noundef %58, i32 noundef 35904) #9
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi ptr [ null, %52 ], [ %59, %55 ]
  tail call void @_raw_spin_lock(ptr noundef %50) #9
  %62 = load ptr, ptr %49, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = icmp eq ptr %61, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %67 = load i16, ptr %50, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %52

69:                                               ; preds = %64
  store ptr %61, ptr %49, align 4
  %70 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %73 = load i32, ptr %72, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %61, ptr align 1 %71, i32 %73, i1 false)
  br label %74

74:                                               ; preds = %69, %60
  %75 = phi ptr [ null, %69 ], [ %61, %60 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %76 = load i16, ptr %50, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void @jbd2_journal_put_journal_head(ptr noundef %45) #9
  %78 = icmp eq ptr %75, null
  br i1 %78, label %82, label %79, !prof !8

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %81 = load i32, ptr %80, align 8
  tail call void @jbd2_free(ptr noundef nonnull %75, i32 noundef %81) #9
  br label %82

82:                                               ; preds = %79, %74, %51, %41, %10, %7, %2
  %83 = phi i32 [ -30, %10 ], [ 0, %41 ], [ 0, %79 ], [ 0, %74 ], [ %46, %51 ], [ -30, %7 ], [ -30, %2 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_set_triggers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %0) #9
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @jbd2_journal_set_triggers.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %2
  store i1 true, ptr @jbd2_journal_set_triggers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1435, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %12, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.journal_head, ptr %3, i32 0, i32 14
  store ptr %1, ptr %11, align 4
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %3) #9
  br label %12

12:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_grab_journal_head(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_buffer_frozen_trigger(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %2, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  tail call void %7(ptr noundef nonnull %2, ptr noundef %4, ptr noundef %1, i32 noundef %11) #9
  br label %12

12:                                               ; preds = %9, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_buffer_abort_trigger(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.jbd2_buffer_trigger_type, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  tail call void %6(ptr noundef nonnull %1, ptr noundef %9) #9
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_dirty_metadata(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq ptr %3, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %188, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %188

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %1, align 4
  %17 = and i32 %16, 65536
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %188, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %3
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %30) #9
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %26, align 4
  %35 = icmp eq ptr %34, %3
  br i1 %35, label %37, label %36, !prof !8

36:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1514, 0\0A.popsection", ""() #9, !srcloc !74
  unreachable

37:                                               ; preds = %33, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %38 = load i16, ptr %30, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %40

40:                                               ; preds = %37, %25, %19
  %41 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load ptr, ptr %22, align 4
  %46 = icmp eq ptr %45, %3
  br i1 %46, label %47, label %188

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %188, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %52) #9
  %53 = load ptr, ptr %22, align 4
  %54 = icmp eq ptr %53, %3
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, ptr %48, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %75, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %4, align 4
  %60 = lshr i32 %59, 4
  %61 = and i32 %60, 255
  %62 = lshr i32 %59, 12
  %63 = and i32 %62, 65535
  %64 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %65 = load i64, ptr %64, align 8
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %61, i32 noundef %63, i64 noundef %65, i32 noundef %56) #10
  %67 = load ptr, ptr %22, align 4
  br label %68

68:                                               ; preds = %58, %51
  %69 = phi ptr [ %53, %51 ], [ %67, %58 ]
  %70 = icmp eq ptr %69, %3
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, ptr %48, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %75, label %74, !prof !8

74:                                               ; preds = %71
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1530, 0\0A.popsection", ""() #9, !srcloc !75
  unreachable

75:                                               ; preds = %71, %68, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %76 = load i16, ptr %52, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %188

78:                                               ; preds = %40
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %80) #9
  %81 = load i32, ptr %41, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load i32, ptr %4, align 4
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load ptr, ptr %0, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi ptr [ %88, %87 ], [ %0, %83 ]
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.journal_s, ptr %91, i32 0, i32 48
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %95, -1
  %99 = add i32 %98, %97
  %100 = sdiv i32 %99, %97
  %101 = sub i32 %93, %100
  %102 = icmp slt i32 %101, 1
  %103 = load i1, ptr @jbd2_journal_dirty_metadata.__already_done, align 1
  %104 = xor i1 %103, true
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %107, !prof !10

106:                                              ; preds = %89
  store i1 true, ptr @jbd2_journal_dirty_metadata.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1545, i32 noundef 9, ptr noundef null) #9
  br label %107

107:                                              ; preds = %106, %89
  br i1 %102, label %184, label %108

108:                                              ; preds = %107
  store i32 1, ptr %41, align 4
  %109 = load i32, ptr %92, align 4
  %110 = add i32 %109, -1
  store i32 %110, ptr %92, align 4
  br label %111

111:                                              ; preds = %108, %78
  %112 = load ptr, ptr %22, align 4
  %113 = icmp eq ptr %112, %3
  br i1 %113, label %114, label %135

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.journal_s, ptr %79, i32 0, i32 10
  %120 = load ptr, ptr %119, align 8
  %121 = icmp eq ptr %3, %120
  br i1 %121, label %184, label %122, !prof !8

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.journal_s, ptr %79, i32 0, i32 35
  %124 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %125 = load i64, ptr %124, align 8
  %126 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq ptr %120, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.transaction_s, ptr %120, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %122
  %133 = phi i32 [ %131, %129 ], [ 0, %122 ]
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %123, i64 noundef %125, ptr noundef nonnull %3, i32 noundef %127, ptr noundef %120, i32 noundef %133) #10
  br label %184

135:                                              ; preds = %114, %111
  %136 = load volatile i32, ptr %1, align 4
  %137 = and i32 %136, 2097152
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  tail call void @_set_bit(i32 noundef 21, ptr noundef %1) #9
  %140 = load ptr, ptr %22, align 4
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi ptr [ %112, %135 ], [ %140, %139 ]
  %143 = icmp eq ptr %142, %3
  br i1 %143, label %175, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.journal_s, ptr %79, i32 0, i32 11
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %142, %146
  br i1 %147, label %148, label %152, !prof !8

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 8
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %3
  br i1 %151, label %184, label %152, !prof !8

152:                                              ; preds = %148, %144
  %153 = getelementptr inbounds %struct.journal_s, ptr %79, i32 0, i32 35
  %154 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %155 = load i64, ptr %154, align 8
  %156 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq ptr %142, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.transaction_s, ptr %142, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  br label %162

162:                                              ; preds = %159, %152
  %163 = phi i32 [ %161, %159 ], [ 0, %152 ]
  %164 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 8
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.transaction_s, ptr %165, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  br label %170

170:                                              ; preds = %167, %162
  %171 = phi i32 [ %169, %167 ], [ 0, %162 ]
  %172 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %153, i64 noundef %155, ptr noundef nonnull %3, i32 noundef %157, ptr noundef %142, i32 noundef %163, ptr noundef %165, i32 noundef %171, i32 noundef %173) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1607, i32 noundef 9, ptr noundef null) #9
  br label %184

175:                                              ; preds = %141
  %176 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179, !prof !8

179:                                              ; preds = %175
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1616, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.journal_s, ptr %79, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %181) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef %21, ptr noundef nonnull %3, i32 noundef 1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %182 = load i16, ptr %181, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %181, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %184

184:                                              ; preds = %180, %170, %148, %132, %118, %107
  %185 = phi i32 [ -22, %132 ], [ 0, %118 ], [ -22, %170 ], [ 0, %148 ], [ 0, %180 ], [ -28, %107 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %186 = load i16, ptr %80, align 4
  %187 = add i16 %186, 1
  store i16 %187, ptr %80, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %188

188:                                              ; preds = %184, %75, %47, %44, %15, %10, %2
  %189 = phi i32 [ -30, %10 ], [ -117, %15 ], [ 0, %75 ], [ 0, %47 ], [ %185, %184 ], [ 0, %44 ], [ -30, %2 ]
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_forget(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq ptr %3, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %111, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %111

15:                                               ; preds = %10
  %16 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %1) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @__bforget(ptr noundef %1) #9
  br label %111

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.jbd2_journal_forget, ptr noundef nonnull @.str.7) #10
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %102

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  store i32 0, ptr %28, align 4
  %30 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !8

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1687, 0\0A.popsection", ""() #9, !srcloc !77
  unreachable

38:                                               ; preds = %33
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %1) #9
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %1) #9
  %39 = icmp ne i32 %29, 0
  %40 = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %40) #9
  %41 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %16)
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %16, ptr noundef nonnull %3, i32 noundef 2)
  br label %55

45:                                               ; preds = %38
  %46 = load ptr, ptr %30, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !10

48:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2065, 0\0A.popsection", ""() #9, !srcloc !78
  unreachable

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !8

53:                                               ; preds = %49
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2066, 0\0A.popsection", ""() #9, !srcloc !79
  unreachable

54:                                               ; preds = %49
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %16) #9
  store ptr null, ptr %30, align 4
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %16) #9
  br label %55

55:                                               ; preds = %54, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %56 = load i16, ptr %40, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %40, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %102

58:                                               ; preds = %27
  %59 = icmp eq ptr %31, null
  br i1 %59, label %83, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 11
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %31, %62
  br i1 %63, label %65, label %64, !prof !8

64:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1727, 0\0A.popsection", ""() #9, !srcloc !80
  unreachable

65:                                               ; preds = %60
  %66 = load volatile i32, ptr %1, align 4
  %67 = and i32 %66, 262144
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void @_set_bit(i32 noundef 18, ptr noundef %1) #9
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %75) #9
  store ptr %3, ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %76 = load i16, ptr %75, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %102

78:                                               ; preds = %70
  %79 = icmp eq ptr %72, %3
  br i1 %79, label %81, label %80, !prof !8

80:                                               ; preds = %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1745, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

81:                                               ; preds = %78
  %82 = icmp ne i32 %29, 0
  br label %102

83:                                               ; preds = %58
  %84 = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %84) #9
  %85 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 11
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %89 = load i16, ptr %84, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %84, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %102

91:                                               ; preds = %83
  %92 = load volatile i32, ptr %1, align 4
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %16) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %97 = load i16, ptr %84, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %84, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %102

99:                                               ; preds = %91
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %1) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %16, ptr noundef nonnull %3, i32 noundef 2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %100 = load i16, ptr %84, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %84, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %102

102:                                              ; preds = %99, %95, %88, %81, %74, %55, %24
  %103 = phi i1 [ %39, %55 ], [ false, %74 ], [ false, %99 ], [ false, %95 ], [ false, %88 ], [ false, %24 ], [ %82, %81 ]
  %104 = phi i32 [ 0, %55 ], [ 0, %74 ], [ 0, %99 ], [ 0, %95 ], [ 0, %88 ], [ -5, %24 ], [ 0, %81 ]
  tail call void @__brelse(ptr noundef %1) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %105 = load i16, ptr %20, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %16) #9
  br i1 %103, label %107, label %111

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %107, %102, %18, %10, %2
  %112 = phi i32 [ 0, %18 ], [ -30, %10 ], [ %104, %107 ], [ %104, %102 ], [ -30, %2 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.journal_s, ptr %8, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %10 = load volatile i32, ptr %9, align 4
  store volatile i32 %10, ptr %2, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %12, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2024, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 4
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2026, 0\0A.popsection", ""() #9, !srcloc !83
  unreachable

20:                                               ; preds = %15
  %21 = icmp eq i32 %17, 0
  %22 = xor i1 %6, true
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %25, label %24, !prof !54

24:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2028, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

25:                                               ; preds = %20
  switch i32 %17, label %40 [
    i32 0, label %68
    i32 1, label %26
    i32 2, label %34
    i32 3, label %36
    i32 4, label %38
  ]

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.transaction_s, ptr %5, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32, !prof !10

31:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2035, 0\0A.popsection", ""() #9, !srcloc !85
  unreachable

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.transaction_s, ptr %5, i32 0, i32 6
  br label %40

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.transaction_s, ptr %5, i32 0, i32 7
  br label %40

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.transaction_s, ptr %5, i32 0, i32 10
  br label %40

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.transaction_s, ptr %5, i32 0, i32 5
  br label %40

40:                                               ; preds = %38, %36, %34, %32, %25
  %41 = phi ptr [ null, %25 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ]
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %0
  %48 = select i1 %47, ptr null, ptr %46
  store ptr %48, ptr %41, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.journal_head, ptr %53, i32 0, i32 9
  store ptr %51, ptr %54, align 4
  %55 = load ptr, ptr %52, align 4
  %56 = load ptr, ptr %50, align 4
  %57 = getelementptr inbounds %struct.journal_head, ptr %56, i32 0, i32 10
  store ptr %55, ptr %57, align 4
  store i32 0, ptr %16, align 4
  br i1 %6, label %64, label %58

58:                                               ; preds = %49
  %59 = load ptr, ptr %5, align 8
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %3) #9
  br label %68

64:                                               ; preds = %58, %49
  %65 = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %3) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @mark_buffer_dirty(ptr noundef %3) #9
  br label %68

68:                                               ; preds = %67, %64, %63, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jbd2_journal_remove_checkpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_log_wait_commit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_unfile_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #9, !srcloc !30
  %6 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2065, 0\0A.popsection", ""() #9, !srcloc !78
  unreachable

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2066, 0\0A.popsection", ""() #9, !srcloc !79
  unreachable

17:                                               ; preds = %12
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %1) #9
  store ptr null, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %18 = load i16, ptr %7, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %20 = load i16, ptr %6, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void @jbd2_journal_put_journal_head(ptr noundef %1) #9
  tail call void @__brelse(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_try_to_free_buffers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %1 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2156, 0\0A.popsection", ""() #9, !srcloc !86
  unreachable

18:                                               ; preds = %11
  %19 = load volatile i32, ptr %1, align 4
  %20 = and i32 %19, 8192
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !10

22:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2158, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  br label %28

28:                                               ; preds = %66, %23
  %29 = phi ptr [ %26, %23 ], [ %68, %66 ]
  %30 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %29) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.journal_head, ptr %30, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %33) #9
  %34 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = load volatile i32, ptr %29, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = load volatile i32, ptr %29, align 4
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.journal_head, ptr %35, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.journal_head, ptr %35, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  tail call void @_raw_spin_lock(ptr noundef %27) #9
  %52 = getelementptr inbounds %struct.journal_head, ptr %35, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %35) #9
  br label %57

57:                                               ; preds = %55, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %58 = load i16, ptr %27, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %60

60:                                               ; preds = %57, %47, %43, %39, %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %61 = load i16, ptr %33, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %30) #9
  %63 = load volatile i32, ptr %29, align 4
  %64 = and i32 %63, 65536
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60, %28
  %67 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %26
  br i1 %69, label %70, label %28

70:                                               ; preds = %66
  %71 = tail call i32 @try_to_free_buffers(ptr noundef %1) #9
  br label %72

72:                                               ; preds = %70, %60
  %73 = phi i32 [ %71, %70 ], [ 0, %60 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_invalidatepage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = add i32 %3, %2
  %6 = icmp ne i32 %2, 0
  %7 = icmp ult i32 %3, 4096
  %8 = or i1 %6, %7
  %9 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !8

13:                                               ; preds = %4
  %14 = add i32 %10, -1
  br label %17

15:                                               ; preds = %4
  %16 = ptrtoint ptr %1 to i32
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2455, 0\0A.popsection", ""() #9, !srcloc !88
  unreachable

24:                                               ; preds = %17
  %25 = load volatile i32, ptr %1, align 4
  %26 = and i32 %25, 8192
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %177, label %28

28:                                               ; preds = %24
  %29 = icmp ugt i32 %5, 4096
  %30 = icmp ult i32 %5, %3
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %33, !prof !10

32:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2459, 0\0A.popsection", ""() #9, !srcloc !89
  unreachable

33:                                               ; preds = %28
  %34 = load volatile i32, ptr %1, align 4
  %35 = and i32 %34, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38, !prof !10

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2465, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 7
  %43 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  %44 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 11
  %45 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 10
  br label %46

46:                                               ; preds = %161, %38
  %47 = phi ptr [ %41, %38 ], [ %54, %161 ]
  %48 = phi i32 [ 0, %38 ], [ %52, %161 ]
  %49 = phi i32 [ 1, %38 ], [ %162, %161 ]
  %50 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 4
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, %48
  %53 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp ugt i32 %52, %5
  br i1 %55, label %177, label %56

56:                                               ; preds = %46
  %57 = icmp ult i32 %48, %2
  br i1 %57, label %161, label %58

58:                                               ; preds = %56
  %59 = load volatile i32, ptr %47, align 4
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #9, !srcloc !16
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 4, ptr elementtype(i32) %47) #9, !srcloc !49
  %64 = extractvalue { i32, i32, i32 } %63, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !50
  %65 = and i32 %64, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62, %58
  tail call void @__lock_buffer(ptr noundef %47) #9
  br label %68

68:                                               ; preds = %67, %62
  %69 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %47) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %145, label %71

71:                                               ; preds = %68
  tail call void @_raw_write_lock(ptr noundef %42) #9
  %72 = getelementptr inbounds %struct.journal_head, ptr %69, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %72) #9
  tail call void @_raw_spin_lock(ptr noundef %43) #9
  %73 = getelementptr inbounds %struct.journal_head, ptr %69, i32 0, i32 7
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.journal_head, ptr %69, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %138, label %80

80:                                               ; preds = %76
  %81 = load volatile i32, ptr %47, align 4
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %69) #9
  br label %138

86:                                               ; preds = %80
  %87 = load ptr, ptr %45, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %69, align 4
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %69) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %90) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %69, ptr noundef nonnull %87, i32 noundef 2) #9
  br label %138

91:                                               ; preds = %86
  %92 = load ptr, ptr %44, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %69, align 4
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %69) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %95) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %69, ptr noundef nonnull %92, i32 noundef 2) #9
  br label %138

96:                                               ; preds = %91
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %47) #9
  %97 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %69) #9
  br label %138

98:                                               ; preds = %71
  %99 = load ptr, ptr %44, align 4
  %100 = icmp eq ptr %74, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  br i1 %8, label %153, label %102

102:                                              ; preds = %101
  %103 = load volatile i32, ptr %47, align 4
  %104 = and i32 %103, 262144
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  tail call void @_set_bit(i32 noundef 18, ptr noundef %47) #9
  br label %107

107:                                              ; preds = %106, %102
  %108 = load ptr, ptr %45, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load volatile i32, ptr %47, align 4
  %112 = and i32 %111, 2097152
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.journal_head, ptr %69, i32 0, i32 8
  store ptr %108, ptr %115, align 4
  br label %116

116:                                              ; preds = %114, %110, %107
  %117 = getelementptr inbounds %struct.journal_head, ptr %69, i32 0, i32 4
  store i32 0, ptr %117, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %118 = load i16, ptr %43, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %120 = load i16, ptr %72, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %42, i32 0) #9, !srcloc !24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %69) #9
  br label %158

122:                                              ; preds = %98
  %123 = load ptr, ptr %45, align 8
  %124 = icmp eq ptr %74, %123
  br i1 %124, label %126, label %125, !prof !8

125:                                              ; preds = %122
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2399, 0\0A.popsection", ""() #9, !srcloc !91
  unreachable

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.journal_head, ptr %69, i32 0, i32 11
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %69, align 4
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %69) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %131) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef nonnull %69, ptr noundef nonnull %74, i32 noundef 2) #9
  br label %138

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.journal_head, ptr %69, i32 0, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136, !prof !8

136:                                              ; preds = %132
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2066, 0\0A.popsection", ""() #9, !srcloc !79
  unreachable

137:                                              ; preds = %132
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef nonnull %69) #9
  store ptr null, ptr %73, align 4
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %69) #9
  br label %138

138:                                              ; preds = %137, %130, %96, %94, %89, %84, %76
  %139 = phi i32 [ 0, %89 ], [ 0, %94 ], [ 1, %96 ], [ 1, %84 ], [ 1, %76 ], [ 0, %130 ], [ 1, %137 ]
  %140 = getelementptr inbounds %struct.journal_head, ptr %69, i32 0, i32 4
  store i32 0, ptr %140, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %141 = load i16, ptr %43, align 4
  %142 = add i16 %141, 1
  store i16 %142, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %143 = load i16, ptr %72, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %42, i32 0) #9, !srcloc !24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %69) #9
  br label %145

145:                                              ; preds = %138, %68
  %146 = phi i32 [ %139, %138 ], [ 1, %68 ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %47) #9
  %147 = load volatile i32, ptr %47, align 4
  %148 = and i32 %147, 2097152
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150, !prof !8

150:                                              ; preds = %145
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2420, 0\0A.popsection", ""() #9, !srcloc !92
  unreachable

151:                                              ; preds = %145
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %47) #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %47) #9
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %47) #9
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %47) #9
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %47) #9
  %152 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 6
  store ptr null, ptr %152, align 8
  br label %158

153:                                              ; preds = %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %154 = load i16, ptr %43, align 4
  %155 = add i16 %154, 1
  store i16 %155, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %156 = load i16, ptr %72, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %42, i32 0) #9, !srcloc !24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  tail call void @jbd2_journal_put_journal_head(ptr noundef nonnull %69) #9
  tail call void @unlock_buffer(ptr noundef %47) #9
  br label %177

158:                                              ; preds = %151, %116
  %159 = phi i32 [ 0, %116 ], [ %146, %151 ]
  tail call void @unlock_buffer(ptr noundef %47) #9
  %160 = and i32 %159, %49
  br label %161

161:                                              ; preds = %158, %56
  %162 = phi i32 [ %49, %56 ], [ %160, %158 ]
  %163 = icmp eq ptr %54, %41
  br i1 %163, label %164, label %46

164:                                              ; preds = %161
  %165 = or i1 %6, %7
  %166 = xor i1 %165, true
  %167 = icmp ne i32 %162, 0
  %168 = select i1 %166, i1 %167, i1 false
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = tail call i32 @try_to_free_buffers(ptr noundef %1) #9
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %169
  %173 = load volatile i32, ptr %1, align 4
  %174 = and i32 %173, 8192
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176, !prof !8

176:                                              ; preds = %172
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2489, 0\0A.popsection", ""() #9, !srcloc !93
  unreachable

177:                                              ; preds = %172, %169, %164, %153, %46, %24
  %178 = phi i32 [ 0, %24 ], [ 0, %169 ], [ 0, %172 ], [ 0, %164 ], [ -16, %153 ], [ 0, %46 ]
  ret i32 %178
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_file_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  tail call void @__jbd2_journal_file_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds %struct.journal_s, ptr %7, i32 0, i32 39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %11 = load i16, ptr %4, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__jbd2_journal_refile_buffer(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.journal_s, ptr %8, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %10 = load volatile i32, ptr %9, align 4
  store volatile i32 %10, ptr %2, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %12, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %13, label %14, label %19, !prof !10

14:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2593, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %25

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %25

23:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2065, 0\0A.popsection", ""() #9, !srcloc !78
  unreachable

24:                                               ; preds = %19
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %0) #9
  store ptr null, ptr %4, align 4
  br label %55

25:                                               ; preds = %19, %15
  %26 = phi ptr [ %20, %19 ], [ %16, %15 ]
  %27 = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %3) #9
  tail call fastcc void @__jbd2_journal_temp_unlink_buffer(ptr noundef %0)
  %28 = load ptr, ptr %4, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !10

30:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2613, 0\0A.popsection", ""() #9, !srcloc !95
  unreachable

31:                                               ; preds = %25
  %32 = load ptr, ptr %26, align 4
  store volatile ptr %32, ptr %4, align 4
  store volatile ptr null, ptr %26, align 4
  %33 = load volatile i32, ptr %3, align 4
  %34 = and i32 %33, 262144
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 4, i32 1
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i32 [ 2, %31 ], [ %40, %36 ]
  tail call void @__jbd2_journal_file_buffer(ptr noundef %0, ptr noundef %32, i32 noundef %42)
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.transaction_s, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !8

47:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2629, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

48:                                               ; preds = %41
  %49 = icmp eq i32 %27, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %48
  %51 = load volatile i32, ptr %3, align 4
  %52 = and i32 %51, 2097152
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void @_set_bit(i32 noundef 21, ptr noundef %3) #9
  br label %55

55:                                               ; preds = %54, %50, %48, %24
  %56 = phi i1 [ false, %48 ], [ true, %24 ], [ false, %50 ], [ false, %54 ]
  ret i1 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_refile_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.journal_head, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %5 = tail call zeroext i1 @__jbd2_journal_refile_buffer(ptr noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %6 = load i16, ptr %3, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %8 = load i16, ptr %4, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br i1 %5, label %10, label %11

10:                                               ; preds = %2
  tail call void @jbd2_journal_put_journal_head(ptr noundef %1) #9
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_inode_ranged_write(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = add i64 %2, -1
  %6 = add i64 %5, %3
  %7 = tail call fastcc i32 @jbd2_journal_file_inode(ptr noundef %0, ptr noundef %1, i32 noundef 6, i64 noundef %2, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @jbd2_journal_file_inode(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq ptr %6, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %70, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.journal_s, ptr %14, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %2
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 6
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 5
  br i1 %25, label %31, label %27

27:                                               ; preds = %18
  %28 = load i64, ptr %26, align 8
  %29 = tail call i64 @llvm.smin.i64(i64 %28, i64 %3)
  store i64 %29, ptr %26, align 8
  %30 = tail call i64 @llvm.smax.i64(i64 %24, i64 %4)
  br label %32

31:                                               ; preds = %18
  store i64 %3, ptr %26, align 8
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i64 [ %4, %31 ], [ %30, %27 ]
  store i64 %33, ptr %23, align 8
  %34 = load ptr, ptr %1, align 8
  %35 = icmp eq ptr %34, %6
  br i1 %35, label %67, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %6
  br i1 %39, label %67, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.transaction_s, ptr %6, i32 0, i32 26
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  store i32 1, ptr %41, align 4
  %45 = load ptr, ptr %1, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi ptr [ %45, %44 ], [ %34, %40 ]
  %48 = icmp eq ptr %47, null
  %49 = load ptr, ptr %37, align 4
  %50 = icmp eq ptr %49, null
  br i1 %48, label %59, label %51

51:                                               ; preds = %46
  br i1 %50, label %53, label %52, !prof !8

52:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2697, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.journal_s, ptr %14, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %47, %55
  br i1 %56, label %58, label %57, !prof !8

57:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2699, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

58:                                               ; preds = %53
  store ptr %6, ptr %37, align 4
  br label %67

59:                                               ; preds = %46
  br i1 %50, label %61, label %60, !prof !8

60:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2704, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

61:                                               ; preds = %59
  store ptr %6, ptr %1, align 8
  %62 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 2
  %63 = getelementptr inbounds %struct.transaction_s, ptr %6, i32 0, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %62, ptr %65, align 4
  store ptr %64, ptr %62, align 4
  %66 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 2, i32 1
  store ptr %63, ptr %66, align 4
  store volatile ptr %62, ptr %63, align 4
  br label %67

67:                                               ; preds = %61, %58, %36, %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %68 = load i16, ptr %19, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %70

70:                                               ; preds = %67, %13, %5
  %71 = phi i32 [ 0, %67 ], [ -30, %13 ], [ -30, %5 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_inode_ranged_wait(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = add i64 %2, -1
  %6 = add i64 %5, %3
  %7 = tail call fastcc i32 @jbd2_journal_file_inode(ptr noundef %0, ptr noundef %1, i32 noundef 4, i64 noundef %2, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_begin_ordered_truncate(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr %1, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #9, !srcloc !16
  %10 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %7) #9, !srcloc !17
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %14

14:                                               ; preds = %13, %6
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %15 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %15) #9
  %16 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  %17 = load i16, ptr %15, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %19 = icmp eq ptr %16, %9
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.jbd2_inode, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 9
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @filemap_fdatawrite_range(ptr noundef %24, i64 noundef %2, i64 noundef 9223372036854775807) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %25) #9
  br label %28

28:                                               ; preds = %27, %20, %14, %3
  %29 = phi i32 [ %25, %27 ], [ 0, %20 ], [ 0, %14 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_abort(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_tag_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wait_transaction_locked(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %4 = tail call ptr @llvm.thread.pointer() #9
  store i32 0, ptr %2, align 4
  store ptr %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.transaction_s, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 13
  call void @prepare_to_wait(ptr noundef %12, ptr noundef nonnull %2, i32 noundef 2) #9
  %13 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 44
  %14 = load i32, ptr %13, align 8
  %15 = xor i32 %14, -1
  %16 = add i32 %11, %15
  %17 = icmp sgt i32 %16, -1
  %18 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #9, !srcloc !16
  %19 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %18) #9, !srcloc !17
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  br label %23

23:                                               ; preds = %22, %1
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br i1 %17, label %24, label %26

24:                                               ; preds = %23
  %25 = call i32 @jbd2_log_start_commit(ptr noundef %0, i32 noundef %11) #9
  br label %26

26:                                               ; preds = %24, %23
  call void @schedule() #9
  call void @finish_wait(ptr noundef %12, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_log_wait_for_space(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_handle_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_handle_extend(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_handle_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_lock_buffer_stall(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_io(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_handle_stats(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2153904030, i64 2153904515, i64 2153904067, i64 2153904123, i64 2153904157, i64 2153904181, i64 2153904222, i64 2153904243, i64 2153904271, i64 2153904305}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153924096, i64 2153924582, i64 2153924133, i64 2153924189, i64 2153924223, i64 2153924247, i64 2153924288, i64 2153924309, i64 2153924337, i64 2153924371}
!12 = !{i64 2153659392}
!13 = !{i64 2153659620}
!14 = !{i64 2153919597, i64 2153920083, i64 2153919634, i64 2153919690, i64 2153919724, i64 2153919748, i64 2153919789, i64 2153919810, i64 2153919838, i64 2153919872}
!15 = !{i64 2149113078}
!16 = !{i64 486933, i64 2147976904, i64 2147976930, i64 2147976977, i64 2147976999, i64 2147977027, i64 2147977047}
!17 = !{i64 1616502, i64 1616525, i64 1616545, i64 1616569, i64 1616585}
!18 = !{i64 2149101020}
!19 = !{i64 2149101095, i64 2149101122, i64 2149101169, i64 2149101191, i64 2149101219, i64 2149101239}
!20 = !{i64 2149150681}
!21 = !{!"auto-init"}
!22 = !{i64 2153906627, i64 2153907113, i64 2153906664, i64 2153906720, i64 2153906754, i64 2153906778, i64 2153906819, i64 2153906840, i64 2153906868, i64 2153906902}
!23 = !{i64 2149112273}
!24 = !{i64 1615487}
!25 = !{i64 2149150242}
!26 = !{i64 2148086141}
!27 = !{i64 2147989003, i64 2147989035, i64 2147989064, i64 2147989098, i64 2147989129, i64 2147989152}
!28 = !{i64 2148086344}
!29 = !{i64 2147990676, i64 2147990702, i64 2147990731, i64 2147990765, i64 2147990796, i64 2147990819}
!30 = !{i64 2147988319, i64 2147988345, i64 2147988374, i64 2147988408, i64 2147988439, i64 2147988462}
!31 = !{i64 2153718739}
!32 = !{i64 2153719035}
!33 = !{i64 2154002745}
!34 = !{i64 2153699745}
!35 = !{i64 2153700007}
!36 = !{i64 2149105196}
!37 = !{i64 2149128199}
!38 = !{i64 2153681331}
!39 = !{i64 2153681563}
!40 = !{i64 2153935010, i64 2153935496, i64 2153935047, i64 2153935103, i64 2153935137, i64 2153935161, i64 2153935202, i64 2153935223, i64 2153935251, i64 2153935285}
!41 = !{i64 2153936157, i64 2153936643, i64 2153936194, i64 2153936250, i64 2153936284, i64 2153936308, i64 2153936349, i64 2153936370, i64 2153936398, i64 2153936432}
!42 = !{i64 2148088974}
!43 = !{i64 2147991360, i64 2147991392, i64 2147991421, i64 2147991455, i64 2147991486, i64 2147991509}
!44 = !{i64 2148089177}
!45 = !{i64 2153949604, i64 2153950090, i64 2153949641, i64 2153949697, i64 2153949731, i64 2153949755, i64 2153949796, i64 2153949817, i64 2153949845, i64 2153949879}
!46 = !{i64 2149257900}
!47 = !{i64 2149258117}
!48 = !{i64 2153971950}
!49 = !{i64 2147996781, i64 2147996813, i64 2147996842, i64 2147996876, i64 2147996907, i64 2147996930}
!50 = !{i64 2148098097}
!51 = !{i64 2153812727}
!52 = !{i64 2153812909}
!53 = !{i64 2153955532, i64 2153956019, i64 2153955569, i64 2153955625, i64 2153955659, i64 2153955683, i64 2153955724, i64 2153955745, i64 2153955773, i64 2153955807}
!54 = !{!"branch_weights", i32 4001, i32 1}
!55 = !{i64 2153956754, i64 2153957241, i64 2153956791, i64 2153956847, i64 2153956881, i64 2153956905, i64 2153956946, i64 2153956967, i64 2153956995, i64 2153957029}
!56 = !{i64 2153957927, i64 2153958414, i64 2153957964, i64 2153958020, i64 2153958054, i64 2153958078, i64 2153958119, i64 2153958140, i64 2153958168, i64 2153958202}
!57 = !{i64 2153958782}
!58 = !{i64 2153959299, i64 2153959786, i64 2153959336, i64 2153959392, i64 2153959426, i64 2153959450, i64 2153959491, i64 2153959512, i64 2153959540, i64 2153959574}
!59 = !{i64 2153960521, i64 2153961008, i64 2153960558, i64 2153960614, i64 2153960648, i64 2153960672, i64 2153960713, i64 2153960734, i64 2153960762, i64 2153960796}
!60 = !{i64 2153961783, i64 2153962270, i64 2153961820, i64 2153961876, i64 2153961910, i64 2153961934, i64 2153961975, i64 2153961996, i64 2153962024, i64 2153962058}
!61 = !{i64 2152558731}
!62 = !{i64 2151049106}
!63 = !{i64 2151049313}
!64 = !{i64 2152561356}
!65 = !{i64 2153962867}
!66 = !{i64 2153973381, i64 2153973868, i64 2153973418, i64 2153973474, i64 2153973508, i64 2153973532, i64 2153973573, i64 2153973594, i64 2153973622, i64 2153973656}
!67 = !{i64 2153974587, i64 2153975074, i64 2153974624, i64 2153974680, i64 2153974714, i64 2153974738, i64 2153974779, i64 2153974800, i64 2153974828, i64 2153974862}
!68 = !{i64 2153975729, i64 2153976216, i64 2153975766, i64 2153975822, i64 2153975856, i64 2153975880, i64 2153975921, i64 2153975942, i64 2153975970, i64 2153976004}
!69 = !{i64 2154021775, i64 2154022262, i64 2154021812, i64 2154021868, i64 2154021902, i64 2154021926, i64 2154021967, i64 2154021988, i64 2154022016, i64 2154022050}
!70 = !{i64 2154022883, i64 2154023370, i64 2154022920, i64 2154022976, i64 2154023010, i64 2154023034, i64 2154023075, i64 2154023096, i64 2154023124, i64 2154023158}
!71 = !{i64 2154024229, i64 2154024716, i64 2154024266, i64 2154024322, i64 2154024356, i64 2154024380, i64 2154024421, i64 2154024442, i64 2154024470, i64 2154024504}
!72 = !{i64 2154029430, i64 2154029917, i64 2154029467, i64 2154029523, i64 2154029557, i64 2154029581, i64 2154029622, i64 2154029643, i64 2154029671, i64 2154029705}
!73 = !{i64 2154030548, i64 2154031035, i64 2154030585, i64 2154030641, i64 2154030675, i64 2154030699, i64 2154030740, i64 2154030761, i64 2154030789, i64 2154030823}
!74 = !{i64 2153980058, i64 2153980545, i64 2153980095, i64 2153980151, i64 2153980185, i64 2153980209, i64 2153980250, i64 2153980271, i64 2153980299, i64 2153980333}
!75 = !{i64 2153983548, i64 2153984035, i64 2153983585, i64 2153983641, i64 2153983675, i64 2153983699, i64 2153983740, i64 2153983761, i64 2153983789, i64 2153983823}
!76 = !{i64 2153989223, i64 2153989710, i64 2153989260, i64 2153989316, i64 2153989350, i64 2153989374, i64 2153989415, i64 2153989436, i64 2153989464, i64 2153989498}
!77 = !{i64 2153991549, i64 2153992036, i64 2153991586, i64 2153991642, i64 2153991676, i64 2153991700, i64 2153991741, i64 2153991762, i64 2153991790, i64 2153991824}
!78 = !{i64 2154009506, i64 2154009993, i64 2154009543, i64 2154009599, i64 2154009633, i64 2154009657, i64 2154009698, i64 2154009719, i64 2154009747, i64 2154009781}
!79 = !{i64 2154010712, i64 2154011199, i64 2154010749, i64 2154010805, i64 2154010839, i64 2154010863, i64 2154010904, i64 2154010925, i64 2154010953, i64 2154010987}
!80 = !{i64 2153992857, i64 2153993344, i64 2153992894, i64 2153992950, i64 2153992984, i64 2153993008, i64 2153993049, i64 2153993070, i64 2153993098, i64 2153993132}
!81 = !{i64 2153994014, i64 2153994501, i64 2153994051, i64 2153994107, i64 2153994141, i64 2153994165, i64 2153994206, i64 2153994227, i64 2153994255, i64 2153994289}
!82 = !{i64 2154004870, i64 2154005357, i64 2154004907, i64 2154004963, i64 2154004997, i64 2154005021, i64 2154005062, i64 2154005083, i64 2154005111, i64 2154005145}
!83 = !{i64 2154005978, i64 2154006465, i64 2154006015, i64 2154006071, i64 2154006105, i64 2154006129, i64 2154006170, i64 2154006191, i64 2154006219, i64 2154006253}
!84 = !{i64 2154007142, i64 2154007629, i64 2154007179, i64 2154007235, i64 2154007269, i64 2154007293, i64 2154007334, i64 2154007355, i64 2154007383, i64 2154007417}
!85 = !{i64 2154008312, i64 2154008799, i64 2154008349, i64 2154008405, i64 2154008439, i64 2154008463, i64 2154008504, i64 2154008525, i64 2154008553, i64 2154008587}
!86 = !{i64 2154011854, i64 2154012341, i64 2154011891, i64 2154011947, i64 2154011981, i64 2154012005, i64 2154012046, i64 2154012067, i64 2154012095, i64 2154012129}
!87 = !{i64 2154013002, i64 2154013489, i64 2154013039, i64 2154013095, i64 2154013129, i64 2154013153, i64 2154013194, i64 2154013215, i64 2154013243, i64 2154013277}
!88 = !{i64 2154016847, i64 2154017334, i64 2154016884, i64 2154016940, i64 2154016974, i64 2154016998, i64 2154017039, i64 2154017060, i64 2154017088, i64 2154017122}
!89 = !{i64 2154018013, i64 2154018500, i64 2154018050, i64 2154018106, i64 2154018140, i64 2154018164, i64 2154018205, i64 2154018226, i64 2154018254, i64 2154018288}
!90 = !{i64 2154019161, i64 2154019648, i64 2154019198, i64 2154019254, i64 2154019288, i64 2154019312, i64 2154019353, i64 2154019374, i64 2154019402, i64 2154019436}
!91 = !{i64 2154014615, i64 2154015102, i64 2154014652, i64 2154014708, i64 2154014742, i64 2154014766, i64 2154014807, i64 2154014828, i64 2154014856, i64 2154014890}
!92 = !{i64 2154015852, i64 2154016339, i64 2154015889, i64 2154015945, i64 2154015979, i64 2154016003, i64 2154016044, i64 2154016065, i64 2154016093, i64 2154016127}
!93 = !{i64 2154020300, i64 2154020787, i64 2154020337, i64 2154020393, i64 2154020427, i64 2154020451, i64 2154020492, i64 2154020513, i64 2154020541, i64 2154020575}
!94 = !{i64 2154032049, i64 2154032536, i64 2154032086, i64 2154032142, i64 2154032176, i64 2154032200, i64 2154032241, i64 2154032262, i64 2154032290, i64 2154032324}
!95 = !{i64 2154033247, i64 2154033734, i64 2154033284, i64 2154033340, i64 2154033374, i64 2154033398, i64 2154033439, i64 2154033460, i64 2154033488, i64 2154033522}
!96 = !{i64 2154039080, i64 2154039567, i64 2154039117, i64 2154039173, i64 2154039207, i64 2154039231, i64 2154039272, i64 2154039293, i64 2154039321, i64 2154039355}
!97 = !{i64 2154043963, i64 2154044450, i64 2154044000, i64 2154044056, i64 2154044090, i64 2154044114, i64 2154044155, i64 2154044176, i64 2154044204, i64 2154044238}
!98 = !{i64 2154045182, i64 2154045669, i64 2154045219, i64 2154045275, i64 2154045309, i64 2154045333, i64 2154045374, i64 2154045395, i64 2154045423, i64 2154045457}
!99 = !{i64 2154046293, i64 2154046780, i64 2154046330, i64 2154046386, i64 2154046420, i64 2154046444, i64 2154046485, i64 2154046506, i64 2154046534, i64 2154046568}
