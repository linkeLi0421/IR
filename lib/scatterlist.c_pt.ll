; ModuleID = '/llk/IR/lib/scatterlist.c_pt.bc'
source_filename = "../lib/scatterlist.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_next:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_next\22\09\09\09\09\09"
module asm "__kstrtabns_sg_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_nents:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_nents\22\09\09\09\09\09"
module asm "__kstrtabns_sg_nents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_nents_for_len:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_nents_for_len\22\09\09\09\09\09"
module asm "__kstrtabns_sg_nents_for_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_last:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_last\22\09\09\09\09\09"
module asm "__kstrtabns_sg_last:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_init_table:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_init_table\22\09\09\09\09\09"
module asm "__kstrtabns_sg_init_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_init_one:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_init_one\22\09\09\09\09\09"
module asm "__kstrtabns_sg_init_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sg_free_table:\09\09\09\09\09"
module asm "\09.asciz \09\22__sg_free_table\22\09\09\09\09\09"
module asm "__kstrtabns___sg_free_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_free_append_table:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_free_append_table\22\09\09\09\09\09"
module asm "__kstrtabns_sg_free_append_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_free_table:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_free_table\22\09\09\09\09\09"
module asm "__kstrtabns_sg_free_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sg_alloc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22__sg_alloc_table\22\09\09\09\09\09"
module asm "__kstrtabns___sg_alloc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_alloc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_alloc_table\22\09\09\09\09\09"
module asm "__kstrtabns_sg_alloc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_alloc_append_table_from_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_alloc_append_table_from_pages\22\09\09\09\09\09"
module asm "__kstrtabns_sg_alloc_append_table_from_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_alloc_table_from_pages_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_alloc_table_from_pages_segment\22\09\09\09\09\09"
module asm "__kstrtabns_sg_alloc_table_from_pages_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sgl_alloc_order:\09\09\09\09\09"
module asm "\09.asciz \09\22sgl_alloc_order\22\09\09\09\09\09"
module asm "__kstrtabns_sgl_alloc_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sgl_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22sgl_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_sgl_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sgl_free_n_order:\09\09\09\09\09"
module asm "\09.asciz \09\22sgl_free_n_order\22\09\09\09\09\09"
module asm "__kstrtabns_sgl_free_n_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sgl_free_order:\09\09\09\09\09"
module asm "\09.asciz \09\22sgl_free_order\22\09\09\09\09\09"
module asm "__kstrtabns_sgl_free_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sgl_free:\09\09\09\09\09"
module asm "\09.asciz \09\22sgl_free\22\09\09\09\09\09"
module asm "__kstrtabns_sgl_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sg_page_iter_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__sg_page_iter_start\22\09\09\09\09\09"
module asm "__kstrtabns___sg_page_iter_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sg_page_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22__sg_page_iter_next\22\09\09\09\09\09"
module asm "__kstrtabns___sg_page_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sg_page_iter_dma_next:\09\09\09\09\09"
module asm "\09.asciz \09\22__sg_page_iter_dma_next\22\09\09\09\09\09"
module asm "__kstrtabns___sg_page_iter_dma_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_miter_start:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_miter_start\22\09\09\09\09\09"
module asm "__kstrtabns_sg_miter_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_miter_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_miter_skip\22\09\09\09\09\09"
module asm "__kstrtabns_sg_miter_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_miter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_miter_next\22\09\09\09\09\09"
module asm "__kstrtabns_sg_miter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_miter_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_miter_stop\22\09\09\09\09\09"
module asm "__kstrtabns_sg_miter_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_copy_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_copy_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_sg_copy_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_copy_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_copy_from_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_sg_copy_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_copy_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_copy_to_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_sg_copy_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_pcopy_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_pcopy_from_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_sg_pcopy_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_pcopy_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_pcopy_to_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_sg_pcopy_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_zero_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_zero_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_sg_zero_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.58, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.58 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.42, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8 }
%struct.llist_node = type { ptr }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_sg_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_next = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_next to i32), ptr @__kstrtab_sg_next, ptr @__kstrtabns_sg_next }, section "___ksymtab+sg_next", align 4
@__kstrtab_sg_nents = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_nents = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_nents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_nents to i32), ptr @__kstrtab_sg_nents, ptr @__kstrtabns_sg_nents }, section "___ksymtab+sg_nents", align 4
@__kstrtab_sg_nents_for_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_nents_for_len = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_nents_for_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_nents_for_len to i32), ptr @__kstrtab_sg_nents_for_len, ptr @__kstrtabns_sg_nents_for_len }, section "___ksymtab+sg_nents_for_len", align 4
@__kstrtab_sg_last = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_last = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_last = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_last to i32), ptr @__kstrtab_sg_last, ptr @__kstrtabns_sg_last }, section "___ksymtab+sg_last", align 4
@__kstrtab_sg_init_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_init_table = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_init_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_init_table to i32), ptr @__kstrtab_sg_init_table, ptr @__kstrtabns_sg_init_table }, section "___ksymtab+sg_init_table", align 4
@__kstrtab_sg_init_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_init_one = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_init_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_init_one to i32), ptr @__kstrtab_sg_init_one, ptr @__kstrtabns_sg_init_one }, section "___ksymtab+sg_init_one", align 4
@__kstrtab___sg_free_table = external dso_local constant [0 x i8], align 1
@__kstrtabns___sg_free_table = external dso_local constant [0 x i8], align 1
@__ksymtab___sg_free_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sg_free_table to i32), ptr @__kstrtab___sg_free_table, ptr @__kstrtabns___sg_free_table }, section "___ksymtab+__sg_free_table", align 4
@__kstrtab_sg_free_append_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_free_append_table = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_free_append_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_free_append_table to i32), ptr @__kstrtab_sg_free_append_table, ptr @__kstrtabns_sg_free_append_table }, section "___ksymtab+sg_free_append_table", align 4
@__kstrtab_sg_free_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_free_table = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_free_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_free_table to i32), ptr @__kstrtab_sg_free_table, ptr @__kstrtabns_sg_free_table }, section "___ksymtab+sg_free_table", align 4
@__kstrtab___sg_alloc_table = external dso_local constant [0 x i8], align 1
@__kstrtabns___sg_alloc_table = external dso_local constant [0 x i8], align 1
@__ksymtab___sg_alloc_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sg_alloc_table to i32), ptr @__kstrtab___sg_alloc_table, ptr @__kstrtabns___sg_alloc_table }, section "___ksymtab+__sg_alloc_table", align 4
@__kstrtab_sg_alloc_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_alloc_table = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_alloc_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_alloc_table to i32), ptr @__kstrtab_sg_alloc_table, ptr @__kstrtabns_sg_alloc_table }, section "___ksymtab+sg_alloc_table", align 4
@.str = private unnamed_addr constant [18 x i8] c"lib/scatterlist.c\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_sg_alloc_append_table_from_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_alloc_append_table_from_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_alloc_append_table_from_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_alloc_append_table_from_pages to i32), ptr @__kstrtab_sg_alloc_append_table_from_pages, ptr @__kstrtabns_sg_alloc_append_table_from_pages }, section "___ksymtab+sg_alloc_append_table_from_pages", align 4
@__kstrtab_sg_alloc_table_from_pages_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_alloc_table_from_pages_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_alloc_table_from_pages_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_alloc_table_from_pages_segment to i32), ptr @__kstrtab_sg_alloc_table_from_pages_segment, ptr @__kstrtabns_sg_alloc_table_from_pages_segment }, section "___ksymtab+sg_alloc_table_from_pages_segment", align 4
@__kstrtab_sgl_alloc_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_sgl_alloc_order = external dso_local constant [0 x i8], align 1
@__ksymtab_sgl_alloc_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sgl_alloc_order to i32), ptr @__kstrtab_sgl_alloc_order, ptr @__kstrtabns_sgl_alloc_order }, section "___ksymtab+sgl_alloc_order", align 4
@__kstrtab_sgl_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sgl_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_sgl_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sgl_alloc to i32), ptr @__kstrtab_sgl_alloc, ptr @__kstrtabns_sgl_alloc }, section "___ksymtab+sgl_alloc", align 4
@__kstrtab_sgl_free_n_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_sgl_free_n_order = external dso_local constant [0 x i8], align 1
@__ksymtab_sgl_free_n_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sgl_free_n_order to i32), ptr @__kstrtab_sgl_free_n_order, ptr @__kstrtabns_sgl_free_n_order }, section "___ksymtab+sgl_free_n_order", align 4
@__kstrtab_sgl_free_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_sgl_free_order = external dso_local constant [0 x i8], align 1
@__ksymtab_sgl_free_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sgl_free_order to i32), ptr @__kstrtab_sgl_free_order, ptr @__kstrtabns_sgl_free_order }, section "___ksymtab+sgl_free_order", align 4
@__kstrtab_sgl_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_sgl_free = external dso_local constant [0 x i8], align 1
@__ksymtab_sgl_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sgl_free to i32), ptr @__kstrtab_sgl_free, ptr @__kstrtabns_sgl_free }, section "___ksymtab+sgl_free", align 4
@__kstrtab___sg_page_iter_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___sg_page_iter_start = external dso_local constant [0 x i8], align 1
@__ksymtab___sg_page_iter_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sg_page_iter_start to i32), ptr @__kstrtab___sg_page_iter_start, ptr @__kstrtabns___sg_page_iter_start }, section "___ksymtab+__sg_page_iter_start", align 4
@__kstrtab___sg_page_iter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns___sg_page_iter_next = external dso_local constant [0 x i8], align 1
@__ksymtab___sg_page_iter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sg_page_iter_next to i32), ptr @__kstrtab___sg_page_iter_next, ptr @__kstrtabns___sg_page_iter_next }, section "___ksymtab+__sg_page_iter_next", align 4
@__kstrtab___sg_page_iter_dma_next = external dso_local constant [0 x i8], align 1
@__kstrtabns___sg_page_iter_dma_next = external dso_local constant [0 x i8], align 1
@__ksymtab___sg_page_iter_dma_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sg_page_iter_dma_next to i32), ptr @__kstrtab___sg_page_iter_dma_next, ptr @__kstrtabns___sg_page_iter_dma_next }, section "___ksymtab+__sg_page_iter_dma_next", align 4
@__kstrtab_sg_miter_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_miter_start = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_miter_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_miter_start to i32), ptr @__kstrtab_sg_miter_start, ptr @__kstrtabns_sg_miter_start }, section "___ksymtab+sg_miter_start", align 4
@__kstrtab_sg_miter_skip = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_miter_skip = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_miter_skip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_miter_skip to i32), ptr @__kstrtab_sg_miter_skip, ptr @__kstrtabns_sg_miter_skip }, section "___ksymtab+sg_miter_skip", align 4
@__kstrtab_sg_miter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_miter_next = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_miter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_miter_next to i32), ptr @__kstrtab_sg_miter_next, ptr @__kstrtabns_sg_miter_next }, section "___ksymtab+sg_miter_next", align 4
@sg_miter_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sg_miter_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_miter_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_miter_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_miter_stop to i32), ptr @__kstrtab_sg_miter_stop, ptr @__kstrtabns_sg_miter_stop }, section "___ksymtab+sg_miter_stop", align 4
@__kstrtab_sg_copy_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_copy_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_copy_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_copy_buffer to i32), ptr @__kstrtab_sg_copy_buffer, ptr @__kstrtabns_sg_copy_buffer }, section "___ksymtab+sg_copy_buffer", align 4
@__kstrtab_sg_copy_from_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_copy_from_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_copy_from_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_copy_from_buffer to i32), ptr @__kstrtab_sg_copy_from_buffer, ptr @__kstrtabns_sg_copy_from_buffer }, section "___ksymtab+sg_copy_from_buffer", align 4
@__kstrtab_sg_copy_to_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_copy_to_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_copy_to_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_copy_to_buffer to i32), ptr @__kstrtab_sg_copy_to_buffer, ptr @__kstrtabns_sg_copy_to_buffer }, section "___ksymtab+sg_copy_to_buffer", align 4
@__kstrtab_sg_pcopy_from_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_pcopy_from_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_pcopy_from_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_pcopy_from_buffer to i32), ptr @__kstrtab_sg_pcopy_from_buffer, ptr @__kstrtabns_sg_pcopy_from_buffer }, section "___ksymtab+sg_pcopy_from_buffer", align 4
@__kstrtab_sg_pcopy_to_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_pcopy_to_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_pcopy_to_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_pcopy_to_buffer to i32), ptr @__kstrtab_sg_pcopy_to_buffer, ptr @__kstrtabns_sg_pcopy_to_buffer }, section "___ksymtab+sg_pcopy_to_buffer", align 4
@__kstrtab_sg_zero_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_zero_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_zero_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_zero_buffer to i32), ptr @__kstrtab_sg_zero_buffer, ptr @__kstrtabns_sg_zero_buffer }, section "___ksymtab+sg_zero_buffer", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab___sg_alloc_table, ptr @__ksymtab___sg_free_table, ptr @__ksymtab___sg_page_iter_dma_next, ptr @__ksymtab___sg_page_iter_next, ptr @__ksymtab___sg_page_iter_start, ptr @__ksymtab_sg_alloc_append_table_from_pages, ptr @__ksymtab_sg_alloc_table, ptr @__ksymtab_sg_alloc_table_from_pages_segment, ptr @__ksymtab_sg_copy_buffer, ptr @__ksymtab_sg_copy_from_buffer, ptr @__ksymtab_sg_copy_to_buffer, ptr @__ksymtab_sg_free_append_table, ptr @__ksymtab_sg_free_table, ptr @__ksymtab_sg_init_one, ptr @__ksymtab_sg_init_table, ptr @__ksymtab_sg_last, ptr @__ksymtab_sg_miter_next, ptr @__ksymtab_sg_miter_skip, ptr @__ksymtab_sg_miter_start, ptr @__ksymtab_sg_miter_stop, ptr @__ksymtab_sg_nents, ptr @__ksymtab_sg_nents_for_len, ptr @__ksymtab_sg_next, ptr @__ksymtab_sg_pcopy_from_buffer, ptr @__ksymtab_sg_pcopy_to_buffer, ptr @__ksymtab_sg_zero_buffer, ptr @__ksymtab_sgl_alloc, ptr @__ksymtab_sgl_alloc_order, ptr @__ksymtab_sgl_free, ptr @__ksymtab_sgl_free_n_order, ptr @__ksymtab_sgl_free_order], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @sg_next(ptr noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr %struct.scatterlist, ptr %0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %5
  %11 = and i32 %7, -4
  %12 = inttoptr i32 %11 to ptr
  br label %13

13:                                               ; preds = %10, %5, %1
  %14 = phi ptr [ null, %1 ], [ %12, %10 ], [ %6, %5 ]
  ret ptr %14
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @sg_nents(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %18, %1
  %4 = phi i32 [ %6, %18 ], [ 0, %1 ]
  %5 = phi ptr [ %19, %18 ], [ %0, %1 ]
  %6 = add i32 %4, 1
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr %struct.scatterlist, ptr %5, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15, !prof !8

15:                                               ; preds = %10
  %16 = and i32 %12, -4
  %17 = inttoptr i32 %16 to ptr
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ %11, %10 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %3

21:                                               ; preds = %18, %3, %1
  %22 = phi i32 [ 0, %1 ], [ %6, %18 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @sg_nents_for_len(ptr noundef readonly %0, i64 noundef %1) #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %28, %4
  %7 = phi i64 [ %14, %28 ], [ 0, %4 ]
  %8 = phi i32 [ %10, %28 ], [ 0, %4 ]
  %9 = phi ptr [ %29, %28 ], [ %0, %4 ]
  %10 = add i32 %8, 1
  %11 = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = add i64 %7, %13
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %31

16:                                               ; preds = %6
  %17 = load i32, ptr %9, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = getelementptr %struct.scatterlist, ptr %9, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !8

25:                                               ; preds = %20
  %26 = and i32 %22, -4
  %27 = inttoptr i32 %26 to ptr
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %27, %25 ], [ %21, %20 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6

31:                                               ; preds = %28, %16, %6, %4, %2
  %32 = phi i32 [ 0, %2 ], [ -22, %4 ], [ -22, %16 ], [ %10, %6 ], [ -22, %28 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sg_last(ptr noundef readonly %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load i32, ptr null, align 2147483648
  br label %24

6:                                                ; preds = %21, %2
  %7 = phi i32 [ %9, %21 ], [ 0, %2 ]
  %8 = phi ptr [ %22, %21 ], [ %0, %2 ]
  %9 = add nuw i32 %7, 1
  %10 = load i32, ptr %8, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = getelementptr %struct.scatterlist, ptr %8, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18, !prof !8

18:                                               ; preds = %13
  %19 = and i32 %15, -4
  %20 = inttoptr i32 %19 to ptr
  br label %21

21:                                               ; preds = %18, %13, %6
  %22 = phi ptr [ null, %6 ], [ %20, %18 ], [ %14, %13 ]
  %23 = icmp eq i32 %9, %1
  br i1 %23, label %24, label %6

24:                                               ; preds = %21, %4
  %25 = phi i32 [ %5, %4 ], [ %10, %21 ]
  %26 = phi ptr [ null, %4 ], [ %8, %21 ]
  %27 = and i32 %25, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/scatterlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 109, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

30:                                               ; preds = %24
  ret ptr %26
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @sg_init_table(ptr nocapture noundef %0, i32 noundef %1) #4 {
  %3 = mul i32 %1, 20
  tail call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %3, i1 false)
  %4 = add i32 %1, -1
  %5 = getelementptr %struct.scatterlist, ptr %0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -4
  %8 = or i32 %7, 2
  store i32 %8, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sg_init_one(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %4, i8 0, i32 16, i1 false) #14
  store i32 2, ptr %0, align 4
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %1 to i32
  %7 = add i32 %6, 1073741824
  %8 = lshr i32 %7, 12
  %9 = getelementptr %struct.page, ptr %5, i32 %8
  %10 = ptrtoint ptr %9 to i32
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !11
  unreachable

14:                                               ; preds = %3
  %15 = and i32 %6, 4095
  %16 = or i32 %10, 2
  store i32 %16, ptr %0, align 4
  %17 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 1
  store i32 %15, ptr %17, align 4
  %18 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 2
  store i32 %2, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sg_free_table(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #3 {
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8, !prof !9

8:                                                ; preds = %5
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 %1, i32 %2
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  %13 = icmp ult i32 %10, %4
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = add i32 %10, -1
  %16 = getelementptr %struct.scatterlist, ptr %6, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -4
  %19 = inttoptr i32 %18 to ptr
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi ptr [ %19, %14 ], [ null, %12 ]
  %22 = phi i32 [ %10, %14 ], [ %4, %12 ]
  %23 = phi i32 [ %15, %14 ], [ %4, %12 ]
  %24 = sub i32 %4, %23
  br i1 %9, label %25, label %26

25:                                               ; preds = %20
  tail call void %3(ptr noundef nonnull %6, i32 noundef %22) #14
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %26
  %29 = add i32 %1, -1
  br label %30

30:                                               ; preds = %39, %28
  %31 = phi ptr [ %40, %39 ], [ %21, %28 ]
  %32 = phi i32 [ %43, %39 ], [ %24, %28 ]
  %33 = icmp ugt i32 %32, %1
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr %struct.scatterlist, ptr %31, i32 %29
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -4
  %38 = inttoptr i32 %37 to ptr
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi ptr [ %38, %34 ], [ null, %30 ]
  %41 = phi i32 [ %1, %34 ], [ %32, %30 ]
  %42 = phi i32 [ %29, %34 ], [ %32, %30 ]
  %43 = sub i32 %32, %42
  tail call void %3(ptr noundef %31, i32 noundef %41) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %30, !llvm.loop !12

45:                                               ; preds = %39, %26, %8
  store ptr null, ptr %0, align 4
  br label %46

46:                                               ; preds = %45, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sg_free_append_table(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.sg_append_table, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6, !prof !9

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %6
  %9 = icmp ugt i32 %3, 204
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 204
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = ptrtoint ptr %4 to i32
  tail call void @free_pages(i32 noundef %13, i32 noundef 0) #14
  br label %30

14:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %4) #14
  br label %30

15:                                               ; preds = %15, %8
  %16 = phi ptr [ %21, %15 ], [ %4, %8 ]
  %17 = phi i32 [ %22, %15 ], [ %3, %8 ]
  %18 = getelementptr %struct.scatterlist, ptr %16, i32 203
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -4
  %21 = inttoptr i32 %20 to ptr
  %22 = add i32 %17, -203
  %23 = ptrtoint ptr %16 to i32
  tail call void @free_pages(i32 noundef %23, i32 noundef 0) #14
  %24 = icmp ugt i32 %22, 204
  br i1 %24, label %15, label %25

25:                                               ; preds = %15
  %26 = inttoptr i32 %20 to ptr
  %27 = icmp eq i32 %22, 204
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @free_pages(i32 noundef %20, i32 noundef 0) #14
  br label %30

29:                                               ; preds = %25
  tail call void @kfree(ptr noundef %26) #14
  br label %30

30:                                               ; preds = %29, %28, %14, %12, %6
  store ptr null, ptr %0, align 4
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sg_free_table(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6, !prof !9

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %6
  %9 = icmp ugt i32 %3, 204
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 204
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = ptrtoint ptr %4 to i32
  tail call void @free_pages(i32 noundef %13, i32 noundef 0) #14
  br label %30

14:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %4) #14
  br label %30

15:                                               ; preds = %15, %8
  %16 = phi ptr [ %21, %15 ], [ %4, %8 ]
  %17 = phi i32 [ %22, %15 ], [ %3, %8 ]
  %18 = getelementptr %struct.scatterlist, ptr %16, i32 203
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -4
  %21 = inttoptr i32 %20 to ptr
  %22 = add i32 %17, -203
  %23 = ptrtoint ptr %16 to i32
  tail call void @free_pages(i32 noundef %23, i32 noundef 0) #14
  %24 = icmp ugt i32 %22, 204
  br i1 %24, label %15, label %25

25:                                               ; preds = %15
  %26 = inttoptr i32 %20 to ptr
  %27 = icmp eq i32 %22, 204
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @free_pages(i32 noundef %20, i32 noundef 0) #14
  br label %30

29:                                               ; preds = %25
  tail call void @kfree(ptr noundef %26) #14
  br label %30

30:                                               ; preds = %29, %28, %14, %12, %6
  store ptr null, ptr %0, align 4
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sg_alloc_table(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) #3 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %0, i8 0, i32 12, i1 false)
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %4, 0
  %11 = select i1 %10, i32 %2, i32 %4
  %12 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 1
  br label %14

14:                                               ; preds = %54, %9
  %15 = phi ptr [ %3, %9 ], [ null, %54 ]
  %16 = phi ptr [ null, %9 ], [ %35, %54 ]
  %17 = phi i32 [ %1, %9 ], [ %24, %54 ]
  %18 = phi i32 [ %11, %9 ], [ %2, %54 ]
  %19 = phi i32 [ 0, %9 ], [ %18, %54 ]
  %20 = icmp ugt i32 %17, %18
  %21 = add i32 %18, -1
  %22 = select i1 %20, i32 %21, i32 %17
  %23 = tail call i32 @llvm.umin.i32(i32 %17, i32 %18)
  %24 = sub i32 %17, %22
  %25 = icmp eq ptr %15, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = tail call ptr %6(i32 noundef %23, i32 noundef %5) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %34, !prof !9

29:                                               ; preds = %26
  %30 = icmp eq ptr %16, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %12, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %12, align 4
  store i32 %33, ptr %13, align 4
  br label %62

34:                                               ; preds = %26, %14
  %35 = phi ptr [ %27, %26 ], [ %15, %14 ]
  %36 = mul i32 %23, 20
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %35, i8 0, i32 %36, i1 false) #14
  %37 = add i32 %23, -1
  %38 = getelementptr %struct.scatterlist, ptr %35, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -4
  %41 = or i32 %40, 2
  store i32 %41, ptr %38, align 4
  %42 = load i32, ptr %12, align 4
  %43 = add i32 %42, %22
  store i32 %43, ptr %12, align 4
  store i32 %43, ptr %13, align 4
  %44 = icmp eq ptr %16, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %34
  %46 = add i32 %19, -1
  %47 = getelementptr %struct.scatterlist, ptr %16, i32 %46
  %48 = getelementptr %struct.scatterlist, ptr %16, i32 %46, i32 1
  store i32 0, ptr %48, align 4
  %49 = getelementptr %struct.scatterlist, ptr %16, i32 %46, i32 2
  store i32 0, ptr %49, align 4
  %50 = ptrtoint ptr %35 to i32
  %51 = and i32 %50, -4
  %52 = or i32 %51, 1
  store i32 %52, ptr %47, align 4
  br label %54

53:                                               ; preds = %34
  store ptr %35, ptr %0, align 4
  br label %54

54:                                               ; preds = %53, %45
  %55 = icmp eq i32 %24, 0
  br i1 %55, label %56, label %14

56:                                               ; preds = %54
  %57 = add i32 %22, -1
  %58 = getelementptr %struct.scatterlist, ptr %35, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -4
  %61 = or i32 %60, 2
  store i32 %61, ptr %58, align 4
  br label %62

62:                                               ; preds = %56, %31, %29, %7
  %63 = phi i32 [ -22, %7 ], [ -12, %31 ], [ -12, %29 ], [ 0, %56 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_alloc_table(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %0, i8 0, i32 12, i1 false) #14
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %57, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %49, %5
  %9 = phi ptr [ null, %5 ], [ %24, %49 ]
  %10 = phi i32 [ %1, %5 ], [ %15, %49 ]
  %11 = phi i32 [ -1, %5 ], [ 203, %49 ]
  %12 = icmp ugt i32 %10, 204
  %13 = select i1 %12, i32 203, i32 %10
  %14 = tail call i32 @llvm.umin.i32(i32 %10, i32 204) #14
  %15 = sub i32 %10, %13
  %16 = icmp ugt i32 %10, 203
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = tail call i32 @__get_free_pages(i32 noundef %2, i32 noundef 0) #14
  %19 = inttoptr i32 %18 to ptr
  br label %23

20:                                               ; preds = %8
  %21 = mul nuw nsw i32 %14, 20
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef %2) #15
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %19, %17 ], [ %22, %20 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31, !prof !9

26:                                               ; preds = %23
  %27 = icmp eq ptr %9, null
  br i1 %27, label %57, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %6, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %6, align 4
  store i32 %30, ptr %7, align 4
  br label %57

31:                                               ; preds = %23
  %32 = mul nuw nsw i32 %14, 20
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %24, i8 0, i32 %32, i1 false) #14
  %33 = add nsw i32 %14, -1
  %34 = getelementptr %struct.scatterlist, ptr %24, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -4
  %37 = or i32 %36, 2
  store i32 %37, ptr %34, align 4
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, %13
  store i32 %39, ptr %6, align 4
  store i32 %39, ptr %7, align 4
  %40 = icmp eq ptr %9, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %31
  %42 = getelementptr %struct.scatterlist, ptr %9, i32 %11
  %43 = getelementptr %struct.scatterlist, ptr %9, i32 %11, i32 1
  store i32 0, ptr %43, align 4
  %44 = getelementptr %struct.scatterlist, ptr %9, i32 %11, i32 2
  store i32 0, ptr %44, align 4
  %45 = ptrtoint ptr %24 to i32
  %46 = and i32 %45, -4
  %47 = or i32 %46, 1
  store i32 %47, ptr %42, align 4
  br label %49

48:                                               ; preds = %31
  store ptr %24, ptr %0, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = icmp eq i32 %15, 0
  br i1 %50, label %51, label %8

51:                                               ; preds = %49
  %52 = add nsw i32 %13, -1
  %53 = getelementptr %struct.scatterlist, ptr %24, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -4
  %56 = or i32 %55, 2
  store i32 %56, ptr %53, align 4
  br label %59

57:                                               ; preds = %28, %26, %3
  %58 = phi i32 [ -12, %26 ], [ -12, %28 ], [ -22, %3 ]
  tail call void @sg_free_table(ptr noundef %0)
  br label %59

59:                                               ; preds = %57, %51
  %60 = phi i32 [ %58, %57 ], [ 0, %51 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_alloc_append_table_from_pages(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
  %9 = getelementptr inbounds %struct.sg_append_table, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = and i32 %5, -4096
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 456, i32 noundef 9, ptr noundef null) #14
  br label %234

14:                                               ; preds = %8
  %15 = icmp eq ptr %10, null
  br i1 %15, label %59, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %20 = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %23, label %37, !prof !8

23:                                               ; preds = %16
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %227, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %21, %27
  %29 = lshr i32 %28, 12
  %30 = load i32, ptr %10, align 4
  %31 = and i32 %30, 33554428
  %32 = sub i32 %31, %18
  %33 = lshr exact i32 %32, 5
  %34 = add i32 %33, %19
  %35 = add i32 %29, %34
  %36 = and i32 %35, 1048575
  br label %38

37:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 468, i32 noundef 9, ptr noundef null) #14
  br label %234

38:                                               ; preds = %54, %25
  %39 = phi ptr [ %56, %54 ], [ %1, %25 ]
  %40 = phi i32 [ %57, %54 ], [ %2, %25 ]
  %41 = phi i32 [ %55, %54 ], [ %36, %25 ]
  %42 = load ptr, ptr %39, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = sub i32 %43, %18
  %45 = ashr exact i32 %44, 5
  %46 = add i32 %45, %19
  %47 = icmp eq i32 %46, %41
  br i1 %47, label %48, label %59

48:                                               ; preds = %38
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 4096
  %53 = icmp ugt i32 %52, %11
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  store i32 %52, ptr %50, align 4
  %55 = add i32 %41, 1
  %56 = getelementptr ptr, ptr %39, i32 1
  %57 = add i32 %40, -1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %227, label %38

59:                                               ; preds = %48, %38, %14
  %60 = phi i32 [ 0, %14 ], [ %21, %48 ], [ %21, %38 ]
  %61 = phi i32 [ %2, %14 ], [ %40, %48 ], [ %40, %38 ]
  %62 = phi ptr [ %1, %14 ], [ %39, %48 ], [ %39, %38 ]
  %63 = icmp ugt i32 %61, 1
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %68 = add i32 %67, 1
  br label %74

69:                                               ; preds = %97
  %70 = icmp eq i32 %98, 0
  br i1 %70, label %220, label %71

71:                                               ; preds = %69, %59
  %72 = phi i32 [ %98, %69 ], [ 1, %59 ]
  %73 = getelementptr inbounds %struct.sg_append_table, ptr %0, i32 0, i32 2
  br label %102

74:                                               ; preds = %97, %64
  %75 = phi i32 [ 1, %64 ], [ %100, %97 ]
  %76 = phi i32 [ 0, %64 ], [ %99, %97 ]
  %77 = phi i32 [ 1, %64 ], [ %98, %97 ]
  %78 = add i32 %76, 4096
  %79 = icmp ult i32 %78, %11
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = getelementptr ptr, ptr %62, i32 %75
  %82 = load ptr, ptr %81, align 4
  %83 = ptrtoint ptr %82 to i32
  %84 = sub i32 %83, %66
  %85 = ashr exact i32 %84, 5
  %86 = add i32 %85, %67
  %87 = add i32 %75, -1
  %88 = getelementptr ptr, ptr %62, i32 %87
  %89 = load ptr, ptr %88, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = sub i32 %90, %66
  %92 = ashr exact i32 %91, 5
  %93 = add i32 %68, %92
  %94 = icmp eq i32 %86, %93
  br i1 %94, label %97, label %95

95:                                               ; preds = %80, %74
  %96 = add i32 %77, 1
  br label %97

97:                                               ; preds = %95, %80
  %98 = phi i32 [ %96, %95 ], [ %77, %80 ]
  %99 = phi i32 [ 0, %95 ], [ %78, %80 ]
  %100 = add nuw i32 %75, 1
  %101 = icmp eq i32 %100, %61
  br i1 %101, label %69, label %74

102:                                              ; preds = %207, %71
  %103 = phi i32 [ %3, %71 ], [ 0, %207 ]
  %104 = phi i32 [ %4, %71 ], [ %218, %207 ]
  %105 = phi ptr [ %10, %71 ], [ %190, %207 ]
  %106 = phi i32 [ 0, %71 ], [ %217, %207 ]
  %107 = phi i32 [ 0, %71 ], [ %137, %207 ]
  %108 = load ptr, ptr @mem_map, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %111 = add i32 %110, 1
  %112 = add i32 %107, 1
  %113 = call i32 @llvm.umax.i32(i32 %61, i32 %112)
  br label %114

114:                                              ; preds = %122, %102
  %115 = phi i32 [ %120, %122 ], [ 0, %102 ]
  %116 = phi i32 [ %117, %122 ], [ %107, %102 ]
  %117 = add i32 %116, 1
  %118 = icmp ult i32 %117, %61
  br i1 %118, label %119, label %136

119:                                              ; preds = %114
  %120 = add nuw i32 %115, 4096
  %121 = icmp ult i32 %120, %11
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = getelementptr ptr, ptr %62, i32 %117
  %124 = load ptr, ptr %123, align 4
  %125 = ptrtoint ptr %124 to i32
  %126 = sub i32 %125, %109
  %127 = ashr exact i32 %126, 5
  %128 = add i32 %127, %110
  %129 = getelementptr ptr, ptr %62, i32 %116
  %130 = load ptr, ptr %129, align 4
  %131 = ptrtoint ptr %130 to i32
  %132 = sub i32 %131, %109
  %133 = ashr exact i32 %132, 5
  %134 = add i32 %111, %133
  %135 = icmp eq i32 %128, %134
  br i1 %135, label %114, label %136

136:                                              ; preds = %122, %119, %114
  %137 = phi i32 [ %117, %119 ], [ %117, %122 ], [ %113, %114 ]
  %138 = sub i32 %72, %106
  %139 = add i32 %138, %6
  %140 = icmp eq ptr %105, null
  br i1 %140, label %160, label %141

141:                                              ; preds = %136
  %142 = load i32, ptr %105, align 4
  %143 = and i32 %142, 2
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = getelementptr %struct.scatterlist, ptr %105, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150, !prof !8

150:                                              ; preds = %145
  %151 = and i32 %147, -4
  %152 = inttoptr i32 %151 to ptr
  br label %153

153:                                              ; preds = %150, %145, %141
  %154 = phi ptr [ null, %141 ], [ %152, %150 ], [ %146, %145 ]
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 2
  %157 = icmp ne i32 %156, 0
  %158 = icmp ne i32 %139, 1
  %159 = and i1 %158, %157
  br i1 %159, label %160, label %189

160:                                              ; preds = %153, %136
  %161 = phi ptr [ %154, %153 ], [ null, %136 ]
  %162 = tail call i32 @llvm.umin.i32(i32 %139, i32 204) #14
  %163 = icmp ugt i32 %139, 203
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = tail call i32 @__get_free_pages(i32 noundef %7, i32 noundef 0) #14
  %166 = inttoptr i32 %165 to ptr
  br label %170

167:                                              ; preds = %160
  %168 = mul nuw nsw i32 %162, 20
  %169 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %168, i32 noundef %7) #15
  br label %170

170:                                              ; preds = %167, %164
  %171 = phi ptr [ %166, %164 ], [ %169, %167 ]
  %172 = icmp eq ptr %171, null
  br i1 %172, label %192, label %173

173:                                              ; preds = %170
  %174 = mul nuw nsw i32 %162, 20
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %171, i8 0, i32 %174, i1 false) #14
  %175 = add nsw i32 %162, -1
  %176 = getelementptr %struct.scatterlist, ptr %171, i32 %175
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, -4
  %179 = or i32 %178, 2
  store i32 %179, ptr %176, align 4
  br i1 %140, label %188, label %180

180:                                              ; preds = %173
  %181 = load i32, ptr %73, align 4
  %182 = add i32 %181, %175
  store i32 %182, ptr %73, align 4
  %183 = getelementptr inbounds %struct.scatterlist, ptr %161, i32 0, i32 1
  store i32 0, ptr %183, align 4
  %184 = getelementptr inbounds %struct.scatterlist, ptr %161, i32 0, i32 2
  store i32 0, ptr %184, align 4
  %185 = ptrtoint ptr %171 to i32
  %186 = and i32 %185, -4
  %187 = or i32 %186, 1
  store i32 %187, ptr %161, align 4
  br label %189

188:                                              ; preds = %173
  store ptr %171, ptr %0, align 4
  store i32 %162, ptr %73, align 4
  br label %189

189:                                              ; preds = %188, %180, %153
  %190 = phi ptr [ %154, %153 ], [ %171, %188 ], [ %171, %180 ]
  %191 = icmp ugt ptr %190, inttoptr (i32 -4096 to ptr)
  br i1 %191, label %192, label %200

192:                                              ; preds = %189, %170
  %193 = phi ptr [ %190, %189 ], [ inttoptr (i32 -12 to ptr), %170 ]
  %194 = load ptr, ptr %9, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.scatterlist, ptr %194, i32 0, i32 2
  store i32 %60, ptr %197, align 4
  br label %198

198:                                              ; preds = %196, %192
  %199 = ptrtoint ptr %193 to i32
  br label %234

200:                                              ; preds = %189
  %201 = getelementptr ptr, ptr %62, i32 %107
  %202 = load ptr, ptr %201, align 4
  %203 = ptrtoint ptr %202 to i32
  %204 = and i32 %203, 3
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %207, label %206, !prof !8

206:                                              ; preds = %200
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !11
  unreachable

207:                                              ; preds = %200
  %208 = sub i32 %137, %107
  %209 = shl i32 %208, 12
  %210 = sub i32 %209, %103
  %211 = tail call i32 @llvm.umin.i32(i32 %104, i32 %210)
  %212 = load i32, ptr %190, align 4
  %213 = and i32 %212, 3
  %214 = or i32 %213, %203
  store i32 %214, ptr %190, align 4
  %215 = getelementptr inbounds %struct.scatterlist, ptr %190, i32 0, i32 1
  store i32 %103, ptr %215, align 4
  %216 = getelementptr inbounds %struct.scatterlist, ptr %190, i32 0, i32 2
  store i32 %211, ptr %216, align 4
  %217 = add nuw i32 %106, 1
  %218 = sub i32 %104, %210
  %219 = icmp eq i32 %217, %72
  br i1 %219, label %220, label %102

220:                                              ; preds = %207, %69
  %221 = phi i32 [ 0, %69 ], [ %72, %207 ]
  %222 = phi ptr [ %10, %69 ], [ %190, %207 ]
  %223 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, %221
  store i32 %225, ptr %223, align 4
  %226 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2
  store i32 %225, ptr %226, align 4
  store ptr %222, ptr %9, align 4
  br label %227

227:                                              ; preds = %220, %54, %23
  %228 = phi ptr [ %222, %220 ], [ %10, %23 ], [ %10, %54 ]
  %229 = icmp eq i32 %6, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i32, ptr %228, align 4
  %232 = and i32 %231, -4
  %233 = or i32 %232, 2
  store i32 %233, ptr %228, align 4
  br label %234

234:                                              ; preds = %230, %227, %198, %37, %13
  %235 = phi i32 [ -22, %13 ], [ 0, %230 ], [ 0, %227 ], [ -22, %37 ], [ %199, %198 ]
  ret i32 %235
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_alloc_table_from_pages_segment(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #3 {
  %8 = alloca %struct.sg_append_table, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false)
  %9 = call i32 @sg_alloc_append_table_from_pages(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef %6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  call void @sg_free_append_table(ptr noundef nonnull %8)
  br label %19

12:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %8, i32 12, i1 false)
  %13 = getelementptr inbounds %struct.sg_append_table, ptr %8, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 580, i32 noundef 9, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %12, %11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #14
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sgl_alloc_order(i64 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef writeonly %4) #3 {
  %6 = add i64 %0, -1
  %7 = shl i32 4096, %1
  %8 = add i32 %7, -1
  %9 = zext i32 %8 to i64
  %10 = or i64 %6, %9
  %11 = add i64 %10, 1
  %12 = add i32 %1, 12
  %13 = zext i32 %12 to i64
  %14 = lshr i64 %11, %13
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, %12
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, %0
  br i1 %18, label %105, label %19

19:                                               ; preds = %5
  br i1 %2, label %20, label %24

20:                                               ; preds = %19
  %21 = icmp eq i32 %15, -1
  br i1 %21, label %105, label %22

22:                                               ; preds = %20
  %23 = add nuw i32 %15, 1
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %23, %22 ], [ %15, %19 ]
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 20) #14
  %27 = extractvalue { i32, i1 } %26, 1
  %28 = extractvalue { i32, i1 } %26, 0
  br i1 %27, label %105, label %29, !prof !9

29:                                               ; preds = %24
  %30 = and i32 %3, -2
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef %30) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %105, label %33

33:                                               ; preds = %29
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %31, i8 0, i32 %28, i1 false) #14
  %34 = add nsw i32 %25, -1
  %35 = getelementptr %struct.scatterlist, ptr %31, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -4
  %38 = or i32 %37, 2
  store i32 %38, ptr %35, align 4
  %39 = icmp eq i64 %0, 0
  br i1 %39, label %102, label %40

40:                                               ; preds = %33
  %41 = zext i32 %7 to i64
  br label %42

42:                                               ; preds = %99, %40
  %43 = phi i64 [ %0, %40 ], [ %88, %99 ]
  %44 = phi ptr [ %31, %40 ], [ %100, %99 ]
  %45 = tail call ptr @__alloc_pages(i32 noundef %3, i32 noundef %1, i32 noundef 0, ptr noundef null) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %69, %42
  %48 = phi i32 [ %58, %69 ], [ 0, %42 ]
  %49 = phi ptr [ %70, %69 ], [ %31, %42 ]
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, -4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = inttoptr i32 %51 to ptr
  tail call void @__free_pages(ptr noundef nonnull %54, i32 noundef %1) #14
  %55 = load i32, ptr %49, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi i32 [ %50, %47 ], [ %55, %53 ]
  %58 = add nuw nsw i32 %48, 1
  %59 = and i32 %57, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = getelementptr %struct.scatterlist, ptr %49, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66, !prof !8

66:                                               ; preds = %61
  %67 = and i32 %63, -4
  %68 = inttoptr i32 %67 to ptr
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi ptr [ %68, %66 ], [ %62, %61 ]
  %71 = icmp ne i32 %58, 2147483647
  %72 = icmp ne ptr %70, null
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %47, label %74

74:                                               ; preds = %69, %56
  tail call void @kfree(ptr noundef nonnull %31) #14
  br label %105

75:                                               ; preds = %42
  %76 = ptrtoint ptr %45 to i32
  %77 = and i32 %76, 3
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79, !prof !8

79:                                               ; preds = %75
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !11
  unreachable

80:                                               ; preds = %75
  %81 = tail call i64 @llvm.umin.i64(i64 %43, i64 %41)
  %82 = trunc i64 %81 to i32
  %83 = load i32, ptr %44, align 4
  %84 = and i32 %83, 3
  %85 = or i32 %84, %76
  store i32 %85, ptr %44, align 4
  %86 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 1
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 2
  store i32 %82, ptr %87, align 4
  %88 = sub i64 %43, %81
  %89 = and i32 %85, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %80
  %92 = getelementptr %struct.scatterlist, ptr %44, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96, !prof !8

96:                                               ; preds = %91
  %97 = and i32 %93, -4
  %98 = inttoptr i32 %97 to ptr
  br label %99

99:                                               ; preds = %96, %91, %80
  %100 = phi ptr [ null, %80 ], [ %98, %96 ], [ %92, %91 ]
  %101 = icmp eq i64 %88, 0
  br i1 %101, label %102, label %42

102:                                              ; preds = %99, %33
  %103 = icmp eq ptr %4, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %102
  store i32 %15, ptr %4, align 4
  br label %105

105:                                              ; preds = %104, %102, %74, %29, %24, %20, %5
  %106 = phi ptr [ null, %74 ], [ null, %5 ], [ null, %20 ], [ null, %29 ], [ %31, %104 ], [ %31, %102 ], [ null, %24 ]
  ret ptr %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sgl_free_order(ptr noundef %0, i32 noundef %1) #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %26, %2
  %5 = phi i32 [ %15, %26 ], [ 0, %2 ]
  %6 = phi ptr [ %27, %26 ], [ %0, %2 ]
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = inttoptr i32 %8 to ptr
  tail call void @__free_pages(ptr noundef nonnull %11, i32 noundef %1) #14
  %12 = load i32, ptr %6, align 4
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i32 [ %7, %4 ], [ %12, %10 ]
  %15 = add nuw nsw i32 %5, 1
  %16 = and i32 %14, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = getelementptr %struct.scatterlist, ptr %6, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !8

23:                                               ; preds = %18
  %24 = and i32 %20, -4
  %25 = inttoptr i32 %24 to ptr
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %19, %18 ]
  %28 = icmp ne i32 %15, 2147483647
  %29 = icmp ne ptr %27, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %4, label %31

31:                                               ; preds = %26, %13, %2
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sgl_alloc(i64 noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = tail call ptr @sgl_alloc_order(i64 noundef %0, i32 noundef 0, i1 noundef zeroext false, i32 noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sgl_free_n_order(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp sgt i32 %1, 0
  %5 = icmp ne ptr %0, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %34

7:                                                ; preds = %29, %3
  %8 = phi i32 [ %18, %29 ], [ 0, %3 ]
  %9 = phi ptr [ %30, %29 ], [ %0, %3 ]
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = inttoptr i32 %11 to ptr
  tail call void @__free_pages(ptr noundef nonnull %14, i32 noundef %2) #14
  %15 = load i32, ptr %9, align 4
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i32 [ %10, %7 ], [ %15, %13 ]
  %18 = add nuw nsw i32 %8, 1
  %19 = and i32 %17, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = getelementptr %struct.scatterlist, ptr %9, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !8

26:                                               ; preds = %21
  %27 = and i32 %23, -4
  %28 = inttoptr i32 %27 to ptr
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi ptr [ %28, %26 ], [ %22, %21 ]
  %31 = icmp slt i32 %18, %1
  %32 = icmp ne ptr %30, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %7, label %34

34:                                               ; preds = %29, %16, %3
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sgl_free(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %25, %1
  %4 = phi i32 [ %14, %25 ], [ 0, %1 ]
  %5 = phi ptr [ %26, %25 ], [ %0, %1 ]
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = inttoptr i32 %7 to ptr
  tail call void @__free_pages(ptr noundef nonnull %10, i32 noundef 0) #14
  %11 = load i32, ptr %5, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %6, %3 ], [ %11, %9 ]
  %14 = add nuw nsw i32 %4, 1
  %15 = and i32 %13, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = getelementptr %struct.scatterlist, ptr %5, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !8

22:                                               ; preds = %17
  %23 = and i32 %19, -4
  %24 = inttoptr i32 %23 to ptr
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %24, %22 ], [ %18, %17 ]
  %27 = icmp ne i32 %14, 2147483647
  %28 = icmp ne ptr %26, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %3, label %30

30:                                               ; preds = %25, %12, %1
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @__sg_page_iter_start(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 2
  store i32 %2, ptr %6, align 4
  store ptr %1, ptr %0, align 4
  %7 = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 1
  store i32 %3, ptr %7, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__sg_page_iter_next(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  store i32 %13, ptr %11, align 4
  store i32 1, ptr %9, align 4
  br label %14

14:                                               ; preds = %39, %8
  %15 = phi i32 [ %41, %39 ], [ %3, %8 ]
  %16 = phi ptr [ %40, %39 ], [ %6, %8 ]
  %17 = phi i32 [ %27, %39 ], [ %13, %8 ]
  %18 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, 4095
  %23 = add i32 %22, %21
  %24 = lshr i32 %23, 12
  %25 = icmp ult i32 %17, %24
  br i1 %25, label %47, label %26

26:                                               ; preds = %14
  %27 = sub i32 %17, %24
  store i32 %27, ptr %11, align 4
  %28 = load i32, ptr %16, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = getelementptr %struct.scatterlist, ptr %16, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36, !prof !8

36:                                               ; preds = %31
  %37 = and i32 %33, -4
  %38 = inttoptr i32 %37 to ptr
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ %38, %36 ], [ %32, %31 ]
  store ptr %40, ptr %0, align 4
  %41 = add i32 %15, -1
  store i32 %41, ptr %2, align 4
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq ptr %40, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %47, label %14

45:                                               ; preds = %26
  store ptr null, ptr %0, align 4
  %46 = add i32 %15, -1
  store i32 %46, ptr %2, align 4
  br label %47

47:                                               ; preds = %45, %39, %14, %5, %1
  %48 = phi i1 [ false, %5 ], [ false, %1 ], [ false, %45 ], [ %25, %39 ], [ %25, %14 ]
  ret i1 %48
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__sg_page_iter_dma_next(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sg_page_iter, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  store i32 %13, ptr %11, align 4
  store i32 1, ptr %9, align 4
  br label %14

14:                                               ; preds = %39, %8
  %15 = phi i32 [ %41, %39 ], [ %3, %8 ]
  %16 = phi ptr [ %40, %39 ], [ %6, %8 ]
  %17 = phi i32 [ %27, %39 ], [ %13, %8 ]
  %18 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, 4095
  %23 = add i32 %22, %21
  %24 = lshr i32 %23, 12
  %25 = icmp ult i32 %17, %24
  br i1 %25, label %47, label %26

26:                                               ; preds = %14
  %27 = sub i32 %17, %24
  store i32 %27, ptr %11, align 4
  %28 = load i32, ptr %16, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = getelementptr %struct.scatterlist, ptr %16, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36, !prof !8

36:                                               ; preds = %31
  %37 = and i32 %33, -4
  %38 = inttoptr i32 %37 to ptr
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ %38, %36 ], [ %32, %31 ]
  store ptr %40, ptr %0, align 4
  %41 = add i32 %15, -1
  store i32 %41, ptr %2, align 4
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq ptr %40, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %47, label %14

45:                                               ; preds = %26
  store ptr null, ptr %0, align 4
  %46 = add i32 %15, -1
  store i32 %46, ptr %2, align 4
  br label %47

47:                                               ; preds = %45, %39, %14, %5, %1
  %48 = phi i1 [ false, %5 ], [ false, %1 ], [ false, %45 ], [ %25, %39 ], [ %25, %14 ]
  ret i1 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sg_miter_start(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 4, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  store i32 %2, ptr %6, align 4
  store ptr %1, ptr %5, align 4
  %7 = and i32 %3, 6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 792, i32 noundef 9, ptr noundef null) #14
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 7
  store i32 %3, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sg_miter_skip(ptr nocapture noundef %0, i32 noundef %1) #3 {
  tail call void @sg_miter_stop(ptr noundef %0)
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 5
  br label %7

7:                                                ; preds = %10, %4
  %8 = phi i32 [ %1, %4 ], [ %16, %10 ]
  %9 = tail call fastcc zeroext i1 @sg_miter_get_next_page(ptr noundef %0)
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, ptr %5, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %8, i32 %11)
  %13 = load i32, ptr %6, align 4
  %14 = add i32 %13, %12
  store i32 %14, ptr %6, align 4
  %15 = sub i32 %11, %12
  store i32 %15, ptr %5, align 4
  %16 = sub i32 %8, %12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %7

18:                                               ; preds = %10, %7, %2
  %19 = phi i1 [ true, %2 ], [ %9, %7 ], [ %9, %10 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sg_miter_stop(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %3, %5
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 911, i32 noundef 9, ptr noundef null) #14
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %2, align 4
  %14 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %18, %13
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load ptr, ptr %0, align 4
  tail call void @flush_dcache_page(ptr noundef %25) #14
  %26 = load i32, ptr %20, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi i32 [ %26, %24 ], [ %21, %12 ]
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @llvm.thread.pointer() #14
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 149
  %34 = load i32, ptr %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = load i1, ptr @sg_miter_stop.__already_done, align 1
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %39, label %38, !prof !8

38:                                               ; preds = %31
  store i1 true, ptr @sg_miter_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 922, i32 noundef 9, ptr noundef null) #14
  br label %39

39:                                               ; preds = %38, %31
  %40 = load ptr, ptr %9, align 4
  tail call void @kunmap_local_indexed(ptr noundef %40) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %41 = load i32, ptr %33, align 8
  %42 = add i32 %41, -1
  store i32 %42, ptr %33, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %54

43:                                               ; preds = %27
  %44 = load ptr, ptr %0, align 4
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 30
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = icmp ne i32 %46, 3
  %50 = load i32, ptr @movable_zone, align 4
  %51 = icmp ne i32 %50, 2
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %43
  tail call void @kunmap_high(ptr noundef %44) #14
  br label %54

54:                                               ; preds = %53, %48, %39
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %55

55:                                               ; preds = %54, %8
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sg_miter_get_next_page(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %69

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 4, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 4, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 4, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  store i32 %18, ptr %16, align 4
  store i32 1, ptr %14, align 4
  br label %19

19:                                               ; preds = %44, %13
  %20 = phi i32 [ %46, %44 ], [ %8, %13 ]
  %21 = phi ptr [ %45, %44 ], [ %11, %13 ]
  %22 = phi i32 [ %32, %44 ], [ %18, %13 ]
  %23 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %24, 4095
  %28 = add i32 %27, %26
  %29 = lshr i32 %28, 12
  %30 = icmp ult i32 %22, %29
  br i1 %30, label %52, label %31

31:                                               ; preds = %19
  %32 = sub i32 %22, %29
  store i32 %32, ptr %16, align 4
  %33 = load i32, ptr %21, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = getelementptr %struct.scatterlist, ptr %21, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41, !prof !8

41:                                               ; preds = %36
  %42 = and i32 %38, -4
  %43 = inttoptr i32 %42 to ptr
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi ptr [ %43, %41 ], [ %37, %36 ]
  store ptr %45, ptr %6, align 4
  %46 = add i32 %20, -1
  store i32 %46, ptr %7, align 4
  %47 = icmp eq i32 %46, 0
  %48 = icmp eq ptr %45, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %69, label %19

50:                                               ; preds = %31
  store ptr null, ptr %6, align 4
  %51 = add i32 %20, -1
  store i32 %51, ptr %7, align 4
  br label %69

52:                                               ; preds = %19
  %53 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %54 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %55 = icmp eq i32 %22, 0
  %56 = select i1 %55, i32 %24, i32 0
  %57 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 5
  %58 = lshr i32 %56, 12
  %59 = add i32 %58, %22
  store i32 %59, ptr %16, align 4
  %60 = and i32 %56, 4095
  store i32 %60, ptr %57, align 4
  %61 = load i32, ptr %53, align 4
  %62 = load i32, ptr %54, align 4
  %63 = mul i32 %59, -4096
  %64 = sub i32 %63, %60
  %65 = add i32 %64, %61
  %66 = add i32 %65, %62
  %67 = sub nuw nsw i32 4096, %60
  %68 = tail call i32 @llvm.umin.i32(i32 %66, i32 %67)
  store i32 %68, ptr %2, align 4
  br label %69

69:                                               ; preds = %52, %50, %44, %10, %5, %1
  %70 = phi i1 [ true, %52 ], [ true, %1 ], [ false, %10 ], [ false, %5 ], [ false, %50 ], [ false, %44 ]
  ret i1 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sg_miter_next(ptr nocapture noundef %0) #3 {
  tail call void @sg_miter_stop(ptr noundef %0)
  %2 = tail call fastcc zeroext i1 @sg_miter_get_next_page(ptr noundef %0)
  br i1 %2, label %3, label %47

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 4, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.page, ptr %8, i32 %10
  store ptr %11, ptr %0, align 4
  %12 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 3
  store i32 %13, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load i32, ptr @pgprot_kernel, align 4
  %22 = or i32 %21, 512
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %23 = tail call ptr @llvm.thread.pointer() #14
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 149
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %27 = tail call ptr @__kmap_local_page_prot(ptr noundef %11, i32 noundef %22) #14
  br label %41

28:                                               ; preds = %3
  %29 = load i32, ptr %11, align 4
  %30 = lshr i32 %29, 30
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = icmp ne i32 %30, 3
  %34 = load i32, ptr @movable_zone, align 4
  %35 = icmp ne i32 %34, 2
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = tail call ptr @page_address(ptr noundef %11) #14
  br label %41

39:                                               ; preds = %32, %28
  %40 = tail call ptr @kmap_high(ptr noundef %11) #14
  br label %41

41:                                               ; preds = %39, %37, %20
  %42 = phi ptr [ %27, %20 ], [ %40, %39 ], [ %38, %37 ]
  %43 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = getelementptr inbounds %struct.sg_mapping_iter, ptr %0, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %41, %1
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_copy_buffer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) #3 {
  %7 = alloca %struct.sg_mapping_iter, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #14
  %8 = select i1 %5, i32 5, i32 3
  %9 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 4
  %10 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 4, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  store i32 %1, ptr %10, align 4
  store ptr %0, ptr %9, align 4
  %11 = and i32 %8, 6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 792, i32 noundef 9, ptr noundef null) #14
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 7
  store i32 %8, ptr %15, align 4
  call void @sg_miter_stop(ptr noundef nonnull %7) #14
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %94, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 6
  %19 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 5
  %20 = load i32, ptr %18, align 4
  %21 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 4, i32 3
  %22 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 4, i32 1
  br label %23

23:                                               ; preds = %86, %17
  %24 = phi i32 [ %91, %86 ], [ %20, %17 ]
  %25 = phi i32 [ %92, %86 ], [ %4, %17 ]
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %19, align 4
  br label %86

29:                                               ; preds = %23
  %30 = load i32, ptr %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %117, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %9, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %117, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %21, align 4
  %37 = load i32, ptr %22, align 4
  %38 = add i32 %37, %36
  store i32 %38, ptr %22, align 4
  store i32 1, ptr %21, align 4
  br label %39

39:                                               ; preds = %64, %35
  %40 = phi i32 [ %66, %64 ], [ %30, %35 ]
  %41 = phi ptr [ %65, %64 ], [ %33, %35 ]
  %42 = phi i32 [ %52, %64 ], [ %38, %35 ]
  %43 = getelementptr inbounds %struct.scatterlist, ptr %41, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.scatterlist, ptr %41, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %44, 4095
  %48 = add i32 %47, %46
  %49 = lshr i32 %48, 12
  %50 = icmp ult i32 %42, %49
  br i1 %50, label %70, label %51

51:                                               ; preds = %39
  %52 = sub i32 %42, %49
  store i32 %52, ptr %22, align 4
  %53 = load i32, ptr %41, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %117

56:                                               ; preds = %51
  %57 = getelementptr %struct.scatterlist, ptr %41, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61, !prof !8

61:                                               ; preds = %56
  %62 = and i32 %58, -4
  %63 = inttoptr i32 %62 to ptr
  br label %64

64:                                               ; preds = %61, %56
  %65 = phi ptr [ %63, %61 ], [ %57, %56 ]
  store ptr %65, ptr %9, align 4
  %66 = add i32 %40, -1
  store i32 %66, ptr %10, align 4
  %67 = icmp eq i32 %66, 0
  %68 = icmp eq ptr %65, null
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %117, label %39

70:                                               ; preds = %39
  %71 = getelementptr inbounds %struct.scatterlist, ptr %41, i32 0, i32 1
  %72 = getelementptr inbounds %struct.scatterlist, ptr %41, i32 0, i32 2
  %73 = icmp eq i32 %42, 0
  %74 = select i1 %73, i32 %44, i32 0
  %75 = lshr i32 %74, 12
  %76 = add i32 %75, %42
  store i32 %76, ptr %22, align 4
  %77 = and i32 %74, 4095
  store i32 %77, ptr %19, align 4
  %78 = load i32, ptr %71, align 4
  %79 = load i32, ptr %72, align 4
  %80 = mul i32 %76, -4096
  %81 = sub i32 %80, %77
  %82 = add i32 %81, %78
  %83 = add i32 %82, %79
  %84 = sub nuw nsw i32 4096, %77
  %85 = tail call i32 @llvm.umin.i32(i32 %83, i32 %84) #14
  br label %86

86:                                               ; preds = %70, %27
  %87 = phi i32 [ %77, %70 ], [ %28, %27 ]
  %88 = phi i32 [ %85, %70 ], [ %24, %27 ]
  %89 = tail call i32 @llvm.smin.i32(i32 %25, i32 %88) #14
  %90 = add i32 %87, %89
  store i32 %90, ptr %19, align 4
  %91 = sub i32 %88, %89
  store i32 %91, ptr %18, align 4
  %92 = sub i32 %25, %89
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %23

94:                                               ; preds = %86, %14
  %95 = icmp eq i32 %3, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 2
  %98 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 1
  br label %99

99:                                               ; preds = %112, %96
  %100 = phi i32 [ 0, %96 ], [ %113, %112 ]
  %101 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %7)
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i32, ptr %97, align 4
  %104 = sub i32 %3, %100
  %105 = tail call i32 @llvm.umin.i32(i32 %103, i32 %104)
  br i1 %5, label %106, label %109

106:                                              ; preds = %102
  %107 = getelementptr i8, ptr %2, i32 %100
  %108 = load ptr, ptr %98, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %107, ptr align 1 %108, i32 %105, i1 false)
  br label %112

109:                                              ; preds = %102
  %110 = load ptr, ptr %98, align 4
  %111 = getelementptr i8, ptr %2, i32 %100
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %110, ptr align 1 %111, i32 %105, i1 false)
  br label %112

112:                                              ; preds = %109, %106
  %113 = add i32 %105, %100
  %114 = icmp ult i32 %113, %3
  br i1 %114, label %99, label %115

115:                                              ; preds = %112, %99, %94
  %116 = phi i32 [ 0, %94 ], [ %113, %112 ], [ %100, %99 ]
  call void @sg_miter_stop(ptr noundef nonnull %7)
  br label %117

117:                                              ; preds = %115, %64, %51, %32, %29
  %118 = phi i32 [ %116, %115 ], [ 0, %51 ], [ 0, %64 ], [ 0, %29 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #14
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_copy_from_buffer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = alloca %struct.sg_mapping_iter, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 4, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false) #14
  store i32 %1, ptr %7, align 4
  store ptr %0, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 7
  store i32 3, ptr %8, align 4
  call void @sg_miter_stop(ptr noundef nonnull %5) #14
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 1
  br label %13

13:                                               ; preds = %16, %10
  %14 = phi i32 [ 0, %10 ], [ %22, %16 ]
  %15 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %5) #14
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, ptr %11, align 4
  %18 = sub i32 %3, %14
  %19 = tail call i32 @llvm.umin.i32(i32 %17, i32 %18) #14
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr i8, ptr %2, i32 %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %21, i32 %19, i1 false) #14
  %22 = add i32 %19, %14
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %13, label %24

24:                                               ; preds = %16, %13, %4
  %25 = phi i32 [ 0, %4 ], [ %14, %13 ], [ %22, %16 ]
  call void @sg_miter_stop(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #14
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_copy_to_buffer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #3 {
  %5 = alloca %struct.sg_mapping_iter, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 4, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false) #14
  store i32 %1, ptr %7, align 4
  store ptr %0, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 7
  store i32 5, ptr %8, align 4
  call void @sg_miter_stop(ptr noundef nonnull %5) #14
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 1
  br label %13

13:                                               ; preds = %16, %10
  %14 = phi i32 [ 0, %10 ], [ %22, %16 ]
  %15 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %5) #14
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, ptr %11, align 4
  %18 = sub i32 %3, %14
  %19 = tail call i32 @llvm.umin.i32(i32 %17, i32 %18) #14
  %20 = getelementptr i8, ptr %2, i32 %14
  %21 = load ptr, ptr %12, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %21, i32 %19, i1 false) #14
  %22 = add i32 %19, %14
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %13, label %24

24:                                               ; preds = %16, %13, %4
  %25 = phi i32 [ 0, %4 ], [ %14, %13 ], [ %22, %16 ]
  call void @sg_miter_stop(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #14
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_pcopy_from_buffer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = tail call i32 @sg_copy_buffer(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_pcopy_to_buffer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = tail call i32 @sg_copy_buffer(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext true)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_zero_buffer(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = alloca %struct.sg_mapping_iter, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 4, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store i32 %1, ptr %7, align 4
  store ptr %0, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 7
  store i32 3, ptr %8, align 4
  call void @sg_miter_stop(ptr noundef nonnull %5) #14
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %87, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 6
  %12 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 5
  %13 = load i32, ptr %11, align 4
  %14 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 4, i32 3
  %15 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 4, i32 1
  br label %16

16:                                               ; preds = %79, %10
  %17 = phi i32 [ %84, %79 ], [ %13, %10 ]
  %18 = phi i32 [ %85, %79 ], [ %3, %10 ]
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %12, align 4
  br label %79

22:                                               ; preds = %16
  %23 = load i32, ptr %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %104, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %104, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %14, align 4
  %30 = load i32, ptr %15, align 4
  %31 = add i32 %30, %29
  store i32 %31, ptr %15, align 4
  store i32 1, ptr %14, align 4
  br label %32

32:                                               ; preds = %57, %28
  %33 = phi i32 [ %59, %57 ], [ %23, %28 ]
  %34 = phi ptr [ %58, %57 ], [ %26, %28 ]
  %35 = phi i32 [ %45, %57 ], [ %31, %28 ]
  %36 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %37, 4095
  %41 = add i32 %40, %39
  %42 = lshr i32 %41, 12
  %43 = icmp ult i32 %35, %42
  br i1 %43, label %63, label %44

44:                                               ; preds = %32
  %45 = sub i32 %35, %42
  store i32 %45, ptr %15, align 4
  %46 = load i32, ptr %34, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %104

49:                                               ; preds = %44
  %50 = getelementptr %struct.scatterlist, ptr %34, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54, !prof !8

54:                                               ; preds = %49
  %55 = and i32 %51, -4
  %56 = inttoptr i32 %55 to ptr
  br label %57

57:                                               ; preds = %54, %49
  %58 = phi ptr [ %56, %54 ], [ %50, %49 ]
  store ptr %58, ptr %6, align 4
  %59 = add i32 %33, -1
  store i32 %59, ptr %7, align 4
  %60 = icmp eq i32 %59, 0
  %61 = icmp eq ptr %58, null
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %104, label %32

63:                                               ; preds = %32
  %64 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 1
  %65 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 2
  %66 = icmp eq i32 %35, 0
  %67 = select i1 %66, i32 %37, i32 0
  %68 = lshr i32 %67, 12
  %69 = add i32 %68, %35
  store i32 %69, ptr %15, align 4
  %70 = and i32 %67, 4095
  store i32 %70, ptr %12, align 4
  %71 = load i32, ptr %64, align 4
  %72 = load i32, ptr %65, align 4
  %73 = mul i32 %69, -4096
  %74 = sub i32 %73, %70
  %75 = add i32 %74, %71
  %76 = add i32 %75, %72
  %77 = sub nuw nsw i32 4096, %70
  %78 = tail call i32 @llvm.umin.i32(i32 %76, i32 %77) #14
  br label %79

79:                                               ; preds = %63, %20
  %80 = phi i32 [ %70, %63 ], [ %21, %20 ]
  %81 = phi i32 [ %78, %63 ], [ %17, %20 ]
  %82 = tail call i32 @llvm.smin.i32(i32 %18, i32 %81) #14
  %83 = add i32 %80, %82
  store i32 %83, ptr %12, align 4
  %84 = sub i32 %81, %82
  store i32 %84, ptr %11, align 4
  %85 = sub i32 %18, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %16

87:                                               ; preds = %79, %4
  %88 = icmp eq i32 %2, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 2
  %91 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 1
  br label %92

92:                                               ; preds = %95, %89
  %93 = phi i32 [ 0, %89 ], [ %100, %95 ]
  %94 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %5)
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, ptr %90, align 4
  %97 = sub i32 %2, %93
  %98 = tail call i32 @llvm.umin.i32(i32 %96, i32 %97)
  %99 = load ptr, ptr %91, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %99, i8 0, i32 %98, i1 false)
  %100 = add i32 %98, %93
  %101 = icmp ult i32 %100, %2
  br i1 %101, label %92, label %102

102:                                              ; preds = %95, %92, %87
  %103 = phi i32 [ 0, %87 ], [ %100, %95 ], [ %93, %92 ]
  call void @sg_miter_stop(ptr noundef nonnull %5)
  br label %104

104:                                              ; preds = %102, %57, %44, %25, %22
  %105 = phi i32 [ %103, %102 ], [ 0, %44 ], [ 0, %57 ], [ 0, %22 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #14
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152461044, i64 2152461526, i64 2152461081, i64 2152461137, i64 2152461171, i64 2152461195, i64 2152461236, i64 2152461257, i64 2152461285, i64 2152461319}
!11 = !{i64 2152151229, i64 2152151721, i64 2152151266, i64 2152151322, i64 2152151356, i64 2152151380, i64 2152151421, i64 2152151442, i64 2152151470, i64 2152151504}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = !{i64 2151590779}
!15 = !{i64 2152425149}
!16 = !{i64 2152422524}
!17 = !{i64 2151590572}
