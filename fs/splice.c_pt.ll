; ModuleID = '/llk/IR/fs/splice.c_pt.bc'
source_filename = "../fs/splice.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_splice_to_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22splice_to_pipe\22\09\09\09\09\09"
module asm "__kstrtabns_splice_to_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_to_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22add_to_pipe\22\09\09\09\09\09"
module asm "__kstrtabns_add_to_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_splice_read:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_splice_read\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_splice_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nosteal_pipe_buf_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22nosteal_pipe_buf_ops\22\09\09\09\09\09"
module asm "__kstrtabns_nosteal_pipe_buf_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___splice_from_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22__splice_from_pipe\22\09\09\09\09\09"
module asm "__kstrtabns___splice_from_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iter_file_splice_write:\09\09\09\09\09"
module asm "\09.asciz \09\22iter_file_splice_write\22\09\09\09\09\09"
module asm "__kstrtabns_iter_file_splice_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_splice_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_splice_sendpage\22\09\09\09\09\09"
module asm "__kstrtabns_generic_splice_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_splice_direct_to_actor:\09\09\09\09\09"
module asm "\09.asciz \09\22splice_direct_to_actor\22\09\09\09\09\09"
module asm "__kstrtabns_splice_direct_to_actor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_splice_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22do_splice_direct\22\09\09\09\09\09"
module asm "__kstrtabns_do_splice_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.91, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }
%struct.splice_pipe_desc = type { ptr, ptr, i32, i32, ptr, ptr }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.partial_page = type { i32, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.78, %union.anon.79 }
%union.anon.78 = type { ptr }
%union.anon.79 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.92, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.93, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.94, ptr, %struct.address_space, %struct.list_head, %union.anon.95, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.93 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.94 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.95 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.splice_desc = type { i32, i32, i32, %union.anon.98, i64, ptr, i32, i8 }
%union.anon.98 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iovec = type { ptr, i32 }

@page_cache_pipe_buf_ops = dso_local local_unnamed_addr constant %struct.pipe_buf_operations { ptr @page_cache_pipe_buf_confirm, ptr @page_cache_pipe_buf_release, ptr @page_cache_pipe_buf_try_steal, ptr @generic_pipe_buf_get }, align 4
@__kstrtab_splice_to_pipe = external dso_local constant [0 x i8], align 1
@__kstrtabns_splice_to_pipe = external dso_local constant [0 x i8], align 1
@__ksymtab_splice_to_pipe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @splice_to_pipe to i32), ptr @__kstrtab_splice_to_pipe, ptr @__kstrtabns_splice_to_pipe }, section "___ksymtab_gpl+splice_to_pipe", align 4
@__kstrtab_add_to_pipe = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_to_pipe = external dso_local constant [0 x i8], align 1
@__ksymtab_add_to_pipe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_to_pipe to i32), ptr @__kstrtab_add_to_pipe, ptr @__kstrtabns_add_to_pipe }, section "___ksymtab+add_to_pipe", align 4
@__kstrtab_generic_file_splice_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_splice_read = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_splice_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_splice_read to i32), ptr @__kstrtab_generic_file_splice_read, ptr @__kstrtabns_generic_file_splice_read }, section "___ksymtab+generic_file_splice_read", align 4
@default_pipe_buf_ops = dso_local local_unnamed_addr constant %struct.pipe_buf_operations { ptr null, ptr @generic_pipe_buf_release, ptr @generic_pipe_buf_try_steal, ptr @generic_pipe_buf_get }, align 4
@nosteal_pipe_buf_ops = dso_local constant %struct.pipe_buf_operations { ptr null, ptr @generic_pipe_buf_release, ptr null, ptr @generic_pipe_buf_get }, align 4
@__kstrtab_nosteal_pipe_buf_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_nosteal_pipe_buf_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_nosteal_pipe_buf_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nosteal_pipe_buf_ops to i32), ptr @__kstrtab_nosteal_pipe_buf_ops, ptr @__kstrtabns_nosteal_pipe_buf_ops }, section "___ksymtab+nosteal_pipe_buf_ops", align 4
@.str = private unnamed_addr constant [12 x i8] c"fs/splice.c\00", align 1
@__kstrtab___splice_from_pipe = external dso_local constant [0 x i8], align 1
@__kstrtabns___splice_from_pipe = external dso_local constant [0 x i8], align 1
@__ksymtab___splice_from_pipe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__splice_from_pipe to i32), ptr @__kstrtab___splice_from_pipe, ptr @__kstrtabns___splice_from_pipe }, section "___ksymtab+__splice_from_pipe", align 4
@__kstrtab_iter_file_splice_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_iter_file_splice_write = external dso_local constant [0 x i8], align 1
@__ksymtab_iter_file_splice_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iter_file_splice_write to i32), ptr @__kstrtab_iter_file_splice_write, ptr @__kstrtabns_iter_file_splice_write }, section "___ksymtab+iter_file_splice_write", align 4
@__kstrtab_generic_splice_sendpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_splice_sendpage = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_splice_sendpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_splice_sendpage to i32), ptr @__kstrtab_generic_splice_sendpage, ptr @__kstrtabns_generic_splice_sendpage }, section "___ksymtab+generic_splice_sendpage", align 4
@splice_direct_to_actor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_splice_direct_to_actor = external dso_local constant [0 x i8], align 1
@__kstrtabns_splice_direct_to_actor = external dso_local constant [0 x i8], align 1
@__ksymtab_splice_direct_to_actor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @splice_direct_to_actor to i32), ptr @__kstrtab_splice_direct_to_actor, ptr @__kstrtabns_splice_direct_to_actor }, section "___ksymtab+splice_direct_to_actor", align 4
@__kstrtab_do_splice_direct = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_splice_direct = external dso_local constant [0 x i8], align 1
@__ksymtab_do_splice_direct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_splice_direct to i32), ptr @__kstrtab_do_splice_direct, ptr @__kstrtabns_do_splice_direct }, section "___ksymtab+do_splice_direct", align 4
@user_page_pipe_buf_ops = internal constant %struct.pipe_buf_operations { ptr null, ptr @page_cache_pipe_buf_release, ptr @user_page_pipe_buf_try_steal, ptr @generic_pipe_buf_get }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___splice_from_pipe, ptr @__ksymtab_add_to_pipe, ptr @__ksymtab_do_splice_direct, ptr @__ksymtab_generic_file_splice_read, ptr @__ksymtab_generic_splice_sendpage, ptr @__ksymtab_iter_file_splice_write, ptr @__ksymtab_nosteal_pipe_buf_ops, ptr @__ksymtab_splice_direct_to_actor, ptr @__ksymtab_splice_to_pipe], section "llvm.metadata"

@sys_vmsplice = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_vmsplice
@sys_splice = dso_local alias i32 (i32, ptr, i32, ptr, i32, i32), ptr @__se_sys_splice
@sys_tee = dso_local alias i32 (i32, i32, i32, i32), ptr @__se_sys_tee

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @page_cache_pipe_buf_confirm(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  br label %60

19:                                               ; preds = %12
  %20 = load volatile i32, ptr %4, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !9

23:                                               ; preds = %19
  %24 = add i32 %20, -1
  br label %27

25:                                               ; preds = %19
  %26 = ptrtoint ptr %3 to i32
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = inttoptr i32 %28 to ptr
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #9, !srcloc !11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #9, !srcloc !12
  %35 = extractvalue { i32, i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %27
  tail call void @__folio_lock(ptr noundef %29) #9
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %39
  %44 = load volatile i32, ptr %4, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !9

47:                                               ; preds = %43
  %48 = add i32 %44, -1
  br label %51

49:                                               ; preds = %43
  %50 = ptrtoint ptr %3 to i32
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = inttoptr i32 %52 to ptr
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void @unlock_page(ptr noundef %3) #9
  br label %60

58:                                               ; preds = %51, %39
  %59 = phi i32 [ -61, %39 ], [ -5, %51 ]
  tail call void @unlock_page(ptr noundef %3) #9
  br label %60

60:                                               ; preds = %58, %57, %18
  %61 = phi i32 [ %59, %58 ], [ 0, %57 ], [ 0, %18 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @page_cache_pipe_buf_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #9, !srcloc !11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #9, !srcloc !15
  %17 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call void @__put_page(ptr noundef %14) #9
  br label %20

20:                                               ; preds = %19, %12
  %21 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -2
  store i32 %23, ptr %21, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @page_cache_pipe_buf_try_steal(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #9, !srcloc !11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #9, !srcloc !12
  %20 = extractvalue { i32, i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %12
  tail call void @__folio_lock(ptr noundef %14) #9
  br label %24

24:                                               ; preds = %23, %18
  %25 = tail call ptr @page_mapping(ptr noundef %3) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %24
  %28 = load volatile i32, ptr %4, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !9

31:                                               ; preds = %27
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %27
  %34 = ptrtoint ptr %3 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  br label %43

42:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #9
  br label %43

43:                                               ; preds = %42, %41
  tail call void @wait_on_page_writeback(ptr noundef %3) #9
  %44 = load i32, ptr %3, align 4
  %45 = and i32 %44, 24576
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @try_to_release_page(ptr noundef %3, i32 noundef 3264) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47, %43
  %51 = tail call i32 @remove_mapping(ptr noundef nonnull %25, ptr noundef %3) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 1
  store i32 %56, ptr %54, align 4
  br label %58

57:                                               ; preds = %50, %47, %24
  tail call void @unlock_page(ptr noundef %3) #9
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i1 [ true, %53 ], [ false, %57 ]
  ret i1 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @generic_pipe_buf_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @splice_to_pipe(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.splice_pipe_desc, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %77, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16, !prof !17

16:                                               ; preds = %12
  %17 = load i32, ptr %7, align 4
  %18 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  %19 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 5
  %20 = getelementptr inbounds %struct.splice_pipe_desc, ptr %1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.splice_pipe_desc, ptr %1, i32 0, i32 4
  br label %25

22:                                               ; preds = %12
  %23 = tail call ptr @llvm.thread.pointer() #9
  %24 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %23, i32 noundef 0) #9
  br label %66

25:                                               ; preds = %32, %16
  %26 = phi i32 [ %54, %32 ], [ %17, %16 ]
  %27 = phi i32 [ %57, %32 ], [ 0, %16 ]
  %28 = phi i32 [ %55, %32 ], [ 0, %16 ]
  %29 = load i32, ptr %19, align 4
  %30 = sub i32 %26, %6
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %32, label %61

32:                                               ; preds = %25
  %33 = load ptr, ptr %18, align 4
  %34 = and i32 %26, %10
  %35 = getelementptr %struct.pipe_buffer, ptr %33, i32 %34
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr ptr, ptr %36, i32 %28
  %38 = load ptr, ptr %37, align 4
  store ptr %38, ptr %35, align 4
  %39 = load ptr, ptr %20, align 4
  %40 = getelementptr %struct.partial_page, ptr %39, i32 %28
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.pipe_buffer, ptr %33, i32 %34, i32 1
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %20, align 4
  %44 = getelementptr %struct.partial_page, ptr %43, i32 %28, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.pipe_buffer, ptr %33, i32 %34, i32 2
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %20, align 4
  %48 = getelementptr %struct.partial_page, ptr %47, i32 %28, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.pipe_buffer, ptr %33, i32 %34, i32 5
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %21, align 4
  %52 = getelementptr %struct.pipe_buffer, ptr %33, i32 %34, i32 3
  store ptr %51, ptr %52, align 4
  %53 = getelementptr %struct.pipe_buffer, ptr %33, i32 %34, i32 4
  store i32 0, ptr %53, align 4
  %54 = add i32 %26, 1
  store i32 %54, ptr %7, align 4
  %55 = add i32 %28, 1
  %56 = load i32, ptr %46, align 4
  %57 = add i32 %56, %27
  %58 = load i32, ptr %3, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %25

61:                                               ; preds = %32, %25
  %62 = phi i32 [ %57, %32 ], [ %27, %25 ]
  %63 = phi i32 [ %55, %32 ], [ %28, %25 ]
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 -11, i32 %62
  br label %66

66:                                               ; preds = %61, %22
  %67 = phi i32 [ -32, %22 ], [ %65, %61 ]
  %68 = phi i32 [ 0, %22 ], [ %63, %61 ]
  %69 = icmp ult i32 %68, %4
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.splice_pipe_desc, ptr %1, i32 0, i32 5
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi i32 [ %68, %70 ], [ %75, %72 ]
  %74 = load ptr, ptr %71, align 4
  %75 = add i32 %73, 1
  tail call void %74(ptr noundef %1, i32 noundef %73) #9
  %76 = icmp eq i32 %75, %4
  br i1 %76, label %77, label %72

77:                                               ; preds = %72, %66, %2
  %78 = phi i32 [ 0, %2 ], [ %67, %66 ], [ %67, %72 ]
  ret i32 %78
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_to_pipe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14, !prof !17

11:                                               ; preds = %2
  %12 = tail call ptr @llvm.thread.pointer() #9
  %13 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %12, i32 noundef 0) #9
  br label %29

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %4, %16
  %20 = icmp ult i32 %19, %18
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = and i32 %7, %4
  %25 = getelementptr %struct.pipe_buffer, ptr %23, i32 %24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %25, ptr noundef align 4 dereferenceable(24) %1, i32 24, i1 false)
  %26 = add i32 %4, 1
  store i32 %26, ptr %3, align 4
  %27 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  br label %35

29:                                               ; preds = %14, %11
  %30 = phi i32 [ -32, %11 ], [ -11, %14 ]
  %31 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  store ptr null, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pipe_buf_operations, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %0, ptr noundef %1) #9
  br label %35

35:                                               ; preds = %29, %21
  %36 = phi i32 [ %30, %29 ], [ %28, %21 ]
  ret i32 %36
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @splice_grow_spd(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 5
  %4 = load volatile i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.splice_pipe_desc, ptr %1, i32 0, i32 3
  store i32 %4, ptr %5, align 4
  %6 = icmp ult i32 %4, 17
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #9
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %13, label %10, !prof !17

10:                                               ; preds = %7
  %11 = extractvalue { i32, i1 } %8, 0
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #10
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %12, %10 ], [ null, %7 ]
  store ptr %14, ptr %1, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 12) #9
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %17, label %19, !prof !17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.splice_pipe_desc, ptr %1, i32 0, i32 1
  store ptr null, ptr %18, align 4
  br label %27

19:                                               ; preds = %13
  %20 = extractvalue { i32, i1 } %15, 0
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #10
  %22 = getelementptr inbounds %struct.splice_pipe_desc, ptr %1, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = load ptr, ptr %1, align 4
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %21, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19, %17
  %28 = phi ptr [ %14, %17 ], [ %23, %19 ]
  %29 = phi ptr [ %18, %17 ], [ %22, %19 ]
  tail call void @kfree(ptr noundef %28) #9
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #9
  br label %31

31:                                               ; preds = %27, %19, %2
  %32 = phi i32 [ -12, %27 ], [ 0, %2 ], [ 0, %19 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @splice_shrink_spd(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.splice_pipe_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 17
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.splice_pipe_desc, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_file_splice_read(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 %4) #0 {
  %6 = alloca %struct.iov_iter, align 8
  %7 = alloca %struct.kiocb, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i32 40, i1 false), !annotation !18
  call void @iov_iter_pipe(ptr noundef nonnull %6, i32 noundef 0, ptr noundef %2, i32 noundef %3) #9
  %8 = getelementptr inbounds %struct.iov_iter, ptr %6, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 6
  %13 = and i32 %12, 16
  %14 = shl i32 %11, 1
  %15 = and i32 %14, 131072
  %16 = or i32 %15, %13
  %17 = and i32 %11, 4096
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29, %19, %5
  %35 = or i32 %16, 2
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %35, %34 ], [ %16, %29 ]
  %38 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 20
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i32 [ %46, %41 ], [ %39, %36 ]
  %49 = tail call ptr @llvm.thread.pointer() #9
  %50 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 118
  %51 = load ptr, ptr %50, align 32
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.io_context, ptr %51, i32 0, i32 2
  %55 = load i16, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi i16 [ %55, %53 ], [ 16388, %47 ]
  %58 = call i32 @llvm.umin.i32(i32 %48, i32 65536) #9
  %59 = trunc i32 %58 to i16
  %60 = lshr i32 %11, 18
  %61 = and i32 %60, 4
  %62 = or i32 %37, %61
  store ptr %0, ptr %7, align 8
  %63 = getelementptr inbounds i8, ptr %7, i32 8
  %64 = getelementptr inbounds i8, ptr %7, i32 24
  %65 = getelementptr inbounds i8, ptr %7, i32 16
  store i64 0, ptr %65, align 8
  store i32 %62, ptr %64, align 8
  %66 = getelementptr inbounds i8, ptr %7, i32 28
  store i16 %59, ptr %66, align 4
  %67 = getelementptr inbounds i8, ptr %7, i32 30
  store i16 %57, ptr %67, align 2
  %68 = getelementptr inbounds i8, ptr %7, i32 32
  store ptr null, ptr %68, align 8
  %69 = load i64, ptr %1, align 8
  store i64 %69, ptr %63, align 8
  %70 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.file_operations, ptr %71, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 %73(ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %56
  %77 = load i64, ptr %63, align 8
  store i64 %77, ptr %1, align 8
  %78 = load i32, ptr %10, align 4
  %79 = and i32 %78, 262144
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  call void @touch_atime(ptr noundef %82) #9
  br label %89

83:                                               ; preds = %56
  %84 = icmp slt i32 %74, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  store i32 %9, ptr %8, align 8
  %86 = getelementptr inbounds %struct.iov_iter, ptr %6, i32 0, i32 3
  store i32 0, ptr %86, align 4
  call void @iov_iter_advance(ptr noundef nonnull %6, i32 noundef 0) #9
  %87 = icmp eq i32 %74, -14
  %88 = select i1 %87, i32 -11, i32 %74
  br label %89

89:                                               ; preds = %85, %83, %81, %76
  %90 = phi i32 [ %88, %85 ], [ 0, %83 ], [ %74, %76 ], [ %74, %81 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  ret i32 %90
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_pipe(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_pipe_buf_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @generic_pipe_buf_try_steal(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__splice_from_pipe(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 6
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 7
  store i8 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  %10 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 10
  br label %13

13:                                               ; preds = %73, %3
  %14 = tail call i32 @__cond_resched() #9
  %15 = tail call fastcc i32 @splice_from_pipe_next(ptr noundef %0, ptr noundef %1)
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %76

17:                                               ; preds = %13
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %7, align 4
  %20 = load i32, ptr %8, align 4
  %21 = add i32 %20, -1
  br label %22

22:                                               ; preds = %69, %17
  %23 = phi i32 [ %19, %17 ], [ %71, %69 ]
  %24 = icmp eq i32 %18, %23
  br i1 %24, label %73, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %9, align 4
  %27 = and i32 %23, %21
  %28 = getelementptr %struct.pipe_buffer, ptr %26, i32 %27
  %29 = getelementptr %struct.pipe_buffer, ptr %26, i32 %27, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %1, align 8
  %32 = tail call i32 @llvm.umin.i32(i32 %30, i32 %31) #9
  store i32 %32, ptr %10, align 4
  %33 = getelementptr %struct.pipe_buffer, ptr %26, i32 %27, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = tail call i32 %35(ptr noundef %0, ptr noundef %28) #9
  switch i32 %38, label %73 [
    i32 0, label %39
    i32 -61, label %76
  ], !prof !19

39:                                               ; preds = %37, %25
  %40 = tail call i32 %2(ptr noundef %0, ptr noundef %28, ptr noundef %1) #9
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %76, label %42

42:                                               ; preds = %39
  %43 = getelementptr %struct.pipe_buffer, ptr %26, i32 %27, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %40
  store i32 %45, ptr %43, align 4
  %46 = load i32, ptr %29, align 4
  %47 = sub i32 %46, %40
  store i32 %47, ptr %29, align 4
  %48 = load i32, ptr %4, align 4
  %49 = add i32 %48, %40
  store i32 %49, ptr %4, align 4
  %50 = load i32, ptr %10, align 4
  %51 = sub i32 %50, %40
  store i32 %51, ptr %10, align 4
  %52 = zext i32 %40 to i64
  %53 = load i64, ptr %11, align 8
  %54 = add i64 %53, %52
  store i64 %54, ptr %11, align 8
  %55 = load i32, ptr %1, align 8
  %56 = sub i32 %55, %40
  store i32 %56, ptr %1, align 8
  %57 = load i32, ptr %29, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %42
  %60 = load ptr, ptr %33, align 4
  store ptr null, ptr %33, align 4
  %61 = getelementptr inbounds %struct.pipe_buf_operations, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  tail call void %62(ptr noundef %0, ptr noundef %28) #9
  %63 = add i32 %23, 1
  store i32 %63, ptr %7, align 4
  %64 = load i32, ptr %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i8 1, ptr %5, align 8
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32, ptr %1, align 8
  br label %69

69:                                               ; preds = %67, %42
  %70 = phi i32 [ %68, %67 ], [ %56, %42 ]
  %71 = phi i32 [ %63, %67 ], [ %23, %42 ]
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %76, label %22

73:                                               ; preds = %37, %22
  %74 = phi i32 [ 1, %22 ], [ %38, %37 ]
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %13, label %76

76:                                               ; preds = %73, %69, %39, %37, %13
  %77 = phi i32 [ 0, %37 ], [ %40, %39 ], [ 0, %69 ], [ %15, %13 ], [ %74, %73 ]
  %78 = load i8, ptr %5, align 8, !range !20
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %81 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 2, i32 1
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %85, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %86

86:                                               ; preds = %84, %80
  %87 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %87, i32 noundef 29, i32 noundef 2) #9
  br label %88

88:                                               ; preds = %86, %76
  %89 = load i32, ptr %4, align 4
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 %77, i32 %89
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @splice_from_pipe_next(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #9
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %74, !prof !9

7:                                                ; preds = %2
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %74

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 9
  %15 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 6
  %16 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 2
  %17 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 7
  %18 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 16
  %21 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  %23 = load i32, ptr %13, align 4
  br label %24

24:                                               ; preds = %67, %11
  %25 = phi i32 [ %23, %11 ], [ %73, %67 ]
  %26 = load i32, ptr %12, align 4
  %27 = icmp eq i32 %26, %25
  br i1 %27, label %28, label %58

28:                                               ; preds = %54, %24
  %29 = load i32, ptr %14, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %74, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %15, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = load i32, ptr %16, align 8
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = load volatile i32, ptr %3, align 4
  %40 = and i32 %39, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %74, !prof !9

42:                                               ; preds = %38
  %43 = load volatile i32, ptr %3, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load i8, ptr %17, align 8, !range !20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %50 = load volatile ptr, ptr %18, align 4
  %51 = icmp eq ptr %50, %18
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @__wake_up(ptr noundef %19, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %53

53:                                               ; preds = %52, %49
  tail call void @kill_fasync(ptr noundef %20, i32 noundef 29, i32 noundef 2) #9
  store i8 0, ptr %17, align 8
  br label %54

54:                                               ; preds = %53, %46
  tail call void @pipe_wait_readable(ptr noundef %0) #9
  %55 = load i32, ptr %12, align 4
  %56 = load i32, ptr %13, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %28, label %58

58:                                               ; preds = %54, %24
  %59 = phi i32 [ %25, %24 ], [ %56, %54 ]
  %60 = load i32, ptr %21, align 4
  %61 = add i32 %60, -1
  %62 = load ptr, ptr %22, align 4
  %63 = and i32 %61, %59
  %64 = getelementptr %struct.pipe_buffer, ptr %62, i32 %63, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74, !prof !17

67:                                               ; preds = %58
  %68 = getelementptr %struct.pipe_buffer, ptr %62, i32 %63
  %69 = getelementptr %struct.pipe_buffer, ptr %62, i32 %63, i32 3
  %70 = load ptr, ptr %69, align 4
  store ptr null, ptr %69, align 4
  %71 = getelementptr inbounds %struct.pipe_buf_operations, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef %0, ptr noundef %68) #9
  %73 = add i32 %59, 1
  store i32 %73, ptr %13, align 4
  br label %24

74:                                               ; preds = %58, %42, %38, %34, %31, %28, %7, %2
  %75 = phi i32 [ -512, %7 ], [ -512, %2 ], [ -512, %38 ], [ -512, %42 ], [ -11, %34 ], [ 0, %31 ], [ 0, %28 ], [ 1, %58 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @splice_from_pipe(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.splice_desc, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  %8 = getelementptr inbounds i8, ptr %7, i32 32
  store i64 0, ptr %8, align 8, !annotation !18
  store i32 %3, ptr %7, align 8
  %9 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 2
  store i32 %4, ptr %10, align 8
  %11 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 3
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 4
  %13 = load i64, ptr %2, align 8
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 5
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 6
  store i32 0, ptr %15, align 4
  tail call void @pipe_lock(ptr noundef %0) #9
  %16 = call i32 @__splice_from_pipe(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %5)
  call void @pipe_unlock(ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iter_file_splice_write(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.splice_desc, align 8
  %7 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #9
  %8 = getelementptr inbounds i8, ptr %6, i32 32
  store i64 0, ptr %8, align 8, !annotation !18
  store i32 %3, ptr %6, align 8
  %9 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 2
  store i32 %4, ptr %10, align 8
  %11 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 3
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 4
  %13 = load i64, ptr %2, align 8
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 5
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 6
  %16 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 7
  %17 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 12) #9
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %164, label %21, !prof !17

21:                                               ; preds = %5
  %22 = extractvalue { i32, i1 } %19, 0
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %164, label %25, !prof !17

25:                                               ; preds = %21
  tail call void @pipe_lock(ptr noundef %0) #9
  store i32 0, ptr %15, align 4
  store i8 0, ptr %16, align 8
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %147, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %29 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  %32 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 10
  br label %33

33:                                               ; preds = %144, %27
  %34 = phi i32 [ %18, %27 ], [ %51, %144 ]
  %35 = phi ptr [ %23, %27 ], [ %50, %144 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !18
  %36 = call fastcc i32 @splice_from_pipe_next(ptr noundef %0, ptr noundef nonnull %6)
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %141, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %17, align 4
  %40 = icmp ult i32 %34, %39
  br i1 %40, label %41, label %49, !prof !17

41:                                               ; preds = %38
  call void @kfree(ptr noundef %35) #9
  %42 = load i32, ptr %17, align 4
  %43 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 12) #9
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %141, label %45, !prof !17

45:                                               ; preds = %41
  %46 = extractvalue { i32, i1 } %43, 0
  %47 = call noalias align 64 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %141, label %49

49:                                               ; preds = %45, %38
  %50 = phi ptr [ %47, %45 ], [ %35, %38 ]
  %51 = phi i32 [ %42, %45 ], [ %34, %38 ]
  %52 = load i32, ptr %28, align 4
  %53 = load i32, ptr %29, align 4
  %54 = load i32, ptr %30, align 4
  %55 = add i32 %54, -1
  %56 = load i32, ptr %6, align 8
  %57 = icmp ne i32 %52, %53
  %58 = icmp ne i32 %56, 0
  %59 = select i1 %57, i1 %58, i1 false
  %60 = icmp sgt i32 %51, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %100

62:                                               ; preds = %89, %49
  %63 = phi i32 [ %91, %89 ], [ 0, %49 ]
  %64 = phi i32 [ %90, %89 ], [ %56, %49 ]
  %65 = phi i32 [ %92, %89 ], [ %53, %49 ]
  %66 = load ptr, ptr %31, align 4
  %67 = and i32 %65, %55
  %68 = getelementptr %struct.pipe_buffer, ptr %66, i32 %67
  %69 = getelementptr %struct.pipe_buffer, ptr %66, i32 %67, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %62
  %73 = getelementptr %struct.pipe_buffer, ptr %66, i32 %67, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = call i32 %75(ptr noundef %0, ptr noundef %68) #9
  switch i32 %78, label %140 [
    i32 0, label %79
    i32 -61, label %141
  ], !prof !19

79:                                               ; preds = %77, %72
  %80 = call i32 @llvm.umin.i32(i32 %70, i32 %64)
  %81 = load ptr, ptr %68, align 4
  %82 = getelementptr %struct.bio_vec, ptr %50, i32 %63
  store ptr %81, ptr %82, align 4
  %83 = getelementptr %struct.bio_vec, ptr %50, i32 %63, i32 1
  store i32 %80, ptr %83, align 4
  %84 = getelementptr %struct.pipe_buffer, ptr %66, i32 %67, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr %struct.bio_vec, ptr %50, i32 %63, i32 2
  store i32 %85, ptr %86, align 4
  %87 = sub i32 %64, %80
  %88 = add nsw i32 %63, 1
  br label %89

89:                                               ; preds = %79, %62
  %90 = phi i32 [ %87, %79 ], [ %64, %62 ]
  %91 = phi i32 [ %88, %79 ], [ %63, %62 ]
  %92 = add i32 %65, 1
  %93 = icmp ne i32 %52, %92
  %94 = icmp ne i32 %90, 0
  %95 = select i1 %93, i1 %94, i1 false
  %96 = icmp slt i32 %91, %51
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %62, label %98

98:                                               ; preds = %89
  %99 = load i32, ptr %6, align 8
  br label %100

100:                                              ; preds = %98, %49
  %101 = phi i32 [ %56, %49 ], [ %99, %98 ]
  %102 = phi i32 [ %56, %49 ], [ %90, %98 ]
  %103 = phi i32 [ 0, %49 ], [ %91, %98 ]
  %104 = sub i32 %101, %102
  call void @iov_iter_bvec(ptr noundef nonnull %7, i32 noundef 1, ptr noundef %50, i32 noundef %103, i32 noundef %104) #9
  %105 = call i32 @vfs_iter_write(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %12, i32 noundef 0) #9
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %141, label %107

107:                                              ; preds = %100
  %108 = load i32, ptr %15, align 4
  %109 = add i32 %108, %105
  store i32 %109, ptr %15, align 4
  %110 = load i32, ptr %6, align 8
  %111 = sub i32 %110, %105
  store i32 %111, ptr %6, align 8
  %112 = load i64, ptr %12, align 8
  store i64 %112, ptr %2, align 8
  %113 = load i32, ptr %29, align 4
  br label %114

114:                                              ; preds = %138, %107
  %115 = phi i32 [ %113, %107 ], [ %129, %138 ]
  %116 = phi i32 [ %105, %107 ], [ %124, %138 ]
  %117 = load ptr, ptr %31, align 4
  %118 = and i32 %115, %55
  %119 = getelementptr %struct.pipe_buffer, ptr %117, i32 %118, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = icmp ult i32 %116, %120
  br i1 %121, label %133, label %122

122:                                              ; preds = %114
  %123 = getelementptr %struct.pipe_buffer, ptr %117, i32 %118
  %124 = sub i32 %116, %120
  store i32 0, ptr %119, align 4
  %125 = getelementptr %struct.pipe_buffer, ptr %117, i32 %118, i32 3
  %126 = load ptr, ptr %125, align 4
  store ptr null, ptr %125, align 4
  %127 = getelementptr inbounds %struct.pipe_buf_operations, ptr %126, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  call void %128(ptr noundef %0, ptr noundef %123) #9
  %129 = add i32 %115, 1
  store i32 %129, ptr %29, align 4
  %130 = load i32, ptr %32, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %122
  store i8 1, ptr %16, align 8
  br label %138

133:                                              ; preds = %114
  %134 = getelementptr %struct.pipe_buffer, ptr %117, i32 %118, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, %116
  store i32 %136, ptr %134, align 4
  %137 = sub i32 %120, %116
  store i32 %137, ptr %119, align 4
  br label %144

138:                                              ; preds = %132, %122
  %139 = icmp eq i32 %124, 0
  br i1 %139, label %144, label %114

140:                                              ; preds = %77
  br label %141

141:                                              ; preds = %140, %100, %77, %45, %41, %33
  %142 = phi i32 [ %78, %140 ], [ 0, %77 ], [ -12, %41 ], [ %36, %33 ], [ -12, %45 ], [ %105, %100 ]
  %143 = phi ptr [ %50, %140 ], [ %50, %77 ], [ null, %41 ], [ %35, %33 ], [ null, %45 ], [ %50, %100 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  br label %147

144:                                              ; preds = %138, %133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  %145 = load i32, ptr %6, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %33

147:                                              ; preds = %144, %141, %25
  %148 = phi i32 [ %142, %141 ], [ 0, %25 ], [ 0, %144 ]
  %149 = phi ptr [ %143, %141 ], [ %23, %25 ], [ %50, %144 ]
  call void @kfree(ptr noundef %149) #9
  %150 = load i8, ptr %16, align 8, !range !20
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %147
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %153 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 2, i32 1
  %154 = load volatile ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %153
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 2
  call void @__wake_up(ptr noundef %157, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %158

158:                                              ; preds = %156, %152
  %159 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 16
  call void @kill_fasync(ptr noundef %159, i32 noundef 29, i32 noundef 2) #9
  br label %160

160:                                              ; preds = %158, %147
  call void @pipe_unlock(ptr noundef %0) #9
  %161 = load i32, ptr %15, align 4
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 %148, i32 %161
  br label %164

164:                                              ; preds = %160, %21, %5
  %165 = phi i32 [ %163, %160 ], [ -12, %21 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_splice_sendpage(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.splice_desc, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #9
  %7 = getelementptr inbounds i8, ptr %6, i32 32
  store i64 0, ptr %7, align 8, !annotation !18
  store i32 %3, ptr %6, align 8
  %8 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 2
  store i32 %4, ptr %9, align 8
  %10 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 3
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 4
  %12 = load i64, ptr %2, align 8
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 5
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %struct.splice_desc, ptr %6, i32 0, i32 6
  store i32 0, ptr %14, align 4
  tail call void @pipe_lock(ptr noundef %0) #9
  %15 = call i32 @__splice_from_pipe(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @pipe_to_sendpage) #9
  call void @pipe_unlock(ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_to_sendpage(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 4
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %4, align 8
  %9 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file_operations, ptr %10, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14, !prof !17

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = shl i32 %16, 13
  %18 = and i32 %17, 32768
  %19 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %2, align 8
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %25, %27
  %29 = icmp ugt i32 %28, 1
  %30 = or i32 %18, 131072
  %31 = select i1 %29, i32 %30, i32 %18
  br label %32

32:                                               ; preds = %23, %14
  %33 = phi i32 [ %18, %14 ], [ %31, %23 ]
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = call i32 %12(ptr noundef %6, ptr noundef %34, i32 noundef %36, i32 noundef %20, ptr noundef nonnull %4, i32 noundef %33) #9
  br label %38

38:                                               ; preds = %32, %3
  %39 = phi i32 [ %37, %32 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @splice_direct_to_actor(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, -4096
  switch i16 %8, label %132 [
    i16 -32768, label %9
    i16 24576, label %9
  ]

9:                                                ; preds = %3, %3
  %10 = tail call ptr @llvm.thread.pointer() #9
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 138
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19, !prof !17

14:                                               ; preds = %9
  %15 = tail call ptr @alloc_pipe_info() #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %132, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.pipe_inode_info, ptr %15, i32 0, i32 8
  store i32 1, ptr %18, align 4
  store ptr %15, ptr %11, align 4
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi ptr [ %15, %17 ], [ %12, %9 ]
  %21 = load i32, ptr %1, align 8
  %22 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, -3
  store i32 %24, ptr %22, align 8
  %25 = and i32 %23, 4
  %26 = getelementptr inbounds %struct.pipe_inode_info, ptr %20, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.pipe_inode_info, ptr %20, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  %31 = load i1, ptr @splice_direct_to_actor.__already_done, align 1
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %34, label %33, !prof !9

33:                                               ; preds = %19
  store i1 true, ptr @splice_direct_to_actor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 864, i32 noundef 9, ptr noundef null) #9
  br label %34

34:                                               ; preds = %33, %19
  %35 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 4
  %36 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %37 = getelementptr inbounds %struct.pipe_inode_info, ptr %20, i32 0, i32 5
  %38 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %39 = icmp eq i32 %25, 0
  %40 = icmp eq i32 %21, 0
  br i1 %40, label %105, label %41

41:                                               ; preds = %91, %34
  %42 = phi i32 [ %92, %91 ], [ %21, %34 ]
  %43 = phi i32 [ %85, %91 ], [ 0, %34 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %44 = load i64, ptr %35, align 8
  store i64 %44, ptr %4, align 8
  %45 = load i32, ptr %36, align 8
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %97, label %48, !prof !17

48:                                               ; preds = %41
  %49 = load i32, ptr %37, align 4
  %50 = load i32, ptr %26, align 4
  %51 = load i32, ptr %28, align 4
  %52 = sub i32 %49, %50
  %53 = add i32 %52, %51
  %54 = shl i32 %53, 12
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 %42) #9
  %56 = call i32 @rw_verify_area(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %4, i32 noundef %55) #9
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %97, label %58, !prof !17

58:                                               ; preds = %48
  %59 = icmp ugt i32 %55, 2147479552
  br i1 %59, label %60, label %61, !prof !17

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ 2147479552, %60 ], [ %55, %58 ]
  %63 = load ptr, ptr %38, align 4
  %64 = getelementptr inbounds %struct.file_operations, ptr %63, i32 0, i32 25
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %97, label %67, !prof !17

67:                                               ; preds = %61
  %68 = call i32 %65(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %20, i32 noundef %62, i32 noundef %23) #9
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %97, label %70, !prof !17

70:                                               ; preds = %67
  store i32 %68, ptr %1, align 8
  %71 = icmp ult i32 %68, %42
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32, ptr %22, align 8
  %74 = or i32 %73, 4
  br label %79

75:                                               ; preds = %70
  br i1 %39, label %76, label %81

76:                                               ; preds = %75
  %77 = load i32, ptr %22, align 8
  %78 = and i32 %77, -5
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i32 [ %78, %76 ], [ %74, %72 ]
  store i32 %80, ptr %22, align 8
  br label %81

81:                                               ; preds = %79, %75
  %82 = call i32 %2(ptr noundef %20, ptr noundef %1) #9
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %94, label %84, !prof !17

84:                                               ; preds = %81
  %85 = add i32 %82, %43
  %86 = load i64, ptr %4, align 8
  store i64 %86, ptr %35, align 8
  %87 = icmp ult i32 %82, %68
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = zext i32 %82 to i64
  %90 = add i64 %44, %89
  br label %94

91:                                               ; preds = %84
  %92 = sub i32 %42, %82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %41

94:                                               ; preds = %88, %81
  %95 = phi i64 [ %90, %88 ], [ %44, %81 ]
  %96 = phi i32 [ %85, %88 ], [ %43, %81 ]
  store i64 %95, ptr %35, align 8
  br label %97

97:                                               ; preds = %94, %67, %61, %48, %41
  %98 = phi i32 [ %96, %94 ], [ %43, %61 ], [ %43, %48 ], [ %43, %41 ], [ %43, %67 ]
  %99 = phi i32 [ %82, %94 ], [ %68, %67 ], [ -9, %41 ], [ %56, %48 ], [ -22, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %100 = getelementptr inbounds %struct.pipe_inode_info, ptr %20, i32 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %129, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.pipe_inode_info, ptr %20, i32 0, i32 17
  br label %113

105:                                              ; preds = %129, %91, %34
  %106 = phi i32 [ %131, %129 ], [ 0, %34 ], [ %85, %91 ]
  store i32 0, ptr %26, align 4
  store i32 0, ptr %28, align 4
  %107 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 262144
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  call void @touch_atime(ptr noundef %112) #9
  br label %132

113:                                              ; preds = %125, %103
  %114 = phi i32 [ %101, %103 ], [ %126, %125 ]
  %115 = phi i32 [ 0, %103 ], [ %127, %125 ]
  %116 = load ptr, ptr %104, align 4
  %117 = getelementptr %struct.pipe_buffer, ptr %116, i32 %115, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = getelementptr %struct.pipe_buffer, ptr %116, i32 %115
  store ptr null, ptr %117, align 4
  %122 = getelementptr inbounds %struct.pipe_buf_operations, ptr %118, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  call void %123(ptr noundef %20, ptr noundef %121) #9
  %124 = load i32, ptr %100, align 4
  br label %125

125:                                              ; preds = %120, %113
  %126 = phi i32 [ %124, %120 ], [ %114, %113 ]
  %127 = add nuw i32 %115, 1
  %128 = icmp ult i32 %127, %126
  br i1 %128, label %113, label %129

129:                                              ; preds = %125, %97
  %130 = icmp eq i32 %98, 0
  %131 = select i1 %130, i32 %99, i32 %98
  br label %105

132:                                              ; preds = %111, %105, %14, %3
  %133 = phi i32 [ -22, %3 ], [ -12, %14 ], [ %106, %105 ], [ %106, %111 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_pipe_info() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_splice_direct(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.splice_desc, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  %8 = getelementptr inbounds i8, ptr %7, i32 32
  store i64 0, ptr %8, align 8, !annotation !18
  store i32 %4, ptr %7, align 8
  %9 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 1
  store i32 %4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 2
  store i32 %5, ptr %10, align 8
  %11 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 4
  %13 = load i64, ptr %1, align 8
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 5
  store ptr %3, ptr %14, align 8
  %15 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 6
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20, !prof !17

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33, !prof !9

25:                                               ; preds = %20
  %26 = tail call i32 @rw_verify_area(i32 noundef 1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28, !prof !17

28:                                               ; preds = %25
  %29 = call i32 @splice_direct_to_actor(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull @direct_splice_actor)
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, ptr %12, align 8
  store i64 %32, ptr %1, align 8
  br label %33

33:                                               ; preds = %31, %28, %25, %20, %6
  %34 = phi i32 [ -9, %6 ], [ -22, %20 ], [ %26, %25 ], [ %29, %31 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rw_verify_area(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @direct_splice_actor(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = load i32, ptr %1, align 8
  %14 = getelementptr inbounds %struct.splice_desc, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 %8(ptr noundef %0, ptr noundef %4, ptr noundef %15, i32 noundef %13, i32 noundef %12) #9
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i32 [ %16, %10 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @splice_file_to_pipe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  tail call void @pipe_lock(ptr noundef %1) #9
  %6 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11, !prof !17

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #9
  br label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 4
  %14 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 5
  %15 = and i32 %4, 2
  %16 = icmp ne i32 %15, 0
  br label %20

17:                                               ; preds = %36, %9
  %18 = phi ptr [ %10, %9 ], [ %28, %36 ]
  %19 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %18, i32 noundef 0) #9
  br label %62

20:                                               ; preds = %36, %11
  %21 = load i32, ptr %12, align 4
  %22 = load i32, ptr %13, align 4
  %23 = load i32, ptr %14, align 4
  %24 = sub i32 %21, %22
  %25 = icmp ult i32 %24, %23
  %26 = or i1 %16, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %20
  %28 = tail call ptr @llvm.thread.pointer() #9
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %62, !prof !9

32:                                               ; preds = %27
  %33 = load volatile i32, ptr %28, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  tail call void @pipe_wait_writable(ptr noundef %1) #9
  %37 = load i32, ptr %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %17, label %20, !prof !17

39:                                               ; preds = %20
  br i1 %25, label %40, label %62

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45, !prof !17

45:                                               ; preds = %40
  %46 = sub i32 %23, %21
  %47 = add i32 %46, %22
  %48 = shl i32 %47, 12
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 %3) #9
  %50 = tail call i32 @rw_verify_area(i32 noundef 0, ptr noundef %0, ptr noundef %2, i32 noundef %49) #9
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %62, label %52, !prof !17

52:                                               ; preds = %45
  %53 = icmp ugt i32 %49, 2147479552
  br i1 %53, label %54, label %55, !prof !17

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ 2147479552, %54 ], [ %49, %52 ]
  %57 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.file_operations, ptr %58, i32 0, i32 25
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64, !prof !17

62:                                               ; preds = %55, %45, %40, %39, %32, %27, %17
  %63 = phi i32 [ -22, %55 ], [ %50, %45 ], [ -9, %40 ], [ -11, %39 ], [ -32, %17 ], [ -512, %27 ], [ -512, %32 ]
  tail call void @pipe_unlock(ptr noundef %1) #9
  br label %75

64:                                               ; preds = %55
  %65 = tail call i32 %60(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %56, i32 noundef %4) #9
  tail call void @pipe_unlock(ptr noundef %1) #9
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %68 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 1, i32 1
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %72, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 15
  tail call void @kill_fasync(ptr noundef %74, i32 noundef 29, i32 noundef 1) #9
  br label %75

75:                                               ; preds = %73, %64, %62
  %76 = phi i32 [ %63, %62 ], [ %65, %73 ], [ %65, %64 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_splice(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %321, label %12, !prof !17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %321, label %17, !prof !17

17:                                               ; preds = %12
  %18 = tail call ptr @get_pipe_info(ptr noundef %0, i1 noundef zeroext true) #9
  %19 = tail call ptr @get_pipe_info(ptr noundef %2, i1 noundef zeroext true) #9
  %20 = icmp ne ptr %18, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %192

23:                                               ; preds = %17
  %24 = icmp ne ptr %1, null
  %25 = icmp ne ptr %3, null
  %26 = or i1 %24, %25
  br i1 %26, label %321, label %27

27:                                               ; preds = %23
  %28 = icmp eq ptr %18, %19
  br i1 %28, label %321, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, %31
  %35 = lshr i32 %34, 10
  %36 = and i32 %35, 2
  %37 = or i32 %36, %5
  %38 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 3
  %39 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 4
  %40 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 9
  %41 = and i32 %37, 2
  %42 = icmp ne i32 %41, 0
  %43 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 6
  %44 = getelementptr inbounds %struct.pipe_inode_info, ptr %19, i32 0, i32 3
  %45 = getelementptr inbounds %struct.pipe_inode_info, ptr %19, i32 0, i32 6
  %46 = getelementptr inbounds %struct.pipe_inode_info, ptr %19, i32 0, i32 8
  %47 = getelementptr inbounds %struct.pipe_inode_info, ptr %19, i32 0, i32 4
  %48 = getelementptr inbounds %struct.pipe_inode_info, ptr %19, i32 0, i32 5
  %49 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 17
  %50 = getelementptr inbounds %struct.pipe_inode_info, ptr %19, i32 0, i32 17
  %51 = icmp ne i32 %41, 0
  br label %52

52:                                               ; preds = %158, %29
  %53 = phi i32 [ %4, %29 ], [ %95, %158 ]
  %54 = phi i1 [ false, %29 ], [ %99, %158 ]
  %55 = load i32, ptr %38, align 4
  %56 = load i32, ptr %39, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  tail call void @pipe_lock(ptr noundef nonnull %18) #9
  %59 = load i32, ptr %38, align 4
  %60 = load i32, ptr %39, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = tail call ptr @llvm.thread.pointer() #9
  br label %64

64:                                               ; preds = %76, %62
  %65 = load volatile i32, ptr %63, align 4
  %66 = and i32 %65, 256
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %82, !prof !9

68:                                               ; preds = %64
  %69 = load volatile i32, ptr %63, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, ptr %40, align 4
  %74 = icmp eq i32 %73, 0
  %75 = or i1 %42, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  tail call void @pipe_wait_readable(ptr noundef nonnull %18) #9
  %77 = load i32, ptr %38, align 4
  %78 = load i32, ptr %39, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %64, label %81

80:                                               ; preds = %72
  br i1 %74, label %81, label %82

81:                                               ; preds = %80, %76, %58
  tail call void @pipe_unlock(ptr noundef nonnull %18) #9
  br label %84

82:                                               ; preds = %80, %68, %64
  %83 = phi i32 [ -512, %64 ], [ -512, %68 ], [ -11, %80 ]
  tail call void @pipe_unlock(ptr noundef nonnull %18) #9
  br label %321

84:                                               ; preds = %81, %52
  %85 = tail call fastcc i32 @opipe_prep(ptr noundef nonnull %19, i32 noundef %37) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %321

87:                                               ; preds = %84
  tail call void @pipe_double_lock(ptr noundef nonnull %18, ptr noundef nonnull %19) #9
  %88 = load i32, ptr %39, align 4
  %89 = load i32, ptr %43, align 4
  %90 = add i32 %89, -1
  %91 = load i32, ptr %44, align 4
  %92 = load i32, ptr %45, align 4
  %93 = add i32 %92, -1
  br label %94

94:                                               ; preds = %159, %87
  %95 = phi i32 [ %53, %87 ], [ %165, %159 ]
  %96 = phi i32 [ %91, %87 ], [ %163, %159 ]
  %97 = phi i32 [ %88, %87 ], [ %160, %159 ]
  %98 = phi i32 [ 0, %87 ], [ %164, %159 ]
  %99 = phi i1 [ %54, %87 ], [ %161, %159 ]
  %100 = load i32, ptr %46, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = tail call ptr @llvm.thread.pointer() #9
  %104 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %103, i32 noundef 0) #9
  %105 = icmp eq i32 %98, 0
  %106 = select i1 %105, i32 -32, i32 %98
  br label %171

107:                                              ; preds = %94
  %108 = load i32, ptr %38, align 4
  %109 = icmp eq i32 %108, %97
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, ptr %40, align 4
  %112 = icmp eq i32 %111, 0
  %113 = icmp ne i32 %98, 0
  %114 = select i1 %112, i1 true, i1 %113
  %115 = select i1 %114, i1 true, i1 %51
  br i1 %115, label %169, label %158

116:                                              ; preds = %107
  %117 = load i32, ptr %47, align 4
  %118 = load i32, ptr %48, align 4
  %119 = sub i32 %96, %117
  %120 = icmp ult i32 %119, %118
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = icmp ne i32 %98, 0
  %123 = select i1 %122, i1 true, i1 %51
  br i1 %123, label %167, label %158

124:                                              ; preds = %116
  %125 = load ptr, ptr %49, align 4
  %126 = and i32 %97, %90
  %127 = getelementptr %struct.pipe_buffer, ptr %125, i32 %126
  %128 = load ptr, ptr %50, align 4
  %129 = and i32 %96, %93
  %130 = getelementptr %struct.pipe_buffer, ptr %128, i32 %129
  %131 = getelementptr %struct.pipe_buffer, ptr %125, i32 %126, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = icmp ult i32 %95, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %124
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %130, ptr noundef align 4 dereferenceable(24) %127, i32 24, i1 false) #9
  %135 = getelementptr %struct.pipe_buffer, ptr %125, i32 %126, i32 3
  store ptr null, ptr %135, align 4
  %136 = add i32 %97, 1
  store i32 %136, ptr %39, align 4
  %137 = getelementptr %struct.pipe_buffer, ptr %128, i32 %129, i32 2
  %138 = load i32, ptr %137, align 4
  br label %159

139:                                              ; preds = %124
  %140 = getelementptr %struct.pipe_buffer, ptr %125, i32 %126, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.pipe_buf_operations, ptr %141, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = tail call zeroext i1 %143(ptr noundef nonnull %18, ptr noundef %127) #9
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = icmp eq i32 %98, 0
  %147 = select i1 %146, i32 -14, i32 %98
  br label %171

148:                                              ; preds = %139
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %130, ptr noundef align 4 dereferenceable(24) %127, i32 24, i1 false) #9
  %149 = getelementptr %struct.pipe_buffer, ptr %128, i32 %129, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, -21
  store i32 %151, ptr %149, align 4
  %152 = getelementptr %struct.pipe_buffer, ptr %128, i32 %129, i32 2
  store i32 %95, ptr %152, align 4
  %153 = getelementptr %struct.pipe_buffer, ptr %125, i32 %126, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, %95
  store i32 %155, ptr %153, align 4
  %156 = load i32, ptr %131, align 4
  %157 = sub i32 %156, %95
  store i32 %157, ptr %131, align 4
  br label %159

158:                                              ; preds = %121, %110
  tail call void @pipe_unlock(ptr noundef nonnull %18) #9
  tail call void @pipe_unlock(ptr noundef nonnull %19) #9
  br label %52

159:                                              ; preds = %148, %134
  %160 = phi i32 [ %97, %148 ], [ %136, %134 ]
  %161 = phi i1 [ %99, %148 ], [ true, %134 ]
  %162 = phi i32 [ %95, %148 ], [ %138, %134 ]
  %163 = add i32 %96, 1
  store i32 %163, ptr %44, align 4
  %164 = add i32 %162, %98
  %165 = sub i32 %95, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %171, label %94

167:                                              ; preds = %121
  %168 = select i1 %122, i32 %98, i32 -11
  br label %171

169:                                              ; preds = %110
  %170 = select i1 %114, i32 %98, i32 -11
  br label %171

171:                                              ; preds = %169, %167, %159, %145, %102
  %172 = phi i1 [ %99, %102 ], [ %99, %145 ], [ %99, %167 ], [ %99, %169 ], [ %161, %159 ]
  %173 = phi i32 [ %106, %102 ], [ %147, %145 ], [ %168, %167 ], [ %170, %169 ], [ %164, %159 ]
  tail call void @pipe_unlock(ptr noundef nonnull %18) #9
  tail call void @pipe_unlock(ptr noundef nonnull %19) #9
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %176 = getelementptr inbounds %struct.pipe_inode_info, ptr %19, i32 0, i32 1, i32 1
  %177 = load volatile ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, %176
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.pipe_inode_info, ptr %19, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %180, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %181

181:                                              ; preds = %179, %175
  %182 = getelementptr inbounds %struct.pipe_inode_info, ptr %19, i32 0, i32 15
  tail call void @kill_fasync(ptr noundef %182, i32 noundef 29, i32 noundef 1) #9
  br label %183

183:                                              ; preds = %181, %171
  br i1 %172, label %184, label %321

184:                                              ; preds = %183
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %185 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 2, i32 1
  %186 = load volatile ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, %185
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %189, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %190

190:                                              ; preds = %188, %184
  %191 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %191, i32 noundef 29, i32 noundef 2) #9
  br label %321

192:                                              ; preds = %17
  br i1 %20, label %193, label %297

193:                                              ; preds = %192
  %194 = icmp eq ptr %1, null
  br i1 %194, label %195, label %321

195:                                              ; preds = %193
  %196 = icmp eq ptr %3, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %195
  %198 = load i32, ptr %13, align 8
  %199 = and i32 %198, 16
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %321, label %203

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 10
  br label %203

203:                                              ; preds = %201, %197
  %204 = phi ptr [ %202, %201 ], [ %3, %197 ]
  %205 = load i64, ptr %204, align 8
  store i64 %205, ptr %7, align 8
  %206 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 7
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 1024
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %321, !prof !9

210:                                              ; preds = %203
  %211 = call i32 @rw_verify_area(i32 noundef 1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef %4) #9
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %321, label %213, !prof !17

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %215 = load i32, ptr %214, align 4
  %216 = lshr i32 %215, 10
  %217 = and i32 %216, 2
  %218 = or i32 %217, %5
  %219 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %220 = load ptr, ptr %219, align 8
  %221 = load i16, ptr %220, align 8
  %222 = and i16 %221, -4096
  %223 = icmp eq i16 %222, -32768
  br i1 %223, label %224, label %245

224:                                              ; preds = %213
  %225 = getelementptr inbounds %struct.inode, ptr %220, i32 0, i32 8
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr %struct.super_block, ptr %226, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %228 = load volatile i32, ptr %227, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %242, !prof !9

230:                                              ; preds = %224
  %231 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !24
  %232 = getelementptr %struct.super_block, ptr %226, i32 0, i32 26, i32 2, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = ptrtoint ptr %233 to i32
  %235 = call i32 @llvm.read_register.i32(metadata !0) #9
  %236 = inttoptr i32 %235 to ptr
  %237 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %236) #8, !srcloc !25
  %238 = add i32 %237, %234
  %239 = inttoptr i32 %238 to ptr
  %240 = load i32, ptr %239, align 4
  %241 = add i32 %240, 1
  store i32 %241, ptr %239, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %231) #9, !srcloc !26
  br label %244

242:                                              ; preds = %224
  %243 = call zeroext i1 @__percpu_down_read(ptr noundef %227, i1 noundef zeroext false) #9
  br label %244

244:                                              ; preds = %242, %230
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %245

245:                                              ; preds = %244, %213
  %246 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 3
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.file_operations, ptr %247, i32 0, i32 24
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251, !prof !17

251:                                              ; preds = %245
  %252 = call i32 %249(ptr noundef nonnull %18, ptr noundef %2, ptr noundef nonnull %7, i32 noundef %4, i32 noundef %218) #9
  br label %253

253:                                              ; preds = %251, %245
  %254 = phi i32 [ %252, %251 ], [ -22, %245 ]
  %255 = load ptr, ptr %219, align 8
  %256 = load i16, ptr %255, align 8
  %257 = and i16 %256, -4096
  %258 = icmp eq i16 %257, -32768
  br i1 %258, label %259, label %292

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.inode, ptr %255, i32 0, i32 8
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr %struct.super_block, ptr %261, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %263 = load volatile i32, ptr %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %277, !prof !9

265:                                              ; preds = %259
  %266 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !24
  %267 = getelementptr %struct.super_block, ptr %261, i32 0, i32 26, i32 2, i32 0, i32 1
  %268 = load ptr, ptr %267, align 4
  %269 = ptrtoint ptr %268 to i32
  %270 = call i32 @llvm.read_register.i32(metadata !0) #9
  %271 = inttoptr i32 %270 to ptr
  %272 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %271) #8, !srcloc !25
  %273 = add i32 %272, %269
  %274 = inttoptr i32 %273 to ptr
  %275 = load i32, ptr %274, align 4
  %276 = add i32 %275, -1
  store i32 %276, ptr %274, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %266) #9, !srcloc !26
  br label %291

277:                                              ; preds = %259
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %278 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !24
  %279 = getelementptr %struct.super_block, ptr %261, i32 0, i32 26, i32 2, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = ptrtoint ptr %280 to i32
  %282 = call i32 @llvm.read_register.i32(metadata !0) #9
  %283 = inttoptr i32 %282 to ptr
  %284 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %283) #8, !srcloc !25
  %285 = add i32 %284, %281
  %286 = inttoptr i32 %285 to ptr
  %287 = load i32, ptr %286, align 4
  %288 = add i32 %287, -1
  store i32 %288, ptr %286, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %278) #9, !srcloc !26
  %289 = getelementptr %struct.super_block, ptr %261, i32 0, i32 26, i32 2, i32 0, i32 2
  %290 = call i32 @rcuwait_wake_up(ptr noundef %289) #9
  br label %291

291:                                              ; preds = %277, %265
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br label %292

292:                                              ; preds = %291, %253
  %293 = load i64, ptr %7, align 8
  br i1 %196, label %294, label %296

294:                                              ; preds = %292
  %295 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 10
  store i64 %293, ptr %295, align 8
  br label %321

296:                                              ; preds = %292
  store i64 %293, ptr %3, align 8
  br label %321

297:                                              ; preds = %192
  br i1 %21, label %298, label %321

298:                                              ; preds = %297
  %299 = icmp eq ptr %3, null
  br i1 %299, label %300, label %321

300:                                              ; preds = %298
  %301 = icmp eq ptr %1, null
  br i1 %301, label %306, label %302

302:                                              ; preds = %300
  %303 = load i32, ptr %8, align 8
  %304 = and i32 %303, 8
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %321, label %308

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  br label %308

308:                                              ; preds = %306, %302
  %309 = phi ptr [ %307, %306 ], [ %1, %302 ]
  %310 = load i64, ptr %309, align 8
  store i64 %310, ptr %7, align 8
  %311 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 7
  %312 = load i32, ptr %311, align 4
  %313 = lshr i32 %312, 10
  %314 = and i32 %313, 2
  %315 = or i32 %314, %5
  %316 = call i32 @splice_file_to_pipe(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %7, i32 noundef %4, i32 noundef %315)
  %317 = load i64, ptr %7, align 8
  br i1 %301, label %318, label %320

318:                                              ; preds = %308
  %319 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 %317, ptr %319, align 8
  br label %321

320:                                              ; preds = %308
  store i64 %317, ptr %1, align 8
  br label %321

321:                                              ; preds = %320, %318, %302, %298, %297, %296, %294, %210, %203, %197, %193, %190, %183, %84, %82, %27, %23, %12, %6
  %322 = phi i32 [ -9, %12 ], [ -29, %23 ], [ -22, %27 ], [ -29, %193 ], [ -22, %197 ], [ -22, %203 ], [ %211, %210 ], [ %254, %296 ], [ %254, %294 ], [ -29, %298 ], [ -22, %302 ], [ %316, %320 ], [ %316, %318 ], [ -22, %297 ], [ -9, %6 ], [ %83, %82 ], [ %173, %190 ], [ %173, %183 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret i32 %322
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pipe_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_vmsplice(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.splice_desc, align 8
  %6 = alloca %struct.pipe_buffer, align 4
  %7 = alloca [16 x ptr], align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x %struct.iovec], align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.iov_iter, align 8
  %12 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, i8 0, i32 64, i1 false) #9, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store ptr %9, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i32 24, i1 false) #9, !annotation !18
  %13 = icmp ult i32 %3, 16
  br i1 %13, label %14, label %211, !prof !9

14:                                               ; preds = %4
  %15 = call i32 @__fdget(i32 noundef %0) #9, !noalias !31
  %16 = and i32 %15, -4
  %17 = inttoptr i32 %16 to ptr
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %211, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = and i32 %21, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = and i32 %15, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %211, label %209

30:                                               ; preds = %24, %19
  %31 = phi i32 [ 1, %19 ], [ 0, %24 ]
  %32 = call i32 @import_iovec(i32 noundef %31, ptr noundef %12, i32 noundef %2, i32 noundef 8, ptr noundef nonnull %10, ptr noundef nonnull %11) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %205, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.iov_iter, ptr %11, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %202, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.iov_iter, ptr %11, i32 0, i32 2
  %40 = load i8, ptr %39, align 2, !range !20
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %187

42:                                               ; preds = %38
  %43 = lshr i32 %3, 1
  %44 = and i32 %43, 4
  %45 = call ptr @get_pipe_info(ptr noundef nonnull %17, i1 noundef zeroext true) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %202, label %47

47:                                               ; preds = %42
  call void @pipe_lock(ptr noundef nonnull %45) #9
  %48 = getelementptr inbounds %struct.pipe_inode_info, ptr %45, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53, !prof !17

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #9
  br label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.pipe_inode_info, ptr %45, i32 0, i32 3
  %55 = getelementptr inbounds %struct.pipe_inode_info, ptr %45, i32 0, i32 4
  %56 = getelementptr inbounds %struct.pipe_inode_info, ptr %45, i32 0, i32 5
  %57 = and i32 %3, 2
  %58 = icmp ne i32 %57, 0
  br label %62

59:                                               ; preds = %78, %51
  %60 = phi ptr [ %52, %51 ], [ %70, %78 ]
  %61 = call i32 @send_sig(i32 noundef 13, ptr noundef %60, i32 noundef 0) #9
  br label %82

62:                                               ; preds = %78, %53
  %63 = load i32, ptr %54, align 4
  %64 = load i32, ptr %55, align 4
  %65 = load i32, ptr %56, align 4
  %66 = sub i32 %63, %64
  %67 = icmp ult i32 %66, %65
  %68 = or i1 %58, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %62
  %70 = tail call ptr @llvm.thread.pointer() #9
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 256
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82, !prof !9

74:                                               ; preds = %69
  %75 = load volatile i32, ptr %70, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  call void @pipe_wait_writable(ptr noundef nonnull %45) #9
  %79 = load i32, ptr %48, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %59, label %62, !prof !17

81:                                               ; preds = %62
  br i1 %67, label %84, label %82

82:                                               ; preds = %81, %74, %69, %59
  %83 = phi i32 [ -11, %81 ], [ -32, %59 ], [ -512, %69 ], [ -512, %74 ]
  call void @pipe_unlock(ptr noundef nonnull %45) #9
  br label %202

84:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %85 = getelementptr inbounds %struct.pipe_buffer, ptr %6, i32 0, i32 1
  %86 = getelementptr inbounds %struct.pipe_buffer, ptr %6, i32 0, i32 2
  %87 = getelementptr inbounds %struct.pipe_buffer, ptr %6, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false) #9
  store ptr @user_page_pipe_buf_ops, ptr %87, align 4
  %88 = getelementptr inbounds %struct.pipe_buffer, ptr %6, i32 0, i32 4
  store i32 %44, ptr %88, align 4
  %89 = getelementptr inbounds %struct.pipe_buffer, ptr %6, i32 0, i32 5
  store i32 0, ptr %89, align 4
  %90 = load i32, ptr %35, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %174, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.pipe_inode_info, ptr %45, i32 0, i32 6
  %94 = getelementptr inbounds %struct.pipe_inode_info, ptr %45, i32 0, i32 17
  br label %95

95:                                               ; preds = %166, %92
  %96 = phi i32 [ 0, %92 ], [ %162, %166 ]
  %97 = phi i32 [ 0, %92 ], [ %161, %166 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false) #9, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !18
  %98 = call i32 @iov_iter_get_pages(ptr noundef nonnull %11, ptr noundef nonnull %7, i32 noundef -1, i32 noundef 16, ptr noundef nonnull %8) #9
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %8, align 4
  br label %103

102:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  br label %170

103:                                              ; preds = %159, %100
  %104 = phi i32 [ 0, %159 ], [ %101, %100 ]
  %105 = phi i32 [ %162, %159 ], [ %96, %100 ]
  %106 = phi i32 [ %161, %159 ], [ %97, %100 ]
  %107 = phi i1 [ %160, %159 ], [ false, %100 ]
  %108 = phi i32 [ %164, %159 ], [ 0, %100 ]
  %109 = phi i32 [ %163, %159 ], [ %98, %100 ]
  %110 = sub i32 4096, %104
  %111 = call i32 @llvm.smin.i32(i32 %109, i32 %110) #9
  %112 = getelementptr [16 x ptr], ptr %7, i32 0, i32 %108
  %113 = load ptr, ptr %112, align 4
  br i1 %107, label %142, label %114

114:                                              ; preds = %103
  store ptr %113, ptr %6, align 4
  store i32 %104, ptr %85, align 4
  store i32 %111, ptr %86, align 4
  %115 = load i32, ptr %54, align 4
  %116 = load i32, ptr %93, align 4
  %117 = add i32 %116, -1
  %118 = load i32, ptr %48, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123, !prof !17

120:                                              ; preds = %114
  %121 = tail call ptr @llvm.thread.pointer() #9
  %122 = call i32 @send_sig(i32 noundef 13, ptr noundef %121, i32 noundef 0) #9
  br label %128

123:                                              ; preds = %114
  %124 = load i32, ptr %55, align 4
  %125 = load i32, ptr %56, align 4
  %126 = sub i32 %115, %124
  %127 = icmp ult i32 %126, %125
  br i1 %127, label %133, label %128

128:                                              ; preds = %123, %120
  %129 = phi i32 [ -32, %120 ], [ -11, %123 ]
  %130 = load ptr, ptr %87, align 4
  store ptr null, ptr %87, align 4
  %131 = getelementptr inbounds %struct.pipe_buf_operations, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  call void %132(ptr noundef nonnull %45, ptr noundef nonnull %6) #9
  br label %159

133:                                              ; preds = %123
  %134 = load ptr, ptr %94, align 4
  %135 = and i32 %117, %115
  %136 = getelementptr %struct.pipe_buffer, ptr %134, i32 %135
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %136, ptr noundef nonnull align 4 dereferenceable(24) %6, i32 24, i1 false) #9
  %137 = add i32 %115, 1
  store i32 %137, ptr %54, align 4
  %138 = load i32, ptr %86, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %159, label %140, !prof !17

140:                                              ; preds = %133
  call void @iov_iter_advance(ptr noundef nonnull %11, i32 noundef %138) #9
  %141 = add i32 %138, %105
  br label %159

142:                                              ; preds = %103
  %143 = getelementptr inbounds %struct.page, ptr %113, i32 0, i32 1
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147, !prof !9

147:                                              ; preds = %142
  %148 = add i32 %144, -1
  br label %151

149:                                              ; preds = %142
  %150 = ptrtoint ptr %113 to i32
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  %153 = inttoptr i32 %152 to ptr
  %154 = getelementptr inbounds %struct.page, ptr %153, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %154) #9, !srcloc !11
  %155 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %154, ptr %154, i32 1, ptr elementtype(i32) %154) #9, !srcloc !15
  %156 = extractvalue { i32, i32 } %155, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  call void @__put_page(ptr noundef %153) #9
  br label %159

159:                                              ; preds = %158, %151, %140, %133, %128
  %160 = phi i1 [ false, %140 ], [ true, %133 ], [ true, %128 ], [ true, %151 ], [ true, %158 ]
  %161 = phi i32 [ %138, %140 ], [ %138, %133 ], [ %129, %128 ], [ %106, %151 ], [ %106, %158 ]
  %162 = phi i32 [ %141, %140 ], [ %105, %133 ], [ %105, %128 ], [ %105, %151 ], [ %105, %158 ]
  %163 = sub i32 %109, %111
  %164 = add i32 %108, 1
  store i32 0, ptr %8, align 4
  %165 = icmp eq i32 %163, 0
  br i1 %165, label %166, label %103

166:                                              ; preds = %159
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  %167 = load i32, ptr %35, align 8
  %168 = icmp eq i32 %167, 0
  %169 = or i1 %160, %168
  br i1 %169, label %170, label %95

170:                                              ; preds = %166, %102
  %171 = phi i32 [ %96, %102 ], [ %162, %166 ]
  %172 = phi i32 [ %98, %102 ], [ %161, %166 ]
  %173 = icmp eq i32 %171, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170, %84
  %175 = phi i32 [ %172, %170 ], [ 0, %84 ]
  br label %176

176:                                              ; preds = %174, %170
  %177 = phi i32 [ %175, %174 ], [ %171, %170 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @pipe_unlock(ptr noundef nonnull %45) #9
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %202

179:                                              ; preds = %176
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %180 = getelementptr inbounds %struct.pipe_inode_info, ptr %45, i32 0, i32 1, i32 1
  %181 = load volatile ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, %180
  br i1 %182, label %185, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.pipe_inode_info, ptr %45, i32 0, i32 1
  call void @__wake_up(ptr noundef %184, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %185

185:                                              ; preds = %183, %179
  %186 = getelementptr inbounds %struct.pipe_inode_info, ptr %45, i32 0, i32 15
  call void @kill_fasync(ptr noundef %186, i32 noundef 29, i32 noundef 1) #9
  br label %202

187:                                              ; preds = %38
  %188 = call ptr @get_pipe_info(ptr noundef nonnull %17, i1 noundef zeroext true) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  %189 = getelementptr inbounds i8, ptr %5, i32 32
  store i64 0, ptr %189, align 8, !annotation !18
  %190 = load i32, ptr %35, align 8
  store i32 %190, ptr %5, align 8
  %191 = getelementptr inbounds %struct.splice_desc, ptr %5, i32 0, i32 1
  store i32 0, ptr %191, align 4
  %192 = getelementptr inbounds %struct.splice_desc, ptr %5, i32 0, i32 2
  store i32 %3, ptr %192, align 8
  %193 = getelementptr inbounds %struct.splice_desc, ptr %5, i32 0, i32 3
  store ptr %11, ptr %193, align 4
  %194 = getelementptr inbounds %struct.splice_desc, ptr %5, i32 0, i32 4
  %195 = icmp eq ptr %188, null
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(17) %194, i8 0, i64 17, i1 false) #9
  br i1 %195, label %200, label %196

196:                                              ; preds = %187
  %197 = icmp eq i32 %190, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %196
  call void @pipe_lock(ptr noundef nonnull %188) #9
  %199 = call i32 @__splice_from_pipe(ptr noundef nonnull %188, ptr noundef nonnull %5, ptr noundef nonnull @pipe_to_user) #9
  call void @pipe_unlock(ptr noundef nonnull %188) #9
  br label %200

200:                                              ; preds = %198, %196, %187
  %201 = phi i32 [ -9, %187 ], [ %199, %198 ], [ 0, %196 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  br label %202

202:                                              ; preds = %200, %185, %176, %82, %42, %34
  %203 = phi i32 [ %201, %200 ], [ 0, %34 ], [ -9, %42 ], [ %177, %185 ], [ %177, %176 ], [ %83, %82 ]
  %204 = load ptr, ptr %10, align 4
  call void @kfree(ptr noundef %204) #9
  br label %205

205:                                              ; preds = %202, %30
  %206 = phi i32 [ %32, %30 ], [ %203, %202 ]
  %207 = and i32 %15, 1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205, %27
  %210 = phi i32 [ -9, %27 ], [ %206, %205 ]
  call void @fput(ptr noundef nonnull %17) #9
  br label %211

211:                                              ; preds = %209, %205, %27, %14, %4
  %212 = phi i32 [ -22, %4 ], [ %206, %205 ], [ -9, %14 ], [ -9, %27 ], [ %210, %209 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  ret i32 %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_splice(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = inttoptr i32 %1 to ptr
  %9 = inttoptr i32 %3 to ptr
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %111, label %11, !prof !17

11:                                               ; preds = %6
  %12 = icmp ult i32 %5, 16
  br i1 %12, label %13, label %111, !prof !9

13:                                               ; preds = %11
  %14 = tail call i32 @__fdget(i32 noundef %0) #9, !noalias !34
  %15 = and i32 %14, -4
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %111, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @__fdget(i32 noundef %2) #9, !noalias !37
  %20 = and i32 %19, -4
  %21 = inttoptr i32 %20 to ptr
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %106, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  store i64 0, ptr %7, align 8, !annotation !18
  %24 = tail call ptr @get_pipe_info(ptr noundef nonnull %16, i1 noundef zeroext true) #9
  %25 = tail call ptr @get_pipe_info(ptr noundef nonnull %21, i1 noundef zeroext true) #9
  %26 = icmp ne ptr %24, null
  %27 = icmp ne i32 %1, 0
  %28 = and i1 %27, %26
  br i1 %28, label %101, label %29

29:                                               ; preds = %23
  %30 = icmp ne ptr %25, null
  %31 = icmp ne i32 %3, 0
  %32 = and i1 %31, %30
  br i1 %32, label %101, label %33

33:                                               ; preds = %29
  br i1 %31, label %34, label %50

34:                                               ; preds = %33
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %9, i32 8, i32 -1090519040) #11, !srcloc !40
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46, !prof !9

38:                                               ; preds = %34
  %39 = tail call ptr @llvm.thread.pointer() #9
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #8, !srcloc !41
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #9, !srcloc !42
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !43
  %44 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #9, !srcloc !42
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !9

46:                                               ; preds = %38, %34
  %47 = phi i32 [ %44, %38 ], [ 8, %34 ]
  %48 = sub i32 8, %47
  %49 = getelementptr i8, ptr %7, i32 %48
  call void @llvm.memset.p0.i32(ptr align 1 %49, i8 0, i32 %47, i1 false) #9
  br label %101

50:                                               ; preds = %38, %33
  %51 = phi ptr [ null, %33 ], [ %7, %38 ]
  br i1 %27, label %52, label %68

52:                                               ; preds = %50
  %53 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %8, i32 8, i32 -1090519040) #11, !srcloc !40
  %54 = extractvalue { i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64, !prof !9

56:                                               ; preds = %52
  %57 = tail call ptr @llvm.thread.pointer() #9
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %59 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #8, !srcloc !41
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #9, !srcloc !42
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !43
  %62 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #9, !srcloc !42
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !43
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64, !prof !9

64:                                               ; preds = %56, %52
  %65 = phi i32 [ %62, %56 ], [ 8, %52 ]
  %66 = sub i32 8, %65
  %67 = getelementptr i8, ptr %7, i32 %66
  call void @llvm.memset.p0.i32(ptr align 1 %67, i8 0, i32 %65, i1 false) #9
  br label %101

68:                                               ; preds = %56, %50
  %69 = phi ptr [ null, %50 ], [ %7, %56 ]
  %70 = call i32 @do_splice(ptr noundef nonnull %16, ptr noundef %69, ptr noundef nonnull %21, ptr noundef %51, i32 noundef %4, i32 noundef %5) #9
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %101, label %72

72:                                               ; preds = %68
  %73 = icmp eq ptr %51, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %72
  %75 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 8, i32 -1090519040) #11, !srcloc !44
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = tail call ptr @llvm.thread.pointer() #9
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 3
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %80) #8, !srcloc !41
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #9, !srcloc !42
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !43
  %84 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %51, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #9, !srcloc !42
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !43
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %78, %72
  %87 = icmp eq ptr %69, null
  br i1 %87, label %100, label %88

88:                                               ; preds = %86
  %89 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 8, i32 -1090519040) #11, !srcloc !44
  %90 = extractvalue { i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = tail call ptr @llvm.thread.pointer() #9
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 3
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %94) #8, !srcloc !41
  %96 = and i32 %95, -13
  %97 = or i32 %96, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #9, !srcloc !42
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !43
  %98 = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %69, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #9, !srcloc !42
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !43
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92, %86
  br label %101

101:                                              ; preds = %100, %92, %88, %78, %74, %68, %64, %46, %29, %23
  %102 = phi i32 [ %70, %100 ], [ -29, %23 ], [ -29, %29 ], [ %70, %68 ], [ -14, %78 ], [ -14, %92 ], [ -14, %46 ], [ -14, %64 ], [ -14, %74 ], [ -14, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  %103 = and i32 %19, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @fput(ptr noundef nonnull %21) #9
  br label %106

106:                                              ; preds = %105, %101, %18
  %107 = phi i32 [ -9, %18 ], [ %102, %101 ], [ %102, %105 ]
  %108 = and i32 %14, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void @fput(ptr noundef nonnull %16) #9
  br label %111

111:                                              ; preds = %110, %106, %13, %11, %6
  %112 = phi i32 [ 0, %6 ], [ -22, %11 ], [ -9, %13 ], [ %107, %106 ], [ %107, %110 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_tee(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @get_pipe_info(ptr noundef %0, i1 noundef zeroext true) #9
  %6 = tail call ptr @get_pipe_info(ptr noundef %1, i1 noundef zeroext true) #9
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %144, label %11, !prof !17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %144, label %16, !prof !17

16:                                               ; preds = %11
  %17 = icmp eq ptr %5, null
  %18 = icmp eq ptr %6, null
  %19 = select i1 %17, i1 true, i1 %18
  %20 = icmp eq ptr %5, %6
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %144, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %24
  %28 = lshr i32 %27, 10
  %29 = and i32 %28, 2
  %30 = or i32 %29, %3
  %31 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %22
  tail call void @pipe_lock(ptr noundef nonnull %5) #9
  %37 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 9
  %38 = load i32, ptr %31, align 4
  %39 = load i32, ptr %33, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = and i32 %30, 2
  %43 = tail call ptr @llvm.thread.pointer() #9
  %44 = icmp ne i32 %42, 0
  br label %45

45:                                               ; preds = %57, %41
  %46 = load volatile i32, ptr %43, align 4
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63, !prof !9

49:                                               ; preds = %45
  %50 = load volatile i32, ptr %43, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, ptr %37, align 4
  %55 = icmp eq i32 %54, 0
  %56 = or i1 %44, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  tail call void @pipe_wait_readable(ptr noundef %5) #9
  %58 = load i32, ptr %31, align 4
  %59 = load i32, ptr %33, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %45, label %62

61:                                               ; preds = %53
  br i1 %55, label %62, label %63

62:                                               ; preds = %61, %57, %36
  tail call void @pipe_unlock(ptr noundef %5) #9
  br label %65

63:                                               ; preds = %61, %49, %45
  %64 = phi i32 [ -11, %61 ], [ -512, %49 ], [ -512, %45 ]
  tail call void @pipe_unlock(ptr noundef %5) #9
  br label %144

65:                                               ; preds = %62, %22
  %66 = tail call fastcc i32 @opipe_prep(ptr noundef nonnull %6, i32 noundef %30)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %144

68:                                               ; preds = %65
  tail call void @pipe_double_lock(ptr noundef %5, ptr noundef %6) #9
  %69 = load i32, ptr %33, align 4
  %70 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, -1
  %73 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, -1
  %78 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 8
  %79 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 4
  %80 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 5
  %81 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 17
  %82 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 17
  br label %83

83:                                               ; preds = %126, %68
  %84 = phi i32 [ %2, %68 ], [ %129, %126 ]
  %85 = phi i32 [ %74, %68 ], [ %130, %126 ]
  %86 = phi i32 [ %69, %68 ], [ %131, %126 ]
  %87 = phi i32 [ 0, %68 ], [ %128, %126 ]
  %88 = load i32, ptr %78, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = tail call ptr @llvm.thread.pointer() #9
  %92 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %91, i32 noundef 0) #9
  %93 = icmp eq i32 %87, 0
  %94 = select i1 %93, i32 -32, i32 %87
  br label %133

95:                                               ; preds = %83
  %96 = load i32, ptr %31, align 4
  %97 = icmp eq i32 %96, %86
  br i1 %97, label %133, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %79, align 4
  %100 = load i32, ptr %80, align 4
  %101 = sub i32 %85, %99
  %102 = icmp ult i32 %101, %100
  br i1 %102, label %103, label %133

103:                                              ; preds = %98
  %104 = load ptr, ptr %81, align 4
  %105 = and i32 %86, %72
  %106 = getelementptr %struct.pipe_buffer, ptr %104, i32 %105
  %107 = load ptr, ptr %82, align 4
  %108 = getelementptr %struct.pipe_buffer, ptr %104, i32 %105, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.pipe_buf_operations, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = tail call zeroext i1 %111(ptr noundef %5, ptr noundef %106) #9
  br i1 %112, label %116, label %113

113:                                              ; preds = %103
  %114 = icmp eq i32 %87, 0
  %115 = select i1 %114, i32 -14, i32 %87
  br label %133

116:                                              ; preds = %103
  %117 = and i32 %85, %77
  %118 = getelementptr %struct.pipe_buffer, ptr %107, i32 %117
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %118, ptr noundef align 4 dereferenceable(24) %106, i32 24, i1 false) #9
  %119 = getelementptr %struct.pipe_buffer, ptr %107, i32 %117, i32 4
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, -21
  store i32 %121, ptr %119, align 4
  %122 = getelementptr %struct.pipe_buffer, ptr %107, i32 %117, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = icmp ugt i32 %123, %84
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  store i32 %84, ptr %122, align 4
  br label %126

126:                                              ; preds = %125, %116
  %127 = phi i32 [ %84, %125 ], [ %123, %116 ]
  %128 = add i32 %127, %87
  %129 = sub i32 %84, %127
  %130 = add i32 %85, 1
  store i32 %130, ptr %73, align 4
  %131 = add i32 %86, 1
  %132 = icmp eq i32 %129, 0
  br i1 %132, label %133, label %83

133:                                              ; preds = %126, %113, %98, %95, %90
  %134 = phi i32 [ %115, %113 ], [ %94, %90 ], [ %87, %95 ], [ %87, %98 ], [ %128, %126 ]
  tail call void @pipe_unlock(ptr noundef %5) #9
  tail call void @pipe_unlock(ptr noundef %6) #9
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %137 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 1, i32 1
  %138 = load volatile ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, %137
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %141, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %142

142:                                              ; preds = %140, %136
  %143 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 15
  tail call void @kill_fasync(ptr noundef %143, i32 noundef 29, i32 noundef 1) #9
  br label %144

144:                                              ; preds = %142, %133, %65, %63, %16, %11, %4
  %145 = phi i32 [ -9, %11 ], [ %64, %63 ], [ %66, %65 ], [ -22, %16 ], [ -9, %4 ], [ %134, %133 ], [ %134, %142 ]
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @opipe_prep(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %4, %6
  %10 = icmp ult i32 %9, %8
  br i1 %10, label %45, label %11

11:                                               ; preds = %2
  tail call void @pipe_lock(ptr noundef %0) #9
  %12 = load i32, ptr %3, align 4
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %7, align 4
  %15 = sub i32 %12, %13
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %43, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 8
  %19 = and i32 %1, 2
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %37, %17
  %22 = load i32, ptr %18, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = tail call ptr @llvm.thread.pointer() #9
  %26 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %25, i32 noundef 0) #9
  br label %43

27:                                               ; preds = %21
  br i1 %20, label %28, label %43

28:                                               ; preds = %27
  %29 = tail call ptr @llvm.thread.pointer() #9
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43, !prof !9

33:                                               ; preds = %28
  %34 = load volatile i32, ptr %29, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  tail call void @pipe_wait_writable(ptr noundef %0) #9
  %38 = load i32, ptr %3, align 4
  %39 = load i32, ptr %5, align 4
  %40 = load i32, ptr %7, align 4
  %41 = sub i32 %38, %39
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %43, label %21

43:                                               ; preds = %37, %33, %28, %27, %24, %11
  %44 = phi i32 [ -32, %24 ], [ 0, %11 ], [ 0, %37 ], [ -11, %27 ], [ -512, %33 ], [ -512, %28 ]
  tail call void @pipe_unlock(ptr noundef %0) #9
  br label %45

45:                                               ; preds = %43, %2
  %46 = phi i32 [ %44, %43 ], [ 0, %2 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_tee(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ult i32 %3, 16
  br i1 %5, label %6, label %28, !prof !9

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %28, label %8, !prof !17

8:                                                ; preds = %6
  %9 = tail call i32 @__fdget(i32 noundef %0) #9, !noalias !45
  %10 = and i32 %9, -4
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @__fdget(i32 noundef %1) #9, !noalias !48
  %15 = and i32 %14, -4
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @do_tee(ptr noundef nonnull %11, ptr noundef nonnull %16, i32 noundef %2, i32 noundef %3) #9
  %20 = and i32 %14, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @fput(ptr noundef nonnull %16) #9
  br label %23

23:                                               ; preds = %22, %18, %13
  %24 = phi i32 [ -9, %13 ], [ %19, %18 ], [ %19, %22 ]
  %25 = and i32 %9, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @fput(ptr noundef nonnull %11) #9
  br label %28

28:                                               ; preds = %27, %23, %8, %6, %4
  %29 = phi i32 [ -22, %4 ], [ 0, %6 ], [ -9, %8 ], [ %24, %23 ], [ %24, %27 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_mapping(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_wait_readable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_wait_writable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @user_page_pipe_buf_try_steal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = or i32 %4, 1
  store i32 %8, ptr %3, align 4
  %9 = tail call zeroext i1 @generic_pipe_buf_try_steal(ptr noundef %0, ptr noundef %1) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ %9, %7 ], [ false, %2 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_to_user(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @copy_page_to_iter(ptr noundef %4, i32 noundef %6, i32 noundef %8, ptr noundef %10) #9
  %12 = load i32, ptr %7, align 4
  %13 = icmp eq i32 %11, %12
  %14 = select i1 %13, i32 %11, i32 -14
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_double_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

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
!10 = !{i64 2150218587}
!11 = !{i64 883176, i64 2148373147, i64 2148373173, i64 2148373220, i64 2148373242, i64 2148373270, i64 2148373290}
!12 = !{i64 2148393024, i64 2148393056, i64 2148393085, i64 2148393119, i64 2148393150, i64 2148393173}
!13 = !{i64 2148494364}
!14 = !{i64 2148485241}
!15 = !{i64 2148387603, i64 2148387635, i64 2148387664, i64 2148387698, i64 2148387729, i64 2148387752}
!16 = !{i64 2148485444}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!20 = !{i8 0, i8 2}
!21 = !{i64 2154025960}
!22 = !{i64 2154017242}
!23 = !{i64 2151181411}
!24 = !{i64 788854, i64 788915}
!25 = !{i64 807554}
!26 = !{i64 791871}
!27 = !{i64 2151189028}
!28 = !{i64 2151197493}
!29 = !{i64 2151205804}
!30 = !{i64 2151214022}
!31 = !{!32}
!32 = distinct !{!32, !33, !"fdget: argument 0"}
!33 = distinct !{!33, !"fdget"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"fdget: argument 0"}
!36 = distinct !{!36, !"fdget"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"fdget: argument 0"}
!39 = distinct !{!39, !"fdget"}
!40 = !{i64 2151016835, i64 2151016860}
!41 = !{i64 3512947}
!42 = !{i64 3513144}
!43 = !{i64 2150998423}
!44 = !{i64 2151017413, i64 2151017438}
!45 = !{!46}
!46 = distinct !{!46, !47, !"fdget: argument 0"}
!47 = distinct !{!47, !"fdget"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"fdget: argument 0"}
!50 = distinct !{!50, !"fdget"}
