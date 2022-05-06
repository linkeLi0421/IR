; ModuleID = '/llk/IR/mm/gup.c_pt.bc'
source_filename = "../mm/gup.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unpin_user_page:\09\09\09\09\09"
module asm "\09.asciz \09\22unpin_user_page\22\09\09\09\09\09"
module asm "__kstrtabns_unpin_user_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unpin_user_pages_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22unpin_user_pages_dirty_lock\22\09\09\09\09\09"
module asm "__kstrtabns_unpin_user_pages_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unpin_user_page_range_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22unpin_user_page_range_dirty_lock\22\09\09\09\09\09"
module asm "__kstrtabns_unpin_user_page_range_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unpin_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22unpin_user_pages\22\09\09\09\09\09"
module asm "__kstrtabns_unpin_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixup_user_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22fixup_user_fault\22\09\09\09\09\09"
module asm "__kstrtabns_fixup_user_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fault_in_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22fault_in_writeable\22\09\09\09\09\09"
module asm "__kstrtabns_fault_in_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fault_in_safe_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22fault_in_safe_writeable\22\09\09\09\09\09"
module asm "__kstrtabns_fault_in_safe_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fault_in_readable:\09\09\09\09\09"
module asm "\09.asciz \09\22fault_in_readable\22\09\09\09\09\09"
module asm "__kstrtabns_fault_in_readable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_remote\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_locked\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_fast_only:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_fast_only\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_fast_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_fast\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_fast\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_fast_only:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_fast_only\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_fast_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_remote\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_locked\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.mm_struct = type { %struct.anon.7, [0 x i32] }
%struct.anon.7 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.migration_target_control = type { i32, ptr, i32 }
%struct.page = type { i32, %union.anon, %union.anon.64, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.anon.58 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.follow_page_context = type { ptr, i32 }
%struct.dev_pagemap = type { %struct.vmem_altmap, %struct.percpu_ref, %struct.completion, i32, i32, i32, ptr, ptr, i32, %union.anon.63 }
%struct.vmem_altmap = type { i32, i32, i32, i32, i32, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.63 = type { %struct.range }
%struct.range = type { i64, i64 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.20, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.70 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }

@try_grab_compound_head.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [9 x i8] c"mm/gup.c\00", align 1
@try_grab_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@try_grab_page.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_unpin_user_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_unpin_user_page = external dso_local constant [0 x i8], align 1
@__ksymtab_unpin_user_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unpin_user_page to i32), ptr @__kstrtab_unpin_user_page, ptr @__kstrtabns_unpin_user_page }, section "___ksymtab+unpin_user_page", align 4
@__kstrtab_unpin_user_pages_dirty_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_unpin_user_pages_dirty_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_unpin_user_pages_dirty_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unpin_user_pages_dirty_lock to i32), ptr @__kstrtab_unpin_user_pages_dirty_lock, ptr @__kstrtabns_unpin_user_pages_dirty_lock }, section "___ksymtab+unpin_user_pages_dirty_lock", align 4
@__kstrtab_unpin_user_page_range_dirty_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_unpin_user_page_range_dirty_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_unpin_user_page_range_dirty_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unpin_user_page_range_dirty_lock to i32), ptr @__kstrtab_unpin_user_page_range_dirty_lock, ptr @__kstrtabns_unpin_user_page_range_dirty_lock }, section "___ksymtab+unpin_user_page_range_dirty_lock", align 4
@__kstrtab_unpin_user_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_unpin_user_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_unpin_user_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unpin_user_pages to i32), ptr @__kstrtab_unpin_user_pages, ptr @__kstrtabns_unpin_user_pages }, section "___ksymtab+unpin_user_pages", align 4
@__kstrtab_fixup_user_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixup_user_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_fixup_user_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixup_user_fault to i32), ptr @__kstrtab_fixup_user_fault, ptr @__kstrtabns_fixup_user_fault }, section "___ksymtab_gpl+fixup_user_fault", align 4
@__kstrtab_fault_in_writeable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fault_in_writeable = external dso_local constant [0 x i8], align 1
@__ksymtab_fault_in_writeable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fault_in_writeable to i32), ptr @__kstrtab_fault_in_writeable, ptr @__kstrtabns_fault_in_writeable }, section "___ksymtab+fault_in_writeable", align 4
@__kstrtab_fault_in_safe_writeable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fault_in_safe_writeable = external dso_local constant [0 x i8], align 1
@__ksymtab_fault_in_safe_writeable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fault_in_safe_writeable to i32), ptr @__kstrtab_fault_in_safe_writeable, ptr @__kstrtabns_fault_in_safe_writeable }, section "___ksymtab+fault_in_safe_writeable", align 4
@__kstrtab_fault_in_readable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fault_in_readable = external dso_local constant [0 x i8], align 1
@__ksymtab_fault_in_readable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fault_in_readable to i32), ptr @__kstrtab_fault_in_readable, ptr @__kstrtabns_fault_in_readable }, section "___ksymtab+fault_in_readable", align 4
@__kstrtab_get_user_pages_remote = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_remote = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_remote = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_remote to i32), ptr @__kstrtab_get_user_pages_remote, ptr @__kstrtabns_get_user_pages_remote }, section "___ksymtab+get_user_pages_remote", align 4
@__kstrtab_get_user_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages to i32), ptr @__kstrtab_get_user_pages, ptr @__kstrtabns_get_user_pages }, section "___ksymtab+get_user_pages", align 4
@get_user_pages_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_user_pages_locked.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_get_user_pages_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_locked to i32), ptr @__kstrtab_get_user_pages_locked, ptr @__kstrtabns_get_user_pages_locked }, section "___ksymtab+get_user_pages_locked", align 4
@get_user_pages_unlocked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_get_user_pages_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_unlocked to i32), ptr @__kstrtab_get_user_pages_unlocked, ptr @__kstrtabns_get_user_pages_unlocked }, section "___ksymtab+get_user_pages_unlocked", align 4
@__kstrtab_get_user_pages_fast_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_fast_only = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_fast_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_fast_only to i32), ptr @__kstrtab_get_user_pages_fast_only, ptr @__kstrtabns_get_user_pages_fast_only }, section "___ksymtab_gpl+get_user_pages_fast_only", align 4
@__kstrtab_get_user_pages_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_fast to i32), ptr @__kstrtab_get_user_pages_fast, ptr @__kstrtabns_get_user_pages_fast }, section "___ksymtab_gpl+get_user_pages_fast", align 4
@pin_user_pages_fast.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_fast to i32), ptr @__kstrtab_pin_user_pages_fast, ptr @__kstrtabns_pin_user_pages_fast }, section "___ksymtab_gpl+pin_user_pages_fast", align 4
@pin_user_pages_fast_only.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_fast_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_fast_only = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_fast_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_fast_only to i32), ptr @__kstrtab_pin_user_pages_fast_only, ptr @__kstrtabns_pin_user_pages_fast_only }, section "___ksymtab_gpl+pin_user_pages_fast_only", align 4
@pin_user_pages_remote.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_remote = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_remote = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_remote = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_remote to i32), ptr @__kstrtab_pin_user_pages_remote, ptr @__kstrtabns_pin_user_pages_remote }, section "___ksymtab+pin_user_pages_remote", align 4
@pin_user_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages to i32), ptr @__kstrtab_pin_user_pages, ptr @__kstrtabns_pin_user_pages }, section "___ksymtab+pin_user_pages", align 4
@pin_user_pages_unlocked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_unlocked to i32), ptr @__kstrtab_pin_user_pages_unlocked, ptr @__kstrtabns_pin_user_pages_unlocked }, section "___ksymtab+pin_user_pages_unlocked", align 4
@pin_user_pages_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pin_user_pages_locked.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_locked to i32), ptr @__kstrtab_pin_user_pages_locked, ptr @__kstrtabns_pin_user_pages_locked }, section "___ksymtab+pin_user_pages_locked", align 4
@try_get_compound_head.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@zero_pfn = external dso_local local_unnamed_addr global i32, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@try_get_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"include/linux/mm.h\00", align 1
@follow_page_pte.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@is_valid_gup_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@is_valid_gup_flags.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__get_user_pages_remote.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.check_and_migrate_movable_pages.mtc = private unnamed_addr constant %struct.migration_target_control { i32 -1, ptr null, i32 1060032 }, align 4
@internal_get_user_pages_fast.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_fault_in_readable, ptr @__ksymtab_fault_in_safe_writeable, ptr @__ksymtab_fault_in_writeable, ptr @__ksymtab_fixup_user_fault, ptr @__ksymtab_get_user_pages, ptr @__ksymtab_get_user_pages_fast, ptr @__ksymtab_get_user_pages_fast_only, ptr @__ksymtab_get_user_pages_locked, ptr @__ksymtab_get_user_pages_remote, ptr @__ksymtab_get_user_pages_unlocked, ptr @__ksymtab_pin_user_pages, ptr @__ksymtab_pin_user_pages_fast, ptr @__ksymtab_pin_user_pages_fast_only, ptr @__ksymtab_pin_user_pages_locked, ptr @__ksymtab_pin_user_pages_remote, ptr @__ksymtab_pin_user_pages_unlocked, ptr @__ksymtab_unpin_user_page, ptr @__ksymtab_unpin_user_page_range_dirty_lock, ptr @__ksymtab_unpin_user_pages, ptr @__ksymtab_unpin_user_pages_dirty_lock], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @try_grab_compound_head(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !9

11:                                               ; preds = %6
  %12 = add i32 %8, -1
  br label %15

13:                                               ; preds = %6
  %14 = ptrtoint ptr %0 to i32
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp slt i32 %19, 0
  %21 = load i1, ptr @try_get_compound_head.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !10

24:                                               ; preds = %15
  store i1 true, ptr @try_get_compound_head.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef null) #7
  br label %25

25:                                               ; preds = %24, %15
  br i1 %20, label %150, label %26

26:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #7, !srcloc !12
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 %1, ptr elementtype(i32) %18) #7, !srcloc !13
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %150, label %30

30:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %31 = load volatile i32, ptr %7, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !9

34:                                               ; preds = %30
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %30
  %37 = ptrtoint ptr %0 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  %41 = icmp eq ptr %40, %17
  br i1 %41, label %150, label %42, !prof !9

42:                                               ; preds = %38
  tail call fastcc void @put_page_refs(ptr noundef %17, i32 noundef %1) #7
  br label %150

43:                                               ; preds = %3
  %44 = and i32 %2, 262144
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %147, label %46

46:                                               ; preds = %43
  %47 = and i32 %2, 65536
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %0, align 4
  %51 = icmp ugt i32 %50, -1073741825
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = ptrtoint ptr %0 to i32
  br label %64

54:                                               ; preds = %49
  %55 = load ptr, ptr @mem_map, align 4
  %56 = ptrtoint ptr %0 to i32
  %57 = ptrtoint ptr %55 to i32
  %58 = sub i32 %56, %57
  %59 = ashr exact i32 %58, 5
  %60 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %61 = add i32 %59, %60
  %62 = tail call i32 @get_pfnblock_flags_mask(ptr noundef %0, i32 noundef %61, i32 noundef 7) #7
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %74

64:                                               ; preds = %54, %52
  %65 = phi i32 [ %53, %52 ], [ %56, %54 ]
  %66 = load ptr, ptr @mem_map, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = sub i32 %65, %67
  %69 = ashr exact i32 %68, 5
  %70 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %71 = add i32 %69, %70
  %72 = load i32, ptr @zero_pfn, align 4
  %73 = icmp eq i32 %72, %71
  br i1 %73, label %74, label %150, !prof !9

74:                                               ; preds = %64, %54, %46
  %75 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79, !prof !9

79:                                               ; preds = %74
  %80 = add i32 %76, -1
  br label %83

81:                                               ; preds = %74
  %82 = ptrtoint ptr %0 to i32
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = inttoptr i32 %84 to ptr
  %86 = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 3
  %87 = load volatile i32, ptr %86, align 4
  %88 = icmp slt i32 %87, 0
  %89 = load i1, ptr @try_get_compound_head.__already_done, align 1
  %90 = xor i1 %89, true
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %93, !prof !10

92:                                               ; preds = %83
  store i1 true, ptr @try_get_compound_head.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef null) #7
  br label %93

93:                                               ; preds = %92, %83
  br i1 %88, label %150, label %94

94:                                               ; preds = %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #7, !srcloc !12
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 0, i32 %1, ptr elementtype(i32) %86) #7, !srcloc !13
  %96 = extractvalue { i32, i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %150, label %98

98:                                               ; preds = %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %99 = load volatile i32, ptr %75, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102, !prof !9

102:                                              ; preds = %98
  %103 = add i32 %99, -1
  br label %106

104:                                              ; preds = %98
  %105 = ptrtoint ptr %0 to i32
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = inttoptr i32 %107 to ptr
  %109 = icmp eq ptr %108, %85
  br i1 %109, label %111, label %110, !prof !9

110:                                              ; preds = %106
  tail call fastcc void @put_page_refs(ptr noundef %85, i32 noundef %1) #7
  br label %150

111:                                              ; preds = %106
  %112 = icmp eq i32 %84, 0
  br i1 %112, label %150, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 1
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118, !prof !9

118:                                              ; preds = %113
  %119 = add i32 %115, -1
  %120 = inttoptr i32 %119 to ptr
  br label %121

121:                                              ; preds = %118, %113
  %122 = phi ptr [ %85, %113 ], [ %120, %118 ]
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %123, 65536
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.page, ptr %122, i32 0, i32 1
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %126, %121
  %132 = load volatile i32, ptr %122, align 4
  %133 = and i32 %132, 65536
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = getelementptr %struct.page, ptr %122, i32 1, i32 1
  %137 = getelementptr inbounds %struct.anon.58, ptr %136, i32 0, i32 2
  %138 = load i8, ptr %137, align 1
  %139 = icmp ugt i8 %138, 1
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = getelementptr %struct.page, ptr %85, i32 2, i32 1, i32 0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #7, !srcloc !12
  %142 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 %1, ptr elementtype(i32) %141) #7, !srcloc !15
  br label %146

143:                                              ; preds = %135, %131, %126
  %144 = mul i32 %1, 1023
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #7, !srcloc !12
  %145 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 %144, ptr elementtype(i32) %86) #7, !srcloc !15
  br label %146

146:                                              ; preds = %143, %140
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 35, i32 noundef %1) #7
  br label %150

147:                                              ; preds = %43
  %148 = load i1, ptr @try_grab_compound_head.__already_done, align 1
  br i1 %148, label %150, label %149, !prof !9

149:                                              ; preds = %147
  store i1 true, ptr @try_grab_compound_head.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #7
  br label %150

150:                                              ; preds = %149, %147, %146, %111, %110, %94, %93, %64, %42, %38, %26, %25
  %151 = phi ptr [ %85, %146 ], [ null, %64 ], [ null, %111 ], [ null, %149 ], [ null, %147 ], [ null, %42 ], [ null, %25 ], [ %17, %38 ], [ null, %26 ], [ null, %110 ], [ null, %93 ], [ null, %94 ]
  ret ptr %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @try_grab_page(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 262148
  %4 = icmp eq i32 %3, 262148
  %5 = load i1, ptr @try_grab_page.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %2
  store i1 true, ptr @try_grab_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = and i32 %1, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !9

17:                                               ; preds = %12
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %12
  %20 = ptrtoint ptr %0 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 3
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp slt i32 %25, 1
  %27 = load i1, ptr @try_get_page.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !10

30:                                               ; preds = %21
  store i1 true, ptr @try_get_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1177, i32 noundef 9, ptr noundef null) #7
  br label %31

31:                                               ; preds = %30, %21
  br i1 %26, label %34, label %32

32:                                               ; preds = %31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #7, !srcloc !12
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #7, !srcloc !15
  br label %34

34:                                               ; preds = %32, %31
  %35 = xor i1 %26, true
  br label %92

36:                                               ; preds = %9
  %37 = and i32 %1, 262144
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %92, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !9

44:                                               ; preds = %39
  %45 = add i32 %41, -1
  br label %48

46:                                               ; preds = %39
  %47 = ptrtoint ptr %0 to i32
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp slt i32 %52, 1
  %54 = load i1, ptr @try_grab_page.__already_done.1, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58, !prof !10

57:                                               ; preds = %48
  store i1 true, ptr @try_grab_page.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef null) #7
  br label %58

58:                                               ; preds = %57, %48
  br i1 %53, label %92, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64, !prof !9

64:                                               ; preds = %59
  %65 = add i32 %61, -1
  %66 = inttoptr i32 %65 to ptr
  br label %67

67:                                               ; preds = %64, %59
  %68 = phi ptr [ %50, %59 ], [ %66, %64 ]
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 65536
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 1
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %72, %67
  %78 = load volatile i32, ptr %68, align 4
  %79 = and i32 %78, 65536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr %struct.page, ptr %68, i32 1, i32 1
  %83 = getelementptr inbounds %struct.anon.58, ptr %82, i32 0, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = icmp ugt i8 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = getelementptr %struct.page, ptr %50, i32 2, i32 1, i32 0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #7, !srcloc !12
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #7, !srcloc !15
  br label %89

89:                                               ; preds = %86, %81, %77, %72
  %90 = phi i32 [ 1, %86 ], [ 1024, %81 ], [ 1024, %72 ], [ 1024, %77 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #7, !srcloc !12
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 %90, ptr elementtype(i32) %51) #7, !srcloc !15
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 35, i32 noundef 1) #7
  br label %92

92:                                               ; preds = %89, %58, %36, %34
  %93 = phi i1 [ %35, %34 ], [ false, %58 ], [ true, %89 ], [ true, %36 ]
  ret i1 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unpin_user_page(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  tail call fastcc void @put_compound_head(ptr noundef %12, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_compound_head(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 36, i32 noundef %1) #7
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !9

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17, %11
  %23 = load volatile i32, ptr %13, align 4
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr %struct.page, ptr %13, i32 1, i32 1
  %28 = getelementptr inbounds %struct.anon.58, ptr %27, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = icmp ugt i8 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr %struct.page, ptr %0, i32 2, i32 1, i32 0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #7, !srcloc !12
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 %1, ptr elementtype(i32) %32) #7, !srcloc !16
  br label %36

34:                                               ; preds = %26, %22, %17
  %35 = shl i32 %1, 10
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %1, %31 ], [ %35, %34 ]
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = add nsw i32 %37, -1
  %41 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #7, !srcloc !12
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 %40, ptr elementtype(i32) %41) #7, !srcloc !16
  br label %43

43:                                               ; preds = %39, %36
  %44 = load volatile i32, ptr %3, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !9

47:                                               ; preds = %43
  %48 = add i32 %44, -1
  br label %51

49:                                               ; preds = %43
  %50 = ptrtoint ptr %0 to i32
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = inttoptr i32 %52 to ptr
  %54 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #7, !srcloc !12
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #7, !srcloc !18
  %56 = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  tail call void @__put_page(ptr noundef %53) #7
  br label %59

59:                                               ; preds = %58, %51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unpin_user_pages_dirty_lock(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  br i1 %2, label %5, label %4

4:                                                ; preds = %3
  tail call void @unpin_user_pages(ptr noundef %0, i32 noundef %1)
  br label %99

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %99, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !9

13:                                               ; preds = %7
  %14 = add i32 %10, -1
  br label %17

15:                                               ; preds = %7
  %16 = ptrtoint ptr %8 to i32
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = add i32 %1, -1
  br label %21

21:                                               ; preds = %36, %17
  %22 = phi i32 [ 0, %17 ], [ %23, %36 ]
  %23 = add nuw i32 %22, 1
  %24 = icmp eq i32 %22, %20
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = getelementptr ptr, ptr %0, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !9

32:                                               ; preds = %25
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %25
  %35 = ptrtoint ptr %27 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = icmp eq ptr %38, %19
  br i1 %39, label %21, label %40

40:                                               ; preds = %36, %21
  br i1 %6, label %99, label %41

41:                                               ; preds = %97, %40
  %42 = phi i32 [ %62, %97 ], [ 0, %40 ]
  %43 = phi i32 [ %98, %97 ], [ %23, %40 ]
  %44 = phi ptr [ %77, %97 ], [ %19, %40 ]
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !9

49:                                               ; preds = %41
  %50 = add i32 %46, -1
  br label %53

51:                                               ; preds = %41
  %52 = ptrtoint ptr %44 to i32
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = inttoptr i32 %54 to ptr
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = tail call i32 @set_page_dirty_lock(ptr noundef %44) #7
  br label %61

61:                                               ; preds = %59, %53
  tail call fastcc void @put_compound_head(ptr noundef %44, i32 noundef %43)
  %62 = add i32 %42, %43
  %63 = icmp ult i32 %62, %1
  br i1 %63, label %64, label %99

64:                                               ; preds = %61
  %65 = getelementptr ptr, ptr %0, i32 %62
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !9

71:                                               ; preds = %64
  %72 = add i32 %68, -1
  br label %75

73:                                               ; preds = %64
  %74 = ptrtoint ptr %66 to i32
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = inttoptr i32 %76 to ptr
  br label %78

78:                                               ; preds = %93, %75
  %79 = phi i32 [ %62, %75 ], [ %80, %93 ]
  %80 = add nuw i32 %79, 1
  %81 = icmp ult i32 %80, %1
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = getelementptr ptr, ptr %0, i32 %80
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.page, ptr %84, i32 0, i32 1
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89, !prof !9

89:                                               ; preds = %82
  %90 = add i32 %86, -1
  br label %93

91:                                               ; preds = %82
  %92 = ptrtoint ptr %84 to i32
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = inttoptr i32 %94 to ptr
  %96 = icmp eq ptr %95, %77
  br i1 %96, label %78, label %97

97:                                               ; preds = %93, %78
  %98 = sub i32 %80, %62
  br i1 %63, label %41, label %99

99:                                               ; preds = %97, %61, %40, %5, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unpin_user_pages(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, -4096
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 427, i32 noundef 9, ptr noundef null) #7
  br label %82

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %82, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !9

13:                                               ; preds = %7
  %14 = add i32 %10, -1
  br label %17

15:                                               ; preds = %7
  %16 = ptrtoint ptr %8 to i32
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = add i32 %1, -1
  br label %21

21:                                               ; preds = %36, %17
  %22 = phi i32 [ 0, %17 ], [ %23, %36 ]
  %23 = add nuw i32 %22, 1
  %24 = icmp eq i32 %22, %20
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = getelementptr ptr, ptr %0, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !9

32:                                               ; preds = %25
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %25
  %35 = ptrtoint ptr %27 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = icmp eq ptr %38, %19
  br i1 %39, label %21, label %40

40:                                               ; preds = %36, %21
  br i1 %6, label %82, label %41

41:                                               ; preds = %80, %40
  %42 = phi i32 [ %45, %80 ], [ 0, %40 ]
  %43 = phi i32 [ %81, %80 ], [ %23, %40 ]
  %44 = phi ptr [ %60, %80 ], [ %19, %40 ]
  tail call fastcc void @put_compound_head(ptr noundef %44, i32 noundef %43)
  %45 = add i32 %42, %43
  %46 = icmp ult i32 %45, %1
  br i1 %46, label %47, label %82

47:                                               ; preds = %41
  %48 = getelementptr ptr, ptr %0, i32 %45
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54, !prof !9

54:                                               ; preds = %47
  %55 = add i32 %51, -1
  br label %58

56:                                               ; preds = %47
  %57 = ptrtoint ptr %49 to i32
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = inttoptr i32 %59 to ptr
  br label %61

61:                                               ; preds = %76, %58
  %62 = phi i32 [ %45, %58 ], [ %63, %76 ]
  %63 = add nuw i32 %62, 1
  %64 = icmp ult i32 %63, %1
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = getelementptr ptr, ptr %0, i32 %63
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 1
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72, !prof !9

72:                                               ; preds = %65
  %73 = add i32 %69, -1
  br label %76

74:                                               ; preds = %65
  %75 = ptrtoint ptr %67 to i32
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = inttoptr i32 %77 to ptr
  %79 = icmp eq ptr %78, %60
  br i1 %79, label %61, label %80

80:                                               ; preds = %76, %61
  %81 = sub i32 %63, %45
  br i1 %46, label %41, label %82

82:                                               ; preds = %80, %41, %40, %5, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unpin_user_page_range_dirty_lock(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %123, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.page, ptr %0, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %5
  %11 = add i32 %7, -1
  br label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %0 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = inttoptr i32 %15 to ptr
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %20, %14
  %26 = load volatile i32, ptr %16, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.page, ptr %16, i32 1, i32 1
  %31 = getelementptr inbounds %struct.anon.58, ptr %30, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load volatile i32, ptr %16, align 4
  %36 = and i32 %35, 65536
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr %struct.page, ptr %16, i32 1, i32 1, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %40, %38 ], [ 1, %34 ]
  %43 = getelementptr %struct.page, ptr %16, i32 %42
  %44 = ptrtoint ptr %43 to i32
  %45 = ptrtoint ptr %0 to i32
  %46 = sub i32 %44, %45
  %47 = ashr exact i32 %46, 5
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %1) #7
  br label %49

49:                                               ; preds = %41, %29, %25, %20
  %50 = phi i32 [ %48, %41 ], [ 1, %29 ], [ 1, %25 ], [ 1, %20 ]
  br label %51

51:                                               ; preds = %96, %49
  %52 = phi i32 [ 0, %49 ], [ %73, %96 ]
  %53 = phi i32 [ %50, %49 ], [ %97, %96 ]
  %54 = phi ptr [ %16, %49 ], [ %87, %96 ]
  br i1 %2, label %55, label %72

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !9

60:                                               ; preds = %55
  %61 = add i32 %57, -1
  br label %64

62:                                               ; preds = %55
  %63 = ptrtoint ptr %54 to i32
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = inttoptr i32 %65 to ptr
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = tail call i32 @set_page_dirty_lock(ptr noundef %54) #7
  br label %72

72:                                               ; preds = %70, %64, %51
  tail call fastcc void @put_compound_head(ptr noundef %54, i32 noundef %53)
  %73 = add i32 %52, %53
  %74 = icmp ult i32 %73, %1
  br i1 %74, label %75, label %123

75:                                               ; preds = %72
  %76 = getelementptr %struct.page, ptr %0, i32 %73
  %77 = getelementptr %struct.page, ptr %0, i32 %73, i32 1
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81, !prof !9

81:                                               ; preds = %75
  %82 = add i32 %78, -1
  br label %85

83:                                               ; preds = %75
  %84 = ptrtoint ptr %76 to i32
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = inttoptr i32 %86 to ptr
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 65536
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 1
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %114, %102, %98, %91
  %97 = phi i32 [ 1, %91 ], [ 1, %98 ], [ 1, %102 ], [ %122, %114 ]
  br label %51

98:                                               ; preds = %91, %85
  %99 = load volatile i32, ptr %87, align 4
  %100 = and i32 %99, 65536
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %96, label %102

102:                                              ; preds = %98
  %103 = getelementptr %struct.page, ptr %87, i32 1, i32 1
  %104 = getelementptr inbounds %struct.anon.58, ptr %103, i32 0, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %96, label %107

107:                                              ; preds = %102
  %108 = load volatile i32, ptr %87, align 4
  %109 = and i32 %108, 65536
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = getelementptr %struct.page, ptr %87, i32 1, i32 1, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  br label %114

114:                                              ; preds = %111, %107
  %115 = phi i32 [ %113, %111 ], [ 1, %107 ]
  %116 = getelementptr %struct.page, ptr %87, i32 %115
  %117 = ptrtoint ptr %116 to i32
  %118 = ptrtoint ptr %76 to i32
  %119 = sub i32 %117, %118
  %120 = ashr exact i32 %119, 5
  %121 = sub i32 %1, %73
  %122 = tail call i32 @llvm.umin.i32(i32 %120, i32 %121) #7
  br label %96

123:                                              ; preds = %72, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @follow_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.follow_page_context, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8
  %5 = call fastcc ptr @follow_page_mask(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dev_pagemap, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22, !prof !9

13:                                               ; preds = %8
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !21
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #4, !srcloc !22
  %18 = add i32 %17, %10
  %19 = inttoptr i32 %18 to ptr
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #7, !srcloc !23
  br label %32

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.dev_pagemap, ptr %6, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #7, !srcloc !12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #7, !srcloc !18
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32, !prof !10

28:                                               ; preds = %22
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr inbounds %struct.percpu_ref_data, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %9) #7
  br label %32

32:                                               ; preds = %28, %22, %13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  br label %33

33:                                               ; preds = %32, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @follow_page_mask(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.follow_page_context, ptr %3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = lshr i32 %1, 21
  %11 = getelementptr [2 x i32], ptr %9, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = and i32 %2, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %220, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.vm_operations_struct, ptr %19, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %220

25:                                               ; preds = %21, %17
  br label %220

26:                                               ; preds = %4
  %27 = load ptr, ptr %5, align 4
  %28 = and i32 %2, 262148
  %29 = icmp eq i32 %28, 262148
  %30 = load i1, ptr @follow_page_pte.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %26
  store i1 true, ptr @follow_page_pte.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 9, ptr noundef null) #7
  br label %34

34:                                               ; preds = %33, %26
  br i1 %29, label %220, label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %11, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44, !prof !9

39:                                               ; preds = %35
  %40 = lshr i32 %1, 12
  %41 = and i32 %40, 511
  %42 = and i32 %2, 1024
  %43 = icmp eq i32 %42, 0
  br label %56

44:                                               ; preds = %79, %35
  %45 = and i32 %2, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %220, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.vm_operations_struct, ptr %49, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %220

55:                                               ; preds = %51, %47
  br label %220

56:                                               ; preds = %79, %39
  %57 = phi i32 [ %36, %39 ], [ %84, %79 ]
  %58 = load ptr, ptr @mem_map, align 4
  %59 = lshr i32 %57, 12
  %60 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %61 = sub i32 %59, %60
  %62 = getelementptr %struct.page, ptr %58, i32 %61, i32 1, i32 0, i32 3
  %63 = getelementptr %struct.page, ptr %58, i32 %61
  %64 = load i32, ptr @pgprot_kernel, align 4
  %65 = or i32 %64, 512
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %66 = tail call ptr @llvm.thread.pointer() #7
  %67 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 149
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %70 = tail call ptr @__kmap_local_page_prot(ptr noundef %63, i32 noundef %65) #7
  %71 = getelementptr i32, ptr %70, i32 %41
  tail call void @_raw_spin_lock(ptr noundef %62) #7
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %56
  br i1 %43, label %202, label %76, !prof !9

76:                                               ; preds = %75
  %77 = and i32 %72, 120
  %78 = icmp eq i32 %77, 120
  br i1 %78, label %79, label %202

79:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  %80 = load i16, ptr %62, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  tail call void @kunmap_local_indexed(ptr noundef %71) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  %82 = load i32, ptr %67, align 8
  %83 = add i32 %82, -1
  store i32 %83, ptr %67, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  tail call void @migration_entry_wait(ptr noundef %27, ptr noundef %11, i32 noundef %1) #7
  %84 = load i32, ptr %11, align 4
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %56, label %44, !prof !9

87:                                               ; preds = %56
  %88 = and i32 %2, 1
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %72, 128
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %104, label %93

93:                                               ; preds = %87
  %94 = and i32 %2, 16400
  %95 = icmp eq i32 %94, 16400
  %96 = and i32 %72, 64
  %97 = icmp ne i32 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  %100 = load i16, ptr %62, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  tail call void @kunmap_local_indexed(ptr noundef %71) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  %102 = load i32, ptr %67, align 8
  %103 = add i32 %102, -1
  store i32 %103, ptr %67, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  br label %220

104:                                              ; preds = %93, %87
  %105 = tail call ptr @vm_normal_page(ptr noundef %0, i32 noundef %1, i32 noundef %72) #7
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %134

107:                                              ; preds = %104
  %108 = and i32 %2, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %196

110:                                              ; preds = %107
  %111 = lshr i32 %72, 12
  %112 = load i32, ptr @zero_pfn, align 4
  %113 = icmp eq i32 %112, %111
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load ptr, ptr @mem_map, align 4
  %116 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %117 = sub i32 %111, %116
  %118 = getelementptr %struct.page, ptr %115, i32 %117
  br label %134

119:                                              ; preds = %110
  %120 = and i32 %2, 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %196

122:                                              ; preds = %119
  %123 = and i32 %2, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %196, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr %71, align 4
  %127 = shl i32 %2, 6
  %128 = and i32 %127, 64
  %129 = or i32 %128, %126
  %130 = or i32 %129, 2
  %131 = icmp eq i32 %126, %130
  br i1 %131, label %196, label %132

132:                                              ; preds = %125
  %133 = load ptr, ptr %5, align 4
  tail call void @set_pte_at(ptr noundef %133, i32 noundef %1, ptr noundef %71, i32 noundef %130) #7
  br label %196

134:                                              ; preds = %114, %104
  %135 = phi ptr [ %118, %114 ], [ %105, %104 ]
  %136 = tail call zeroext i1 @try_grab_page(ptr noundef %135, i32 noundef %2) #7
  br i1 %136, label %137, label %196, !prof !9

137:                                              ; preds = %134
  %138 = and i32 %2, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %163, label %140

140:                                              ; preds = %137
  %141 = xor i1 %89, true
  %142 = and i32 %72, 64
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.page, ptr %135, i32 0, i32 1
  %147 = load volatile i32, ptr %146, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150, !prof !9

150:                                              ; preds = %145
  %151 = add i32 %147, -1
  br label %154

152:                                              ; preds = %145
  %153 = ptrtoint ptr %135 to i32
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = inttoptr i32 %155 to ptr
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %157, 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = tail call zeroext i1 @set_page_dirty(ptr noundef %135) #7
  br label %162

162:                                              ; preds = %160, %154, %140
  tail call void @mark_page_accessed(ptr noundef %135) #7
  br label %163

163:                                              ; preds = %162, %137
  %164 = and i32 %2, 4096
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %196, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 8192
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %196, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.page, ptr %135, i32 0, i32 1, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %196, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.page, ptr %135, i32 0, i32 1
  %177 = load volatile i32, ptr %176, align 4
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %182, label %180, !prof !9

180:                                              ; preds = %175
  %181 = add i32 %177, -1
  br label %184

182:                                              ; preds = %175
  %183 = ptrtoint ptr %135 to i32
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  %186 = inttoptr i32 %185 to ptr
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %187, 1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %186) #7, !srcloc !12
  %191 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %186, ptr %186, i32 1, ptr elementtype(i32) %186) #7, !srcloc !33
  %192 = extractvalue { i32, i32, i32 } %191, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !34
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  tail call void @lru_add_drain() #7
  tail call void @mlock_vma_page(ptr noundef %135) #7
  tail call void @unlock_page(ptr noundef %135) #7
  br label %196

196:                                              ; preds = %195, %190, %184, %171, %166, %163, %134, %132, %125, %122, %119, %107
  %197 = phi ptr [ %135, %195 ], [ %135, %190 ], [ %135, %171 ], [ %135, %166 ], [ %135, %163 ], [ inttoptr (i32 -14 to ptr), %107 ], [ inttoptr (i32 -12 to ptr), %134 ], [ %135, %184 ], [ inttoptr (i32 -14 to ptr), %119 ], [ inttoptr (i32 -17 to ptr), %125 ], [ inttoptr (i32 -17 to ptr), %132 ], [ inttoptr (i32 -17 to ptr), %122 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  %198 = load i16, ptr %62, align 4
  %199 = add i16 %198, 1
  store i16 %199, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  tail call void @kunmap_local_indexed(ptr noundef %71) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  %200 = load i32, ptr %67, align 8
  %201 = add i32 %200, -1
  store i32 %201, ptr %67, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  br label %220

202:                                              ; preds = %76, %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  %203 = load i16, ptr %62, align 4
  %204 = add i16 %203, 1
  store i16 %204, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  tail call void @kunmap_local_indexed(ptr noundef %71) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  %205 = load i32, ptr %67, align 8
  %206 = add i32 %205, -1
  store i32 %206, ptr %67, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  %207 = icmp ne i32 %72, 0
  %208 = and i32 %2, 8
  %209 = icmp eq i32 %208, 0
  %210 = or i1 %209, %207
  br i1 %210, label %220, label %211

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.vm_operations_struct, ptr %213, i32 0, i32 5
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %215, %211
  br label %220

220:                                              ; preds = %219, %215, %202, %196, %99, %55, %51, %44, %34, %25, %21, %14
  %221 = phi ptr [ inttoptr (i32 -14 to ptr), %25 ], [ null, %21 ], [ null, %14 ], [ %197, %196 ], [ null, %99 ], [ null, %202 ], [ inttoptr (i32 -22 to ptr), %34 ], [ inttoptr (i32 -14 to ptr), %55 ], [ null, %51 ], [ null, %44 ], [ inttoptr (i32 -14 to ptr), %219 ], [ null, %215 ]
  ret ptr %221
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fixup_user_fault(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = tail call ptr @find_extend_vma(ptr noundef %0, i32 noundef %1) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %64, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %3, null
  %9 = or i32 %2, 20
  %10 = select i1 %8, i32 %2, i32 %9
  %11 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 15
  %12 = or i32 %10, 32
  br label %13

13:                                               ; preds = %61, %7
  %14 = phi ptr [ %5, %7 ], [ %62, %61 ]
  %15 = phi i32 [ %10, %7 ], [ %12, %61 ]
  %16 = load i32, ptr %14, align 4
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = and i32 %15, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 1, i32 2
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %14, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %18
  %27 = and i32 %15, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @llvm.thread.pointer() #7
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 98, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %34, %29, %26
  %40 = tail call i32 @handle_mm_fault(ptr noundef nonnull %14, i32 noundef %1, i32 noundef %15, ptr noundef null) #7
  %41 = and i32 %40, 2163
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = and i32 %40, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = and i32 %40, 114
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1321, 0\0A.popsection", ""() #7, !srcloc !35
  unreachable

50:                                               ; preds = %39
  %51 = and i32 %40, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #7
  br label %57

57:                                               ; preds = %56, %53
  tail call void @down_read(ptr noundef %11) #7
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %61

61:                                               ; preds = %60, %57
  store i8 1, ptr %3, align 1
  %62 = tail call ptr @find_extend_vma(ptr noundef %0, i32 noundef %1) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %13

64:                                               ; preds = %61, %50, %46, %43, %34, %18, %13, %4
  %65 = phi i32 [ -14, %46 ], [ -12, %43 ], [ -14, %4 ], [ -14, %13 ], [ -14, %61 ], [ -14, %18 ], [ -4, %34 ], [ 0, %50 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_extend_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @populate_vma_page_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 4162, i32 4098
  %12 = and i32 %8, 10
  %13 = icmp eq i32 %12, 2
  %14 = zext i1 %13 to i32
  %15 = or i32 %11, %14
  %16 = and i32 %8, 7
  %17 = icmp eq i32 %16, 0
  %18 = or i32 %15, 16
  %19 = select i1 %17, i32 %15, i32 %18
  %20 = sub i32 %2, %1
  %21 = lshr i32 %20, 12
  %22 = tail call fastcc i32 @__get_user_pages(ptr noundef %6, i32 noundef %1, i32 noundef %21, i32 noundef %19, ptr noundef null, ptr noundef null, ptr noundef %3)
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__get_user_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca %struct.follow_page_context, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  store i64 0, ptr %8, align 8
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %286, label %10

10:                                               ; preds = %7
  %11 = shl i32 %3, 5
  %12 = and i32 %11, 512
  %13 = xor i32 %12, 512
  %14 = or i32 %13, %3
  %15 = and i32 %3, 1
  %16 = and i32 %3, 32768
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %15, 0
  %19 = and i32 %3, 16
  %20 = icmp ne i32 %19, 0
  %21 = icmp eq i32 %19, 0
  %22 = icmp eq ptr %6, null
  %23 = icmp eq ptr %4, null
  %24 = getelementptr inbounds %struct.follow_page_context, ptr %8, i32 0, i32 1
  %25 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 8
  %26 = and i32 %3, 8
  %27 = icmp eq i32 %26, 0
  %28 = icmp eq ptr %5, null
  br label %29

29:                                               ; preds = %239, %10
  %30 = phi ptr [ null, %10 ], [ %233, %239 ]
  %31 = phi i32 [ %2, %10 ], [ %249, %239 ]
  %32 = phi i32 [ %1, %10 ], [ %248, %239 ]
  %33 = phi i32 [ 0, %10 ], [ %234, %239 ]
  %34 = phi i32 [ 0, %10 ], [ %246, %239 ]
  %35 = icmp eq ptr %30, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %30, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %32, %38
  br i1 %39, label %129, label %40

40:                                               ; preds = %36, %29
  %41 = tail call ptr @find_extend_vma(ptr noundef %0, i32 noundef %32) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %104

43:                                               ; preds = %40
  %44 = tail call i32 @in_gate_area(ptr noundef %0, i32 noundef %32) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %253, label %46

46:                                               ; preds = %43
  %47 = and i32 %32, -4096
  %48 = getelementptr ptr, ptr %4, i32 %34
  %49 = select i1 %23, ptr null, ptr %48
  br i1 %18, label %50, label %253

50:                                               ; preds = %46
  %51 = icmp ugt i32 %47, -1090519040
  %52 = select i1 %51, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), ptr %25
  %53 = load ptr, ptr %52, align 4
  %54 = lshr i32 %32, 21
  %55 = getelementptr [2 x i32], ptr %53, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %253, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr @mem_map, align 4
  %60 = lshr i32 %56, 12
  %61 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %62 = sub i32 %60, %61
  %63 = getelementptr %struct.page, ptr %59, i32 %62
  %64 = load i32, ptr @pgprot_kernel, align 4
  %65 = or i32 %64, 512
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %66 = tail call ptr @llvm.thread.pointer() #7
  %67 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 149
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %70 = tail call ptr @__kmap_local_page_prot(ptr noundef %63, i32 noundef %65) #7
  %71 = lshr i32 %32, 12
  %72 = and i32 %71, 511
  %73 = getelementptr i32, ptr %70, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %58
  %77 = tail call ptr @get_gate_vma(ptr noundef %0) #7
  %78 = icmp eq ptr %49, null
  br i1 %78, label %97, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %73, align 4
  %81 = tail call ptr @vm_normal_page(ptr noundef %77, i32 noundef %47, i32 noundef %80) #7
  store ptr %81, ptr %49, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  br i1 %27, label %84, label %98

84:                                               ; preds = %83
  %85 = load i32, ptr %73, align 4
  %86 = lshr i32 %85, 12
  %87 = load i32, ptr @zero_pfn, align 4
  %88 = icmp eq i32 %87, %86
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load ptr, ptr @mem_map, align 4
  %91 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %92 = sub i32 %86, %91
  %93 = getelementptr %struct.page, ptr %90, i32 %92
  store ptr %93, ptr %49, align 4
  br label %94

94:                                               ; preds = %89, %79
  %95 = phi ptr [ %93, %89 ], [ %81, %79 ]
  %96 = tail call zeroext i1 @try_grab_page(ptr noundef %95, i32 noundef %14) #7
  br i1 %96, label %97, label %98, !prof !9

97:                                               ; preds = %94, %76
  br label %98

98:                                               ; preds = %97, %94, %84, %83, %58
  %99 = phi ptr [ null, %58 ], [ %77, %97 ], [ %77, %94 ], [ %77, %84 ], [ %77, %83 ]
  %100 = phi i1 [ false, %58 ], [ true, %97 ], [ false, %94 ], [ false, %84 ], [ false, %83 ]
  %101 = phi i32 [ -14, %58 ], [ 0, %97 ], [ -12, %94 ], [ -14, %84 ], [ -14, %83 ]
  tail call void @kunmap_local_indexed(ptr noundef %73) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  %102 = load i32, ptr %67, align 8
  %103 = add i32 %102, -1
  store i32 %103, ptr %67, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  br i1 %100, label %229, label %253

104:                                              ; preds = %40
  %105 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 8
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 17408
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %253

109:                                              ; preds = %104
  br i1 %17, label %114, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 12
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %253

114:                                              ; preds = %110, %109
  br i1 %18, label %122, label %115

115:                                              ; preds = %114
  %116 = and i32 %106, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = and i32 %106, 40
  %120 = icmp eq i32 %119, 32
  %121 = select i1 %20, i1 %120, i1 false
  br i1 %121, label %129, label %253

122:                                              ; preds = %114
  %123 = and i32 %106, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = and i32 %106, 16
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %21, i1 true, i1 %127
  br i1 %128, label %253, label %129

129:                                              ; preds = %125, %122, %118, %115, %36
  %130 = phi ptr [ %30, %36 ], [ %41, %125 ], [ %41, %122 ], [ %41, %118 ], [ %41, %115 ]
  %131 = phi i32 [ %33, %36 ], [ 0, %125 ], [ 0, %122 ], [ 0, %118 ], [ 0, %115 ]
  %132 = tail call ptr @llvm.thread.pointer() #7
  %133 = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 98, i32 1
  %134 = getelementptr inbounds %struct.vm_area_struct, ptr %130, i32 0, i32 8
  br label %135

135:                                              ; preds = %199, %129
  %136 = phi i32 [ %204, %199 ], [ %14, %129 ]
  %137 = phi i32 [ 0, %199 ], [ %131, %129 ]
  %138 = and i32 %136, 4160
  %139 = icmp eq i32 %138, 4096
  %140 = and i32 %136, 128
  %141 = icmp eq i32 %140, 0
  %142 = and i32 %136, 1
  %143 = lshr i32 %136, 6
  %144 = and i32 %143, 128
  %145 = or i32 %144, %142
  %146 = or i32 %145, 20
  %147 = select i1 %22, i32 %145, i32 %146
  %148 = and i32 %136, 32
  %149 = icmp eq i32 %148, 0
  %150 = or i32 %147, 12
  %151 = select i1 %149, i32 %147, i32 %150
  %152 = and i32 %143, 32
  %153 = or i32 %151, %152
  br label %154

154:                                              ; preds = %196, %135
  %155 = phi i32 [ 0, %196 ], [ %137, %135 ]
  %156 = load volatile i32, ptr %132, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %154
  %160 = load i32, ptr %133, align 4
  %161 = and i32 %160, 256
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %253

163:                                              ; preds = %159, %154
  %164 = tail call i32 @__cond_resched() #7
  %165 = call fastcc ptr @follow_page_mask(ptr noundef nonnull %130, i32 noundef %32, i32 noundef %136, ptr noundef nonnull %8)
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %205

167:                                              ; preds = %163
  br i1 %139, label %232, label %168

168:                                              ; preds = %167
  br i1 %141, label %169, label %253

169:                                              ; preds = %168
  %170 = tail call i32 @handle_mm_fault(ptr noundef nonnull %130, i32 noundef %32, i32 noundef %153, ptr noundef null) #7
  %171 = and i32 %170, 2163
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %187, label %173

173:                                              ; preds = %169
  %174 = and i32 %170, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %253

176:                                              ; preds = %173
  %177 = and i32 %170, 48
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = and i32 %136, 256
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, i32 -14, i32 -133
  br label %253

183:                                              ; preds = %176
  %184 = and i32 %170, 66
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %253

186:                                              ; preds = %183
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 975, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

187:                                              ; preds = %169
  %188 = and i32 %170, 1024
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = xor i1 %22, true
  %192 = and i32 %151, 8
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %191, i1 %193, i1 false
  br i1 %194, label %195, label %253

195:                                              ; preds = %190
  store i32 0, ptr %6, align 4
  br label %253

196:                                              ; preds = %187
  %197 = and i32 %170, 8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %154, label %199

199:                                              ; preds = %196
  %200 = load i32, ptr %134, align 4
  %201 = shl i32 %200, 13
  %202 = and i32 %201, 16384
  %203 = xor i32 %202, 16384
  %204 = or i32 %203, %136
  br label %135

205:                                              ; preds = %163
  %206 = ptrtoint ptr %165 to i32
  %207 = icmp eq ptr %165, inttoptr (i32 -17 to ptr)
  br i1 %207, label %232, label %208

208:                                              ; preds = %205
  %209 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %209, label %251, label %210

210:                                              ; preds = %208
  br i1 %23, label %232, label %211

211:                                              ; preds = %210
  %212 = getelementptr ptr, ptr %4, i32 %34
  store ptr %165, ptr %212, align 4
  %213 = getelementptr inbounds %struct.page, ptr %165, i32 0, i32 1
  %214 = load volatile i32, ptr %213, align 4
  %215 = and i32 %214, 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217, !prof !9

217:                                              ; preds = %211
  %218 = add i32 %214, -1
  br label %219

219:                                              ; preds = %217, %211
  %220 = phi i32 [ %218, %217 ], [ %206, %211 ]
  %221 = inttoptr i32 %220 to ptr
  %222 = getelementptr inbounds %struct.anon.70, ptr %221, i32 0, i32 2
  %223 = load ptr, ptr %222, align 4
  %224 = ptrtoint ptr %223 to i32
  %225 = and i32 %224, 1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %219
  tail call void @__flush_anon_page(ptr noundef nonnull %130, ptr noundef nonnull %165, i32 noundef %32) #7
  br label %228

228:                                              ; preds = %227, %219
  tail call void @flush_dcache_page(ptr noundef nonnull %165) #7
  br label %229

229:                                              ; preds = %228, %98
  %230 = phi ptr [ %130, %228 ], [ %99, %98 ]
  %231 = phi i32 [ %155, %228 ], [ 0, %98 ]
  store i32 0, ptr %24, align 4
  br label %232

232:                                              ; preds = %229, %210, %205, %167
  %233 = phi ptr [ %130, %205 ], [ %130, %210 ], [ %230, %229 ], [ %130, %167 ]
  %234 = phi i32 [ %155, %205 ], [ %155, %210 ], [ %231, %229 ], [ -2, %167 ]
  br i1 %28, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, ptr %24, align 4
  br label %239

237:                                              ; preds = %232
  %238 = getelementptr ptr, ptr %5, i32 %34
  store ptr %233, ptr %238, align 4
  store i32 0, ptr %24, align 4
  br label %239

239:                                              ; preds = %237, %235
  %240 = phi i32 [ %236, %235 ], [ 0, %237 ]
  %241 = lshr i32 %32, 12
  %242 = xor i32 %241, -1
  %243 = and i32 %240, %242
  %244 = add i32 %243, 1
  %245 = tail call i32 @llvm.umin.i32(i32 %244, i32 %31)
  %246 = add i32 %245, %34
  %247 = shl i32 %245, 12
  %248 = add i32 %247, %32
  %249 = sub i32 %31, %245
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %29

251:                                              ; preds = %208
  %252 = ptrtoint ptr %165 to i32
  br label %253

253:                                              ; preds = %251, %239, %195, %190, %183, %179, %173, %168, %159, %125, %118, %110, %104, %98, %50, %46, %43
  %254 = phi i32 [ %34, %195 ], [ %34, %190 ], [ %34, %183 ], [ %34, %173 ], [ %34, %179 ], [ %34, %251 ], [ %34, %159 ], [ %34, %168 ], [ %34, %125 ], [ %34, %118 ], [ %34, %110 ], [ %34, %104 ], [ %34, %50 ], [ %34, %46 ], [ %34, %43 ], [ %34, %98 ], [ %246, %239 ]
  %255 = phi i32 [ 0, %195 ], [ 0, %190 ], [ -14, %183 ], [ -12, %173 ], [ %182, %179 ], [ %252, %251 ], [ -14, %168 ], [ -4, %159 ], [ -14, %125 ], [ -14, %118 ], [ -14, %110 ], [ -14, %104 ], [ -14, %50 ], [ -14, %46 ], [ -14, %43 ], [ %101, %98 ], [ %234, %239 ]
  %256 = load ptr, ptr %8, align 8
  %257 = icmp eq ptr %256, null
  br i1 %257, label %283, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.dev_pagemap, ptr %256, i32 0, i32 1
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %260 = load volatile i32, ptr %259, align 4
  %261 = and i32 %260, 3
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %272, !prof !9

263:                                              ; preds = %258
  %264 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !21
  %265 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %266 = inttoptr i32 %265 to ptr
  %267 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %266) #4, !srcloc !22
  %268 = add i32 %267, %260
  %269 = inttoptr i32 %268 to ptr
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, -1
  store i32 %271, ptr %269, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %264) #7, !srcloc !23
  br label %282

272:                                              ; preds = %258
  %273 = getelementptr inbounds %struct.dev_pagemap, ptr %256, i32 0, i32 1, i32 1
  %274 = load ptr, ptr %273, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %274) #7, !srcloc !12
  %275 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %274, ptr %274, i32 1, ptr elementtype(i32) %274) #7, !srcloc !18
  %276 = extractvalue { i32, i32 } %275, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %282, !prof !10

278:                                              ; preds = %272
  %279 = load ptr, ptr %273, align 4
  %280 = getelementptr inbounds %struct.percpu_ref_data, ptr %279, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  tail call void %281(ptr noundef %259) #7
  br label %282

282:                                              ; preds = %278, %272, %263
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  br label %283

283:                                              ; preds = %282, %253
  %284 = icmp eq i32 %254, 0
  %285 = select i1 %284, i32 %255, i32 %254
  br label %286

286:                                              ; preds = %283, %7
  %287 = phi i32 [ %285, %283 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  ret i32 %287
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @faultin_vma_page_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = sub i32 %2, %1
  %9 = lshr i32 %8, 12
  %10 = select i1 %3, i32 4419, i32 4418
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 17408
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %5
  %16 = and i32 %10, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = and i32 %12, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %24

21:                                               ; preds = %15
  %22 = and i32 %12, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %18
  %25 = tail call fastcc i32 @__get_user_pages(ptr noundef %7, i32 noundef %1, i32 noundef %9, i32 noundef %10, ptr noundef null, ptr noundef null, ptr noundef %4)
  br label %26

26:                                               ; preds = %24, %21, %18, %5
  %27 = phi i32 [ %25, %24 ], [ -22, %5 ], [ -22, %18 ], [ -22, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__mm_populate(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @llvm.thread.pointer() #7
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4
  %8 = add i32 %1, %0
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %10, label %87

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 15
  %12 = icmp eq i32 %2, 0
  br label %13

13:                                               ; preds = %75, %10
  %14 = phi i32 [ 0, %10 ], [ %76, %75 ]
  %15 = phi i32 [ %0, %10 ], [ %73, %75 ]
  %16 = phi ptr [ null, %10 ], [ %36, %75 ]
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  store i32 1, ptr %4, align 4
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %7, i1 noundef zeroext false) #7
  br label %22

22:                                               ; preds = %21, %18
  call void @down_read(ptr noundef %11) #7
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %26

26:                                               ; preds = %25, %22
  %27 = call ptr @find_vma(ptr noundef %7, i32 noundef %15) #7
  br label %35

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %15, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %28, %26
  %36 = phi ptr [ %34, %32 ], [ %16, %28 ], [ %27, %26 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %77, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %36, align 4
  %40 = icmp ult i32 %39, %8
  br i1 %40, label %41, label %77

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = call i32 @llvm.umin.i32(i32 %8, i32 %43)
  %45 = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 17408
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %41
  %50 = call i32 @llvm.umax.i32(i32 %15, i32 %39)
  %51 = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = and i32 %46, 524288
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 4162, i32 4098
  %56 = and i32 %46, 10
  %57 = icmp eq i32 %56, 2
  %58 = zext i1 %57 to i32
  %59 = or i32 %55, %58
  %60 = and i32 %46, 7
  %61 = icmp eq i32 %60, 0
  %62 = or i32 %59, 16
  %63 = select i1 %61, i32 %59, i32 %62
  %64 = sub i32 %44, %50
  %65 = lshr i32 %64, 12
  %66 = call fastcc i32 @__get_user_pages(ptr noundef %52, i32 noundef %50, i32 noundef %65, i32 noundef %63, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #7
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  br i1 %12, label %77, label %72

69:                                               ; preds = %49
  %70 = shl i32 %66, 12
  %71 = add i32 %70, %50
  br label %72

72:                                               ; preds = %69, %68, %41
  %73 = phi i32 [ %44, %41 ], [ %71, %69 ], [ %44, %68 ]
  %74 = icmp ult i32 %73, %8
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, ptr %4, align 4
  br label %13

77:                                               ; preds = %72, %68, %38, %35
  %78 = phi i32 [ 0, %72 ], [ 0, %38 ], [ 0, %35 ], [ %66, %68 ]
  %79 = load i32, ptr %4, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  call void @__mmap_lock_do_trace_released(ptr noundef %7, i1 noundef zeroext false) #7
  br label %85

85:                                               ; preds = %84, %81
  %86 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 15
  call void @up_read(ptr noundef %86) #7
  br label %87

87:                                               ; preds = %85, %77, %3
  %88 = phi i32 [ %78, %85 ], [ %78, %77 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fault_in_writeable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %55, label %4, !prof !10

4:                                                ; preds = %2
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %1, i32 -1090519040) #8, !srcloc !37
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %55

8:                                                ; preds = %4
  %9 = ptrtoint ptr %0 to i32
  %10 = and i32 %9, 4095
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = add nuw i32 %9, 4095
  br label %26

14:                                               ; preds = %8
  %15 = tail call ptr @llvm.thread.pointer() #7
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #4, !srcloc !38
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #7, !srcloc !39
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !40
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i8 0, i32 -1090519041) #7, !srcloc !41
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #7, !srcloc !39
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !40
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %50, !prof !9

22:                                               ; preds = %14
  %23 = add i32 %9, 4095
  %24 = and i32 %23, -4096
  %25 = inttoptr i32 %24 to ptr
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i32 [ %13, %12 ], [ %23, %22 ]
  %28 = phi ptr [ %0, %12 ], [ %25, %22 ]
  %29 = add i32 %27, %1
  %30 = and i32 %29, -4096
  %31 = inttoptr i32 %30 to ptr
  %32 = icmp ult ptr %31, %0
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %26
  %35 = phi ptr [ null, %33 ], [ %31, %26 ]
  %36 = icmp eq ptr %28, %35
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @llvm.thread.pointer() #7
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  br label %40

40:                                               ; preds = %47, %37
  %41 = phi ptr [ %28, %37 ], [ %48, %47 ]
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #4, !srcloc !38
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #7, !srcloc !39
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !40
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %41, i8 0, i32 -1090519041) #7, !srcloc !42
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #7, !srcloc !39
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !40
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50, !prof !9

47:                                               ; preds = %40
  %48 = getelementptr i8, ptr %41, i32 4096
  %49 = icmp eq ptr %48, %35
  br i1 %49, label %50, label %40

50:                                               ; preds = %47, %40, %34, %14
  %51 = phi ptr [ %0, %14 ], [ %28, %34 ], [ %35, %47 ], [ %41, %40 ]
  %52 = ptrtoint ptr %51 to i32
  %53 = sub i32 %52, %9
  %54 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %53)
  br label %55

55:                                               ; preds = %50, %4, %2
  %56 = phi i32 [ 0, %2 ], [ %1, %4 ], [ %54, %50 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fault_in_safe_writeable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = ptrtoint ptr %0 to i32
  %5 = tail call ptr @llvm.thread.pointer() #7
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %40, label %9, !prof !10

9:                                                ; preds = %2
  %10 = add i32 %1, 4095
  %11 = add i32 %10, %4
  %12 = and i32 %11, -4096
  %13 = icmp ult i32 %12, %4
  %14 = select i1 %13, i32 0, i32 %12
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %7, i1 noundef zeroext false) #7
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 15
  tail call void @down_read(ptr noundef %19) #7
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %23

23:                                               ; preds = %22, %18
  br label %24

24:                                               ; preds = %28, %23
  %25 = phi i32 [ %30, %28 ], [ %4, %23 ]
  %26 = call i32 @fixup_user_fault(ptr noundef %7, i32 noundef %25, i32 noundef 1, ptr noundef nonnull %3)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = add i32 %25, 4096
  %30 = and i32 %29, -4096
  %31 = icmp eq i32 %30, %14
  br i1 %31, label %32, label %24

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %25, %24 ], [ %14, %28 ]
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @__mmap_lock_do_trace_released(ptr noundef %7, i1 noundef zeroext false) #7
  br label %37

37:                                               ; preds = %36, %32
  call void @up_read(ptr noundef %19) #7
  %38 = sub i32 %4, %33
  %39 = call i32 @llvm.usub.sat.i32(i32 %1, i32 %38)
  br label %40

40:                                               ; preds = %37, %2
  %41 = phi i32 [ 0, %2 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fault_in_readable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store volatile i8 0, ptr %3, align 1
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %63, label %5, !prof !10

5:                                                ; preds = %2
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %1, i32 -1090519040) #8, !srcloc !43
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %5
  %10 = ptrtoint ptr %0 to i32
  %11 = and i32 %10, 4095
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = add nuw i32 %10, 4095
  br label %30

15:                                               ; preds = %9
  %16 = tail call ptr @llvm.thread.pointer() #7
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #4, !srcloc !38
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !39
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !40
  %21 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1090519041) #7, !srcloc !44
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #7, !srcloc !39
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !40
  %24 = trunc i32 %23 to i8
  store volatile i8 %24, ptr %3, align 1
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %57, !prof !9

26:                                               ; preds = %15
  %27 = add i32 %10, 4095
  %28 = and i32 %27, -4096
  %29 = inttoptr i32 %28 to ptr
  br label %30

30:                                               ; preds = %26, %13
  %31 = phi i32 [ %14, %13 ], [ %27, %26 ]
  %32 = phi ptr [ %0, %13 ], [ %29, %26 ]
  %33 = add i32 %31, %1
  %34 = and i32 %33, -4096
  %35 = inttoptr i32 %34 to ptr
  %36 = icmp ult ptr %35, %0
  br i1 %36, label %37, label %38, !prof !10

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %30
  %39 = phi ptr [ null, %37 ], [ %35, %30 ]
  %40 = icmp eq ptr %32, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @llvm.thread.pointer() #7
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  br label %44

44:                                               ; preds = %54, %41
  %45 = phi ptr [ %32, %41 ], [ %55, %54 ]
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %43) #4, !srcloc !38
  %47 = and i32 %46, -13
  %48 = or i32 %47, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #7, !srcloc !39
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !40
  %49 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %45, i32 -1090519041) #7, !srcloc !45
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = extractvalue { i32, i32 } %49, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #7, !srcloc !39
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !40
  %52 = trunc i32 %51 to i8
  store volatile i8 %52, ptr %3, align 1
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %54, label %57, !prof !9

54:                                               ; preds = %44
  %55 = getelementptr i8, ptr %45, i32 4096
  %56 = icmp eq ptr %55, %39
  br i1 %56, label %57, label %44

57:                                               ; preds = %54, %44, %38, %15
  %58 = phi ptr [ %0, %15 ], [ %32, %38 ], [ %39, %54 ], [ %45, %44 ]
  %59 = load volatile i8, ptr %3, align 1
  %60 = ptrtoint ptr %58 to i32
  %61 = sub i32 %60, %10
  %62 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %61)
  br label %63

63:                                               ; preds = %57, %5, %2
  %64 = phi i32 [ 0, %2 ], [ %1, %5 ], [ %62, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_dump_page(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = tail call ptr @llvm.thread.pointer() #7
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 1, ptr %3, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %6, i1 noundef zeroext false) #7
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 15
  %12 = tail call i32 @down_read_killable(ptr noundef %11) #7
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = icmp eq i32 %12, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext %16) #7
  br label %17

17:                                               ; preds = %15, %10
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %19, label %135

19:                                               ; preds = %17
  %20 = call fastcc i32 @__get_user_pages(ptr noundef %6, i32 noundef %0, i32 noundef 1, i32 noundef 28, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %3) #7
  %21 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 98, i32 1
  br label %22

22:                                               ; preds = %104, %19
  %23 = phi i32 [ %20, %19 ], [ %110, %104 ]
  %24 = phi i1 [ false, %19 ], [ true, %104 ]
  %25 = phi i32 [ 0, %19 ], [ %102, %104 ]
  %26 = phi i32 [ %0, %19 ], [ %109, %104 ]
  %27 = phi ptr [ %2, %19 ], [ %108, %104 ]
  %28 = phi i32 [ 1, %19 ], [ %101, %104 ]
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = icmp slt i32 %23, 0
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %31
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

34:                                               ; preds = %31
  %35 = icmp ugt i32 %28, %23
  br i1 %35, label %37, label %36, !prof !9

36:                                               ; preds = %34
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

37:                                               ; preds = %34, %22
  %38 = icmp sgt i32 %23, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = sub i32 %28, %23
  %41 = add i32 %25, %23
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %111, label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %40, %39 ], [ %28, %37 ]
  %45 = phi i32 [ %41, %39 ], [ %25, %37 ]
  br i1 %30, label %49, label %46

46:                                               ; preds = %43
  %47 = icmp eq i32 %45, 0
  %48 = select i1 %47, i32 %23, i32 %45
  br i1 %24, label %116, label %124

49:                                               ; preds = %43
  %50 = icmp eq ptr %27, null
  %51 = getelementptr ptr, ptr %27, i32 %23
  %52 = select i1 %50, ptr null, ptr %51, !prof !10
  %53 = shl i32 %23, 12
  %54 = add i32 %26, %53
  br label %55

55:                                               ; preds = %89, %49
  %56 = load volatile i32, ptr %4, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %21, align 4
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = icmp eq i32 %45, 0
  %65 = select i1 %64, i32 -4, i32 %45
  br label %130

66:                                               ; preds = %59, %55
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %6, i1 noundef zeroext false) #7
  br label %70

70:                                               ; preds = %69, %66
  %71 = call i32 @down_read_killable(ptr noundef %11) #7
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = icmp eq i32 %71, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext %75) #7
  br label %76

76:                                               ; preds = %74, %70
  %77 = icmp eq i32 %71, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %76
  %79 = icmp sgt i32 %71, 0
  br i1 %79, label %80, label %81, !prof !10

80:                                               ; preds = %78
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

81:                                               ; preds = %78
  %82 = icmp eq i32 %45, 0
  %83 = select i1 %82, i32 %71, i32 %45
  %84 = load i32, ptr %3, align 4
  br label %112

85:                                               ; preds = %76
  store i32 1, ptr %3, align 4
  %86 = call fastcc i32 @__get_user_pages(ptr noundef %6, i32 noundef %54, i32 noundef 1, i32 noundef 2076, ptr noundef %52, ptr noundef null, ptr noundef nonnull %3) #7
  %87 = load i32, ptr %3, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = icmp eq i32 %86, 0
  br i1 %90, label %55, label %91, !prof !9

91:                                               ; preds = %89
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

92:                                               ; preds = %85
  %93 = icmp eq i32 %86, 1
  br i1 %93, label %100, label %94

94:                                               ; preds = %92
  %95 = icmp sgt i32 %86, 1
  br i1 %95, label %96, label %97, !prof !10

96:                                               ; preds = %94
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

97:                                               ; preds = %94
  %98 = icmp eq i32 %45, 0
  %99 = select i1 %98, i32 %86, i32 %45
  br label %116

100:                                              ; preds = %92
  %101 = add i32 %44, -1
  %102 = add i32 %45, 1
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %100
  %105 = icmp eq ptr %52, null
  %106 = getelementptr ptr, ptr %51, i32 1
  %107 = select i1 %50, ptr inttoptr (i32 4 to ptr), ptr %106
  %108 = select i1 %105, ptr null, ptr %107, !prof !10
  %109 = add i32 %54, 4096
  %110 = call fastcc i32 @__get_user_pages(ptr noundef %6, i32 noundef %109, i32 noundef %101, i32 noundef 28, ptr noundef %108, ptr noundef null, ptr noundef nonnull %3) #7
  br label %22

111:                                              ; preds = %39
  br i1 %24, label %112, label %122

112:                                              ; preds = %111, %81
  %113 = phi i32 [ %29, %111 ], [ %84, %81 ]
  %114 = phi i32 [ %41, %111 ], [ %83, %81 ]
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %112, %100, %97, %46
  %117 = phi i32 [ %114, %112 ], [ %99, %97 ], [ %48, %46 ], [ %102, %100 ]
  %118 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  call void @__mmap_lock_do_trace_released(ptr noundef %6, i1 noundef zeroext false) #7
  br label %121

121:                                              ; preds = %120, %116
  call void @up_read(ptr noundef %11) #7
  br label %130

122:                                              ; preds = %111
  %123 = icmp eq i32 %29, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %122, %46
  %125 = phi i32 [ %41, %122 ], [ %48, %46 ]
  %126 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  call void @__mmap_lock_do_trace_released(ptr noundef %6, i1 noundef zeroext false) #7
  br label %129

129:                                              ; preds = %128, %124
  call void @up_read(ptr noundef %11) #7
  br label %130

130:                                              ; preds = %129, %122, %121, %112, %63
  %131 = phi i32 [ %117, %121 ], [ %125, %129 ], [ %41, %122 ], [ %114, %112 ], [ %65, %63 ]
  %132 = icmp eq i32 %131, 1
  %133 = load ptr, ptr %2, align 4
  %134 = select i1 %132, ptr %133, ptr null
  br label %135

135:                                              ; preds = %130, %17
  %136 = phi ptr [ %134, %130 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret ptr %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_remote(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = and i32 %3, 262144
  %9 = icmp ne i32 %8, 0
  %10 = load i1, ptr @is_valid_gup_flags.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !10

13:                                               ; preds = %7
  store i1 true, ptr @is_valid_gup_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1964, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %7
  br i1 %9, label %25, label %15

15:                                               ; preds = %14
  %16 = and i32 %3, 65536
  %17 = icmp ne i32 %16, 0
  %18 = load i1, ptr @is_valid_gup_flags.__already_done.5, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !10

21:                                               ; preds = %15
  store i1 true, ptr @is_valid_gup_flags.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1971, i32 noundef 9, ptr noundef null) #7
  br label %22

22:                                               ; preds = %21, %15
  br i1 %17, label %25, label %23

23:                                               ; preds = %22
  %24 = tail call fastcc i32 @__get_user_pages_remote(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %25

25:                                               ; preds = %23, %22, %14
  %26 = phi i32 [ %24, %23 ], [ -22, %22 ], [ -22, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__get_user_pages_remote(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = and i32 %3, 65536
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = icmp ne ptr %6, null
  %12 = load i1, ptr @__get_user_pages_remote.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !10

15:                                               ; preds = %10
  store i1 true, ptr @__get_user_pages_remote.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1991, i32 noundef 9, ptr noundef null) #7
  br label %16

16:                                               ; preds = %15, %10
  br i1 %11, label %149, label %17

17:                                               ; preds = %16
  %18 = or i32 %3, 8194
  %19 = tail call fastcc i32 @__gup_longterm_locked(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4, ptr noundef %5, i32 noundef %18)
  br label %149

20:                                               ; preds = %7
  %21 = or i32 %3, 8194
  %22 = icmp eq ptr %6, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = icmp eq ptr %5, null
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1352, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

26:                                               ; preds = %23
  %27 = load i32, ptr %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %30, label %29, !prof !9

29:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1354, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

30:                                               ; preds = %26, %20
  %31 = and i32 %3, 262144
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 43
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 268435456
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @_set_bit(i32 noundef 28, ptr noundef %34) #7
  br label %39

39:                                               ; preds = %38, %33, %30
  %40 = icmp eq ptr %4, null
  %41 = or i32 %3, 8198
  %42 = select i1 %32, i32 %41, i32 %21
  %43 = select i1 %40, i32 %21, i32 %42
  %44 = tail call fastcc i32 @__get_user_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %43, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7
  br i1 %22, label %149, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 15
  %47 = or i32 %43, 2048
  br label %48

48:                                               ; preds = %132, %45
  %49 = phi i32 [ %44, %45 ], [ %137, %132 ]
  %50 = phi i1 [ false, %45 ], [ true, %132 ]
  %51 = phi i32 [ 0, %45 ], [ %130, %132 ]
  %52 = phi i32 [ %1, %45 ], [ %136, %132 ]
  %53 = phi ptr [ %4, %45 ], [ %135, %132 ]
  %54 = phi i32 [ %2, %45 ], [ %129, %132 ]
  %55 = load i32, ptr %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = icmp slt i32 %49, 0
  br i1 %58, label %59, label %60, !prof !10

59:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

60:                                               ; preds = %57
  %61 = icmp ugt i32 %54, %49
  br i1 %61, label %63, label %62, !prof !9

62:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

63:                                               ; preds = %60, %48
  %64 = icmp sgt i32 %49, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = sub i32 %54, %49
  %67 = add i32 %51, %49
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %138, label %69

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %66, %65 ], [ %54, %63 ]
  %71 = phi i32 [ %67, %65 ], [ %51, %63 ]
  br i1 %56, label %75, label %72

72:                                               ; preds = %69
  %73 = icmp eq i32 %71, 0
  %74 = select i1 %73, i32 %49, i32 %71
  br i1 %50, label %143, label %149

75:                                               ; preds = %69
  %76 = icmp eq ptr %53, null
  %77 = getelementptr ptr, ptr %53, i32 %49
  %78 = select i1 %76, ptr null, ptr %77, !prof !10
  %79 = shl i32 %49, 12
  %80 = add i32 %52, %79
  %81 = tail call ptr @llvm.thread.pointer() #7
  %82 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 98, i32 1
  br label %83

83:                                               ; preds = %117, %75
  %84 = load volatile i32, ptr %81, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %82, align 4
  %89 = and i32 %88, 256
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = icmp eq i32 %71, 0
  %93 = select i1 %92, i32 -4, i32 %71
  br label %149

94:                                               ; preds = %87, %83
  %95 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #7
  br label %98

98:                                               ; preds = %97, %94
  %99 = tail call i32 @down_read_killable(ptr noundef %46) #7
  %100 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = icmp eq i32 %99, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %103) #7
  br label %104

104:                                              ; preds = %102, %98
  %105 = icmp eq i32 %99, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %104
  %107 = icmp sgt i32 %99, 0
  br i1 %107, label %108, label %109, !prof !10

108:                                              ; preds = %106
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

109:                                              ; preds = %106
  %110 = icmp eq i32 %71, 0
  %111 = select i1 %110, i32 %99, i32 %71
  %112 = load i32, ptr %6, align 4
  br label %139

113:                                              ; preds = %104
  store i32 1, ptr %6, align 4
  %114 = tail call fastcc i32 @__get_user_pages(ptr noundef %0, i32 noundef %80, i32 noundef 1, i32 noundef %47, ptr noundef %78, ptr noundef null, ptr noundef nonnull %6) #7
  %115 = load i32, ptr %6, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = icmp eq i32 %114, 0
  br i1 %118, label %83, label %119, !prof !9

119:                                              ; preds = %117
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

120:                                              ; preds = %113
  %121 = icmp eq i32 %114, 1
  br i1 %121, label %128, label %122

122:                                              ; preds = %120
  %123 = icmp sgt i32 %114, 1
  br i1 %123, label %124, label %125, !prof !10

124:                                              ; preds = %122
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

125:                                              ; preds = %122
  %126 = icmp eq i32 %71, 0
  %127 = select i1 %126, i32 %114, i32 %71
  br label %143

128:                                              ; preds = %120
  %129 = add i32 %70, -1
  %130 = add i32 %71, 1
  %131 = icmp eq i32 %129, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %128
  %133 = icmp eq ptr %78, null
  %134 = getelementptr ptr, ptr %78, i32 1
  %135 = select i1 %133, ptr null, ptr %134, !prof !10
  %136 = add i32 %80, 4096
  %137 = tail call fastcc i32 @__get_user_pages(ptr noundef %0, i32 noundef %136, i32 noundef %129, i32 noundef %43, ptr noundef %135, ptr noundef %5, ptr noundef nonnull %6) #7
  br label %48

138:                                              ; preds = %65
  br i1 %50, label %139, label %149

139:                                              ; preds = %138, %109
  %140 = phi i32 [ %55, %138 ], [ %112, %109 ]
  %141 = phi i32 [ %67, %138 ], [ %111, %109 ]
  %142 = icmp eq i32 %140, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %139, %128, %125, %72
  %144 = phi i32 [ %141, %139 ], [ %127, %125 ], [ %74, %72 ], [ %130, %128 ]
  %145 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  tail call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext false) #7
  br label %148

148:                                              ; preds = %147, %143
  tail call void @up_read(ptr noundef %46) #7
  store i32 0, ptr %6, align 4
  br label %149

149:                                              ; preds = %148, %139, %138, %91, %72, %39, %17, %16
  %150 = phi i32 [ %19, %17 ], [ -22, %16 ], [ %144, %148 ], [ %141, %139 ], [ %67, %138 ], [ %74, %72 ], [ %44, %39 ], [ %93, %91 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_user_pages(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = and i32 %2, 262144
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @is_valid_gup_flags.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %5
  store i1 true, ptr @is_valid_gup_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1964, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %5
  br i1 %7, label %27, label %13

13:                                               ; preds = %12
  %14 = and i32 %2, 65536
  %15 = icmp ne i32 %14, 0
  %16 = load i1, ptr @is_valid_gup_flags.__already_done.5, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %13
  store i1 true, ptr @is_valid_gup_flags.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1971, i32 noundef 9, ptr noundef null) #7
  br label %20

20:                                               ; preds = %19, %13
  br i1 %15, label %27, label %21

21:                                               ; preds = %20
  %22 = tail call ptr @llvm.thread.pointer() #7
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 37
  %24 = load ptr, ptr %23, align 4
  %25 = or i32 %2, 2
  %26 = tail call fastcc i32 @__gup_longterm_locked(ptr noundef %24, i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %25)
  br label %27

27:                                               ; preds = %21, %20, %12
  %28 = phi i32 [ %26, %21 ], [ -22, %20 ], [ -22, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__gup_longterm_locked(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.list_head, align 8
  %8 = alloca %struct.migration_target_control, align 4
  %9 = and i32 %5, 65536
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = and i32 %5, 262144
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 43
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @_set_bit(i32 noundef 28, ptr noundef %15) #7
  br label %20

20:                                               ; preds = %19, %14, %11
  %21 = icmp eq ptr %3, null
  %22 = or i32 %5, 4
  %23 = select i1 %13, i32 %22, i32 %5
  %24 = select i1 %21, i32 %5, i32 %23
  %25 = tail call fastcc i32 @__get_user_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %24, ptr noundef %3, ptr noundef %4, ptr noundef null) #7
  br label %185

26:                                               ; preds = %6
  %27 = tail call ptr @llvm.thread.pointer() #7
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 268435456
  %31 = or i32 %29, 268435456
  store i32 %31, ptr %28, align 4
  %32 = and i32 %5, 262144
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 43
  %35 = icmp eq ptr %3, null
  %36 = or i32 %5, 4
  %37 = select i1 %33, i32 %36, i32 %5
  %38 = select i1 %35, i32 %5, i32 %37
  %39 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %40 = ptrtoint ptr %8 to i32
  br label %41

41:                                               ; preds = %177, %26
  br i1 %33, label %47, label %42

42:                                               ; preds = %41
  %43 = load volatile i32, ptr %34, align 4
  %44 = and i32 %43, 268435456
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void @_set_bit(i32 noundef 28, ptr noundef %34) #7
  br label %47

47:                                               ; preds = %46, %42, %41
  %48 = call fastcc i32 @__get_user_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %38, ptr noundef %3, ptr noundef %4, ptr noundef null) #7
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %180, label %50

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store ptr %7, ptr %7, align 8
  store ptr %7, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.check_and_migrate_movable_pages.mtc, i32 12, i1 false) #7
  br label %51

51:                                               ; preds = %128, %50
  %52 = phi ptr [ %131, %128 ], [ null, %50 ]
  %53 = phi i1 [ %130, %128 ], [ true, %50 ]
  %54 = phi i32 [ %129, %128 ], [ 0, %50 ]
  %55 = phi i32 [ %132, %128 ], [ 0, %50 ]
  %56 = getelementptr ptr, ptr %3, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 1
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !9

62:                                               ; preds = %51
  %63 = add i32 %59, -1
  br label %66

64:                                               ; preds = %51
  %65 = ptrtoint ptr %57 to i32
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = inttoptr i32 %67 to ptr
  %69 = icmp eq ptr %52, %68
  br i1 %69, label %128, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %68, align 4
  %72 = icmp ugt i32 %71, -1073741825
  br i1 %72, label %82, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @mem_map, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = sub i32 %67, %75
  %77 = ashr exact i32 %76, 5
  %78 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %79 = add i32 %77, %78
  %80 = call i32 @get_pfnblock_flags_mask(ptr noundef %68, i32 noundef %79, i32 noundef 7) #7
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %82, label %128

82:                                               ; preds = %73, %70
  %83 = load ptr, ptr @mem_map, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = sub i32 %67, %84
  %86 = ashr exact i32 %85, 5
  %87 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %88 = add i32 %86, %87
  %89 = load i32, ptr @zero_pfn, align 4
  %90 = icmp eq i32 %89, %88
  br i1 %90, label %128, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 1
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96, !prof !9

96:                                               ; preds = %91
  %97 = add i32 %93, -1
  %98 = inttoptr i32 %97 to ptr
  br label %99

99:                                               ; preds = %96, %91
  %100 = phi ptr [ %68, %91 ], [ %98, %96 ]
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 16
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %53, true
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  call void @lru_add_drain_all() #7
  br label %107

107:                                              ; preds = %106, %99
  %108 = phi i1 [ %53, %99 ], [ false, %106 ]
  %109 = call i32 @isolate_lru_page(ptr noundef %68) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = add i32 %54, 1
  br label %128

113:                                              ; preds = %107
  %114 = load ptr, ptr %39, align 4
  store ptr %92, ptr %39, align 4
  store ptr %7, ptr %92, align 4
  %115 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %114, ptr %115, align 4
  store volatile ptr %92, ptr %114, align 4
  %116 = load volatile i32, ptr %92, align 4
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119, !prof !9

119:                                              ; preds = %113
  %120 = add i32 %116, -1
  %121 = inttoptr i32 %120 to ptr
  br label %122

122:                                              ; preds = %119, %113
  %123 = phi ptr [ %68, %113 ], [ %121, %119 ]
  %124 = load volatile i32, ptr %123, align 4
  %125 = shl i32 %124, 12
  %126 = ashr i32 %125, 31
  %127 = add nsw i32 %126, 8
  call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %127, i32 noundef 1) #7
  br label %128

128:                                              ; preds = %122, %111, %82, %73, %66
  %129 = phi i32 [ %54, %66 ], [ %54, %82 ], [ %112, %111 ], [ %54, %122 ], [ %54, %73 ]
  %130 = phi i1 [ %53, %66 ], [ %53, %82 ], [ %108, %111 ], [ %108, %122 ], [ %53, %73 ]
  %131 = phi ptr [ %52, %66 ], [ %68, %82 ], [ %68, %111 ], [ %68, %122 ], [ %68, %73 ]
  %132 = add nuw nsw i32 %55, 1
  %133 = icmp eq i32 %132, %48
  br i1 %133, label %134, label %51

134:                                              ; preds = %128
  %135 = load volatile ptr, ptr %7, align 8
  %136 = icmp ne ptr %135, %7
  %137 = icmp ne i32 %129, 0
  %138 = select i1 %136, i1 true, i1 %137
  br i1 %138, label %139, label %177

139:                                              ; preds = %134
  br i1 %33, label %141, label %140

140:                                              ; preds = %139
  call void @unpin_user_pages(ptr noundef %3, i32 noundef %48) #7
  br label %164

141:                                              ; preds = %161, %139
  %142 = phi i32 [ %162, %161 ], [ 0, %139 ]
  %143 = getelementptr ptr, ptr %3, i32 %142
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.page, ptr %144, i32 0, i32 1
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149, !prof !9

149:                                              ; preds = %141
  %150 = add i32 %146, -1
  br label %153

151:                                              ; preds = %141
  %152 = ptrtoint ptr %144 to i32
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = inttoptr i32 %154 to ptr
  %156 = getelementptr inbounds %struct.page, ptr %155, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %156) #7, !srcloc !12
  %157 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %156, ptr %156, i32 1, ptr elementtype(i32) %156) #7, !srcloc !18
  %158 = extractvalue { i32, i32 } %157, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  call void @__put_page(ptr noundef %155) #7
  br label %161

161:                                              ; preds = %160, %153
  %162 = add nuw nsw i32 %142, 1
  %163 = icmp eq i32 %162, %48
  br i1 %163, label %164, label %141

164:                                              ; preds = %161, %140
  %165 = load volatile ptr, ptr %7, align 8
  %166 = icmp eq ptr %165, %7
  br i1 %166, label %177, label %167

167:                                              ; preds = %164
  %168 = call i32 @migrate_pages(ptr noundef nonnull %7, ptr noundef nonnull @alloc_migration_target, ptr noundef null, i32 noundef %40, i32 noundef 2, i32 noundef 7, ptr noundef null) #7
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %167
  %171 = load volatile ptr, ptr %7, align 8
  %172 = icmp eq ptr %171, %7
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  call void @putback_movable_pages(ptr noundef nonnull %7) #7
  br label %174

174:                                              ; preds = %173, %170
  %175 = icmp sgt i32 %168, 0
  %176 = select i1 %175, i32 -12, i32 %168
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %180

177:                                              ; preds = %167, %164, %134
  %178 = phi i32 [ %48, %134 ], [ 0, %164 ], [ 0, %167 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %41, label %180

180:                                              ; preds = %177, %174, %47
  %181 = phi i32 [ %176, %174 ], [ %178, %177 ], [ %48, %47 ]
  %182 = load i32, ptr %28, align 4
  %183 = and i32 %182, -268435457
  %184 = or i32 %183, %30
  store i32 %184, ptr %28, align 4
  br label %185

185:                                              ; preds = %180, %20
  %186 = phi i32 [ %181, %180 ], [ %25, %20 ]
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_locked(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = and i32 %2, 65536
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @get_user_pages_locked.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %5
  store i1 true, ptr @get_user_pages_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2170, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %5
  br i1 %7, label %138, label %13

13:                                               ; preds = %12
  %14 = and i32 %2, 262144
  %15 = icmp ne i32 %14, 0
  %16 = load i1, ptr @get_user_pages_locked.__already_done.2, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %13
  store i1 true, ptr @get_user_pages_locked.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2176, i32 noundef 9, ptr noundef null) #7
  br label %20

20:                                               ; preds = %19, %13
  br i1 %15, label %138, label %21

21:                                               ; preds = %20
  %22 = tail call ptr @llvm.thread.pointer() #7
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 37
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %4, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %4, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %30, label %29, !prof !9

29:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1354, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

30:                                               ; preds = %26, %21
  %31 = icmp eq ptr %3, null
  %32 = select i1 %31, i32 2, i32 6
  %33 = or i32 %32, %2
  %34 = tail call fastcc i32 @__get_user_pages(ptr noundef %24, i32 noundef %0, i32 noundef %1, i32 noundef %33, ptr noundef %3, ptr noundef null, ptr noundef %4) #7
  br i1 %25, label %138, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.anon.7, ptr %24, i32 0, i32 15
  %37 = or i32 %33, 2048
  %38 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 98, i32 1
  br label %39

39:                                               ; preds = %121, %35
  %40 = phi i32 [ %34, %35 ], [ %126, %121 ]
  %41 = phi i1 [ false, %35 ], [ true, %121 ]
  %42 = phi i32 [ 0, %35 ], [ %119, %121 ]
  %43 = phi i32 [ %0, %35 ], [ %125, %121 ]
  %44 = phi ptr [ %3, %35 ], [ %124, %121 ]
  %45 = phi i32 [ %1, %35 ], [ %118, %121 ]
  %46 = load i32, ptr %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = icmp slt i32 %40, 0
  br i1 %49, label %50, label %51, !prof !10

50:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

51:                                               ; preds = %48
  %52 = icmp ugt i32 %45, %40
  br i1 %52, label %54, label %53, !prof !9

53:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

54:                                               ; preds = %51, %39
  %55 = icmp sgt i32 %40, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = sub i32 %45, %40
  %58 = add i32 %42, %40
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %127, label %60

60:                                               ; preds = %56, %54
  %61 = phi i32 [ %57, %56 ], [ %45, %54 ]
  %62 = phi i32 [ %58, %56 ], [ %42, %54 ]
  br i1 %47, label %66, label %63

63:                                               ; preds = %60
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 %40, i32 %62
  br i1 %41, label %132, label %138

66:                                               ; preds = %60
  %67 = icmp eq ptr %44, null
  %68 = getelementptr ptr, ptr %44, i32 %40
  %69 = select i1 %67, ptr null, ptr %68, !prof !10
  %70 = shl i32 %40, 12
  %71 = add i32 %43, %70
  br label %72

72:                                               ; preds = %106, %66
  %73 = load volatile i32, ptr %22, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %38, align 4
  %78 = and i32 %77, 256
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = icmp eq i32 %62, 0
  %82 = select i1 %81, i32 -4, i32 %62
  br label %138

83:                                               ; preds = %76, %72
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %24, i1 noundef zeroext false) #7
  br label %87

87:                                               ; preds = %86, %83
  %88 = tail call i32 @down_read_killable(ptr noundef %36) #7
  %89 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = icmp eq i32 %88, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %24, i1 noundef zeroext false, i1 noundef zeroext %92) #7
  br label %93

93:                                               ; preds = %91, %87
  %94 = icmp eq i32 %88, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %93
  %96 = icmp sgt i32 %88, 0
  br i1 %96, label %97, label %98, !prof !10

97:                                               ; preds = %95
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

98:                                               ; preds = %95
  %99 = icmp eq i32 %62, 0
  %100 = select i1 %99, i32 %88, i32 %62
  %101 = load i32, ptr %4, align 4
  br label %128

102:                                              ; preds = %93
  store i32 1, ptr %4, align 4
  %103 = tail call fastcc i32 @__get_user_pages(ptr noundef %24, i32 noundef %71, i32 noundef 1, i32 noundef %37, ptr noundef %69, ptr noundef null, ptr noundef nonnull %4) #7
  %104 = load i32, ptr %4, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = icmp eq i32 %103, 0
  br i1 %107, label %72, label %108, !prof !9

108:                                              ; preds = %106
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

109:                                              ; preds = %102
  %110 = icmp eq i32 %103, 1
  br i1 %110, label %117, label %111

111:                                              ; preds = %109
  %112 = icmp sgt i32 %103, 1
  br i1 %112, label %113, label %114, !prof !10

113:                                              ; preds = %111
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

114:                                              ; preds = %111
  %115 = icmp eq i32 %62, 0
  %116 = select i1 %115, i32 %103, i32 %62
  br label %132

117:                                              ; preds = %109
  %118 = add i32 %61, -1
  %119 = add i32 %62, 1
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %117
  %122 = icmp eq ptr %69, null
  %123 = getelementptr ptr, ptr %69, i32 1
  %124 = select i1 %122, ptr null, ptr %123, !prof !10
  %125 = add i32 %71, 4096
  %126 = tail call fastcc i32 @__get_user_pages(ptr noundef %24, i32 noundef %125, i32 noundef %118, i32 noundef %33, ptr noundef %124, ptr noundef null, ptr noundef nonnull %4) #7
  br label %39

127:                                              ; preds = %56
  br i1 %41, label %128, label %138

128:                                              ; preds = %127, %98
  %129 = phi i32 [ %46, %127 ], [ %101, %98 ]
  %130 = phi i32 [ %58, %127 ], [ %100, %98 ]
  %131 = icmp eq i32 %129, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %128, %117, %114, %63
  %133 = phi i32 [ %130, %128 ], [ %116, %114 ], [ %65, %63 ], [ %119, %117 ]
  %134 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  tail call void @__mmap_lock_do_trace_released(ptr noundef %24, i1 noundef zeroext false) #7
  br label %137

137:                                              ; preds = %136, %132
  tail call void @up_read(ptr noundef %36) #7
  store i32 0, ptr %4, align 4
  br label %138

138:                                              ; preds = %137, %128, %127, %80, %63, %30, %20, %12
  %139 = phi i32 [ -22, %12 ], [ -22, %20 ], [ %133, %137 ], [ %130, %128 ], [ %58, %127 ], [ %65, %63 ], [ %34, %30 ], [ %82, %80 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_unlocked(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = tail call ptr @llvm.thread.pointer() #7
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 37
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 1, ptr %5, align 4
  %9 = and i32 %3, 65536
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @get_user_pages_unlocked.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %4
  store i1 true, ptr @get_user_pages_unlocked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2213, i32 noundef 9, ptr noundef null) #7
  br label %15

15:                                               ; preds = %14, %4
  br i1 %10, label %150, label %16

16:                                               ; preds = %15
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %8, i1 noundef zeroext false) #7
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 15
  tail call void @down_read(ptr noundef %21) #7
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %25

25:                                               ; preds = %24, %20
  %26 = or i32 %3, 2
  %27 = and i32 %3, 262144
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 43
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 268435456
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @_set_bit(i32 noundef 28, ptr noundef %30) #7
  br label %35

35:                                               ; preds = %34, %29, %25
  %36 = icmp eq ptr %2, null
  %37 = or i32 %3, 6
  %38 = select i1 %28, i32 %37, i32 %26
  %39 = select i1 %36, i32 %26, i32 %38
  %40 = call fastcc i32 @__get_user_pages(ptr noundef %8, i32 noundef %0, i32 noundef %1, i32 noundef %39, ptr noundef %2, ptr noundef null, ptr noundef nonnull %5) #7
  %41 = or i32 %39, 2048
  %42 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 98, i32 1
  br label %43

43:                                               ; preds = %125, %35
  %44 = phi i32 [ %40, %35 ], [ %130, %125 ]
  %45 = phi i1 [ false, %35 ], [ true, %125 ]
  %46 = phi i32 [ 0, %35 ], [ %123, %125 ]
  %47 = phi i32 [ %0, %35 ], [ %129, %125 ]
  %48 = phi ptr [ %2, %35 ], [ %128, %125 ]
  %49 = phi i32 [ %1, %35 ], [ %122, %125 ]
  %50 = load i32, ptr %5, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = icmp slt i32 %44, 0
  br i1 %53, label %54, label %55, !prof !10

54:                                               ; preds = %52
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

55:                                               ; preds = %52
  %56 = icmp ugt i32 %49, %44
  br i1 %56, label %58, label %57, !prof !9

57:                                               ; preds = %55
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

58:                                               ; preds = %55, %43
  %59 = icmp sgt i32 %44, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = sub i32 %49, %44
  %62 = add i32 %46, %44
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %131, label %64

64:                                               ; preds = %60, %58
  %65 = phi i32 [ %61, %60 ], [ %49, %58 ]
  %66 = phi i32 [ %62, %60 ], [ %46, %58 ]
  br i1 %51, label %70, label %67

67:                                               ; preds = %64
  %68 = icmp eq i32 %66, 0
  %69 = select i1 %68, i32 %44, i32 %66
  br i1 %45, label %136, label %144

70:                                               ; preds = %64
  %71 = icmp eq ptr %48, null
  %72 = getelementptr ptr, ptr %48, i32 %44
  %73 = select i1 %71, ptr null, ptr %72, !prof !10
  %74 = shl i32 %44, 12
  %75 = add i32 %47, %74
  br label %76

76:                                               ; preds = %110, %70
  %77 = load volatile i32, ptr %6, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %42, align 4
  %82 = and i32 %81, 256
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = icmp eq i32 %66, 0
  %86 = select i1 %85, i32 -4, i32 %66
  br label %150

87:                                               ; preds = %80, %76
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %8, i1 noundef zeroext false) #7
  br label %91

91:                                               ; preds = %90, %87
  %92 = call i32 @down_read_killable(ptr noundef %21) #7
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = icmp eq i32 %92, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext %96) #7
  br label %97

97:                                               ; preds = %95, %91
  %98 = icmp eq i32 %92, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %97
  %100 = icmp sgt i32 %92, 0
  br i1 %100, label %101, label %102, !prof !10

101:                                              ; preds = %99
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

102:                                              ; preds = %99
  %103 = icmp eq i32 %66, 0
  %104 = select i1 %103, i32 %92, i32 %66
  %105 = load i32, ptr %5, align 4
  br label %132

106:                                              ; preds = %97
  store i32 1, ptr %5, align 4
  %107 = call fastcc i32 @__get_user_pages(ptr noundef %8, i32 noundef %75, i32 noundef 1, i32 noundef %41, ptr noundef %73, ptr noundef null, ptr noundef nonnull %5) #7
  %108 = load i32, ptr %5, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = icmp eq i32 %107, 0
  br i1 %111, label %76, label %112, !prof !9

112:                                              ; preds = %110
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

113:                                              ; preds = %106
  %114 = icmp eq i32 %107, 1
  br i1 %114, label %121, label %115

115:                                              ; preds = %113
  %116 = icmp sgt i32 %107, 1
  br i1 %116, label %117, label %118, !prof !10

117:                                              ; preds = %115
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

118:                                              ; preds = %115
  %119 = icmp eq i32 %66, 0
  %120 = select i1 %119, i32 %107, i32 %66
  br label %136

121:                                              ; preds = %113
  %122 = add i32 %65, -1
  %123 = add i32 %66, 1
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %121
  %126 = icmp eq ptr %73, null
  %127 = getelementptr ptr, ptr %73, i32 1
  %128 = select i1 %126, ptr null, ptr %127, !prof !10
  %129 = add i32 %75, 4096
  %130 = call fastcc i32 @__get_user_pages(ptr noundef %8, i32 noundef %129, i32 noundef %122, i32 noundef %39, ptr noundef %128, ptr noundef null, ptr noundef nonnull %5) #7
  br label %43

131:                                              ; preds = %60
  br i1 %45, label %132, label %142

132:                                              ; preds = %131, %102
  %133 = phi i32 [ %50, %131 ], [ %105, %102 ]
  %134 = phi i32 [ %62, %131 ], [ %104, %102 ]
  %135 = icmp eq i32 %133, 0
  br i1 %135, label %150, label %136

136:                                              ; preds = %132, %121, %118, %67
  %137 = phi i32 [ %134, %132 ], [ %120, %118 ], [ %69, %67 ], [ %123, %121 ]
  %138 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  call void @__mmap_lock_do_trace_released(ptr noundef %8, i1 noundef zeroext false) #7
  br label %141

141:                                              ; preds = %140, %136
  call void @up_read(ptr noundef %21) #7
  br label %150

142:                                              ; preds = %131
  %143 = icmp eq i32 %50, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %142, %67
  %145 = phi i32 [ %62, %142 ], [ %69, %67 ]
  %146 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  call void @__mmap_lock_do_trace_released(ptr noundef %8, i1 noundef zeroext false) #7
  br label %149

149:                                              ; preds = %148, %144
  call void @up_read(ptr noundef %21) #7
  br label %150

150:                                              ; preds = %149, %142, %141, %132, %84, %15
  %151 = phi i32 [ -22, %15 ], [ %145, %149 ], [ %62, %142 ], [ %137, %141 ], [ %134, %132 ], [ %86, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_fast_only(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = or i32 %2, 524292
  %6 = tail call fastcc i32 @internal_get_user_pages_fast(i32 noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef %3)
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @internal_get_user_pages_fast(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = and i32 %2, -852118
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @internal_get_user_pages_fast.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %4
  store i1 true, ptr @internal_get_user_pages_fast.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2858, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %4
  br i1 %6, label %65, label %12

12:                                               ; preds = %11
  %13 = and i32 %2, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #7
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 37
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.anon.7, ptr %18, i32 0, i32 43
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 268435456
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @_set_bit(i32 noundef 28, ptr noundef %19) #7
  br label %24

24:                                               ; preds = %23, %15, %12
  %25 = and i32 %2, 524288
  %26 = and i32 %0, -4096
  %27 = shl i32 %1, 12
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %26, i32 %27)
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %65, label %30

30:                                               ; preds = %24
  %31 = inttoptr i32 %26 to ptr
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 %27, i32 -1090519040) #8, !srcloc !54
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %65, !prof !9

35:                                               ; preds = %30
  %36 = icmp ne i32 %1, 0
  %37 = icmp eq i32 %25, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = and i32 %2, 65536
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %39
  %43 = tail call ptr @llvm.thread.pointer() #7
  %44 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 37
  %45 = load ptr, ptr %44, align 4
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %45, i1 noundef zeroext false) #7
  br label %49

49:                                               ; preds = %48, %42
  %50 = getelementptr inbounds %struct.anon.7, ptr %45, i32 0, i32 15
  tail call void @down_read(ptr noundef %50) #7
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %45, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %54

54:                                               ; preds = %53, %49
  %55 = load ptr, ptr %44, align 4
  %56 = tail call fastcc i32 @__gup_longterm_locked(ptr noundef %55, i32 noundef %26, i32 noundef %1, ptr noundef %3, ptr noundef null, i32 noundef %2) #7
  %57 = load ptr, ptr %44, align 4
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call void @__mmap_lock_do_trace_released(ptr noundef %57, i1 noundef zeroext false) #7
  br label %61

61:                                               ; preds = %60, %54
  %62 = getelementptr inbounds %struct.anon.7, ptr %57, i32 0, i32 15
  tail call void @up_read(ptr noundef %62) #7
  br label %65

63:                                               ; preds = %39
  %64 = tail call i32 @get_user_pages_unlocked(i32 noundef %26, i32 noundef %1, ptr noundef %3, i32 noundef %2) #7
  br label %65

65:                                               ; preds = %63, %61, %35, %30, %24, %11
  %66 = phi i32 [ -22, %11 ], [ 0, %24 ], [ -14, %30 ], [ 0, %35 ], [ %56, %61 ], [ %64, %63 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_fast(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = and i32 %2, 262144
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @is_valid_gup_flags.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %4
  store i1 true, ptr @is_valid_gup_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1964, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %4
  br i1 %6, label %23, label %12

12:                                               ; preds = %11
  %13 = and i32 %2, 65536
  %14 = icmp ne i32 %13, 0
  %15 = load i1, ptr @is_valid_gup_flags.__already_done.5, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !10

18:                                               ; preds = %12
  store i1 true, ptr @is_valid_gup_flags.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1971, i32 noundef 9, ptr noundef null) #7
  br label %19

19:                                               ; preds = %18, %12
  br i1 %14, label %23, label %20

20:                                               ; preds = %19
  %21 = or i32 %2, 4
  %22 = tail call fastcc i32 @internal_get_user_pages_fast(i32 noundef %0, i32 noundef %1, i32 noundef %21, ptr noundef %3)
  br label %23

23:                                               ; preds = %20, %19, %11
  %24 = phi i32 [ %22, %20 ], [ -22, %19 ], [ -22, %11 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_fast(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = and i32 %2, 4
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @pin_user_pages_fast.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %4
  store i1 true, ptr @pin_user_pages_fast.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2997, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %4
  br i1 %6, label %15, label %12

12:                                               ; preds = %11
  %13 = or i32 %2, 262144
  %14 = tail call fastcc i32 @internal_get_user_pages_fast(i32 noundef %0, i32 noundef %1, i32 noundef %13, ptr noundef %3)
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ %14, %12 ], [ -22, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_fast_only(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = and i32 %2, 4
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @pin_user_pages_fast_only.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %4
  store i1 true, ptr @pin_user_pages_fast_only.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3020, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %4
  br i1 %6, label %16, label %12

12:                                               ; preds = %11
  %13 = or i32 %2, 786432
  %14 = tail call fastcc i32 @internal_get_user_pages_fast(i32 noundef %0, i32 noundef %1, i32 noundef %13, ptr noundef %3)
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %12, %11
  %17 = phi i32 [ %15, %12 ], [ 0, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_remote(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = and i32 %3, 4
  %9 = icmp ne i32 %8, 0
  %10 = load i1, ptr @pin_user_pages_remote.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !10

13:                                               ; preds = %7
  store i1 true, ptr @pin_user_pages_remote.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3070, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %7
  br i1 %9, label %18, label %15

15:                                               ; preds = %14
  %16 = or i32 %3, 262144
  %17 = tail call fastcc i32 @__get_user_pages_remote(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %16, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ %17, %15 ], [ -22, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = and i32 %2, 4
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @pin_user_pages.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %5
  store i1 true, ptr @pin_user_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3102, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %5
  br i1 %7, label %19, label %13

13:                                               ; preds = %12
  %14 = or i32 %2, 262144
  %15 = tail call ptr @llvm.thread.pointer() #7
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 37
  %17 = load ptr, ptr %16, align 4
  %18 = tail call fastcc i32 @__gup_longterm_locked(ptr noundef %17, i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %14)
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %18, %13 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_unlocked(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %3, 4
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @pin_user_pages_unlocked.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %4
  store i1 true, ptr @pin_user_pages_unlocked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3120, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %4
  br i1 %6, label %15, label %12

12:                                               ; preds = %11
  %13 = or i32 %3, 262144
  %14 = tail call i32 @get_user_pages_unlocked(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %13)
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ %14, %12 ], [ -22, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_locked(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = and i32 %2, 65536
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @pin_user_pages_locked.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %5
  store i1 true, ptr @pin_user_pages_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3143, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %5
  br i1 %7, label %142, label %13

13:                                               ; preds = %12
  %14 = and i32 %2, 4
  %15 = icmp ne i32 %14, 0
  %16 = load i1, ptr @pin_user_pages_locked.__already_done.3, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %13
  store i1 true, ptr @pin_user_pages_locked.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3147, i32 noundef 9, ptr noundef null) #7
  br label %20

20:                                               ; preds = %19, %13
  br i1 %15, label %142, label %21

21:                                               ; preds = %20
  %22 = tail call ptr @llvm.thread.pointer() #7
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 37
  %24 = load ptr, ptr %23, align 4
  %25 = or i32 %2, 262146
  %26 = icmp eq ptr %4, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %4, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %31, label %30, !prof !9

30:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1354, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

31:                                               ; preds = %27, %21
  %32 = getelementptr inbounds %struct.anon.7, ptr %24, i32 0, i32 43
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 268435456
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @_set_bit(i32 noundef 28, ptr noundef %32) #7
  br label %37

37:                                               ; preds = %36, %31
  %38 = tail call fastcc i32 @__get_user_pages(ptr noundef %24, i32 noundef %0, i32 noundef %1, i32 noundef %25, ptr noundef %3, ptr noundef null, ptr noundef %4) #7
  br i1 %26, label %142, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.anon.7, ptr %24, i32 0, i32 15
  %41 = or i32 %2, 264194
  %42 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 98, i32 1
  br label %43

43:                                               ; preds = %125, %39
  %44 = phi i32 [ %38, %39 ], [ %130, %125 ]
  %45 = phi i1 [ false, %39 ], [ true, %125 ]
  %46 = phi i32 [ 0, %39 ], [ %123, %125 ]
  %47 = phi i32 [ %0, %39 ], [ %129, %125 ]
  %48 = phi ptr [ %3, %39 ], [ %128, %125 ]
  %49 = phi i32 [ %1, %39 ], [ %122, %125 ]
  %50 = load i32, ptr %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = icmp slt i32 %44, 0
  br i1 %53, label %54, label %55, !prof !10

54:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

55:                                               ; preds = %52
  %56 = icmp ugt i32 %49, %44
  br i1 %56, label %58, label %57, !prof !9

57:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

58:                                               ; preds = %55, %43
  %59 = icmp sgt i32 %44, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = sub i32 %49, %44
  %62 = add i32 %46, %44
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %131, label %64

64:                                               ; preds = %60, %58
  %65 = phi i32 [ %61, %60 ], [ %49, %58 ]
  %66 = phi i32 [ %62, %60 ], [ %46, %58 ]
  br i1 %51, label %70, label %67

67:                                               ; preds = %64
  %68 = icmp eq i32 %66, 0
  %69 = select i1 %68, i32 %44, i32 %66
  br i1 %45, label %136, label %142

70:                                               ; preds = %64
  %71 = icmp eq ptr %48, null
  %72 = getelementptr ptr, ptr %48, i32 %44
  %73 = select i1 %71, ptr null, ptr %72, !prof !10
  %74 = shl i32 %44, 12
  %75 = add i32 %47, %74
  br label %76

76:                                               ; preds = %110, %70
  %77 = load volatile i32, ptr %22, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %42, align 4
  %82 = and i32 %81, 256
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = icmp eq i32 %66, 0
  %86 = select i1 %85, i32 -4, i32 %66
  br label %142

87:                                               ; preds = %80, %76
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %24, i1 noundef zeroext false) #7
  br label %91

91:                                               ; preds = %90, %87
  %92 = tail call i32 @down_read_killable(ptr noundef %40) #7
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = icmp eq i32 %92, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %24, i1 noundef zeroext false, i1 noundef zeroext %96) #7
  br label %97

97:                                               ; preds = %95, %91
  %98 = icmp eq i32 %92, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %97
  %100 = icmp sgt i32 %92, 0
  br i1 %100, label %101, label %102, !prof !10

101:                                              ; preds = %99
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

102:                                              ; preds = %99
  %103 = icmp eq i32 %66, 0
  %104 = select i1 %103, i32 %92, i32 %66
  %105 = load i32, ptr %4, align 4
  br label %132

106:                                              ; preds = %97
  store i32 1, ptr %4, align 4
  %107 = tail call fastcc i32 @__get_user_pages(ptr noundef %24, i32 noundef %75, i32 noundef 1, i32 noundef %41, ptr noundef %73, ptr noundef null, ptr noundef nonnull %4) #7
  %108 = load i32, ptr %4, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = icmp eq i32 %107, 0
  br i1 %111, label %76, label %112, !prof !9

112:                                              ; preds = %110
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

113:                                              ; preds = %106
  %114 = icmp eq i32 %107, 1
  br i1 %114, label %121, label %115

115:                                              ; preds = %113
  %116 = icmp sgt i32 %107, 1
  br i1 %116, label %117, label %118, !prof !10

117:                                              ; preds = %115
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

118:                                              ; preds = %115
  %119 = icmp eq i32 %66, 0
  %120 = select i1 %119, i32 %107, i32 %66
  br label %136

121:                                              ; preds = %113
  %122 = add i32 %65, -1
  %123 = add i32 %66, 1
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %121
  %126 = icmp eq ptr %73, null
  %127 = getelementptr ptr, ptr %73, i32 1
  %128 = select i1 %126, ptr null, ptr %127, !prof !10
  %129 = add i32 %75, 4096
  %130 = tail call fastcc i32 @__get_user_pages(ptr noundef %24, i32 noundef %129, i32 noundef %122, i32 noundef %25, ptr noundef %128, ptr noundef null, ptr noundef nonnull %4) #7
  br label %43

131:                                              ; preds = %60
  br i1 %45, label %132, label %142

132:                                              ; preds = %131, %102
  %133 = phi i32 [ %50, %131 ], [ %105, %102 ]
  %134 = phi i32 [ %62, %131 ], [ %104, %102 ]
  %135 = icmp eq i32 %133, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %132, %121, %118, %67
  %137 = phi i32 [ %134, %132 ], [ %120, %118 ], [ %69, %67 ], [ %123, %121 ]
  %138 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  tail call void @__mmap_lock_do_trace_released(ptr noundef %24, i1 noundef zeroext false) #7
  br label %141

141:                                              ; preds = %140, %136
  tail call void @up_read(ptr noundef %40) #7
  store i32 0, ptr %4, align 4
  br label %142

142:                                              ; preds = %141, %132, %131, %84, %67, %37, %20, %12
  %143 = phi i32 [ -22, %12 ], [ -22, %20 ], [ %137, %141 ], [ %134, %132 ], [ %62, %131 ], [ %69, %67 ], [ %38, %37 ], [ %86, %84 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page_refs(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %5, ptr elementtype(i32) %6) #7, !srcloc !16
  br label %8

8:                                                ; preds = %4, %2
  %9 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !9

13:                                               ; preds = %8
  %14 = add i32 %10, -1
  br label %17

15:                                               ; preds = %8
  %16 = ptrtoint ptr %0 to i32
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #7, !srcloc !12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #7, !srcloc !18
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void @__put_page(ptr noundef %19) #7
  br label %25

25:                                               ; preds = %24, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migration_entry_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlock_vma_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_gate_area(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__flush_anon_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_lru_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_migration_target(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_movable_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148001930}
!12 = !{i64 500240, i64 2147990211, i64 2147990237, i64 2147990284, i64 2147990306, i64 2147990334, i64 2147990354}
!13 = !{i64 486809, i64 486834, i64 486856, i64 486872, i64 486884, i64 486904, i64 486928, i64 486944, i64 486956}
!14 = !{i64 2148002056}
!15 = !{i64 2148002423, i64 2148002449, i64 2148002478, i64 2148002512, i64 2148002543, i64 2148002566}
!16 = !{i64 2148004780, i64 2148004806, i64 2148004835, i64 2148004869, i64 2148004900, i64 2148004923}
!17 = !{i64 2148103078}
!18 = !{i64 2148005464, i64 2148005496, i64 2148005525, i64 2148005559, i64 2148005590, i64 2148005613}
!19 = !{i64 2148103281}
!20 = !{i64 2149496138}
!21 = !{i64 395479, i64 395540}
!22 = !{i64 414179}
!23 = !{i64 398496}
!24 = !{i64 2149496355}
!25 = !{i64 2152500825}
!26 = !{i64 2151594035}
!27 = !{i64 2148911034}
!28 = !{i64 2148906858}
!29 = !{i64 2148906933, i64 2148906960, i64 2148907007, i64 2148907029, i64 2148907057, i64 2148907077}
!30 = !{i64 2148934037}
!31 = !{i64 2151594242}
!32 = !{i64 2152503450}
!33 = !{i64 2148010885, i64 2148010917, i64 2148010946, i64 2148010980, i64 2148011011, i64 2148011034}
!34 = !{i64 2148112201}
!35 = !{i64 2153690657, i64 2153691131, i64 2153690694, i64 2153690750, i64 2153690784, i64 2153690808, i64 2153690849, i64 2153690870, i64 2153690898, i64 2153690932}
!36 = !{i64 2153687070, i64 2153687543, i64 2153687107, i64 2153687163, i64 2153687197, i64 2153687221, i64 2153687262, i64 2153687283, i64 2153687311, i64 2153687345}
!37 = !{i64 2153704318, i64 2153704343}
!38 = !{i64 4087641}
!39 = !{i64 4087838}
!40 = !{i64 2151573117}
!41 = !{i64 2153720102, i64 2153720412, i64 2153720726, i64 2153721040}
!42 = !{i64 2153741744, i64 2153742054, i64 2153742368, i64 2153742682}
!43 = !{i64 2153754801, i64 2153754826}
!44 = !{i64 2153778779, i64 2153779089, i64 2153779403, i64 2153779717}
!45 = !{i64 2153811038, i64 2153811348, i64 2153811662, i64 2153811976}
!46 = !{!"auto-init"}
!47 = !{i64 2153695068, i64 2153695542, i64 2153695105, i64 2153695161, i64 2153695195, i64 2153695219, i64 2153695260, i64 2153695281, i64 2153695309, i64 2153695343}
!48 = !{i64 2153696060, i64 2153696534, i64 2153696097, i64 2153696153, i64 2153696187, i64 2153696211, i64 2153696252, i64 2153696273, i64 2153696301, i64 2153696335}
!49 = !{i64 2153697088, i64 2153697562, i64 2153697125, i64 2153697181, i64 2153697215, i64 2153697239, i64 2153697280, i64 2153697301, i64 2153697329, i64 2153697363}
!50 = !{i64 2153698084, i64 2153698558, i64 2153698121, i64 2153698177, i64 2153698211, i64 2153698235, i64 2153698276, i64 2153698297, i64 2153698325, i64 2153698359}
!51 = !{i64 2153699060, i64 2153699534, i64 2153699097, i64 2153699153, i64 2153699187, i64 2153699211, i64 2153699252, i64 2153699273, i64 2153699301, i64 2153699335}
!52 = !{i64 2153693085, i64 2153693559, i64 2153693122, i64 2153693178, i64 2153693212, i64 2153693236, i64 2153693277, i64 2153693298, i64 2153693326, i64 2153693360}
!53 = !{i64 2153694071, i64 2153694545, i64 2153694108, i64 2153694164, i64 2153694198, i64 2153694222, i64 2153694263, i64 2153694284, i64 2153694312, i64 2153694346}
!54 = !{i64 2153839772, i64 2153839797}
