; ModuleID = '/llk/IR/lib/iov_iter.c_pt.bc'
source_filename = "../lib/iov_iter.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fault_in_iov_iter_readable:\09\09\09\09\09"
module asm "\09.asciz \09\22fault_in_iov_iter_readable\22\09\09\09\09\09"
module asm "__kstrtabns_fault_in_iov_iter_readable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fault_in_iov_iter_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22fault_in_iov_iter_writeable\22\09\09\09\09\09"
module asm "__kstrtabns_fault_in_iov_iter_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_init\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__copy_to_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22_copy_to_iter\22\09\09\09\09\09"
module asm "__kstrtabns__copy_to_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__copy_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22_copy_from_iter\22\09\09\09\09\09"
module asm "__kstrtabns__copy_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__copy_from_iter_nocache:\09\09\09\09\09"
module asm "\09.asciz \09\22_copy_from_iter_nocache\22\09\09\09\09\09"
module asm "__kstrtabns__copy_from_iter_nocache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_page_to_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_page_to_iter\22\09\09\09\09\09"
module asm "__kstrtabns_copy_page_to_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_page_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_page_from_iter\22\09\09\09\09\09"
module asm "__kstrtabns_copy_page_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_zero\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_page_from_iter_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_page_from_iter_atomic\22\09\09\09\09\09"
module asm "__kstrtabns_copy_page_from_iter_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_advance\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_revert:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_revert\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_revert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_single_seg_count:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_single_seg_count\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_single_seg_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_kvec:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_kvec\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_kvec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_bvec:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_bvec\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_bvec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_pipe\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_xarray:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_xarray\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_xarray:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_discard\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_alignment:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_alignment\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_alignment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_gap_alignment:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_gap_alignment\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_gap_alignment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_get_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_get_pages\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_get_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_get_pages_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_get_pages_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_get_pages_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csum_and_copy_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22csum_and_copy_from_iter\22\09\09\09\09\09"
module asm "__kstrtabns_csum_and_copy_from_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csum_and_copy_to_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22csum_and_copy_to_iter\22\09\09\09\09\09"
module asm "__kstrtabns_csum_and_copy_to_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hash_and_copy_to_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22hash_and_copy_to_iter\22\09\09\09\09\09"
module asm "__kstrtabns_hash_and_copy_to_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iov_iter_npages:\09\09\09\09\09"
module asm "\09.asciz \09\22iov_iter_npages\22\09\09\09\09\09"
module asm "__kstrtabns_iov_iter_npages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dup_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22dup_iter\22\09\09\09\09\09"
module asm "__kstrtabns_dup_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_import_iovec:\09\09\09\09\09"
module asm "\09.asciz \09\22import_iovec\22\09\09\09\09\09"
module asm "__kstrtabns_import_iovec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_import_single_range:\09\09\09\09\09"
module asm "\09.asciz \09\22import_single_range\22\09\09\09\09\09"
module asm "__kstrtabns_import_single_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon, %union.anon.60 }
%union.anon = type { ptr }
%union.anon.60 = type { i64 }
%struct.iovec = type { ptr, i32 }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.0, %union.anon.59, %struct.atomic_t }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.59 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kvec = type { ptr, i32 }
%struct.anon.53 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.68, [64 x ptr], %union.anon.69 }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { [3 x [2 x i32]] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.43, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9 }
%struct.llist_node = type { ptr }
%union.anon.9 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.43 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.61 = type { i32, i32 }
%struct.csum_state = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.compat_iovec = type { i32, i32 }
%struct.iov_iter_state = type { i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__kstrtab_fault_in_iov_iter_readable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fault_in_iov_iter_readable = external dso_local constant [0 x i8], align 1
@__ksymtab_fault_in_iov_iter_readable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fault_in_iov_iter_readable to i32), ptr @__kstrtab_fault_in_iov_iter_readable, ptr @__kstrtabns_fault_in_iov_iter_readable }, section "___ksymtab+fault_in_iov_iter_readable", align 4
@__kstrtab_fault_in_iov_iter_writeable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fault_in_iov_iter_writeable = external dso_local constant [0 x i8], align 1
@__ksymtab_fault_in_iov_iter_writeable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fault_in_iov_iter_writeable to i32), ptr @__kstrtab_fault_in_iov_iter_writeable, ptr @__kstrtabns_fault_in_iov_iter_writeable }, section "___ksymtab+fault_in_iov_iter_writeable", align 4
@.str = private unnamed_addr constant [15 x i8] c"lib/iov_iter.c\00", align 1
@__kstrtab_iov_iter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_init = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_init to i32), ptr @__kstrtab_iov_iter_init, ptr @__kstrtabns_iov_iter_init }, section "___ksymtab+iov_iter_init", align 4
@__kstrtab__copy_to_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns__copy_to_iter = external dso_local constant [0 x i8], align 1
@__ksymtab__copy_to_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_copy_to_iter to i32), ptr @__kstrtab__copy_to_iter, ptr @__kstrtabns__copy_to_iter }, section "___ksymtab+_copy_to_iter", align 4
@__kstrtab__copy_from_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns__copy_from_iter = external dso_local constant [0 x i8], align 1
@__ksymtab__copy_from_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_copy_from_iter to i32), ptr @__kstrtab__copy_from_iter, ptr @__kstrtabns__copy_from_iter }, section "___ksymtab+_copy_from_iter", align 4
@__kstrtab__copy_from_iter_nocache = external dso_local constant [0 x i8], align 1
@__kstrtabns__copy_from_iter_nocache = external dso_local constant [0 x i8], align 1
@__ksymtab__copy_from_iter_nocache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_copy_from_iter_nocache to i32), ptr @__kstrtab__copy_from_iter_nocache, ptr @__kstrtabns__copy_from_iter_nocache }, section "___ksymtab+_copy_from_iter_nocache", align 4
@__kstrtab_copy_page_to_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_page_to_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_page_to_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_page_to_iter to i32), ptr @__kstrtab_copy_page_to_iter, ptr @__kstrtabns_copy_page_to_iter }, section "___ksymtab+copy_page_to_iter", align 4
@__kstrtab_copy_page_from_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_page_from_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_page_from_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_page_from_iter to i32), ptr @__kstrtab_copy_page_from_iter, ptr @__kstrtabns_copy_page_from_iter }, section "___ksymtab+copy_page_from_iter", align 4
@__kstrtab_iov_iter_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_zero to i32), ptr @__kstrtab_iov_iter_zero, ptr @__kstrtabns_iov_iter_zero }, section "___ksymtab+iov_iter_zero", align 4
@__kstrtab_copy_page_from_iter_atomic = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_page_from_iter_atomic = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_page_from_iter_atomic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_page_from_iter_atomic to i32), ptr @__kstrtab_copy_page_from_iter_atomic, ptr @__kstrtabns_copy_page_from_iter_atomic }, section "___ksymtab+copy_page_from_iter_atomic", align 4
@__kstrtab_iov_iter_advance = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_advance = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_advance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_advance to i32), ptr @__kstrtab_iov_iter_advance, ptr @__kstrtabns_iov_iter_advance }, section "___ksymtab+iov_iter_advance", align 4
@__kstrtab_iov_iter_revert = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_revert = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_revert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_revert to i32), ptr @__kstrtab_iov_iter_revert, ptr @__kstrtabns_iov_iter_revert }, section "___ksymtab+iov_iter_revert", align 4
@__kstrtab_iov_iter_single_seg_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_single_seg_count = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_single_seg_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_single_seg_count to i32), ptr @__kstrtab_iov_iter_single_seg_count, ptr @__kstrtabns_iov_iter_single_seg_count }, section "___ksymtab+iov_iter_single_seg_count", align 4
@__kstrtab_iov_iter_kvec = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_kvec = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_kvec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_kvec to i32), ptr @__kstrtab_iov_iter_kvec, ptr @__kstrtabns_iov_iter_kvec }, section "___ksymtab+iov_iter_kvec", align 4
@__kstrtab_iov_iter_bvec = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_bvec = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_bvec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_bvec to i32), ptr @__kstrtab_iov_iter_bvec, ptr @__kstrtabns_iov_iter_bvec }, section "___ksymtab+iov_iter_bvec", align 4
@__kstrtab_iov_iter_pipe = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_pipe = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_pipe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_pipe to i32), ptr @__kstrtab_iov_iter_pipe, ptr @__kstrtabns_iov_iter_pipe }, section "___ksymtab+iov_iter_pipe", align 4
@__kstrtab_iov_iter_xarray = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_xarray = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_xarray = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_xarray to i32), ptr @__kstrtab_iov_iter_xarray, ptr @__kstrtabns_iov_iter_xarray }, section "___ksymtab+iov_iter_xarray", align 4
@__kstrtab_iov_iter_discard = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_discard = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_discard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_discard to i32), ptr @__kstrtab_iov_iter_discard, ptr @__kstrtabns_iov_iter_discard }, section "___ksymtab+iov_iter_discard", align 4
@__kstrtab_iov_iter_alignment = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_alignment = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_alignment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_alignment to i32), ptr @__kstrtab_iov_iter_alignment, ptr @__kstrtabns_iov_iter_alignment }, section "___ksymtab+iov_iter_alignment", align 4
@__kstrtab_iov_iter_gap_alignment = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_gap_alignment = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_gap_alignment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_gap_alignment to i32), ptr @__kstrtab_iov_iter_gap_alignment, ptr @__kstrtabns_iov_iter_gap_alignment }, section "___ksymtab+iov_iter_gap_alignment", align 4
@__kstrtab_iov_iter_get_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_get_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_get_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_get_pages to i32), ptr @__kstrtab_iov_iter_get_pages, ptr @__kstrtabns_iov_iter_get_pages }, section "___ksymtab+iov_iter_get_pages", align 4
@__kstrtab_iov_iter_get_pages_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_get_pages_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_get_pages_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_get_pages_alloc to i32), ptr @__kstrtab_iov_iter_get_pages_alloc, ptr @__kstrtabns_iov_iter_get_pages_alloc }, section "___ksymtab+iov_iter_get_pages_alloc", align 4
@__kstrtab_csum_and_copy_from_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_csum_and_copy_from_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_csum_and_copy_from_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csum_and_copy_from_iter to i32), ptr @__kstrtab_csum_and_copy_from_iter, ptr @__kstrtabns_csum_and_copy_from_iter }, section "___ksymtab+csum_and_copy_from_iter", align 4
@__kstrtab_csum_and_copy_to_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_csum_and_copy_to_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_csum_and_copy_to_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csum_and_copy_to_iter to i32), ptr @__kstrtab_csum_and_copy_to_iter, ptr @__kstrtabns_csum_and_copy_to_iter }, section "___ksymtab+csum_and_copy_to_iter", align 4
@__kstrtab_hash_and_copy_to_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_hash_and_copy_to_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_hash_and_copy_to_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hash_and_copy_to_iter to i32), ptr @__kstrtab_hash_and_copy_to_iter, ptr @__kstrtabns_hash_and_copy_to_iter }, section "___ksymtab+hash_and_copy_to_iter", align 4
@__kstrtab_iov_iter_npages = external dso_local constant [0 x i8], align 1
@__kstrtabns_iov_iter_npages = external dso_local constant [0 x i8], align 1
@__ksymtab_iov_iter_npages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iov_iter_npages to i32), ptr @__kstrtab_iov_iter_npages, ptr @__kstrtabns_iov_iter_npages }, section "___ksymtab+iov_iter_npages", align 4
@__kstrtab_dup_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dup_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_dup_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dup_iter to i32), ptr @__kstrtab_dup_iter, ptr @__kstrtabns_dup_iter }, section "___ksymtab+dup_iter", align 4
@__kstrtab_import_iovec = external dso_local constant [0 x i8], align 1
@__kstrtabns_import_iovec = external dso_local constant [0 x i8], align 1
@__ksymtab_import_iovec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @import_iovec to i32), ptr @__kstrtab_import_iovec, ptr @__kstrtabns_import_iovec }, section "___ksymtab+import_iovec", align 4
@__kstrtab_import_single_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_import_single_range = external dso_local constant [0 x i8], align 1
@__ksymtab_import_single_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @import_single_range to i32), ptr @__kstrtab_import_single_range, ptr @__kstrtabns_import_single_range }, section "___ksymtab+import_single_range", align 4
@iov_iter_restore.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@default_pipe_buf_ops = external dso_local constant %struct.pipe_buf_operations, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@page_cache_pipe_buf_ops = external dso_local constant %struct.pipe_buf_operations, align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\013idx = %d, offset = %zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\013head = %d, tail = %d, buffers = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\013[%p %p %d %d]\0A\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab__copy_from_iter, ptr @__ksymtab__copy_from_iter_nocache, ptr @__ksymtab__copy_to_iter, ptr @__ksymtab_copy_page_from_iter, ptr @__ksymtab_copy_page_from_iter_atomic, ptr @__ksymtab_copy_page_to_iter, ptr @__ksymtab_csum_and_copy_from_iter, ptr @__ksymtab_csum_and_copy_to_iter, ptr @__ksymtab_dup_iter, ptr @__ksymtab_fault_in_iov_iter_readable, ptr @__ksymtab_fault_in_iov_iter_writeable, ptr @__ksymtab_hash_and_copy_to_iter, ptr @__ksymtab_import_iovec, ptr @__ksymtab_import_single_range, ptr @__ksymtab_iov_iter_advance, ptr @__ksymtab_iov_iter_alignment, ptr @__ksymtab_iov_iter_bvec, ptr @__ksymtab_iov_iter_discard, ptr @__ksymtab_iov_iter_gap_alignment, ptr @__ksymtab_iov_iter_get_pages, ptr @__ksymtab_iov_iter_get_pages_alloc, ptr @__ksymtab_iov_iter_init, ptr @__ksymtab_iov_iter_kvec, ptr @__ksymtab_iov_iter_npages, ptr @__ksymtab_iov_iter_pipe, ptr @__ksymtab_iov_iter_revert, ptr @__ksymtab_iov_iter_single_seg_count, ptr @__ksymtab_iov_iter_xarray, ptr @__ksymtab_iov_iter_zero], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fault_in_iov_iter_readable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i8, ptr %0, align 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %1)
  %9 = sub i32 %1, %8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %32, %11
  %17 = phi i32 [ %33, %32 ], [ %8, %11 ]
  %18 = phi i32 [ 0, %32 ], [ %13, %11 ]
  %19 = phi ptr [ %34, %32 ], [ %15, %11 ]
  %20 = getelementptr inbounds %struct.iovec, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %21, %18
  %23 = tail call i32 @llvm.umin.i32(i32 %17, i32 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25, !prof !8

25:                                               ; preds = %16
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 %18
  %28 = tail call i32 @fault_in_readable(ptr noundef %27, i32 noundef %23) #13
  %29 = sub i32 %28, %23
  %30 = add i32 %29, %17
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25, %16
  %33 = phi i32 [ %30, %25 ], [ %17, %16 ]
  %34 = getelementptr %struct.iovec, ptr %19, i32 1
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %16

36:                                               ; preds = %32, %25, %5
  %37 = phi i32 [ 0, %5 ], [ %30, %25 ], [ 0, %32 ]
  %38 = add i32 %9, %37
  br label %39

39:                                               ; preds = %36, %2
  %40 = phi i32 [ %38, %36 ], [ 0, %2 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_readable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fault_in_iov_iter_writeable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i8, ptr %0, align 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %1)
  %9 = sub i32 %1, %8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %32, %11
  %17 = phi i32 [ %33, %32 ], [ %8, %11 ]
  %18 = phi i32 [ 0, %32 ], [ %13, %11 ]
  %19 = phi ptr [ %34, %32 ], [ %15, %11 ]
  %20 = getelementptr inbounds %struct.iovec, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %21, %18
  %23 = tail call i32 @llvm.umin.i32(i32 %17, i32 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25, !prof !8

25:                                               ; preds = %16
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 %18
  %28 = tail call i32 @fault_in_safe_writeable(ptr noundef %27, i32 noundef %23) #13
  %29 = sub i32 %28, %23
  %30 = add i32 %29, %17
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25, %16
  %33 = phi i32 [ %30, %25 ], [ %17, %16 ]
  %34 = getelementptr %struct.iovec, ptr %19, i32 1
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %16

36:                                               ; preds = %32, %25, %5
  %37 = phi i32 [ 0, %5 ], [ %30, %25 ], [ 0, %32 ]
  %38 = add i32 %9, %37
  br label %39

39:                                               ; preds = %36, %2
  %40 = phi i32 [ %38, %36 ], [ 0, %2 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_safe_writeable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iov_iter_init(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp ult i32 %1, 2
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 512, i32 noundef 9, ptr noundef null) #13
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp ne i32 %1, 0
  %10 = zext i1 %9 to i8
  store i8 0, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %0, i32 2
  store i8 %10, ptr %12, align 2
  %13 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %4, ptr %14, align 8
  %15 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %3, ptr %16, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_copy_to_iter(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.xa_state, align 4
  %5 = load i8, ptr %2, align 8
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @copy_pipe_to_iter(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  br label %253

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp ult i32 %11, %1
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %11, %13 ], [ %1, %9 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %253, label %17, !prof !8

17:                                               ; preds = %14
  switch i8 %5, label %249 [
    i8 0, label %18
    i8 2, label %73
    i8 1, label %119
    i8 4, label %160
  ], !prof !10

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %56, %18
  %24 = phi i32 [ %22, %18 ], [ 0, %56 ]
  %25 = phi i32 [ 0, %18 ], [ %57, %56 ]
  %26 = phi ptr [ %20, %18 ], [ %59, %56 ]
  %27 = phi i32 [ %15, %18 ], [ %58, %56 ]
  %28 = getelementptr inbounds %struct.iovec, ptr %26, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %24
  %31 = tail call i32 @llvm.umin.i32(i32 %27, i32 %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %56, label %33, !prof !8

33:                                               ; preds = %23
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr i8, ptr %34, i32 %24
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 %31, i32 -1090519040) #14, !srcloc !11
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %0, i32 %25
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %42) #15, !srcloc !12
  %44 = and i32 %43, -13
  %45 = or i32 %44, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %46 = tail call i32 @arm_copy_to_user(ptr noundef %35, ptr noundef %40, i32 noundef %31) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %47 = load i32, ptr %28, align 4
  br label %48

48:                                               ; preds = %39, %33
  %49 = phi i32 [ %47, %39 ], [ %29, %33 ]
  %50 = phi i32 [ %46, %39 ], [ %31, %33 ]
  %51 = sub i32 %31, %50
  %52 = add i32 %51, %25
  %53 = add i32 %51, %24
  %54 = sub i32 %27, %51
  %55 = icmp ult i32 %53, %49
  br i1 %55, label %61, label %56

56:                                               ; preds = %48, %23
  %57 = phi i32 [ %52, %48 ], [ %25, %23 ]
  %58 = phi i32 [ %54, %48 ], [ %27, %23 ]
  %59 = getelementptr %struct.iovec, ptr %26, i32 1
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %23

61:                                               ; preds = %56, %48
  %62 = phi i32 [ %53, %48 ], [ 0, %56 ]
  %63 = phi i32 [ %52, %48 ], [ %57, %56 ]
  %64 = phi ptr [ %26, %48 ], [ %59, %56 ]
  store i32 %62, ptr %21, align 4
  %65 = load ptr, ptr %19, align 4
  %66 = ptrtoint ptr %64 to i32
  %67 = ptrtoint ptr %65 to i32
  %68 = sub i32 %66, %67
  %69 = ashr exact i32 %68, 3
  %70 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %71 = load i32, ptr %70, align 8
  %72 = sub i32 %71, %69
  store i32 %72, ptr %70, align 8
  store ptr %64, ptr %19, align 4
  br label %249

73:                                               ; preds = %17
  %74 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %78, %73
  %79 = phi i32 [ %108, %78 ], [ %15, %73 ]
  %80 = phi ptr [ %107, %78 ], [ %75, %73 ]
  %81 = phi i32 [ %101, %78 ], [ 0, %73 ]
  %82 = phi i32 [ %105, %78 ], [ %77, %73 ]
  %83 = getelementptr inbounds %struct.bio_vec, ptr %80, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, %82
  %86 = load ptr, ptr %80, align 4
  %87 = lshr i32 %85, 12
  %88 = getelementptr %struct.page, ptr %86, i32 %87
  %89 = load i32, ptr @pgprot_kernel, align 4
  %90 = or i32 %89, 512
  %91 = tail call ptr @__kmap_local_page_prot(ptr noundef %88, i32 noundef %90) #13
  %92 = and i32 %85, 4095
  %93 = getelementptr i8, ptr %91, i32 %92
  %94 = getelementptr inbounds %struct.bio_vec, ptr %80, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = sub i32 %95, %82
  %97 = tail call i32 @llvm.umin.i32(i32 %79, i32 %96)
  %98 = sub nuw nsw i32 4096, %92
  %99 = tail call i32 @llvm.umin.i32(i32 %97, i32 %98)
  %100 = getelementptr i8, ptr %0, i32 %81
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %93, ptr align 1 %100, i32 %99, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %91) #13
  %101 = add i32 %99, %81
  %102 = add i32 %99, %82
  %103 = load i32, ptr %94, align 4
  %104 = icmp eq i32 %102, %103
  %105 = select i1 %104, i32 0, i32 %102
  %106 = zext i1 %104 to i32
  %107 = getelementptr %struct.bio_vec, ptr %80, i32 %106
  %108 = sub i32 %79, %99
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %78

110:                                              ; preds = %78
  %111 = load ptr, ptr %74, align 4
  store i32 %105, ptr %76, align 4
  %112 = ptrtoint ptr %107 to i32
  %113 = ptrtoint ptr %111 to i32
  %114 = sub i32 %112, %113
  %115 = sdiv exact i32 %114, -12
  %116 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %117 = load i32, ptr %116, align 8
  %118 = add i32 %115, %117
  store i32 %118, ptr %116, align 8
  store ptr %107, ptr %74, align 4
  br label %249

119:                                              ; preds = %17
  %120 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  br label %124

124:                                              ; preds = %143, %119
  %125 = phi ptr [ %121, %119 ], [ %146, %143 ]
  %126 = phi i32 [ 0, %119 ], [ %144, %143 ]
  %127 = phi i32 [ %123, %119 ], [ 0, %143 ]
  %128 = phi i32 [ %15, %119 ], [ %145, %143 ]
  %129 = getelementptr inbounds %struct.kvec, ptr %125, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = sub i32 %130, %127
  %132 = tail call i32 @llvm.umin.i32(i32 %128, i32 %131)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134, !prof !8

134:                                              ; preds = %124
  %135 = load ptr, ptr %125, align 4
  %136 = getelementptr i8, ptr %135, i32 %127
  %137 = getelementptr i8, ptr %0, i32 %126
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %136, ptr align 1 %137, i32 %132, i1 false)
  %138 = add i32 %132, %126
  %139 = add i32 %132, %127
  %140 = sub i32 %128, %132
  %141 = load i32, ptr %129, align 4
  %142 = icmp ult i32 %139, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %134, %124
  %144 = phi i32 [ %138, %134 ], [ %126, %124 ]
  %145 = phi i32 [ %140, %134 ], [ %128, %124 ]
  %146 = getelementptr %struct.kvec, ptr %125, i32 1
  %147 = icmp eq i32 %145, 0
  br i1 %147, label %148, label %124

148:                                              ; preds = %143, %134
  %149 = phi ptr [ %125, %134 ], [ %146, %143 ]
  %150 = phi i32 [ %138, %134 ], [ %144, %143 ]
  %151 = phi i32 [ %139, %134 ], [ 0, %143 ]
  store i32 %151, ptr %122, align 4
  %152 = load ptr, ptr %120, align 4
  %153 = ptrtoint ptr %149 to i32
  %154 = ptrtoint ptr %152 to i32
  %155 = sub i32 %153, %154
  %156 = ashr exact i32 %155, 3
  %157 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %158 = load i32, ptr %157, align 8
  %159 = sub i32 %158, %156
  store i32 %159, ptr %157, align 8
  store ptr %149, ptr %120, align 4
  br label %249

160:                                              ; preds = %17
  %161 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %162 = load i64, ptr %161, align 8
  %163 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = zext i32 %164 to i64
  %166 = add i64 %162, %165
  %167 = sdiv i64 %166, 4096
  %168 = trunc i64 %167 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %169 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %170 = load ptr, ptr %169, align 4
  store ptr %170, ptr %4, align 4
  %171 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %168, ptr %171, align 4
  %172 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %173 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %172, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %173, align 4
  %174 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %174, align 4
  %175 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %175, align 4
  %176 = trunc i64 %166 to i32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %177 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef -1) #13
  %178 = icmp eq ptr %177, null
  br i1 %178, label %245, label %179

179:                                              ; preds = %160
  %180 = and i32 %176, 4095
  %181 = sub nuw nsw i32 4096, %180
  br label %182

182:                                              ; preds = %239, %179
  %183 = phi i32 [ %242, %239 ], [ %15, %179 ]
  %184 = phi ptr [ %243, %239 ], [ %177, %179 ]
  %185 = phi i32 [ %241, %239 ], [ 0, %179 ]
  %186 = phi i32 [ %240, %239 ], [ %181, %179 ]
  %187 = ptrtoint ptr %184 to i32
  switch i32 %187, label %189 [
    i32 1030, label %239
    i32 1026, label %188
  ]

188:                                              ; preds = %182
  store ptr inttoptr (i32 3 to ptr), ptr %173, align 4
  br label %239

189:                                              ; preds = %182
  %190 = and i32 %187, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192, !prof !9

192:                                              ; preds = %189
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 670, i32 noundef 9, ptr noundef null) #13
  br label %245

193:                                              ; preds = %189
  %194 = add i32 %185, %176
  %195 = load volatile i32, ptr %184, align 4
  %196 = and i32 %195, 65536
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = getelementptr %struct.page, ptr %184, i32 1, i32 1
  %200 = getelementptr inbounds %struct.anon.53, ptr %199, i32 0, i32 2
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i32
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi i32 [ %202, %198 ], [ 0, %193 ]
  %205 = shl i32 4096, %204
  %206 = add i32 %205, -1
  %207 = and i32 %206, %194
  %208 = getelementptr %struct.page, ptr %184, i32 1, i32 1
  %209 = getelementptr inbounds %struct.anon.53, ptr %208, i32 0, i32 2
  br label %210

210:                                              ; preds = %225, %203
  %211 = phi i32 [ %186, %203 ], [ 4096, %225 ]
  %212 = phi i32 [ %185, %203 ], [ %235, %225 ]
  %213 = phi i32 [ %207, %203 ], [ %238, %225 ]
  %214 = phi i32 [ %183, %203 ], [ %236, %225 ]
  %215 = load volatile i32, ptr %184, align 4
  %216 = and i32 %215, 65536
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %210
  %219 = load i8, ptr %209, align 1
  %220 = zext i8 %219 to i32
  br label %221

221:                                              ; preds = %218, %210
  %222 = phi i32 [ %220, %218 ], [ 0, %210 ]
  %223 = shl i32 4096, %222
  %224 = icmp ult i32 %213, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %221
  %226 = lshr i32 %213, 12
  %227 = getelementptr %struct.page, ptr %184, i32 %226
  %228 = load i32, ptr @pgprot_kernel, align 4
  %229 = or i32 %228, 512
  %230 = call ptr @__kmap_local_page_prot(ptr noundef %227, i32 noundef %229) #13
  %231 = and i32 %213, 4095
  %232 = getelementptr i8, ptr %230, i32 %231
  %233 = call i32 @llvm.umin.i32(i32 %214, i32 %211)
  %234 = getelementptr i8, ptr %0, i32 %212
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %232, ptr align 1 %234, i32 %233, i1 false)
  call void @kunmap_local_indexed(ptr noundef %232) #13
  %235 = add i32 %233, %212
  %236 = sub i32 %214, %233
  %237 = icmp eq i32 %236, 0
  %238 = add i32 %233, %213
  br i1 %237, label %245, label %210

239:                                              ; preds = %221, %188, %182
  %240 = phi i32 [ %186, %188 ], [ %186, %182 ], [ %211, %221 ]
  %241 = phi i32 [ %185, %188 ], [ %185, %182 ], [ %212, %221 ]
  %242 = phi i32 [ %183, %188 ], [ %183, %182 ], [ %214, %221 ]
  %243 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %4)
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %182

245:                                              ; preds = %239, %225, %192, %160
  %246 = phi i32 [ %185, %192 ], [ 0, %160 ], [ %235, %225 ], [ %241, %239 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %247 = load i32, ptr %163, align 4
  %248 = add i32 %247, %246
  store i32 %248, ptr %163, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %249

249:                                              ; preds = %245, %148, %110, %61, %17
  %250 = phi i32 [ %63, %61 ], [ %101, %110 ], [ %150, %148 ], [ %246, %245 ], [ %15, %17 ]
  %251 = load i32, ptr %10, align 8
  %252 = sub i32 %251, %250
  store i32 %252, ptr %10, align 8
  br label %253

253:                                              ; preds = %249, %14, %7
  %254 = phi i32 [ %8, %7 ], [ %250, %249 ], [ 0, %14 ]
  ret i32 %254
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_pipe_to_iter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !17
  %11 = tail call fastcc zeroext i1 @sanity(ptr noundef %2)
  br i1 %11, label %12, label %56

12:                                               ; preds = %3
  %13 = call fastcc i32 @push_pipe(ptr noundef %2, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %56, label %15, !prof !8

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.pipe_inode_info, ptr %7, i32 0, i32 17
  %17 = load i32, ptr %5, align 4
  %18 = load i32, ptr %4, align 4
  %19 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %20 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %21 = sub i32 4096, %17
  %22 = tail call i32 @llvm.umin.i32(i32 %13, i32 %21)
  %23 = load ptr, ptr %16, align 4
  %24 = and i32 %18, %10
  %25 = getelementptr %struct.pipe_buffer, ptr %23, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr @pgprot_kernel, align 4
  %28 = or i32 %27, 512
  %29 = tail call ptr @__kmap_local_page_prot(ptr noundef %26, i32 noundef %28) #13
  %30 = getelementptr i8, ptr %29, i32 %17
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %0, i32 %22, i1 false) #13
  tail call void @flush_dcache_page(ptr noundef %26) #13
  tail call void @kunmap_local_indexed(ptr noundef %29) #13
  store i32 %18, ptr %19, align 8
  %31 = add i32 %22, %17
  store i32 %31, ptr %20, align 4
  %32 = sub i32 %13, %22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %15
  %35 = getelementptr i8, ptr %0, i32 %22
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ %40, %36 ], [ %18, %34 ]
  %38 = phi i32 [ %49, %36 ], [ %32, %34 ]
  %39 = phi ptr [ %50, %36 ], [ %35, %34 ]
  %40 = add i32 %37, 1
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 4096)
  %42 = load ptr, ptr %16, align 4
  %43 = and i32 %40, %10
  %44 = getelementptr %struct.pipe_buffer, ptr %42, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr @pgprot_kernel, align 4
  %47 = or i32 %46, 512
  %48 = tail call ptr @__kmap_local_page_prot(ptr noundef %45, i32 noundef %47) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %48, ptr align 1 %39, i32 %41, i1 false) #13
  tail call void @flush_dcache_page(ptr noundef %45) #13
  tail call void @kunmap_local_indexed(ptr noundef %48) #13
  store i32 %40, ptr %19, align 8
  store i32 %41, ptr %20, align 4
  %49 = sub i32 %38, %41
  %50 = getelementptr i8, ptr %39, i32 %41
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %36, !llvm.loop !18

52:                                               ; preds = %36, %15
  %53 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = sub i32 %54, %13
  store i32 %55, ptr %53, align 8
  br label %56

56:                                               ; preds = %52, %12, %3
  %57 = phi i32 [ %13, %52 ], [ 0, %3 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %57
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xas_next_entry(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 3
  %6 = icmp ne i32 %5, 0
  %7 = icmp eq ptr %3, null
  %8 = or i1 %7, %6
  br i1 %8, label %38, label %9, !prof !8

9:                                                ; preds = %1
  %10 = load i8, ptr %3, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %38, !prof !9

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 63
  %19 = icmp eq i32 %18, %15
  br i1 %19, label %20, label %38, !prof !9

20:                                               ; preds = %34, %12
  %21 = phi i8 [ %35, %34 ], [ %14, %12 ]
  %22 = phi i32 [ %36, %34 ], [ %17, %12 ]
  %23 = icmp eq i32 %22, -1
  %24 = icmp eq i8 %21, 63
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %38, label %26, !prof !20

26:                                               ; preds = %20
  %27 = zext i8 %21 to i32
  %28 = add nuw nsw i32 %27, 1
  %29 = getelementptr %struct.xa_node, ptr %3, i32 0, i32 7, i32 %28
  %30 = load volatile ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %38, label %34, !prof !8

34:                                               ; preds = %26
  %35 = add i8 %21, 1
  store i8 %35, ptr %13, align 2
  %36 = add nuw i32 %22, 1
  store i32 %36, ptr %16, align 4
  %37 = icmp eq ptr %30, null
  br i1 %37, label %20, label %40

38:                                               ; preds = %26, %20, %12, %9, %1
  %39 = tail call ptr @xas_find(ptr noundef %0, i32 noundef -1) #13
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi ptr [ %39, %38 ], [ %30, %34 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_copy_from_iter(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.xa_state, align 4
  %5 = load i8, ptr %2, align 8
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 762, i32 noundef 9, ptr noundef null) #13
  br label %252

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ %10, %12 ], [ %1, %8 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %252, label %16, !prof !8

16:                                               ; preds = %13
  switch i8 %5, label %248 [
    i8 0, label %17
    i8 2, label %72
    i8 1, label %118
    i8 4, label %159
  ], !prof !10

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %55, %17
  %23 = phi i32 [ %21, %17 ], [ 0, %55 ]
  %24 = phi i32 [ 0, %17 ], [ %56, %55 ]
  %25 = phi ptr [ %19, %17 ], [ %58, %55 ]
  %26 = phi i32 [ %14, %17 ], [ %57, %55 ]
  %27 = getelementptr inbounds %struct.iovec, ptr %25, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %28, %23
  %30 = tail call i32 @llvm.umin.i32(i32 %26, i32 %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %55, label %32, !prof !8

32:                                               ; preds = %22
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr i8, ptr %33, i32 %23
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 %30, i32 -1090519040) #14, !srcloc !21
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %0, i32 %24
  %40 = tail call ptr @llvm.thread.pointer() #13
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #15, !srcloc !12
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %45 = tail call i32 @arm_copy_from_user(ptr noundef %39, ptr noundef %34, i32 noundef %30) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %46 = load i32, ptr %27, align 4
  br label %47

47:                                               ; preds = %38, %32
  %48 = phi i32 [ %46, %38 ], [ %28, %32 ]
  %49 = phi i32 [ %45, %38 ], [ %30, %32 ]
  %50 = sub i32 %30, %49
  %51 = add i32 %50, %24
  %52 = add i32 %50, %23
  %53 = sub i32 %26, %50
  %54 = icmp ult i32 %52, %48
  br i1 %54, label %60, label %55

55:                                               ; preds = %47, %22
  %56 = phi i32 [ %51, %47 ], [ %24, %22 ]
  %57 = phi i32 [ %53, %47 ], [ %26, %22 ]
  %58 = getelementptr %struct.iovec, ptr %25, i32 1
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %60, label %22

60:                                               ; preds = %55, %47
  %61 = phi i32 [ %52, %47 ], [ 0, %55 ]
  %62 = phi i32 [ %51, %47 ], [ %56, %55 ]
  %63 = phi ptr [ %25, %47 ], [ %58, %55 ]
  store i32 %61, ptr %20, align 4
  %64 = load ptr, ptr %18, align 4
  %65 = ptrtoint ptr %63 to i32
  %66 = ptrtoint ptr %64 to i32
  %67 = sub i32 %65, %66
  %68 = ashr exact i32 %67, 3
  %69 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %70 = load i32, ptr %69, align 8
  %71 = sub i32 %70, %68
  store i32 %71, ptr %69, align 8
  store ptr %63, ptr %18, align 4
  br label %248

72:                                               ; preds = %16
  %73 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %77, %72
  %78 = phi i32 [ %107, %77 ], [ %14, %72 ]
  %79 = phi ptr [ %106, %77 ], [ %74, %72 ]
  %80 = phi i32 [ %100, %77 ], [ 0, %72 ]
  %81 = phi i32 [ %104, %77 ], [ %76, %72 ]
  %82 = getelementptr inbounds %struct.bio_vec, ptr %79, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %81
  %85 = load ptr, ptr %79, align 4
  %86 = lshr i32 %84, 12
  %87 = getelementptr %struct.page, ptr %85, i32 %86
  %88 = load i32, ptr @pgprot_kernel, align 4
  %89 = or i32 %88, 512
  %90 = tail call ptr @__kmap_local_page_prot(ptr noundef %87, i32 noundef %89) #13
  %91 = and i32 %84, 4095
  %92 = getelementptr i8, ptr %90, i32 %91
  %93 = getelementptr inbounds %struct.bio_vec, ptr %79, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = sub i32 %94, %81
  %96 = tail call i32 @llvm.umin.i32(i32 %78, i32 %95)
  %97 = sub nuw nsw i32 4096, %91
  %98 = tail call i32 @llvm.umin.i32(i32 %96, i32 %97)
  %99 = getelementptr i8, ptr %0, i32 %80
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %99, ptr align 1 %92, i32 %98, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %90) #13
  %100 = add i32 %98, %80
  %101 = add i32 %98, %81
  %102 = load i32, ptr %93, align 4
  %103 = icmp eq i32 %101, %102
  %104 = select i1 %103, i32 0, i32 %101
  %105 = zext i1 %103 to i32
  %106 = getelementptr %struct.bio_vec, ptr %79, i32 %105
  %107 = sub i32 %78, %98
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %77

109:                                              ; preds = %77
  %110 = load ptr, ptr %73, align 4
  store i32 %104, ptr %75, align 4
  %111 = ptrtoint ptr %106 to i32
  %112 = ptrtoint ptr %110 to i32
  %113 = sub i32 %111, %112
  %114 = sdiv exact i32 %113, -12
  %115 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %116 = load i32, ptr %115, align 8
  %117 = add i32 %114, %116
  store i32 %117, ptr %115, align 8
  store ptr %106, ptr %73, align 4
  br label %248

118:                                              ; preds = %16
  %119 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  br label %123

123:                                              ; preds = %142, %118
  %124 = phi ptr [ %120, %118 ], [ %145, %142 ]
  %125 = phi i32 [ 0, %118 ], [ %143, %142 ]
  %126 = phi i32 [ %122, %118 ], [ 0, %142 ]
  %127 = phi i32 [ %14, %118 ], [ %144, %142 ]
  %128 = getelementptr inbounds %struct.kvec, ptr %124, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = sub i32 %129, %126
  %131 = tail call i32 @llvm.umin.i32(i32 %127, i32 %130)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %142, label %133, !prof !8

133:                                              ; preds = %123
  %134 = load ptr, ptr %124, align 4
  %135 = getelementptr i8, ptr %134, i32 %126
  %136 = getelementptr i8, ptr %0, i32 %125
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %136, ptr align 1 %135, i32 %131, i1 false)
  %137 = add i32 %131, %125
  %138 = add i32 %131, %126
  %139 = sub i32 %127, %131
  %140 = load i32, ptr %128, align 4
  %141 = icmp ult i32 %138, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %133, %123
  %143 = phi i32 [ %137, %133 ], [ %125, %123 ]
  %144 = phi i32 [ %139, %133 ], [ %127, %123 ]
  %145 = getelementptr %struct.kvec, ptr %124, i32 1
  %146 = icmp eq i32 %144, 0
  br i1 %146, label %147, label %123

147:                                              ; preds = %142, %133
  %148 = phi ptr [ %124, %133 ], [ %145, %142 ]
  %149 = phi i32 [ %137, %133 ], [ %143, %142 ]
  %150 = phi i32 [ %138, %133 ], [ 0, %142 ]
  store i32 %150, ptr %121, align 4
  %151 = load ptr, ptr %119, align 4
  %152 = ptrtoint ptr %148 to i32
  %153 = ptrtoint ptr %151 to i32
  %154 = sub i32 %152, %153
  %155 = ashr exact i32 %154, 3
  %156 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %157 = load i32, ptr %156, align 8
  %158 = sub i32 %157, %155
  store i32 %158, ptr %156, align 8
  store ptr %148, ptr %119, align 4
  br label %248

159:                                              ; preds = %16
  %160 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %161 = load i64, ptr %160, align 8
  %162 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = zext i32 %163 to i64
  %165 = add i64 %161, %164
  %166 = sdiv i64 %165, 4096
  %167 = trunc i64 %166 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %168 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %169 = load ptr, ptr %168, align 4
  store ptr %169, ptr %4, align 4
  %170 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %167, ptr %170, align 4
  %171 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %172 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %171, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %172, align 4
  %173 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %173, align 4
  %174 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %174, align 4
  %175 = trunc i64 %165 to i32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %176 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef -1) #13
  %177 = icmp eq ptr %176, null
  br i1 %177, label %244, label %178

178:                                              ; preds = %159
  %179 = and i32 %175, 4095
  %180 = sub nuw nsw i32 4096, %179
  br label %181

181:                                              ; preds = %238, %178
  %182 = phi i32 [ %241, %238 ], [ %14, %178 ]
  %183 = phi ptr [ %242, %238 ], [ %176, %178 ]
  %184 = phi i32 [ %240, %238 ], [ 0, %178 ]
  %185 = phi i32 [ %239, %238 ], [ %180, %178 ]
  %186 = ptrtoint ptr %183 to i32
  switch i32 %186, label %188 [
    i32 1030, label %238
    i32 1026, label %187
  ]

187:                                              ; preds = %181
  store ptr inttoptr (i32 3 to ptr), ptr %172, align 4
  br label %238

188:                                              ; preds = %181
  %189 = and i32 %186, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191, !prof !9

191:                                              ; preds = %188
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 770, i32 noundef 9, ptr noundef null) #13
  br label %244

192:                                              ; preds = %188
  %193 = add i32 %184, %175
  %194 = load volatile i32, ptr %183, align 4
  %195 = and i32 %194, 65536
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %192
  %198 = getelementptr %struct.page, ptr %183, i32 1, i32 1
  %199 = getelementptr inbounds %struct.anon.53, ptr %198, i32 0, i32 2
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  br label %202

202:                                              ; preds = %197, %192
  %203 = phi i32 [ %201, %197 ], [ 0, %192 ]
  %204 = shl i32 4096, %203
  %205 = add i32 %204, -1
  %206 = and i32 %205, %193
  %207 = getelementptr %struct.page, ptr %183, i32 1, i32 1
  %208 = getelementptr inbounds %struct.anon.53, ptr %207, i32 0, i32 2
  br label %209

209:                                              ; preds = %224, %202
  %210 = phi i32 [ %185, %202 ], [ 4096, %224 ]
  %211 = phi i32 [ %184, %202 ], [ %234, %224 ]
  %212 = phi i32 [ %206, %202 ], [ %237, %224 ]
  %213 = phi i32 [ %182, %202 ], [ %235, %224 ]
  %214 = load volatile i32, ptr %183, align 4
  %215 = and i32 %214, 65536
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %209
  %218 = load i8, ptr %208, align 1
  %219 = zext i8 %218 to i32
  br label %220

220:                                              ; preds = %217, %209
  %221 = phi i32 [ %219, %217 ], [ 0, %209 ]
  %222 = shl i32 4096, %221
  %223 = icmp ult i32 %212, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = lshr i32 %212, 12
  %226 = getelementptr %struct.page, ptr %183, i32 %225
  %227 = load i32, ptr @pgprot_kernel, align 4
  %228 = or i32 %227, 512
  %229 = call ptr @__kmap_local_page_prot(ptr noundef %226, i32 noundef %228) #13
  %230 = and i32 %212, 4095
  %231 = getelementptr i8, ptr %229, i32 %230
  %232 = call i32 @llvm.umin.i32(i32 %213, i32 %210)
  %233 = getelementptr i8, ptr %0, i32 %211
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %233, ptr align 1 %231, i32 %232, i1 false)
  call void @kunmap_local_indexed(ptr noundef %231) #13
  %234 = add i32 %232, %211
  %235 = sub i32 %213, %232
  %236 = icmp eq i32 %235, 0
  %237 = add i32 %232, %212
  br i1 %236, label %244, label %209

238:                                              ; preds = %220, %187, %181
  %239 = phi i32 [ %185, %187 ], [ %185, %181 ], [ %210, %220 ]
  %240 = phi i32 [ %184, %187 ], [ %184, %181 ], [ %211, %220 ]
  %241 = phi i32 [ %182, %187 ], [ %182, %181 ], [ %213, %220 ]
  %242 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %4)
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %181

244:                                              ; preds = %238, %224, %191, %159
  %245 = phi i32 [ %184, %191 ], [ 0, %159 ], [ %234, %224 ], [ %240, %238 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %246 = load i32, ptr %162, align 4
  %247 = add i32 %246, %245
  store i32 %247, ptr %162, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %248

248:                                              ; preds = %244, %147, %109, %60, %16
  %249 = phi i32 [ %62, %60 ], [ %100, %109 ], [ %149, %147 ], [ %245, %244 ], [ %14, %16 ]
  %250 = load i32, ptr %9, align 8
  %251 = sub i32 %250, %249
  store i32 %251, ptr %9, align 8
  br label %252

252:                                              ; preds = %248, %13, %7
  %253 = phi i32 [ 0, %7 ], [ %249, %248 ], [ 0, %13 ]
  ret i32 %253
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copyin(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #14, !srcloc !21
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #15, !srcloc !12
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %13 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %13, %7 ], [ %2, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_copy_from_iter_nocache(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.xa_state, align 4
  %5 = load i8, ptr %2, align 8
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 779, i32 noundef 9, ptr noundef null) #13
  br label %245

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ %10, %12 ], [ %1, %8 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %245, label %16, !prof !8

16:                                               ; preds = %13
  switch i8 %5, label %241 [
    i8 0, label %17
    i8 2, label %65
    i8 1, label %111
    i8 4, label %152
  ], !prof !10

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %48, %17
  %23 = phi i32 [ %21, %17 ], [ 0, %48 ]
  %24 = phi i32 [ 0, %17 ], [ %49, %48 ]
  %25 = phi ptr [ %19, %17 ], [ %51, %48 ]
  %26 = phi i32 [ %14, %17 ], [ %50, %48 ]
  %27 = getelementptr inbounds %struct.iovec, ptr %25, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %28, %23
  %30 = tail call i32 @llvm.umin.i32(i32 %26, i32 %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32, !prof !8

32:                                               ; preds = %22
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr i8, ptr %33, i32 %23
  %35 = getelementptr i8, ptr %0, i32 %24
  %36 = tail call ptr @llvm.thread.pointer() #13
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #15, !srcloc !12
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %41 = tail call i32 @arm_copy_from_user(ptr noundef %35, ptr noundef %34, i32 noundef %30) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %42 = sub i32 %30, %41
  %43 = add i32 %42, %24
  %44 = add i32 %42, %23
  %45 = sub i32 %26, %42
  %46 = load i32, ptr %27, align 4
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %32, %22
  %49 = phi i32 [ %43, %32 ], [ %24, %22 ]
  %50 = phi i32 [ %45, %32 ], [ %26, %22 ]
  %51 = getelementptr %struct.iovec, ptr %25, i32 1
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %22

53:                                               ; preds = %48, %32
  %54 = phi i32 [ %44, %32 ], [ 0, %48 ]
  %55 = phi i32 [ %43, %32 ], [ %49, %48 ]
  %56 = phi ptr [ %25, %32 ], [ %51, %48 ]
  store i32 %54, ptr %20, align 4
  %57 = load ptr, ptr %18, align 4
  %58 = ptrtoint ptr %56 to i32
  %59 = ptrtoint ptr %57 to i32
  %60 = sub i32 %58, %59
  %61 = ashr exact i32 %60, 3
  %62 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %63 = load i32, ptr %62, align 8
  %64 = sub i32 %63, %61
  store i32 %64, ptr %62, align 8
  store ptr %56, ptr %18, align 4
  br label %241

65:                                               ; preds = %16
  %66 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %70, %65
  %71 = phi i32 [ %100, %70 ], [ %14, %65 ]
  %72 = phi ptr [ %99, %70 ], [ %67, %65 ]
  %73 = phi i32 [ %93, %70 ], [ 0, %65 ]
  %74 = phi i32 [ %97, %70 ], [ %69, %65 ]
  %75 = getelementptr inbounds %struct.bio_vec, ptr %72, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %74
  %78 = load ptr, ptr %72, align 4
  %79 = lshr i32 %77, 12
  %80 = getelementptr %struct.page, ptr %78, i32 %79
  %81 = load i32, ptr @pgprot_kernel, align 4
  %82 = or i32 %81, 512
  %83 = tail call ptr @__kmap_local_page_prot(ptr noundef %80, i32 noundef %82) #13
  %84 = and i32 %77, 4095
  %85 = getelementptr i8, ptr %83, i32 %84
  %86 = getelementptr inbounds %struct.bio_vec, ptr %72, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = sub i32 %87, %74
  %89 = tail call i32 @llvm.umin.i32(i32 %71, i32 %88)
  %90 = sub nuw nsw i32 4096, %84
  %91 = tail call i32 @llvm.umin.i32(i32 %89, i32 %90)
  %92 = getelementptr i8, ptr %0, i32 %73
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %92, ptr align 1 %85, i32 %91, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %83) #13
  %93 = add i32 %91, %73
  %94 = add i32 %91, %74
  %95 = load i32, ptr %86, align 4
  %96 = icmp eq i32 %94, %95
  %97 = select i1 %96, i32 0, i32 %94
  %98 = zext i1 %96 to i32
  %99 = getelementptr %struct.bio_vec, ptr %72, i32 %98
  %100 = sub i32 %71, %91
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %70

102:                                              ; preds = %70
  %103 = load ptr, ptr %66, align 4
  store i32 %97, ptr %68, align 4
  %104 = ptrtoint ptr %99 to i32
  %105 = ptrtoint ptr %103 to i32
  %106 = sub i32 %104, %105
  %107 = sdiv exact i32 %106, -12
  %108 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %109 = load i32, ptr %108, align 8
  %110 = add i32 %107, %109
  store i32 %110, ptr %108, align 8
  store ptr %99, ptr %66, align 4
  br label %241

111:                                              ; preds = %16
  %112 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  br label %116

116:                                              ; preds = %135, %111
  %117 = phi ptr [ %113, %111 ], [ %138, %135 ]
  %118 = phi i32 [ 0, %111 ], [ %136, %135 ]
  %119 = phi i32 [ %115, %111 ], [ 0, %135 ]
  %120 = phi i32 [ %14, %111 ], [ %137, %135 ]
  %121 = getelementptr inbounds %struct.kvec, ptr %117, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = sub i32 %122, %119
  %124 = tail call i32 @llvm.umin.i32(i32 %120, i32 %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %135, label %126, !prof !8

126:                                              ; preds = %116
  %127 = load ptr, ptr %117, align 4
  %128 = getelementptr i8, ptr %127, i32 %119
  %129 = getelementptr i8, ptr %0, i32 %118
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %129, ptr align 1 %128, i32 %124, i1 false)
  %130 = add i32 %124, %118
  %131 = add i32 %124, %119
  %132 = sub i32 %120, %124
  %133 = load i32, ptr %121, align 4
  %134 = icmp ult i32 %131, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %126, %116
  %136 = phi i32 [ %130, %126 ], [ %118, %116 ]
  %137 = phi i32 [ %132, %126 ], [ %120, %116 ]
  %138 = getelementptr %struct.kvec, ptr %117, i32 1
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %140, label %116

140:                                              ; preds = %135, %126
  %141 = phi ptr [ %117, %126 ], [ %138, %135 ]
  %142 = phi i32 [ %130, %126 ], [ %136, %135 ]
  %143 = phi i32 [ %131, %126 ], [ 0, %135 ]
  store i32 %143, ptr %114, align 4
  %144 = load ptr, ptr %112, align 4
  %145 = ptrtoint ptr %141 to i32
  %146 = ptrtoint ptr %144 to i32
  %147 = sub i32 %145, %146
  %148 = ashr exact i32 %147, 3
  %149 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %150 = load i32, ptr %149, align 8
  %151 = sub i32 %150, %148
  store i32 %151, ptr %149, align 8
  store ptr %141, ptr %112, align 4
  br label %241

152:                                              ; preds = %16
  %153 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %154 = load i64, ptr %153, align 8
  %155 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %156 = load i32, ptr %155, align 4
  %157 = zext i32 %156 to i64
  %158 = add i64 %154, %157
  %159 = sdiv i64 %158, 4096
  %160 = trunc i64 %159 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %161 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %162 = load ptr, ptr %161, align 4
  store ptr %162, ptr %4, align 4
  %163 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %160, ptr %163, align 4
  %164 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %165 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %164, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %165, align 4
  %166 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %166, align 4
  %167 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %167, align 4
  %168 = trunc i64 %158 to i32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %169 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef -1) #13
  %170 = icmp eq ptr %169, null
  br i1 %170, label %237, label %171

171:                                              ; preds = %152
  %172 = and i32 %168, 4095
  %173 = sub nuw nsw i32 4096, %172
  br label %174

174:                                              ; preds = %231, %171
  %175 = phi i32 [ %234, %231 ], [ %14, %171 ]
  %176 = phi ptr [ %235, %231 ], [ %169, %171 ]
  %177 = phi i32 [ %233, %231 ], [ 0, %171 ]
  %178 = phi i32 [ %232, %231 ], [ %173, %171 ]
  %179 = ptrtoint ptr %176 to i32
  switch i32 %179, label %181 [
    i32 1030, label %231
    i32 1026, label %180
  ]

180:                                              ; preds = %174
  store ptr inttoptr (i32 3 to ptr), ptr %165, align 4
  br label %231

181:                                              ; preds = %174
  %182 = and i32 %179, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184, !prof !9

184:                                              ; preds = %181
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 785, i32 noundef 9, ptr noundef null) #13
  br label %237

185:                                              ; preds = %181
  %186 = add i32 %177, %168
  %187 = load volatile i32, ptr %176, align 4
  %188 = and i32 %187, 65536
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = getelementptr %struct.page, ptr %176, i32 1, i32 1
  %192 = getelementptr inbounds %struct.anon.53, ptr %191, i32 0, i32 2
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i32
  br label %195

195:                                              ; preds = %190, %185
  %196 = phi i32 [ %194, %190 ], [ 0, %185 ]
  %197 = shl i32 4096, %196
  %198 = add i32 %197, -1
  %199 = and i32 %198, %186
  %200 = getelementptr %struct.page, ptr %176, i32 1, i32 1
  %201 = getelementptr inbounds %struct.anon.53, ptr %200, i32 0, i32 2
  br label %202

202:                                              ; preds = %217, %195
  %203 = phi i32 [ %178, %195 ], [ 4096, %217 ]
  %204 = phi i32 [ %177, %195 ], [ %227, %217 ]
  %205 = phi i32 [ %199, %195 ], [ %230, %217 ]
  %206 = phi i32 [ %175, %195 ], [ %228, %217 ]
  %207 = load volatile i32, ptr %176, align 4
  %208 = and i32 %207, 65536
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %202
  %211 = load i8, ptr %201, align 1
  %212 = zext i8 %211 to i32
  br label %213

213:                                              ; preds = %210, %202
  %214 = phi i32 [ %212, %210 ], [ 0, %202 ]
  %215 = shl i32 4096, %214
  %216 = icmp ult i32 %205, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %213
  %218 = lshr i32 %205, 12
  %219 = getelementptr %struct.page, ptr %176, i32 %218
  %220 = load i32, ptr @pgprot_kernel, align 4
  %221 = or i32 %220, 512
  %222 = call ptr @__kmap_local_page_prot(ptr noundef %219, i32 noundef %221) #13
  %223 = and i32 %205, 4095
  %224 = getelementptr i8, ptr %222, i32 %223
  %225 = call i32 @llvm.umin.i32(i32 %206, i32 %203)
  %226 = getelementptr i8, ptr %0, i32 %204
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %226, ptr align 1 %224, i32 %225, i1 false)
  call void @kunmap_local_indexed(ptr noundef %224) #13
  %227 = add i32 %225, %204
  %228 = sub i32 %206, %225
  %229 = icmp eq i32 %228, 0
  %230 = add i32 %225, %205
  br i1 %229, label %237, label %202

231:                                              ; preds = %213, %180, %174
  %232 = phi i32 [ %178, %180 ], [ %178, %174 ], [ %203, %213 ]
  %233 = phi i32 [ %177, %180 ], [ %177, %174 ], [ %204, %213 ]
  %234 = phi i32 [ %175, %180 ], [ %175, %174 ], [ %206, %213 ]
  %235 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %4)
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %174

237:                                              ; preds = %231, %217, %184, %152
  %238 = phi i32 [ %177, %184 ], [ 0, %152 ], [ %227, %217 ], [ %233, %231 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %239 = load i32, ptr %155, align 4
  %240 = add i32 %239, %238
  store i32 %240, ptr %155, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %241

241:                                              ; preds = %237, %140, %102, %53, %16
  %242 = phi i32 [ %55, %53 ], [ %93, %102 ], [ %142, %140 ], [ %238, %237 ], [ %14, %16 ]
  %243 = load i32, ptr %9, align 8
  %244 = sub i32 %243, %242
  store i32 %244, ptr %9, align 8
  br label %245

245:                                              ; preds = %241, %13, %7
  %246 = phi i32 [ 0, %7 ], [ %242, %241 ], [ 0, %13 ]
  ret i32 %246
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_page_to_iter(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = add i32 %2, %1
  %6 = icmp uge i32 %5, %2
  %7 = icmp ult i32 %5, 4097
  %8 = and i1 %6, %7
  br i1 %8, label %40, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14, !prof !9

14:                                               ; preds = %9
  %15 = add i32 %11, -1
  %16 = ptrtoint ptr %0 to i32
  br label %19

17:                                               ; preds = %9
  %18 = ptrtoint ptr %0 to i32
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %16, %14 ], [ %18, %17 ]
  %21 = phi i32 [ %15, %14 ], [ %18, %17 ]
  %22 = sub i32 %20, %21
  %23 = shl i32 %22, 7
  %24 = add i32 %23, %5
  %25 = icmp ult i32 %24, %2
  br i1 %25, label %347, label %26, !prof !8

26:                                               ; preds = %19
  %27 = inttoptr i32 %21 to ptr
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 65536
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr %struct.page, ptr %27, i32 1, i32 1
  %33 = getelementptr inbounds %struct.anon.53, ptr %32, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i32 [ %35, %31 ], [ 0, %26 ]
  %38 = shl i32 4096, %37
  %39 = icmp ugt i32 %24, %38
  br i1 %39, label %347, label %40, !prof !8

40:                                               ; preds = %36, %4
  %41 = lshr i32 %1, 12
  %42 = getelementptr %struct.page, ptr %0, i32 %41
  %43 = and i32 %1, 4095
  %44 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 4
  %45 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %46 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %47 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  br label %48

48:                                               ; preds = %341, %40
  %49 = phi i32 [ %2, %40 ], [ %337, %341 ]
  %50 = phi i32 [ 0, %40 ], [ %336, %341 ]
  %51 = phi i32 [ %43, %40 ], [ %344, %341 ]
  %52 = phi ptr [ %42, %40 ], [ %346, %341 ]
  %53 = sub i32 4096, %51
  %54 = tail call i32 @llvm.umin.i32(i32 %49, i32 %53)
  %55 = load i8, ptr %3, align 8
  switch i8 %55, label %347 [
    i8 0, label %56
    i8 2, label %252
    i8 1, label %252
    i8 4, label %252
    i8 3, label %258
    i8 5, label %327
  ], !prof !22

56:                                               ; preds = %48
  %57 = load i32, ptr %44, align 8
  %58 = icmp ult i32 %57, %54
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %57, %59 ], [ %54, %56 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %350, label %63, !prof !8

63:                                               ; preds = %60
  %64 = load ptr, ptr %45, align 4
  %65 = load i32, ptr %47, align 4
  %66 = load ptr, ptr %64, align 4
  %67 = getelementptr i8, ptr %66, i32 %65
  %68 = getelementptr inbounds %struct.iovec, ptr %64, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 %69, %65
  %71 = tail call i32 @llvm.umin.i32(i32 %61, i32 %70) #13
  %72 = tail call i32 @fault_in_writeable(ptr noundef %67, i32 noundef %71) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %150

74:                                               ; preds = %63
  %75 = load i32, ptr @pgprot_kernel, align 4
  %76 = or i32 %75, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  %77 = tail call ptr @llvm.thread.pointer() #13
  %78 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 149
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %81 = tail call ptr @__kmap_local_page_prot(ptr noundef %52, i32 noundef %76) #13
  %82 = getelementptr i8, ptr %81, i32 %51
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %67, i32 %71, i32 -1090519040) #14, !srcloc !11
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %88 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %87) #15, !srcloc !12
  %89 = and i32 %88, -13
  %90 = or i32 %89, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %91 = tail call i32 @arm_copy_to_user(ptr noundef %67, ptr noundef %82, i32 noundef %71) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %92

92:                                               ; preds = %86, %74
  %93 = phi i32 [ %91, %86 ], [ %71, %74 ]
  %94 = sub i32 %71, %93
  %95 = add i32 %94, %65
  %96 = getelementptr i8, ptr %82, i32 %94
  %97 = sub i32 %61, %94
  %98 = icmp eq i32 %93, 0
  %99 = icmp ne i32 %97, 0
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %128, !prof !8

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  br label %103

103:                                              ; preds = %120, %101
  %104 = phi i32 [ %124, %120 ], [ %97, %101 ]
  %105 = phi ptr [ %107, %120 ], [ %64, %101 ]
  %106 = phi ptr [ %123, %120 ], [ %96, %101 ]
  %107 = getelementptr %struct.iovec, ptr %105, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr %struct.iovec, ptr %105, i32 1, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = tail call i32 @llvm.umin.i32(i32 %104, i32 %110) #13
  %112 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %108, i32 %111, i32 -1090519040) #14, !srcloc !11
  %113 = extractvalue { i32, i32 } %112, 0
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %102) #15, !srcloc !12
  %117 = and i32 %116, -13
  %118 = or i32 %117, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %119 = tail call i32 @arm_copy_to_user(ptr noundef %108, ptr noundef %106, i32 noundef %111) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %120

120:                                              ; preds = %115, %103
  %121 = phi i32 [ %119, %115 ], [ %111, %103 ]
  %122 = sub i32 %111, %121
  %123 = getelementptr i8, ptr %106, i32 %122
  %124 = sub i32 %104, %122
  %125 = icmp eq i32 %121, 0
  %126 = icmp ne i32 %124, 0
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %103, label %128, !prof !8

128:                                              ; preds = %120, %92
  %129 = phi ptr [ %96, %92 ], [ %123, %120 ]
  %130 = phi ptr [ %67, %92 ], [ %108, %120 ]
  %131 = phi ptr [ %64, %92 ], [ %107, %120 ]
  %132 = phi i32 [ %94, %92 ], [ %122, %120 ]
  %133 = phi i32 [ %95, %92 ], [ %122, %120 ]
  %134 = phi i32 [ %97, %92 ], [ %124, %120 ]
  %135 = phi i1 [ %99, %92 ], [ %126, %120 ]
  br i1 %135, label %139, label %136, !prof !8

136:                                              ; preds = %128
  tail call void @kunmap_local_indexed(ptr noundef %81) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %137 = load i32, ptr %78, align 8
  %138 = add i32 %137, -1
  store i32 %138, ptr %78, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %232

139:                                              ; preds = %128
  %140 = ptrtoint ptr %129 to i32
  %141 = ptrtoint ptr %81 to i32
  %142 = sub i32 %140, %141
  %143 = getelementptr i8, ptr %130, i32 %132
  tail call void @kunmap_local_indexed(ptr noundef %81) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %144 = load i32, ptr %78, align 8
  %145 = add i32 %144, -1
  store i32 %145, ptr %78, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %146 = getelementptr inbounds %struct.iovec, ptr %131, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = sub i32 %147, %133
  %149 = tail call i32 @llvm.umin.i32(i32 %134, i32 %148) #13
  br label %150

150:                                              ; preds = %139, %63
  %151 = phi ptr [ %67, %63 ], [ %143, %139 ]
  %152 = phi ptr [ %64, %63 ], [ %131, %139 ]
  %153 = phi i32 [ %71, %63 ], [ %149, %139 ]
  %154 = phi i32 [ %65, %63 ], [ %133, %139 ]
  %155 = phi i32 [ %61, %63 ], [ %134, %139 ]
  %156 = phi i32 [ %51, %63 ], [ %142, %139 ]
  %157 = load i32, ptr %52, align 4
  %158 = lshr i32 %157, 30
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %167, label %160

160:                                              ; preds = %150
  %161 = icmp ne i32 %158, 3
  %162 = load i32, ptr @movable_zone, align 4
  %163 = icmp ne i32 %162, 2
  %164 = select i1 %161, i1 true, i1 %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = tail call ptr @page_address(ptr noundef %52) #13
  br label %169

167:                                              ; preds = %160, %150
  %168 = tail call ptr @kmap_high(ptr noundef %52) #13
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi ptr [ %168, %167 ], [ %166, %165 ]
  %171 = getelementptr i8, ptr %170, i32 %156
  %172 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %151, i32 %153, i32 -1090519040) #14, !srcloc !11
  %173 = extractvalue { i32, i32 } %172, 0
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = tail call ptr @llvm.thread.pointer() #13
  %177 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 3
  %178 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %177) #15, !srcloc !12
  %179 = and i32 %178, -13
  %180 = or i32 %179, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %180) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %181 = tail call i32 @arm_copy_to_user(ptr noundef %151, ptr noundef %171, i32 noundef %153) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %178) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %182

182:                                              ; preds = %175, %169
  %183 = phi i32 [ %181, %175 ], [ %153, %169 ]
  %184 = sub i32 %153, %183
  %185 = add i32 %184, %154
  %186 = sub i32 %155, %184
  %187 = icmp eq i32 %183, 0
  %188 = icmp ne i32 %186, 0
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %190, label %219, !prof !8

190:                                              ; preds = %182
  %191 = getelementptr i8, ptr %171, i32 %184
  br label %192

192:                                              ; preds = %211, %190
  %193 = phi i32 [ %215, %211 ], [ %186, %190 ]
  %194 = phi ptr [ %196, %211 ], [ %152, %190 ]
  %195 = phi ptr [ %214, %211 ], [ %191, %190 ]
  %196 = getelementptr %struct.iovec, ptr %194, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr %struct.iovec, ptr %194, i32 1, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = tail call i32 @llvm.umin.i32(i32 %193, i32 %199) #13
  %201 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %197, i32 %200, i32 -1090519040) #14, !srcloc !11
  %202 = extractvalue { i32, i32 } %201, 0
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %192
  %205 = tail call ptr @llvm.thread.pointer() #13
  %206 = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 3
  %207 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %206) #15, !srcloc !12
  %208 = and i32 %207, -13
  %209 = or i32 %208, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %209) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %210 = tail call i32 @arm_copy_to_user(ptr noundef %197, ptr noundef %195, i32 noundef %200) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %207) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %211

211:                                              ; preds = %204, %192
  %212 = phi i32 [ %210, %204 ], [ %200, %192 ]
  %213 = sub i32 %200, %212
  %214 = getelementptr i8, ptr %195, i32 %213
  %215 = sub i32 %193, %213
  %216 = icmp eq i32 %212, 0
  %217 = icmp ne i32 %215, 0
  %218 = select i1 %216, i1 %217, i1 false
  br i1 %218, label %192, label %219, !prof !8

219:                                              ; preds = %211, %182
  %220 = phi ptr [ %152, %182 ], [ %196, %211 ]
  %221 = phi i32 [ %185, %182 ], [ %213, %211 ]
  %222 = phi i32 [ %186, %182 ], [ %215, %211 ]
  %223 = load i32, ptr %52, align 4
  %224 = lshr i32 %223, 30
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %231, label %226

226:                                              ; preds = %219
  %227 = icmp ne i32 %224, 3
  %228 = load i32, ptr @movable_zone, align 4
  %229 = icmp ne i32 %228, 2
  %230 = select i1 %227, i1 true, i1 %229
  br i1 %230, label %232, label %231

231:                                              ; preds = %226, %219
  tail call void @kunmap_high(ptr noundef %52) #13
  br label %232

232:                                              ; preds = %231, %226, %136
  %233 = phi ptr [ %131, %136 ], [ %220, %226 ], [ %220, %231 ]
  %234 = phi i32 [ %133, %136 ], [ %221, %226 ], [ %221, %231 ]
  %235 = phi i32 [ 0, %136 ], [ %222, %226 ], [ %222, %231 ]
  %236 = getelementptr inbounds %struct.iovec, ptr %233, i32 0, i32 1
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %234, %237
  %239 = zext i1 %238 to i32
  %240 = getelementptr %struct.iovec, ptr %233, i32 %239
  %241 = select i1 %238, i32 0, i32 %234
  %242 = sub i32 %61, %235
  %243 = load i32, ptr %44, align 8
  %244 = sub i32 %243, %242
  store i32 %244, ptr %44, align 8
  %245 = load ptr, ptr %45, align 4
  %246 = ptrtoint ptr %240 to i32
  %247 = ptrtoint ptr %245 to i32
  %248 = sub i32 %246, %247
  %249 = ashr exact i32 %248, 3
  %250 = load i32, ptr %46, align 8
  %251 = sub i32 %250, %249
  store i32 %251, ptr %46, align 8
  store ptr %240, ptr %45, align 4
  store i32 %241, ptr %47, align 4
  br label %334

252:                                              ; preds = %48, %48, %48
  %253 = load i32, ptr @pgprot_kernel, align 4
  %254 = or i32 %253, 512
  %255 = tail call ptr @__kmap_local_page_prot(ptr noundef %52, i32 noundef %254) #13
  %256 = getelementptr i8, ptr %255, i32 %51
  %257 = tail call i32 @_copy_to_iter(ptr noundef %256, i32 noundef %54, ptr noundef %3) #13
  tail call void @kunmap_local_indexed(ptr noundef %255) #13
  br label %334

258:                                              ; preds = %48
  %259 = load ptr, ptr %45, align 4
  %260 = getelementptr inbounds %struct.pipe_inode_info, ptr %259, i32 0, i32 4
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds %struct.pipe_inode_info, ptr %259, i32 0, i32 6
  %263 = load i32, ptr %262, align 4
  %264 = add i32 %263, -1
  %265 = load i32, ptr %46, align 8
  %266 = load i32, ptr %44, align 8
  %267 = icmp ult i32 %266, %54
  br i1 %267, label %268, label %269, !prof !8

268:                                              ; preds = %258
  br label %269

269:                                              ; preds = %268, %258
  %270 = phi i32 [ %266, %268 ], [ %54, %258 ]
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %350, label %272, !prof !8

272:                                              ; preds = %269
  %273 = tail call fastcc zeroext i1 @sanity(ptr noundef %3) #13
  br i1 %273, label %274, label %350

274:                                              ; preds = %272
  %275 = load i32, ptr %47, align 4
  %276 = getelementptr inbounds %struct.pipe_inode_info, ptr %259, i32 0, i32 17
  %277 = load ptr, ptr %276, align 4
  %278 = and i32 %265, %264
  %279 = getelementptr %struct.pipe_buffer, ptr %277, i32 %278
  %280 = icmp eq i32 %275, 0
  br i1 %280, label %296, label %281

281:                                              ; preds = %274
  %282 = icmp eq i32 %275, %51
  br i1 %282, label %283, label %292

283:                                              ; preds = %281
  %284 = load ptr, ptr %279, align 4
  %285 = icmp eq ptr %284, %52
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = getelementptr %struct.pipe_buffer, ptr %277, i32 %278, i32 2
  %288 = load i32, ptr %287, align 4
  %289 = add i32 %288, %270
  store i32 %289, ptr %287, align 4
  %290 = load i32, ptr %47, align 4
  %291 = add i32 %290, %270
  store i32 %291, ptr %47, align 4
  br label %324

292:                                              ; preds = %283, %281
  %293 = add i32 %265, 1
  %294 = and i32 %293, %264
  %295 = getelementptr %struct.pipe_buffer, ptr %277, i32 %294
  br label %296

296:                                              ; preds = %292, %274
  %297 = phi ptr [ %295, %292 ], [ %279, %274 ]
  %298 = phi i32 [ %293, %292 ], [ %265, %274 ]
  %299 = getelementptr inbounds %struct.pipe_inode_info, ptr %259, i32 0, i32 5
  %300 = load i32, ptr %299, align 4
  %301 = sub i32 %298, %261
  %302 = icmp ult i32 %301, %300
  br i1 %302, label %303, label %350

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.pipe_buffer, ptr %297, i32 0, i32 3
  store ptr @page_cache_pipe_buf_ops, ptr %304, align 4
  %305 = getelementptr inbounds %struct.pipe_buffer, ptr %297, i32 0, i32 4
  store i32 0, ptr %305, align 4
  %306 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 1
  %307 = load volatile i32, ptr %306, align 4
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %312, label %310, !prof !9

310:                                              ; preds = %303
  %311 = add i32 %307, -1
  br label %314

312:                                              ; preds = %303
  %313 = ptrtoint ptr %52 to i32
  br label %314

314:                                              ; preds = %312, %310
  %315 = phi i32 [ %311, %310 ], [ %313, %312 ]
  %316 = inttoptr i32 %315 to ptr
  %317 = getelementptr inbounds %struct.page, ptr %316, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %317) #13, !srcloc !27
  %318 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %317, ptr %317, i32 1, ptr elementtype(i32) %317) #13, !srcloc !28
  store ptr %52, ptr %297, align 4
  %319 = getelementptr inbounds %struct.pipe_buffer, ptr %297, i32 0, i32 1
  store i32 %51, ptr %319, align 4
  %320 = getelementptr inbounds %struct.pipe_buffer, ptr %297, i32 0, i32 2
  store i32 %270, ptr %320, align 4
  %321 = add i32 %298, 1
  %322 = getelementptr inbounds %struct.pipe_inode_info, ptr %259, i32 0, i32 3
  store i32 %321, ptr %322, align 4
  %323 = add i32 %270, %51
  store i32 %323, ptr %47, align 4
  store i32 %298, ptr %46, align 8
  br label %324

324:                                              ; preds = %314, %286
  %325 = load i32, ptr %44, align 8
  %326 = sub i32 %325, %270
  store i32 %326, ptr %44, align 8
  br label %334

327:                                              ; preds = %48
  %328 = load i32, ptr %44, align 8
  %329 = icmp ult i32 %328, %54
  br i1 %329, label %330, label %331, !prof !8

330:                                              ; preds = %327
  br label %331

331:                                              ; preds = %330, %327
  %332 = phi i32 [ %328, %330 ], [ %54, %327 ]
  %333 = sub i32 %328, %332
  store i32 %333, ptr %44, align 8
  br label %334

334:                                              ; preds = %331, %324, %252, %232
  %335 = phi i32 [ %257, %252 ], [ %332, %331 ], [ %242, %232 ], [ %270, %324 ]
  %336 = add i32 %335, %50
  %337 = sub i32 %49, %335
  %338 = icmp ne i32 %337, 0
  %339 = icmp ne i32 %335, 0
  %340 = and i1 %339, %338
  br i1 %340, label %341, label %350

341:                                              ; preds = %334
  %342 = add i32 %335, %51
  %343 = icmp eq i32 %342, 4096
  %344 = select i1 %343, i32 0, i32 %342
  %345 = zext i1 %343 to i32
  %346 = getelementptr %struct.page, ptr %52, i32 %345
  br label %48

347:                                              ; preds = %48, %36, %19
  %348 = phi i32 [ 844, %19 ], [ 844, %36 ], [ 867, %48 ]
  %349 = phi i32 [ 0, %19 ], [ 0, %36 ], [ %50, %48 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %348, i32 noundef 9, ptr noundef null) #13
  br label %350

350:                                              ; preds = %347, %334, %296, %272, %269, %60
  %351 = phi i32 [ %349, %347 ], [ %50, %296 ], [ %50, %272 ], [ %50, %269 ], [ %50, %60 ], [ %336, %334 ]
  ret i32 %351
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_page_from_iter(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = add i32 %2, %1
  %6 = icmp uge i32 %5, %2
  %7 = icmp ult i32 %5, 4097
  %8 = and i1 %6, %7
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14, !prof !9

14:                                               ; preds = %9
  %15 = add i32 %11, -1
  %16 = ptrtoint ptr %0 to i32
  br label %19

17:                                               ; preds = %9
  %18 = ptrtoint ptr %0 to i32
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %16, %14 ], [ %18, %17 ]
  %21 = phi i32 [ %15, %14 ], [ %18, %17 ]
  %22 = sub i32 %20, %21
  %23 = shl i32 %22, 7
  %24 = add i32 %23, %5
  %25 = icmp ult i32 %24, %2
  br i1 %25, label %40, label %26, !prof !8

26:                                               ; preds = %19
  %27 = inttoptr i32 %21 to ptr
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 65536
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr %struct.page, ptr %27, i32 1, i32 1
  %33 = getelementptr inbounds %struct.anon.53, ptr %32, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i32 [ %35, %31 ], [ 0, %26 ]
  %38 = shl i32 4096, %37
  %39 = icmp ugt i32 %24, %38
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %36, %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 844, i32 noundef 9, ptr noundef null) #13
  br label %228

41:                                               ; preds = %36, %4
  %42 = load i8, ptr %3, align 8
  switch i8 %42, label %227 [
    i8 0, label %43
    i8 2, label %221
    i8 1, label %221
    i8 4, label %221
  ], !prof !10

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = icmp ult i32 %45, %2
  br i1 %46, label %47, label %48, !prof !8

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %45, %47 ], [ %2, %43 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %228, label %51, !prof !8

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr i8, ptr %56, i32 %55
  %58 = getelementptr inbounds %struct.iovec, ptr %53, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %59, %55
  %61 = tail call i32 @llvm.umin.i32(i32 %49, i32 %60) #13
  %62 = tail call i32 @fault_in_readable(ptr noundef %57, i32 noundef %61) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %129

64:                                               ; preds = %51
  %65 = load i32, ptr @pgprot_kernel, align 4
  %66 = or i32 %65, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  %67 = tail call ptr @llvm.thread.pointer() #13
  %68 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 149
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %71 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %66) #13
  %72 = getelementptr i8, ptr %71, i32 %1
  %73 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %57, i32 %61, i32 -1090519040) #14, !srcloc !21
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %77) #15, !srcloc !12
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %81 = tail call i32 @arm_copy_from_user(ptr noundef %72, ptr noundef %57, i32 noundef %61) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %82

82:                                               ; preds = %76, %64
  %83 = phi i32 [ %81, %76 ], [ %61, %64 ]
  %84 = sub i32 %61, %83
  %85 = add i32 %84, %55
  %86 = getelementptr i8, ptr %72, i32 %84
  %87 = sub i32 %49, %84
  %88 = icmp eq i32 %83, 0
  %89 = icmp ne i32 %87, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %107, !prof !8

91:                                               ; preds = %91, %82
  %92 = phi i32 [ %103, %91 ], [ %87, %82 ]
  %93 = phi ptr [ %95, %91 ], [ %53, %82 ]
  %94 = phi ptr [ %102, %91 ], [ %86, %82 ]
  %95 = getelementptr %struct.iovec, ptr %93, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr %struct.iovec, ptr %93, i32 1, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = tail call i32 @llvm.umin.i32(i32 %92, i32 %98) #13
  %100 = tail call fastcc i32 @copyin(ptr noundef %94, ptr noundef %96, i32 noundef %99) #13
  %101 = sub i32 %99, %100
  %102 = getelementptr i8, ptr %94, i32 %101
  %103 = sub i32 %92, %101
  %104 = icmp eq i32 %100, 0
  %105 = icmp ne i32 %103, 0
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %91, label %107, !prof !8

107:                                              ; preds = %91, %82
  %108 = phi ptr [ %86, %82 ], [ %102, %91 ]
  %109 = phi ptr [ %57, %82 ], [ %96, %91 ]
  %110 = phi ptr [ %53, %82 ], [ %95, %91 ]
  %111 = phi i32 [ %84, %82 ], [ %101, %91 ]
  %112 = phi i32 [ %85, %82 ], [ %101, %91 ]
  %113 = phi i32 [ %87, %82 ], [ %103, %91 ]
  %114 = phi i1 [ %89, %82 ], [ %105, %91 ]
  br i1 %114, label %118, label %115, !prof !8

115:                                              ; preds = %107
  tail call void @kunmap_local_indexed(ptr noundef %71) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %116 = load i32, ptr %68, align 8
  %117 = add i32 %116, -1
  store i32 %117, ptr %68, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %200

118:                                              ; preds = %107
  %119 = ptrtoint ptr %108 to i32
  %120 = ptrtoint ptr %71 to i32
  %121 = sub i32 %119, %120
  %122 = getelementptr i8, ptr %109, i32 %111
  tail call void @kunmap_local_indexed(ptr noundef %71) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %123 = load i32, ptr %68, align 8
  %124 = add i32 %123, -1
  store i32 %124, ptr %68, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %125 = getelementptr inbounds %struct.iovec, ptr %110, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = sub i32 %126, %112
  %128 = tail call i32 @llvm.umin.i32(i32 %113, i32 %127) #13
  br label %129

129:                                              ; preds = %118, %51
  %130 = phi ptr [ %57, %51 ], [ %122, %118 ]
  %131 = phi ptr [ %53, %51 ], [ %110, %118 ]
  %132 = phi i32 [ %61, %51 ], [ %128, %118 ]
  %133 = phi i32 [ %55, %51 ], [ %112, %118 ]
  %134 = phi i32 [ %49, %51 ], [ %113, %118 ]
  %135 = phi i32 [ %1, %51 ], [ %121, %118 ]
  %136 = load i32, ptr %0, align 4
  %137 = lshr i32 %136, 30
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %146, label %139

139:                                              ; preds = %129
  %140 = icmp ne i32 %137, 3
  %141 = load i32, ptr @movable_zone, align 4
  %142 = icmp ne i32 %141, 2
  %143 = select i1 %140, i1 true, i1 %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = tail call ptr @page_address(ptr noundef %0) #13
  br label %148

146:                                              ; preds = %139, %129
  %147 = tail call ptr @kmap_high(ptr noundef %0) #13
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi ptr [ %147, %146 ], [ %145, %144 ]
  %150 = getelementptr i8, ptr %149, i32 %135
  %151 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %130, i32 %132, i32 -1090519040) #14, !srcloc !21
  %152 = extractvalue { i32, i32 } %151, 0
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = tail call ptr @llvm.thread.pointer() #13
  %156 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 3
  %157 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %156) #15, !srcloc !12
  %158 = and i32 %157, -13
  %159 = or i32 %158, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %159) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %160 = tail call i32 @arm_copy_from_user(ptr noundef %150, ptr noundef %130, i32 noundef %132) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %157) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %161

161:                                              ; preds = %154, %148
  %162 = phi i32 [ %160, %154 ], [ %132, %148 ]
  %163 = sub i32 %132, %162
  %164 = add i32 %163, %133
  %165 = sub i32 %134, %163
  %166 = icmp eq i32 %162, 0
  %167 = icmp ne i32 %165, 0
  %168 = select i1 %166, i1 %167, i1 false
  br i1 %168, label %169, label %187, !prof !8

169:                                              ; preds = %161
  %170 = getelementptr i8, ptr %150, i32 %163
  br label %171

171:                                              ; preds = %171, %169
  %172 = phi i32 [ %183, %171 ], [ %165, %169 ]
  %173 = phi ptr [ %175, %171 ], [ %131, %169 ]
  %174 = phi ptr [ %182, %171 ], [ %170, %169 ]
  %175 = getelementptr %struct.iovec, ptr %173, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr %struct.iovec, ptr %173, i32 1, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = tail call i32 @llvm.umin.i32(i32 %172, i32 %178) #13
  %180 = tail call fastcc i32 @copyin(ptr noundef %174, ptr noundef %176, i32 noundef %179) #13
  %181 = sub i32 %179, %180
  %182 = getelementptr i8, ptr %174, i32 %181
  %183 = sub i32 %172, %181
  %184 = icmp eq i32 %180, 0
  %185 = icmp ne i32 %183, 0
  %186 = select i1 %184, i1 %185, i1 false
  br i1 %186, label %171, label %187, !prof !8

187:                                              ; preds = %171, %161
  %188 = phi ptr [ %131, %161 ], [ %175, %171 ]
  %189 = phi i32 [ %164, %161 ], [ %181, %171 ]
  %190 = phi i32 [ %165, %161 ], [ %183, %171 ]
  %191 = load i32, ptr %0, align 4
  %192 = lshr i32 %191, 30
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %199, label %194

194:                                              ; preds = %187
  %195 = icmp ne i32 %192, 3
  %196 = load i32, ptr @movable_zone, align 4
  %197 = icmp ne i32 %196, 2
  %198 = select i1 %195, i1 true, i1 %197
  br i1 %198, label %200, label %199

199:                                              ; preds = %194, %187
  tail call void @kunmap_high(ptr noundef %0) #13
  br label %200

200:                                              ; preds = %199, %194, %115
  %201 = phi ptr [ %110, %115 ], [ %188, %194 ], [ %188, %199 ]
  %202 = phi i32 [ %112, %115 ], [ %189, %194 ], [ %189, %199 ]
  %203 = phi i32 [ 0, %115 ], [ %190, %194 ], [ %190, %199 ]
  %204 = getelementptr inbounds %struct.iovec, ptr %201, i32 0, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %202, %205
  %207 = zext i1 %206 to i32
  %208 = getelementptr %struct.iovec, ptr %201, i32 %207
  %209 = select i1 %206, i32 0, i32 %202
  %210 = sub i32 %49, %203
  %211 = load i32, ptr %44, align 8
  %212 = sub i32 %211, %210
  store i32 %212, ptr %44, align 8
  %213 = load ptr, ptr %52, align 4
  %214 = ptrtoint ptr %208 to i32
  %215 = ptrtoint ptr %213 to i32
  %216 = sub i32 %214, %215
  %217 = ashr exact i32 %216, 3
  %218 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %219 = load i32, ptr %218, align 8
  %220 = sub i32 %219, %217
  store i32 %220, ptr %218, align 8
  store ptr %208, ptr %52, align 4
  store i32 %209, ptr %54, align 4
  br label %228

221:                                              ; preds = %41, %41, %41
  %222 = load i32, ptr @pgprot_kernel, align 4
  %223 = or i32 %222, 512
  %224 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %223) #13
  %225 = getelementptr i8, ptr %224, i32 %1
  %226 = tail call i32 @_copy_from_iter(ptr noundef %225, i32 noundef %2, ptr noundef %3)
  tail call void @kunmap_local_indexed(ptr noundef %224) #13
  br label %228

227:                                              ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 909, i32 noundef 9, ptr noundef null) #13
  br label %228

228:                                              ; preds = %227, %221, %200, %48, %40
  %229 = phi i32 [ %226, %221 ], [ 0, %227 ], [ 0, %40 ], [ %210, %200 ], [ 0, %48 ]
  ret i32 %229
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iov_iter_zero(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.xa_state, align 4
  %4 = load i8, ptr %1, align 8
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %6, label %8, !prof !8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @pipe_zero(i32 noundef %0, ptr noundef %1)
  br label %248

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, %0
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ %10, %12 ], [ %0, %8 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %248, label %16, !prof !8

16:                                               ; preds = %13
  switch i8 %4, label %244 [
    i8 0, label %17
    i8 2, label %71
    i8 1, label %116
    i8 4, label %156
  ], !prof !10

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %54, %17
  %23 = phi i32 [ %21, %17 ], [ 0, %54 ]
  %24 = phi i32 [ 0, %17 ], [ %55, %54 ]
  %25 = phi ptr [ %19, %17 ], [ %57, %54 ]
  %26 = phi i32 [ %14, %17 ], [ %56, %54 ]
  %27 = getelementptr inbounds %struct.iovec, ptr %25, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %28, %23
  %30 = tail call i32 @llvm.umin.i32(i32 %26, i32 %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32, !prof !8

32:                                               ; preds = %22
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr i8, ptr %33, i32 %23
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 %30, i32 -1090519040) #14, !srcloc !29
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = tail call ptr @llvm.thread.pointer() #13
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #15, !srcloc !12
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %44 = tail call i32 @arm_clear_user(ptr noundef %34, i32 noundef %30) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %45 = load i32, ptr %27, align 4
  br label %46

46:                                               ; preds = %38, %32
  %47 = phi i32 [ %45, %38 ], [ %28, %32 ]
  %48 = phi i32 [ %44, %38 ], [ %30, %32 ]
  %49 = sub i32 %30, %48
  %50 = add i32 %49, %24
  %51 = add i32 %49, %23
  %52 = sub i32 %26, %49
  %53 = icmp ult i32 %51, %47
  br i1 %53, label %59, label %54

54:                                               ; preds = %46, %22
  %55 = phi i32 [ %50, %46 ], [ %24, %22 ]
  %56 = phi i32 [ %52, %46 ], [ %26, %22 ]
  %57 = getelementptr %struct.iovec, ptr %25, i32 1
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %59, label %22

59:                                               ; preds = %54, %46
  %60 = phi i32 [ %51, %46 ], [ 0, %54 ]
  %61 = phi i32 [ %50, %46 ], [ %55, %54 ]
  %62 = phi ptr [ %25, %46 ], [ %57, %54 ]
  store i32 %60, ptr %20, align 4
  %63 = load ptr, ptr %18, align 4
  %64 = ptrtoint ptr %62 to i32
  %65 = ptrtoint ptr %63 to i32
  %66 = sub i32 %64, %65
  %67 = ashr exact i32 %66, 3
  %68 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 6
  %69 = load i32, ptr %68, align 8
  %70 = sub i32 %69, %67
  store i32 %70, ptr %68, align 8
  store ptr %62, ptr %18, align 4
  br label %244

71:                                               ; preds = %16
  %72 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %76, %71
  %77 = phi i32 [ %105, %76 ], [ %14, %71 ]
  %78 = phi ptr [ %104, %76 ], [ %73, %71 ]
  %79 = phi i32 [ %98, %76 ], [ 0, %71 ]
  %80 = phi i32 [ %102, %76 ], [ %75, %71 ]
  %81 = getelementptr inbounds %struct.bio_vec, ptr %78, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  %84 = load ptr, ptr %78, align 4
  %85 = lshr i32 %83, 12
  %86 = getelementptr %struct.page, ptr %84, i32 %85
  %87 = load i32, ptr @pgprot_kernel, align 4
  %88 = or i32 %87, 512
  %89 = tail call ptr @__kmap_local_page_prot(ptr noundef %86, i32 noundef %88) #13
  %90 = and i32 %83, 4095
  %91 = getelementptr i8, ptr %89, i32 %90
  %92 = getelementptr inbounds %struct.bio_vec, ptr %78, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = sub i32 %93, %80
  %95 = tail call i32 @llvm.umin.i32(i32 %77, i32 %94)
  %96 = sub nuw nsw i32 4096, %90
  %97 = tail call i32 @llvm.umin.i32(i32 %95, i32 %96)
  tail call void @llvm.memset.p0.i32(ptr align 1 %91, i8 0, i32 %97, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %89) #13
  %98 = add i32 %97, %79
  %99 = add i32 %97, %80
  %100 = load i32, ptr %92, align 4
  %101 = icmp eq i32 %99, %100
  %102 = select i1 %101, i32 0, i32 %99
  %103 = zext i1 %101 to i32
  %104 = getelementptr %struct.bio_vec, ptr %78, i32 %103
  %105 = sub i32 %77, %97
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %76

107:                                              ; preds = %76
  %108 = load ptr, ptr %72, align 4
  store i32 %102, ptr %74, align 4
  %109 = ptrtoint ptr %104 to i32
  %110 = ptrtoint ptr %108 to i32
  %111 = sub i32 %109, %110
  %112 = sdiv exact i32 %111, -12
  %113 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 6
  %114 = load i32, ptr %113, align 8
  %115 = add i32 %112, %114
  store i32 %115, ptr %113, align 8
  store ptr %104, ptr %72, align 4
  br label %244

116:                                              ; preds = %16
  %117 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  br label %121

121:                                              ; preds = %139, %116
  %122 = phi ptr [ %118, %116 ], [ %142, %139 ]
  %123 = phi i32 [ 0, %116 ], [ %140, %139 ]
  %124 = phi i32 [ %120, %116 ], [ 0, %139 ]
  %125 = phi i32 [ %14, %116 ], [ %141, %139 ]
  %126 = getelementptr inbounds %struct.kvec, ptr %122, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = sub i32 %127, %124
  %129 = tail call i32 @llvm.umin.i32(i32 %125, i32 %128)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131, !prof !8

131:                                              ; preds = %121
  %132 = load ptr, ptr %122, align 4
  %133 = getelementptr i8, ptr %132, i32 %124
  tail call void @llvm.memset.p0.i32(ptr align 1 %133, i8 0, i32 %129, i1 false)
  %134 = add i32 %129, %123
  %135 = add i32 %129, %124
  %136 = sub i32 %125, %129
  %137 = load i32, ptr %126, align 4
  %138 = icmp ult i32 %135, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %131, %121
  %140 = phi i32 [ %134, %131 ], [ %123, %121 ]
  %141 = phi i32 [ %136, %131 ], [ %125, %121 ]
  %142 = getelementptr %struct.kvec, ptr %122, i32 1
  %143 = icmp eq i32 %141, 0
  br i1 %143, label %144, label %121

144:                                              ; preds = %139, %131
  %145 = phi ptr [ %122, %131 ], [ %142, %139 ]
  %146 = phi i32 [ %134, %131 ], [ %140, %139 ]
  %147 = phi i32 [ %135, %131 ], [ 0, %139 ]
  store i32 %147, ptr %119, align 4
  %148 = load ptr, ptr %117, align 4
  %149 = ptrtoint ptr %145 to i32
  %150 = ptrtoint ptr %148 to i32
  %151 = sub i32 %149, %150
  %152 = ashr exact i32 %151, 3
  %153 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 6
  %154 = load i32, ptr %153, align 8
  %155 = sub i32 %154, %152
  store i32 %155, ptr %153, align 8
  store ptr %145, ptr %117, align 4
  br label %244

156:                                              ; preds = %16
  %157 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 6
  %158 = load i64, ptr %157, align 8
  %159 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = zext i32 %160 to i64
  %162 = add i64 %158, %161
  %163 = sdiv i64 %162, 4096
  %164 = trunc i64 %163 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %165 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %166 = load ptr, ptr %165, align 4
  store ptr %166, ptr %3, align 4
  %167 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  store i32 %164, ptr %167, align 4
  %168 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %169 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %168, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %169, align 4
  %170 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %170, align 4
  %171 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  store ptr null, ptr %171, align 4
  %172 = trunc i64 %162 to i32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %173 = call ptr @xas_find(ptr noundef nonnull %3, i32 noundef -1) #13
  %174 = icmp eq ptr %173, null
  br i1 %174, label %240, label %175

175:                                              ; preds = %156
  %176 = and i32 %172, 4095
  %177 = sub nuw nsw i32 4096, %176
  br label %178

178:                                              ; preds = %234, %175
  %179 = phi i32 [ %237, %234 ], [ %14, %175 ]
  %180 = phi ptr [ %238, %234 ], [ %173, %175 ]
  %181 = phi i32 [ %236, %234 ], [ 0, %175 ]
  %182 = phi i32 [ %235, %234 ], [ %177, %175 ]
  %183 = ptrtoint ptr %180 to i32
  switch i32 %183, label %185 [
    i32 1030, label %234
    i32 1026, label %184
  ]

184:                                              ; preds = %178
  store ptr inttoptr (i32 3 to ptr), ptr %169, align 4
  br label %234

185:                                              ; preds = %178
  %186 = and i32 %183, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %189, label %188, !prof !9

188:                                              ; preds = %185
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 950, i32 noundef 9, ptr noundef null) #13
  br label %240

189:                                              ; preds = %185
  %190 = add i32 %181, %172
  %191 = load volatile i32, ptr %180, align 4
  %192 = and i32 %191, 65536
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = getelementptr %struct.page, ptr %180, i32 1, i32 1
  %196 = getelementptr inbounds %struct.anon.53, ptr %195, i32 0, i32 2
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  br label %199

199:                                              ; preds = %194, %189
  %200 = phi i32 [ %198, %194 ], [ 0, %189 ]
  %201 = shl i32 4096, %200
  %202 = add i32 %201, -1
  %203 = and i32 %202, %190
  %204 = getelementptr %struct.page, ptr %180, i32 1, i32 1
  %205 = getelementptr inbounds %struct.anon.53, ptr %204, i32 0, i32 2
  br label %206

206:                                              ; preds = %221, %199
  %207 = phi i32 [ %182, %199 ], [ 4096, %221 ]
  %208 = phi i32 [ %181, %199 ], [ %230, %221 ]
  %209 = phi i32 [ %203, %199 ], [ %233, %221 ]
  %210 = phi i32 [ %179, %199 ], [ %231, %221 ]
  %211 = load volatile i32, ptr %180, align 4
  %212 = and i32 %211, 65536
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %206
  %215 = load i8, ptr %205, align 1
  %216 = zext i8 %215 to i32
  br label %217

217:                                              ; preds = %214, %206
  %218 = phi i32 [ %216, %214 ], [ 0, %206 ]
  %219 = shl i32 4096, %218
  %220 = icmp ult i32 %209, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %217
  %222 = lshr i32 %209, 12
  %223 = getelementptr %struct.page, ptr %180, i32 %222
  %224 = load i32, ptr @pgprot_kernel, align 4
  %225 = or i32 %224, 512
  %226 = call ptr @__kmap_local_page_prot(ptr noundef %223, i32 noundef %225) #13
  %227 = and i32 %209, 4095
  %228 = getelementptr i8, ptr %226, i32 %227
  %229 = call i32 @llvm.umin.i32(i32 %210, i32 %207)
  call void @llvm.memset.p0.i32(ptr align 1 %228, i8 0, i32 %229, i1 false)
  call void @kunmap_local_indexed(ptr noundef %228) #13
  %230 = add i32 %229, %208
  %231 = sub i32 %210, %229
  %232 = icmp eq i32 %231, 0
  %233 = add i32 %229, %209
  br i1 %232, label %240, label %206

234:                                              ; preds = %217, %184, %178
  %235 = phi i32 [ %182, %184 ], [ %182, %178 ], [ %207, %217 ]
  %236 = phi i32 [ %181, %184 ], [ %181, %178 ], [ %208, %217 ]
  %237 = phi i32 [ %179, %184 ], [ %179, %178 ], [ %210, %217 ]
  %238 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %3)
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %178

240:                                              ; preds = %234, %221, %188, %156
  %241 = phi i32 [ %181, %188 ], [ 0, %156 ], [ %230, %221 ], [ %236, %234 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %242 = load i32, ptr %159, align 4
  %243 = add i32 %242, %241
  store i32 %243, ptr %159, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %244

244:                                              ; preds = %240, %144, %107, %59, %16
  %245 = phi i32 [ %61, %59 ], [ %98, %107 ], [ %146, %144 ], [ %241, %240 ], [ %14, %16 ]
  %246 = load i32, ptr %9, align 8
  %247 = sub i32 %246, %245
  store i32 %247, ptr %9, align 8
  br label %248

248:                                              ; preds = %244, %13, %6
  %249 = phi i32 [ %7, %6 ], [ %245, %244 ], [ 0, %13 ]
  ret i32 %249
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pipe_zero(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !17
  %10 = tail call fastcc zeroext i1 @sanity(ptr noundef %1)
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = call fastcc i32 @push_pipe(ptr noundef %1, i32 noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %51, label %14, !prof !8

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 17
  %16 = load i32, ptr %4, align 4
  %17 = load i32, ptr %3, align 4
  %18 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 6
  %19 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 3
  %20 = sub i32 4096, %16
  %21 = tail call i32 @llvm.umin.i32(i32 %12, i32 %20)
  %22 = load ptr, ptr %15, align 4
  %23 = and i32 %17, %9
  %24 = getelementptr %struct.pipe_buffer, ptr %22, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr @pgprot_kernel, align 4
  %27 = or i32 %26, 512
  %28 = tail call ptr @__kmap_local_page_prot(ptr noundef %25, i32 noundef %27) #13
  %29 = getelementptr i8, ptr %28, i32 %16
  tail call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %21, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %28) #13
  store i32 %17, ptr %18, align 8
  %30 = add i32 %21, %16
  store i32 %30, ptr %19, align 4
  %31 = sub i32 %12, %21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %33, %14
  %34 = phi i32 [ %36, %33 ], [ %17, %14 ]
  %35 = phi i32 [ %45, %33 ], [ %31, %14 ]
  %36 = add i32 %34, 1
  %37 = tail call i32 @llvm.umin.i32(i32 %35, i32 4096)
  %38 = load ptr, ptr %15, align 4
  %39 = and i32 %36, %9
  %40 = getelementptr %struct.pipe_buffer, ptr %38, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr @pgprot_kernel, align 4
  %43 = or i32 %42, 512
  %44 = tail call ptr @__kmap_local_page_prot(ptr noundef %41, i32 noundef %43) #13
  tail call void @llvm.memset.p0.i32(ptr align 1 %44, i8 0, i32 %37, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %44) #13
  store i32 %36, ptr %18, align 8
  store i32 %37, ptr %19, align 4
  %45 = sub i32 %35, %37
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %33, !llvm.loop !30

47:                                               ; preds = %33, %14
  %48 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %49 = load i32, ptr %48, align 8
  %50 = sub i32 %49, %12
  store i32 %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %47, %11, %2
  %52 = phi i32 [ %12, %47 ], [ 0, %2 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_page_from_iter_atomic(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.xa_state, align 4
  %6 = load i32, ptr @pgprot_kernel, align 4
  %7 = or i32 %6, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 149
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %12 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %7) #13
  %13 = getelementptr i8, ptr %12, i32 %1
  %14 = add i32 %2, %1
  %15 = icmp uge i32 %14, %2
  %16 = icmp ult i32 %14, 4097
  %17 = and i1 %15, %16
  br i1 %17, label %52, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !9

23:                                               ; preds = %18
  %24 = add i32 %20, -1
  %25 = ptrtoint ptr %0 to i32
  br label %28

26:                                               ; preds = %18
  %27 = ptrtoint ptr %0 to i32
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %25, %23 ], [ %27, %26 ]
  %30 = phi i32 [ %24, %23 ], [ %27, %26 ]
  %31 = sub i32 %29, %30
  %32 = shl i32 %31, 7
  %33 = add i32 %32, %14
  %34 = icmp ult i32 %33, %2
  br i1 %34, label %49, label %35, !prof !8

35:                                               ; preds = %28
  %36 = inttoptr i32 %30 to ptr
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr %struct.page, ptr %36, i32 1, i32 1
  %42 = getelementptr inbounds %struct.anon.53, ptr %41, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i32 [ %44, %40 ], [ 0, %35 ]
  %47 = shl i32 4096, %46
  %48 = icmp ugt i32 %33, %47
  br i1 %48, label %49, label %52, !prof !8

49:                                               ; preds = %45, %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 844, i32 noundef 9, ptr noundef null) #13
  tail call void @kunmap_local_indexed(ptr noundef %12) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %50 = load i32, ptr %9, align 8
  %51 = add i32 %50, -1
  store i32 %51, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %304

52:                                               ; preds = %45, %4
  %53 = load i8, ptr %3, align 8
  switch i8 %53, label %57 [
    i8 3, label %54
    i8 5, label %54
  ], !prof !31

54:                                               ; preds = %52, %52
  tail call void @kunmap_local_indexed(ptr noundef %12) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %55 = load i32, ptr %9, align 8
  %56 = add i32 %55, -1
  store i32 %56, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 966, i32 noundef 9, ptr noundef null) #13
  br label %304

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 4
  %59 = load i32, ptr %58, align 8
  %60 = icmp ult i32 %59, %2
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ %59, %61 ], [ %2, %57 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %300, label %65, !prof !8

65:                                               ; preds = %62
  switch i8 %53, label %296 [
    i8 0, label %66
    i8 2, label %120
    i8 1, label %166
    i8 4, label %207
  ], !prof !10

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  br label %72

72:                                               ; preds = %103, %66
  %73 = phi i32 [ %70, %66 ], [ 0, %103 ]
  %74 = phi i32 [ 0, %66 ], [ %104, %103 ]
  %75 = phi ptr [ %68, %66 ], [ %106, %103 ]
  %76 = phi i32 [ %63, %66 ], [ %105, %103 ]
  %77 = getelementptr inbounds %struct.iovec, ptr %75, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %78, %73
  %80 = tail call i32 @llvm.umin.i32(i32 %76, i32 %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %103, label %82, !prof !8

82:                                               ; preds = %72
  %83 = load ptr, ptr %75, align 4
  %84 = getelementptr i8, ptr %83, i32 %73
  %85 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %84, i32 %80, i32 -1090519040) #14, !srcloc !21
  %86 = extractvalue { i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = getelementptr i8, ptr %13, i32 %74
  %90 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #15, !srcloc !12
  %91 = and i32 %90, -13
  %92 = or i32 %91, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %93 = tail call i32 @arm_copy_from_user(ptr noundef %89, ptr noundef %84, i32 noundef %80) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %94 = load i32, ptr %77, align 4
  br label %95

95:                                               ; preds = %88, %82
  %96 = phi i32 [ %94, %88 ], [ %78, %82 ]
  %97 = phi i32 [ %93, %88 ], [ %80, %82 ]
  %98 = sub i32 %80, %97
  %99 = add i32 %98, %74
  %100 = add i32 %98, %73
  %101 = sub i32 %76, %98
  %102 = icmp ult i32 %100, %96
  br i1 %102, label %108, label %103

103:                                              ; preds = %95, %72
  %104 = phi i32 [ %99, %95 ], [ %74, %72 ]
  %105 = phi i32 [ %101, %95 ], [ %76, %72 ]
  %106 = getelementptr %struct.iovec, ptr %75, i32 1
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %108, label %72

108:                                              ; preds = %103, %95
  %109 = phi i32 [ %100, %95 ], [ 0, %103 ]
  %110 = phi i32 [ %99, %95 ], [ %104, %103 ]
  %111 = phi ptr [ %75, %95 ], [ %106, %103 ]
  store i32 %109, ptr %69, align 4
  %112 = load ptr, ptr %67, align 4
  %113 = ptrtoint ptr %111 to i32
  %114 = ptrtoint ptr %112 to i32
  %115 = sub i32 %113, %114
  %116 = ashr exact i32 %115, 3
  %117 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %118 = load i32, ptr %117, align 8
  %119 = sub i32 %118, %116
  store i32 %119, ptr %117, align 8
  store ptr %111, ptr %67, align 4
  br label %296

120:                                              ; preds = %65
  %121 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  br label %125

125:                                              ; preds = %125, %120
  %126 = phi i32 [ %155, %125 ], [ %63, %120 ]
  %127 = phi ptr [ %154, %125 ], [ %122, %120 ]
  %128 = phi i32 [ %148, %125 ], [ 0, %120 ]
  %129 = phi i32 [ %152, %125 ], [ %124, %120 ]
  %130 = getelementptr inbounds %struct.bio_vec, ptr %127, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, %129
  %133 = load ptr, ptr %127, align 4
  %134 = lshr i32 %132, 12
  %135 = getelementptr %struct.page, ptr %133, i32 %134
  %136 = load i32, ptr @pgprot_kernel, align 4
  %137 = or i32 %136, 512
  %138 = tail call ptr @__kmap_local_page_prot(ptr noundef %135, i32 noundef %137) #13
  %139 = and i32 %132, 4095
  %140 = getelementptr i8, ptr %138, i32 %139
  %141 = getelementptr inbounds %struct.bio_vec, ptr %127, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = sub i32 %142, %129
  %144 = tail call i32 @llvm.umin.i32(i32 %126, i32 %143)
  %145 = sub nuw nsw i32 4096, %139
  %146 = tail call i32 @llvm.umin.i32(i32 %144, i32 %145)
  %147 = getelementptr i8, ptr %13, i32 %128
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %147, ptr align 1 %140, i32 %146, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %138) #13
  %148 = add i32 %146, %128
  %149 = add i32 %146, %129
  %150 = load i32, ptr %141, align 4
  %151 = icmp eq i32 %149, %150
  %152 = select i1 %151, i32 0, i32 %149
  %153 = zext i1 %151 to i32
  %154 = getelementptr %struct.bio_vec, ptr %127, i32 %153
  %155 = sub i32 %126, %146
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %125

157:                                              ; preds = %125
  %158 = load ptr, ptr %121, align 4
  store i32 %152, ptr %123, align 4
  %159 = ptrtoint ptr %154 to i32
  %160 = ptrtoint ptr %158 to i32
  %161 = sub i32 %159, %160
  %162 = sdiv exact i32 %161, -12
  %163 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %164 = load i32, ptr %163, align 8
  %165 = add i32 %162, %164
  store i32 %165, ptr %163, align 8
  store ptr %154, ptr %121, align 4
  br label %296

166:                                              ; preds = %65
  %167 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %170 = load i32, ptr %169, align 4
  br label %171

171:                                              ; preds = %190, %166
  %172 = phi ptr [ %168, %166 ], [ %193, %190 ]
  %173 = phi i32 [ 0, %166 ], [ %191, %190 ]
  %174 = phi i32 [ %170, %166 ], [ 0, %190 ]
  %175 = phi i32 [ %63, %166 ], [ %192, %190 ]
  %176 = getelementptr inbounds %struct.kvec, ptr %172, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = sub i32 %177, %174
  %179 = tail call i32 @llvm.umin.i32(i32 %175, i32 %178)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %190, label %181, !prof !8

181:                                              ; preds = %171
  %182 = load ptr, ptr %172, align 4
  %183 = getelementptr i8, ptr %182, i32 %174
  %184 = getelementptr i8, ptr %13, i32 %173
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %184, ptr align 1 %183, i32 %179, i1 false)
  %185 = add i32 %179, %173
  %186 = add i32 %179, %174
  %187 = sub i32 %175, %179
  %188 = load i32, ptr %176, align 4
  %189 = icmp ult i32 %186, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %181, %171
  %191 = phi i32 [ %185, %181 ], [ %173, %171 ]
  %192 = phi i32 [ %187, %181 ], [ %175, %171 ]
  %193 = getelementptr %struct.kvec, ptr %172, i32 1
  %194 = icmp eq i32 %192, 0
  br i1 %194, label %195, label %171

195:                                              ; preds = %190, %181
  %196 = phi ptr [ %172, %181 ], [ %193, %190 ]
  %197 = phi i32 [ %185, %181 ], [ %191, %190 ]
  %198 = phi i32 [ %186, %181 ], [ 0, %190 ]
  store i32 %198, ptr %169, align 4
  %199 = load ptr, ptr %167, align 4
  %200 = ptrtoint ptr %196 to i32
  %201 = ptrtoint ptr %199 to i32
  %202 = sub i32 %200, %201
  %203 = ashr exact i32 %202, 3
  %204 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %205 = load i32, ptr %204, align 8
  %206 = sub i32 %205, %203
  store i32 %206, ptr %204, align 8
  store ptr %196, ptr %167, align 4
  br label %296

207:                                              ; preds = %65
  %208 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %209 = load i64, ptr %208, align 8
  %210 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  %212 = zext i32 %211 to i64
  %213 = add i64 %209, %212
  %214 = sdiv i64 %213, 4096
  %215 = trunc i64 %214 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %216 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %217 = load ptr, ptr %216, align 4
  store ptr %217, ptr %5, align 4
  %218 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  store i32 %215, ptr %218, align 4
  %219 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %220 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %219, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %220, align 4
  %221 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %221, align 4
  %222 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %222, align 4
  %223 = trunc i64 %213 to i32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %224 = call ptr @xas_find(ptr noundef nonnull %5, i32 noundef -1) #13
  %225 = icmp eq ptr %224, null
  br i1 %225, label %292, label %226

226:                                              ; preds = %207
  %227 = and i32 %223, 4095
  %228 = sub nuw nsw i32 4096, %227
  br label %229

229:                                              ; preds = %286, %226
  %230 = phi i32 [ %289, %286 ], [ %63, %226 ]
  %231 = phi ptr [ %290, %286 ], [ %224, %226 ]
  %232 = phi i32 [ %288, %286 ], [ 0, %226 ]
  %233 = phi i32 [ %287, %286 ], [ %228, %226 ]
  %234 = ptrtoint ptr %231 to i32
  switch i32 %234, label %236 [
    i32 1030, label %286
    i32 1026, label %235
  ]

235:                                              ; preds = %229
  store ptr inttoptr (i32 3 to ptr), ptr %220, align 4
  br label %286

236:                                              ; preds = %229
  %237 = and i32 %234, 1
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %240, label %239, !prof !9

239:                                              ; preds = %236
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 972, i32 noundef 9, ptr noundef null) #13
  br label %292

240:                                              ; preds = %236
  %241 = add i32 %232, %223
  %242 = load volatile i32, ptr %231, align 4
  %243 = and i32 %242, 65536
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = getelementptr %struct.page, ptr %231, i32 1, i32 1
  %247 = getelementptr inbounds %struct.anon.53, ptr %246, i32 0, i32 2
  %248 = load i8, ptr %247, align 1
  %249 = zext i8 %248 to i32
  br label %250

250:                                              ; preds = %245, %240
  %251 = phi i32 [ %249, %245 ], [ 0, %240 ]
  %252 = shl i32 4096, %251
  %253 = add i32 %252, -1
  %254 = and i32 %253, %241
  %255 = getelementptr %struct.page, ptr %231, i32 1, i32 1
  %256 = getelementptr inbounds %struct.anon.53, ptr %255, i32 0, i32 2
  br label %257

257:                                              ; preds = %272, %250
  %258 = phi i32 [ %233, %250 ], [ 4096, %272 ]
  %259 = phi i32 [ %232, %250 ], [ %282, %272 ]
  %260 = phi i32 [ %254, %250 ], [ %285, %272 ]
  %261 = phi i32 [ %230, %250 ], [ %283, %272 ]
  %262 = load volatile i32, ptr %231, align 4
  %263 = and i32 %262, 65536
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %257
  %266 = load i8, ptr %256, align 1
  %267 = zext i8 %266 to i32
  br label %268

268:                                              ; preds = %265, %257
  %269 = phi i32 [ %267, %265 ], [ 0, %257 ]
  %270 = shl i32 4096, %269
  %271 = icmp ult i32 %260, %270
  br i1 %271, label %272, label %286

272:                                              ; preds = %268
  %273 = lshr i32 %260, 12
  %274 = getelementptr %struct.page, ptr %231, i32 %273
  %275 = load i32, ptr @pgprot_kernel, align 4
  %276 = or i32 %275, 512
  %277 = call ptr @__kmap_local_page_prot(ptr noundef %274, i32 noundef %276) #13
  %278 = and i32 %260, 4095
  %279 = getelementptr i8, ptr %277, i32 %278
  %280 = call i32 @llvm.umin.i32(i32 %261, i32 %258)
  %281 = getelementptr i8, ptr %13, i32 %259
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %281, ptr align 1 %279, i32 %280, i1 false)
  call void @kunmap_local_indexed(ptr noundef %279) #13
  %282 = add i32 %280, %259
  %283 = sub i32 %261, %280
  %284 = icmp eq i32 %283, 0
  %285 = add i32 %280, %260
  br i1 %284, label %292, label %257

286:                                              ; preds = %268, %235, %229
  %287 = phi i32 [ %233, %235 ], [ %233, %229 ], [ %258, %268 ]
  %288 = phi i32 [ %232, %235 ], [ %232, %229 ], [ %259, %268 ]
  %289 = phi i32 [ %230, %235 ], [ %230, %229 ], [ %261, %268 ]
  %290 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %5)
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %229

292:                                              ; preds = %286, %272, %239, %207
  %293 = phi i32 [ %232, %239 ], [ 0, %207 ], [ %282, %272 ], [ %288, %286 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %294 = load i32, ptr %210, align 4
  %295 = add i32 %294, %293
  store i32 %295, ptr %210, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %296

296:                                              ; preds = %292, %195, %157, %108, %65
  %297 = phi i32 [ %110, %108 ], [ %148, %157 ], [ %197, %195 ], [ %293, %292 ], [ %63, %65 ]
  %298 = load i32, ptr %58, align 8
  %299 = sub i32 %298, %297
  store i32 %299, ptr %58, align 8
  br label %300

300:                                              ; preds = %296, %62
  %301 = phi i32 [ %297, %296 ], [ 0, %62 ]
  call void @kunmap_local_indexed(ptr noundef %12) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %302 = load i32, ptr %9, align 8
  %303 = add i32 %302, -1
  store i32 %303, ptr %9, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %304

304:                                              ; preds = %300, %54, %49
  %305 = phi i32 [ 0, %49 ], [ 0, %54 ], [ %301, %300 ]
  ret i32 %305
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iov_iter_advance(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ %4, %6 ], [ %1, %2 ]
  %9 = load i8, ptr %0, align 8
  switch i8 %9, label %50 [
    i8 0, label %10
    i8 1, label %10
    i8 2, label %41
    i8 3, label %42
    i8 4, label %43
    i8 5, label %48
  ], !prof !32

10:                                               ; preds = %7, %7
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %10
  %13 = sub i32 %4, %8
  store i32 %13, ptr %3, align 8
  %14 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr %struct.iovec, ptr %18, i32 %20
  %22 = icmp ult ptr %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %29, %12
  %24 = phi ptr [ %31, %29 ], [ %18, %12 ]
  %25 = phi i32 [ %30, %29 ], [ %16, %12 ]
  %26 = getelementptr inbounds %struct.iovec, ptr %24, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %33, label %29, !prof !9

29:                                               ; preds = %23
  %30 = sub i32 %25, %27
  %31 = getelementptr %struct.iovec, ptr %24, i32 1
  %32 = icmp ult ptr %31, %21
  br i1 %32, label %23, label %33

33:                                               ; preds = %29, %23, %12
  %34 = phi i32 [ %16, %12 ], [ %30, %29 ], [ %25, %23 ]
  %35 = phi ptr [ %18, %12 ], [ %31, %29 ], [ %24, %23 ]
  store i32 %34, ptr %14, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = ptrtoint ptr %18 to i32
  %38 = sub i32 %36, %37
  %39 = ashr exact i32 %38, 3
  %40 = sub i32 %20, %39
  store i32 %40, ptr %19, align 8
  store ptr %35, ptr %17, align 4
  br label %50

41:                                               ; preds = %7
  tail call fastcc void @iov_iter_bvec_advance(ptr noundef %0, i32 noundef %8)
  br label %50

42:                                               ; preds = %7
  tail call fastcc void @pipe_advance(ptr noundef %0, i32 noundef %8)
  br label %50

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %8
  store i32 %46, ptr %44, align 4
  %47 = sub i32 %4, %8
  store i32 %47, ptr %3, align 8
  br label %50

48:                                               ; preds = %7
  %49 = sub i32 %4, %8
  store i32 %49, ptr %3, align 8
  br label %50

50:                                               ; preds = %48, %43, %42, %41, %33, %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iov_iter_bvec_advance(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult i32 %4, %1
  %10 = load i1, ptr @bvec_iter_advance.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %2
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.2) #13
  br label %14

14:                                               ; preds = %13, %2
  br i1 %9, label %29, label %15

15:                                               ; preds = %14
  %16 = sub i32 %4, %1
  %17 = add i32 %6, %1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %25, %15
  %20 = phi i32 [ %26, %25 ], [ %17, %15 ]
  %21 = phi i32 [ %27, %25 ], [ 0, %15 ]
  %22 = getelementptr %struct.bio_vec, ptr %8, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = sub i32 %20, %23
  %27 = add i32 %21, 1
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %19

29:                                               ; preds = %25, %19, %15, %14
  %30 = phi i32 [ 0, %14 ], [ %16, %15 ], [ %16, %25 ], [ %16, %19 ]
  %31 = phi i32 [ 0, %14 ], [ 0, %15 ], [ %21, %19 ], [ %27, %25 ]
  %32 = phi i32 [ %6, %14 ], [ 0, %15 ], [ %20, %19 ], [ 0, %25 ]
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr %struct.bio_vec, ptr %33, i32 %31
  store ptr %34, ptr %7, align 4
  %35 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = sub i32 %36, %31
  store i32 %37, ptr %35, align 8
  store i32 %30, ptr %3, align 8
  store i32 %32, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pipe_advance(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = and i32 %11, %9
  br i1 %14, label %23, label %18

18:                                               ; preds = %6
  %19 = getelementptr %struct.pipe_buffer, ptr %16, i32 %17, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %13, %1
  %22 = sub i32 %21, %20
  br label %23

23:                                               ; preds = %18, %6
  %24 = phi i32 [ %22, %18 ], [ %1, %6 ]
  %25 = getelementptr %struct.pipe_buffer, ptr %16, i32 %17, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %28, %23
  %29 = phi i32 [ %36, %28 ], [ %26, %23 ]
  %30 = phi i32 [ %32, %28 ], [ %24, %23 ]
  %31 = phi i32 [ %33, %28 ], [ %11, %23 ]
  %32 = sub i32 %30, %29
  %33 = add i32 %31, 1
  %34 = and i32 %33, %9
  %35 = getelementptr %struct.pipe_buffer, ptr %16, i32 %34, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %32, %36
  br i1 %37, label %28, label %38

38:                                               ; preds = %28, %23
  %39 = phi i32 [ %11, %23 ], [ %33, %28 ]
  %40 = phi i32 [ %24, %23 ], [ %32, %28 ]
  %41 = phi i32 [ %17, %23 ], [ %34, %28 ]
  store i32 %39, ptr %10, align 8
  %42 = getelementptr %struct.pipe_buffer, ptr %16, i32 %41, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %40
  store i32 %44, ptr %12, align 4
  br label %45

45:                                               ; preds = %38, %2
  %46 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = sub i32 %47, %1
  store i32 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  %56 = icmp eq i32 %52, %50
  br i1 %56, label %90, label %57

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 17
  %65 = load ptr, ptr %64, align 4
  %66 = and i32 %59, %55
  %67 = getelementptr %struct.pipe_buffer, ptr %65, i32 %66, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 %61, %68
  %70 = getelementptr %struct.pipe_buffer, ptr %65, i32 %66, i32 2
  store i32 %69, ptr %70, align 4
  %71 = add i32 %59, 1
  br label %72

72:                                               ; preds = %63, %57
  %73 = phi i32 [ %71, %63 ], [ %59, %57 ]
  %74 = icmp eq i32 %52, %73
  br i1 %74, label %88, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 17
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ %52, %75 ], [ %79, %77 ]
  %79 = add i32 %78, -1
  %80 = load ptr, ptr %76, align 4
  %81 = and i32 %79, %55
  %82 = getelementptr %struct.pipe_buffer, ptr %80, i32 %81
  %83 = getelementptr %struct.pipe_buffer, ptr %80, i32 %81, i32 3
  %84 = load ptr, ptr %83, align 4
  store ptr null, ptr %83, align 4
  %85 = getelementptr inbounds %struct.pipe_buf_operations, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  tail call void %86(ptr noundef %4, ptr noundef %82) #13
  %87 = icmp eq i32 %79, %73
  br i1 %87, label %88, label %77

88:                                               ; preds = %77, %72
  %89 = phi i32 [ %52, %72 ], [ %73, %77 ]
  store i32 %89, ptr %51, align 4
  br label %90

90:                                               ; preds = %88, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iov_iter_revert(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %101, label %4

4:                                                ; preds = %2
  %5 = icmp ugt i32 %1, 2147479552
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1088, i32 noundef 9, ptr noundef null) #13
  br label %101

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, %1
  store i32 %10, ptr %8, align 8
  %11 = load i8, ptr %0, align 8
  switch i8 %11, label %58 [
    i8 3, label %12
    i8 5, label %101
  ], !prof !31

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pipe_inode_info, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.pipe_inode_info, ptr %14, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = and i32 %19, %17
  %25 = getelementptr %struct.pipe_buffer, ptr %23, i32 %24, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %21, %26
  %28 = icmp ugt i32 %27, %1
  br i1 %28, label %35, label %29

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.anon.61, ptr %18, i32 0, i32 1
  br label %40

31:                                               ; preds = %49
  %32 = getelementptr %struct.pipe_buffer, ptr %23, i32 %51, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %53, %33
  br label %35

35:                                               ; preds = %31, %12
  %36 = phi i32 [ %1, %12 ], [ %44, %31 ]
  %37 = phi i32 [ %19, %12 ], [ %50, %31 ]
  %38 = phi i32 [ %21, %12 ], [ %34, %31 ]
  %39 = sub i32 %38, %36
  br label %55

40:                                               ; preds = %49, %29
  %41 = phi i32 [ %27, %29 ], [ %53, %49 ]
  %42 = phi i32 [ %19, %29 ], [ %50, %49 ]
  %43 = phi i32 [ %1, %29 ], [ %44, %49 ]
  %44 = sub i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, ptr %30, align 4
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %46, %40
  %50 = add i32 %42, -1
  %51 = and i32 %50, %17
  %52 = getelementptr %struct.pipe_buffer, ptr %23, i32 %51, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %44, %53
  br i1 %54, label %31, label %40

55:                                               ; preds = %46, %35
  %56 = phi i32 [ %37, %35 ], [ %42, %46 ]
  %57 = phi i32 [ %39, %35 ], [ 0, %46 ]
  store i32 %57, ptr %20, align 4
  store i32 %56, ptr %18, align 8
  tail call fastcc void @pipe_truncate(ptr noundef %0)
  br label %101

58:                                               ; preds = %7
  %59 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %60, %1
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = sub i32 %60, %1
  store i32 %63, ptr %59, align 4
  br label %101

64:                                               ; preds = %58
  %65 = sub i32 %1, %60
  switch i8 %11, label %84 [
    i8 4, label %66
    i8 2, label %67
  ]

66:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/iov_iter.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1125, 0\0A.popsection", ""() #13, !srcloc !33
  unreachable

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %71 = load i32, ptr %70, align 8
  br label %72

72:                                               ; preds = %72, %67
  %73 = phi i32 [ %71, %67 ], [ %79, %72 ]
  %74 = phi i32 [ %65, %67 ], [ %81, %72 ]
  %75 = phi ptr [ %69, %67 ], [ %76, %72 ]
  %76 = getelementptr %struct.bio_vec, ptr %75, i32 -1
  %77 = getelementptr %struct.bio_vec, ptr %75, i32 -1, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %73, 1
  store i32 %79, ptr %70, align 8
  %80 = icmp ugt i32 %74, %78
  %81 = sub i32 %74, %78
  br i1 %80, label %72, label %82

82:                                               ; preds = %72
  store ptr %76, ptr %68, align 4
  %83 = sub i32 %78, %74
  store i32 %83, ptr %59, align 4
  br label %101

84:                                               ; preds = %64
  %85 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %88 = load i32, ptr %87, align 8
  br label %89

89:                                               ; preds = %89, %84
  %90 = phi i32 [ %88, %84 ], [ %96, %89 ]
  %91 = phi i32 [ %65, %84 ], [ %98, %89 ]
  %92 = phi ptr [ %86, %84 ], [ %93, %89 ]
  %93 = getelementptr %struct.iovec, ptr %92, i32 -1
  %94 = getelementptr %struct.iovec, ptr %92, i32 -1, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %90, 1
  store i32 %96, ptr %87, align 8
  %97 = icmp ugt i32 %91, %95
  %98 = sub i32 %91, %95
  br i1 %97, label %89, label %99

99:                                               ; preds = %89
  store ptr %93, ptr %85, align 4
  %100 = sub i32 %95, %91
  store i32 %100, ptr %59, align 4
  br label %101

101:                                              ; preds = %99, %82, %62, %55, %7, %6, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pipe_truncate(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %7, %5
  br i1 %11, label %45, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = and i32 %14, %10
  %22 = getelementptr %struct.pipe_buffer, ptr %20, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %16, %23
  %25 = getelementptr %struct.pipe_buffer, ptr %20, i32 %21, i32 2
  store i32 %24, ptr %25, align 4
  %26 = add i32 %14, 1
  br label %27

27:                                               ; preds = %18, %12
  %28 = phi i32 [ %26, %18 ], [ %14, %12 ]
  %29 = icmp eq i32 %7, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 17
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i32 [ %7, %30 ], [ %34, %32 ]
  %34 = add i32 %33, -1
  %35 = load ptr, ptr %31, align 4
  %36 = and i32 %34, %10
  %37 = getelementptr %struct.pipe_buffer, ptr %35, i32 %36
  %38 = getelementptr %struct.pipe_buffer, ptr %35, i32 %36, i32 3
  %39 = load ptr, ptr %38, align 4
  store ptr null, ptr %38, align 4
  %40 = getelementptr inbounds %struct.pipe_buf_operations, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %3, ptr noundef %37) #13
  %42 = icmp eq i32 %34, %28
  br i1 %42, label %43, label %32

43:                                               ; preds = %32, %27
  %44 = phi i32 [ %7, %27 ], [ %28, %32 ]
  store i32 %44, ptr %6, align 4
  br label %45

45:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @iov_iter_single_seg_count(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 8
  switch i8 %6, label %29 [
    i8 0, label %7
    i8 1, label %7
    i8 2, label %18
  ], !prof !34

7:                                                ; preds = %5, %5
  %8 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iovec, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = tail call i32 @llvm.umin.i32(i32 %9, i32 %16)
  br label %32

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bio_vec, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %24, %26
  %28 = tail call i32 @llvm.umin.i32(i32 %20, i32 %27)
  br label %32

29:                                               ; preds = %5, %1
  %30 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %29, %18, %7
  %33 = phi i32 [ %17, %7 ], [ %28, %18 ], [ %31, %29 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iov_iter_kvec(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp ult i32 %1, 2
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1176, i32 noundef 9, ptr noundef null) #13
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp ne i32 %1, 0
  %10 = zext i1 %9 to i8
  store i8 1, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %0, i32 2
  store i8 %10, ptr %12, align 2
  %13 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %4, ptr %14, align 8
  %15 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %3, ptr %16, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iov_iter_bvec(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp ult i32 %1, 2
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1192, i32 noundef 9, ptr noundef null) #13
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp ne i32 %1, 0
  %10 = zext i1 %9 to i8
  store i8 2, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %0, i32 2
  store i8 %10, ptr %12, align 2
  %13 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %4, ptr %14, align 8
  %15 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %3, ptr %16, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iov_iter_pipe(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/iov_iter.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1208, 0\0A.popsection", ""() #13, !srcloc !35
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pipe_inode_info, ptr %2, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pipe_inode_info, ptr %2, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %9, %11
  %15 = icmp ult i32 %14, %13
  br i1 %15, label %18, label %16, !prof !9

16:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1209, i32 noundef 9, ptr noundef null) #13
  %17 = load i32, ptr %8, align 4
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i32 [ %17, %16 ], [ %9, %7 ]
  store i8 3, ptr %0, align 8
  %20 = getelementptr inbounds i8, ptr %0, i32 1
  store i8 0, ptr %20, align 1
  %21 = getelementptr inbounds i8, ptr %0, i32 2
  store i8 0, ptr %21, align 2
  %22 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %3, ptr %23, align 8
  %24 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr %2, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %19, ptr %25, align 8
  %26 = getelementptr inbounds i8, ptr %0, i32 20
  store i32 %19, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iov_iter_xarray(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = icmp ult i32 %1, 2
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/iov_iter.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1238, 0\0A.popsection", ""() #13, !srcloc !36
  unreachable

8:                                                ; preds = %5
  %9 = icmp ne i32 %1, 0
  %10 = zext i1 %9 to i8
  store i8 4, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %0, i32 2
  store i8 %10, ptr %12, align 2
  %13 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %4, ptr %14, align 8
  %15 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %3, ptr %16, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iov_iter_discard(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/iov_iter.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1261, 0\0A.popsection", ""() #13, !srcloc !37
  unreachable

6:                                                ; preds = %3
  store i8 5, ptr %0, align 8
  %7 = getelementptr inbounds i8, ptr %0, i32 1
  %8 = getelementptr inbounds i8, ptr %0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(7) %7, i8 0, i64 7, i1 false)
  store i32 %2, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %0, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @iov_iter_alignment(ptr nocapture noundef readonly %0) #7 {
  %2 = load i8, ptr %0, align 8
  switch i8 %2, label %74 [
    i8 0, label %3
    i8 1, label %3
    i8 2, label %38
    i8 3, label %40
    i8 4, label %64
  ], !prof !38

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %74, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %33, %7
  %15 = phi i32 [ 0, %7 ], [ %36, %33 ]
  %16 = phi i32 [ %9, %7 ], [ 0, %33 ]
  %17 = phi i32 [ %11, %7 ], [ %35, %33 ]
  %18 = phi i32 [ 0, %7 ], [ %34, %33 ]
  %19 = getelementptr %struct.iovec, ptr %13, i32 %15, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %16
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = sub i32 %20, %16
  %24 = getelementptr %struct.iovec, ptr %13, i32 %15
  %25 = load ptr, ptr %24, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = add i32 %16, %26
  %28 = tail call i32 @llvm.umin.i32(i32 %23, i32 %17) #13
  %29 = or i32 %28, %18
  %30 = or i32 %29, %27
  %31 = sub i32 %17, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %74, label %33

33:                                               ; preds = %22, %14
  %34 = phi i32 [ %30, %22 ], [ %18, %14 ]
  %35 = phi i32 [ %31, %22 ], [ %17, %14 ]
  %36 = add nuw i32 %15, 1
  %37 = icmp eq i32 %36, %5
  br i1 %37, label %74, label %14

38:                                               ; preds = %1
  %39 = tail call fastcc i32 @iov_iter_alignment_bvec(ptr noundef %0)
  br label %74

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.pipe_inode_info, ptr %42, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, -1
  %46 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.pipe_inode_info, ptr %42, i32 0, i32 17
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, %45
  %59 = getelementptr %struct.pipe_buffer, ptr %55, i32 %58, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, @default_pipe_buf_ops
  %62 = select i1 %61, i32 %51, i32 0
  %63 = or i32 %62, %47
  br label %74

64:                                               ; preds = %1
  %65 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %70 = load i32, ptr %69, align 8
  %71 = trunc i64 %66 to i32
  %72 = add i32 %68, %71
  %73 = or i32 %72, %70
  br label %74

74:                                               ; preds = %64, %53, %49, %40, %38, %33, %22, %3, %1
  %75 = phi i32 [ %39, %38 ], [ %73, %64 ], [ %47, %49 ], [ 0, %40 ], [ 0, %3 ], [ %63, %53 ], [ 0, %1 ], [ %34, %33 ], [ %30, %22 ]
  ret i32 %75
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @iov_iter_alignment_bvec(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr %struct.bio_vec, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %13, %8
  %15 = getelementptr %struct.bio_vec, ptr %11, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %8
  %18 = tail call i32 @llvm.umin.i32(i32 %14, i32 %10)
  %19 = or i32 %17, %18
  %20 = sub i32 %10, %18
  %21 = icmp eq i32 %20, 0
  %22 = icmp eq i32 %3, 1
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %24, %5
  %25 = phi i32 [ %37, %24 ], [ 1, %5 ]
  %26 = phi i32 [ %35, %24 ], [ %20, %5 ]
  %27 = phi i32 [ %34, %24 ], [ %19, %5 ]
  %28 = getelementptr %struct.bio_vec, ptr %11, i32 %25, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.bio_vec, ptr %11, i32 %25, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, %27
  %33 = tail call i32 @llvm.umin.i32(i32 %29, i32 %26)
  %34 = or i32 %32, %33
  %35 = sub i32 %26, %33
  %36 = icmp eq i32 %35, 0
  %37 = add nuw i32 %25, 1
  %38 = icmp eq i32 %37, %3
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %24, !llvm.loop !39

40:                                               ; preds = %24, %5, %1
  %41 = phi i32 [ 0, %1 ], [ %19, %5 ], [ %34, %24 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iov_iter_gap_alignment(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = load i8, ptr %0, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13, !prof !9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  br label %14

13:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1345, i32 noundef 9, ptr noundef null) #13
  br label %39

14:                                               ; preds = %33, %10
  %15 = phi i32 [ 0, %10 ], [ %37, %33 ]
  %16 = phi i32 [ %3, %10 ], [ %36, %33 ]
  %17 = phi i32 [ 0, %10 ], [ %35, %33 ]
  %18 = phi i32 [ 0, %10 ], [ %34, %33 ]
  %19 = getelementptr %struct.iovec, ptr %12, i32 %15, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = getelementptr %struct.iovec, ptr %12, i32 %15
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = icmp eq i32 %17, 0
  %27 = or i32 %17, %25
  %28 = select i1 %26, i32 0, i32 %27
  %29 = or i32 %28, %18
  %30 = add i32 %20, %25
  %31 = icmp ugt i32 %16, %20
  %32 = sub i32 %16, %20
  br i1 %31, label %33, label %39

33:                                               ; preds = %22, %14
  %34 = phi i32 [ %29, %22 ], [ %18, %14 ]
  %35 = phi i32 [ %30, %22 ], [ %17, %14 ]
  %36 = phi i32 [ %32, %22 ], [ %16, %14 ]
  %37 = add nuw i32 %15, 1
  %38 = icmp eq i32 %37, %8
  br i1 %38, label %39, label %14

39:                                               ; preds = %33, %22, %13, %6
  %40 = phi i32 [ -1, %13 ], [ 0, %6 ], [ %34, %33 ], [ %29, %22 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iov_iter_get_pages(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %115, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %0, align 8
  switch i8 %11, label %115 [
    i8 0, label %12
    i8 2, label %62
    i8 3, label %111
    i8 4, label %113
  ], !prof !10

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 2, !range !40
  %15 = xor i8 %14, 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 1
  %18 = load i8, ptr %17, align 1, !range !40
  %19 = icmp eq i8 %18, 0
  %20 = or i32 %16, 128
  %21 = select i1 %19, i32 %16, i32 %20
  %22 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %36, %25
  %31 = phi i32 [ 0, %25 ], [ %37, %36 ]
  %32 = phi i32 [ %27, %25 ], [ 0, %36 ]
  %33 = getelementptr %struct.iovec, ptr %29, i32 %31, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %32
  br i1 %35, label %36, label %40, !prof !8

36:                                               ; preds = %30
  %37 = add nuw i32 %31, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %30

39:                                               ; preds = %36, %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/iov_iter.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1495, 0\0A.popsection", ""() #13, !srcloc !41
  unreachable

40:                                               ; preds = %30
  %41 = sub i32 %34, %32
  %42 = getelementptr %struct.iovec, ptr %29, i32 %31
  %43 = load ptr, ptr %42, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = add i32 %32, %44
  %46 = tail call i32 @llvm.umin.i32(i32 %41, i32 %8) #13
  %47 = and i32 %45, 4095
  store i32 %47, ptr %4, align 4
  %48 = add i32 %47, %46
  %49 = shl i32 %3, 12
  %50 = tail call i32 @llvm.umin.i32(i32 %48, i32 %49) #13
  %51 = and i32 %45, -4096
  %52 = add nuw i32 %50, 4095
  %53 = lshr i32 %52, 12
  %54 = tail call i32 @get_user_pages_fast(i32 noundef %51, i32 noundef %53, i32 noundef %21, ptr noundef %1) #13
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %115, label %56, !prof !8

56:                                               ; preds = %40
  %57 = icmp eq i32 %54, %53
  %58 = shl i32 %54, 12
  %59 = select i1 %57, i32 %50, i32 %58
  %60 = load i32, ptr %4, align 4
  %61 = sub i32 %59, %60
  br label %115

62:                                               ; preds = %10
  %63 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.bio_vec, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 %68, %64
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 %8) #13
  %71 = getelementptr inbounds %struct.bio_vec, ptr %66, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %64
  %74 = load ptr, ptr %66, align 4
  %75 = and i32 %73, 4095
  store i32 %75, ptr %4, align 4
  %76 = add i32 %75, %70
  %77 = shl i32 %3, 12
  %78 = tail call i32 @llvm.umin.i32(i32 %76, i32 %77) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %62
  %81 = add nuw i32 %78, 4095
  %82 = lshr i32 %81, 12
  %83 = lshr i32 %73, 12
  %84 = getelementptr %struct.page, ptr %74, i32 %83
  br label %85

85:                                               ; preds = %100, %80
  %86 = phi ptr [ %90, %100 ], [ %84, %80 ]
  %87 = phi i32 [ %89, %100 ], [ %82, %80 ]
  %88 = phi ptr [ %91, %100 ], [ %1, %80 ]
  %89 = add i32 %87, -1
  %90 = getelementptr %struct.page, ptr %86, i32 1
  %91 = getelementptr ptr, ptr %88, i32 1
  store ptr %86, ptr %88, align 4
  %92 = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 1
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96, !prof !9

96:                                               ; preds = %85
  %97 = add i32 %93, -1
  br label %100

98:                                               ; preds = %85
  %99 = ptrtoint ptr %86 to i32
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = inttoptr i32 %101 to ptr
  %103 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #13, !srcloc !27
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #13, !srcloc !28
  %105 = icmp eq i32 %89, 0
  br i1 %105, label %106, label %85

106:                                              ; preds = %100
  %107 = load i32, ptr %4, align 4
  br label %108

108:                                              ; preds = %106, %62
  %109 = phi i32 [ %107, %106 ], [ %75, %62 ]
  %110 = sub i32 %78, %109
  br label %115

111:                                              ; preds = %10
  %112 = tail call fastcc i32 @pipe_get_pages(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef %3, ptr noundef %4)
  br label %115

113:                                              ; preds = %10
  %114 = tail call fastcc i32 @iter_xarray_get_pages(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef %3, ptr noundef %4)
  br label %115

115:                                              ; preds = %113, %111, %108, %56, %40, %10, %5
  %116 = phi i32 [ %110, %108 ], [ %112, %111 ], [ %114, %113 ], [ 0, %5 ], [ %61, %56 ], [ %54, %40 ], [ -14, %10 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pipe_get_pages(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = tail call fastcc zeroext i1 @sanity(ptr noundef %0)
  br i1 %7, label %8, label %88

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.pipe_inode_info, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = getelementptr inbounds %struct.pipe_inode_info, ptr %16, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = and i32 %19, %10
  %23 = getelementptr %struct.pipe_buffer, ptr %21, i32 %22, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ne ptr %24, @default_pipe_buf_ops
  %26 = icmp eq i32 %12, 4096
  %27 = select i1 %25, i1 true, i1 %26
  %28 = zext i1 %27 to i32
  %29 = add i32 %10, %28
  %30 = select i1 %27, i32 0, i32 %12
  br label %31

31:                                               ; preds = %14, %8
  %32 = phi i32 [ %10, %8 ], [ %29, %14 ]
  %33 = phi i32 [ 0, %8 ], [ %30, %14 ]
  store i32 %33, ptr %4, align 4
  %34 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pipe_inode_info, ptr %35, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %32, %37
  %39 = getelementptr inbounds %struct.pipe_inode_info, ptr %35, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %38, %40
  %42 = getelementptr inbounds %struct.pipe_inode_info, ptr %35, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %43, %38
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %40) #13
  %46 = select i1 %41, i32 %45, i32 0
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 %3)
  %48 = shl i32 %47, 12
  %49 = sub i32 %48, %33
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 %2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 %32, ptr %6, align 4
  %51 = add i32 %43, -1
  %52 = call fastcc i32 @push_pipe(ptr noundef %0, i32 noundef %50, ptr noundef nonnull %6, ptr noundef %4) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %86, label %54

54:                                               ; preds = %31
  %55 = load i32, ptr %4, align 4
  %56 = add i32 %55, %52
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load i32, ptr %6, align 4
  %60 = getelementptr inbounds %struct.pipe_inode_info, ptr %35, i32 0, i32 17
  br label %61

61:                                               ; preds = %78, %58
  %62 = phi i32 [ %56, %58 ], [ %84, %78 ]
  %63 = phi ptr [ %1, %58 ], [ %69, %78 ]
  %64 = phi i32 [ %59, %58 ], [ %83, %78 ]
  %65 = load ptr, ptr %60, align 4
  %66 = and i32 %64, %51
  %67 = getelementptr %struct.pipe_buffer, ptr %65, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr ptr, ptr %63, i32 1
  store ptr %68, ptr %63, align 4
  %70 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 1
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74, !prof !9

74:                                               ; preds = %61
  %75 = add i32 %71, -1
  br label %78

76:                                               ; preds = %61
  %77 = ptrtoint ptr %68 to i32
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.page, ptr %80, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #13, !srcloc !27
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #13, !srcloc !28
  %83 = add i32 %64, 1
  %84 = add nsw i32 %62, -4096
  %85 = icmp sgt i32 %62, 4096
  br i1 %85, label %61, label %86

86:                                               ; preds = %78, %54, %31
  %87 = phi i32 [ -14, %31 ], [ %52, %54 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %88

88:                                               ; preds = %86, %5
  %89 = phi i32 [ %87, %86 ], [ -14, %5 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iter_xarray_get_pages(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = add i64 %9, %12
  %14 = lshr i64 %13, 12
  %15 = trunc i64 %14 to i32
  %16 = trunc i64 %13 to i32
  %17 = and i32 %16, 4095
  store i32 %17, ptr %4, align 4
  %18 = sub nuw nsw i32 4096, %17
  %19 = icmp ult i32 %18, %2
  br i1 %19, label %20, label %27

20:                                               ; preds = %7
  %21 = sub i32 %2, %18
  %22 = lshr i32 %21, 12
  %23 = and i32 %21, 4095
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 1, i32 2
  %26 = add nuw nsw i32 %25, %22
  br label %27

27:                                               ; preds = %20, %7
  %28 = phi i32 [ 1, %7 ], [ %26, %20 ]
  %29 = phi i32 [ %2, %7 ], [ %23, %20 ]
  %30 = tail call i32 @llvm.umin.i32(i32 %28, i32 %3)
  %31 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = tail call fastcc i32 @iter_xarray_populate_pages(ptr noundef %1, ptr noundef %32, i32 noundef %15, i32 noundef %30)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %27
  %36 = shl i32 %33, 12
  %37 = sub i32 %36, %17
  %38 = icmp eq i32 %33, %30
  %39 = icmp ne i32 %29, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = icmp ugt i32 %30, 1
  %43 = select i1 %42, i32 0, i32 %17
  %44 = add i32 %29, -4096
  %45 = add i32 %44, %43
  %46 = add i32 %45, %37
  br label %47

47:                                               ; preds = %41, %35, %27, %5
  %48 = phi i32 [ 0, %5 ], [ 0, %27 ], [ %46, %41 ], [ %37, %35 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iov_iter_get_pages_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %119, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr %0, align 8
  switch i8 %10, label %119 [
    i8 0, label %11
    i8 2, label %65
    i8 3, label %115
    i8 4, label %117
  ], !prof !10

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 2, !range !40
  %14 = xor i8 %13, 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 1
  %17 = load i8, ptr %16, align 1, !range !40
  %18 = icmp eq i8 %17, 0
  %19 = or i32 %15, 128
  %20 = select i1 %18, i32 %15, i32 %19
  %21 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %35, %24
  %30 = phi i32 [ 0, %24 ], [ %36, %35 ]
  %31 = phi i32 [ %26, %24 ], [ 0, %35 ]
  %32 = getelementptr %struct.iovec, ptr %28, i32 %30, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %31
  br i1 %34, label %35, label %39, !prof !8

35:                                               ; preds = %29
  %36 = add nuw i32 %30, 1
  %37 = icmp eq i32 %36, %22
  br i1 %37, label %38, label %29

38:                                               ; preds = %35, %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/iov_iter.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1495, 0\0A.popsection", ""() #13, !srcloc !41
  unreachable

39:                                               ; preds = %29
  %40 = sub i32 %33, %31
  %41 = getelementptr %struct.iovec, ptr %28, i32 %30
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = add i32 %31, %43
  %45 = tail call i32 @llvm.umin.i32(i32 %40, i32 %7) #13
  %46 = and i32 %44, 4095
  store i32 %46, ptr %3, align 4
  %47 = add i32 %46, %45
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 -4096) #13
  %49 = tail call i32 @llvm.uadd.sat.i32(i32 %47, i32 4095)
  %50 = lshr i32 %49, 12
  %51 = shl nuw nsw i32 %50, 2
  %52 = tail call noalias ptr @kvmalloc_node(i32 noundef %51, i32 noundef 3264, i32 noundef -1) #16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %119, label %54

54:                                               ; preds = %39
  %55 = and i32 %44, -4096
  %56 = tail call i32 @get_user_pages_fast(i32 noundef %55, i32 noundef %50, i32 noundef %20, ptr noundef nonnull %52) #13
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59, !prof !8

58:                                               ; preds = %54
  tail call void @kvfree(ptr noundef nonnull %52) #13
  store ptr null, ptr %1, align 4
  br label %119

59:                                               ; preds = %54
  store ptr %52, ptr %1, align 4
  %60 = icmp eq i32 %56, %50
  %61 = shl i32 %56, 12
  %62 = select i1 %60, i32 %48, i32 %61
  %63 = load i32, ptr %3, align 4
  %64 = sub i32 %62, %63
  br label %119

65:                                               ; preds = %9
  %66 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bio_vec, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %71, %67
  %73 = tail call i32 @llvm.umin.i32(i32 %72, i32 %7) #13
  %74 = getelementptr inbounds %struct.bio_vec, ptr %69, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, %67
  %77 = load ptr, ptr %69, align 4
  %78 = and i32 %76, 4095
  store i32 %78, ptr %3, align 4
  %79 = add i32 %78, %73
  %80 = tail call i32 @llvm.umin.i32(i32 %79, i32 -4096) #13
  %81 = tail call i32 @llvm.uadd.sat.i32(i32 %79, i32 4095)
  %82 = lshr i32 %81, 12
  %83 = shl nuw nsw i32 %82, 2
  %84 = tail call noalias ptr @kvmalloc_node(i32 noundef %83, i32 noundef 3264, i32 noundef -1) #16
  store ptr %84, ptr %1, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %119, label %86

86:                                               ; preds = %65
  %87 = icmp ult i32 %81, 4096
  br i1 %87, label %112, label %88

88:                                               ; preds = %86
  %89 = lshr i32 %76, 12
  %90 = getelementptr %struct.page, ptr %77, i32 %89
  br label %91

91:                                               ; preds = %106, %88
  %92 = phi ptr [ %96, %106 ], [ %90, %88 ]
  %93 = phi i32 [ %95, %106 ], [ %82, %88 ]
  %94 = phi ptr [ %97, %106 ], [ %84, %88 ]
  %95 = add i32 %93, -1
  %96 = getelementptr %struct.page, ptr %92, i32 1
  %97 = getelementptr ptr, ptr %94, i32 1
  store ptr %92, ptr %94, align 4
  %98 = getelementptr inbounds %struct.page, ptr %92, i32 0, i32 1
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102, !prof !9

102:                                              ; preds = %91
  %103 = add i32 %99, -1
  br label %106

104:                                              ; preds = %91
  %105 = ptrtoint ptr %92 to i32
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = inttoptr i32 %107 to ptr
  %109 = getelementptr inbounds %struct.page, ptr %108, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #13, !srcloc !27
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #13, !srcloc !28
  %111 = icmp eq i32 %95, 0
  br i1 %111, label %112, label %91

112:                                              ; preds = %106, %86
  %113 = load i32, ptr %3, align 4
  %114 = sub i32 %80, %113
  br label %119

115:                                              ; preds = %9
  %116 = tail call fastcc i32 @pipe_get_pages_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef %3)
  br label %119

117:                                              ; preds = %9
  %118 = tail call fastcc i32 @iter_xarray_get_pages_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef %3)
  br label %119

119:                                              ; preds = %117, %115, %112, %65, %59, %58, %39, %9, %4
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ], [ 0, %4 ], [ %56, %58 ], [ %64, %59 ], [ -12, %39 ], [ %114, %112 ], [ -12, %65 ], [ -14, %9 ]
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pipe_get_pages_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = tail call fastcc zeroext i1 @sanity(ptr noundef %0)
  br i1 %6, label %7, label %107

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pipe_inode_info, ptr %15, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  %19 = getelementptr inbounds %struct.pipe_inode_info, ptr %15, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = and i32 %18, %9
  %22 = getelementptr %struct.pipe_buffer, ptr %20, i32 %21, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ne ptr %23, @default_pipe_buf_ops
  %25 = icmp eq i32 %11, 4096
  %26 = select i1 %24, i1 true, i1 %25
  %27 = zext i1 %26 to i32
  %28 = add i32 %9, %27
  %29 = select i1 %26, i32 0, i32 %11
  br label %30

30:                                               ; preds = %13, %7
  %31 = phi i32 [ %9, %7 ], [ %28, %13 ]
  %32 = phi i32 [ 0, %7 ], [ %29, %13 ]
  store i32 %32, ptr %3, align 4
  %33 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.pipe_inode_info, ptr %34, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %31, %36
  %38 = getelementptr inbounds %struct.pipe_inode_info, ptr %34, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.pipe_inode_info, ptr %34, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %43, %37
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %39) #13
  br label %46

46:                                               ; preds = %41, %30
  %47 = phi i32 [ %45, %41 ], [ 0, %30 ]
  %48 = shl i32 %47, 12
  %49 = sub i32 %48, %32
  %50 = icmp ult i32 %49, %2
  %51 = add i32 %2, 4095
  %52 = add i32 %51, %32
  %53 = lshr i32 %52, 12
  %54 = tail call i32 @llvm.umin.i32(i32 %49, i32 %2)
  %55 = select i1 %50, i32 %47, i32 %53
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 4) #13
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %107, label %58, !prof !8

58:                                               ; preds = %46
  %59 = extractvalue { i32, i1 } %56, 0
  %60 = tail call noalias ptr @kvmalloc_node(i32 noundef %59, i32 noundef 3264, i32 noundef -1) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %107, label %62

62:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %31, ptr %5, align 4
  %63 = load ptr, ptr %33, align 4
  %64 = getelementptr inbounds %struct.pipe_inode_info, ptr %63, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  %67 = call fastcc i32 @push_pipe(ptr noundef %0, i32 noundef %54, ptr noundef nonnull %5, ptr noundef %3) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %105

70:                                               ; preds = %62
  %71 = load i32, ptr %3, align 4
  %72 = add i32 %71, %67
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = load i32, ptr %5, align 4
  %76 = getelementptr inbounds %struct.pipe_inode_info, ptr %63, i32 0, i32 17
  br label %77

77:                                               ; preds = %94, %74
  %78 = phi i32 [ %72, %74 ], [ %100, %94 ]
  %79 = phi ptr [ %60, %74 ], [ %85, %94 ]
  %80 = phi i32 [ %75, %74 ], [ %99, %94 ]
  %81 = load ptr, ptr %76, align 4
  %82 = and i32 %80, %66
  %83 = getelementptr %struct.pipe_buffer, ptr %81, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr ptr, ptr %79, i32 1
  store ptr %84, ptr %79, align 4
  %86 = getelementptr inbounds %struct.page, ptr %84, i32 0, i32 1
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90, !prof !9

90:                                               ; preds = %77
  %91 = add i32 %87, -1
  br label %94

92:                                               ; preds = %77
  %93 = ptrtoint ptr %84 to i32
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = inttoptr i32 %95 to ptr
  %97 = getelementptr inbounds %struct.page, ptr %96, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #13, !srcloc !27
  %98 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #13, !srcloc !28
  %99 = add i32 %80, 1
  %100 = add nsw i32 %78, -4096
  %101 = icmp sgt i32 %78, 4096
  br i1 %101, label %77, label %102

102:                                              ; preds = %94, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %103 = icmp sgt i32 %67, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  store ptr %60, ptr %1, align 4
  br label %107

105:                                              ; preds = %102, %69
  %106 = phi i32 [ -14, %69 ], [ %67, %102 ]
  tail call void @kvfree(ptr noundef nonnull %60) #13
  br label %107

107:                                              ; preds = %105, %104, %58, %46, %4
  %108 = phi i32 [ -14, %4 ], [ -12, %58 ], [ %106, %105 ], [ %67, %104 ], [ -12, %46 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iter_xarray_get_pages_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = add i64 %6, %9
  %11 = lshr i64 %10, 12
  %12 = trunc i64 %11 to i32
  %13 = trunc i64 %10 to i32
  %14 = and i32 %13, 4095
  store i32 %14, ptr %3, align 4
  %15 = sub nuw nsw i32 4096, %14
  %16 = icmp ult i32 %15, %2
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = sub i32 %2, %15
  %19 = lshr i32 %18, 12
  %20 = and i32 %18, 4095
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 2
  %23 = add nuw nsw i32 %22, %19
  br label %24

24:                                               ; preds = %17, %4
  %25 = phi i32 [ 1, %4 ], [ %23, %17 ]
  %26 = phi i32 [ %2, %4 ], [ %20, %17 ]
  %27 = shl nuw nsw i32 %25, 2
  %28 = tail call noalias ptr @kvmalloc_node(i32 noundef %27, i32 noundef 3264, i32 noundef -1) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %24
  store ptr %28, ptr %1, align 4
  %31 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = tail call fastcc i32 @iter_xarray_populate_pages(ptr noundef nonnull %28, ptr noundef %32, i32 noundef %12, i32 noundef %25)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = shl i32 %33, 12
  %37 = sub i32 %36, %14
  %38 = icmp eq i32 %33, %25
  %39 = icmp ne i32 %26, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = icmp ugt i32 %25, 1
  %43 = select i1 %42, i32 0, i32 %14
  %44 = add i32 %26, -4096
  %45 = add i32 %44, %43
  %46 = add i32 %45, %37
  br label %47

47:                                               ; preds = %41, %35, %30, %24
  %48 = phi i32 [ -12, %24 ], [ 0, %30 ], [ %46, %41 ], [ %37, %35 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @csum_and_copy_from_iter(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.xa_state, align 4
  %6 = load i32, ptr %2, align 4
  %7 = load i8, ptr %3, align 8
  switch i8 %7, label %9 [
    i8 3, label %8
    i8 5, label %8
  ], !prof !31

8:                                                ; preds = %4, %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1705, i32 noundef 9, ptr noundef null) #13
  br label %299

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp ult i32 %11, %1
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %11, %13 ], [ %1, %9 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %296, label %17, !prof !8

17:                                               ; preds = %14
  switch i8 %7, label %291 [
    i8 0, label %18
    i8 2, label %80
    i8 1, label %136
    i8 4, label %189
  ], !prof !10

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %61, %18
  %24 = phi i32 [ %22, %18 ], [ 0, %61 ]
  %25 = phi i32 [ 0, %18 ], [ %62, %61 ]
  %26 = phi ptr [ %20, %18 ], [ %65, %61 ]
  %27 = phi i32 [ %6, %18 ], [ %63, %61 ]
  %28 = phi i32 [ %15, %18 ], [ %64, %61 ]
  %29 = getelementptr inbounds %struct.iovec, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %30, %24
  %32 = tail call i32 @llvm.umin.i32(i32 %28, i32 %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %61, label %34, !prof !8

34:                                               ; preds = %23
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr i8, ptr %35, i32 %24
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 %32, i32 -1090519040) #14, !srcloc !42
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %0, i32 %25
  %42 = tail call i32 @csum_partial_copy_from_user(ptr noundef %36, ptr noundef %41, i32 noundef %32) #13
  %43 = load i32, ptr %29, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i32 [ %43, %40 ], [ %30, %34 ]
  %46 = phi i32 [ %42, %40 ], [ 0, %34 ]
  %47 = and i32 %25, 1
  %48 = icmp eq i32 %47, 0
  %49 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 24) #13
  %50 = select i1 %48, i32 %46, i32 %49
  %51 = add i32 %50, %27
  %52 = icmp ult i32 %51, %50
  %53 = zext i1 %52 to i32
  %54 = add i32 %51, %53
  %55 = icmp eq i32 %46, 0
  %56 = select i1 %55, i32 0, i32 %32
  %57 = add i32 %56, %25
  %58 = add i32 %56, %24
  %59 = sub i32 %28, %56
  %60 = icmp ult i32 %58, %45
  br i1 %60, label %67, label %61

61:                                               ; preds = %44, %23
  %62 = phi i32 [ %57, %44 ], [ %25, %23 ]
  %63 = phi i32 [ %54, %44 ], [ %27, %23 ]
  %64 = phi i32 [ %59, %44 ], [ %28, %23 ]
  %65 = getelementptr %struct.iovec, ptr %26, i32 1
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %67, label %23

67:                                               ; preds = %61, %44
  %68 = phi i32 [ %58, %44 ], [ 0, %61 ]
  %69 = phi i32 [ %57, %44 ], [ %62, %61 ]
  %70 = phi ptr [ %26, %44 ], [ %65, %61 ]
  %71 = phi i32 [ %54, %44 ], [ %63, %61 ]
  store i32 %68, ptr %21, align 4
  %72 = load ptr, ptr %19, align 4
  %73 = ptrtoint ptr %70 to i32
  %74 = ptrtoint ptr %72 to i32
  %75 = sub i32 %73, %74
  %76 = ashr exact i32 %75, 3
  %77 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %78 = load i32, ptr %77, align 8
  %79 = sub i32 %78, %76
  store i32 %79, ptr %77, align 8
  store ptr %70, ptr %19, align 4
  br label %291

80:                                               ; preds = %17
  %81 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %85, %80
  %86 = phi i32 [ %125, %85 ], [ %15, %80 ]
  %87 = phi i32 [ %117, %85 ], [ %6, %80 ]
  %88 = phi ptr [ %124, %85 ], [ %82, %80 ]
  %89 = phi i32 [ %118, %85 ], [ 0, %80 ]
  %90 = phi i32 [ %122, %85 ], [ %84, %80 ]
  %91 = getelementptr inbounds %struct.bio_vec, ptr %88, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, %90
  %94 = load ptr, ptr %88, align 4
  %95 = lshr i32 %93, 12
  %96 = getelementptr %struct.page, ptr %94, i32 %95
  %97 = load i32, ptr @pgprot_kernel, align 4
  %98 = or i32 %97, 512
  %99 = tail call ptr @__kmap_local_page_prot(ptr noundef %96, i32 noundef %98) #13
  %100 = and i32 %93, 4095
  %101 = getelementptr i8, ptr %99, i32 %100
  %102 = getelementptr inbounds %struct.bio_vec, ptr %88, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = sub i32 %103, %90
  %105 = tail call i32 @llvm.umin.i32(i32 %86, i32 %104)
  %106 = sub nuw nsw i32 4096, %100
  %107 = tail call i32 @llvm.umin.i32(i32 %105, i32 %106)
  %108 = getelementptr i8, ptr %0, i32 %89
  %109 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %101, ptr noundef %108, i32 noundef %107) #13
  %110 = and i32 %89, 1
  %111 = icmp eq i32 %110, 0
  %112 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 24) #13
  %113 = select i1 %111, i32 %109, i32 %112
  %114 = add i32 %113, %87
  %115 = icmp ult i32 %114, %113
  %116 = zext i1 %115 to i32
  %117 = add i32 %114, %116
  tail call void @kunmap_local_indexed(ptr noundef %99) #13
  %118 = add i32 %107, %89
  %119 = add i32 %107, %90
  %120 = load i32, ptr %102, align 4
  %121 = icmp eq i32 %119, %120
  %122 = select i1 %121, i32 0, i32 %119
  %123 = zext i1 %121 to i32
  %124 = getelementptr %struct.bio_vec, ptr %88, i32 %123
  %125 = sub i32 %86, %107
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %85

127:                                              ; preds = %85
  %128 = load ptr, ptr %81, align 4
  store i32 %122, ptr %83, align 4
  %129 = ptrtoint ptr %124 to i32
  %130 = ptrtoint ptr %128 to i32
  %131 = sub i32 %129, %130
  %132 = sdiv exact i32 %131, -12
  %133 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %134 = load i32, ptr %133, align 8
  %135 = add i32 %132, %134
  store i32 %135, ptr %133, align 8
  store ptr %124, ptr %81, align 4
  br label %291

136:                                              ; preds = %17
  %137 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  br label %141

141:                                              ; preds = %170, %136
  %142 = phi ptr [ %138, %136 ], [ %174, %170 ]
  %143 = phi i32 [ 0, %136 ], [ %171, %170 ]
  %144 = phi i32 [ %140, %136 ], [ 0, %170 ]
  %145 = phi i32 [ %6, %136 ], [ %172, %170 ]
  %146 = phi i32 [ %15, %136 ], [ %173, %170 ]
  %147 = getelementptr inbounds %struct.kvec, ptr %142, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = sub i32 %148, %144
  %150 = tail call i32 @llvm.umin.i32(i32 %146, i32 %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %170, label %152, !prof !8

152:                                              ; preds = %141
  %153 = load ptr, ptr %142, align 4
  %154 = getelementptr i8, ptr %153, i32 %144
  %155 = getelementptr i8, ptr %0, i32 %143
  %156 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %154, ptr noundef %155, i32 noundef %150) #13
  %157 = and i32 %143, 1
  %158 = icmp eq i32 %157, 0
  %159 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 24) #13
  %160 = select i1 %158, i32 %156, i32 %159
  %161 = add i32 %160, %145
  %162 = icmp ult i32 %161, %160
  %163 = zext i1 %162 to i32
  %164 = add i32 %161, %163
  %165 = add i32 %150, %143
  %166 = add i32 %150, %144
  %167 = sub i32 %146, %150
  %168 = load i32, ptr %147, align 4
  %169 = icmp ult i32 %166, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %152, %141
  %171 = phi i32 [ %165, %152 ], [ %143, %141 ]
  %172 = phi i32 [ %164, %152 ], [ %145, %141 ]
  %173 = phi i32 [ %167, %152 ], [ %146, %141 ]
  %174 = getelementptr %struct.kvec, ptr %142, i32 1
  %175 = icmp eq i32 %173, 0
  br i1 %175, label %176, label %141

176:                                              ; preds = %170, %152
  %177 = phi ptr [ %142, %152 ], [ %174, %170 ]
  %178 = phi i32 [ %165, %152 ], [ %171, %170 ]
  %179 = phi i32 [ %166, %152 ], [ 0, %170 ]
  %180 = phi i32 [ %164, %152 ], [ %172, %170 ]
  store i32 %179, ptr %139, align 4
  %181 = load ptr, ptr %137, align 4
  %182 = ptrtoint ptr %177 to i32
  %183 = ptrtoint ptr %181 to i32
  %184 = sub i32 %182, %183
  %185 = ashr exact i32 %184, 3
  %186 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %187 = load i32, ptr %186, align 8
  %188 = sub i32 %187, %185
  store i32 %188, ptr %186, align 8
  store ptr %177, ptr %137, align 4
  br label %291

189:                                              ; preds = %17
  %190 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %191 = load i64, ptr %190, align 8
  %192 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %193 = load i32, ptr %192, align 4
  %194 = zext i32 %193 to i64
  %195 = add i64 %191, %194
  %196 = sdiv i64 %195, 4096
  %197 = trunc i64 %196 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %198 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %199 = load ptr, ptr %198, align 4
  store ptr %199, ptr %5, align 4
  %200 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  store i32 %197, ptr %200, align 4
  %201 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %202 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %201, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %202, align 4
  %203 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %203, align 4
  %204 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %204, align 4
  %205 = trunc i64 %195 to i32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %206 = call ptr @xas_find(ptr noundef nonnull %5, i32 noundef -1) #13
  %207 = icmp eq ptr %206, null
  br i1 %207, label %286, label %208

208:                                              ; preds = %189
  %209 = and i32 %205, 4095
  %210 = sub nuw nsw i32 4096, %209
  br label %211

211:                                              ; preds = %279, %208
  %212 = phi i32 [ %283, %279 ], [ %15, %208 ]
  %213 = phi i32 [ %282, %279 ], [ %6, %208 ]
  %214 = phi ptr [ %284, %279 ], [ %206, %208 ]
  %215 = phi i32 [ %281, %279 ], [ 0, %208 ]
  %216 = phi i32 [ %280, %279 ], [ %210, %208 ]
  %217 = ptrtoint ptr %214 to i32
  switch i32 %217, label %219 [
    i32 1030, label %279
    i32 1026, label %218
  ]

218:                                              ; preds = %211
  store ptr inttoptr (i32 3 to ptr), ptr %202, align 4
  br label %279

219:                                              ; preds = %211
  %220 = and i32 %217, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222, !prof !9

222:                                              ; preds = %219
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1715, i32 noundef 9, ptr noundef null) #13
  br label %286

223:                                              ; preds = %219
  %224 = add i32 %215, %205
  %225 = load volatile i32, ptr %214, align 4
  %226 = and i32 %225, 65536
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %223
  %229 = getelementptr %struct.page, ptr %214, i32 1, i32 1
  %230 = getelementptr inbounds %struct.anon.53, ptr %229, i32 0, i32 2
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  br label %233

233:                                              ; preds = %228, %223
  %234 = phi i32 [ %232, %228 ], [ 0, %223 ]
  %235 = shl i32 4096, %234
  %236 = add i32 %235, -1
  %237 = and i32 %236, %224
  %238 = getelementptr %struct.page, ptr %214, i32 1, i32 1
  %239 = getelementptr inbounds %struct.anon.53, ptr %238, i32 0, i32 2
  br label %240

240:                                              ; preds = %256, %233
  %241 = phi i32 [ %216, %233 ], [ 4096, %256 ]
  %242 = phi i32 [ %215, %233 ], [ %275, %256 ]
  %243 = phi i32 [ %237, %233 ], [ %278, %256 ]
  %244 = phi i32 [ %213, %233 ], [ %274, %256 ]
  %245 = phi i32 [ %212, %233 ], [ %276, %256 ]
  %246 = load volatile i32, ptr %214, align 4
  %247 = and i32 %246, 65536
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %240
  %250 = load i8, ptr %239, align 1
  %251 = zext i8 %250 to i32
  br label %252

252:                                              ; preds = %249, %240
  %253 = phi i32 [ %251, %249 ], [ 0, %240 ]
  %254 = shl i32 4096, %253
  %255 = icmp ult i32 %243, %254
  br i1 %255, label %256, label %279

256:                                              ; preds = %252
  %257 = lshr i32 %243, 12
  %258 = getelementptr %struct.page, ptr %214, i32 %257
  %259 = load i32, ptr @pgprot_kernel, align 4
  %260 = or i32 %259, 512
  %261 = call ptr @__kmap_local_page_prot(ptr noundef %258, i32 noundef %260) #13
  %262 = and i32 %243, 4095
  %263 = getelementptr i8, ptr %261, i32 %262
  %264 = call i32 @llvm.umin.i32(i32 %245, i32 %241)
  %265 = getelementptr i8, ptr %0, i32 %242
  %266 = call i32 @csum_partial_copy_nocheck(ptr noundef %263, ptr noundef %265, i32 noundef %264) #13
  %267 = and i32 %242, 1
  %268 = icmp eq i32 %267, 0
  %269 = call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 24) #13
  %270 = select i1 %268, i32 %266, i32 %269
  %271 = add i32 %270, %244
  %272 = icmp ult i32 %271, %270
  %273 = zext i1 %272 to i32
  %274 = add i32 %271, %273
  call void @kunmap_local_indexed(ptr noundef %263) #13
  %275 = add i32 %264, %242
  %276 = sub i32 %245, %264
  %277 = icmp eq i32 %276, 0
  %278 = add i32 %264, %243
  br i1 %277, label %286, label %240

279:                                              ; preds = %252, %218, %211
  %280 = phi i32 [ %216, %218 ], [ %216, %211 ], [ %241, %252 ]
  %281 = phi i32 [ %215, %218 ], [ %215, %211 ], [ %242, %252 ]
  %282 = phi i32 [ %213, %218 ], [ %213, %211 ], [ %244, %252 ]
  %283 = phi i32 [ %212, %218 ], [ %212, %211 ], [ %245, %252 ]
  %284 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %5)
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %211

286:                                              ; preds = %279, %256, %222, %189
  %287 = phi i32 [ %215, %222 ], [ 0, %189 ], [ %275, %256 ], [ %281, %279 ]
  %288 = phi i32 [ %213, %222 ], [ %6, %189 ], [ %274, %256 ], [ %282, %279 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %289 = load i32, ptr %192, align 4
  %290 = add i32 %289, %287
  store i32 %290, ptr %192, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %291

291:                                              ; preds = %286, %176, %127, %67, %17
  %292 = phi i32 [ %71, %67 ], [ %117, %127 ], [ %180, %176 ], [ %288, %286 ], [ %6, %17 ]
  %293 = phi i32 [ %69, %67 ], [ %118, %127 ], [ %178, %176 ], [ %287, %286 ], [ %15, %17 ]
  %294 = load i32, ptr %10, align 8
  %295 = sub i32 %294, %293
  store i32 %295, ptr %10, align 8
  br label %296

296:                                              ; preds = %291, %14
  %297 = phi i32 [ %292, %291 ], [ %6, %14 ]
  %298 = phi i32 [ %293, %291 ], [ 0, %14 ]
  store i32 %297, ptr %2, align 4
  br label %299

299:                                              ; preds = %296, %8
  %300 = phi i32 [ 0, %8 ], [ %298, %296 ]
  ret i32 %300
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @csum_and_copy_to_iter(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %7 = load i8, ptr %3, align 8
  %8 = icmp eq i8 %7, 5
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1728, i32 noundef 9, ptr noundef null) #13
  br label %336

10:                                               ; preds = %4
  %11 = load i32, ptr %2, align 4
  %12 = getelementptr inbounds %struct.csum_state, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  %16 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 24) #13
  %17 = select i1 %15, i32 %11, i32 %16
  store i32 %17, ptr %5, align 4
  %18 = icmp eq i8 %7, 3
  br i1 %18, label %19, label %22, !prof !8

19:                                               ; preds = %10
  %20 = call fastcc i32 @csum_and_copy_to_pipe_iter(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %5)
  %21 = load i32, ptr %5, align 4
  br label %327

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %24, %1
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %24, %26 ], [ %1, %22 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %327, label %30, !prof !8

30:                                               ; preds = %27
  switch i8 %7, label %322 [
    i8 0, label %31
    i8 2, label %107
    i8 1, label %163
    i8 4, label %216
  ], !prof !10

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %88, %31
  %37 = phi i32 [ %17, %31 ], [ %89, %88 ]
  %38 = phi i32 [ %35, %31 ], [ 0, %88 ]
  %39 = phi i32 [ 0, %31 ], [ %90, %88 ]
  %40 = phi ptr [ %33, %31 ], [ %92, %88 ]
  %41 = phi i32 [ %28, %31 ], [ %91, %88 ]
  %42 = getelementptr inbounds %struct.iovec, ptr %40, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %43, %38
  %45 = tail call i32 @llvm.umin.i32(i32 %41, i32 %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %88, label %47, !prof !8

47:                                               ; preds = %36
  %48 = load ptr, ptr %40, align 4
  %49 = getelementptr i8, ptr %48, i32 %38
  %50 = getelementptr i8, ptr %0, i32 %39
  %51 = tail call i32 @csum_partial(ptr noundef %50, i32 noundef %45, i32 noundef -1) #13
  %52 = icmp slt i32 %45, 0
  %53 = load i1, ptr @check_copy_size.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %47
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %57

57:                                               ; preds = %56, %47
  br i1 %52, label %71, label %58, !prof !8

58:                                               ; preds = %57
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 %45, i32 -1090519040) #14, !srcloc !43
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = tail call ptr @llvm.thread.pointer() #13
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %65 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %64) #15, !srcloc !12
  %66 = and i32 %65, -13
  %67 = or i32 %66, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %68 = tail call i32 @arm_copy_to_user(ptr noundef %49, ptr noundef %50, i32 noundef %45) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 %51, i32 0
  br label %71

71:                                               ; preds = %62, %58, %57
  %72 = phi i32 [ 0, %57 ], [ 0, %58 ], [ %70, %62 ]
  %73 = and i32 %39, 1
  %74 = icmp eq i32 %73, 0
  %75 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 24) #13
  %76 = select i1 %74, i32 %72, i32 %75
  %77 = add i32 %76, %37
  %78 = icmp ult i32 %77, %76
  %79 = zext i1 %78 to i32
  %80 = add i32 %77, %79
  %81 = icmp eq i32 %72, 0
  %82 = select i1 %81, i32 0, i32 %45
  %83 = add i32 %82, %39
  %84 = add i32 %82, %38
  %85 = sub i32 %41, %82
  %86 = load i32, ptr %42, align 4
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %71, %36
  %89 = phi i32 [ %80, %71 ], [ %37, %36 ]
  %90 = phi i32 [ %83, %71 ], [ %39, %36 ]
  %91 = phi i32 [ %85, %71 ], [ %41, %36 ]
  %92 = getelementptr %struct.iovec, ptr %40, i32 1
  %93 = icmp eq i32 %91, 0
  br i1 %93, label %94, label %36

94:                                               ; preds = %88, %71
  %95 = phi i32 [ %80, %71 ], [ %89, %88 ]
  %96 = phi i32 [ %84, %71 ], [ 0, %88 ]
  %97 = phi i32 [ %83, %71 ], [ %90, %88 ]
  %98 = phi ptr [ %40, %71 ], [ %92, %88 ]
  store i32 %96, ptr %34, align 4
  %99 = load ptr, ptr %32, align 4
  %100 = ptrtoint ptr %98 to i32
  %101 = ptrtoint ptr %99 to i32
  %102 = sub i32 %100, %101
  %103 = ashr exact i32 %102, 3
  %104 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %105 = load i32, ptr %104, align 8
  %106 = sub i32 %105, %103
  store i32 %106, ptr %104, align 8
  store ptr %98, ptr %32, align 4
  br label %322

107:                                              ; preds = %30
  %108 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %112, %107
  %113 = phi i32 [ %152, %112 ], [ %28, %107 ]
  %114 = phi ptr [ %151, %112 ], [ %109, %107 ]
  %115 = phi i32 [ %145, %112 ], [ 0, %107 ]
  %116 = phi i32 [ %149, %112 ], [ %111, %107 ]
  %117 = phi i32 [ %144, %112 ], [ %17, %107 ]
  %118 = getelementptr inbounds %struct.bio_vec, ptr %114, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, %116
  %121 = load ptr, ptr %114, align 4
  %122 = lshr i32 %120, 12
  %123 = getelementptr %struct.page, ptr %121, i32 %122
  %124 = load i32, ptr @pgprot_kernel, align 4
  %125 = or i32 %124, 512
  %126 = tail call ptr @__kmap_local_page_prot(ptr noundef %123, i32 noundef %125) #13
  %127 = and i32 %120, 4095
  %128 = getelementptr i8, ptr %126, i32 %127
  %129 = getelementptr inbounds %struct.bio_vec, ptr %114, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = sub i32 %130, %116
  %132 = tail call i32 @llvm.umin.i32(i32 %113, i32 %131)
  %133 = sub nuw nsw i32 4096, %127
  %134 = tail call i32 @llvm.umin.i32(i32 %132, i32 %133)
  %135 = getelementptr i8, ptr %0, i32 %115
  %136 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %135, ptr noundef %128, i32 noundef %134) #13
  %137 = and i32 %115, 1
  %138 = icmp eq i32 %137, 0
  %139 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 24) #13
  %140 = select i1 %138, i32 %136, i32 %139
  %141 = add i32 %140, %117
  %142 = icmp ult i32 %141, %140
  %143 = zext i1 %142 to i32
  %144 = add i32 %141, %143
  tail call void @kunmap_local_indexed(ptr noundef %126) #13
  %145 = add i32 %134, %115
  %146 = add i32 %134, %116
  %147 = load i32, ptr %129, align 4
  %148 = icmp eq i32 %146, %147
  %149 = select i1 %148, i32 0, i32 %146
  %150 = zext i1 %148 to i32
  %151 = getelementptr %struct.bio_vec, ptr %114, i32 %150
  %152 = sub i32 %113, %134
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %112

154:                                              ; preds = %112
  %155 = load ptr, ptr %108, align 4
  store i32 %144, ptr %5, align 4
  store i32 %149, ptr %110, align 4
  %156 = ptrtoint ptr %151 to i32
  %157 = ptrtoint ptr %155 to i32
  %158 = sub i32 %156, %157
  %159 = sdiv exact i32 %158, -12
  %160 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %161 = load i32, ptr %160, align 8
  %162 = add i32 %159, %161
  store i32 %162, ptr %160, align 8
  store ptr %151, ptr %108, align 4
  br label %322

163:                                              ; preds = %30
  %164 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  br label %168

168:                                              ; preds = %197, %163
  %169 = phi i32 [ %17, %163 ], [ %198, %197 ]
  %170 = phi ptr [ %165, %163 ], [ %201, %197 ]
  %171 = phi i32 [ 0, %163 ], [ %199, %197 ]
  %172 = phi i32 [ %167, %163 ], [ 0, %197 ]
  %173 = phi i32 [ %28, %163 ], [ %200, %197 ]
  %174 = getelementptr inbounds %struct.kvec, ptr %170, i32 0, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = sub i32 %175, %172
  %177 = tail call i32 @llvm.umin.i32(i32 %173, i32 %176)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %197, label %179, !prof !8

179:                                              ; preds = %168
  %180 = load ptr, ptr %170, align 4
  %181 = getelementptr i8, ptr %180, i32 %172
  %182 = getelementptr i8, ptr %0, i32 %171
  %183 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %182, ptr noundef %181, i32 noundef %177) #13
  %184 = and i32 %171, 1
  %185 = icmp eq i32 %184, 0
  %186 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 24) #13
  %187 = select i1 %185, i32 %183, i32 %186
  %188 = add i32 %187, %169
  %189 = icmp ult i32 %188, %187
  %190 = zext i1 %189 to i32
  %191 = add i32 %188, %190
  %192 = add i32 %177, %171
  %193 = add i32 %177, %172
  %194 = sub i32 %173, %177
  %195 = load i32, ptr %174, align 4
  %196 = icmp ult i32 %193, %195
  br i1 %196, label %203, label %197

197:                                              ; preds = %179, %168
  %198 = phi i32 [ %191, %179 ], [ %169, %168 ]
  %199 = phi i32 [ %192, %179 ], [ %171, %168 ]
  %200 = phi i32 [ %194, %179 ], [ %173, %168 ]
  %201 = getelementptr %struct.kvec, ptr %170, i32 1
  %202 = icmp eq i32 %200, 0
  br i1 %202, label %203, label %168

203:                                              ; preds = %197, %179
  %204 = phi i32 [ %191, %179 ], [ %198, %197 ]
  %205 = phi ptr [ %170, %179 ], [ %201, %197 ]
  %206 = phi i32 [ %192, %179 ], [ %199, %197 ]
  %207 = phi i32 [ %193, %179 ], [ 0, %197 ]
  store i32 %204, ptr %5, align 4
  store i32 %207, ptr %166, align 4
  %208 = load ptr, ptr %164, align 4
  %209 = ptrtoint ptr %205 to i32
  %210 = ptrtoint ptr %208 to i32
  %211 = sub i32 %209, %210
  %212 = ashr exact i32 %211, 3
  %213 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %214 = load i32, ptr %213, align 8
  %215 = sub i32 %214, %212
  store i32 %215, ptr %213, align 8
  store ptr %205, ptr %164, align 4
  br label %322

216:                                              ; preds = %30
  %217 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 6
  %218 = load i64, ptr %217, align 8
  %219 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = zext i32 %220 to i64
  %222 = add i64 %218, %221
  %223 = sdiv i64 %222, 4096
  %224 = trunc i64 %223 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %225 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 5
  %226 = load ptr, ptr %225, align 4
  store ptr %226, ptr %6, align 4
  %227 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 1
  store i32 %224, ptr %227, align 4
  %228 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 2
  %229 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 6
  store i32 0, ptr %228, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %229, align 4
  %230 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 7
  store ptr null, ptr %230, align 4
  %231 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 8
  store ptr null, ptr %231, align 4
  %232 = trunc i64 %222 to i32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %233 = call ptr @xas_find(ptr noundef nonnull %6, i32 noundef -1) #13
  %234 = icmp eq ptr %233, null
  br i1 %234, label %314, label %235

235:                                              ; preds = %216
  %236 = and i32 %232, 4095
  %237 = sub nuw nsw i32 4096, %236
  br label %238

238:                                              ; preds = %306, %235
  %239 = phi i32 [ %310, %306 ], [ %28, %235 ]
  %240 = phi ptr [ %311, %306 ], [ %233, %235 ]
  %241 = phi i32 [ %309, %306 ], [ 0, %235 ]
  %242 = phi i32 [ %308, %306 ], [ %237, %235 ]
  %243 = phi i32 [ %307, %306 ], [ %17, %235 ]
  %244 = ptrtoint ptr %240 to i32
  switch i32 %244, label %246 [
    i32 1030, label %306
    i32 1026, label %245
  ]

245:                                              ; preds = %238
  store ptr inttoptr (i32 3 to ptr), ptr %229, align 4
  br label %306

246:                                              ; preds = %238
  %247 = and i32 %244, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %250, label %249, !prof !9

249:                                              ; preds = %246
  store i32 %243, ptr %5, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1742, i32 noundef 9, ptr noundef null) #13
  br label %317

250:                                              ; preds = %246
  %251 = add i32 %241, %232
  %252 = load volatile i32, ptr %240, align 4
  %253 = and i32 %252, 65536
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = getelementptr %struct.page, ptr %240, i32 1, i32 1
  %257 = getelementptr inbounds %struct.anon.53, ptr %256, i32 0, i32 2
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  br label %260

260:                                              ; preds = %255, %250
  %261 = phi i32 [ %259, %255 ], [ 0, %250 ]
  %262 = shl i32 4096, %261
  %263 = add i32 %262, -1
  %264 = and i32 %263, %251
  %265 = getelementptr %struct.page, ptr %240, i32 1, i32 1
  %266 = getelementptr inbounds %struct.anon.53, ptr %265, i32 0, i32 2
  br label %267

267:                                              ; preds = %283, %260
  %268 = phi i32 [ %243, %260 ], [ %301, %283 ]
  %269 = phi i32 [ %242, %260 ], [ 4096, %283 ]
  %270 = phi i32 [ %241, %260 ], [ %302, %283 ]
  %271 = phi i32 [ %264, %260 ], [ %305, %283 ]
  %272 = phi i32 [ %239, %260 ], [ %303, %283 ]
  %273 = load volatile i32, ptr %240, align 4
  %274 = and i32 %273, 65536
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %267
  %277 = load i8, ptr %266, align 1
  %278 = zext i8 %277 to i32
  br label %279

279:                                              ; preds = %276, %267
  %280 = phi i32 [ %278, %276 ], [ 0, %267 ]
  %281 = shl i32 4096, %280
  %282 = icmp ult i32 %271, %281
  br i1 %282, label %283, label %306

283:                                              ; preds = %279
  %284 = lshr i32 %271, 12
  %285 = getelementptr %struct.page, ptr %240, i32 %284
  %286 = load i32, ptr @pgprot_kernel, align 4
  %287 = or i32 %286, 512
  %288 = call ptr @__kmap_local_page_prot(ptr noundef %285, i32 noundef %287) #13
  %289 = and i32 %271, 4095
  %290 = getelementptr i8, ptr %288, i32 %289
  %291 = call i32 @llvm.umin.i32(i32 %272, i32 %269)
  %292 = getelementptr i8, ptr %0, i32 %270
  %293 = call i32 @csum_partial_copy_nocheck(ptr noundef %292, ptr noundef %290, i32 noundef %291) #13
  %294 = and i32 %270, 1
  %295 = icmp eq i32 %294, 0
  %296 = call i32 @llvm.fshl.i32(i32 %293, i32 %293, i32 24) #13
  %297 = select i1 %295, i32 %293, i32 %296
  %298 = add i32 %297, %268
  %299 = icmp ult i32 %298, %297
  %300 = zext i1 %299 to i32
  %301 = add i32 %298, %300
  call void @kunmap_local_indexed(ptr noundef %290) #13
  %302 = add i32 %291, %270
  %303 = sub i32 %272, %291
  %304 = icmp eq i32 %303, 0
  %305 = add i32 %291, %271
  br i1 %304, label %313, label %267

306:                                              ; preds = %279, %245, %238
  %307 = phi i32 [ %243, %245 ], [ %243, %238 ], [ %268, %279 ]
  %308 = phi i32 [ %242, %245 ], [ %242, %238 ], [ %269, %279 ]
  %309 = phi i32 [ %241, %245 ], [ %241, %238 ], [ %270, %279 ]
  %310 = phi i32 [ %239, %245 ], [ %239, %238 ], [ %272, %279 ]
  %311 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %6)
  %312 = icmp eq ptr %311, null
  br i1 %312, label %314, label %238

313:                                              ; preds = %283
  store i32 %301, ptr %5, align 4
  br label %317

314:                                              ; preds = %306, %216
  %315 = phi i32 [ %17, %216 ], [ %307, %306 ]
  %316 = phi i32 [ 0, %216 ], [ %309, %306 ]
  store i32 %315, ptr %5, align 4
  br label %317

317:                                              ; preds = %314, %313, %249
  %318 = phi i32 [ %243, %249 ], [ %301, %313 ], [ %315, %314 ]
  %319 = phi i32 [ %241, %249 ], [ %302, %313 ], [ %316, %314 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %320 = load i32, ptr %219, align 4
  %321 = add i32 %320, %319
  store i32 %321, ptr %219, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %322

322:                                              ; preds = %317, %203, %154, %94, %30
  %323 = phi i32 [ %95, %94 ], [ %144, %154 ], [ %204, %203 ], [ %318, %317 ], [ %17, %30 ]
  %324 = phi i32 [ %97, %94 ], [ %145, %154 ], [ %206, %203 ], [ %319, %317 ], [ %28, %30 ]
  %325 = load i32, ptr %23, align 8
  %326 = sub i32 %325, %324
  store i32 %326, ptr %23, align 8
  br label %327

327:                                              ; preds = %322, %27, %19
  %328 = phi i32 [ %21, %19 ], [ %323, %322 ], [ %17, %27 ]
  %329 = phi i32 [ %20, %19 ], [ %324, %322 ], [ 0, %27 ]
  %330 = load i32, ptr %12, align 4
  %331 = and i32 %330, 1
  %332 = icmp eq i32 %331, 0
  %333 = call i32 @llvm.fshl.i32(i32 %328, i32 %328, i32 24) #13
  %334 = select i1 %332, i32 %328, i32 %333
  store i32 %334, ptr %2, align 4
  %335 = add i32 %330, %329
  store i32 %335, ptr %12, align 4
  br label %336

336:                                              ; preds = %327, %9
  %337 = phi i32 [ 0, %9 ], [ %329, %327 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %337
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @csum_and_copy_to_pipe_iter(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !17
  %13 = tail call fastcc zeroext i1 @sanity(ptr noundef %2)
  br i1 %13, label %14, label %74

14:                                               ; preds = %4
  %15 = call fastcc i32 @push_pipe(ptr noundef %2, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %68, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 4
  %19 = load i32, ptr %6, align 4
  %20 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 17
  %21 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 6
  %22 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 3
  %23 = sub i32 4096, %19
  %24 = tail call i32 @llvm.umin.i32(i32 %15, i32 %23)
  %25 = load ptr, ptr %20, align 4
  %26 = and i32 %18, %11
  %27 = getelementptr %struct.pipe_buffer, ptr %25, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr @pgprot_kernel, align 4
  %30 = or i32 %29, 512
  %31 = tail call ptr @__kmap_local_page_prot(ptr noundef %28, i32 noundef %30) #13
  %32 = getelementptr i8, ptr %31, i32 %19
  %33 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %0, ptr noundef %32, i32 noundef %24) #13
  %34 = add i32 %33, %12
  %35 = icmp ult i32 %34, %33
  %36 = zext i1 %35 to i32
  %37 = add i32 %34, %36
  tail call void @kunmap_local_indexed(ptr noundef %31) #13
  store i32 %18, ptr %21, align 8
  %38 = add i32 %24, %19
  store i32 %38, ptr %22, align 4
  %39 = sub i32 %15, %24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %41, %17
  %42 = phi i32 [ %65, %41 ], [ %39, %17 ]
  %43 = phi i32 [ %64, %41 ], [ %37, %17 ]
  %44 = phi i32 [ %66, %41 ], [ %24, %17 ]
  %45 = phi i32 [ %46, %41 ], [ %18, %17 ]
  %46 = add i32 %45, 1
  %47 = tail call i32 @llvm.umin.i32(i32 %42, i32 4096)
  %48 = load ptr, ptr %20, align 4
  %49 = and i32 %46, %11
  %50 = getelementptr %struct.pipe_buffer, ptr %48, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr @pgprot_kernel, align 4
  %53 = or i32 %52, 512
  %54 = tail call ptr @__kmap_local_page_prot(ptr noundef %51, i32 noundef %53) #13
  %55 = getelementptr i8, ptr %0, i32 %44
  %56 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %55, ptr noundef %54, i32 noundef %47) #13
  %57 = and i32 %44, 1
  %58 = icmp eq i32 %57, 0
  %59 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 24) #13
  %60 = select i1 %58, i32 %56, i32 %59
  %61 = add i32 %60, %43
  %62 = icmp ult i32 %61, %60
  %63 = zext i1 %62 to i32
  %64 = add i32 %61, %63
  tail call void @kunmap_local_indexed(ptr noundef %54) #13
  store i32 %46, ptr %21, align 8
  store i32 %47, ptr %22, align 4
  %65 = sub i32 %42, %47
  %66 = add i32 %47, %44
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %41, !llvm.loop !44

68:                                               ; preds = %41, %17, %14
  %69 = phi i32 [ 0, %14 ], [ %24, %17 ], [ %66, %41 ]
  %70 = phi i32 [ %12, %14 ], [ %37, %17 ], [ %64, %41 ]
  store i32 %70, ptr %3, align 4
  %71 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = sub i32 %72, %69
  store i32 %73, ptr %71, align 8
  br label %74

74:                                               ; preds = %68, %4
  %75 = phi i32 [ %69, %68 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hash_and_copy_to_iter(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !17
  %6 = icmp slt i32 %1, 0
  %7 = load i1, ptr @check_copy_size.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %11

11:                                               ; preds = %10, %4
  br i1 %6, label %14, label %12, !prof !8

12:                                               ; preds = %11
  %13 = tail call i32 @_copy_to_iter(ptr noundef %0, i32 noundef %1, ptr noundef %3) #13
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ %13, %12 ], [ 0, %11 ]
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %15) #13
  %16 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 2
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 1
  store i32 %15, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 3
  store ptr null, ptr %18, align 32
  %19 = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 3
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr i8, ptr %20, i32 -60
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %2) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iov_iter_npages(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %94, label %6, !prof !8

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 8
  switch i8 %7, label %94 [
    i8 0, label %8
    i8 1, label %8
    i8 2, label %39
    i8 3, label %41
    i8 4, label %81
  ], !prof !38

8:                                                ; preds = %6, %6
  %9 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %34, %8
  %14 = phi i32 [ 0, %34 ], [ %12, %8 ]
  %15 = phi i32 [ %36, %34 ], [ %4, %8 ]
  %16 = phi i32 [ %35, %34 ], [ 0, %8 ]
  %17 = phi ptr [ %37, %34 ], [ %10, %8 ]
  %18 = getelementptr inbounds %struct.iovec, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %19, %14
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %15) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %13
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 %14
  %26 = ptrtoint ptr %25 to i32
  %27 = and i32 %26, 4095
  %28 = sub i32 %15, %21
  %29 = add i32 %21, 4095
  %30 = add i32 %29, %27
  %31 = lshr i32 %30, 12
  %32 = add i32 %31, %16
  %33 = icmp sgt i32 %32, %1
  br i1 %33, label %94, label %34, !prof !8

34:                                               ; preds = %23, %13
  %35 = phi i32 [ %32, %23 ], [ %16, %13 ]
  %36 = phi i32 [ %28, %23 ], [ %15, %13 ]
  %37 = getelementptr %struct.iovec, ptr %17, i32 1
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %94, label %13

39:                                               ; preds = %6
  %40 = tail call fastcc i32 @bvec_npages(ptr noundef %0, i32 noundef %1)
  br label %94

41:                                               ; preds = %6
  %42 = tail call fastcc zeroext i1 @sanity(ptr noundef %0)
  br i1 %42, label %43, label %94

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  br i1 %48, label %65, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.pipe_inode_info, ptr %50, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, -1
  %55 = getelementptr inbounds %struct.pipe_inode_info, ptr %50, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  %57 = and i32 %54, %45
  %58 = getelementptr %struct.pipe_buffer, ptr %56, i32 %57, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp ne ptr %59, @default_pipe_buf_ops
  %61 = icmp eq i32 %47, 4096
  %62 = select i1 %60, i1 true, i1 %61
  %63 = zext i1 %62 to i32
  %64 = add i32 %45, %63
  br label %65

65:                                               ; preds = %51, %43
  %66 = phi i32 [ %64, %51 ], [ %45, %43 ]
  %67 = getelementptr inbounds %struct.pipe_inode_info, ptr %50, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 %66, %68
  %70 = getelementptr inbounds %struct.pipe_inode_info, ptr %50, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.pipe_inode_info, ptr %50, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 %75, %69
  %77 = tail call i32 @llvm.umin.i32(i32 %76, i32 %71) #13
  br label %78

78:                                               ; preds = %73, %65
  %79 = phi i32 [ %77, %73 ], [ 0, %65 ]
  %80 = tail call i32 @llvm.smin.i32(i32 %79, i32 %1)
  br label %94

81:                                               ; preds = %6
  %82 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = zext i32 %85 to i64
  %87 = add i64 %83, %86
  %88 = srem i64 %87, 4096
  %89 = trunc i64 %88 to i32
  %90 = add i32 %4, 4095
  %91 = add i32 %90, %89
  %92 = lshr i32 %91, 12
  %93 = tail call i32 @llvm.smin.i32(i32 %92, i32 %1)
  br label %94

94:                                               ; preds = %81, %78, %41, %39, %34, %23, %6, %2
  %95 = phi i32 [ %40, %39 ], [ %93, %81 ], [ 0, %2 ], [ %80, %78 ], [ 0, %41 ], [ 0, %6 ], [ %35, %34 ], [ %1, %23 ]
  ret i32 %95
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @bvec_npages(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %29, %6
  %12 = phi i32 [ 0, %29 ], [ %10, %6 ]
  %13 = phi i32 [ %30, %29 ], [ %4, %6 ]
  %14 = phi ptr [ %31, %29 ], [ %8, %6 ]
  %15 = phi i32 [ %27, %29 ], [ 0, %6 ]
  %16 = getelementptr inbounds %struct.bio_vec, ptr %14, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %12
  %19 = and i32 %18, 4095
  %20 = getelementptr inbounds %struct.bio_vec, ptr %14, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %21, %12
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %13)
  %24 = add nuw nsw i32 %19, 4095
  %25 = add i32 %24, %23
  %26 = lshr i32 %25, 12
  %27 = add i32 %26, %15
  %28 = icmp sgt i32 %27, %1
  br i1 %28, label %33, label %29

29:                                               ; preds = %11
  %30 = sub i32 %13, %23
  %31 = getelementptr %struct.bio_vec, ptr %14, i32 1
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %11

33:                                               ; preds = %29, %11, %2
  %34 = phi i32 [ 0, %2 ], [ %27, %29 ], [ %1, %11 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sanity(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %1
  %17 = icmp ne i32 %5, %7
  %18 = add i32 %5, -1
  %19 = icmp eq i32 %12, %18
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %33, !prof !45

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = and i32 %12, %10
  %25 = getelementptr %struct.pipe_buffer, ptr %23, i32 %24, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.pipe_buffer, ptr %23, i32 %24, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  %30 = icmp eq i32 %29, %14
  br i1 %30, label %57, label %33

31:                                               ; preds = %1
  %32 = icmp eq i32 %12, %5
  br i1 %32, label %57, label %33

33:                                               ; preds = %31, %21, %16
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %14) #17
  %35 = load i32, ptr %8, align 4
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %7, i32 noundef %35) #17
  %37 = load i32, ptr %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 17
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ 0, %39 ], [ %53, %41 ]
  %43 = load ptr, ptr %40, align 4
  %44 = getelementptr %struct.pipe_buffer, ptr %43, i32 %42
  %45 = getelementptr %struct.pipe_buffer, ptr %43, i32 %42, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr %struct.pipe_buffer, ptr %43, i32 %42, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.pipe_buffer, ptr %43, i32 %42, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %46, ptr noundef %47, i32 noundef %49, i32 noundef %51) #17
  %53 = add nuw i32 %42, 1
  %54 = load i32, ptr %8, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %41, label %56

56:                                               ; preds = %41, %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #13
  br label %57

57:                                               ; preds = %56, %31, %21
  %58 = phi i1 [ false, %56 ], [ true, %31 ], [ true, %21 ]
  ret i1 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dup_iter(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %0, ptr noundef align 8 dereferenceable(24) %1, i32 24, i1 false)
  %4 = load i8, ptr %0, align 8
  switch i8 %4, label %13 [
    i8 3, label %5
    i8 5, label %20
    i8 4, label %20
    i8 2, label %6
  ], !prof !46

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1841, i32 noundef 9, ptr noundef null) #13
  br label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = mul i32 %10, 12
  %12 = tail call ptr @kmemdup(ptr noundef %8, i32 noundef %11, i32 noundef %2) #13
  store ptr %12, ptr %7, align 4
  br label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %17, 3
  %19 = tail call ptr @kmemdup(ptr noundef %15, i32 noundef %18, i32 noundef %2) #13
  store ptr %19, ptr %14, align 4
  br label %20

20:                                               ; preds = %13, %6, %5, %3, %3
  %21 = phi ptr [ null, %5 ], [ %12, %6 ], [ %19, %13 ], [ null, %3 ], [ null, %3 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iovec_from_user(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %77, label %7

7:                                                ; preds = %5
  %8 = icmp ugt i32 %1, 1024
  br i1 %8, label %77, label %9

9:                                                ; preds = %7
  %10 = icmp ugt i32 %1, %2
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = shl nuw nsw i32 %1, 3
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %77, label %15

15:                                               ; preds = %11, %9
  %16 = phi ptr [ %13, %11 ], [ %3, %9 ]
  %17 = shl nuw nsw i32 %1, 3
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %17, i32 -1090519040) #14
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %4, label %21, label %52

21:                                               ; preds = %15
  br i1 %20, label %22, label %73

22:                                               ; preds = %21
  %23 = tail call ptr @llvm.thread.pointer() #13
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  br label %25

25:                                               ; preds = %46, %22
  %26 = phi i32 [ 0, %22 ], [ %50, %46 ]
  %27 = getelementptr %struct.compat_iovec, ptr %0, i32 %26, i32 1
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #15, !srcloc !12
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %31 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %27, i32 -1090519041) #13, !srcloc !47
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = extractvalue { i32, i32 } %31, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %73, !prof !9

35:                                               ; preds = %25
  %36 = getelementptr %struct.compat_iovec, ptr %0, i32 %26
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #15, !srcloc !12
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %40 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %36, i32 -1090519041) #13, !srcloc !48
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = extractvalue { i32, i32 } %40, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %73, !prof !9

44:                                               ; preds = %35
  %45 = icmp slt i32 %33, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %44
  %47 = inttoptr i32 %42 to ptr
  %48 = getelementptr %struct.iovec, ptr %16, i32 %26
  store ptr %47, ptr %48, align 4
  %49 = getelementptr %struct.iovec, ptr %16, i32 %26, i32 1
  store i32 %33, ptr %49, align 4
  %50 = add nuw i32 %26, 1
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %77, label %25

52:                                               ; preds = %15
  br i1 %20, label %53, label %61, !prof !9

53:                                               ; preds = %52
  %54 = tail call ptr @llvm.thread.pointer() #13
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %55) #15, !srcloc !12
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %59 = tail call i32 @arm_copy_from_user(ptr noundef %16, ptr noundef %0, i32 noundef %17) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61, !prof !9

61:                                               ; preds = %53, %52
  %62 = phi i32 [ %59, %53 ], [ %17, %52 ]
  %63 = sub i32 %17, %62
  %64 = getelementptr i8, ptr %16, i32 %63
  tail call void @llvm.memset.p0.i32(ptr align 1 %64, i8 0, i32 %62, i1 false) #13
  br label %73

65:                                               ; preds = %68
  %66 = add nuw i32 %69, 1
  %67 = icmp eq i32 %66, %1
  br i1 %67, label %77, label %68

68:                                               ; preds = %65, %53
  %69 = phi i32 [ %66, %65 ], [ 0, %53 ]
  %70 = getelementptr %struct.iovec, ptr %16, i32 %69, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %65

73:                                               ; preds = %68, %61, %44, %35, %25, %21
  %74 = phi ptr [ inttoptr (i32 -14 to ptr), %61 ], [ inttoptr (i32 -14 to ptr), %21 ], [ inttoptr (i32 -14 to ptr), %25 ], [ inttoptr (i32 -14 to ptr), %35 ], [ inttoptr (i32 -22 to ptr), %44 ], [ inttoptr (i32 -22 to ptr), %68 ]
  %75 = icmp eq ptr %16, %3
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @kfree(ptr noundef %16) #13
  br label %77

77:                                               ; preds = %76, %73, %65, %46, %11, %7, %5
  %78 = phi ptr [ %3, %5 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %11 ], [ %74, %76 ], [ %74, %73 ], [ %16, %46 ], [ %16, %65 ]
  ret ptr %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__import_iovec(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr %4, align 4
  %9 = tail call ptr @iovec_from_user(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %8, i1 noundef zeroext %6)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %39, label %15

13:                                               ; preds = %7
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %9 to i32
  br label %55

15:                                               ; preds = %34, %11
  %16 = phi i32 [ %36, %34 ], [ 0, %11 ]
  %17 = phi i32 [ %37, %34 ], [ 0, %11 ]
  %18 = getelementptr %struct.iovec, ptr %9, i32 %17
  %19 = getelementptr %struct.iovec, ptr %9, i32 %17, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 %20, i32 -1090519040) #14, !srcloc !49
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr %4, align 4
  %27 = icmp eq ptr %9, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  tail call void @kfree(ptr noundef %9) #13
  br label %33

29:                                               ; preds = %15
  %30 = sub i32 2147479552, %16
  %31 = icmp sgt i32 %20, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  store i32 %30, ptr %19, align 4
  br label %34

33:                                               ; preds = %28, %25
  store ptr null, ptr %4, align 4
  br label %55

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %30, %32 ], [ %20, %29 ]
  %36 = add i32 %35, %16
  %37 = add nuw i32 %17, 1
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %15

39:                                               ; preds = %34, %11
  %40 = phi i32 [ 0, %11 ], [ %36, %34 ]
  %41 = icmp ult i32 %0, 2
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 512, i32 noundef 9, ptr noundef null) #13
  br label %43

43:                                               ; preds = %42, %39
  %44 = icmp ne i32 %0, 0
  %45 = zext i1 %44 to i8
  store i8 0, ptr %5, align 8
  %46 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %46, align 1
  %47 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %45, ptr %47, align 2
  %48 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 %40, ptr %49, align 8
  %50 = getelementptr inbounds i8, ptr %5, i32 12
  store ptr %9, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %5, i32 16
  store i32 %2, ptr %51, align 8
  %52 = load ptr, ptr %4, align 4
  %53 = icmp eq ptr %9, %52
  %54 = select i1 %53, ptr null, ptr %9
  store ptr %54, ptr %4, align 4
  br label %55

55:                                               ; preds = %43, %33, %13
  %56 = phi i32 [ %14, %13 ], [ -14, %33 ], [ %40, %43 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @import_iovec(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = tail call i32 @__import_iovec(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext false)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @import_single_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = tail call i32 @llvm.umin.i32(i32 %2, i32 2147479552)
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %6, i32 -1090519040) #14, !srcloc !50
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23, !prof !9

10:                                               ; preds = %5
  store ptr %1, ptr %3, align 4
  %11 = getelementptr inbounds %struct.iovec, ptr %3, i32 0, i32 1
  store i32 %6, ptr %11, align 4
  %12 = icmp ult i32 %0, 2
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 512, i32 noundef 9, ptr noundef null) #13
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp ne i32 %0, 0
  %16 = zext i1 %15 to i8
  store i8 0, ptr %4, align 8
  %17 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %16, ptr %18, align 2
  %19 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 %6, ptr %20, align 8
  %21 = getelementptr inbounds i8, ptr %4, i32 12
  store ptr %3, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %4, i32 16
  store i32 1, ptr %22, align 8
  br label %23

23:                                               ; preds = %14, %5
  %24 = phi i32 [ 0, %14 ], [ -14, %5 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iov_iter_restore(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 8
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = icmp ne i8 %3, 0
  %7 = load i1, ptr @iov_iter_restore.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %5
  store i1 true, ptr @iov_iter_restore.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2047, i32 noundef 9, ptr noundef null) #13
  %11 = load i8, ptr %0, align 8
  br label %13

12:                                               ; preds = %5
  br i1 %6, label %13, label %30

13:                                               ; preds = %12, %10
  %14 = phi i8 [ %11, %10 ], [ %3, %12 ]
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %30, label %48

16:                                               ; preds = %2
  %17 = load i32, ptr %1, align 4
  %18 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.iov_iter_state, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.iov_iter_state, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = sub i32 %25, %23
  %27 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr %struct.bio_vec, ptr %28, i32 %26
  store ptr %29, ptr %27, align 4
  br label %44

30:                                               ; preds = %13, %12
  %31 = load i32, ptr %1, align 4
  %32 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.iov_iter_state, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.iov_iter_state, ptr %1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %39 = load i32, ptr %38, align 8
  %40 = sub i32 %39, %37
  %41 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.iovec, ptr %42, i32 %40
  store ptr %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %30, %16
  %45 = getelementptr inbounds %struct.iov_iter_state, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  store i32 %46, ptr %47, align 8
  br label %48

48:                                               ; preds = %44, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @push_pipe(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15, %4
  %17 = phi i32 [ %13, %15 ], [ %1, %4 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %79, label %19, !prof !8

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = and i32 %21, %11
  %29 = getelementptr %struct.pipe_buffer, ptr %27, i32 %28, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ne ptr %30, @default_pipe_buf_ops
  %32 = icmp eq i32 %23, 4096
  %33 = select i1 %31, i1 true, i1 %32
  %34 = zext i1 %33 to i32
  %35 = add i32 %21, %34
  br i1 %33, label %36, label %38

36:                                               ; preds = %25, %19
  %37 = phi i32 [ %21, %19 ], [ %35, %25 ]
  store i32 %37, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %50

38:                                               ; preds = %25
  store i32 %35, ptr %2, align 4
  store i32 %23, ptr %3, align 4
  %39 = add i32 %17, -4096
  %40 = add i32 %39, %23
  %41 = icmp slt i32 %40, 1
  %42 = load ptr, ptr %26, align 4
  %43 = and i32 %35, %11
  %44 = getelementptr %struct.pipe_buffer, ptr %42, i32 %43, i32 2
  br i1 %41, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, ptr %44, align 4
  %47 = add i32 %46, %17
  store i32 %47, ptr %44, align 4
  br label %79

48:                                               ; preds = %38
  store i32 4096, ptr %44, align 4
  %49 = add i32 %35, 1
  br label %50

50:                                               ; preds = %48, %36
  %51 = phi i32 [ %49, %48 ], [ %37, %36 ]
  %52 = phi i32 [ %40, %48 ], [ %17, %36 ]
  %53 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 5
  %54 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 17
  %55 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 3
  br label %56

56:                                               ; preds = %66, %50
  %57 = phi i32 [ %51, %50 ], [ %75, %66 ]
  %58 = phi i32 [ %52, %50 ], [ %74, %66 ]
  %59 = load i32, ptr %53, align 4
  %60 = sub i32 %57, %8
  %61 = icmp ult i32 %60, %59
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load ptr, ptr %54, align 4
  %64 = tail call ptr @__alloc_pages(i32 noundef 1051840, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = and i32 %57, %11
  %68 = getelementptr %struct.pipe_buffer, ptr %63, i32 %67
  %69 = getelementptr %struct.pipe_buffer, ptr %63, i32 %67, i32 3
  store ptr @default_pipe_buf_ops, ptr %69, align 4
  %70 = getelementptr %struct.pipe_buffer, ptr %63, i32 %67, i32 4
  store i32 0, ptr %70, align 4
  store ptr %64, ptr %68, align 4
  %71 = getelementptr %struct.pipe_buffer, ptr %63, i32 %67, i32 1
  store i32 0, ptr %71, align 4
  %72 = tail call i32 @llvm.smin.i32(i32 %58, i32 4096)
  %73 = getelementptr %struct.pipe_buffer, ptr %63, i32 %67, i32 2
  store i32 %72, ptr %73, align 4
  %74 = sub i32 %58, %72
  %75 = add i32 %57, 1
  store i32 %75, ptr %55, align 4
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %79, label %56

77:                                               ; preds = %62, %56
  %78 = sub i32 %17, %58
  br label %79

79:                                               ; preds = %77, %66, %45, %16
  %80 = phi i32 [ %17, %45 ], [ %78, %77 ], [ 0, %16 ], [ %17, %66 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_writeable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iter_xarray_populate_pages(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %8 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %7, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %12 = call ptr @xas_load(ptr noundef nonnull %5) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %71, label %14

14:                                               ; preds = %68, %4
  %15 = phi i32 [ %46, %68 ], [ 0, %4 ]
  %16 = phi ptr [ %69, %68 ], [ %12, %4 ]
  %17 = ptrtoint ptr %16 to i32
  switch i32 %17, label %18 [
    i32 1030, label %45
    i32 1026, label %44
  ]

18:                                               ; preds = %14
  %19 = load ptr, ptr %9, align 4
  %20 = icmp eq ptr %19, null
  %21 = load i8, ptr %8, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.xa_node, ptr %19, i32 0, i32 7, i32 %22
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.xarray, ptr %24, i32 0, i32 2
  %26 = select i1 %20, ptr %25, ptr %23
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %16, %27
  br i1 %28, label %29, label %44, !prof !9

29:                                               ; preds = %18
  %30 = getelementptr ptr, ptr %0, i32 %15
  store ptr %16, ptr %30, align 4
  %31 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !9

35:                                               ; preds = %29
  %36 = add i32 %32, -1
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i32 [ %36, %35 ], [ %17, %29 ]
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #13, !srcloc !27
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #13, !srcloc !28
  %42 = add i32 %15, 1
  %43 = icmp eq i32 %42, %3
  br i1 %43, label %71, label %45

44:                                               ; preds = %18, %14
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  br label %45

45:                                               ; preds = %44, %37, %14
  %46 = phi i32 [ %42, %37 ], [ %15, %14 ], [ %15, %44 ]
  %47 = load ptr, ptr %9, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = and i32 %48, 3
  %50 = icmp ne i32 %49, 0
  %51 = icmp eq ptr %47, null
  %52 = or i1 %51, %50
  br i1 %52, label %59, label %53, !prof !8

53:                                               ; preds = %45
  %54 = load i8, ptr %47, align 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59, !prof !9

56:                                               ; preds = %53
  %57 = load i8, ptr %8, align 2
  %58 = icmp eq i8 %57, 63
  br i1 %58, label %59, label %61, !prof !8

59:                                               ; preds = %56, %53, %45
  %60 = call ptr @__xas_next(ptr noundef nonnull %5) #13
  br label %68

61:                                               ; preds = %56
  %62 = load i32, ptr %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %6, align 4
  %64 = add i8 %57, 1
  store i8 %64, ptr %8, align 2
  %65 = zext i8 %64 to i32
  %66 = getelementptr %struct.xa_node, ptr %47, i32 0, i32 7, i32 %65
  %67 = load volatile ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %61, %59
  %69 = phi ptr [ %60, %59 ], [ %67, %61 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %14

71:                                               ; preds = %68, %37, %4
  %72 = phi i32 [ 0, %4 ], [ %3, %37 ], [ %46, %68 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xas_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 16000, i32 4, i32 2, i32 1}
!11 = !{i64 2152785598, i64 2152785623}
!12 = !{i64 3756305}
!13 = !{i64 3756502}
!14 = !{i64 2151241781}
!15 = !{i64 2149434386}
!16 = !{i64 2149434603}
!17 = !{!"auto-init"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.peeled.count", i32 1}
!20 = !{!"branch_weights", i32 4001, i32 4000000}
!21 = !{i64 2152786167, i64 2152786192}
!22 = !{!"branch_weights", i32 2000, i32 64032000, i32 16008, i32 8004, i32 4002, i32 2001, i32 1}
!23 = !{i64 2152509687}
!24 = !{i64 2151262699}
!25 = !{i64 2151262906}
!26 = !{i64 2152512312}
!27 = !{i64 358029, i64 2147859595, i64 2147859621, i64 2147859668, i64 2147859690, i64 2147859718, i64 2147859738}
!28 = !{i64 2147933296, i64 2147933322, i64 2147933351, i64 2147933385, i64 2147933416, i64 2147933439}
!29 = !{i64 2151257483, i64 2151257508}
!30 = distinct !{!30, !19}
!31 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!32 = !{!"branch_weights", i32 2000, i32 32032008, i32 32016000, i32 8004, i32 4002, i32 2, i32 2000}
!33 = !{i64 2152998703, i64 2152999183, i64 2152998740, i64 2152998796, i64 2152998830, i64 2152998854, i64 2152998895, i64 2152998916, i64 2152998944, i64 2152998978}
!34 = !{!"branch_weights", i32 1, i32 4002, i32 4000, i32 1}
!35 = !{i64 2153009092, i64 2153009572, i64 2153009129, i64 2153009185, i64 2153009219, i64 2153009243, i64 2153009284, i64 2153009305, i64 2153009333, i64 2153009367}
!36 = !{i64 2153011786, i64 2153012266, i64 2153011823, i64 2153011879, i64 2153011913, i64 2153011937, i64 2153011978, i64 2153011999, i64 2153012027, i64 2153012061}
!37 = !{i64 2153013997, i64 2153014477, i64 2153014034, i64 2153014090, i64 2153014124, i64 2153014148, i64 2153014189, i64 2153014210, i64 2153014238, i64 2153014272}
!38 = !{!"branch_weights", i32 1, i32 16008, i32 16000, i32 4, i32 2, i32 1}
!39 = distinct !{!39, !19}
!40 = !{i8 0, i8 2}
!41 = !{i64 2153023307, i64 2153027848, i64 2153023344, i64 2153023400, i64 2153023434, i64 2153023458, i64 2153023499, i64 2153023520, i64 2153023548, i64 2153023582}
!42 = !{i64 2152752142, i64 2152752167}
!43 = !{i64 2151260771, i64 2151260796}
!44 = distinct !{!44, !19}
!45 = !{!"branch_weights", i32 4000000, i32 4001}
!46 = !{!"branch_weights", i32 -294967296, i32 4004000, i32 4002000, i32 4000000, i32 -294967296}
!47 = !{i64 2153130406, i64 2153130716, i64 2153131030, i64 2153131344}
!48 = !{i64 2153165895, i64 2153166205, i64 2153166519, i64 2153166833}
!49 = !{i64 2153169744, i64 2153169769}
!50 = !{i64 2153172358, i64 2153172383}
