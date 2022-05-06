; ModuleID = '/llk/IR/fs/iomap/buffered-io.c_pt.bc'
source_filename = "../fs/iomap/buffered-io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_readpage\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_readahead\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_is_partially_uptodate:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_is_partially_uptodate\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_is_partially_uptodate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_releasepage:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_releasepage\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_releasepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_invalidate_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_invalidate_folio\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_invalidate_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_invalidatepage:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_invalidatepage\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_invalidatepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_migrate_page\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_file_buffered_write:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_file_buffered_write\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_file_buffered_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_file_unshare:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_file_unshare\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_file_unshare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_zero_range:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_zero_range\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_zero_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_truncate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_truncate_page\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_truncate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_page_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_page_mkwrite\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_page_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_finish_ioends:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_finish_ioends\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_finish_ioends:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_ioend_try_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_ioend_try_merge\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_ioend_try_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_sort_ioends:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_sort_ioends\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_sort_ioends:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_writepage\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_writepages\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.iomap_readpage_ctx = type { ptr, i8, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.68, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.anon.74 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.anon.62 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.iomap_page = type { %struct.atomic_t, %struct.atomic_t, %struct.spinlock, [0 x i32] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.27, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.27 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.55, %union.anon.56 }
%union.anon.55 = type { ptr }
%union.anon.56 = type { i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.20, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.vm_fault = type { %struct.anon.22, i32, ptr, ptr, %union.anon.23, ptr, ptr, ptr, ptr, ptr }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%union.anon.23 = type { i32 }
%struct.iomap_ioend = type { %struct.list_head, i16, i16, i32, ptr, i32, i64, i64, ptr, %struct.bio }
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
%struct.iomap_writepage_ctx = type { %struct.iomap, ptr, ptr }
%struct.iomap_writeback_ops = type { ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.iomap_page_ops = type { ptr, ptr }

@iomap_readpage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"fs/iomap/buffered-io.c\00", align 1
@iomap_readpage.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_iomap_readpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_readpage = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_readpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_readpage to i32), ptr @__kstrtab_iomap_readpage, ptr @__kstrtabns_iomap_readpage }, section "___ksymtab_gpl+iomap_readpage", align 4
@__kstrtab_iomap_readahead = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_readahead = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_readahead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_readahead to i32), ptr @__kstrtab_iomap_readahead, ptr @__kstrtabns_iomap_readahead }, section "___ksymtab_gpl+iomap_readahead", align 4
@__kstrtab_iomap_is_partially_uptodate = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_is_partially_uptodate = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_is_partially_uptodate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_is_partially_uptodate to i32), ptr @__kstrtab_iomap_is_partially_uptodate, ptr @__kstrtabns_iomap_is_partially_uptodate }, section "___ksymtab_gpl+iomap_is_partially_uptodate", align 4
@__kstrtab_iomap_releasepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_releasepage = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_releasepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_releasepage to i32), ptr @__kstrtab_iomap_releasepage, ptr @__kstrtabns_iomap_releasepage }, section "___ksymtab_gpl+iomap_releasepage", align 4
@iomap_invalidate_folio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_invalidate_folio.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_iomap_invalidate_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_invalidate_folio = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_invalidate_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_invalidate_folio to i32), ptr @__kstrtab_iomap_invalidate_folio, ptr @__kstrtabns_iomap_invalidate_folio }, section "___ksymtab_gpl+iomap_invalidate_folio", align 4
@__kstrtab_iomap_invalidatepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_invalidatepage = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_invalidatepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_invalidatepage to i32), ptr @__kstrtab_iomap_invalidatepage, ptr @__kstrtabns_iomap_invalidatepage }, section "___ksymtab_gpl+iomap_invalidatepage", align 4
@__kstrtab_iomap_migrate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_migrate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_migrate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_migrate_page to i32), ptr @__kstrtab_iomap_migrate_page, ptr @__kstrtabns_iomap_migrate_page }, section "___ksymtab_gpl+iomap_migrate_page", align 4
@__kstrtab_iomap_file_buffered_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_file_buffered_write = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_file_buffered_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_file_buffered_write to i32), ptr @__kstrtab_iomap_file_buffered_write, ptr @__kstrtabns_iomap_file_buffered_write }, section "___ksymtab_gpl+iomap_file_buffered_write", align 4
@__kstrtab_iomap_file_unshare = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_file_unshare = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_file_unshare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_file_unshare to i32), ptr @__kstrtab_iomap_file_unshare, ptr @__kstrtabns_iomap_file_unshare }, section "___ksymtab_gpl+iomap_file_unshare", align 4
@__kstrtab_iomap_zero_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_zero_range = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_zero_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_zero_range to i32), ptr @__kstrtab_iomap_zero_range, ptr @__kstrtabns_iomap_zero_range }, section "___ksymtab_gpl+iomap_zero_range", align 4
@__kstrtab_iomap_truncate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_truncate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_truncate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_truncate_page to i32), ptr @__kstrtab_iomap_truncate_page, ptr @__kstrtabns_iomap_truncate_page }, section "___ksymtab_gpl+iomap_truncate_page", align 4
@__kstrtab_iomap_page_mkwrite = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_page_mkwrite = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_page_mkwrite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_page_mkwrite to i32), ptr @__kstrtab_iomap_page_mkwrite, ptr @__kstrtabns_iomap_page_mkwrite }, section "___ksymtab_gpl+iomap_page_mkwrite", align 4
@__kstrtab_iomap_finish_ioends = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_finish_ioends = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_finish_ioends = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_finish_ioends to i32), ptr @__kstrtab_iomap_finish_ioends, ptr @__kstrtabns_iomap_finish_ioends }, section "___ksymtab_gpl+iomap_finish_ioends", align 4
@__kstrtab_iomap_ioend_try_merge = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_ioend_try_merge = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_ioend_try_merge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_ioend_try_merge to i32), ptr @__kstrtab_iomap_ioend_try_merge, ptr @__kstrtabns_iomap_ioend_try_merge }, section "___ksymtab_gpl+iomap_ioend_try_merge", align 4
@__kstrtab_iomap_sort_ioends = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_sort_ioends = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_sort_ioends = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_sort_ioends to i32), ptr @__kstrtab_iomap_sort_ioends, ptr @__kstrtabns_iomap_sort_ioends }, section "___ksymtab_gpl+iomap_sort_ioends", align 4
@__kstrtab_iomap_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_writepage to i32), ptr @__kstrtab_iomap_writepage, ptr @__kstrtabns_iomap_writepage }, section "___ksymtab_gpl+iomap_writepage", align 4
@__kstrtab_iomap_writepages = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_writepages = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_writepages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_writepages to i32), ptr @__kstrtab_iomap_writepages, ptr @__kstrtabns_iomap_writepages }, section "___ksymtab_gpl+iomap_writepages", align 4
@__initcall__kmod_iomap__312_1576_iomap_init5 = internal global ptr @iomap_init, section ".initcall5.init", align 4
@__tracepoint_iomap_readpage = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@iomap_read_inline_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_read_inline_data.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_read_inline_data.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@bio_first_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"include/linux/bio.h\00", align 1
@__tracepoint_iomap_readahead = external dso_local global %struct.tracepoint, align 4
@__tracepoint_iomap_releasepage = external dso_local global %struct.tracepoint, align 4
@iomap_page_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_page_release.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_page_release.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_iomap_invalidatepage = external dso_local global %struct.tracepoint, align 4
@iomap_write_begin_inline.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__iomap_write_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_write_end_inline.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_unshare_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_zero_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_folio_mkwrite_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_finish_ioend._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.iomap_finish_ioend = private unnamed_addr constant [19 x i8] c"iomap_finish_ioend\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"\013%s: writeback error on inode %lu, offset %lld, sector %llu\00", align 1
@iomap_finish_folio_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_finish_folio_write.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_do_writepage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_iomap_writepage = external dso_local global %struct.tracepoint, align 4
@iomap_writepage_map.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_ioend_bioset = internal global %struct.bio_set zeroinitializer, align 4
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_iomap__312_1576_iomap_init5, ptr @__ksymtab_iomap_file_buffered_write, ptr @__ksymtab_iomap_file_unshare, ptr @__ksymtab_iomap_finish_ioends, ptr @__ksymtab_iomap_invalidate_folio, ptr @__ksymtab_iomap_invalidatepage, ptr @__ksymtab_iomap_ioend_try_merge, ptr @__ksymtab_iomap_is_partially_uptodate, ptr @__ksymtab_iomap_migrate_page, ptr @__ksymtab_iomap_page_mkwrite, ptr @__ksymtab_iomap_readahead, ptr @__ksymtab_iomap_readpage, ptr @__ksymtab_iomap_releasepage, ptr @__ksymtab_iomap_sort_ioends, ptr @__ksymtab_iomap_truncate_page, ptr @__ksymtab_iomap_writepage, ptr @__ksymtab_iomap_writepages, ptr @__ksymtab_iomap_zero_range], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_readpage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.iomap_iter, align 8
  %4 = alloca %struct.iomap_readpage_ctx, align 4
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %2
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %2
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #14
  %16 = getelementptr inbounds %struct.anon.74, ptr %15, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %3, align 8
  %19 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 12
  store i64 %23, ptr %19, align 8
  %24 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 2
  %25 = load volatile i32, ptr %15, align 4
  %26 = and i32 %25, 65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %13
  %29 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %30 = getelementptr inbounds %struct.anon.62, ptr %29, i32 0, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %28, %13
  %34 = phi i32 [ %32, %28 ], [ 0, %13 ]
  %35 = shl i32 4096, %34
  %36 = zext i32 %35 to i64
  store i64 %36, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %37 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %37, align 4, !annotation !9
  store ptr %15, ptr %4, align 4
  %38 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %4, i32 0, i32 2
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %4, i32 0, i32 3
  store ptr null, ptr %40, align 4
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readpage, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = tail call ptr @llvm.thread.pointer() #14
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %55 = tail call i32 @__traceiter_iomap_readpage(ptr noundef null, ptr noundef %18, i32 noundef 1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %56

56:                                               ; preds = %54, %43, %33
  %57 = call i32 @iomap_iter(ptr noundef nonnull %3, ptr noundef %1) #14
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 3
  br label %61

61:                                               ; preds = %61, %59
  %62 = call fastcc i64 @iomap_readpage_iter(ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef 0)
  store i64 %62, ptr %60, align 8
  %63 = call i32 @iomap_iter(ptr noundef nonnull %3, ptr noundef %1) #14
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %61, label %65

65:                                               ; preds = %61, %56
  %66 = phi i32 [ %57, %56 ], [ %63, %61 ]
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  call void @_set_bit(i32 noundef 8, ptr noundef %15) #14
  br label %69

69:                                               ; preds = %68, %65
  %70 = load ptr, ptr %39, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  call void @submit_bio(ptr noundef nonnull %70) #14
  %73 = load i8, ptr %38, align 4, !range !12
  %74 = icmp eq i8 %73, 0
  %75 = load i1, ptr @iomap_readpage.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %87, !prof !13

78:                                               ; preds = %72
  store i1 true, ptr @iomap_readpage.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #14
  br label %87

79:                                               ; preds = %69
  %80 = load i8, ptr %38, align 4, !range !12
  %81 = icmp ne i8 %80, 0
  %82 = load i1, ptr @iomap_readpage.__already_done.1, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !13

85:                                               ; preds = %79
  store i1 true, ptr @iomap_readpage.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 348, i32 noundef 9, ptr noundef null) #14
  br label %86

86:                                               ; preds = %85, %79
  call void @folio_unlock(ptr noundef %15) #14
  br label %87

87:                                               ; preds = %86, %78, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @iomap_readpage_iter(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %8 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, %2
  store i64 %10, ptr %4, align 8
  %11 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %14, %12
  %16 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 3
  %17 = load i16, ptr %16, align 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, %21
  %25 = tail call i64 @llvm.umin.i64(i64 %15, i64 %24) #14
  br label %26

26:                                               ; preds = %19, %3
  %27 = phi i64 [ %25, %19 ], [ %15, %3 ]
  %28 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = sub i64 %27, %9
  %31 = tail call i64 @llvm.umin.i64(i64 %29, i64 %30) #14
  %32 = sub i64 %31, %2
  %33 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !9
  %34 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 3
  %35 = load i16, ptr %34, align 8
  %36 = icmp eq i16 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = tail call fastcc i32 @iomap_read_inline_data(ptr noundef %0, ptr noundef %33)
  %39 = sext i32 %38 to i64
  br label %233

40:                                               ; preds = %26
  %41 = load ptr, ptr %0, align 8
  %42 = load volatile i32, ptr %33, align 4
  %43 = and i32 %42, 8192
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.anon.74, ptr %33, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi ptr [ %47, %45 ], [ null, %40 ]
  %50 = load volatile i32, ptr %33, align 4
  %51 = and i32 %50, 65536
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr %struct.page, ptr %33, i32 1, i32 1
  %55 = getelementptr inbounds %struct.anon.62, ptr %54, i32 0, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i32 [ %57, %53 ], [ 0, %48 ]
  %60 = shl i32 4096, %59
  %61 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 19
  %62 = load i8, ptr %61, align 2
  %63 = zext i8 %62 to i32
  %64 = lshr i32 %60, %63
  %65 = icmp ne ptr %49, null
  %66 = icmp ult i32 %64, 2
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %85, label %68

68:                                               ; preds = %58
  %69 = add i32 %64, 31
  %70 = lshr i32 %69, 3
  %71 = and i32 %70, 536870908
  %72 = add nuw nsw i32 %71, 12
  %73 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %72, i32 noundef 36160) #15
  %74 = getelementptr inbounds %struct.iomap_page, ptr %73, i32 0, i32 2
  store i32 0, ptr %74, align 8
  %75 = load volatile i32, ptr %33, align 4
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %79 = getelementptr inbounds %struct.iomap_page, ptr %73, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr align 4 %79, i8 -1, i32 %71, i1 false) #14
  br label %80

80:                                               ; preds = %78, %68
  %81 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #14, !srcloc !15
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #14, !srcloc !16
  %83 = getelementptr inbounds %struct.anon.74, ptr %33, i32 0, i32 4
  store ptr %73, ptr %83, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %33) #14
  %84 = load ptr, ptr %0, align 8
  br label %85

85:                                               ; preds = %80, %58
  %86 = phi ptr [ %84, %80 ], [ %41, %58 ]
  %87 = phi ptr [ %73, %80 ], [ %49, %58 ]
  call fastcc void @iomap_adjust_read_range(ptr noundef %86, ptr noundef %33, ptr noundef nonnull %4, i64 noundef %32, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %88 = load i32, ptr %6, align 4
  %89 = icmp eq i32 %88, 0
  %90 = load i64, ptr %4, align 8
  br i1 %89, label %229, label %91

91:                                               ; preds = %85
  %92 = load i16, ptr %16, align 8
  %93 = icmp eq i16 %92, 0
  %94 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6
  %95 = select i1 %93, ptr %7, ptr %94
  %96 = getelementptr inbounds %struct.iomap, ptr %95, i32 0, i32 3
  %97 = load i16, ptr %96, align 8
  %98 = icmp eq i16 %97, 2
  br i1 %98, label %99, label %123

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.iomap, ptr %95, i32 0, i32 4
  %101 = load i16, ptr %100, align 2
  %102 = and i16 %101, 1
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %99
  %105 = load ptr, ptr %0, align 8
  %106 = getelementptr inbounds %struct.inode, ptr %105, i32 0, i32 22
  %107 = getelementptr inbounds %struct.inode, ptr %105, i32 0, i32 13
  br label %108

108:                                              ; preds = %116, %104
  %109 = load volatile i32, ptr %106, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %112, %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !18
  %113 = load volatile i32, ptr %106, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %112

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %109, %108 ], [ %113, %112 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %118 = load i64, ptr %107, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %119 = load volatile i32, ptr %106, align 4
  %120 = icmp eq i32 %119, %117
  br i1 %120, label %121, label %108

121:                                              ; preds = %116
  %122 = icmp sgt i64 %118, %90
  br i1 %122, label %126, label %123

123:                                              ; preds = %121, %99, %91
  %124 = load i32, ptr %5, align 4
  %125 = add i32 %124, %88
  tail call void @zero_user_segments(ptr noundef %33, i32 noundef %124, i32 noundef %125, i32 noundef 0, i32 noundef 0) #14
  tail call fastcc void @iomap_set_range_uptodate(ptr noundef %33, ptr noundef %87, i32 noundef %124, i32 noundef %88)
  br label %229

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %1, i32 0, i32 1
  store i8 1, ptr %127, align 4
  %128 = icmp eq ptr %87, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %87) #14, !srcloc !15
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %87, ptr nonnull %87, i32 %88, ptr nonnull elementtype(i32) %87) #14, !srcloc !16
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i64, ptr %7, align 8
  %133 = add i64 %132, %90
  %134 = load i64, ptr %11, align 8
  %135 = sub i64 %133, %134
  %136 = lshr i64 %135, 9
  %137 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %1, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.anon.74, ptr %33, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.address_space, ptr %142, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 3264
  %146 = add i64 %32, 4095
  %147 = sdiv i64 %146, 4096
  %148 = trunc i64 %147 to i32
  br label %185

149:                                              ; preds = %131
  %150 = getelementptr inbounds %struct.bio, ptr %138, i32 0, i32 8
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %struct.bio, ptr %138, i32 0, i32 8, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = lshr i32 %153, 9
  %155 = zext i32 %154 to i64
  %156 = add i64 %151, %155
  %157 = icmp eq i64 %156, %136
  br i1 %157, label %167, label %158

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.anon.74, ptr %33, i32 0, i32 2
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.address_space, ptr %160, i32 0, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 3264
  %164 = add i64 %32, 4095
  %165 = sdiv i64 %164, 4096
  %166 = trunc i64 %165 to i32
  br label %181

167:                                              ; preds = %149
  %168 = load i32, ptr %5, align 4
  %169 = tail call zeroext i1 @bio_add_folio(ptr noundef nonnull %138, ptr noundef %33, i32 noundef %88, i32 noundef %168) #14
  br i1 %169, label %229, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %137, align 4
  %172 = getelementptr inbounds %struct.anon.74, ptr %33, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.address_space, ptr %173, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = and i32 %175, 3264
  %177 = add i64 %32, 4095
  %178 = sdiv i64 %177, 4096
  %179 = trunc i64 %178 to i32
  %180 = icmp eq ptr %171, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %170, %158
  %182 = phi i32 [ %166, %158 ], [ %179, %170 ]
  %183 = phi i32 [ %163, %158 ], [ %176, %170 ]
  %184 = phi ptr [ %138, %158 ], [ %171, %170 ]
  tail call void @submit_bio(ptr noundef nonnull %184) #14
  br label %185

185:                                              ; preds = %181, %170, %140
  %186 = phi i32 [ %148, %140 ], [ %182, %181 ], [ %179, %170 ]
  %187 = phi i32 [ %145, %140 ], [ %183, %181 ], [ %176, %170 ]
  %188 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %1, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  %191 = or i32 %187, 73728
  %192 = select i1 %190, i32 %187, i32 %191
  %193 = tail call i32 @llvm.umin.i32(i32 %186, i32 256) #14
  %194 = trunc i32 %193 to i16
  %195 = tail call ptr @bio_alloc_bioset(i32 noundef %192, i16 noundef zeroext %194, ptr noundef nonnull @fs_bio_set) #14
  store ptr %195, ptr %137, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %185
  %198 = tail call ptr @bio_alloc_bioset(i32 noundef %187, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #14
  store ptr %198, ptr %137, align 4
  br label %199

199:                                              ; preds = %197, %185
  %200 = phi ptr [ %198, %197 ], [ %195, %185 ]
  %201 = getelementptr inbounds %struct.bio, ptr %200, i32 0, i32 2
  store i32 0, ptr %201, align 4
  %202 = load ptr, ptr %188, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %199
  %205 = load ptr, ptr %137, align 4
  %206 = getelementptr inbounds %struct.bio, ptr %205, i32 0, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = or i32 %207, 524288
  store i32 %208, ptr %206, align 4
  br label %209

209:                                              ; preds = %204, %199
  %210 = load ptr, ptr %137, align 4
  %211 = getelementptr inbounds %struct.bio, ptr %210, i32 0, i32 8
  store i64 %136, ptr %211, align 4
  %212 = load ptr, ptr %137, align 4
  %213 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 5
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.bio, ptr %212, i32 0, i32 3
  %216 = load i16, ptr %215, align 4
  %217 = and i16 %216, -2049
  store i16 %217, ptr %215, align 4
  %218 = getelementptr inbounds %struct.bio, ptr %212, i32 0, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, %214
  br i1 %220, label %223, label %221

221:                                              ; preds = %209
  %222 = and i16 %216, -2177
  store i16 %222, ptr %215, align 4
  br label %223

223:                                              ; preds = %221, %209
  store ptr %214, ptr %218, align 4
  %224 = load ptr, ptr %137, align 4
  %225 = getelementptr inbounds %struct.bio, ptr %224, i32 0, i32 10
  store ptr @iomap_read_end_io, ptr %225, align 4
  %226 = load ptr, ptr %137, align 4
  %227 = load i32, ptr %5, align 4
  %228 = tail call zeroext i1 @bio_add_folio(ptr noundef %226, ptr noundef %33, i32 noundef %88, i32 noundef %227) #14
  br label %229

229:                                              ; preds = %223, %167, %123, %85
  %230 = zext i32 %88 to i64
  %231 = sub i64 %230, %10
  %232 = add i64 %231, %90
  br label %233

233:                                              ; preds = %229, %37
  %234 = phi i64 [ %39, %37 ], [ %232, %229 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i64 %234
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iomap_readahead(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.iomap_iter, align 8
  %4 = alloca %struct.iomap_readpage_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #14
  %5 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 12
  store i64 %12, ptr %8, align 8
  %13 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 12
  %17 = zext i32 %16 to i64
  store i64 %17, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %18 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  store ptr %0, ptr %20, align 4
  %21 = load ptr, ptr %6, align 4
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readahead, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = tail call ptr @llvm.thread.pointer() #14
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %36 = tail call i32 @__traceiter_iomap_readahead(ptr noundef null, ptr noundef %21, i32 noundef %15) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  br label %37

37:                                               ; preds = %35, %24, %2
  %38 = call i32 @iomap_iter(ptr noundef nonnull %3, ptr noundef %1) #14
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %143

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 5, i32 1
  %42 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 5, i32 2
  %43 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 6, i32 3
  %44 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 6, i32 1
  %45 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 6, i32 2
  %46 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 3
  br label %47

47:                                               ; preds = %135, %40
  %48 = load i64, ptr %41, align 8
  %49 = load i64, ptr %42, align 8
  %50 = add i64 %49, %48
  %51 = load i16, ptr %43, align 8
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load i64, ptr %44, align 8
  %55 = load i64, ptr %45, align 8
  %56 = add i64 %55, %54
  %57 = call i64 @llvm.umin.i64(i64 %50, i64 %56) #14
  br label %58

58:                                               ; preds = %53, %47
  %59 = phi i64 [ %57, %53 ], [ %50, %47 ]
  %60 = load i64, ptr %13, align 8
  %61 = load i64, ptr %8, align 8
  %62 = sub i64 %59, %61
  %63 = call i64 @llvm.umin.i64(i64 %60, i64 %62) #14
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %135

65:                                               ; preds = %132, %58
  %66 = phi i64 [ %133, %132 ], [ 0, %58 ]
  %67 = load ptr, ptr %4, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %92, label %69

69:                                               ; preds = %65
  %70 = load i64, ptr %8, align 8
  %71 = add i64 %70, %66
  %72 = trunc i64 %71 to i32
  %73 = load volatile i32, ptr %67, align 4
  %74 = and i32 %73, 65536
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = getelementptr %struct.page, ptr %67, i32 1, i32 1
  %78 = getelementptr inbounds %struct.anon.62, ptr %77, i32 0, i32 2
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  br label %81

81:                                               ; preds = %76, %69
  %82 = phi i32 [ %80, %76 ], [ 0, %69 ]
  %83 = shl i32 4096, %82
  %84 = add i32 %83, -1
  %85 = and i32 %84, %72
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %129

87:                                               ; preds = %81
  %88 = load i8, ptr %18, align 4, !range !12
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call void @folio_unlock(ptr noundef nonnull %67) #14
  br label %91

91:                                               ; preds = %90, %87
  store ptr null, ptr %4, align 4
  br label %92

92:                                               ; preds = %91, %65
  %93 = load ptr, ptr %20, align 4
  %94 = getelementptr inbounds %struct.readahead_control, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.readahead_control, ptr %93, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = icmp ult i32 %97, %95
  br i1 %98, label %99, label %100, !prof !13

99:                                               ; preds = %92
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #14, !srcloc !23
  unreachable

100:                                              ; preds = %92
  %101 = sub i32 %97, %95
  store i32 %101, ptr %96, align 4
  %102 = getelementptr inbounds %struct.readahead_control, ptr %93, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, %95
  store i32 %104, ptr %102, align 4
  %105 = icmp eq i32 %97, %95
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 0, ptr %94, align 4
  br label %127

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.readahead_control, ptr %93, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.address_space, ptr %109, i32 0, i32 1
  %111 = call ptr @xa_load(ptr noundef %110, i32 noundef %104) #14
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %112, 65536
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %107
  %116 = getelementptr %struct.page, ptr %111, i32 1, i32 1, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  br label %118

118:                                              ; preds = %115, %107
  %119 = phi i32 [ %117, %115 ], [ 1, %107 ]
  store i32 %119, ptr %94, align 4
  %120 = icmp eq ptr %111, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.page, ptr %111, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #14, !srcloc !15
  %123 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #14, !srcloc !25
  %124 = extractvalue { i32, i32 } %123, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  call void @__put_page(ptr noundef nonnull %111) #14
  br label %127

127:                                              ; preds = %126, %121, %118, %106
  %128 = phi ptr [ null, %106 ], [ null, %118 ], [ %111, %121 ], [ %111, %126 ]
  store ptr %128, ptr %4, align 4
  store i8 0, ptr %18, align 4
  br label %129

129:                                              ; preds = %127, %81
  %130 = call fastcc i64 @iomap_readpage_iter(ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef %66) #14
  %131 = icmp slt i64 %130, 1
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = add i64 %130, %66
  %134 = icmp slt i64 %133, %63
  br i1 %134, label %65, label %135

135:                                              ; preds = %132, %129, %58
  %136 = phi i64 [ 0, %58 ], [ %130, %129 ], [ %133, %132 ]
  store i64 %136, ptr %46, align 8
  %137 = call i32 @iomap_iter(ptr noundef nonnull %3, ptr noundef %1) #14
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %47, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %19, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  call void @submit_bio(ptr noundef nonnull %140) #14
  br label %143

143:                                              ; preds = %142, %139, %37
  %144 = load ptr, ptr %4, align 4
  %145 = icmp ne ptr %144, null
  %146 = load i8, ptr %18, align 4
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %145, i1 %147, i1 false
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  call void @folio_unlock(ptr noundef nonnull %144) #14
  br label %150

150:                                              ; preds = %149, %143
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_is_partially_uptodate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %3
  %11 = ptrtoint ptr %0 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 8192
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.anon.74, ptr %14, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi ptr [ %20, %18 ], [ null, %12 ]
  %23 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = sub i32 4096, %1
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %2)
  %28 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 19
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  %31 = add i32 %1, -1
  %32 = add i32 %31, %27
  %33 = lshr i32 %32, %30
  %34 = icmp eq ptr %22, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %21
  %36 = lshr i32 %1, %30
  %37 = getelementptr inbounds %struct.iomap_page, ptr %22, i32 0, i32 3
  %38 = icmp ugt i32 %36, %33
  br i1 %38, label %51, label %42

39:                                               ; preds = %42
  %40 = add i32 %43, 1
  %41 = icmp ugt i32 %40, %33
  br i1 %41, label %51, label %42

42:                                               ; preds = %39, %35
  %43 = phi i32 [ %40, %39 ], [ %36, %35 ]
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr %37, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %39

51:                                               ; preds = %42, %39, %35, %21
  %52 = phi i32 [ 0, %21 ], [ 1, %35 ], [ 0, %42 ], [ 1, %39 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_releasepage(ptr noundef %0, i32 %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.anon.74, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 12
  %21 = load volatile i32, ptr %13, align 4
  %22 = and i32 %21, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %11
  %25 = getelementptr %struct.page, ptr %13, i32 1, i32 1
  %26 = getelementptr inbounds %struct.anon.62, ptr %25, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %24, %11
  %30 = phi i32 [ %28, %24 ], [ 0, %11 ]
  %31 = shl i32 4096, %30
  %32 = zext i32 %31 to i64
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_releasepage, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = tail call ptr @llvm.thread.pointer() #14
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !27
  %47 = tail call i32 @__traceiter_iomap_releasepage(ptr noundef null, ptr noundef %16, i64 noundef %20, i64 noundef %32) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !28
  br label %48

48:                                               ; preds = %46, %35, %29
  %49 = load volatile i32, ptr %13, align 4
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load volatile i32, ptr %13, align 4
  %54 = and i32 %53, 32768
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call fastcc void @iomap_page_release(ptr noundef %13)
  br label %57

57:                                               ; preds = %56, %52, %48
  %58 = phi i32 [ 1, %56 ], [ 0, %52 ], [ 0, %48 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iomap_page_release(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon.74, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr %0, align 4
  %5 = and i32 %4, 8192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %0) #14
  store ptr null, ptr %2, align 4
  %8 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #14, !srcloc !15
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #14, !srcloc !25
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @__put_page(ptr noundef %0) #14
  br label %13

13:                                               ; preds = %12, %7, %1
  %14 = phi ptr [ null, %1 ], [ %3, %7 ], [ %3, %12 ]
  %15 = getelementptr inbounds %struct.anon.74, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load volatile i32, ptr %0, align 4
  %19 = and i32 %18, 65536
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %23 = getelementptr inbounds %struct.anon.62, ptr %22, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi i32 [ %25, %21 ], [ 0, %13 ]
  %28 = shl i32 4096, %27
  %29 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 19
  %30 = load i8, ptr %29, align 2
  %31 = zext i8 %30 to i32
  %32 = lshr i32 %28, %31
  %33 = icmp eq ptr %14, null
  br i1 %33, label %64, label %34

34:                                               ; preds = %26
  %35 = load volatile i32, ptr %14, align 4
  %36 = icmp ne i32 %35, 0
  %37 = load i1, ptr @iomap_page_release.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !13

40:                                               ; preds = %34
  store i1 true, ptr @iomap_page_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef null) #14
  br label %41

41:                                               ; preds = %40, %34
  %42 = getelementptr inbounds %struct.iomap_page, ptr %14, i32 0, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = load i1, ptr @iomap_page_release.__already_done.7, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !13

48:                                               ; preds = %41
  store i1 true, ptr @iomap_page_release.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef null) #14
  br label %49

49:                                               ; preds = %48, %41
  %50 = getelementptr inbounds %struct.iomap_page, ptr %14, i32 0, i32 3
  %51 = tail call i32 @_find_first_zero_bit_le(ptr noundef %50, i32 noundef %32) #14
  %52 = icmp eq i32 %51, %32
  %53 = load volatile i32, ptr %0, align 4
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  br label %57

57:                                               ; preds = %56, %49
  %58 = xor i1 %52, %55
  %59 = load i1, ptr @iomap_page_release.__already_done.8, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !13

62:                                               ; preds = %57
  store i1 true, ptr @iomap_page_release.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #14
  br label %63

63:                                               ; preds = %62, %57
  tail call void @kfree(ptr noundef nonnull %14) #14
  br label %64

64:                                               ; preds = %63, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iomap_invalidate_folio(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.anon.74, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = zext i32 %1 to i64
  %8 = zext i32 %2 to i64
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_invalidatepage, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = tail call ptr @llvm.thread.pointer() #14
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %23 = tail call i32 @__traceiter_iomap_invalidatepage(ptr noundef null, ptr noundef %6, i64 noundef %7, i64 noundef %8) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !30
  br label %24

24:                                               ; preds = %22, %11, %3
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %24
  %27 = load volatile i32, ptr %0, align 4
  %28 = and i32 %27, 65536
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %32 = getelementptr inbounds %struct.anon.62, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i32 [ %34, %30 ], [ 0, %26 ]
  %37 = shl i32 4096, %36
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load volatile i32, ptr %0, align 4
  %41 = and i32 %40, 32768
  %42 = icmp ne i32 %41, 0
  %43 = load i1, ptr @iomap_invalidate_folio.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !13

46:                                               ; preds = %39
  store i1 true, ptr @iomap_invalidate_folio.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #14
  br label %47

47:                                               ; preds = %46, %39
  %48 = load volatile i32, ptr %0, align 4
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %47
  tail call void @__folio_cancel_dirty(ptr noundef %0) #14
  br label %69

52:                                               ; preds = %35, %24
  %53 = load volatile i32, ptr %0, align 4
  %54 = and i32 %53, 65536
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %52
  %57 = load volatile i32, ptr %0, align 4
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  br label %69

61:                                               ; preds = %56
  %62 = load volatile i32, ptr %0, align 4
  %63 = and i32 %62, 8
  %64 = icmp ne i32 %63, 0
  %65 = load i1, ptr @iomap_invalidate_folio.__already_done.2, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !13

68:                                               ; preds = %61
  store i1 true, ptr @iomap_invalidate_folio.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 496, i32 noundef 9, ptr noundef null) #14
  br label %69

69:                                               ; preds = %68, %61, %60, %51, %47
  tail call fastcc void @iomap_page_release(ptr noundef %0)
  br label %70

70:                                               ; preds = %69, %52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iomap_invalidatepage(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %3
  %11 = ptrtoint ptr %0 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  tail call void @iomap_invalidate_folio(ptr noundef %14, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_migrate_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %4
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %2 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !8

20:                                               ; preds = %13
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %13
  %23 = ptrtoint ptr %1 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 @folio_migrate_mapping(ptr noundef %0, ptr noundef %26, ptr noundef %15, i32 noundef 0) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = load volatile i32, ptr %15, align 4
  %31 = and i32 %30, 8192
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.anon.74, ptr %15, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = load volatile i32, ptr %15, align 4
  %37 = and i32 %36, 8192
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %15) #14
  store ptr null, ptr %34, align 4
  %40 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #14, !srcloc !15
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #14, !srcloc !25
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @__put_page(ptr noundef %15) #14
  br label %45

45:                                               ; preds = %44, %39, %33
  %46 = phi ptr [ null, %33 ], [ %35, %39 ], [ %35, %44 ]
  %47 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #14, !srcloc !15
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #14, !srcloc !16
  %49 = getelementptr inbounds %struct.anon.74, ptr %26, i32 0, i32 4
  store ptr %46, ptr %49, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %26) #14
  br label %50

50:                                               ; preds = %45, %29
  %51 = icmp eq i32 %3, 3
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  tail call void @folio_migrate_copy(ptr noundef %26, ptr noundef %15) #14
  br label %54

53:                                               ; preds = %50
  tail call void @folio_migrate_flags(ptr noundef %26, ptr noundef %15) #14
  br label %54

54:                                               ; preds = %53, %52, %24
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_migrate_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_migrate_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_migrate_flags(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_file_buffered_write(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.iomap_iter, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i64 136, i1 false)
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %5, align 8
  %10 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 2
  %14 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = zext i32 %15 to i64
  store i64 %16, ptr %13, align 8
  %17 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 4
  store i32 1, ptr %17, align 8
  %18 = call i32 @iomap_iter(ptr noundef nonnull %5, ptr noundef %2) #14
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %126

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 5, i32 1
  %22 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 5, i32 2
  %23 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 6, i32 3
  %24 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 6, i32 1
  %25 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 6, i32 2
  %26 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 3
  br label %27

27:                                               ; preds = %118, %20
  %28 = load i64, ptr %21, align 8
  %29 = load i64, ptr %22, align 8
  %30 = add i64 %29, %28
  %31 = load i16, ptr %23, align 8
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i64, ptr %24, align 8
  %35 = load i64, ptr %25, align 8
  %36 = add i64 %35, %34
  %37 = call i64 @llvm.umin.i64(i64 %30, i64 %36) #14
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i64 [ %37, %33 ], [ %30, %27 ]
  %40 = load i64, ptr %13, align 8
  %41 = load i64, ptr %10, align 8
  %42 = sub i64 %39, %41
  %43 = call i64 @llvm.umin.i64(i64 %40, i64 %42) #14
  %44 = load i32, ptr %14, align 8
  br label %45

45:                                               ; preds = %106, %38
  %46 = phi i32 [ %44, %38 ], [ %114, %106 ]
  %47 = phi i32 [ 0, %38 ], [ %109, %106 ]
  %48 = phi i64 [ %41, %38 ], [ %108, %106 ]
  %49 = phi i64 [ %43, %38 ], [ %110, %106 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr null, ptr %4, align 4, !annotation !9
  %50 = trunc i64 %48 to i32
  %51 = and i32 %50, 4095
  %52 = sub nuw nsw i32 4096, %51
  %53 = call i32 @llvm.umin.i32(i32 %52, i32 %46) #14
  %54 = trunc i64 %49 to i32
  %55 = zext i32 %53 to i64
  %56 = icmp slt i64 %49, %55
  %57 = select i1 %56, i32 %54, i32 %53
  %58 = call i32 @fault_in_iov_iter_readable(ptr noundef %1, i32 noundef %57) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %104, !prof !8

60:                                               ; preds = %45
  %61 = lshr i64 %48, 12
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %96, %60
  %64 = phi i32 [ %57, %60 ], [ %101, %96 ]
  %65 = call fastcc i32 @iomap_write_begin(ptr noundef nonnull %5, i64 noundef %48, i32 noundef %64, ptr noundef nonnull %4) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %104, !prof !8

67:                                               ; preds = %63
  %68 = load ptr, ptr %4, align 4
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 65536
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = getelementptr %struct.page, ptr %68, i32 1, i32 1, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, -1
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i32 [ %75, %72 ], [ 0, %67 ]
  %78 = and i32 %77, %62
  %79 = getelementptr %struct.page, ptr %68, i32 %78
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.inode, ptr %80, i32 0, i32 9
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.address_space, ptr %82, i32 0, i32 4
  %84 = load volatile i32, ptr %83, align 4
  %85 = icmp slt i32 %84, 1
  br i1 %85, label %87, label %86

86:                                               ; preds = %76
  call void @flush_dcache_page(ptr noundef %79) #14
  br label %87

87:                                               ; preds = %86, %76
  %88 = call i32 @copy_page_from_iter_atomic(ptr noundef %79, i32 noundef %51, i32 noundef %64, ptr noundef %1) #14
  %89 = call fastcc i32 @iomap_write_end(ptr noundef nonnull %5, i64 noundef %48, i32 noundef %64, i32 noundef %88, ptr noundef %68) #14
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %93, label %91, !prof !8

91:                                               ; preds = %87
  %92 = sub i32 %88, %89
  call void @iov_iter_revert(ptr noundef %1, i32 noundef %92) #14
  br label %93

93:                                               ; preds = %91, %87
  %94 = call i32 @__cond_resched() #14
  %95 = icmp eq i32 %89, 0
  br i1 %95, label %96, label %106, !prof !13

96:                                               ; preds = %93
  %97 = icmp eq i32 %88, 0
  %98 = select i1 %97, i32 %64, i32 %88
  %99 = zext i32 %98 to i64
  %100 = icmp slt i64 %49, %99
  %101 = select i1 %100, i32 %54, i32 %98
  %102 = call i32 @fault_in_iov_iter_readable(ptr noundef %1, i32 noundef %101) #14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %63, label %104, !prof !8

104:                                              ; preds = %96, %63, %45
  %105 = phi i32 [ %65, %63 ], [ -14, %96 ], [ -14, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %118

106:                                              ; preds = %93
  %107 = sext i32 %89 to i64
  %108 = add i64 %48, %107
  %109 = add i32 %89, %47
  %110 = sub i64 %49, %107
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds %struct.inode, ptr %111, i32 0, i32 9
  %113 = load ptr, ptr %112, align 8
  call void @balance_dirty_pages_ratelimited(ptr noundef %113) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %114 = load i32, ptr %14, align 8
  %115 = icmp ne i32 %114, 0
  %116 = icmp ne i64 %110, 0
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %45, label %118

118:                                              ; preds = %106, %104
  %119 = phi i32 [ %47, %104 ], [ %109, %106 ]
  %120 = phi i32 [ %105, %104 ], [ %89, %106 ]
  %121 = icmp eq i32 %119, 0
  %122 = select i1 %121, i32 %120, i32 %119
  %123 = sext i32 %122 to i64
  store i64 %123, ptr %26, align 8
  %124 = call i32 @iomap_iter(ptr noundef nonnull %5, ptr noundef %2) #14
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %27, label %126

126:                                              ; preds = %118, %3
  %127 = phi i32 [ %18, %3 ], [ %124, %118 ]
  %128 = load i64, ptr %10, align 8
  %129 = load i64, ptr %11, align 8
  %130 = icmp eq i64 %128, %129
  %131 = sub i64 %128, %129
  %132 = trunc i64 %131 to i32
  %133 = select i1 %130, i32 %127, i32 %132
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_file_unshare(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.iomap_iter, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, i8 0, i64 136, i1 false)
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 1
  store i64 %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 2
  store i64 %2, ptr %8, align 8
  %9 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 4
  store i32 129, ptr %9, align 8
  %10 = call i32 @iomap_iter(ptr noundef nonnull %6, ptr noundef %3) #14
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 6, i32 3
  %14 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 5, i32 1
  %15 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 5, i32 2
  %16 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 6, i32 1
  %17 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 6, i32 2
  %18 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 5, i32 4
  %19 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 5, i32 3
  %20 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 3
  br label %21

21:                                               ; preds = %79, %12
  %22 = load i16, ptr %13, align 8
  %23 = icmp eq i16 %22, 0
  %24 = load i64, ptr %7, align 8
  %25 = load i64, ptr %14, align 8
  %26 = load i64, ptr %15, align 8
  %27 = add i64 %26, %25
  br i1 %23, label %33, label %28

28:                                               ; preds = %21
  %29 = load i64, ptr %16, align 8
  %30 = load i64, ptr %17, align 8
  %31 = add i64 %30, %29
  %32 = call i64 @llvm.umin.i64(i64 %27, i64 %31) #14
  br label %33

33:                                               ; preds = %28, %21
  %34 = phi i64 [ %32, %28 ], [ %27, %21 ]
  %35 = load i64, ptr %8, align 8
  %36 = sub i64 %34, %24
  %37 = call i64 @llvm.umin.i64(i64 %35, i64 %36) #14
  %38 = load i16, ptr %18, align 2
  %39 = and i16 %38, 4
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %79, label %41

41:                                               ; preds = %33
  %42 = load i16, ptr %19, align 8
  %43 = select i1 %23, i16 %42, i16 %22
  switch i16 %43, label %44 [
    i16 0, label %79
    i16 3, label %79
  ]

44:                                               ; preds = %69, %41
  %45 = phi i64 [ %73, %69 ], [ 0, %41 ]
  %46 = phi i64 [ %74, %69 ], [ %37, %41 ]
  %47 = phi i64 [ %72, %69 ], [ %24, %41 ]
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 4095
  %50 = sub nuw nsw i32 4096, %49
  %51 = zext i32 %50 to i64
  %52 = call i64 @llvm.smin.i64(i64 %46, i64 %51) #14
  %53 = trunc i64 %52 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4, !annotation !9
  %54 = call fastcc i32 @iomap_write_begin(ptr noundef nonnull %6, i64 noundef %47, i32 noundef %53, ptr noundef nonnull %5) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !8

56:                                               ; preds = %44
  %57 = sext i32 %54 to i64
  br label %67

58:                                               ; preds = %44
  %59 = load ptr, ptr %5, align 4
  %60 = call fastcc i32 @iomap_write_end(ptr noundef nonnull %6, i64 noundef %47, i32 noundef %53, i32 noundef %53, ptr noundef %59) #14
  %61 = icmp eq i32 %60, 0
  %62 = load i1, ptr @iomap_unshare_iter.__already_done, align 1
  %63 = xor i1 %62, true
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %66, !prof !13

65:                                               ; preds = %58
  store i1 true, ptr @iomap_unshare_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 867, i32 noundef 9, ptr noundef null) #14
  br label %66

66:                                               ; preds = %65, %58
  br i1 %61, label %67, label %69

67:                                               ; preds = %66, %56
  %68 = phi i64 [ %57, %56 ], [ -5, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %79

69:                                               ; preds = %66
  %70 = call i32 @__cond_resched() #14
  %71 = sext i32 %60 to i64
  %72 = add i64 %47, %71
  %73 = add i64 %45, %71
  %74 = sub i64 %46, %71
  %75 = load ptr, ptr %6, align 8
  %76 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 9
  %77 = load ptr, ptr %76, align 8
  call void @balance_dirty_pages_ratelimited(ptr noundef %77) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %78 = icmp eq i64 %74, 0
  br i1 %78, label %79, label %44

79:                                               ; preds = %69, %67, %41, %41, %33
  %80 = phi i64 [ %37, %33 ], [ %37, %41 ], [ %37, %41 ], [ %68, %67 ], [ %73, %69 ]
  store i64 %80, ptr %20, align 8
  %81 = call i32 @iomap_iter(ptr noundef nonnull %6, ptr noundef %3) #14
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %21, label %83

83:                                               ; preds = %79, %4
  %84 = phi i32 [ %10, %4 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #14
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_zero_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.iomap_iter, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %7, i8 0, i64 136, i1 false)
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 1
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 2
  store i64 %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 4
  store i32 2, ptr %10, align 8
  %11 = call i32 @iomap_iter(ptr noundef nonnull %7, ptr noundef %4) #14
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %117

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 6, i32 3
  %15 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 5, i32 1
  %16 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 5, i32 2
  %17 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 6, i32 1
  %18 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 6, i32 2
  %19 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 5, i32 3
  %20 = icmp eq ptr %3, null
  %21 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 3
  br label %22

22:                                               ; preds = %113, %13
  %23 = load i16, ptr %14, align 8
  %24 = icmp eq i16 %23, 0
  %25 = load i64, ptr %8, align 8
  %26 = load i64, ptr %15, align 8
  %27 = load i64, ptr %16, align 8
  %28 = add i64 %27, %26
  br i1 %24, label %34, label %29

29:                                               ; preds = %22
  %30 = load i64, ptr %17, align 8
  %31 = load i64, ptr %18, align 8
  %32 = add i64 %31, %30
  %33 = call i64 @llvm.umin.i64(i64 %28, i64 %32) #14
  br label %34

34:                                               ; preds = %29, %22
  %35 = phi i64 [ %33, %29 ], [ %28, %22 ]
  %36 = load i64, ptr %9, align 8
  %37 = sub i64 %35, %25
  %38 = call i64 @llvm.umin.i64(i64 %36, i64 %37) #14
  %39 = load i16, ptr %19, align 8
  %40 = select i1 %24, i16 %39, i16 %23
  switch i16 %40, label %41 [
    i16 0, label %113
    i16 3, label %113
  ]

41:                                               ; preds = %111, %34
  %42 = phi i64 [ %107, %111 ], [ 0, %34 ]
  %43 = phi i64 [ %106, %111 ], [ %38, %34 ]
  %44 = phi i64 [ %105, %111 ], [ %25, %34 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store ptr null, ptr %6, align 4, !annotation !9
  %45 = call i64 @llvm.umin.i64(i64 %43, i64 4294967295) #14
  %46 = trunc i64 %45 to i32
  %47 = call fastcc i32 @iomap_write_begin(ptr noundef nonnull %7, i64 noundef %44, i32 noundef %46, ptr noundef nonnull %6) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = sext i32 %47 to i64
  br label %109

51:                                               ; preds = %41
  %52 = trunc i64 %44 to i32
  %53 = load ptr, ptr %6, align 4
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 65536
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = getelementptr %struct.page, ptr %53, i32 1, i32 1
  %59 = getelementptr inbounds %struct.anon.62, ptr %58, i32 0, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %57, %51
  %63 = phi i32 [ %61, %57 ], [ 0, %51 ]
  %64 = shl i32 4096, %63
  %65 = add i32 %64, -1
  %66 = and i32 %65, %52
  %67 = load volatile i32, ptr %53, align 4
  %68 = and i32 %67, 65536
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %62
  %71 = getelementptr %struct.page, ptr %53, i32 1, i32 1
  %72 = getelementptr inbounds %struct.anon.62, ptr %71, i32 0, i32 2
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  br label %75

75:                                               ; preds = %70, %62
  %76 = phi i32 [ %74, %70 ], [ 0, %62 ]
  %77 = shl i32 4096, %76
  %78 = sub i32 %77, %66
  %79 = icmp ult i32 %78, %46
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load volatile i32, ptr %53, align 4
  %82 = and i32 %81, 65536
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = getelementptr %struct.page, ptr %53, i32 1, i32 1
  %86 = getelementptr inbounds %struct.anon.62, ptr %85, i32 0, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i32 [ %88, %84 ], [ 0, %80 ]
  %91 = shl i32 4096, %90
  %92 = sub i32 %91, %66
  br label %93

93:                                               ; preds = %89, %75
  %94 = phi i32 [ %92, %89 ], [ %46, %75 ]
  %95 = add i32 %94, %66
  call void @zero_user_segments(ptr noundef %53, i32 noundef %66, i32 noundef %95, i32 noundef 0, i32 noundef 0) #14
  call void @folio_mark_accessed(ptr noundef %53) #14
  %96 = call fastcc i32 @iomap_write_end(ptr noundef nonnull %7, i64 noundef %44, i32 noundef %94, i32 noundef %94, ptr noundef %53) #14
  %97 = icmp eq i32 %96, 0
  %98 = load i1, ptr @iomap_zero_iter.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !13

101:                                              ; preds = %93
  store i1 true, ptr @iomap_zero_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 929, i32 noundef 9, ptr noundef null) #14
  br label %102

102:                                              ; preds = %101, %93
  br i1 %97, label %109, label %103

103:                                              ; preds = %102
  %104 = zext i32 %96 to i64
  %105 = add i64 %44, %104
  %106 = sub i64 %43, %104
  %107 = add i64 %42, %104
  br i1 %20, label %111, label %108

108:                                              ; preds = %103
  store i8 1, ptr %3, align 1
  br label %111

109:                                              ; preds = %102, %49
  %110 = phi i64 [ %50, %49 ], [ -5, %102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %113

111:                                              ; preds = %108, %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %112 = icmp sgt i64 %106, 0
  br i1 %112, label %41, label %113

113:                                              ; preds = %111, %109, %34, %34
  %114 = phi i64 [ %110, %109 ], [ %38, %34 ], [ %38, %34 ], [ %107, %111 ]
  store i64 %114, ptr %21, align 8
  %115 = call i32 @iomap_iter(ptr noundef nonnull %7, ptr noundef %4) #14
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %22, label %117

117:                                              ; preds = %113, %5
  %118 = phi i32 [ %11, %5 ], [ %115, %113 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %7) #14
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_truncate_page(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = add i32 %8, -1
  %10 = trunc i64 %1 to i32
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = sub i32 %8, %11
  %15 = zext i32 %14 to i64
  %16 = tail call i32 @iomap_zero_range(ptr noundef %0, i64 noundef %1, i64 noundef %15, ptr noundef %2, ptr noundef %3)
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %16, %13 ], [ 0, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_page_mkwrite(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.iomap_iter, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 4
  store i32 9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !8

16:                                               ; preds = %2
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %2
  %19 = ptrtoint ptr %11 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #14, !srcloc !15
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #14, !srcloc !31
  %28 = extractvalue { i32, i32, i32 } %27, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %20
  tail call void @__folio_lock(ptr noundef %22) #14
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %34 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  br label %35

35:                                               ; preds = %43, %32
  %36 = load volatile i32, ptr %33, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %39, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !18
  %40 = load volatile i32, ptr %33, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %39

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %36, %35 ], [ %40, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %45 = load i64, ptr %34, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %46 = load volatile i32, ptr %33, align 4
  %47 = icmp eq i32 %46, %44
  br i1 %47, label %48, label %35

48:                                               ; preds = %43
  %49 = lshr i64 %45, 12
  %50 = trunc i64 %49 to i32
  %51 = trunc i64 %45 to i32
  %52 = load volatile i32, ptr %22, align 4
  %53 = and i32 %52, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = getelementptr %struct.page, ptr %22, i32 1, i32 1
  %57 = getelementptr inbounds %struct.anon.62, ptr %56, i32 0, i32 2
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %55, %48
  %61 = phi i32 [ %59, %55 ], [ 0, %48 ]
  %62 = shl i32 4096, %61
  %63 = add i32 %62, -1
  %64 = and i32 %63, %51
  %65 = getelementptr inbounds %struct.anon.74, ptr %22, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %164, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.anon.74, ptr %22, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = load volatile i32, ptr %22, align 4
  %72 = and i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = getelementptr %struct.page, ptr %22, i32 1, i32 1, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi i32 [ %76, %74 ], [ 1, %68 ]
  %79 = add i32 %70, -1
  %80 = add i32 %79, %78
  %81 = icmp ult i32 %80, %50
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load volatile i32, ptr %22, align 4
  %84 = and i32 %83, 65536
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr %struct.page, ptr %22, i32 1, i32 1
  %88 = getelementptr inbounds %struct.anon.62, ptr %87, i32 0, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  br label %91

91:                                               ; preds = %86, %82
  %92 = phi i32 [ %90, %86 ], [ 0, %82 ]
  %93 = shl i32 4096, %92
  br label %98

94:                                               ; preds = %77
  %95 = icmp ule i32 %70, %50
  %96 = icmp ne i32 %64, 0
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %164

98:                                               ; preds = %94, %91
  %99 = phi i32 [ %93, %91 ], [ %64, %94 ]
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %164, label %101

101:                                              ; preds = %98
  %102 = zext i32 %70 to i64
  %103 = shl nuw nsw i64 %102, 12
  %104 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 1
  store i64 %103, ptr %104, align 8
  %105 = zext i32 %99 to i64
  %106 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 2
  store i64 %105, ptr %106, align 8
  %107 = call i32 @iomap_iter(ptr noundef nonnull %3, ptr noundef %1) #14
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %160

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 5, i32 1
  %111 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 5, i32 2
  %112 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 6, i32 3
  %113 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 6, i32 1
  %114 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 6, i32 2
  %115 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 5, i32 4
  %116 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 5
  %117 = getelementptr inbounds %struct.iomap_iter, ptr %3, i32 0, i32 3
  br label %118

118:                                              ; preds = %156, %109
  %119 = load i64, ptr %110, align 8
  %120 = load i64, ptr %111, align 8
  %121 = add i64 %120, %119
  %122 = load i16, ptr %112, align 8
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = load i64, ptr %113, align 8
  %126 = load i64, ptr %114, align 8
  %127 = add i64 %126, %125
  %128 = call i64 @llvm.umin.i64(i64 %121, i64 %127) #14
  br label %129

129:                                              ; preds = %124, %118
  %130 = phi i64 [ %128, %124 ], [ %121, %118 ]
  %131 = load i64, ptr %106, align 8
  %132 = load i64, ptr %104, align 8
  %133 = sub i64 %130, %132
  %134 = call i64 @llvm.umin.i64(i64 %131, i64 %133) #14
  %135 = load i16, ptr %115, align 2
  %136 = and i16 %135, 16
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %129
  %139 = trunc i64 %134 to i32
  %140 = call i32 @__block_write_begin_int(ptr noundef %22, i64 noundef %132, i32 noundef %139, ptr noundef null, ptr noundef %116) #14
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = sext i32 %140 to i64
  br label %156

144:                                              ; preds = %138
  %145 = call i32 @block_commit_write(ptr noundef %22, i32 noundef 0, i32 noundef %139) #14
  br label %156

146:                                              ; preds = %129
  %147 = load volatile i32, ptr %22, align 4
  %148 = and i32 %147, 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  br label %154

151:                                              ; preds = %146
  %152 = load i1, ptr @iomap_folio_mkwrite_iter.__already_done, align 1
  br i1 %152, label %154, label %153, !prof !8

153:                                              ; preds = %151
  store i1 true, ptr @iomap_folio_mkwrite_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 987, i32 noundef 9, ptr noundef null) #14
  br label %154

154:                                              ; preds = %153, %151, %150
  %155 = call zeroext i1 @folio_mark_dirty(ptr noundef %22) #14
  br label %156

156:                                              ; preds = %154, %144, %142
  %157 = phi i64 [ %143, %142 ], [ %134, %154 ], [ %134, %144 ]
  store i64 %157, ptr %117, align 8
  %158 = call i32 @iomap_iter(ptr noundef nonnull %3, ptr noundef %1) #14
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %118, label %160

160:                                              ; preds = %156, %101
  %161 = phi i32 [ %107, %101 ], [ %158, %156 ]
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  call void @folio_wait_stable(ptr noundef %22) #14
  br label %172

164:                                              ; preds = %160, %98, %94, %60
  %165 = phi i32 [ %99, %98 ], [ %161, %160 ], [ -14, %60 ], [ -14, %94 ]
  call void @folio_unlock(ptr noundef %22) #14
  %166 = icmp eq i32 %165, -14
  %167 = icmp eq i32 %165, -11
  %168 = or i1 %166, %167
  %169 = icmp eq i32 %165, -12
  %170 = select i1 %169, i32 1, i32 2
  %171 = select i1 %168, i32 256, i32 %170
  br label %172

172:                                              ; preds = %164, %163
  %173 = phi i32 [ %171, %164 ], [ 512, %163 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #14
  ret i32 %173
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_stable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iomap_finish_ioends(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 4
  store ptr %4, ptr %3, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  store ptr %3, ptr %7, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %6, align 4
  %9 = call fastcc i32 @iomap_finish_ioend(ptr noundef %0, i32 noundef %1)
  %10 = load volatile ptr, ptr %3, align 8
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %30, label %12

12:                                               ; preds = %19, %2
  %13 = phi ptr [ %28, %19 ], [ %10, %2 ]
  %14 = phi i32 [ %27, %19 ], [ %9, %2 ]
  %15 = icmp ugt i32 %14, 32768
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i32 @__cond_resched() #14
  %18 = load ptr, ptr %3, align 8
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi ptr [ %18, %16 ], [ %13, %12 ]
  %21 = phi i32 [ 0, %16 ], [ %14, %12 ]
  %22 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store volatile ptr %20, ptr %20, align 4
  store ptr %20, ptr %22, align 4
  %26 = call fastcc i32 @iomap_finish_ioend(ptr noundef %20, i32 noundef %1)
  %27 = add i32 %26, %21
  %28 = load volatile ptr, ptr %3, align 8
  %29 = icmp eq ptr %28, %3
  br i1 %29, label %30, label %12

30:                                               ; preds = %19, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iomap_finish_ioend(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 9
  %6 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 9, i32 8
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 6
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 9, i32 3
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 16
  %15 = icmp eq i16 %14, 0
  %16 = icmp eq ptr %5, null
  br i1 %16, label %226, label %17

17:                                               ; preds = %2
  %18 = icmp eq i32 %1, 0
  %19 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9
  %20 = icmp eq i32 %1, -28
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 19
  br label %23

23:                                               ; preds = %223, %17
  %24 = phi i32 [ 0, %17 ], [ %224, %223 ]
  %25 = phi ptr [ %5, %17 ], [ %31, %223 ]
  %26 = icmp eq ptr %25, %7
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bio, ptr %25, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %29, %27 ], [ null, %23 ]
  %32 = getelementptr inbounds %struct.bio, ptr %25, i32 0, i32 3
  %33 = load i16, ptr %32, align 4
  %34 = and i16 %33, 2
  %35 = icmp ne i16 %34, 0
  %36 = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !13

39:                                               ; preds = %30
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 248, i32 noundef 9, ptr noundef null) #14
  br label %40

40:                                               ; preds = %39, %30
  %41 = getelementptr inbounds %struct.bio, ptr %25, i32 0, i32 16
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48, !prof !8

48:                                               ; preds = %40
  %49 = add i32 %45, -1
  %50 = ptrtoint ptr %43 to i32
  br label %53

51:                                               ; preds = %40
  %52 = ptrtoint ptr %43 to i32
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i32 [ %52, %51 ], [ %50, %48 ]
  %55 = phi i32 [ %52, %51 ], [ %49, %48 ]
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr %struct.bio_vec, ptr %42, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %55, %54
  %60 = getelementptr %struct.bio_vec, ptr %42, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load volatile i32, ptr %56, align 4
  %63 = and i32 %62, 65536
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %53
  %66 = getelementptr %struct.page, ptr %56, i32 1, i32 1
  %67 = getelementptr inbounds %struct.anon.62, ptr %66, i32 0, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  br label %70

70:                                               ; preds = %65, %53
  %71 = phi i32 [ %69, %65 ], [ 0, %53 ]
  %72 = icmp eq i32 %55, 0
  br i1 %72, label %223, label %73

73:                                               ; preds = %70
  %74 = shl i32 %59, 7
  %75 = sub i32 %74, %58
  %76 = shl i32 4096, %71
  %77 = add i32 %75, %76
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 %61) #14
  %79 = getelementptr inbounds %struct.bio, ptr %25, i32 0, i32 13
  br label %80

80:                                               ; preds = %217, %73
  %81 = phi i32 [ %24, %73 ], [ %142, %217 ]
  %82 = phi i32 [ 0, %73 ], [ %221, %217 ]
  %83 = phi i32 [ %61, %73 ], [ %220, %217 ]
  %84 = phi i32 [ %78, %73 ], [ %219, %217 ]
  %85 = phi ptr [ %56, %73 ], [ %218, %217 ]
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 8192
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.anon.74, ptr %85, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %80
  %93 = phi ptr [ %91, %89 ], [ null, %80 ]
  br i1 %18, label %105, label %94

94:                                               ; preds = %92
  tail call void @_set_bit(i32 noundef 8, ptr noundef nonnull %85) #14
  %95 = load ptr, ptr %19, align 8
  tail call void @__filemap_set_wb_err(ptr noundef %95, i32 noundef %1) #14
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.inode, ptr %96, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 44
  %102 = tail call i32 @errseq_set(ptr noundef %101, i32 noundef %1) #14
  br label %103

103:                                              ; preds = %98, %94
  %104 = getelementptr inbounds %struct.address_space, ptr %95, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %21, ptr noundef %104) #14
  br label %105

105:                                              ; preds = %103, %92
  %106 = load volatile i32, ptr %85, align 4
  %107 = and i32 %106, 65536
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr %struct.page, ptr %85, i32 1, i32 1
  %111 = getelementptr inbounds %struct.anon.62, ptr %110, i32 0, i32 2
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  br label %114

114:                                              ; preds = %109, %105
  %115 = phi i32 [ %113, %109 ], [ 0, %105 ]
  %116 = shl i32 4096, %115
  %117 = load i8, ptr %22, align 2
  %118 = zext i8 %117 to i32
  %119 = lshr i32 %116, %118
  %120 = icmp ugt i32 %119, 1
  %121 = icmp eq ptr %93, null
  %122 = select i1 %120, i1 %121, i1 false
  %123 = load i1, ptr @iomap_finish_folio_write.__already_done, align 1
  %124 = xor i1 %123, true
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %127, !prof !13

126:                                              ; preds = %114
  store i1 true, ptr @iomap_finish_folio_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1032, i32 noundef 9, ptr noundef null) #14
  br label %127

127:                                              ; preds = %126, %114
  br i1 %121, label %140, label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.iomap_page, ptr %93, i32 0, i32 1
  %130 = load volatile i32, ptr %129, align 4
  %131 = icmp slt i32 %130, 1
  %132 = load i1, ptr @iomap_finish_folio_write.__already_done.10, align 1
  %133 = xor i1 %132, true
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %136, !prof !13

135:                                              ; preds = %128
  store i1 true, ptr @iomap_finish_folio_write.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1033, i32 noundef 9, ptr noundef null) #14
  br label %136

136:                                              ; preds = %135, %128
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #14, !srcloc !15
  %137 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 %84, ptr elementtype(i32) %129) #14, !srcloc !25
  %138 = extractvalue { i32, i32 } %137, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %127
  tail call void @folio_end_writeback(ptr noundef nonnull %85) #14
  br label %141

141:                                              ; preds = %140, %136
  %142 = add i32 %81, 1
  %143 = sub i32 %83, %84
  %144 = icmp eq i32 %83, %84
  br i1 %144, label %167, label %145

145:                                              ; preds = %141
  %146 = load volatile i32, ptr %85, align 4
  %147 = and i32 %146, 65536
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = getelementptr %struct.page, ptr %85, i32 1, i32 1, i32 0, i32 2
  %151 = load i32, ptr %150, align 4
  br label %152

152:                                              ; preds = %149, %145
  %153 = phi i32 [ %151, %149 ], [ 1, %145 ]
  %154 = getelementptr %struct.page, ptr %85, i32 %153
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %155, 65536
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %152
  %159 = getelementptr %struct.page, ptr %154, i32 1, i32 1
  %160 = getelementptr inbounds %struct.anon.62, ptr %159, i32 0, i32 2
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  br label %163

163:                                              ; preds = %158, %152
  %164 = phi i32 [ %162, %158 ], [ 0, %152 ]
  %165 = shl i32 4096, %164
  %166 = tail call i32 @llvm.umin.i32(i32 %165, i32 %143) #14
  br label %217

167:                                              ; preds = %141
  %168 = add i32 %82, 1
  %169 = load i16, ptr %79, align 4
  %170 = zext i16 %169 to i32
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %172, label %223

172:                                              ; preds = %167
  %173 = load i16, ptr %32, align 4
  %174 = and i16 %173, 2
  %175 = icmp ne i16 %174, 0
  %176 = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  %177 = xor i1 %176, true
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %180, !prof !13

179:                                              ; preds = %172
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 248, i32 noundef 9, ptr noundef null) #14
  br label %180

180:                                              ; preds = %179, %172
  %181 = load ptr, ptr %41, align 4
  %182 = getelementptr %struct.bio_vec, ptr %181, i32 %168
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.page, ptr %183, i32 0, i32 1
  %185 = load volatile i32, ptr %184, align 4
  %186 = and i32 %185, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188, !prof !8

188:                                              ; preds = %180
  %189 = add i32 %185, -1
  %190 = ptrtoint ptr %183 to i32
  br label %193

191:                                              ; preds = %180
  %192 = ptrtoint ptr %183 to i32
  br label %193

193:                                              ; preds = %191, %188
  %194 = phi i32 [ %192, %191 ], [ %190, %188 ]
  %195 = phi i32 [ %192, %191 ], [ %189, %188 ]
  %196 = inttoptr i32 %195 to ptr
  %197 = getelementptr %struct.bio_vec, ptr %181, i32 %168, i32 2
  %198 = load i32, ptr %197, align 4
  %199 = sub i32 %195, %194
  %200 = getelementptr %struct.bio_vec, ptr %181, i32 %168, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = load volatile i32, ptr %196, align 4
  %203 = and i32 %202, 65536
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %193
  %206 = getelementptr %struct.page, ptr %196, i32 1, i32 1
  %207 = getelementptr inbounds %struct.anon.62, ptr %206, i32 0, i32 2
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i32
  br label %210

210:                                              ; preds = %205, %193
  %211 = phi i32 [ %209, %205 ], [ 0, %193 ]
  %212 = shl i32 4096, %211
  %213 = shl i32 %199, 7
  %214 = sub i32 %213, %198
  %215 = add i32 %214, %212
  %216 = tail call i32 @llvm.umin.i32(i32 %215, i32 %201) #14
  br label %217

217:                                              ; preds = %210, %163
  %218 = phi ptr [ %196, %210 ], [ %154, %163 ]
  %219 = phi i32 [ %216, %210 ], [ %166, %163 ]
  %220 = phi i32 [ %201, %210 ], [ %143, %163 ]
  %221 = phi i32 [ %168, %210 ], [ %82, %163 ]
  %222 = icmp eq ptr %218, null
  br i1 %222, label %223, label %80

223:                                              ; preds = %217, %167, %70
  %224 = phi i32 [ %24, %70 ], [ %142, %217 ], [ %142, %167 ]
  tail call void @bio_put(ptr noundef nonnull %25) #14
  %225 = icmp eq ptr %31, null
  br i1 %225, label %226, label %23

226:                                              ; preds = %223, %2
  %227 = phi i32 [ 0, %2 ], [ %224, %223 ]
  %228 = icmp ne i32 %1, 0
  %229 = select i1 %228, i1 %15, i1 false
  br i1 %229, label %230, label %240, !prof !13

230:                                              ; preds = %226
  %231 = tail call i32 @___ratelimit(ptr noundef nonnull @iomap_finish_ioend._rs, ptr noundef nonnull @__func__.iomap_finish_ioend) #14
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %240, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.super_block, ptr %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 10
  %238 = load i32, ptr %237, align 4
  %239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %236, i32 noundef %238, i64 noundef %11, i64 noundef %9) #16
  br label %240

240:                                              ; preds = %233, %230, %226
  ret i32 %227
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iomap_ioend_try_merge(ptr noundef %0, ptr noundef %1) #5 {
  store volatile ptr %0, ptr %0, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 7
  %8 = load volatile ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, %1
  %10 = icmp eq ptr %8, null
  %11 = or i1 %9, %10
  br i1 %11, label %69, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.iomap_ioend, ptr %0, i32 0, i32 5
  br label %15

15:                                               ; preds = %55, %12
  %16 = phi ptr [ %8, %12 ], [ %65, %55 ]
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 6
  %19 = load i8, ptr %18, align 2
  %20 = getelementptr inbounds %struct.iomap_ioend, ptr %16, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.bio, ptr %21, i32 0, i32 6
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %19, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %15
  %26 = load i16, ptr %5, align 2
  %27 = getelementptr inbounds %struct.iomap_ioend, ptr %16, i32 0, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = xor i16 %28, %26
  %30 = and i16 %29, 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %25
  %33 = load i16, ptr %13, align 8
  %34 = icmp eq i16 %33, 3
  %35 = getelementptr inbounds %struct.iomap_ioend, ptr %16, i32 0, i32 1
  %36 = load i16, ptr %35, align 8
  %37 = icmp eq i16 %36, 3
  %38 = xor i1 %34, %37
  br i1 %38, label %69, label %39

39:                                               ; preds = %32
  %40 = load i64, ptr %6, align 8
  %41 = load i32, ptr %14, align 4
  %42 = zext i32 %41 to i64
  %43 = add i64 %40, %42
  %44 = getelementptr inbounds %struct.iomap_ioend, ptr %16, i32 0, i32 6
  %45 = load i64, ptr %44, align 8
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %39
  %48 = load i64, ptr %7, align 8
  %49 = lshr i32 %41, 9
  %50 = zext i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = getelementptr inbounds %struct.iomap_ioend, ptr %16, i32 0, i32 7
  %53 = load i64, ptr %52, align 8
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  %60 = load ptr, ptr %3, align 4
  store ptr %16, ptr %3, align 4
  store ptr %0, ptr %16, align 4
  store ptr %60, ptr %56, align 4
  store volatile ptr %16, ptr %60, align 4
  %61 = getelementptr inbounds %struct.iomap_ioend, ptr %16, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %14, align 4
  %64 = add i32 %63, %62
  store i32 %64, ptr %14, align 4
  %65 = load volatile ptr, ptr %1, align 4
  %66 = icmp eq ptr %65, %1
  %67 = icmp eq ptr %65, null
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %15

69:                                               ; preds = %55, %47, %39, %32, %25, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iomap_sort_ioends(ptr noundef %0) #0 {
  tail call void @list_sort(ptr noundef null, ptr noundef %0, ptr noundef nonnull @iomap_ioend_compare) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @iomap_ioend_compare(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #6 {
  %4 = getelementptr inbounds %struct.iomap_ioend, ptr %1, i32 0, i32 6
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iomap_ioend, ptr %2, i32 0, i32 6
  %7 = load i64, ptr %6, align 8
  %8 = icmp slt i64 %5, %7
  %9 = icmp sgt i64 %5, %7
  %10 = zext i1 %9 to i32
  %11 = select i1 %8, i32 -1, i32 %10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %2, i32 0, i32 2
  store ptr %3, ptr %5, align 4
  %6 = tail call i32 @iomap_do_writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %7 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.iomap_ioend, ptr %8, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.bio, ptr %12, i32 0, i32 11
  store ptr %8, ptr %13, align 4
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 10
  store ptr @iomap_writepage_end_bio, ptr %15, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.iomap_writeback_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = tail call i32 %18(ptr noundef nonnull %8, i32 noundef %6) #14
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ %21, %20 ], [ %6, %10 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %23) #14
  %27 = load ptr, ptr %11, align 8
  %28 = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 6
  store i8 %26, ptr %28, align 2
  %29 = load ptr, ptr %11, align 8
  tail call void @bio_endio(ptr noundef %29) #14
  br label %32

30:                                               ; preds = %22
  %31 = load ptr, ptr %11, align 8
  tail call void @submit_bio(ptr noundef %31) #14
  br label %32

32:                                               ; preds = %30, %25, %4
  %33 = phi i32 [ %6, %4 ], [ %23, %25 ], [ 0, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iomap_do_writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %3
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %3
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.anon.74, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 12
  %23 = load volatile i32, ptr %15, align 4
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %13
  %27 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %28 = getelementptr inbounds %struct.anon.62, ptr %27, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %26, %13
  %32 = phi i32 [ %30, %26 ], [ 0, %13 ]
  %33 = shl i32 4096, %32
  %34 = zext i32 %33 to i64
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_writepage, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  %37 = tail call ptr @llvm.thread.pointer() #14
  br i1 %36, label %38, label %50

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  %49 = tail call i32 @__traceiter_iomap_writepage(ptr noundef null, ptr noundef %18, i64 noundef %22, i64 noundef %34) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  br label %50

50:                                               ; preds = %48, %38, %31
  %51 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 133120
  %54 = icmp eq i32 %53, 2048
  %55 = load i1, ptr @iomap_do_writepage.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !13

58:                                               ; preds = %50
  store i1 true, ptr @iomap_do_writepage.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1466, i32 noundef 9, ptr noundef null) #14
  br label %59

59:                                               ; preds = %58, %50
  br i1 %54, label %530, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 22
  %62 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 13
  br label %63

63:                                               ; preds = %71, %60
  %64 = load volatile i32, ptr %61, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %67, %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !18
  %68 = load volatile i32, ptr %61, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %67

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %64, %63 ], [ %68, %67 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %73 = load i64, ptr %62, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %74 = load volatile i32, ptr %61, align 4
  %75 = icmp eq i32 %74, %72
  br i1 %75, label %76, label %63

76:                                               ; preds = %71
  %77 = load i32, ptr %19, align 4
  %78 = zext i32 %77 to i64
  %79 = shl nuw nsw i64 %78, 12
  %80 = load volatile i32, ptr %15, align 4
  %81 = and i32 %80, 65536
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %85 = getelementptr inbounds %struct.anon.62, ptr %84, i32 0, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  br label %88

88:                                               ; preds = %83, %76
  %89 = phi i32 [ %87, %83 ], [ 0, %76 ]
  %90 = shl i32 4096, %89
  %91 = zext i32 %90 to i64
  %92 = add nuw nsw i64 %79, %91
  %93 = icmp ugt i64 %92, %73
  br i1 %93, label %94, label %128

94:                                               ; preds = %88
  %95 = trunc i64 %73 to i32
  %96 = load volatile i32, ptr %15, align 4
  %97 = and i32 %96, 65536
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %101 = getelementptr inbounds %struct.anon.62, ptr %100, i32 0, i32 2
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi i32 [ %103, %99 ], [ 0, %94 ]
  %106 = shl i32 4096, %105
  %107 = add i32 %106, -1
  %108 = and i32 %107, %95
  %109 = lshr i64 %73, 12
  %110 = trunc i64 %109 to i32
  %111 = icmp ugt i32 %77, %110
  br i1 %111, label %530, label %112

112:                                              ; preds = %104
  %113 = icmp eq i32 %77, %110
  %114 = icmp eq i32 %108, 0
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %530, label %116

116:                                              ; preds = %112
  %117 = load volatile i32, ptr %15, align 4
  %118 = and i32 %117, 65536
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %122 = getelementptr inbounds %struct.anon.62, ptr %121, i32 0, i32 2
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  br label %125

125:                                              ; preds = %120, %116
  %126 = phi i32 [ %124, %120 ], [ 0, %116 ]
  %127 = shl i32 4096, %126
  tail call void @zero_user_segments(ptr noundef %15, i32 noundef %108, i32 noundef %127, i32 noundef 0, i32 noundef 0) #14
  br label %128

128:                                              ; preds = %125, %88
  %129 = phi i64 [ %73, %125 ], [ %92, %88 ]
  %130 = load volatile i32, ptr %15, align 4
  %131 = and i32 %130, 8192
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.anon.74, ptr %15, i32 0, i32 4
  %135 = load ptr, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %128
  %137 = phi ptr [ %135, %133 ], [ null, %128 ]
  %138 = load volatile i32, ptr %15, align 4
  %139 = and i32 %138, 65536
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %143 = getelementptr inbounds %struct.anon.62, ptr %142, i32 0, i32 2
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  br label %146

146:                                              ; preds = %141, %136
  %147 = phi i32 [ %145, %141 ], [ 0, %136 ]
  %148 = shl i32 4096, %147
  %149 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 19
  %150 = load i8, ptr %149, align 2
  %151 = zext i8 %150 to i32
  %152 = lshr i32 %148, %151
  %153 = icmp ne ptr %137, null
  %154 = icmp ult i32 %152, 2
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %174, label %156

156:                                              ; preds = %146
  %157 = add i32 %152, 31
  %158 = lshr i32 %157, 3
  %159 = and i32 %158, 536870908
  %160 = add nuw nsw i32 %159, 12
  %161 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %160, i32 noundef 36160) #15
  %162 = getelementptr inbounds %struct.iomap_page, ptr %161, i32 0, i32 2
  store i32 0, ptr %162, align 8
  %163 = load volatile i32, ptr %15, align 4
  %164 = and i32 %163, 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %156
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %167 = getelementptr inbounds %struct.iomap_page, ptr %161, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr align 4 %167, i8 -1, i32 %159, i1 false) #14
  br label %168

168:                                              ; preds = %166, %156
  %169 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %169) #14, !srcloc !15
  %170 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %169, ptr %169, i32 1, ptr elementtype(i32) %169) #14, !srcloc !16
  %171 = getelementptr inbounds %struct.anon.74, ptr %15, i32 0, i32 4
  store ptr %161, ptr %171, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %15) #14
  %172 = load i8, ptr %149, align 2
  %173 = zext i8 %172 to i32
  br label %174

174:                                              ; preds = %168, %146
  %175 = phi i32 [ %151, %146 ], [ %173, %168 ]
  %176 = phi ptr [ %137, %146 ], [ %161, %168 ]
  %177 = shl nuw i32 1, %175
  %178 = load volatile i32, ptr %15, align 4
  %179 = and i32 %178, 65536
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %174
  %182 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %183 = getelementptr inbounds %struct.anon.62, ptr %182, i32 0, i32 2
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  br label %186

186:                                              ; preds = %181, %174
  %187 = phi i32 [ %185, %181 ], [ 0, %174 ]
  %188 = shl i32 4096, %187
  %189 = lshr i32 %188, %175
  %190 = load i32, ptr %19, align 4
  %191 = zext i32 %190 to i64
  %192 = shl nuw nsw i64 %191, 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr %4, ptr %4, align 8
  %193 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %193, align 4
  %194 = icmp eq ptr %176, null
  br i1 %194, label %203, label %195

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.iomap_page, ptr %176, i32 0, i32 1
  %197 = load volatile i32, ptr %196, align 4
  %198 = icmp ne i32 %197, 0
  %199 = load i1, ptr @iomap_writepage_map.__already_done, align 1
  %200 = xor i1 %199, true
  %201 = select i1 %198, i1 %200, i1 false
  br i1 %201, label %202, label %203, !prof !13

202:                                              ; preds = %195
  store i1 true, ptr @iomap_writepage_map.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1358, i32 noundef 9, ptr noundef null) #14
  br label %203

203:                                              ; preds = %202, %195, %186
  %204 = icmp ne i32 %189, 0
  %205 = icmp ult i64 %192, %129
  %206 = select i1 %204, i1 %205, i1 false
  br i1 %206, label %207, label %422

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.iomap_page, ptr %176, i32 0, i32 3
  %209 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %2, i32 0, i32 2
  %210 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 3
  %211 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 1
  %212 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %213 = getelementptr inbounds %struct.anon.62, ptr %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %2, i32 0, i32 1
  %215 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 4
  %216 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 5
  %217 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %218 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %219 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 20
  %220 = getelementptr inbounds %struct.iomap_page, ptr %176, i32 0, i32 1
  %221 = zext i32 %177 to i64
  br label %222

222:                                              ; preds = %405, %207
  %223 = phi i64 [ %192, %207 ], [ %408, %405 ]
  %224 = phi i32 [ 0, %207 ], [ %406, %405 ]
  %225 = phi i32 [ 0, %207 ], [ %407, %405 ]
  br i1 %194, label %234, label %226

226:                                              ; preds = %222
  %227 = lshr i32 %225, 5
  %228 = getelementptr i32, ptr %208, i32 %227
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %225, 31
  %231 = shl nuw i32 1, %230
  %232 = and i32 %229, %231
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %405, label %234

234:                                              ; preds = %226, %222
  %235 = load ptr, ptr %209, align 4
  %236 = load ptr, ptr %235, align 4
  %237 = call i32 %236(ptr noundef %2, ptr noundef %18, i64 noundef %223) #14
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %412

239:                                              ; preds = %234
  %240 = load i16, ptr %210, align 8
  %241 = icmp eq i16 %240, 4
  %242 = load i1, ptr @iomap_writepage_map.__already_done.11, align 1
  %243 = xor i1 %242, true
  %244 = select i1 %241, i1 %243, i1 false
  br i1 %244, label %245, label %246, !prof !13

245:                                              ; preds = %239
  store i1 true, ptr @iomap_writepage_map.__already_done.11, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1372, i32 noundef 9, ptr noundef null) #14
  br label %246

246:                                              ; preds = %245, %239
  br i1 %241, label %405, label %247

247:                                              ; preds = %246
  %248 = load i16, ptr %210, align 8
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %405, label %250

250:                                              ; preds = %247
  %251 = load i64, ptr %2, align 8
  %252 = add i64 %251, %223
  %253 = load i64, ptr %211, align 8
  %254 = sub i64 %252, %253
  %255 = lshr i64 %254, 9
  %256 = load i8, ptr %149, align 2
  %257 = zext i8 %256 to i32
  %258 = shl nuw i32 1, %257
  %259 = trunc i64 %223 to i32
  %260 = load volatile i32, ptr %15, align 4
  %261 = and i32 %260, 65536
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %250
  %264 = load i8, ptr %213, align 1
  %265 = zext i8 %264 to i32
  br label %266

266:                                              ; preds = %263, %250
  %267 = phi i32 [ %265, %263 ], [ 0, %250 ]
  %268 = shl i32 4096, %267
  %269 = add i32 %268, -1
  %270 = and i32 %269, %259
  %271 = load ptr, ptr %214, align 8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %311, label %273

273:                                              ; preds = %266
  %274 = load i16, ptr %215, align 2
  %275 = getelementptr inbounds %struct.iomap_ioend, ptr %271, i32 0, i32 2
  %276 = load i16, ptr %275, align 2
  %277 = xor i16 %276, %274
  %278 = and i16 %277, 4
  %279 = icmp eq i16 %278, 0
  br i1 %279, label %280, label %307

280:                                              ; preds = %273
  %281 = getelementptr inbounds %struct.iomap_ioend, ptr %271, i32 0, i32 1
  %282 = load i16, ptr %281, align 8
  %283 = icmp eq i16 %248, %282
  br i1 %283, label %284, label %307

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.iomap_ioend, ptr %271, i32 0, i32 6
  %286 = load i64, ptr %285, align 8
  %287 = getelementptr inbounds %struct.iomap_ioend, ptr %271, i32 0, i32 5
  %288 = load i32, ptr %287, align 4
  %289 = zext i32 %288 to i64
  %290 = add i64 %286, %289
  %291 = icmp eq i64 %290, %223
  br i1 %291, label %292, label %307

292:                                              ; preds = %284
  %293 = getelementptr inbounds %struct.iomap_ioend, ptr %271, i32 0, i32 8
  %294 = load ptr, ptr %293, align 8
  %295 = getelementptr inbounds %struct.bio, ptr %294, i32 0, i32 8
  %296 = load i64, ptr %295, align 4
  %297 = getelementptr inbounds %struct.bio, ptr %294, i32 0, i32 8, i32 1
  %298 = load i32, ptr %297, align 4
  %299 = lshr i32 %298, 9
  %300 = zext i32 %299 to i64
  %301 = add i64 %296, %300
  %302 = icmp eq i64 %301, %255
  br i1 %302, label %303, label %307

303:                                              ; preds = %292
  %304 = getelementptr inbounds %struct.iomap_ioend, ptr %271, i32 0, i32 3
  %305 = load i32, ptr %304, align 4
  %306 = icmp ult i32 %305, 4096
  br i1 %306, label %357, label %307

307:                                              ; preds = %303, %292, %284, %280, %273
  %308 = load ptr, ptr %4, align 8
  %309 = getelementptr inbounds %struct.list_head, ptr %308, i32 0, i32 1
  store ptr %271, ptr %309, align 4
  store ptr %308, ptr %271, align 4
  %310 = getelementptr inbounds %struct.list_head, ptr %271, i32 0, i32 1
  store ptr %4, ptr %310, align 4
  store volatile ptr %271, ptr %4, align 8
  br label %311

311:                                              ; preds = %307, %266
  %312 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 256, ptr noundef nonnull @iomap_ioend_bioset) #14
  %313 = load ptr, ptr %216, align 4
  %314 = getelementptr inbounds %struct.bio, ptr %312, i32 0, i32 3
  %315 = load i16, ptr %314, align 4
  %316 = and i16 %315, -2049
  store i16 %316, ptr %314, align 4
  %317 = getelementptr inbounds %struct.bio, ptr %312, i32 0, i32 1
  %318 = load ptr, ptr %317, align 4
  %319 = icmp eq ptr %318, %313
  br i1 %319, label %322, label %320

320:                                              ; preds = %311
  %321 = and i16 %315, -2177
  store i16 %321, ptr %314, align 4
  br label %322

322:                                              ; preds = %320, %311
  store ptr %313, ptr %317, align 4
  %323 = getelementptr inbounds %struct.bio, ptr %312, i32 0, i32 8
  store i64 %255, ptr %323, align 4
  %324 = load i16, ptr %217, align 4
  %325 = and i16 %324, 256
  %326 = zext i16 %325 to i32
  %327 = shl nuw nsw i32 %326, 14
  %328 = load i32, ptr %218, align 8
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %332

330:                                              ; preds = %322
  %331 = or i32 %327, 2048
  br label %337

332:                                              ; preds = %322
  %333 = and i16 %324, 3
  %334 = icmp eq i16 %333, 0
  %335 = or i32 %327, 1048576
  %336 = select i1 %334, i32 %327, i32 %335
  br label %337

337:                                              ; preds = %332, %330
  %338 = phi i32 [ %331, %330 ], [ %336, %332 ]
  %339 = or i32 %338, 1
  %340 = getelementptr inbounds %struct.bio, ptr %312, i32 0, i32 2
  store i32 %339, ptr %340, align 4
  %341 = load i8, ptr %219, align 1
  %342 = zext i8 %341 to i16
  %343 = getelementptr inbounds %struct.bio, ptr %312, i32 0, i32 5
  store i16 %342, ptr %343, align 4
  %344 = getelementptr i8, ptr %312, i32 -44
  store volatile ptr %344, ptr %344, align 4
  %345 = getelementptr i8, ptr %312, i32 -40
  store ptr %344, ptr %345, align 4
  %346 = load i16, ptr %210, align 8
  %347 = getelementptr i8, ptr %312, i32 -36
  store i16 %346, ptr %347, align 8
  %348 = load i16, ptr %215, align 2
  %349 = getelementptr i8, ptr %312, i32 -34
  store i16 %348, ptr %349, align 2
  %350 = getelementptr i8, ptr %312, i32 -28
  store ptr %18, ptr %350, align 8
  %351 = getelementptr i8, ptr %312, i32 -24
  store i32 0, ptr %351, align 4
  %352 = getelementptr i8, ptr %312, i32 -32
  store i32 0, ptr %352, align 4
  %353 = getelementptr i8, ptr %312, i32 -20
  store i64 %223, ptr %353, align 8
  %354 = getelementptr i8, ptr %312, i32 -4
  store ptr %312, ptr %354, align 8
  %355 = getelementptr i8, ptr %312, i32 -12
  store i64 %255, ptr %355, align 8
  store ptr %344, ptr %214, align 8
  %356 = load ptr, ptr %354, align 8
  br label %357

357:                                              ; preds = %337, %303
  %358 = phi ptr [ %356, %337 ], [ %294, %303 ]
  %359 = call zeroext i1 @bio_add_folio(ptr noundef %358, ptr noundef %15, i32 noundef %258, i32 noundef %270) #14
  br i1 %359, label %396, label %360

360:                                              ; preds = %357
  %361 = load ptr, ptr %214, align 8
  %362 = getelementptr inbounds %struct.iomap_ioend, ptr %361, i32 0, i32 8
  %363 = load ptr, ptr %362, align 8
  %364 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #14
  %365 = getelementptr inbounds %struct.bio, ptr %364, i32 0, i32 3
  %366 = load i16, ptr %365, align 4
  %367 = and i16 %366, -2049
  store i16 %367, ptr %365, align 4
  %368 = getelementptr inbounds %struct.bio, ptr %363, i32 0, i32 1
  %369 = load ptr, ptr %368, align 4
  %370 = getelementptr inbounds %struct.bio, ptr %364, i32 0, i32 1
  store ptr %369, ptr %370, align 4
  %371 = getelementptr inbounds %struct.bio, ptr %363, i32 0, i32 8
  %372 = load i64, ptr %371, align 4
  %373 = getelementptr inbounds %struct.bio, ptr %363, i32 0, i32 8, i32 1
  %374 = load i32, ptr %373, align 4
  %375 = lshr i32 %374, 9
  %376 = zext i32 %375 to i64
  %377 = add i64 %372, %376
  %378 = getelementptr inbounds %struct.bio, ptr %364, i32 0, i32 8
  store i64 %377, ptr %378, align 4
  %379 = getelementptr inbounds %struct.bio, ptr %363, i32 0, i32 2
  %380 = load i32, ptr %379, align 4
  %381 = getelementptr inbounds %struct.bio, ptr %364, i32 0, i32 2
  store i32 %380, ptr %381, align 4
  %382 = getelementptr inbounds %struct.bio, ptr %363, i32 0, i32 5
  %383 = load i16, ptr %382, align 4
  %384 = getelementptr inbounds %struct.bio, ptr %364, i32 0, i32 5
  store i16 %383, ptr %384, align 4
  call void @bio_chain(ptr noundef %363, ptr noundef %364) #14
  %385 = getelementptr inbounds %struct.bio, ptr %363, i32 0, i32 3
  %386 = load i16, ptr %385, align 4
  %387 = or i16 %386, 64
  store i16 %387, ptr %385, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !35
  %388 = getelementptr inbounds %struct.bio, ptr %363, i32 0, i32 15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %388) #14, !srcloc !15
  %389 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %388, ptr %388, i32 1, ptr elementtype(i32) %388) #14, !srcloc !16
  call void @submit_bio(ptr noundef %363) #14
  %390 = load ptr, ptr %214, align 8
  %391 = getelementptr inbounds %struct.iomap_ioend, ptr %390, i32 0, i32 8
  store ptr %364, ptr %391, align 8
  %392 = load ptr, ptr %214, align 8
  %393 = getelementptr inbounds %struct.iomap_ioend, ptr %392, i32 0, i32 8
  %394 = load ptr, ptr %393, align 8
  %395 = call zeroext i1 @bio_add_folio(ptr noundef %394, ptr noundef %15, i32 noundef %258, i32 noundef %270) #14
  br label %396

396:                                              ; preds = %360, %357
  br i1 %194, label %399, label %397

397:                                              ; preds = %396
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %220) #14, !srcloc !15
  %398 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %220, ptr %220, i32 %258, ptr elementtype(i32) %220) #14, !srcloc !16
  br label %399

399:                                              ; preds = %397, %396
  %400 = load ptr, ptr %214, align 8
  %401 = getelementptr inbounds %struct.iomap_ioend, ptr %400, i32 0, i32 5
  %402 = load i32, ptr %401, align 4
  %403 = add i32 %402, %258
  store i32 %403, ptr %401, align 4
  %404 = add i32 %224, 1
  br label %405

405:                                              ; preds = %399, %247, %246, %226
  %406 = phi i32 [ %224, %246 ], [ %224, %247 ], [ %404, %399 ], [ %224, %226 ]
  %407 = add nuw i32 %225, 1
  %408 = add i64 %223, %221
  %409 = icmp ult i32 %407, %189
  %410 = icmp ult i64 %408, %129
  %411 = select i1 %409, i1 %410, i1 false
  br i1 %411, label %222, label %412

412:                                              ; preds = %405, %234
  %413 = phi i32 [ %406, %405 ], [ %224, %234 ]
  %414 = phi i64 [ %408, %405 ], [ %223, %234 ]
  %415 = phi i32 [ 0, %405 ], [ %237, %234 ]
  %416 = icmp eq i32 %413, 0
  br i1 %416, label %422, label %417

417:                                              ; preds = %412
  %418 = load ptr, ptr %214, align 8
  %419 = getelementptr inbounds %struct.iomap_ioend, ptr %418, i32 0, i32 3
  %420 = load i32, ptr %419, align 4
  %421 = add i32 %420, 1
  store i32 %421, ptr %419, align 4
  br label %422

422:                                              ; preds = %417, %412, %203
  %423 = phi i1 [ false, %417 ], [ true, %412 ], [ true, %203 ]
  %424 = phi i32 [ %415, %417 ], [ %415, %412 ], [ 0, %203 ]
  %425 = phi i64 [ %414, %417 ], [ %414, %412 ], [ %192, %203 ]
  %426 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %2, i32 0, i32 1
  %427 = load ptr, ptr %426, align 8
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %436

429:                                              ; preds = %422
  %430 = load volatile ptr, ptr %4, align 8
  %431 = icmp ne ptr %430, %4
  %432 = load i1, ptr @iomap_writepage_map.__already_done.12, align 1
  %433 = xor i1 %432, true
  %434 = select i1 %431, i1 %433, i1 false
  br i1 %434, label %435, label %436, !prof !13

435:                                              ; preds = %429
  store i1 true, ptr @iomap_writepage_map.__already_done.12, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1383, i32 noundef 9, ptr noundef null) #14
  br label %436

436:                                              ; preds = %435, %429, %422
  %437 = load volatile i32, ptr %15, align 4
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  %440 = load i1, ptr @iomap_writepage_map.__already_done.13, align 1
  %441 = select i1 %439, i1 true, i1 %440
  br i1 %441, label %443, label %442, !prof !8

442:                                              ; preds = %436
  store i1 true, ptr @iomap_writepage_map.__already_done.13, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1384, i32 noundef 9, ptr noundef null) #14
  br label %443

443:                                              ; preds = %442, %436
  %444 = load volatile i32, ptr %15, align 4
  %445 = and i32 %444, 32768
  %446 = icmp ne i32 %445, 0
  %447 = load i1, ptr @iomap_writepage_map.__already_done.14, align 1
  %448 = xor i1 %447, true
  %449 = select i1 %446, i1 %448, i1 false
  br i1 %449, label %450, label %451, !prof !13

450:                                              ; preds = %443
  store i1 true, ptr @iomap_writepage_map.__already_done.14, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 9, ptr noundef null) #14
  br label %451

451:                                              ; preds = %450, %443
  %452 = load volatile i32, ptr %15, align 4
  %453 = and i32 %452, 8
  %454 = icmp ne i32 %453, 0
  %455 = load i1, ptr @iomap_writepage_map.__already_done.15, align 1
  %456 = xor i1 %455, true
  %457 = select i1 %454, i1 %456, i1 false
  br i1 %457, label %458, label %459, !prof !13

458:                                              ; preds = %451
  store i1 true, ptr @iomap_writepage_map.__already_done.15, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1386, i32 noundef 9, ptr noundef null) #14
  br label %459

459:                                              ; preds = %458, %451
  %460 = icmp eq i32 %424, 0
  br i1 %460, label %470, label %461, !prof !8

461:                                              ; preds = %459
  %462 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %2, i32 0, i32 2
  %463 = load ptr, ptr %462, align 4
  %464 = getelementptr inbounds %struct.iomap_writeback_ops, ptr %463, i32 0, i32 2
  %465 = load ptr, ptr %464, align 4
  %466 = icmp eq ptr %465, null
  br i1 %466, label %468, label %467

467:                                              ; preds = %461
  call void %465(ptr noundef %15, i64 noundef %425) #14
  br label %468

468:                                              ; preds = %467, %461
  br i1 %423, label %469, label %470

469:                                              ; preds = %468
  call void @_clear_bit(i32 noundef 2, ptr noundef %15) #14
  call void @folio_unlock(ptr noundef %15) #14
  br label %514

470:                                              ; preds = %468, %459
  %471 = call zeroext i1 @__folio_start_writeback(ptr noundef %15, i1 noundef zeroext false) #14
  call void @folio_unlock(ptr noundef %15) #14
  %472 = load ptr, ptr %4, align 8
  %473 = icmp eq ptr %472, %4
  br i1 %473, label %509, label %474

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %2, i32 0, i32 2
  br label %476

476:                                              ; preds = %504, %474
  %477 = phi ptr [ %472, %474 ], [ %479, %504 ]
  %478 = phi i32 [ %424, %474 ], [ %507, %504 ]
  %479 = load ptr, ptr %477, align 8
  %480 = getelementptr inbounds %struct.list_head, ptr %477, i32 0, i32 1
  %481 = load ptr, ptr %480, align 4
  %482 = getelementptr inbounds %struct.list_head, ptr %479, i32 0, i32 1
  store ptr %481, ptr %482, align 4
  store volatile ptr %479, ptr %481, align 4
  store volatile ptr %477, ptr %477, align 4
  store ptr %477, ptr %480, align 4
  %483 = getelementptr inbounds %struct.iomap_ioend, ptr %477, i32 0, i32 8
  %484 = load ptr, ptr %483, align 8
  %485 = getelementptr inbounds %struct.bio, ptr %484, i32 0, i32 11
  store ptr %477, ptr %485, align 4
  %486 = load ptr, ptr %483, align 8
  %487 = getelementptr inbounds %struct.bio, ptr %486, i32 0, i32 10
  store ptr @iomap_writepage_end_bio, ptr %487, align 4
  %488 = load ptr, ptr %475, align 4
  %489 = getelementptr inbounds %struct.iomap_writeback_ops, ptr %488, i32 0, i32 1
  %490 = load ptr, ptr %489, align 4
  %491 = icmp eq ptr %490, null
  br i1 %491, label %494, label %492

492:                                              ; preds = %476
  %493 = call i32 %490(ptr noundef %477, i32 noundef %478) #14
  br label %494

494:                                              ; preds = %492, %476
  %495 = phi i32 [ %493, %492 ], [ %478, %476 ]
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %502, label %497

497:                                              ; preds = %494
  %498 = call zeroext i8 @errno_to_blk_status(i32 noundef %495) #14
  %499 = load ptr, ptr %483, align 8
  %500 = getelementptr inbounds %struct.bio, ptr %499, i32 0, i32 6
  store i8 %498, ptr %500, align 2
  %501 = load ptr, ptr %483, align 8
  call void @bio_endio(ptr noundef %501) #14
  br label %504

502:                                              ; preds = %494
  %503 = load ptr, ptr %483, align 8
  call void @submit_bio(ptr noundef %503) #14
  br label %504

504:                                              ; preds = %502, %497
  %505 = icmp ne i32 %478, 0
  %506 = select i1 %496, i1 true, i1 %505
  %507 = select i1 %506, i32 %478, i32 %495
  %508 = icmp eq ptr %479, %4
  br i1 %508, label %509, label %476

509:                                              ; preds = %504, %470
  %510 = phi i32 [ %424, %470 ], [ %507, %504 ]
  br i1 %423, label %511, label %512

511:                                              ; preds = %509
  call void @folio_end_writeback(ptr noundef %15) #14
  br label %512

512:                                              ; preds = %511, %509
  %513 = icmp eq i32 %510, 0
  br i1 %513, label %528, label %514, !prof !8

514:                                              ; preds = %512, %469
  %515 = phi i32 [ %424, %469 ], [ %510, %512 ]
  %516 = load ptr, ptr %16, align 4
  call void @__filemap_set_wb_err(ptr noundef %516, i32 noundef %515) #14
  %517 = load ptr, ptr %516, align 4
  %518 = icmp eq ptr %517, null
  br i1 %518, label %524, label %519

519:                                              ; preds = %514
  %520 = getelementptr inbounds %struct.inode, ptr %517, i32 0, i32 8
  %521 = load ptr, ptr %520, align 4
  %522 = getelementptr inbounds %struct.super_block, ptr %521, i32 0, i32 44
  %523 = call i32 @errseq_set(ptr noundef %522, i32 noundef %515) #14
  br label %524

524:                                              ; preds = %519, %514
  %525 = icmp eq i32 %515, -28
  %526 = getelementptr inbounds %struct.address_space, ptr %516, i32 0, i32 10
  %527 = zext i1 %525 to i32
  call void @_set_bit(i32 noundef %527, ptr noundef %526) #14
  br label %528

528:                                              ; preds = %524, %512
  %529 = phi i32 [ 0, %512 ], [ %515, %524 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %532

530:                                              ; preds = %112, %104, %59
  %531 = tail call zeroext i1 @folio_redirty_for_writepage(ptr noundef %1, ptr noundef %15) #14
  tail call void @folio_unlock(ptr noundef %15) #14
  br label %532

532:                                              ; preds = %530, %528
  %533 = phi i32 [ 0, %530 ], [ %529, %528 ]
  ret i32 %533
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_writepages(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %2, i32 0, i32 2
  store ptr %3, ptr %5, align 4
  %6 = tail call i32 @write_cache_pages(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @iomap_do_writepage, ptr noundef %2) #14
  %7 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.iomap_ioend, ptr %8, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.bio, ptr %12, i32 0, i32 11
  store ptr %8, ptr %13, align 4
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 10
  store ptr @iomap_writepage_end_bio, ptr %15, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.iomap_writeback_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = tail call i32 %18(ptr noundef nonnull %8, i32 noundef %6) #14
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ %21, %20 ], [ %6, %10 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %23) #14
  %27 = load ptr, ptr %11, align 8
  %28 = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 6
  store i8 %26, ptr %28, align 2
  %29 = load ptr, ptr %11, align 8
  tail call void @bio_endio(ptr noundef %29) #14
  br label %32

30:                                               ; preds = %22
  %31 = load ptr, ptr %11, align 8
  tail call void @submit_bio(ptr noundef %31) #14
  br label %32

32:                                               ; preds = %30, %25, %4
  %33 = phi i32 [ %6, %4 ], [ %23, %25 ], [ 0, %30 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_cache_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iomap_init() #7 section ".init.text" {
  %1 = tail call i32 @bioset_init(ptr noundef nonnull @iomap_ioend_bioset, i32 noundef 32, i32 noundef 44, i32 noundef 1) #14
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_readpage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iomap_read_inline_data(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 3
  %4 = load i16, ptr %3, align 8
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 22
  %9 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  br label %10

10:                                               ; preds = %18, %2
  %11 = load volatile i32, ptr %8, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !18
  %15 = load volatile i32, ptr %8, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %11, %10 ], [ %15, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %20 = load i64, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %21 = load volatile i32, ptr %8, align 4
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %23, label %10

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6
  %25 = select i1 %5, ptr %6, ptr %24
  %26 = getelementptr inbounds %struct.iomap, ptr %25, i32 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = sub i64 %20, %27
  %29 = trunc i64 %28 to i32
  %30 = trunc i64 %27 to i32
  %31 = load volatile i32, ptr %1, align 4
  %32 = and i32 %31, 65536
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %36 = getelementptr inbounds %struct.anon.62, ptr %35, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %34, %23
  %40 = phi i32 [ %38, %34 ], [ 0, %23 ]
  %41 = shl i32 4096, %40
  %42 = add i32 %41, -1
  %43 = and i32 %42, %30
  %44 = load volatile i32, ptr %1, align 4
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  br label %143

48:                                               ; preds = %39
  %49 = and i32 %30, 4095
  %50 = sub nuw nsw i32 4096, %49
  %51 = icmp ult i32 %50, %29
  %52 = load i1, ptr @iomap_read_inline_data.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !13

55:                                               ; preds = %48
  store i1 true, ptr @iomap_read_inline_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #14
  br label %56

56:                                               ; preds = %55, %48
  br i1 %51, label %143, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.iomap, ptr %25, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = and i32 %60, 4095
  %62 = sub nuw nsw i32 4096, %61
  %63 = icmp ult i32 %62, %29
  %64 = load i1, ptr @iomap_read_inline_data.__already_done.4, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !13

67:                                               ; preds = %57
  store i1 true, ptr @iomap_read_inline_data.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #14
  br label %68

68:                                               ; preds = %67, %57
  br i1 %63, label %143, label %69

69:                                               ; preds = %68
  %70 = and i64 %28, 4294967295
  %71 = getelementptr inbounds %struct.iomap, ptr %25, i32 0, i32 2
  %72 = load i64, ptr %71, align 8
  %73 = icmp ugt i64 %70, %72
  %74 = load i1, ptr @iomap_read_inline_data.__already_done.5, align 1
  %75 = xor i1 %74, true
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %78, !prof !13

77:                                               ; preds = %69
  store i1 true, ptr @iomap_read_inline_data.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef null) #14
  br label %78

78:                                               ; preds = %77, %69
  br i1 %73, label %143, label %79

79:                                               ; preds = %78
  %80 = icmp eq i32 %43, 0
  br i1 %80, label %125, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %0, align 8
  %83 = load volatile i32, ptr %1, align 4
  %84 = and i32 %83, 8192
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.anon.74, ptr %1, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi ptr [ %88, %86 ], [ null, %81 ]
  %91 = load volatile i32, ptr %1, align 4
  %92 = and i32 %91, 65536
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %96 = getelementptr inbounds %struct.anon.62, ptr %95, i32 0, i32 2
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  br label %99

99:                                               ; preds = %94, %89
  %100 = phi i32 [ %98, %94 ], [ 0, %89 ]
  %101 = shl i32 4096, %100
  %102 = getelementptr inbounds %struct.inode, ptr %82, i32 0, i32 19
  %103 = load i8, ptr %102, align 2
  %104 = zext i8 %103 to i32
  %105 = lshr i32 %101, %104
  %106 = icmp ne ptr %90, null
  %107 = icmp ult i32 %105, 2
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %132, label %109

109:                                              ; preds = %99
  %110 = add i32 %105, 31
  %111 = lshr i32 %110, 3
  %112 = and i32 %111, 536870908
  %113 = add nuw nsw i32 %112, 12
  %114 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %113, i32 noundef 36160) #15
  %115 = getelementptr inbounds %struct.iomap_page, ptr %114, i32 0, i32 2
  store i32 0, ptr %115, align 8
  %116 = load volatile i32, ptr %1, align 4
  %117 = and i32 %116, 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %120 = getelementptr inbounds %struct.iomap_page, ptr %114, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr align 4 %120, i8 -1, i32 %112, i1 false) #14
  br label %121

121:                                              ; preds = %119, %109
  %122 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #14, !srcloc !15
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #14, !srcloc !16
  %124 = getelementptr inbounds %struct.anon.74, ptr %1, i32 0, i32 4
  store ptr %114, ptr %124, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %1) #14
  br label %132

125:                                              ; preds = %79
  %126 = load volatile i32, ptr %1, align 4
  %127 = and i32 %126, 8192
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.anon.74, ptr %1, i32 0, i32 4
  %131 = load ptr, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %125, %121, %99
  %133 = phi ptr [ %114, %121 ], [ %90, %99 ], [ %131, %129 ], [ null, %125 ]
  %134 = lshr i32 %43, 12
  %135 = getelementptr %struct.page, ptr %1, i32 %134
  %136 = load i32, ptr @pgprot_kernel, align 4
  %137 = or i32 %136, 512
  %138 = tail call ptr @__kmap_local_page_prot(ptr noundef %135, i32 noundef %137) #14
  %139 = getelementptr i8, ptr %138, i32 %49
  %140 = load ptr, ptr %58, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %139, ptr align 1 %140, i32 %29, i1 false)
  %141 = getelementptr i8, ptr %139, i32 %29
  %142 = sub i32 %50, %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %141, i8 0, i32 %142, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %139) #14
  tail call fastcc void @iomap_set_range_uptodate(ptr noundef %1, ptr noundef %133, i32 noundef %43, i32 noundef %50)
  br label %143

143:                                              ; preds = %132, %78, %68, %56, %47
  %144 = phi i32 [ 0, %132 ], [ -5, %56 ], [ -5, %68 ], [ -5, %78 ], [ 0, %47 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iomap_adjust_read_range(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = load volatile i32, ptr %1, align 4
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.anon.74, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ null, %6 ]
  %15 = load i64, ptr %2, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %18

18:                                               ; preds = %26, %13
  %19 = load volatile i32, ptr %16, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %22, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !18
  %23 = load volatile i32, ptr %16, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %19, %18 ], [ %23, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %28 = load i64, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %29 = load volatile i32, ptr %16, align 4
  %30 = icmp eq i32 %29, %27
  br i1 %30, label %31, label %18

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 1, %34
  %36 = load i64, ptr %2, align 8
  %37 = trunc i64 %36 to i32
  %38 = load volatile i32, ptr %1, align 4
  %39 = and i32 %38, 65536
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %31
  %42 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %43 = getelementptr inbounds %struct.anon.62, ptr %42, i32 0, i32 2
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  br label %46

46:                                               ; preds = %41, %31
  %47 = phi i32 [ %45, %41 ], [ 0, %31 ]
  %48 = shl i32 4096, %47
  %49 = add i32 %48, -1
  %50 = and i32 %49, %37
  %51 = load volatile i32, ptr %1, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %56 = getelementptr inbounds %struct.anon.62, ptr %55, i32 0, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %54, %46
  %60 = phi i32 [ %58, %54 ], [ 0, %46 ]
  %61 = shl i32 4096, %60
  %62 = sub i32 %61, %50
  %63 = zext i32 %62 to i64
  %64 = tail call i64 @llvm.smin.i64(i64 %63, i64 %3)
  %65 = trunc i64 %64 to i32
  %66 = lshr i32 %50, %34
  %67 = add i32 %50, -1
  %68 = add i32 %67, %65
  %69 = lshr i32 %68, %34
  %70 = icmp eq ptr %14, null
  br i1 %70, label %117, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.iomap_page, ptr %14, i32 0, i32 3
  %73 = icmp ugt i32 %66, %69
  br i1 %73, label %94, label %74

74:                                               ; preds = %71
  %75 = zext i32 %35 to i64
  br label %76

76:                                               ; preds = %88, %74
  %77 = phi i64 [ %36, %74 ], [ %89, %88 ]
  %78 = phi i32 [ %66, %74 ], [ %92, %88 ]
  %79 = phi i32 [ %65, %74 ], [ %91, %88 ]
  %80 = phi i32 [ %50, %74 ], [ %90, %88 ]
  %81 = lshr i32 %78, 5
  %82 = getelementptr i32, ptr %72, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %78, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %83, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %76
  %89 = add i64 %77, %75
  store i64 %89, ptr %2, align 8
  %90 = add i32 %80, %35
  %91 = sub i32 %79, %35
  %92 = add i32 %78, 1
  %93 = icmp ugt i32 %92, %69
  br i1 %93, label %94, label %76

94:                                               ; preds = %88, %76, %71
  %95 = phi i32 [ %50, %71 ], [ %80, %76 ], [ %90, %88 ]
  %96 = phi i32 [ %65, %71 ], [ %79, %76 ], [ %91, %88 ]
  %97 = phi i32 [ %66, %71 ], [ %78, %76 ], [ %92, %88 ]
  %98 = icmp ult i32 %69, %97
  br i1 %98, label %117, label %99

99:                                               ; preds = %114, %94
  %100 = phi i32 [ %115, %114 ], [ %97, %94 ]
  %101 = lshr i32 %100, 5
  %102 = getelementptr i32, ptr %72, i32 %101
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %100, 31
  %105 = shl nuw i32 1, %104
  %106 = and i32 %103, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %99
  %109 = xor i32 %69, -1
  %110 = add i32 %100, %109
  %111 = shl i32 %110, %34
  %112 = add i32 %111, %96
  %113 = add i32 %100, -1
  br label %117

114:                                              ; preds = %99
  %115 = add i32 %100, 1
  %116 = icmp ult i32 %69, %115
  br i1 %116, label %117, label %99

117:                                              ; preds = %114, %108, %94, %59
  %118 = phi i32 [ %50, %59 ], [ %95, %108 ], [ %95, %94 ], [ %95, %114 ]
  %119 = phi i32 [ %65, %59 ], [ %112, %108 ], [ %96, %94 ], [ %96, %114 ]
  %120 = phi i32 [ %66, %59 ], [ %97, %108 ], [ %97, %94 ], [ %97, %114 ]
  %121 = phi i32 [ %69, %59 ], [ %113, %108 ], [ %69, %94 ], [ %69, %114 ]
  %122 = icmp sle i64 %15, %28
  %123 = add i64 %15, %3
  %124 = icmp sgt i64 %123, %28
  %125 = and i1 %122, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %117
  %127 = trunc i64 %28 to i32
  %128 = add i32 %127, -1
  %129 = load volatile i32, ptr %1, align 4
  %130 = and i32 %129, 65536
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %126
  %133 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %134 = getelementptr inbounds %struct.anon.62, ptr %133, i32 0, i32 2
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  br label %137

137:                                              ; preds = %132, %126
  %138 = phi i32 [ %136, %132 ], [ 0, %126 ]
  %139 = shl i32 4096, %138
  %140 = add i32 %139, -1
  %141 = and i32 %140, %128
  %142 = lshr i32 %141, %34
  %143 = icmp ule i32 %120, %142
  %144 = icmp ult i32 %142, %121
  %145 = select i1 %143, i1 %144, i1 false
  %146 = sub i32 %142, %121
  %147 = shl i32 %146, %34
  %148 = select i1 %145, i32 %147, i32 0
  %149 = add i32 %148, %119
  br label %150

150:                                              ; preds = %137, %117
  %151 = phi i32 [ %149, %137 ], [ %119, %117 ]
  store i32 %118, ptr %4, align 4
  store i32 %151, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iomap_set_range_uptodate(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.anon.74, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 19
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %2, %16
  %18 = add i32 %2, -1
  %19 = add i32 %18, %3
  %20 = lshr i32 %19, %16
  %21 = getelementptr inbounds %struct.iomap_page, ptr %1, i32 0, i32 2
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #14
  %23 = getelementptr inbounds %struct.iomap_page, ptr %1, i32 0, i32 3
  %24 = sub i32 %20, %17
  %25 = add i32 %24, 1
  tail call void @__bitmap_set(ptr noundef %23, i32 noundef %17, i32 noundef %25) #14
  %26 = load volatile i32, ptr %0, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %10
  %30 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %31 = getelementptr inbounds %struct.anon.62, ptr %30, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %29, %10
  %35 = phi i32 [ %33, %29 ], [ 0, %10 ]
  %36 = shl i32 4096, %35
  %37 = load i8, ptr %14, align 2
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %36, %38
  %40 = tail call i32 @_find_first_zero_bit_le(ptr noundef %23, i32 noundef %39) #14
  %41 = icmp eq i32 %40, %39
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !36
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #14
  br label %43

43:                                               ; preds = %42, %34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #14
  br label %45

44:                                               ; preds = %8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !36
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #14
  br label %45

45:                                               ; preds = %44, %43, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bio_add_folio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iomap_read_end_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 2
  %4 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %3) #14
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 2
  %8 = icmp ne i16 %7, 0
  %9 = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !13

12:                                               ; preds = %1
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 248, i32 noundef 9, ptr noundef null) #14
  br label %13

13:                                               ; preds = %12, %1
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !8

21:                                               ; preds = %13
  %22 = add i32 %18, -1
  %23 = ptrtoint ptr %16 to i32
  br label %26

24:                                               ; preds = %13
  %25 = ptrtoint ptr %16 to i32
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %25, %24 ], [ %23, %21 ]
  %28 = phi i32 [ %25, %24 ], [ %22, %21 ]
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr %struct.bio_vec, ptr %15, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %27, %28
  %33 = shl i32 %32, 7
  %34 = add i32 %33, %31
  %35 = getelementptr %struct.bio_vec, ptr %15, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = load volatile i32, ptr %29, align 4
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %26
  %41 = getelementptr %struct.page, ptr %29, i32 1, i32 1
  %42 = getelementptr inbounds %struct.anon.62, ptr %41, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %40, %26
  %46 = phi i32 [ %44, %40 ], [ 0, %26 ]
  %47 = icmp eq i32 %28, 0
  br i1 %47, label %159, label %48

48:                                               ; preds = %45
  %49 = shl i32 4096, %46
  %50 = sub i32 %49, %34
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %36) #14
  %52 = icmp eq i32 %4, 0
  %53 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  br label %54

54:                                               ; preds = %152, %48
  %55 = phi i32 [ 0, %48 ], [ %157, %152 ]
  %56 = phi i32 [ %36, %48 ], [ %156, %152 ]
  %57 = phi i32 [ %51, %48 ], [ %155, %152 ]
  %58 = phi i32 [ %34, %48 ], [ %154, %152 ]
  %59 = phi ptr [ %29, %48 ], [ %153, %152 ]
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 8192
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.anon.74, ptr %59, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %54
  %67 = phi ptr [ %65, %63 ], [ null, %54 ]
  br i1 %52, label %69, label %68, !prof !8

68:                                               ; preds = %66
  tail call void @_clear_bit(i32 noundef 2, ptr noundef nonnull %59) #14
  tail call void @_set_bit(i32 noundef 8, ptr noundef nonnull %59) #14
  br label %70

69:                                               ; preds = %66
  tail call fastcc void @iomap_set_range_uptodate(ptr noundef nonnull %59, ptr noundef %67, i32 noundef %58, i32 noundef %57) #14
  br label %70

70:                                               ; preds = %69, %68
  %71 = icmp eq ptr %67, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %67) #14, !srcloc !15
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %67, ptr nonnull %67, i32 %57, ptr nonnull elementtype(i32) %67) #14, !srcloc !25
  %74 = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %70
  tail call void @folio_unlock(ptr noundef nonnull %59) #14
  br label %77

77:                                               ; preds = %76, %72
  %78 = sub i32 %56, %57
  %79 = icmp eq i32 %56, %57
  br i1 %79, label %102, label %80

80:                                               ; preds = %77
  %81 = load volatile i32, ptr %59, align 4
  %82 = and i32 %81, 65536
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = getelementptr %struct.page, ptr %59, i32 1, i32 1, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i32 [ %86, %84 ], [ 1, %80 ]
  %89 = getelementptr %struct.page, ptr %59, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 65536
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %87
  %94 = getelementptr %struct.page, ptr %89, i32 1, i32 1
  %95 = getelementptr inbounds %struct.anon.62, ptr %94, i32 0, i32 2
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  br label %98

98:                                               ; preds = %93, %87
  %99 = phi i32 [ %97, %93 ], [ 0, %87 ]
  %100 = shl i32 4096, %99
  %101 = tail call i32 @llvm.umin.i32(i32 %100, i32 %78) #14
  br label %152

102:                                              ; preds = %77
  %103 = add i32 %55, 1
  %104 = load i16, ptr %53, align 4
  %105 = zext i16 %104 to i32
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %159

107:                                              ; preds = %102
  %108 = load i16, ptr %5, align 4
  %109 = and i16 %108, 2
  %110 = icmp ne i16 %109, 0
  %111 = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  %112 = xor i1 %111, true
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %114, label %115, !prof !13

114:                                              ; preds = %107
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 248, i32 noundef 9, ptr noundef null) #14
  br label %115

115:                                              ; preds = %114, %107
  %116 = load ptr, ptr %14, align 4
  %117 = getelementptr %struct.bio_vec, ptr %116, i32 %103
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.page, ptr %118, i32 0, i32 1
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123, !prof !8

123:                                              ; preds = %115
  %124 = add i32 %120, -1
  %125 = ptrtoint ptr %118 to i32
  br label %128

126:                                              ; preds = %115
  %127 = ptrtoint ptr %118 to i32
  br label %128

128:                                              ; preds = %126, %123
  %129 = phi i32 [ %127, %126 ], [ %125, %123 ]
  %130 = phi i32 [ %127, %126 ], [ %124, %123 ]
  %131 = inttoptr i32 %130 to ptr
  %132 = getelementptr %struct.bio_vec, ptr %116, i32 %103, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = sub i32 %129, %130
  %135 = shl i32 %134, 7
  %136 = add i32 %135, %133
  %137 = getelementptr %struct.bio_vec, ptr %116, i32 %103, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = load volatile i32, ptr %131, align 4
  %140 = and i32 %139, 65536
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %128
  %143 = getelementptr %struct.page, ptr %131, i32 1, i32 1
  %144 = getelementptr inbounds %struct.anon.62, ptr %143, i32 0, i32 2
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  br label %147

147:                                              ; preds = %142, %128
  %148 = phi i32 [ %146, %142 ], [ 0, %128 ]
  %149 = shl i32 4096, %148
  %150 = sub i32 %149, %136
  %151 = tail call i32 @llvm.umin.i32(i32 %150, i32 %138) #14
  br label %152

152:                                              ; preds = %147, %98
  %153 = phi ptr [ %131, %147 ], [ %89, %98 ]
  %154 = phi i32 [ %136, %147 ], [ 0, %98 ]
  %155 = phi i32 [ %151, %147 ], [ %101, %98 ]
  %156 = phi i32 [ %138, %147 ], [ %78, %98 ]
  %157 = phi i32 [ %103, %147 ], [ %55, %98 ]
  %158 = icmp eq ptr %153, null
  br i1 %158, label %159, label %54

159:                                              ; preds = %152, %102, %45
  tail call void @bio_put(ptr noundef %0) #14
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_readahead(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @folio_put(ptr noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #14, !srcloc !15
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #14, !srcloc !25
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @__put_page(ptr noundef %0) #14
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_releasepage(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_invalidatepage(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_cancel_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_readable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iomap_write_begin(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.bio_vec, align 4
  %6 = alloca %struct.bio, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 3
  %13 = load i16, ptr %12, align 8
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = zext i32 %2 to i64
  %19 = add i64 %18, %1
  %20 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, %21
  %25 = icmp ugt i64 %19, %24
  br i1 %25, label %26, label %27, !prof !13

26:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/iomap/buffered-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #14, !srcloc !37
  unreachable

27:                                               ; preds = %4
  br i1 %14, label %36, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.iomap, ptr %17, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.iomap, ptr %17, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, %30
  %34 = icmp ugt i64 %19, %33
  br i1 %34, label %35, label %36, !prof !13

35:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/iomap/buffered-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 623, 0\0A.popsection", ""() #14, !srcloc !38
  unreachable

36:                                               ; preds = %28, %27
  %37 = tail call ptr @llvm.thread.pointer() #14
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 98, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %340

46:                                               ; preds = %41, %36
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 9
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.address_space, ptr %49, i32 0, i32 10
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 64
  %53 = icmp eq i32 %52, 0
  %54 = trunc i64 %1 to i32
  %55 = and i32 %54, 4095
  %56 = sub nuw nsw i32 4096, %55
  %57 = tail call i32 @llvm.umin.i32(i32 %56, i32 %2)
  %58 = select i1 %53, i32 %57, i32 %2
  %59 = icmp eq ptr %11, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %46
  %61 = load ptr, ptr %11, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = tail call i32 %61(ptr noundef %47, i64 noundef %1, i32 noundef %58) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %340

66:                                               ; preds = %63
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 9
  %69 = load ptr, ptr %68, align 8
  br label %70

70:                                               ; preds = %66, %60, %46
  %71 = phi ptr [ %69, %66 ], [ %49, %60 ], [ %49, %46 ]
  %72 = lshr i64 %1, 12
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds %struct.address_space, ptr %71, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = tail call ptr @__filemap_get_folio(ptr noundef %71, i32 noundef %73, i32 noundef 542, i32 noundef %75) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %332, label %78

78:                                               ; preds = %70
  %79 = zext i32 %58 to i64
  %80 = add i64 %79, %1
  %81 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 1, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = zext i32 %82 to i64
  %84 = shl nuw nsw i64 %83, 12
  %85 = load volatile i32, ptr %76, align 4
  %86 = and i32 %85, 65536
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = getelementptr %struct.page, ptr %76, i32 1, i32 1
  %90 = getelementptr inbounds %struct.anon.62, ptr %89, i32 0, i32 2
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  br label %93

93:                                               ; preds = %88, %78
  %94 = phi i32 [ %92, %88 ], [ 0, %78 ]
  %95 = shl i32 4096, %94
  %96 = zext i32 %95 to i64
  %97 = add nuw nsw i64 %84, %96
  %98 = icmp sgt i64 %80, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load volatile i32, ptr %76, align 4
  %101 = and i32 %100, 65536
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = getelementptr %struct.page, ptr %76, i32 1, i32 1
  %105 = getelementptr inbounds %struct.anon.62, ptr %104, i32 0, i32 2
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %103, %99
  %109 = phi i32 [ %107, %103 ], [ 0, %99 ]
  %110 = shl i32 4096, %109
  %111 = sub i64 %84, %1
  %112 = trunc i64 %111 to i32
  %113 = add i32 %110, %112
  br label %114

114:                                              ; preds = %108, %93
  %115 = phi i32 [ %113, %108 ], [ %58, %93 ]
  %116 = getelementptr inbounds %struct.iomap, ptr %17, i32 0, i32 3
  %117 = load i16, ptr %116, align 8
  %118 = icmp eq i16 %117, 4
  br i1 %118, label %119, label %133

119:                                              ; preds = %114
  %120 = load i16, ptr %12, align 8
  %121 = icmp eq i16 %120, 0
  %122 = select i1 %121, ptr %16, ptr %15
  %123 = getelementptr inbounds %struct.iomap, ptr %122, i32 0, i32 1
  %124 = load i64, ptr %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = load i1, ptr @iomap_write_begin_inline.__already_done, align 1
  %127 = xor i1 %126, true
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %130, !prof !13

129:                                              ; preds = %119
  store i1 true, ptr @iomap_write_begin_inline.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 607, i32 noundef 9, ptr noundef null) #14
  br label %130

130:                                              ; preds = %129, %119
  br i1 %125, label %329, label %131

131:                                              ; preds = %130
  %132 = tail call fastcc i32 @iomap_read_inline_data(ptr noundef %0, ptr noundef nonnull %76) #14
  br label %325

133:                                              ; preds = %114
  %134 = getelementptr inbounds %struct.iomap, ptr %17, i32 0, i32 4
  %135 = load i16, ptr %134, align 2
  %136 = and i16 %135, 16
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = tail call i32 @__block_write_begin_int(ptr noundef nonnull %76, i64 noundef %1, i32 noundef %115, ptr noundef null, ptr noundef %17) #14
  br label %325

140:                                              ; preds = %133
  %141 = load i16, ptr %12, align 8
  %142 = icmp eq i16 %141, 0
  %143 = select i1 %142, ptr %16, ptr %15
  %144 = load ptr, ptr %0, align 8
  %145 = load volatile i32, ptr %76, align 4
  %146 = and i32 %145, 8192
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.anon.74, ptr %76, i32 0, i32 4
  %150 = load ptr, ptr %149, align 4
  br label %151

151:                                              ; preds = %148, %140
  %152 = phi ptr [ %150, %148 ], [ null, %140 ]
  %153 = load volatile i32, ptr %76, align 4
  %154 = and i32 %153, 65536
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = getelementptr %struct.page, ptr %76, i32 1, i32 1
  %158 = getelementptr inbounds %struct.anon.62, ptr %157, i32 0, i32 2
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  br label %161

161:                                              ; preds = %156, %151
  %162 = phi i32 [ %160, %156 ], [ 0, %151 ]
  %163 = shl i32 4096, %162
  %164 = getelementptr inbounds %struct.inode, ptr %144, i32 0, i32 19
  %165 = load i8, ptr %164, align 2
  %166 = zext i8 %165 to i32
  %167 = lshr i32 %163, %166
  %168 = icmp ne ptr %152, null
  %169 = icmp ult i32 %167, 2
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %191, label %171

171:                                              ; preds = %161
  %172 = add i32 %167, 31
  %173 = lshr i32 %172, 3
  %174 = and i32 %173, 536870908
  %175 = add nuw nsw i32 %174, 12
  %176 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %175, i32 noundef 36160) #15
  %177 = getelementptr inbounds %struct.iomap_page, ptr %176, i32 0, i32 2
  store i32 0, ptr %177, align 8
  %178 = load volatile i32, ptr %76, align 4
  %179 = and i32 %178, 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %171
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %182 = getelementptr inbounds %struct.iomap_page, ptr %176, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr align 4 %182, i8 -1, i32 %174, i1 false) #14
  br label %183

183:                                              ; preds = %181, %171
  %184 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %184) #14, !srcloc !15
  %185 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %184, ptr %184, i32 1, ptr elementtype(i32) %184) #14, !srcloc !16
  %186 = getelementptr inbounds %struct.anon.74, ptr %76, i32 0, i32 4
  store ptr %176, ptr %186, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef nonnull %76) #14
  %187 = load ptr, ptr %0, align 8
  %188 = getelementptr inbounds %struct.inode, ptr %187, i32 0, i32 19
  %189 = load i8, ptr %188, align 2
  %190 = zext i8 %189 to i32
  br label %191

191:                                              ; preds = %183, %161
  %192 = phi i32 [ %166, %161 ], [ %190, %183 ]
  %193 = phi ptr [ %152, %161 ], [ %176, %183 ]
  %194 = shl nuw i32 1, %192
  %195 = zext i32 %194 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %196 = add nsw i64 %195, -1
  %197 = sub nsw i64 0, %195
  %198 = and i64 %197, %1
  store i64 %198, ptr %7, align 8
  %199 = zext i32 %115 to i64
  %200 = add i64 %1, -1
  %201 = add i64 %200, %199
  %202 = or i64 %196, %201
  %203 = add i64 %202, 1
  %204 = load volatile i32, ptr %76, align 4
  %205 = and i32 %204, 65536
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %191
  %208 = getelementptr %struct.page, ptr %76, i32 1, i32 1
  %209 = getelementptr inbounds %struct.anon.62, ptr %208, i32 0, i32 2
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  br label %212

212:                                              ; preds = %207, %191
  %213 = phi i32 [ %211, %207 ], [ 0, %191 ]
  %214 = shl i32 4096, %213
  %215 = add i32 %214, -1
  %216 = and i32 %215, %54
  %217 = add i32 %216, %115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !9
  %218 = load volatile i32, ptr %76, align 4
  %219 = and i32 %218, 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %212
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  br label %323

222:                                              ; preds = %212
  tail call void @_clear_bit(i32 noundef 8, ptr noundef nonnull %76) #14
  %223 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 4
  %224 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 2
  %225 = getelementptr inbounds %struct.iomap, ptr %143, i32 0, i32 1
  %226 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8
  %227 = getelementptr inbounds %struct.iomap, ptr %143, i32 0, i32 5
  %228 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 3
  %229 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 1
  br label %230

230:                                              ; preds = %318, %222
  %231 = phi i64 [ %321, %318 ], [ %198, %222 ]
  %232 = load ptr, ptr %0, align 8
  %233 = sub i64 %203, %231
  call fastcc void @iomap_adjust_read_range(ptr noundef %232, ptr noundef %76, ptr noundef nonnull %7, i64 noundef %233, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %234 = load i32, ptr %9, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %323, label %236

236:                                              ; preds = %230
  %237 = load i32, ptr %223, align 8
  %238 = and i32 %237, 128
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %236
  %241 = load i32, ptr %8, align 4
  %242 = icmp ugt i32 %216, %241
  %243 = add i32 %241, %234
  %244 = icmp ult i32 %216, %243
  %245 = select i1 %242, i1 %244, i1 false
  br i1 %245, label %252, label %246

246:                                              ; preds = %240
  %247 = icmp ugt i32 %217, %241
  %248 = icmp ult i32 %217, %243
  %249 = select i1 %247, i1 %248, i1 false
  br i1 %249, label %252, label %250

250:                                              ; preds = %246
  %251 = load i64, ptr %7, align 8
  br label %318

252:                                              ; preds = %246, %240, %236
  %253 = load i64, ptr %7, align 8
  %254 = load i16, ptr %12, align 8
  %255 = icmp eq i16 %254, 0
  %256 = select i1 %255, ptr %16, ptr %15
  %257 = getelementptr inbounds %struct.iomap, ptr %256, i32 0, i32 3
  %258 = load i16, ptr %257, align 8
  %259 = icmp eq i16 %258, 2
  br i1 %259, label %260, label %286

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.iomap, ptr %256, i32 0, i32 4
  %262 = load i16, ptr %261, align 2
  %263 = and i16 %262, 1
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %265, label %286

265:                                              ; preds = %260
  %266 = load ptr, ptr %0, align 8
  %267 = getelementptr inbounds %struct.inode, ptr %266, i32 0, i32 22
  %268 = getelementptr inbounds %struct.inode, ptr %266, i32 0, i32 13
  br label %269

269:                                              ; preds = %277, %265
  %270 = load volatile i32, ptr %267, align 4
  %271 = and i32 %270, 1
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %273, %269
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !18
  %274 = load volatile i32, ptr %267, align 4
  %275 = and i32 %274, 1
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %273

277:                                              ; preds = %273, %269
  %278 = phi i32 [ %270, %269 ], [ %274, %273 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %279 = load i64, ptr %268, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %280 = load volatile i32, ptr %267, align 4
  %281 = icmp eq i32 %280, %278
  br i1 %281, label %282, label %269

282:                                              ; preds = %277
  %283 = icmp sgt i64 %279, %253
  br i1 %283, label %298, label %284

284:                                              ; preds = %282
  %285 = load i32, ptr %223, align 8
  br label %286

286:                                              ; preds = %284, %260, %252
  %287 = phi i32 [ %285, %284 ], [ %237, %252 ], [ %237, %260 ]
  %288 = and i32 %287, 128
  %289 = icmp ne i32 %288, 0
  %290 = load i1, ptr @__iomap_write_begin.__already_done, align 1
  %291 = xor i1 %290, true
  %292 = select i1 %289, i1 %291, i1 false
  br i1 %292, label %293, label %294, !prof !13

293:                                              ; preds = %286
  store i1 true, ptr @__iomap_write_begin.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 9, ptr noundef null) #14
  br label %294

294:                                              ; preds = %293, %286
  br i1 %289, label %323, label %295

295:                                              ; preds = %294
  %296 = load i32, ptr %8, align 4
  %297 = add i32 %296, %234
  call void @zero_user_segments(ptr noundef %76, i32 noundef %296, i32 noundef %216, i32 noundef %217, i32 noundef %297) #14
  br label %316

298:                                              ; preds = %282
  %299 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #14, !annotation !9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #14, !annotation !9
  call void @bio_init(ptr noundef nonnull %6, ptr noundef nonnull %5, i16 noundef zeroext 1) #14
  store i32 0, ptr %224, align 4
  %300 = load i64, ptr %143, align 8
  %301 = add i64 %300, %253
  %302 = load i64, ptr %225, align 8
  %303 = sub i64 %301, %302
  %304 = lshr i64 %303, 9
  store i64 %304, ptr %226, align 4
  %305 = load ptr, ptr %227, align 4
  %306 = load i16, ptr %228, align 4
  %307 = and i16 %306, -2049
  store i16 %307, ptr %228, align 4
  %308 = load ptr, ptr %229, align 4
  %309 = icmp eq ptr %308, %305
  br i1 %309, label %312, label %310

310:                                              ; preds = %298
  %311 = and i16 %306, -2177
  store i16 %311, ptr %228, align 4
  br label %312

312:                                              ; preds = %310, %298
  store ptr %305, ptr %229, align 4
  %313 = call zeroext i1 @bio_add_folio(ptr noundef nonnull %6, ptr noundef %76, i32 noundef %234, i32 noundef %299) #14
  %314 = call i32 @submit_bio_wait(ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %312, %295
  %317 = phi i32 [ %299, %312 ], [ %296, %295 ]
  call fastcc void @iomap_set_range_uptodate(ptr noundef %76, ptr noundef %193, i32 noundef %317, i32 noundef %234) #14
  br label %318

318:                                              ; preds = %316, %250
  %319 = phi i64 [ %251, %250 ], [ %253, %316 ]
  %320 = zext i32 %234 to i64
  %321 = add i64 %319, %320
  store i64 %321, ptr %7, align 8
  %322 = icmp slt i64 %321, %203
  br i1 %322, label %230, label %323

323:                                              ; preds = %318, %312, %294, %230, %221
  %324 = phi i32 [ 0, %221 ], [ %314, %312 ], [ -5, %294 ], [ 0, %230 ], [ 0, %318 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %325

325:                                              ; preds = %323, %138, %131
  %326 = phi i32 [ %139, %138 ], [ %324, %323 ], [ %132, %131 ]
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %329, !prof !8

328:                                              ; preds = %325
  store ptr %76, ptr %3, align 4
  br label %340

329:                                              ; preds = %325, %130
  %330 = phi i32 [ %326, %325 ], [ -5, %130 ]
  call void @folio_unlock(ptr noundef nonnull %76) #14
  call fastcc void @folio_put(ptr noundef nonnull %76)
  %331 = load ptr, ptr %0, align 8
  call fastcc void @iomap_write_failed(ptr noundef %331, i64 noundef %1, i32 noundef %115)
  br label %332

332:                                              ; preds = %329, %70
  %333 = phi i32 [ %330, %329 ], [ -12, %70 ]
  br i1 %59, label %340, label %334

334:                                              ; preds = %332
  %335 = getelementptr inbounds %struct.iomap_page_ops, ptr %11, i32 0, i32 1
  %336 = load ptr, ptr %335, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %334
  %339 = load ptr, ptr %0, align 8
  call void %336(ptr noundef %339, i64 noundef %1, i32 noundef 0, ptr noundef null) #14
  br label %340

340:                                              ; preds = %338, %334, %332, %328, %63, %41
  %341 = phi i32 [ 0, %328 ], [ -4, %41 ], [ %64, %63 ], [ %333, %338 ], [ %333, %334 ], [ %333, %332 ]
  ret i32 %341
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter_atomic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iomap_write_end(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6, i32 3
  %9 = load i16, ptr %8, align 8
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 13
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.iomap, ptr %13, i32 0, i32 3
  %18 = load i16, ptr %17, align 8
  %19 = icmp eq i16 %18, 4
  br i1 %19, label %20, label %56

20:                                               ; preds = %5
  %21 = load volatile i32, ptr %4, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  br label %28

25:                                               ; preds = %20
  %26 = load i1, ptr @iomap_write_end_inline.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %25
  store i1 true, ptr @iomap_write_end_inline.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 700, i32 noundef 9, ptr noundef null) #14
  br label %28

28:                                               ; preds = %27, %25, %24
  %29 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = and i32 %33, 4095
  %35 = sub nuw nsw i32 4096, %34
  %36 = zext i32 %35 to i64
  %37 = icmp ugt i64 %30, %36
  br i1 %37, label %38, label %39, !prof !13

38:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/iomap/buffered-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 701, 0\0A.popsection", ""() #14, !srcloc !39
  unreachable

39:                                               ; preds = %28
  tail call void @flush_dcache_folio(ptr noundef %4) #14
  %40 = trunc i64 %1 to i32
  %41 = lshr i32 %40, 12
  %42 = getelementptr %struct.page, ptr %4, i32 %41
  %43 = load i32, ptr @pgprot_kernel, align 4
  %44 = or i32 %43, 512
  %45 = tail call ptr @__kmap_local_page_prot(ptr noundef %42, i32 noundef %44) #14
  %46 = and i32 %40, 4095
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = load ptr, ptr %31, align 4
  %49 = getelementptr i8, ptr %48, i32 %40
  %50 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = sub i32 0, %52
  %54 = getelementptr i8, ptr %49, i32 %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %54, ptr align 1 %47, i32 %3, i1 false) #14
  tail call void @kunmap_local_indexed(ptr noundef %47) #14
  %55 = load ptr, ptr %0, align 8
  tail call void @__mark_inode_dirty(ptr noundef %55, i32 noundef 7) #14
  br label %98

56:                                               ; preds = %5
  %57 = getelementptr inbounds %struct.iomap, ptr %13, i32 0, i32 4
  %58 = load i16, ptr %57, align 2
  %59 = and i16 %58, 16
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 9
  %63 = load ptr, ptr %62, align 8
  %64 = tail call i32 @block_write_end(ptr noundef null, ptr noundef %63, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null) #14
  br label %98

65:                                               ; preds = %56
  %66 = load volatile i32, ptr %4, align 4
  %67 = and i32 %66, 8192
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.anon.74, ptr %4, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi ptr [ %71, %69 ], [ null, %65 ]
  tail call void @flush_dcache_folio(ptr noundef %4) #14
  %74 = icmp ult i32 %3, %2
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load volatile i32, ptr %4, align 4
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  br label %80

80:                                               ; preds = %79, %72
  %81 = trunc i64 %1 to i32
  %82 = load volatile i32, ptr %4, align 4
  %83 = and i32 %82, 65536
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %87 = getelementptr inbounds %struct.anon.62, ptr %86, i32 0, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i32 [ %89, %85 ], [ 0, %80 ]
  %92 = shl i32 4096, %91
  %93 = add i32 %92, -1
  %94 = and i32 %93, %81
  tail call fastcc void @iomap_set_range_uptodate(ptr noundef %4, ptr noundef %73, i32 noundef %94, i32 noundef %2) #14
  %95 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 9
  %96 = load ptr, ptr %95, align 8
  %97 = tail call zeroext i1 @filemap_dirty_folio(ptr noundef %96, ptr noundef %4) #14
  br label %98

98:                                               ; preds = %90, %75, %61, %39
  %99 = phi i32 [ %3, %39 ], [ %64, %61 ], [ %3, %90 ], [ 0, %75 ]
  %100 = zext i32 %99 to i64
  %101 = add i64 %100, %1
  %102 = icmp sgt i64 %101, %16
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  %105 = getelementptr inbounds %struct.inode, ptr %104, i32 0, i32 22
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !41
  %108 = getelementptr inbounds %struct.inode, ptr %104, i32 0, i32 13
  store i64 %101, ptr %108, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !42
  %109 = load i32, ptr %105, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %105, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !43
  %111 = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, i32 4
  %112 = load i16, ptr %111, align 2
  %113 = or i16 %112, 256
  store i16 %113, ptr %111, align 2
  br label %114

114:                                              ; preds = %103, %98
  tail call void @folio_unlock(ptr noundef %4) #14
  %115 = icmp slt i64 %16, %1
  br i1 %115, label %116, label %118

116:                                              ; preds = %114
  %117 = load ptr, ptr %0, align 8
  tail call void @pagecache_isize_extended(ptr noundef %117, i64 noundef %16, i64 noundef %1) #14
  br label %118

118:                                              ; preds = %116, %114
  %119 = icmp eq ptr %7, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.iomap_page_ops, ptr %7, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %0, align 8
  tail call void %122(ptr noundef %125, i64 noundef %1, i32 noundef %99, ptr noundef %4) #14
  br label %126

126:                                              ; preds = %124, %120, %118
  %127 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #14, !srcloc !15
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1, ptr elementtype(i32) %127) #14, !srcloc !25
  %129 = extractvalue { i32, i32 } %128, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  tail call void @__put_page(ptr noundef %4) #14
  br label %132

132:                                              ; preds = %131, %126
  %133 = icmp ult i32 %99, %2
  br i1 %133, label %134, label %157

134:                                              ; preds = %132
  %135 = load ptr, ptr %0, align 8
  %136 = getelementptr inbounds %struct.inode, ptr %135, i32 0, i32 22
  %137 = getelementptr inbounds %struct.inode, ptr %135, i32 0, i32 13
  br label %138

138:                                              ; preds = %146, %134
  %139 = load volatile i32, ptr %136, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %142, %138
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !18
  %143 = load volatile i32, ptr %136, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %142

146:                                              ; preds = %142, %138
  %147 = phi i32 [ %139, %138 ], [ %143, %142 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %148 = load i64, ptr %137, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %149 = load volatile i32, ptr %136, align 4
  %150 = icmp eq i32 %149, %147
  br i1 %150, label %151, label %138

151:                                              ; preds = %146
  %152 = zext i32 %2 to i64
  %153 = add i64 %152, %1
  %154 = icmp sgt i64 %153, %148
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = tail call i64 @llvm.smax.i64(i64 %148, i64 %1) #14
  tail call void @truncate_pagecache_range(ptr noundef %135, i64 noundef %156, i64 noundef %153) #14
  br label %157

157:                                              ; preds = %155, %151, %132
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin_int(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iomap_write_failed(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %6

6:                                                ; preds = %14, %3
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %10, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !18
  %11 = load volatile i32, ptr %4, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %7, %6 ], [ %11, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %16 = load i64, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %17 = load volatile i32, ptr %4, align 4
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %19, label %6

19:                                               ; preds = %14
  %20 = zext i32 %2 to i64
  %21 = add i64 %20, %1
  %22 = icmp sgt i64 %21, %16
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i64 @llvm.smax.i64(i64 %16, i64 %1)
  tail call void @truncate_pagecache_range(ptr noundef %0, i64 noundef %24, i64 noundef %21) #14
  br label %25

25:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagecache_isize_extended(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_folio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_dirty_folio(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_mark_accessed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_commit_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_end_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_redirty_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_writepage(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_start_writeback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iomap_writepage_end_bio(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 2
  %6 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %5) #14
  %7 = tail call fastcc i32 @iomap_finish_ioend(ptr noundef %3, i32 noundef %6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2153792833}
!11 = !{i64 2153793003}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2149824750}
!15 = !{i64 584743, i64 2148074714, i64 2148074740, i64 2148074787, i64 2148074809, i64 2148074837, i64 2148074857}
!16 = !{i64 2148086129, i64 2148086155, i64 2148086184, i64 2148086218, i64 2148086249, i64 2148086272}
!17 = !{i64 2151551621}
!18 = !{i64 2151551463}
!19 = !{i64 2151551765}
!20 = !{i64 2149424844}
!21 = !{i64 2153813152}
!22 = !{i64 2153813324}
!23 = !{i64 2153098703, i64 2153099192, i64 2153098740, i64 2153098796, i64 2153098830, i64 2153098854, i64 2153098895, i64 2153098916, i64 2153098944, i64 2153098978}
!24 = !{i64 2148186808}
!25 = !{i64 2148089170, i64 2148089202, i64 2148089231, i64 2148089265, i64 2148089296, i64 2148089319}
!26 = !{i64 2148187011}
!27 = !{i64 2153846070}
!28 = !{i64 2153846246}
!29 = !{i64 2153862800}
!30 = !{i64 2153862982}
!31 = !{i64 2148094591, i64 2148094623, i64 2148094652, i64 2148094686, i64 2148094717, i64 2148094740}
!32 = !{i64 2148195931}
!33 = !{i64 2153829565}
!34 = !{i64 2153829737}
!35 = !{i64 2152940045}
!36 = !{i64 2149825771}
!37 = !{i64 2153991616, i64 2153992103, i64 2153991653, i64 2153991709, i64 2153991743, i64 2153991767, i64 2153991808, i64 2153991829, i64 2153991857, i64 2153991891}
!38 = !{i64 2153992703, i64 2153993190, i64 2153992740, i64 2153992796, i64 2153992830, i64 2153992854, i64 2153992895, i64 2153992916, i64 2153992944, i64 2153992978}
!39 = !{i64 2153997612, i64 2153998099, i64 2153997649, i64 2153997705, i64 2153997739, i64 2153997763, i64 2153997804, i64 2153997825, i64 2153997853, i64 2153997887}
!40 = !{i64 2151553403}
!41 = !{i64 2149425143}
!42 = !{i64 2149425444}
!43 = !{i64 2151565022}
