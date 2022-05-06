; ModuleID = '/llk/IR/mm/page-writeback.c_pt.bc'
source_filename = "../mm/page-writeback.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dirty_writeback_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22dirty_writeback_interval\22\09\09\09\09\09"
module asm "__kstrtabns_dirty_writeback_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_laptop_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22laptop_mode\22\09\09\09\09\09"
module asm "__kstrtabns_laptop_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wb_writeout_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22wb_writeout_inc\22\09\09\09\09\09"
module asm "__kstrtabns_wb_writeout_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdi_set_max_ratio:\09\09\09\09\09"
module asm "\09.asciz \09\22bdi_set_max_ratio\22\09\09\09\09\09"
module asm "__kstrtabns_bdi_set_max_ratio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_balance_dirty_pages_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22balance_dirty_pages_ratelimited\22\09\09\09\09\09"
module asm "__kstrtabns_balance_dirty_pages_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tag_pages_for_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22tag_pages_for_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_tag_pages_for_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_write_cache_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22write_cache_pages\22\09\09\09\09\09"
module asm "__kstrtabns_write_cache_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_writepages\22\09\09\09\09\09"
module asm "__kstrtabns_generic_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_write_one:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_write_one\22\09\09\09\09\09"
module asm "__kstrtabns_folio_write_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___set_page_dirty_no_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22__set_page_dirty_no_writeback\22\09\09\09\09\09"
module asm "__kstrtabns___set_page_dirty_no_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_dirty_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_dirty_folio\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_dirty_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_account_redirty:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_account_redirty\22\09\09\09\09\09"
module asm "__kstrtabns_folio_account_redirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_redirty_for_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_redirty_for_writepage\22\09\09\09\09\09"
module asm "__kstrtabns_folio_redirty_for_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mark_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mark_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mark_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_page_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22set_page_dirty_lock\22\09\09\09\09\09"
module asm "__kstrtabns_set_page_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___folio_cancel_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22__folio_cancel_dirty\22\09\09\09\09\09"
module asm "__kstrtabns___folio_cancel_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_clear_dirty_for_io:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_clear_dirty_for_io\22\09\09\09\09\09"
module asm "__kstrtabns_folio_clear_dirty_for_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___folio_start_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22__folio_start_writeback\22\09\09\09\09\09"
module asm "__kstrtabns___folio_start_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_writeback_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_writeback_killable\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_writeback_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_stable:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_stable\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_stable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i32, i32, i32 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.seqcount = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.dirty_throttle_control = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.99, [64 x ptr], %union.anon.100 }
%union.anon.99 = type { %struct.list_head }
%union.anon.100 = type { [3 x [2 x i32]] }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.page = type { i32, %union.anon.1, %union.anon.68, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.96, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%union.anon.96 = type { ptr }
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
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }

@dirty_background_ratio = dso_local local_unnamed_addr global i32 10, align 4
@vm_dirty_ratio = dso_local local_unnamed_addr global i32 20, align 4
@dirty_writeback_interval = dso_local global i32 500, align 4
@__kstrtab_dirty_writeback_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_dirty_writeback_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_dirty_writeback_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dirty_writeback_interval to i32), ptr @__kstrtab_dirty_writeback_interval, ptr @__kstrtabns_dirty_writeback_interval }, section "___ksymtab_gpl+dirty_writeback_interval", align 4
@dirty_expire_interval = dso_local local_unnamed_addr global i32 3000, align 4
@laptop_mode = dso_local global i32 0, align 4
@__kstrtab_laptop_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_laptop_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_laptop_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @laptop_mode to i32), ptr @__kstrtab_laptop_mode, ptr @__kstrtabns_laptop_mode }, section "___ksymtab+laptop_mode", align 4
@dirty_background_bytes = dso_local local_unnamed_addr global i32 0, align 4
@vm_dirty_bytes = dso_local local_unnamed_addr global i32 0, align 4
@__kstrtab_wb_writeout_inc = external dso_local constant [0 x i8], align 1
@__kstrtabns_wb_writeout_inc = external dso_local constant [0 x i8], align 1
@__ksymtab_wb_writeout_inc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wb_writeout_inc to i32), ptr @__kstrtab_wb_writeout_inc, ptr @__kstrtabns_wb_writeout_inc }, section "___ksymtab_gpl+wb_writeout_inc", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@bdi_lock = external dso_local global %struct.spinlock, align 4
@bdi_min_ratio = internal unnamed_addr global i32 0, align 4
@__kstrtab_bdi_set_max_ratio = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdi_set_max_ratio = external dso_local constant [0 x i8], align 1
@__ksymtab_bdi_set_max_ratio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdi_set_max_ratio to i32), ptr @__kstrtab_bdi_set_max_ratio, ptr @__kstrtabns_bdi_set_max_ratio }, section "___ksymtab+bdi_set_max_ratio", align 4
@dirty_throttle_leaks = dso_local global i32 0, section ".data..percpu", align 4
@bdp_ratelimits = internal global i32 0, section ".data..percpu", align 4
@ratelimit_pages = internal unnamed_addr global i32 32, align 4
@__kstrtab_balance_dirty_pages_ratelimited = external dso_local constant [0 x i8], align 1
@__kstrtabns_balance_dirty_pages_ratelimited = external dso_local constant [0 x i8], align 1
@__ksymtab_balance_dirty_pages_ratelimited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @balance_dirty_pages_ratelimited to i32), ptr @__kstrtab_balance_dirty_pages_ratelimited, ptr @__kstrtabns_balance_dirty_pages_ratelimited }, section "___ksymtab+balance_dirty_pages_ratelimited", align 4
@bdi_list = external dso_local global %struct.list_head, align 4
@global_wb_domain = dso_local global %struct.wb_domain zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"mm/writeback:online\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mm/writeback:dead\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"mm/page-writeback.c\00", align 1
@__kstrtab_tag_pages_for_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_tag_pages_for_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_tag_pages_for_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tag_pages_for_writeback to i32), ptr @__kstrtab_tag_pages_for_writeback, ptr @__kstrtabns_tag_pages_for_writeback }, section "___ksymtab+tag_pages_for_writeback", align 4
@__kstrtab_write_cache_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_write_cache_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_write_cache_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @write_cache_pages to i32), ptr @__kstrtab_write_cache_pages, ptr @__kstrtabns_write_cache_pages }, section "___ksymtab+write_cache_pages", align 4
@__kstrtab_generic_writepages = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_writepages = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_writepages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_writepages to i32), ptr @__kstrtab_generic_writepages, ptr @__kstrtabns_generic_writepages }, section "___ksymtab+generic_writepages", align 4
@__kstrtab_folio_write_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_write_one = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_write_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_write_one to i32), ptr @__kstrtab_folio_write_one, ptr @__kstrtabns_folio_write_one }, section "___ksymtab+folio_write_one", align 4
@__kstrtab___set_page_dirty_no_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns___set_page_dirty_no_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab___set_page_dirty_no_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__set_page_dirty_no_writeback to i32), ptr @__kstrtab___set_page_dirty_no_writeback, ptr @__kstrtabns___set_page_dirty_no_writeback }, section "___ksymtab+__set_page_dirty_no_writeback", align 4
@__folio_mark_dirty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_filemap_dirty_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_dirty_folio = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_dirty_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_dirty_folio to i32), ptr @__kstrtab_filemap_dirty_folio, ptr @__kstrtabns_filemap_dirty_folio }, section "___ksymtab+filemap_dirty_folio", align 4
@__kstrtab_folio_account_redirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_account_redirty = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_account_redirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_account_redirty to i32), ptr @__kstrtab_folio_account_redirty, ptr @__kstrtabns_folio_account_redirty }, section "___ksymtab+folio_account_redirty", align 4
@__kstrtab_folio_redirty_for_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_redirty_for_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_redirty_for_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_redirty_for_writepage to i32), ptr @__kstrtab_folio_redirty_for_writepage, ptr @__kstrtabns_folio_redirty_for_writepage }, section "___ksymtab+folio_redirty_for_writepage", align 4
@__kstrtab_folio_mark_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mark_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mark_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mark_dirty to i32), ptr @__kstrtab_folio_mark_dirty, ptr @__kstrtabns_folio_mark_dirty }, section "___ksymtab+folio_mark_dirty", align 4
@__kstrtab_set_page_dirty_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_page_dirty_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_set_page_dirty_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_page_dirty_lock to i32), ptr @__kstrtab_set_page_dirty_lock, ptr @__kstrtabns_set_page_dirty_lock }, section "___ksymtab+set_page_dirty_lock", align 4
@__kstrtab___folio_cancel_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns___folio_cancel_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab___folio_cancel_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__folio_cancel_dirty to i32), ptr @__kstrtab___folio_cancel_dirty, ptr @__kstrtabns___folio_cancel_dirty }, section "___ksymtab+__folio_cancel_dirty", align 4
@__kstrtab_folio_clear_dirty_for_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_clear_dirty_for_io = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_clear_dirty_for_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_clear_dirty_for_io to i32), ptr @__kstrtab_folio_clear_dirty_for_io, ptr @__kstrtabns_folio_clear_dirty_for_io }, section "___ksymtab+folio_clear_dirty_for_io", align 4
@__kstrtab___folio_start_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns___folio_start_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab___folio_start_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__folio_start_writeback to i32), ptr @__kstrtab___folio_start_writeback, ptr @__kstrtabns___folio_start_writeback }, section "___ksymtab+__folio_start_writeback", align 4
@__kstrtab_folio_wait_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_writeback to i32), ptr @__kstrtab_folio_wait_writeback, ptr @__kstrtabns_folio_wait_writeback }, section "___ksymtab_gpl+folio_wait_writeback", align 4
@__kstrtab_folio_wait_writeback_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_writeback_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_writeback_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_writeback_killable to i32), ptr @__kstrtab_folio_wait_writeback_killable, ptr @__kstrtabns_folio_wait_writeback_killable }, section "___ksymtab_gpl+folio_wait_writeback_killable", align 4
@__kstrtab_folio_wait_stable = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_stable = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_stable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_stable to i32), ptr @__kstrtab_folio_wait_stable, ptr @__kstrtabns_folio_wait_stable }, section "___ksymtab_gpl+folio_wait_stable", align 4
@vm_highmem_is_dirtyable = dso_local local_unnamed_addr global i32 0, align 4
@totalreserve_pages = external dso_local local_unnamed_addr global i32, align 4
@vm_zone_stat = external dso_local global [10 x %struct.atomic_t], align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_global_dirty_state = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@__tracepoint_bdi_dirty_ratelimit = external dso_local global %struct.tracepoint, align 4
@wb_update_write_bandwidth.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_balance_dirty_pages = external dso_local global %struct.tracepoint, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__tracepoint_wbc_writepage = external dso_local global %struct.tracepoint, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@__tracepoint_writeback_dirty_folio = external dso_local global %struct.tracepoint, align 4
@bdi_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_folio_wait_writeback = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab___folio_cancel_dirty, ptr @__ksymtab___folio_start_writeback, ptr @__ksymtab___set_page_dirty_no_writeback, ptr @__ksymtab_balance_dirty_pages_ratelimited, ptr @__ksymtab_bdi_set_max_ratio, ptr @__ksymtab_dirty_writeback_interval, ptr @__ksymtab_filemap_dirty_folio, ptr @__ksymtab_folio_account_redirty, ptr @__ksymtab_folio_clear_dirty_for_io, ptr @__ksymtab_folio_mark_dirty, ptr @__ksymtab_folio_redirty_for_writepage, ptr @__ksymtab_folio_wait_stable, ptr @__ksymtab_folio_wait_writeback, ptr @__ksymtab_folio_wait_writeback_killable, ptr @__ksymtab_folio_write_one, ptr @__ksymtab_generic_writepages, ptr @__ksymtab_laptop_mode, ptr @__ksymtab_set_page_dirty_lock, ptr @__ksymtab_tag_pages_for_writeback, ptr @__ksymtab_wb_writeout_inc, ptr @__ksymtab_write_cache_pages], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @global_dirty_limits(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dirty_throttle_control, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  %4 = load volatile i32, ptr @vm_zone_stat, align 4
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) #10
  %6 = load i32, ptr @totalreserve_pages, align 4
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %5, i32 %6) #10
  %8 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0) #10
  %10 = add nuw i32 %9, %7
  %11 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 0) #10
  %13 = add i32 %10, %12
  %14 = load i32, ptr @vm_highmem_is_dirtyable, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %2
  %17 = load i32, ptr @movable_zone, align 4
  %18 = icmp ne i32 %17, 2
  %19 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 13), align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 0), align 64
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0) #10
  %24 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 0, i32 2), align 8
  %25 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 1), align 4
  %26 = add i32 %25, %24
  %27 = tail call i32 @llvm.usub.sat.i32(i32 %23, i32 %26) #10
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 3), align 4
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0) #10
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 4), align 16
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #10
  %32 = add nuw i32 %29, %27
  %33 = add i32 %32, %31
  br label %34

34:                                               ; preds = %21, %16
  %35 = phi i32 [ %33, %21 ], [ 0, %16 ]
  %36 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 13), align 8
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %18, i1 true, i1 %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 0), align 64
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 0) #10
  %42 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 0, i32 2), align 8
  %43 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 1), align 4
  %44 = add i32 %43, %42
  %45 = tail call i32 @llvm.usub.sat.i32(i32 %41, i32 %44) #10
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 3), align 4
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0) #10
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 4), align 16
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 0) #10
  %50 = add i32 %47, %35
  %51 = add i32 %50, %45
  %52 = add i32 %51, %49
  br label %53

53:                                               ; preds = %39, %34
  %54 = phi i32 [ %52, %39 ], [ %35, %34 ]
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 0) #10
  %56 = tail call i32 @llvm.usub.sat.i32(i32 %13, i32 %55) #10
  br label %57

57:                                               ; preds = %53, %2
  %58 = phi i32 [ %13, %2 ], [ %56, %53 ]
  %59 = add i32 %58, 1
  %60 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %3)
  %61 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %0, align 4
  %63 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @domain_dirty_limits(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr @vm_dirty_bytes, align 4
  %5 = load i32, ptr @dirty_background_bytes, align 4
  %6 = load i32, ptr @vm_dirty_ratio, align 4
  %7 = shl i32 %6, 12
  %8 = udiv i32 %7, 100
  %9 = load i32, ptr @dirty_background_ratio, align 4
  %10 = shl i32 %9, 12
  %11 = udiv i32 %10, 100
  %12 = icmp eq i32 %4, 0
  %13 = add i32 %4, 4095
  %14 = mul i32 %8, %3
  %15 = select i1 %12, i32 %14, i32 %13
  %16 = lshr i32 %15, 12
  %17 = icmp eq i32 %5, 0
  %18 = add i32 %5, 4095
  %19 = mul i32 %11, %3
  %20 = select i1 %17, i32 %19, i32 %18
  %21 = lshr i32 %20, 12
  %22 = icmp ult i32 %21, %16
  %23 = lshr i32 %15, 13
  %24 = select i1 %22, i32 %21, i32 %23
  %25 = tail call ptr @llvm.thread.pointer() #10
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 14
  %27 = load i32, ptr %26, align 16
  %28 = icmp sgt i32 %27, 99
  br i1 %28, label %38, label %29

29:                                               ; preds = %1
  %30 = lshr i32 %24, 2
  %31 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %32 = lshr i32 %31, 5
  %33 = add nuw nsw i32 %30, %24
  %34 = add nuw nsw i32 %33, %32
  %35 = lshr i32 %15, 14
  %36 = add nuw nsw i32 %16, %35
  %37 = add nuw nsw i32 %36, %32
  br label %38

38:                                               ; preds = %29, %1
  %39 = phi i32 [ %37, %29 ], [ %16, %1 ]
  %40 = phi i32 [ %34, %29 ], [ %24, %1 ]
  %41 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 4
  store i32 %39, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 5
  store i32 %40, ptr %42, align 4
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_global_dirty_state, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %56 = tail call i32 @__traceiter_global_dirty_state(ptr noundef null, i32 noundef %40, i32 noundef %39) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  br label %57

57:                                               ; preds = %55, %45, %38
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @node_dirty_ok(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr %struct.zone, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.zone, ptr %0, i32 0, i32 37
  %7 = load volatile i32, ptr %6, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %11 = getelementptr %struct.zone, ptr %0, i32 1, i32 13
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.zone, ptr %0, i32 1, i32 37
  %16 = load volatile i32, ptr %15, align 4
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0) #10
  %18 = add nuw i32 %17, %10
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i32 [ %18, %14 ], [ %10, %9 ]
  %21 = getelementptr %struct.zone, ptr %0, i32 2, i32 13
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.zone, ptr %0, i32 2, i32 37
  %26 = load volatile i32, ptr %25, align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0) #10
  %28 = add i32 %27, %20
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i32 [ %28, %24 ], [ %20, %19 ]
  %31 = getelementptr %struct.zone, ptr %0, i32 3, i32 13
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.zone, ptr %0, i32 3, i32 37
  %36 = load volatile i32, ptr %35, align 4
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 0) #10
  %38 = add i32 %37, %30
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %38, %34 ], [ %30, %29 ]
  %41 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @llvm.usub.sat.i32(i32 %40, i32 %42) #10
  %44 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0) #10
  %46 = add i32 %45, %43
  %47 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 0) #10
  %49 = add i32 %46, %48
  %50 = load i32, ptr @vm_dirty_bytes, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %113, label %52

52:                                               ; preds = %39
  %53 = add i32 %50, 4095
  %54 = lshr i32 %53, 12
  %55 = mul i32 %54, %49
  %56 = load volatile i32, ptr @vm_zone_stat, align 4
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 0) #10
  %58 = load i32, ptr @totalreserve_pages, align 4
  %59 = tail call i32 @llvm.usub.sat.i32(i32 %57, i32 %58) #10
  %60 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %61 = tail call i32 @llvm.smax.i32(i32 %60, i32 0) #10
  %62 = add nuw i32 %61, %59
  %63 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %64 = tail call i32 @llvm.smax.i32(i32 %63, i32 0) #10
  %65 = add i32 %62, %64
  %66 = load i32, ptr @vm_highmem_is_dirtyable, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %109

68:                                               ; preds = %52
  %69 = load i32, ptr @movable_zone, align 4
  %70 = icmp ne i32 %69, 2
  %71 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 13), align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %68
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 0), align 64
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 0) #10
  %76 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 0, i32 2), align 8
  %77 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 1), align 4
  %78 = add i32 %77, %76
  %79 = tail call i32 @llvm.usub.sat.i32(i32 %75, i32 %78) #10
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 3), align 4
  %81 = tail call i32 @llvm.smax.i32(i32 %80, i32 0) #10
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 4), align 16
  %83 = tail call i32 @llvm.smax.i32(i32 %82, i32 0) #10
  %84 = add nuw i32 %81, %79
  %85 = add i32 %84, %83
  br label %86

86:                                               ; preds = %73, %68
  %87 = phi i32 [ %85, %73 ], [ 0, %68 ]
  %88 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 13), align 8
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %70, i1 true, i1 %89
  br i1 %90, label %105, label %91

91:                                               ; preds = %86
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 0), align 64
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 0) #10
  %94 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 0, i32 2), align 8
  %95 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 1), align 4
  %96 = add i32 %95, %94
  %97 = tail call i32 @llvm.usub.sat.i32(i32 %93, i32 %96) #10
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 3), align 4
  %99 = tail call i32 @llvm.smax.i32(i32 %98, i32 0) #10
  %100 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 4), align 16
  %101 = tail call i32 @llvm.smax.i32(i32 %100, i32 0) #10
  %102 = add i32 %99, %87
  %103 = add i32 %102, %97
  %104 = add i32 %103, %101
  br label %105

105:                                              ; preds = %91, %86
  %106 = phi i32 [ %104, %91 ], [ %87, %86 ]
  %107 = tail call i32 @llvm.smax.i32(i32 %106, i32 0) #10
  %108 = tail call i32 @llvm.usub.sat.i32(i32 %65, i32 %107) #10
  br label %109

109:                                              ; preds = %105, %52
  %110 = phi i32 [ %65, %52 ], [ %108, %105 ]
  %111 = add i32 %110, 1
  %112 = udiv i32 %55, %111
  br label %117

113:                                              ; preds = %39
  %114 = load i32, ptr @vm_dirty_ratio, align 4
  %115 = mul i32 %114, %49
  %116 = udiv i32 %115, 100
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i32 [ %112, %109 ], [ %116, %113 ]
  %119 = tail call ptr @llvm.thread.pointer() #10
  %120 = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 14
  %121 = load i32, ptr %120, align 16
  %122 = icmp sgt i32 %121, 99
  %123 = lshr i32 %118, 2
  %124 = select i1 %122, i32 0, i32 %123
  %125 = add i32 %124, %118
  %126 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %127 = tail call i32 @llvm.smax.i32(i32 %126, i32 0) #10
  %128 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %129 = tail call i32 @llvm.smax.i32(i32 %128, i32 0) #10
  %130 = add nuw i32 %129, %127
  %131 = icmp ule i32 %130, %125
  ret i1 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dirty_background_ratio_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i32 0, ptr @dirty_background_bytes, align 4
  br label %11

11:                                               ; preds = %10, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dirty_background_bytes_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @proc_doulongvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i32 0, ptr @dirty_background_ratio, align 4
  br label %11

11:                                               ; preds = %10, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dirty_ratio_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr @vm_dirty_ratio, align 4
  %9 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq i32 %1, 0
  %12 = or i1 %11, %10
  %13 = load i32, ptr @vm_dirty_ratio, align 4
  %14 = icmp eq i32 %13, %8
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !11
  call void @global_dirty_limits(ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %17 = load i32, ptr %7, align 4
  store i32 %17, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %18 = load volatile i32, ptr @__num_online_cpus, align 4
  %19 = shl i32 %18, 5
  %20 = udiv i32 %17, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 16) #10
  store i32 %21, ptr @ratelimit_pages, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr @vm_dirty_bytes, align 4
  br label %22

22:                                               ; preds = %16, %5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @writeback_set_ratelimit() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !11
  call void @global_dirty_limits(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %5 = shl i32 %4, 5
  %6 = udiv i32 %3, %5
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 16)
  store i32 %7, ptr @ratelimit_pages, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dirty_bytes_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr @vm_dirty_bytes, align 4
  %9 = tail call i32 @proc_doulongvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq i32 %1, 0
  %12 = or i1 %11, %10
  %13 = load i32, ptr @vm_dirty_bytes, align 4
  %14 = icmp eq i32 %13, %8
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !11
  call void @global_dirty_limits(ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %17 = load i32, ptr %7, align 4
  store i32 %17, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %18 = load volatile i32, ptr @__num_online_cpus, align 4
  %19 = shl i32 %18, 5
  %20 = udiv i32 %17, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 16) #10
  store i32 %21, ptr @ratelimit_pages, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr @vm_dirty_ratio, align 4
  br label %22

22:                                               ; preds = %16, %5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wb_writeout_inc(ptr noundef %0) #0 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !12
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #10, !range !13
  %6 = getelementptr %struct.bdi_writeback, ptr %0, i32 0, i32 9, i32 3
  %7 = mul nsw i32 %5, -8
  %8 = add nsw i32 %7, 256
  %9 = select i1 %4, i32 0, i32 %8
  tail call void @percpu_counter_add_batch(ptr noundef %6, i64 noundef 1, i32 noundef %9) #10
  %10 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 18
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.backing_dev_info, ptr %11, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  tail call void @__fprop_add_percpu_max(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 1), ptr noundef %10, i32 noundef %13, i32 noundef 1) #10
  %14 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 3), align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22, !prof !14

16:                                               ; preds = %1
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = add i32 %17, 300
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1, i32 %18
  store i32 %20, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 3), align 4
  %21 = tail call i32 @mod_timer(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 2), i32 noundef %20) #10
  br label %22

22:                                               ; preds = %16, %1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #10, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wb_domain_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wb_domain, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @init_timer_key(ptr noundef %3, ptr noundef nonnull @writeout_period, i32 noundef 524288, ptr noundef null, ptr noundef null) #10
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.wb_domain, ptr %0, i32 0, i32 4
  store i32 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.wb_domain, ptr %0, i32 0, i32 1
  %7 = tail call i32 @fprop_global_init(ptr noundef %6, i32 noundef %1) #10
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @writeout_period(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 %2, %4
  %6 = udiv i32 %5, 300
  %7 = getelementptr i8, ptr %0, i32 -40
  %8 = add nuw nsw i32 %6, 1
  %9 = tail call zeroext i1 @fprop_new_period(ptr noundef %7, i32 noundef %8) #10
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, ptr %3, align 4
  %12 = mul nuw i32 %6, 300
  %13 = add i32 %12, 300
  %14 = add i32 %13, %11
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 1, i32 %14
  store i32 %16, ptr %3, align 4
  %17 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %16) #10
  br label %19

18:                                               ; preds = %1
  store i32 0, ptr %3, align 4
  br label %19

19:                                               ; preds = %18, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fprop_global_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdi_set_min_ratio(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #10
  %3 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %1, %8
  %10 = load i32, ptr @bdi_min_ratio, align 4
  %11 = add i32 %10, %9
  %12 = icmp ult i32 %11, 100
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 %11, ptr @bdi_min_ratio, align 4
  store i32 %1, ptr %7, align 4
  br label %14

14:                                               ; preds = %13, %6, %2
  %15 = phi i32 [ 0, %13 ], [ -22, %2 ], [ -22, %6 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #10
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdi_set_max_ratio(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 100
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #10
  %5 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 8
  store i32 %1, ptr %9, align 8
  %10 = shl nuw nsw i32 %1, 10
  %11 = udiv i32 %10, 100
  %12 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 9
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ 0, %8 ], [ -22, %4 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #10
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wb_calc_thresh(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !11
  call void @fprop_fraction_percpu(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 1), ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %6 = load i32, ptr @bdi_min_ratio, align 4
  %7 = sub i32 100, %6
  %8 = mul i32 %7, %1
  %9 = udiv i32 %8, 100
  %10 = zext i32 %9 to i64
  %11 = load i32, ptr %3, align 4
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %10, %12
  %14 = load i32, ptr %4, align 4
  %15 = icmp ult i64 %13, 4294967296
  br i1 %15, label %16, label %20, !prof !16

16:                                               ; preds = %2
  %17 = trunc i64 %13 to i32
  %18 = udiv i32 %17, %14
  %19 = zext i32 %18 to i64
  br label %23

20:                                               ; preds = %2
  %21 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %13) #11, !srcloc !17
  %22 = extractvalue { i64, i64 } %21, 1
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i64 [ %19, %16 ], [ %22, %20 ]
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.backing_dev_info, ptr %25, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.backing_dev_info, ptr %25, i32 0, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = mul i32 %27, %1
  %31 = udiv i32 %30, 100
  %32 = zext i32 %31 to i64
  %33 = add i64 %24, %32
  %34 = mul i32 %29, %1
  %35 = udiv i32 %34, 100
  %36 = zext i32 %35 to i64
  %37 = icmp ugt i64 %33, %36
  %38 = trunc i64 %33 to i32
  %39 = select i1 %37, i32 %35, i32 %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wb_update_bandwidth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.dirty_throttle_control, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store ptr %0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dirty_throttle_control, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 18
  store ptr %5, ptr %4, align 4
  call fastcc void @__wb_update_bandwidth(ptr noundef nonnull %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__wb_update_bandwidth(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.bdi_writeback, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.bdi_writeback, ptr %3, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %4, %7
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 1)
  %10 = getelementptr %struct.bdi_writeback, ptr %3, i32 0, i32 9, i32 2, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = getelementptr %struct.bdi_writeback, ptr %3, i32 0, i32 9, i32 3, i32 1
  %14 = load i64, ptr %13, align 8
  br i1 %1, label %15, label %155

15:                                               ; preds = %2
  %16 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 4), align 8
  %17 = add i32 %4, -20
  %18 = sub i32 %17, %16
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %15
  tail call void @_raw_spin_lock(ptr noundef nonnull @global_wb_domain) #10
  %21 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 4), align 8
  %22 = sub i32 %17, %21
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %26, i32 %31) #10
  %33 = icmp ugt i32 %27, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = sub i32 %27, %32
  %36 = lshr i32 %35, 5
  %37 = sub i32 %27, %36
  br label %38

38:                                               ; preds = %34, %24
  %39 = phi i32 [ %37, %34 ], [ %26, %24 ]
  store i32 %39, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  br label %40

40:                                               ; preds = %38, %29
  store i32 %4, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 4), align 8
  br label %41

41:                                               ; preds = %40, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %42 = load i16, ptr @global_wb_domain, align 8
  %43 = add i16 %42, 1
  store i16 %43, ptr @global_wb_domain, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %44

44:                                               ; preds = %41, %15
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  %53 = lshr i32 %52, 1
  %54 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 %49) #10
  %56 = add i32 %53, %55
  %57 = getelementptr inbounds %struct.bdi_writeback, ptr %45, i32 0, i32 15
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.bdi_writeback, ptr %45, i32 0, i32 16
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.bdi_writeback, ptr %45, i32 0, i32 12
  %62 = load i32, ptr %61, align 8
  %63 = sub i32 %12, %62
  %64 = mul i32 %63, 100
  %65 = udiv i32 %64, %9
  %66 = zext i32 %60 to i64
  %67 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = zext i32 %68 to i64
  %70 = mul nuw i64 %69, %66
  %71 = lshr i64 %70, 10
  %72 = trunc i64 %71 to i32
  %73 = add i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = zext i32 %58 to i64
  %76 = mul nuw i64 %74, %75
  %77 = or i32 %65, 1
  %78 = icmp ult i64 %76, 4294967296
  br i1 %78, label %79, label %82, !prof !16

79:                                               ; preds = %44
  %80 = trunc i64 %76 to i32
  %81 = udiv i32 %80, %77
  br label %86

82:                                               ; preds = %44
  %83 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %77, i64 %76) #11, !srcloc !17
  %84 = extractvalue { i64, i64 } %83, 1
  %85 = trunc i64 %84 to i32
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i32 [ %81, %79 ], [ %85, %82 ]
  %88 = icmp ult i32 %58, %87
  br i1 %88, label %89, label %90, !prof !14

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %58, %89 ], [ %87, %86 ]
  %92 = load ptr, ptr %45, align 8
  %93 = getelementptr inbounds %struct.backing_dev_info, ptr %92, i32 0, i32 6
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97, !prof !16

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = icmp ult i32 %99, 8
  br i1 %100, label %112, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 7
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 8
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, %103
  br label %107

107:                                              ; preds = %101, %90
  %108 = phi i32 [ %106, %101 ], [ %56, %90 ]
  %109 = phi i32 [ %99, %101 ], [ %47, %90 ]
  %110 = lshr i32 %108, 1
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %107, %97
  %113 = getelementptr inbounds %struct.bdi_writeback, ptr %45, i32 0, i32 17
  %114 = load i32, ptr %113, align 4
  %115 = tail call i32 @llvm.umin.i32(i32 %114, i32 %91) #10
  %116 = tail call i32 @llvm.umin.i32(i32 %115, i32 %73) #10
  %117 = tail call i32 @llvm.usub.sat.i32(i32 %116, i32 %60) #10
  br label %124

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.bdi_writeback, ptr %45, i32 0, i32 17
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @llvm.umax.i32(i32 %120, i32 %91) #10
  %122 = tail call i32 @llvm.umax.i32(i32 %121, i32 %73) #10
  %123 = tail call i32 @llvm.usub.sat.i32(i32 %60, i32 %122) #10
  br label %124

124:                                              ; preds = %118, %112
  %125 = phi i32 [ %117, %112 ], [ %123, %118 ]
  %126 = shl i32 %125, 1
  %127 = or i32 %126, 1
  %128 = udiv i32 %60, %127
  %129 = icmp ult i32 %128, 32
  %130 = lshr i32 %125, %128
  %131 = add i32 %130, 7
  %132 = lshr i32 %131, 3
  %133 = select i1 %129, i32 %132, i32 0
  %134 = icmp ult i32 %60, %91
  %135 = sub nsw i32 0, %133
  %136 = select i1 %134, i32 %133, i32 %135
  %137 = add i32 %136, %60
  %138 = tail call i32 @llvm.umax.i32(i32 %137, i32 1) #10
  store volatile i32 %138, ptr %59, align 8
  %139 = getelementptr inbounds %struct.bdi_writeback, ptr %45, i32 0, i32 17
  store i32 %91, ptr %139, align 4
  %140 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bdi_dirty_ratelimit, i32 0, i32 1), align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %124
  %143 = tail call ptr @llvm.thread.pointer() #10
  %144 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 8
  %146 = lshr i32 %145, 5
  %147 = getelementptr i32, ptr @__cpu_online_mask, i32 %146
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %145, 31
  %150 = shl nuw i32 1, %149
  %151 = and i32 %150, %148
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %142
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %154 = tail call i32 @__traceiter_bdi_dirty_ratelimit(ptr noundef null, ptr noundef %45, i32 noundef %65, i32 noundef %73) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %155

155:                                              ; preds = %153, %142, %124, %2
  %156 = trunc i64 %14 to i32
  %157 = getelementptr inbounds %struct.bdi_writeback, ptr %3, i32 0, i32 15
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds %struct.bdi_writeback, ptr %3, i32 0, i32 14
  %160 = load i32, ptr %159, align 8
  %161 = getelementptr inbounds %struct.bdi_writeback, ptr %3, i32 0, i32 13
  %162 = load i32, ptr %161, align 4
  %163 = tail call i32 @llvm.usub.sat.i32(i32 %156, i32 %162) #10
  %164 = zext i32 %163 to i64
  %165 = mul nuw nsw i64 %164, 100
  %166 = icmp ugt i32 %9, 512
  br i1 %166, label %167, label %176, !prof !14

167:                                              ; preds = %155
  %168 = icmp ult i64 %165, 4294967296
  br i1 %168, label %169, label %172, !prof !16

169:                                              ; preds = %167
  %170 = trunc i64 %165 to i32
  %171 = udiv i32 %170, %9
  br label %198

172:                                              ; preds = %167
  %173 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %165) #11, !srcloc !17
  %174 = extractvalue { i64, i64 } %173, 1
  %175 = trunc i64 %174 to i32
  br label %198

176:                                              ; preds = %155
  %177 = zext i32 %160 to i64
  %178 = sub nuw nsw i32 512, %9
  %179 = zext i32 %178 to i64
  %180 = mul nuw nsw i64 %177, %179
  %181 = add nuw nsw i64 %165, %180
  %182 = lshr i64 %181, 9
  %183 = icmp ule i32 %158, %160
  %184 = trunc i64 %182 to i32
  %185 = icmp ult i32 %160, %184
  %186 = select i1 %183, i1 true, i1 %185
  %187 = sub i32 %158, %160
  %188 = lshr i32 %187, 3
  %189 = select i1 %186, i32 0, i32 %188
  %190 = sub i32 %158, %189
  %191 = icmp ule i32 %160, %190
  %192 = icmp ugt i32 %160, %184
  %193 = select i1 %191, i1 true, i1 %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %176
  %195 = sub i32 %160, %190
  %196 = lshr i32 %195, 3
  %197 = add i32 %196, %190
  br label %198

198:                                              ; preds = %194, %176, %172, %169
  %199 = phi i32 [ %184, %194 ], [ %184, %176 ], [ %171, %169 ], [ %175, %172 ]
  %200 = phi i32 [ %197, %194 ], [ %190, %176 ], [ %171, %169 ], [ %175, %172 ]
  %201 = tail call i32 @llvm.umax.i32(i32 %200, i32 1) #10
  %202 = getelementptr inbounds %struct.bdi_writeback, ptr %3, i32 0, i32 1
  %203 = load volatile i32, ptr %202, align 4
  %204 = and i32 %203, 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %198
  %207 = sub i32 %201, %158
  %208 = load ptr, ptr %3, align 8
  %209 = getelementptr inbounds %struct.backing_dev_info, ptr %208, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %209) #10, !srcloc !25
  %210 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %209, ptr %209, i32 %207, ptr elementtype(i32) %209) #10, !srcloc !26
  %211 = extractvalue { i32, i32 } %210, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %212 = icmp slt i32 %211, 1
  %213 = load i1, ptr @wb_update_write_bandwidth.__already_done, align 1
  %214 = xor i1 %213, true
  %215 = select i1 %212, i1 %214, i1 false
  br i1 %215, label %216, label %217, !prof !14

216:                                              ; preds = %206
  store i1 true, ptr @wb_update_write_bandwidth.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1115, i32 noundef 9, ptr noundef null) #10
  br label %217

217:                                              ; preds = %216, %206, %198
  store i32 %199, ptr %159, align 8
  store volatile i32 %201, ptr %157, align 4
  %218 = getelementptr inbounds %struct.bdi_writeback, ptr %3, i32 0, i32 12
  store i32 %12, ptr %218, align 8
  store i32 %156, ptr %161, align 4
  store volatile i32 %4, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %219 = load i16, ptr %5, align 4
  %220 = add i16 %219, 1
  store i16 %220, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @balance_dirty_pages_ratelimited(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @inode_to_bdi(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.backing_dev_info, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.backing_dev_info, ptr %3, i32 0, i32 11
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 141
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.backing_dev_info, ptr %3, i32 0, i32 11, i32 19
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  %16 = tail call i32 @llvm.smin.i32(i32 %12, i32 8)
  %17 = select i1 %15, i32 %12, i32 %16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #8, !srcloc !29
  %21 = add i32 %20, ptrtoint (ptr @bdp_ratelimits to i32)
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 140
  %24 = load i32, ptr %23, align 8
  %25 = icmp slt i32 %24, %17
  br i1 %25, label %26, label %30, !prof !16

26:                                               ; preds = %8
  %27 = load i32, ptr %22, align 4
  %28 = load i32, ptr @ratelimit_pages, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %32, label %30, !prof !16

30:                                               ; preds = %26, %8
  %31 = phi i32 [ %17, %8 ], [ 0, %26 ]
  store i32 0, ptr %22, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %17, %26 ], [ %31, %30 ]
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #8, !srcloc !29
  %37 = add i32 %36, ptrtoint (ptr @dirty_throttle_leaks to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load i32, ptr %23, align 8
  %43 = icmp sgt i32 %33, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = sub i32 %33, %42
  %46 = tail call i32 @llvm.smin.i32(i32 %39, i32 %45)
  %47 = sub i32 %39, %46
  store i32 %47, ptr %38, align 4
  %48 = load i32, ptr %23, align 8
  %49 = add i32 %48, %46
  store i32 %49, ptr %23, align 8
  br label %50

50:                                               ; preds = %44, %41, %32
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %51 = load i32, ptr %23, align 8
  %52 = icmp slt i32 %51, %33
  br i1 %52, label %54, label %53, !prof !16

53:                                               ; preds = %50
  tail call fastcc void @balance_dirty_pages(ptr noundef %9, i32 noundef %51)
  br label %54

54:                                               ; preds = %53, %50, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @balance_dirty_pages(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dirty_throttle_control, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 18
  store ptr %6, ptr %5, align 4
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 4
  %11 = icmp ne i32 %10, 0
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 3
  %15 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 4
  %16 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 5
  %17 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 6
  %18 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 7
  %19 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 8
  %20 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 9
  %22 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 19
  %23 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 11
  %24 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 16
  %25 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 15
  %26 = mul i32 %1, 100
  %27 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 25
  br label %28

28:                                               ; preds = %439, %2
  %29 = phi i1 [ false, %2 ], [ %151, %439 ]
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0) #10
  %33 = load volatile i32, ptr @vm_zone_stat, align 4
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0) #10
  %35 = load i32, ptr @totalreserve_pages, align 4
  %36 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 %35) #10
  %37 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #10
  %39 = add nuw i32 %38, %36
  %40 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 0) #10
  %42 = add i32 %39, %41
  %43 = load i32, ptr @vm_highmem_is_dirtyable, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %28
  %46 = load i32, ptr @movable_zone, align 4
  %47 = icmp ne i32 %46, 2
  %48 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 13), align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %45
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 0), align 64
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 0) #10
  %53 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 0, i32 2), align 8
  %54 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 1), align 4
  %55 = add i32 %54, %53
  %56 = tail call i32 @llvm.usub.sat.i32(i32 %52, i32 %55) #10
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 3), align 4
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 0) #10
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 4), align 16
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 0) #10
  %61 = add nuw i32 %58, %56
  %62 = add i32 %61, %60
  br label %63

63:                                               ; preds = %50, %45
  %64 = phi i32 [ %62, %50 ], [ 0, %45 ]
  %65 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 13), align 8
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %47, i1 true, i1 %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %63
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 0), align 64
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 0) #10
  %71 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 0, i32 2), align 8
  %72 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 1), align 4
  %73 = add i32 %72, %71
  %74 = tail call i32 @llvm.usub.sat.i32(i32 %70, i32 %73) #10
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 3), align 4
  %76 = tail call i32 @llvm.smax.i32(i32 %75, i32 0) #10
  %77 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 4), align 16
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 0) #10
  %79 = add i32 %76, %64
  %80 = add i32 %79, %74
  %81 = add i32 %80, %78
  br label %82

82:                                               ; preds = %68, %63
  %83 = phi i32 [ %81, %68 ], [ %64, %63 ]
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 0) #10
  %85 = tail call i32 @llvm.usub.sat.i32(i32 %42, i32 %84) #10
  br label %86

86:                                               ; preds = %82, %28
  %87 = phi i32 [ %42, %28 ], [ %85, %82 ]
  %88 = add i32 %87, 1
  store i32 %88, ptr %13, align 4
  %89 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 0) #10
  %91 = add nuw i32 %90, %32
  store i32 %91, ptr %14, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %3)
  br i1 %11, label %92, label %93, !prof !14

92:                                               ; preds = %86
  call fastcc void @wb_dirty_limits(ptr noundef nonnull %3)
  br label %93

93:                                               ; preds = %92, %86
  %94 = phi ptr [ %17, %92 ], [ %14, %86 ]
  %95 = phi ptr [ %18, %92 ], [ %15, %86 ]
  %96 = phi ptr [ %19, %92 ], [ %16, %86 ]
  %97 = load i32, ptr %94, align 4
  %98 = load i32, ptr %95, align 4
  %99 = load i32, ptr %96, align 4
  %100 = add i32 %99, %98
  %101 = lshr i32 %100, 1
  %102 = icmp ugt i32 %97, %101
  br i1 %102, label %117, label %103

103:                                              ; preds = %129, %93
  %104 = icmp ugt i32 %98, %97
  br i1 %104, label %105, label %111

105:                                              ; preds = %103
  %106 = sub i32 %98, %97
  %107 = tail call i32 @llvm.ctlz.i32(i32 %106, i1 false) #10, !range !13
  %108 = sub nsw i32 31, %107
  %109 = ashr i32 %108, 1
  %110 = shl nuw i32 1, %109
  br label %111

111:                                              ; preds = %105, %103
  %112 = phi i32 [ %110, %105 ], [ 1, %103 ]
  %113 = tail call ptr @llvm.thread.pointer() #10
  %114 = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 142
  store i32 %30, ptr %114, align 16
  %115 = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 140
  store i32 0, ptr %115, align 8
  %116 = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 141
  store i32 %112, ptr %116, align 4
  br i1 %29, label %450, label %446

117:                                              ; preds = %93
  %118 = load volatile i32, ptr %20, align 4
  %119 = and i32 %118, 2
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122, !prof !14

121:                                              ; preds = %117
  tail call void @wb_start_background_writeback(ptr noundef %0) #10
  br label %122

122:                                              ; preds = %121, %117
  br i1 %11, label %136, label %123

123:                                              ; preds = %122
  call fastcc void @wb_dirty_limits(ptr noundef nonnull %3)
  %124 = tail call ptr @llvm.thread.pointer() #10
  %125 = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 4
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 1048576
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %123
  %130 = load i32, ptr %17, align 4
  %131 = load i32, ptr %18, align 4
  %132 = load i32, ptr %19, align 4
  %133 = add i32 %132, %131
  %134 = lshr i32 %133, 1
  %135 = icmp ult i32 %130, %134
  br i1 %135, label %103, label %136

136:                                              ; preds = %129, %123, %122
  %137 = load i32, ptr %17, align 4
  %138 = load i32, ptr %18, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load i32, ptr %15, align 4
  %142 = load i32, ptr %14, align 4
  br label %148

143:                                              ; preds = %136
  %144 = load i32, ptr %14, align 4
  %145 = load i32, ptr %15, align 4
  %146 = icmp ugt i32 %144, %145
  %147 = select i1 %146, i1 true, i1 %11
  br label %148

148:                                              ; preds = %143, %140
  %149 = phi i32 [ %142, %140 ], [ %144, %143 ]
  %150 = phi i32 [ %141, %140 ], [ %145, %143 ]
  %151 = phi i1 [ false, %140 ], [ %147, %143 ]
  %152 = load ptr, ptr %3, align 4
  %153 = getelementptr inbounds %struct.bdi_writeback, ptr %152, i32 0, i32 15
  %154 = load volatile i32, ptr %153, align 4
  %155 = load i32, ptr %16, align 4
  %156 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %157 = tail call i32 @llvm.umax.i32(i32 %156, i32 %150) #10
  store i32 0, ptr %21, align 4
  %158 = icmp ugt i32 %157, %149
  br i1 %158, label %159, label %276, !prof !16

159:                                              ; preds = %148
  %160 = add i32 %155, %150
  %161 = lshr i32 %160, 1
  %162 = add i32 %161, %157
  %163 = lshr i32 %162, 1
  %164 = zext i32 %163 to i64
  %165 = zext i32 %149 to i64
  %166 = sub nsw i64 %164, %165
  %167 = shl nsw i64 %166, 10
  %168 = sub i32 %157, %163
  %169 = or i32 %168, 1
  %170 = zext i32 %169 to i64
  %171 = tail call i64 @div64_s64(i64 noundef %167, i64 noundef %170) #10
  %172 = shl i64 %171, 32
  %173 = ashr exact i64 %172, 32
  %174 = mul nsw i64 %173, %173
  %175 = lshr i64 %174, 10
  %176 = mul i64 %175, %173
  %177 = ashr i64 %176, 10
  %178 = tail call i64 @llvm.smax.i64(i64 %177, i64 -1024) #10
  %179 = tail call i64 @llvm.smin.i64(i64 %178, i64 1024) #10
  %180 = add nsw i64 %179, 1024
  %181 = load ptr, ptr %152, align 8
  %182 = getelementptr inbounds %struct.backing_dev_info, ptr %181, i32 0, i32 6
  %183 = load i32, ptr %182, align 8
  %184 = and i32 %183, 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %205, label %186, !prof !16

186:                                              ; preds = %159
  %187 = icmp ult i32 %137, 8
  br i1 %187, label %188, label %192

188:                                              ; preds = %186
  %189 = shl nuw nsw i64 %180, 1
  %190 = tail call i64 @llvm.smin.i64(i64 %189, i64 2048) #10
  %191 = trunc i64 %190 to i32
  br label %274

192:                                              ; preds = %186
  %193 = icmp ult i32 %137, %138
  br i1 %193, label %194, label %276

194:                                              ; preds = %192
  %195 = load i32, ptr %19, align 4
  %196 = add i32 %195, %138
  %197 = lshr i32 %196, 1
  %198 = icmp ult i32 %196, 2
  %199 = icmp eq i32 %197, %138
  %200 = or i1 %198, %199
  br i1 %200, label %276, label %201

201:                                              ; preds = %194
  %202 = tail call fastcc i64 @pos_ratio_polynom(i32 noundef %197, i32 noundef %137, i32 noundef %138) #10
  %203 = tail call i64 @llvm.smin.i64(i64 %180, i64 %202) #10
  %204 = trunc i64 %203 to i32
  br label %274

205:                                              ; preds = %159
  %206 = icmp ugt i32 %138, %150
  br i1 %206, label %207, label %208, !prof !14

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %207, %205
  %209 = phi i32 [ %150, %207 ], [ %138, %205 ]
  %210 = sub i32 %157, %149
  %211 = lshr i32 %210, 3
  %212 = tail call i32 @llvm.umax.i32(i32 %209, i32 %211) #10
  %213 = zext i32 %212 to i64
  %214 = shl nuw nsw i64 %213, 16
  %215 = or i32 %150, 1
  %216 = icmp ult i32 %212, 65536
  br i1 %216, label %217, label %221, !prof !16

217:                                              ; preds = %208
  %218 = trunc i64 %214 to i32
  %219 = udiv i32 %218, %215
  %220 = zext i32 %219 to i64
  br label %224

221:                                              ; preds = %208
  %222 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %215, i64 %214) #11, !srcloc !17
  %223 = extractvalue { i64, i64 } %222, 1
  br label %224

224:                                              ; preds = %221, %217
  %225 = phi i64 [ %220, %217 ], [ %223, %221 ]
  %226 = shl i64 %225, 32
  %227 = ashr exact i64 %226, 32
  %228 = mul nsw i64 %227, %164
  %229 = lshr i64 %228, 16
  %230 = trunc i64 %229 to i32
  %231 = shl i32 %154, 3
  %232 = add i32 %150, %231
  %233 = sub i32 %232, %212
  %234 = zext i32 %233 to i64
  %235 = mul nsw i64 %227, %234
  %236 = lshr i64 %235, 16
  %237 = trunc i64 %236 to i32
  %238 = add i32 %230, %237
  %239 = lshr i32 %237, 2
  %240 = sub i32 %238, %239
  %241 = icmp ult i32 %137, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %224
  %243 = sub i32 %238, %137
  %244 = zext i32 %243 to i64
  %245 = mul nuw nsw i64 %180, %244
  %246 = or i32 %237, 1
  %247 = zext i32 %246 to i64
  %248 = tail call i64 @div64_u64(i64 noundef %245, i64 noundef %247) #10
  br label %253

249:                                              ; preds = %224
  %250 = trunc i64 %180 to i16
  %251 = lshr i16 %250, 2
  %252 = zext i16 %251 to i64
  br label %253

253:                                              ; preds = %249, %242
  %254 = phi i64 [ %248, %242 ], [ %252, %249 ]
  %255 = lshr i32 %212, 1
  %256 = icmp ult i32 %137, %255
  %257 = trunc i64 %254 to i32
  br i1 %256, label %258, label %274

258:                                              ; preds = %253
  %259 = lshr i32 %212, 4
  %260 = icmp ugt i32 %137, %259
  br i1 %260, label %261, label %272

261:                                              ; preds = %258
  %262 = zext i32 %255 to i64
  %263 = mul i64 %254, %262
  %264 = icmp ult i64 %263, 4294967296
  br i1 %264, label %265, label %268, !prof !16

265:                                              ; preds = %261
  %266 = trunc i64 %263 to i32
  %267 = udiv i32 %266, %137
  br label %274

268:                                              ; preds = %261
  %269 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %137, i64 %263) #11, !srcloc !17
  %270 = extractvalue { i64, i64 } %269, 1
  %271 = trunc i64 %270 to i32
  br label %274

272:                                              ; preds = %258
  %273 = shl i32 %257, 3
  br label %274

274:                                              ; preds = %272, %268, %265, %253, %201, %188
  %275 = phi i32 [ %191, %188 ], [ %204, %201 ], [ %273, %272 ], [ %257, %253 ], [ %267, %265 ], [ %271, %268 ]
  store i32 %275, ptr %21, align 4
  br label %276

276:                                              ; preds = %274, %194, %192, %148
  %277 = phi i32 [ 0, %148 ], [ 0, %192 ], [ 0, %194 ], [ %275, %274 ]
  br i1 %151, label %278, label %282

278:                                              ; preds = %276
  %279 = load i32, ptr %22, align 8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i32 1, ptr %22, align 8
  br label %282

282:                                              ; preds = %281, %278, %276
  %283 = load volatile i32, ptr %23, align 4
  %284 = add i32 %283, 20
  %285 = load volatile i32, ptr @jiffies, align 64
  %286 = sub i32 %284, %285
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  call fastcc void @__wb_update_bandwidth(ptr noundef nonnull %3, i1 noundef zeroext true)
  br label %289

289:                                              ; preds = %288, %282
  %290 = load volatile i32, ptr %24, align 8
  %291 = zext i32 %290 to i64
  %292 = zext i32 %277 to i64
  %293 = mul nuw i64 %292, %291
  %294 = lshr i64 %293, 10
  %295 = trunc i64 %294 to i32
  %296 = load volatile i32, ptr %25, align 4
  %297 = lshr i32 %296, 4
  %298 = add nuw nsw i32 %297, 1
  %299 = udiv i32 %137, %298
  %300 = add i32 %299, 1
  %301 = tail call i32 @llvm.umin.i32(i32 %300, i32 20) #10
  %302 = load volatile i32, ptr %25, align 4
  %303 = icmp eq i32 %302, 0
  %304 = tail call i32 @llvm.ctlz.i32(i32 %302, i1 false) #10, !range !13
  %305 = sub nsw i32 31, %304
  %306 = select i1 %303, i32 -1, i32 %305
  %307 = load volatile i32, ptr %24, align 8
  %308 = icmp eq i32 %307, 0
  %309 = tail call i32 @llvm.ctlz.i32(i32 %307, i1 false) #10, !range !13
  %310 = sub nsw i32 31, %309
  %311 = select i1 %308, i32 -1, i32 %310
  %312 = icmp sgt i32 %306, %311
  %313 = sub nsw i32 %306, %311
  %314 = trunc i32 %313 to i16
  %315 = mul nsw i16 %314, 1000
  %316 = sdiv i16 %315, 1024
  %317 = add nsw i16 %316, 1
  %318 = sext i16 %317 to i32
  %319 = select i1 %312, i32 %318, i32 1
  %320 = lshr i32 %301, 1
  %321 = add nuw nsw i32 %320, 1
  %322 = tail call i32 @llvm.smin.i32(i32 %319, i32 %321) #10
  %323 = mul i32 %322, %290
  %324 = lshr i32 %323, 7
  %325 = icmp ult i32 %323, 4096
  br i1 %325, label %326, label %332

326:                                              ; preds = %289
  %327 = mul i32 %301, %290
  %328 = lshr i32 %327, 7
  %329 = icmp ugt i32 %327, 4223
  br i1 %329, label %330, label %332

330:                                              ; preds = %326
  %331 = udiv i32 3200, %290
  br label %332

332:                                              ; preds = %330, %326, %289
  %333 = phi i32 [ 32, %330 ], [ %328, %326 ], [ %324, %289 ]
  %334 = phi i32 [ %331, %330 ], [ %301, %326 ], [ %322, %289 ]
  %335 = mul nuw i32 %333, 100
  %336 = add i32 %295, 1
  %337 = udiv i32 %335, %336
  %338 = icmp sgt i32 %337, %301
  %339 = mul i32 %301, %295
  %340 = lshr i32 %339, 7
  %341 = select i1 %338, i32 %340, i32 %333
  %342 = icmp eq i32 %295, 0
  br i1 %342, label %400, label %343, !prof !14

343:                                              ; preds = %332
  %344 = icmp ugt i32 %341, 31
  %345 = select i1 %338, i32 %301, i32 %334
  %346 = trunc i32 %345 to i16
  %347 = sdiv i16 %346, 2
  %348 = add nsw i16 %347, 1
  %349 = sext i16 %348 to i32
  %350 = select i1 %344, i32 %349, i32 %345
  %351 = udiv i32 %26, %295
  %352 = tail call ptr @llvm.thread.pointer() #10
  %353 = getelementptr inbounds %struct.task_struct, ptr %352, i32 0, i32 142
  %354 = load i32, ptr %353, align 16
  %355 = icmp eq i32 %354, 0
  %356 = sub i32 %354, %30
  %357 = select i1 %355, i32 0, i32 %356
  %358 = add i32 %357, %351
  %359 = icmp slt i32 %358, %350
  br i1 %359, label %360, label %394

360:                                              ; preds = %343
  %361 = trunc i64 %294 to i32
  %362 = getelementptr inbounds %struct.task_struct, ptr %352, i32 0, i32 142
  %363 = tail call i32 @llvm.smin.i32(i32 %358, i32 0)
  %364 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_balance_dirty_pages, i32 0, i32 1), align 4
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %378

366:                                              ; preds = %360
  %367 = getelementptr inbounds %struct.thread_info, ptr %352, i32 0, i32 2
  %368 = load i32, ptr %367, align 8
  %369 = lshr i32 %368, 5
  %370 = getelementptr i32, ptr @__cpu_online_mask, i32 %369
  %371 = load volatile i32, ptr %370, align 4
  %372 = and i32 %368, 31
  %373 = shl nuw i32 1, %372
  %374 = and i32 %373, %371
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %366
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  %377 = tail call i32 @__traceiter_balance_dirty_pages(ptr noundef null, ptr noundef %0, i32 noundef %150, i32 noundef %155, i32 noundef %149, i32 noundef %138, i32 noundef %137, i32 noundef %290, i32 noundef %361, i32 noundef %1, i32 noundef %351, i32 noundef %363, i32 noundef %12) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  br label %378

378:                                              ; preds = %376, %366, %360
  %379 = icmp slt i32 %358, -100
  br i1 %379, label %380, label %382

380:                                              ; preds = %378
  store i32 %30, ptr %362, align 16
  %381 = getelementptr inbounds %struct.task_struct, ptr %352, i32 0, i32 140
  store i32 0, ptr %381, align 8
  br i1 %151, label %450, label %446

382:                                              ; preds = %378
  %383 = icmp ult i32 %26, %361
  br i1 %383, label %388, label %384

384:                                              ; preds = %382
  %385 = load i32, ptr %362, align 16
  %386 = add i32 %385, %351
  store i32 %386, ptr %362, align 16
  %387 = getelementptr inbounds %struct.task_struct, ptr %352, i32 0, i32 140
  store i32 0, ptr %387, align 8
  br i1 %151, label %450, label %446

388:                                              ; preds = %382
  %389 = getelementptr inbounds %struct.task_struct, ptr %352, i32 0, i32 141
  %390 = load i32, ptr %389, align 4
  %391 = icmp ugt i32 %390, %1
  br i1 %391, label %445, label %392

392:                                              ; preds = %388
  %393 = add i32 %390, %1
  store i32 %393, ptr %389, align 4
  br i1 %151, label %450, label %446

394:                                              ; preds = %343
  %395 = icmp sgt i32 %358, %301
  br i1 %395, label %396, label %400, !prof !14

396:                                              ; preds = %394
  %397 = sub i32 %358, %301
  %398 = tail call i32 @llvm.smin.i32(i32 %397, i32 %301)
  %399 = add i32 %398, %30
  br label %400

400:                                              ; preds = %396, %394, %332
  %401 = phi i32 [ %399, %396 ], [ %30, %394 ], [ %30, %332 ]
  %402 = phi i32 [ %301, %396 ], [ %358, %394 ], [ %301, %332 ]
  %403 = phi i32 [ %351, %396 ], [ %351, %394 ], [ %301, %332 ]
  %404 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_balance_dirty_pages, i32 0, i32 1), align 4
  %405 = icmp sgt i32 %404, 0
  %406 = tail call ptr @llvm.thread.pointer() #10
  br i1 %405, label %407, label %419

407:                                              ; preds = %400
  %408 = getelementptr inbounds %struct.thread_info, ptr %406, i32 0, i32 2
  %409 = load i32, ptr %408, align 8
  %410 = lshr i32 %409, 5
  %411 = getelementptr i32, ptr @__cpu_online_mask, i32 %410
  %412 = load volatile i32, ptr %411, align 4
  %413 = and i32 %409, 31
  %414 = shl nuw i32 1, %413
  %415 = and i32 %414, %412
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %419, label %417

417:                                              ; preds = %407
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  %418 = tail call i32 @__traceiter_balance_dirty_pages(ptr noundef null, ptr noundef %0, i32 noundef %150, i32 noundef %155, i32 noundef %149, i32 noundef %138, i32 noundef %137, i32 noundef %290, i32 noundef %295, i32 noundef %1, i32 noundef %403, i32 noundef %402, i32 noundef %12) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  br label %419

419:                                              ; preds = %417, %407, %400
  %420 = getelementptr inbounds %struct.task_struct, ptr %406, i32 0, i32 1
  store volatile i32 258, ptr %420, align 8
  store i32 %401, ptr %27, align 4
  %421 = tail call i32 @io_schedule_timeout(i32 noundef %402) #10
  %422 = add i32 %402, %401
  %423 = getelementptr inbounds %struct.task_struct, ptr %406, i32 0, i32 142
  store i32 %422, ptr %423, align 16
  %424 = getelementptr inbounds %struct.task_struct, ptr %406, i32 0, i32 140
  store i32 0, ptr %424, align 8
  %425 = getelementptr inbounds %struct.task_struct, ptr %406, i32 0, i32 141
  store i32 %341, ptr %425, align 4
  br i1 %342, label %426, label %445

426:                                              ; preds = %419
  %427 = load i32, ptr @nr_cpu_ids, align 4
  %428 = icmp eq i32 %427, 0
  %429 = tail call i32 @llvm.ctlz.i32(i32 %427, i1 false) #10, !range !13
  %430 = mul nsw i32 %429, -8
  %431 = add nsw i32 %430, 256
  %432 = select i1 %428, i32 0, i32 %431
  %433 = mul i32 %432, %427
  %434 = icmp ugt i32 %137, %433
  br i1 %434, label %435, label %445

435:                                              ; preds = %426
  %436 = load volatile i32, ptr %406, align 4
  %437 = and i32 %436, 1
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %440, %435
  br label %28

440:                                              ; preds = %435
  %441 = getelementptr inbounds %struct.task_struct, ptr %406, i32 0, i32 98, i32 1
  %442 = load i32, ptr %441, align 4
  %443 = and i32 %442, 256
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %439, label %445

445:                                              ; preds = %440, %426, %419, %388
  br i1 %151, label %450, label %446

446:                                              ; preds = %445, %392, %384, %380, %111
  %447 = load i32, ptr %22, align 8
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %450, label %449

449:                                              ; preds = %446
  store i32 0, ptr %22, align 8
  br label %450

450:                                              ; preds = %449, %446, %445, %392, %384, %380, %111
  %451 = load volatile i32, ptr %20, align 4
  %452 = and i32 %451, 2
  %453 = icmp eq i32 %452, 0
  %454 = load i32, ptr @laptop_mode, align 4
  %455 = icmp eq i32 %454, 0
  %456 = select i1 %453, i1 %455, i1 false
  %457 = load i32, ptr %16, align 4
  %458 = icmp ugt i32 %32, %457
  %459 = select i1 %456, i1 %458, i1 false
  br i1 %459, label %460, label %461

460:                                              ; preds = %450
  tail call void @wb_start_background_writeback(ptr noundef %0) #10
  br label %461

461:                                              ; preds = %460, %450
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @wb_over_bg_thresh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dirty_throttle_control, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dirty_throttle_control, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 18
  store ptr %7, ptr %6, align 4
  %8 = load volatile i32, ptr @vm_zone_stat, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0) #10
  %10 = load i32, ptr @totalreserve_pages, align 4
  %11 = tail call i32 @llvm.usub.sat.i32(i32 %9, i32 %10) #10
  %12 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0) #10
  %14 = add nuw i32 %13, %11
  %15 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0) #10
  %17 = add i32 %14, %16
  %18 = load i32, ptr @vm_highmem_is_dirtyable, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %1
  %21 = load i32, ptr @movable_zone, align 4
  %22 = icmp ne i32 %21, 2
  %23 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 13), align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 0), align 64
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0) #10
  %28 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 0, i32 2), align 8
  %29 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 1), align 4
  %30 = add i32 %29, %28
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %30) #10
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 3), align 4
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 0) #10
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 4), align 16
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0) #10
  %36 = add nuw i32 %33, %31
  %37 = add i32 %36, %35
  br label %38

38:                                               ; preds = %25, %20
  %39 = phi i32 [ %37, %25 ], [ 0, %20 ]
  %40 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 13), align 8
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %22, i1 true, i1 %41
  br i1 %42, label %57, label %43

43:                                               ; preds = %38
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 0), align 64
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0) #10
  %46 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 0, i32 2), align 8
  %47 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 1), align 4
  %48 = add i32 %47, %46
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %45, i32 %48) #10
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 3), align 4
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 0) #10
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 4), align 16
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 0) #10
  %54 = add i32 %51, %39
  %55 = add i32 %54, %49
  %56 = add i32 %55, %53
  br label %57

57:                                               ; preds = %43, %38
  %58 = phi i32 [ %56, %43 ], [ %39, %38 ]
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 0) #10
  %60 = tail call i32 @llvm.usub.sat.i32(i32 %17, i32 %59) #10
  br label %61

61:                                               ; preds = %57, %1
  %62 = phi i32 [ %17, %1 ], [ %60, %57 ]
  %63 = add i32 %62, 1
  %64 = getelementptr inbounds %struct.dirty_throttle_control, ptr %4, i32 0, i32 2
  store i32 %63, ptr %64, align 4
  %65 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 0) #10
  %67 = getelementptr inbounds %struct.dirty_throttle_control, ptr %4, i32 0, i32 3
  store i32 %66, ptr %67, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %4)
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.dirty_throttle_control, ptr %4, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %68, %70
  br i1 %71, label %129, label %72

72:                                               ; preds = %61
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr inbounds %struct.bdi_writeback, ptr %73, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !11
  call void @fprop_fraction_percpu(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 1), ptr noundef %74, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %75 = load i32, ptr @bdi_min_ratio, align 4
  %76 = sub i32 100, %75
  %77 = mul i32 %76, %70
  %78 = udiv i32 %77, 100
  %79 = zext i32 %78 to i64
  %80 = load i32, ptr %2, align 4
  %81 = zext i32 %80 to i64
  %82 = mul nuw nsw i64 %79, %81
  %83 = load i32, ptr %3, align 4
  %84 = icmp ult i64 %82, 4294967296
  br i1 %84, label %85, label %89, !prof !16

85:                                               ; preds = %72
  %86 = trunc i64 %82 to i32
  %87 = udiv i32 %86, %83
  %88 = zext i32 %87 to i64
  br label %92

89:                                               ; preds = %72
  %90 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %83, i64 %82) #11, !srcloc !17
  %91 = extractvalue { i64, i64 } %90, 1
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i64 [ %88, %85 ], [ %91, %89 ]
  %94 = load ptr, ptr %73, align 8
  %95 = getelementptr inbounds %struct.backing_dev_info, ptr %94, i32 0, i32 7
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.backing_dev_info, ptr %94, i32 0, i32 8
  %98 = load i32, ptr %97, align 8
  %99 = mul i32 %96, %70
  %100 = udiv i32 %99, 100
  %101 = zext i32 %100 to i64
  %102 = add i64 %93, %101
  %103 = mul i32 %98, %70
  %104 = udiv i32 %103, 100
  %105 = zext i32 %104 to i64
  %106 = icmp ugt i64 %102, %105
  %107 = trunc i64 %102 to i32
  %108 = select i1 %106, i32 %104, i32 %107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %109 = load i32, ptr @nr_cpu_ids, align 4
  %110 = icmp eq i32 %109, 0
  %111 = call i32 @llvm.ctlz.i32(i32 %109, i1 false) #10, !range !13
  %112 = mul nsw i32 %111, -8
  %113 = add nsw i32 %112, 256
  %114 = select i1 %110, i32 0, i32 %113
  %115 = shl i32 %109, 1
  %116 = mul i32 %115, %114
  %117 = icmp ult i32 %108, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %92
  %119 = getelementptr %struct.bdi_writeback, ptr %0, i32 0, i32 9, i32 0
  %120 = call i64 @__percpu_counter_sum(ptr noundef %119) #10
  br label %124

121:                                              ; preds = %92
  %122 = getelementptr %struct.bdi_writeback, ptr %0, i32 0, i32 9, i32 0, i32 1
  %123 = load volatile i64, ptr %122, align 8
  br label %124

124:                                              ; preds = %121, %118
  %125 = phi i64 [ %123, %121 ], [ %120, %118 ]
  %126 = call i64 @llvm.smax.i64(i64 %125, i64 0) #10
  %127 = trunc i64 %126 to i32
  %128 = icmp ult i32 %108, %127
  br label %129

129:                                              ; preds = %124, %61
  %130 = phi i1 [ true, %61 ], [ %128, %124 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret i1 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dirty_writeback_centisecs_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load i32, ptr @dirty_writeback_interval, align 4
  %7 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %1, 0
  %10 = load i32, ptr @dirty_writeback_interval, align 4
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %9, %8
  %13 = select i1 %12, i1 true, i1 %11
  %14 = icmp eq i32 %10, %6
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  tail call void @wakeup_flusher_threads(i32 noundef 3) #10
  br label %17

17:                                               ; preds = %16, %5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @laptop_mode_timer_fn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -532
  tail call void @wakeup_flusher_threads_bdi(ptr noundef %2, i32 noundef 4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads_bdi(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @laptop_io_completion(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 17
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = load i32, ptr @laptop_mode, align 4
  %5 = add i32 %4, %3
  %6 = tail call i32 @mod_timer(ptr noundef %2, i32 noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @laptop_sync_completion() local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %1 = load volatile ptr, ptr @bdi_list, align 4
  %2 = icmp eq ptr %1, @bdi_list
  br i1 %2, label %9, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %7, %3 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 512
  %6 = tail call i32 @del_timer(ptr noundef %5) #10
  %7 = load volatile ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, @bdi_list
  br i1 %8, label %9, label %3

9:                                                ; preds = %3, %0
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @page_writeback_init() local_unnamed_addr #5 section ".init.text" {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @global_wb_domain, i8 0, i64 80, i1 false) #10
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 2), ptr noundef nonnull @writeout_period, i32 noundef 524288, ptr noundef null, ptr noundef null) #10
  %1 = load volatile i32, ptr @jiffies, align 64
  store i32 %1, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 4), align 8
  %2 = tail call i32 @fprop_global_init(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 1), i32 noundef 3264) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !16

4:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2102, 0\0A.popsection", ""() #10, !srcloc !35
  unreachable

5:                                                ; preds = %0
  %6 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @page_writeback_cpu_online, ptr noundef null, i1 noundef zeroext false) #10
  %7 = tail call i32 @__cpuhp_setup_state(i32 noundef 13, ptr noundef nonnull @.str.1, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @page_writeback_cpu_online, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @page_writeback_cpu_online(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !11
  call void @global_dirty_limits(ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %5 = load volatile i32, ptr @__num_online_cpus, align 4
  %6 = shl i32 %5, 5
  %7 = udiv i32 %4, %6
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 16) #10
  store i32 %8, ptr @ratelimit_pages, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tag_pages_for_writeback(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %7, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %11, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #10
  %12 = call ptr @xas_find_marked(ptr noundef nonnull %4, i32 noundef %2, i32 noundef 0) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %54, %3
  %15 = phi i32 [ %16, %54 ], [ 0, %3 ]
  call void @xas_set_mark(ptr noundef nonnull %4, i32 noundef 2) #10
  %16 = add i32 %15, 1
  %17 = and i32 %16, 4095
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  call void @xas_pause(ptr noundef nonnull %4) #10
  %20 = load ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %23 = call i32 @__cond_resched() #10
  %24 = load ptr, ptr %4, align 4
  call void @_raw_spin_lock_irq(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %19, %14
  %26 = load ptr, ptr %9, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  %30 = icmp eq ptr %26, null
  %31 = or i1 %30, %29
  br i1 %31, label %52, label %32, !prof !14

32:                                               ; preds = %25
  %33 = load i8, ptr %26, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %52, !prof !16

35:                                               ; preds = %32
  %36 = load i8, ptr %8, align 2
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.xa_node, ptr %26, i32 0, i32 8
  %40 = call i32 @_find_next_bit_le(ptr noundef %39, i32 noundef 64, i32 noundef %38) #10
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr %8, align 2
  %42 = load i32, ptr %6, align 4
  %43 = and i32 %42, -64
  %44 = add i32 %43, %40
  store i32 %44, ptr %6, align 4
  %45 = icmp ugt i32 %44, %2
  br i1 %45, label %57, label %46

46:                                               ; preds = %35
  %47 = icmp eq i32 %40, 64
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = getelementptr %struct.xa_node, ptr %26, i32 0, i32 7, i32 %40
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %46, %32, %25
  %53 = call ptr @xas_find_marked(ptr noundef nonnull %4, i32 noundef %2, i32 noundef 0) #10
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi ptr [ %50, %48 ], [ %53, %52 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %14

57:                                               ; preds = %54, %35, %3
  %58 = load ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %59 = load i16, ptr %58, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %58, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_marked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_set_mark(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @write_cache_pages(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.pagevec, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i8 0, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pagevec, ptr %5, i32 0, i32 1
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %6, align 4
  br label %27

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = lshr i64 %17, 12
  %19 = trunc i64 %18 to i32
  store i32 %19, ptr %6, align 4
  %20 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = lshr i64 %21, 12
  %23 = trunc i64 %22 to i32
  %24 = icmp ne i64 %17, 0
  %25 = icmp ne i64 %21, 9223372036854775807
  %26 = select i1 %24, i1 true, i1 %25
  br label %27

27:                                               ; preds = %15, %12
  %28 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %29 = phi i32 [ -1, %12 ], [ %23, %15 ]
  %30 = phi i1 [ true, %12 ], [ %26, %15 ]
  %31 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = icmp ne i32 %32, 1
  %34 = and i16 %9, 4
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  tail call void @tag_pages_for_writeback(ptr noundef %0, i32 noundef %28, i32 noundef %29)
  br label %38

38:                                               ; preds = %37, %27
  %39 = phi i32 [ 2, %37 ], [ 0, %27 ]
  %40 = icmp ugt i32 %28, %29
  br i1 %40, label %190, label %41

41:                                               ; preds = %38
  %42 = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %6, i32 noundef %29, i32 noundef %39) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %190, label %47

44:                                               ; preds = %185
  %45 = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %6, i32 noundef %29, i32 noundef %39) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %190, label %47

47:                                               ; preds = %44, %41
  %48 = phi i32 [ %45, %44 ], [ %42, %41 ]
  %49 = phi i32 [ %180, %44 ], [ %28, %41 ]
  %50 = phi i32 [ %181, %44 ], [ 0, %41 ]
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %52, label %177

52:                                               ; preds = %173, %47
  %53 = phi i32 [ %174, %173 ], [ %50, %47 ]
  %54 = phi i32 [ %175, %173 ], [ 0, %47 ]
  %55 = getelementptr %struct.pagevec, ptr %5, i32 0, i32 2, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !16

63:                                               ; preds = %52
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %52
  %66 = ptrtoint ptr %56 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #10, !srcloc !25
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #10, !srcloc !38
  %75 = extractvalue { i32, i32, i32 } %74, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !39
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %67
  call void @__folio_lock(ptr noundef %69) #10
  br label %79

79:                                               ; preds = %78, %73
  %80 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %0
  br i1 %82, label %84, label %83, !prof !16

83:                                               ; preds = %131, %112, %92, %79
  call void @unlock_page(ptr noundef %56) #10
  br label %173

84:                                               ; preds = %79
  %85 = load volatile i32, ptr %59, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88, !prof !16

88:                                               ; preds = %84
  %89 = add i32 %85, -1
  br label %92

90:                                               ; preds = %84
  %91 = ptrtoint ptr %56 to i32
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = inttoptr i32 %93 to ptr
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %83, label %98

98:                                               ; preds = %92
  %99 = load volatile i32, ptr %59, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102, !prof !16

102:                                              ; preds = %98
  %103 = add i32 %99, -1
  br label %106

104:                                              ; preds = %98
  %105 = ptrtoint ptr %56 to i32
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = inttoptr i32 %107 to ptr
  %109 = load volatile i32, ptr %108, align 4
  %110 = and i32 %109, 32768
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = load i32, ptr %31, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %83, label %115

115:                                              ; preds = %112
  call void @wait_on_page_writeback(ptr noundef %56) #10
  br label %116

116:                                              ; preds = %115, %106
  %117 = load volatile i32, ptr %59, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120, !prof !16

120:                                              ; preds = %116
  %121 = add i32 %117, -1
  br label %124

122:                                              ; preds = %116
  %123 = ptrtoint ptr %56 to i32
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = inttoptr i32 %125 to ptr
  %127 = load volatile i32, ptr %126, align 4
  %128 = and i32 %127, 32768
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130, !prof !16

130:                                              ; preds = %124
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2250, 0\0A.popsection", ""() #10, !srcloc !40
  unreachable

131:                                              ; preds = %124
  %132 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %56) #10
  br i1 %132, label %133, label %83

133:                                              ; preds = %131
  %134 = load ptr, ptr %0, align 4
  %135 = call ptr @inode_to_bdi(ptr noundef %134) #10
  %136 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wbc_writepage, i32 0, i32 1), align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = tail call ptr @llvm.thread.pointer() #10
  %140 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 5
  %143 = getelementptr i32, ptr @__cpu_online_mask, i32 %142
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %141, 31
  %146 = shl nuw i32 1, %145
  %147 = and i32 %146, %144
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  %150 = call i32 @__traceiter_wbc_writepage(ptr noundef null, ptr noundef %1, ptr noundef %135) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  br label %151

151:                                              ; preds = %149, %138, %133
  %152 = call i32 %2(ptr noundef %56, ptr noundef %1, ptr noundef %3) #10
  switch i32 %152, label %154 [
    i32 0, label %165
    i32 524288, label %153
  ], !prof !43

153:                                              ; preds = %151
  call void @unlock_page(ptr noundef %56) #10
  br label %161

154:                                              ; preds = %151
  %155 = load i32, ptr %31, align 8
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1, i32 0, i32 2
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, 1
  br label %177

161:                                              ; preds = %154, %153
  %162 = phi i32 [ 0, %153 ], [ %152, %154 ]
  %163 = icmp eq i32 %53, 0
  %164 = select i1 %163, i32 %162, i32 %53
  br label %165

165:                                              ; preds = %161, %151
  %166 = phi i32 [ %53, %151 ], [ %164, %161 ]
  %167 = load i32, ptr %1, align 8
  %168 = add i32 %167, -1
  store i32 %168, ptr %1, align 8
  %169 = icmp slt i32 %168, 1
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, ptr %31, align 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170, %165, %83
  %174 = phi i32 [ %53, %83 ], [ %166, %170 ], [ %166, %165 ]
  %175 = add nuw nsw i32 %54, 1
  %176 = icmp eq i32 %175, %48
  br i1 %176, label %177, label %52

177:                                              ; preds = %173, %170, %157, %47
  %178 = phi i1 [ true, %47 ], [ false, %157 ], [ true, %173 ], [ false, %170 ]
  %179 = phi i32 [ 0, %47 ], [ 1, %157 ], [ 0, %173 ], [ 1, %170 ]
  %180 = phi i32 [ %49, %47 ], [ %160, %157 ], [ %58, %170 ], [ %58, %173 ]
  %181 = phi i32 [ %50, %47 ], [ %152, %157 ], [ %174, %173 ], [ %166, %170 ]
  %182 = load i8, ptr %5, align 4
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %177
  call void @__pagevec_release(ptr noundef nonnull %5) #10
  br label %185

185:                                              ; preds = %184, %177
  %186 = call i32 @__cond_resched() #10
  %187 = load i32, ptr %6, align 4
  %188 = icmp ule i32 %187, %29
  %189 = select i1 %178, i1 %188, i1 false
  br i1 %189, label %44, label %190

190:                                              ; preds = %185, %44, %41, %38
  %191 = phi i32 [ 0, %38 ], [ 0, %41 ], [ %179, %185 ], [ %179, %44 ]
  %192 = phi i32 [ %28, %38 ], [ %28, %41 ], [ %180, %185 ], [ %180, %44 ]
  %193 = phi i32 [ 0, %38 ], [ 0, %41 ], [ %181, %185 ], [ %181, %44 ]
  %194 = load i16, ptr %8, align 4
  %195 = and i16 %194, 16
  %196 = icmp eq i16 %195, 0
  %197 = icmp ne i32 %191, 0
  %198 = or i1 %197, %196
  %199 = select i1 %198, i32 %192, i32 0
  br i1 %196, label %200, label %204

200:                                              ; preds = %190
  br i1 %30, label %206, label %201

201:                                              ; preds = %200
  %202 = load i32, ptr %1, align 8
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201, %190
  %205 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 8
  store i32 %199, ptr %205, align 4
  br label %206

206:                                              ; preds = %204, %201, %200
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret i32 %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_writepages(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.blk_plug, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  call void @blk_start_plug(ptr noundef nonnull %3) #10
  %9 = call i32 @write_cache_pages(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__writepage, ptr noundef %0)
  call void @blk_finish_plug(ptr noundef nonnull %3) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9, !prof !16

9:                                                ; preds = %3
  tail call void @__filemap_set_wb_err(ptr noundef %2, i32 noundef %7) #10
  %10 = load ptr, ptr %2, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 44
  %16 = tail call i32 @errseq_set(ptr noundef %15, i32 noundef %7) #10
  br label %17

17:                                               ; preds = %12, %9
  %18 = icmp eq i32 %7, -28
  %19 = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 10
  %20 = zext i1 %18 to i32
  tail call void @_set_bit(i32 noundef %20, ptr noundef %19) #10
  br label %21

21:                                               ; preds = %17, %3
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_writepages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dirty_throttle_control, align 4
  %4 = alloca %struct.blk_plug, align 4
  %5 = load i32, ptr %1, align 8
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %68, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = tail call ptr @inode_to_bdi(ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.backing_dev_info, ptr %9, i32 0, i32 11
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr inbounds %struct.backing_dev_info, ptr %9, i32 0, i32 11, i32 11
  %13 = load volatile i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp ugt i32 %14, 100
  br i1 %15, label %16, label %34

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.backing_dev_info, ptr %9, i32 0, i32 11, i32 8
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.backing_dev_info, ptr %9, i32 0, i32 11, i32 7
  tail call void @_raw_spin_lock(ptr noundef %21) #10
  %22 = getelementptr %struct.backing_dev_info, ptr %9, i32 0, i32 11, i32 9, i32 2, i32 1
  %23 = load volatile i64, ptr %22, align 8
  %24 = tail call i64 @llvm.smax.i64(i64 %23, i64 0) #10
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.backing_dev_info, ptr %9, i32 0, i32 11, i32 12
  store i32 %25, ptr %26, align 8
  %27 = getelementptr %struct.backing_dev_info, ptr %9, i32 0, i32 11, i32 9, i32 3, i32 1
  %28 = load volatile i64, ptr %27, align 8
  %29 = tail call i64 @llvm.smax.i64(i64 %28, i64 0) #10
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.backing_dev_info, ptr %9, i32 0, i32 11, i32 13
  store i32 %30, ptr %31, align 4
  store volatile i32 %11, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %32 = load i16, ptr %21, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %34

34:                                               ; preds = %20, %16, %7
  %35 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %36 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  br label %37

37:                                               ; preds = %57, %34
  %38 = load ptr, ptr %36, align 4
  %39 = getelementptr inbounds %struct.address_space_operations, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 %40(ptr noundef %0, ptr noundef %1) #10
  br label %51

44:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10, !annotation !11
  %45 = load ptr, ptr %38, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  call void @blk_start_plug(ptr noundef nonnull %4) #10
  %48 = call i32 @write_cache_pages(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__writepage, ptr noundef %0) #10
  call void @blk_finish_plug(ptr noundef nonnull %4) #10
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i32 [ %48, %47 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi i32 [ %43, %42 ], [ %50, %49 ]
  %53 = icmp eq i32 %52, -12
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, ptr %35, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @reclaim_throttle(ptr noundef nonnull @contig_page_data, i32 noundef 0) #10
  br label %37

58:                                               ; preds = %54, %51
  %59 = load volatile i32, ptr %12, align 4
  %60 = add i32 %59, 20
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = sub i32 %60, %61
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %65 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %65, i8 0, i64 32, i1 false) #10
  store ptr %10, ptr %3, align 4
  %66 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 1
  %67 = getelementptr inbounds %struct.backing_dev_info, ptr %9, i32 0, i32 11, i32 18
  store ptr %67, ptr %66, align 4
  call fastcc void @__wb_update_bandwidth(ptr noundef nonnull %3, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %68

68:                                               ; preds = %64, %58, %2
  %69 = phi i32 [ 0, %2 ], [ %52, %64 ], [ %52, %58 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reclaim_throttle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @folio_write_one(ptr noundef %0) #0 {
  %2 = alloca %struct.writeback_control, align 8
  %3 = getelementptr inbounds %struct.anon.98, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ 1, %1 ]
  store i32 %12, ptr %2, align 8
  %13 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 4
  store i32 1, ptr %13, align 8
  %14 = load volatile i32, ptr %0, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !14

17:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2410, 0\0A.popsection", ""() #10, !srcloc !44
  unreachable

18:                                               ; preds = %11
  %19 = load volatile i32, ptr %0, align 4
  %20 = and i32 %19, 32768
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %39, %18
  %23 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_folio_wait_writeback, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #10
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %38 = tail call i32 @__traceiter_folio_wait_writeback(ptr noundef null, ptr noundef %0, ptr noundef %23) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  br label %39

39:                                               ; preds = %37, %26, %22
  tail call void @folio_wait_bit(ptr noundef %0, i32 noundef 15) #10
  %40 = load volatile i32, ptr %0, align 4
  %41 = and i32 %40, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %22

43:                                               ; preds = %39, %18
  %44 = tail call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %0)
  br i1 %44, label %45, label %83

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #10, !srcloc !25
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #10, !srcloc !47
  %48 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 %50(ptr noundef %0, ptr noundef nonnull %2) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %45
  %54 = load volatile i32, ptr %0, align 4
  %55 = and i32 %54, 32768
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %74, %53
  %58 = call ptr @folio_mapping(ptr noundef %0) #10
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_folio_wait_writeback, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = tail call ptr @llvm.thread.pointer() #10
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %73 = call i32 @__traceiter_folio_wait_writeback(ptr noundef null, ptr noundef %0, ptr noundef %58) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  br label %74

74:                                               ; preds = %72, %61, %57
  call void @folio_wait_bit(ptr noundef %0, i32 noundef 15) #10
  %75 = load volatile i32, ptr %0, align 4
  %76 = and i32 %75, 32768
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %57

78:                                               ; preds = %74, %53, %45
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #10, !srcloc !25
  %79 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #10, !srcloc !49
  %80 = extractvalue { i32, i32 } %79, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !50
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  call void @__put_page(ptr noundef %0) #10
  br label %84

83:                                               ; preds = %43
  tail call void @folio_unlock(ptr noundef %0) #10
  br label %85

84:                                               ; preds = %82, %78
  br i1 %52, label %85, label %87

85:                                               ; preds = %84, %83
  %86 = call i32 @filemap_check_errors(ptr noundef %4) #10
  br label %87

87:                                               ; preds = %85, %84
  %88 = phi i32 [ %51, %84 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_wait_writeback(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 32768
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %22, %1
  %6 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_folio_wait_writeback, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %21 = tail call i32 @__traceiter_folio_wait_writeback(ptr noundef null, ptr noundef %0, ptr noundef %6) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  br label %22

22:                                               ; preds = %20, %9, %5
  tail call void @folio_wait_bit(ptr noundef %0, i32 noundef 15) #10
  %23 = load volatile i32, ptr %0, align 4
  %24 = and i32 %23, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %5

26:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @folio_clear_dirty_for_io(ptr noundef %0) #0 {
  %2 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %59, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4
  %6 = tail call ptr @inode_to_bdi(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %59, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %2, align 4
  %13 = tail call i32 @folio_mkclean(ptr noundef %0) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %17 = icmp eq ptr %16, null
  %18 = load volatile i32, ptr %0, align 4
  br i1 %17, label %29, label %19, !prof !14

19:                                               ; preds = %15
  %20 = and i32 %18, 262144
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %0) #10
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.address_space_operations, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0) #10
  br label %34

29:                                               ; preds = %15
  %30 = and i32 %18, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %0) #10
  br label %34

34:                                               ; preds = %32, %29, %23, %11
  %35 = tail call ptr @inode_to_bdi(ptr noundef %12) #10
  %36 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %0) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %34
  %39 = load volatile i32, ptr %0, align 4
  %40 = and i32 %39, 65536
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %44, %42 ], [ 1, %38 ]
  %47 = sub i32 0, %46
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 20, i32 noundef %47) #10
  %48 = load i32, ptr %0, align 4
  %49 = lshr i32 %48, 30
  %50 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %49
  tail call void @mod_zone_page_state(ptr noundef %50, i32 noundef 6, i32 noundef %47) #10
  %51 = sext i32 %47 to i64
  %52 = load i32, ptr @nr_cpu_ids, align 4
  %53 = icmp eq i32 %52, 0
  %54 = tail call i32 @llvm.ctlz.i32(i32 %52, i1 false) #10, !range !13
  %55 = getelementptr %struct.backing_dev_info, ptr %35, i32 0, i32 11, i32 9
  %56 = mul nsw i32 %54, -8
  %57 = add nsw i32 %56, 256
  %58 = select i1 %53, i32 0, i32 %57
  tail call void @percpu_counter_add_batch(ptr noundef %55, i64 noundef %51, i32 noundef %58) #10
  br label %62

59:                                               ; preds = %4, %1
  %60 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %0) #10
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %59, %45, %34
  %63 = phi i1 [ %61, %59 ], [ true, %45 ], [ false, %34 ]
  ret i1 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_check_errors(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__set_page_dirty_no_writeback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !16

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %2, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !16

20:                                               ; preds = %16
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %16
  %23 = ptrtoint ptr %0 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %26) #10
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %24, %10
  %31 = phi i32 [ %29, %24 ], [ 0, %10 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_account_cleaned(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = tail call ptr @inode_to_bdi(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.backing_dev_info, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = load volatile i32, ptr %0, align 4
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ %16, %14 ], [ 1, %10 ]
  %19 = sub i32 0, %18
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 20, i32 noundef %19) #10
  %20 = load i32, ptr %0, align 4
  %21 = lshr i32 %20, 30
  %22 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %21
  tail call void @mod_zone_page_state(ptr noundef %22, i32 noundef 6, i32 noundef %19) #10
  %23 = sext i32 %19 to i64
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp eq i32 %24, 0
  %26 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 false) #10, !range !13
  %27 = getelementptr %struct.bdi_writeback, ptr %2, i32 0, i32 9, i32 0
  %28 = mul nsw i32 %26, -8
  %29 = add nsw i32 %28, 256
  %30 = select i1 %25, i32 0, i32 %29
  tail call void @percpu_counter_add_batch(ptr noundef %27, i64 noundef %23, i32 noundef %30) #10
  br label %31

31:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__folio_mark_dirty(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.anon.98, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %98, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  %12 = load volatile i32, ptr %0, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !51
  br label %19

16:                                               ; preds = %11
  %17 = load i1, ptr @__folio_mark_dirty.__already_done, align 1
  br i1 %17, label %19, label %18, !prof !16

18:                                               ; preds = %16
  store i1 true, ptr @__folio_mark_dirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2512, i32 noundef 9, ptr noundef null) #10
  br label %19

19:                                               ; preds = %18, %16, %15, %9
  %20 = load ptr, ptr %1, align 4
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_folio, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #10
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %35 = tail call i32 @__traceiter_writeback_dirty_folio(ptr noundef null, ptr noundef %0, ptr noundef %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %36 = load ptr, ptr %1, align 4
  br label %37

37:                                               ; preds = %34, %23, %19
  %38 = phi ptr [ %20, %19 ], [ %20, %23 ], [ %36, %34 ]
  %39 = tail call ptr @inode_to_bdi(ptr noundef %38) #10
  %40 = getelementptr inbounds %struct.backing_dev_info, ptr %39, i32 0, i32 6
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %83, label %44

44:                                               ; preds = %37
  %45 = load volatile i32, ptr %0, align 4
  %46 = and i32 %45, 65536
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i32 [ %50, %48 ], [ 1, %44 ]
  %53 = tail call ptr @inode_to_bdi(ptr noundef %20) #10
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 20, i32 noundef %52) #10
  %54 = load i32, ptr %0, align 4
  %55 = lshr i32 %54, 30
  %56 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %55
  tail call void @__mod_zone_page_state(ptr noundef %56, i32 noundef 6, i32 noundef %52) #10
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 31, i32 noundef %52) #10
  %57 = sext i32 %52 to i64
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %59 = icmp eq i32 %58, 0
  %60 = tail call i32 @llvm.ctlz.i32(i32 %58, i1 false) #10, !range !13
  %61 = getelementptr %struct.backing_dev_info, ptr %53, i32 0, i32 11, i32 9
  %62 = mul nsw i32 %60, -8
  %63 = add nsw i32 %62, 256
  %64 = select i1 %59, i32 0, i32 %63
  tail call void @percpu_counter_add_batch(ptr noundef %61, i64 noundef %57, i32 noundef %64) #10
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %66 = icmp eq i32 %65, 0
  %67 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 false) #10, !range !13
  %68 = getelementptr %struct.backing_dev_info, ptr %53, i32 0, i32 11, i32 9, i32 2
  %69 = mul nsw i32 %67, -8
  %70 = add nsw i32 %69, 256
  %71 = select i1 %66, i32 0, i32 %70
  tail call void @percpu_counter_add_batch(ptr noundef %68, i64 noundef %57, i32 noundef %71) #10
  %72 = tail call ptr @llvm.thread.pointer() #10
  %73 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 140
  %74 = load i32, ptr %73, align 8
  %75 = add i32 %74, %52
  store i32 %75, ptr %73, align 8
  %76 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %77 = inttoptr i32 %76 to ptr
  %78 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %77) #8, !srcloc !29
  %79 = add i32 %78, ptrtoint (ptr @bdp_ratelimits to i32)
  %80 = inttoptr i32 %79 to ptr
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %52
  store i32 %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %51, %37
  %84 = load volatile i32, ptr %0, align 4
  %85 = and i32 %84, 524288
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load volatile i32, ptr %0, align 4
  %89 = and i32 %88, 1024
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91, !prof !16

91:                                               ; preds = %87
  %92 = tail call i32 @__page_file_index(ptr noundef %0) #10
  br label %96

93:                                               ; preds = %87, %83
  %94 = getelementptr inbounds %struct.anon.98, ptr %0, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %93, %91
  %97 = phi i32 [ %92, %91 ], [ %95, %93 ]
  tail call void @__xa_set_mark(ptr noundef %4, i32 noundef %97, i32 noundef 0) #10
  br label %98

98:                                               ; preds = %96, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xa_set_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @filemap_dirty_folio(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %1) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load volatile i32, ptr %1, align 4
  %7 = lshr i32 %6, 13
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  tail call void @__folio_mark_dirty(ptr noundef %1, ptr noundef %0, i32 noundef %9)
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @__mark_inode_dirty(ptr noundef nonnull %10, i32 noundef 4) #10
  br label %13

13:                                               ; preds = %12, %5, %2
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_account_redirty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon.98, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call ptr @inode_to_bdi(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %3, align 4
  %14 = load volatile i32, ptr %0, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %19, %17 ], [ 1, %12 ]
  %22 = tail call ptr @inode_to_bdi(ptr noundef %13) #10
  %23 = tail call ptr @llvm.thread.pointer() #10
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 140
  %25 = load i32, ptr %24, align 8
  %26 = sub i32 %25, %21
  store i32 %26, ptr %24, align 8
  %27 = sub i32 0, %21
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 31, i32 noundef %27) #10
  %28 = sext i32 %27 to i64
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = icmp eq i32 %29, 0
  %31 = tail call i32 @llvm.ctlz.i32(i32 %29, i1 false) #10, !range !13
  %32 = getelementptr %struct.backing_dev_info, ptr %22, i32 0, i32 11, i32 9, i32 2
  %33 = mul nsw i32 %31, -8
  %34 = add nsw i32 %33, 256
  %35 = select i1 %30, i32 0, i32 %34
  tail call void @percpu_counter_add_batch(ptr noundef %32, i64 noundef %28, i32 noundef %35) #10
  br label %36

36:                                               ; preds = %20, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @folio_redirty_for_writepage(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.page, ptr %1, i32 1, i32 1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 1, %2 ]
  %11 = getelementptr inbounds %struct.writeback_control, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.anon.98, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %1) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = load volatile i32, ptr %1, align 4
  %20 = lshr i32 %19, 13
  %21 = and i32 %20, 1
  %22 = xor i32 %21, 1
  tail call void @__folio_mark_dirty(ptr noundef %1, ptr noundef %15, i32 noundef %22) #10
  %23 = load ptr, ptr %15, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @__mark_inode_dirty(ptr noundef nonnull %23, i32 noundef 4) #10
  br label %26

26:                                               ; preds = %25, %18, %9
  tail call void @folio_account_redirty(ptr noundef %1)
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @folio_mark_dirty(ptr noundef %0) #0 {
  %2 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  %4 = load volatile i32, ptr %0, align 4
  br i1 %3, label %16, label %5, !prof !14

5:                                                ; preds = %1
  %6 = and i32 %4, 262144
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.address_space_operations, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0) #10
  %15 = icmp ne i32 %14, 0
  br label %23

16:                                               ; preds = %1
  %17 = and i32 %4, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %0) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %19, %9
  %24 = phi i1 [ %15, %9 ], [ false, %22 ], [ true, %19 ]
  ret i1 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_page_dirty_lock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !16

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !25
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #10, !srcloc !38
  %18 = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !39
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %10
  tail call void @__folio_lock(ptr noundef %12) #10
  br label %22

22:                                               ; preds = %21, %16
  %23 = tail call zeroext i1 @set_page_dirty(ptr noundef %0) #10
  %24 = zext i1 %23 to i32
  tail call void @unlock_page(ptr noundef %0) #10
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__folio_cancel_dirty(ptr noundef %0) #0 {
  %2 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @inode_to_bdi(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.backing_dev_info, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = tail call ptr @inode_to_bdi(ptr noundef %10) #10
  %12 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.backing_dev_info, ptr %11, i32 0, i32 11
  tail call void @folio_account_cleaned(ptr noundef %0, ptr noundef %2, ptr noundef %15)
  br label %17

16:                                               ; preds = %1
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %0) #10
  br label %17

17:                                               ; preds = %16, %14, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_mkclean(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__folio_end_writeback(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ 1, %1 ]
  %10 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %96, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 10
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %96

17:                                               ; preds = %12
  %18 = load ptr, ptr %10, align 4
  %19 = tail call ptr @inode_to_bdi(ptr noundef %18) #10
  %20 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 1
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #10
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %0) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %86, label %24

24:                                               ; preds = %17
  %25 = load volatile i32, ptr %0, align 4
  %26 = and i32 %25, 524288
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load volatile i32, ptr %0, align 4
  %30 = and i32 %29, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !16

32:                                               ; preds = %28
  %33 = tail call i32 @__page_file_index(ptr noundef %0) #10
  br label %37

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds %struct.anon.98, ptr %0, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i32 [ %33, %32 ], [ %36, %34 ]
  tail call void @__xa_clear_mark(ptr noundef %20, i32 noundef %38, i32 noundef 1) #10
  %39 = getelementptr inbounds %struct.backing_dev_info, ptr %19, i32 0, i32 6
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %37
  %44 = tail call ptr @inode_to_bdi(ptr noundef %18) #10
  %45 = getelementptr inbounds %struct.backing_dev_info, ptr %44, i32 0, i32 11
  %46 = sub i32 0, %9
  %47 = sext i32 %46 to i64
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %49 = icmp eq i32 %48, 0
  %50 = tail call i32 @llvm.ctlz.i32(i32 %48, i1 false) #10, !range !13
  %51 = getelementptr %struct.backing_dev_info, ptr %44, i32 0, i32 11, i32 9, i32 1
  %52 = mul nsw i32 %50, -8
  %53 = add nsw i32 %52, 256
  %54 = select i1 %49, i32 0, i32 %53
  tail call void @percpu_counter_add_batch(ptr noundef %51, i64 noundef %47, i32 noundef %54) #10
  %55 = sext i32 %9 to i64
  %56 = load i32, ptr @nr_cpu_ids, align 4
  %57 = icmp eq i32 %56, 0
  %58 = tail call i32 @llvm.ctlz.i32(i32 %56, i1 false) #10, !range !13
  %59 = getelementptr %struct.backing_dev_info, ptr %44, i32 0, i32 11, i32 9, i32 3
  %60 = mul nsw i32 %58, -8
  %61 = add nsw i32 %60, 256
  %62 = select i1 %57, i32 0, i32 %61
  tail call void @percpu_counter_add_batch(ptr noundef %59, i64 noundef %55, i32 noundef %62) #10
  %63 = getelementptr inbounds %struct.backing_dev_info, ptr %44, i32 0, i32 11, i32 18
  %64 = load ptr, ptr %45, align 8
  %65 = getelementptr inbounds %struct.backing_dev_info, ptr %64, i32 0, i32 9
  %66 = load i32, ptr %65, align 4
  tail call void @__fprop_add_percpu_max(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 1), ptr noundef %63, i32 noundef %66, i32 noundef %9) #10
  %67 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 3), align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75, !prof !14

69:                                               ; preds = %43
  %70 = load volatile i32, ptr @jiffies, align 64
  %71 = add i32 %70, 300
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 1, i32 %71
  store i32 %73, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 3), align 4
  %74 = tail call i32 @mod_timer(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 2), i32 noundef %73) #10
  br label %75

75:                                               ; preds = %69, %43
  %76 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 1, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 67108864
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.backing_dev_info, ptr %44, i32 0, i32 11, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #10, !srcloc !25
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #10, !srcloc !54
  %83 = load ptr, ptr @bdi_wq, align 4
  %84 = getelementptr inbounds %struct.backing_dev_info, ptr %44, i32 0, i32 11, i32 24
  %85 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %83, ptr noundef %84, i32 noundef 20) #10
  br label %86

86:                                               ; preds = %80, %75, %37, %17
  %87 = load ptr, ptr %10, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 1, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 67108864
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  tail call void @sb_clear_inode_writeback(ptr noundef nonnull %87) #10
  br label %95

95:                                               ; preds = %94, %89, %86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #10
  br i1 %23, label %104, label %99

96:                                               ; preds = %12, %8
  %97 = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %0) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96, %95
  %100 = sub i32 0, %9
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 21, i32 noundef %100) #10
  %101 = load i32, ptr %0, align 4
  %102 = lshr i32 %101, 30
  %103 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %102
  tail call void @mod_zone_page_state(ptr noundef %103, i32 noundef 6, i32 noundef %100) #10
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 32, i32 noundef %9) #10
  br label %104

104:                                              ; preds = %99, %96, %95
  %105 = phi i1 [ false, %95 ], [ true, %99 ], [ false, %96 ]
  ret i1 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xa_clear_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sb_clear_inode_writeback(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__folio_start_writeback(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.xa_state, align 4
  %4 = load volatile i32, ptr %0, align 4
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ 1, %2 ]
  %12 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %82, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 10
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %20 = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 1
  store ptr %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  %22 = load volatile i32, ptr %0, align 4
  %23 = and i32 %22, 524288
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load volatile i32, ptr %0, align 4
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !16

29:                                               ; preds = %25
  %30 = tail call i32 @__page_file_index(ptr noundef %0) #10
  br label %34

31:                                               ; preds = %25, %19
  %32 = getelementptr inbounds %struct.anon.98, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %33, %31 ]
  store i32 %35, ptr %21, align 4
  %36 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %37 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %36, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %37, align 4
  %38 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  store ptr null, ptr %39, align 4
  %40 = load ptr, ptr %12, align 4
  %41 = tail call ptr @inode_to_bdi(ptr noundef %40) #10
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #10
  %43 = call ptr @xas_load(ptr noundef nonnull %3) #10
  %44 = call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %0) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 1, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 67108864
  %50 = icmp ne i32 %49, 0
  call void @xas_set_mark(ptr noundef nonnull %3, i32 noundef 1) #10
  %51 = getelementptr inbounds %struct.backing_dev_info, ptr %41, i32 0, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %46
  %56 = call ptr @inode_to_bdi(ptr noundef %40) #10
  %57 = sext i32 %11 to i64
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %59 = icmp eq i32 %58, 0
  %60 = call i32 @llvm.ctlz.i32(i32 %58, i1 false) #10, !range !13
  %61 = getelementptr %struct.backing_dev_info, ptr %56, i32 0, i32 11, i32 9, i32 1
  %62 = mul nsw i32 %60, -8
  %63 = add nsw i32 %62, 256
  %64 = select i1 %59, i32 0, i32 %63
  call void @percpu_counter_add_batch(ptr noundef %61, i64 noundef %57, i32 noundef %64) #10
  br i1 %50, label %73, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.backing_dev_info, ptr %56, i32 0, i32 11, i32 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #10, !srcloc !25
  %67 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #10, !srcloc !47
  br label %68

68:                                               ; preds = %65, %46
  %69 = load ptr, ptr %12, align 4
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, i1 true, i1 %50
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void @sb_mark_inode_writeback(ptr noundef nonnull %69) #10
  br label %73

73:                                               ; preds = %72, %68, %55, %34
  %74 = load volatile i32, ptr %0, align 4
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  call void @xas_clear_mark(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %78

78:                                               ; preds = %77, %73
  br i1 %1, label %80, label %79

79:                                               ; preds = %78
  call void @xas_clear_mark(ptr noundef nonnull %3, i32 noundef 2) #10
  br label %80

80:                                               ; preds = %79, %78
  %81 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %81, i32 noundef %42) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br i1 %45, label %85, label %89

82:                                               ; preds = %14, %10
  %83 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %0) #10
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82, %80
  call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 21, i32 noundef %11) #10
  %86 = load i32, ptr %0, align 4
  %87 = lshr i32 %86, 30
  %88 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %87
  call void @mod_zone_page_state(ptr noundef %88, i32 noundef 6, i32 noundef %11) #10
  br label %89

89:                                               ; preds = %85, %82, %80
  %90 = phi i1 [ true, %80 ], [ false, %85 ], [ true, %82 ]
  %91 = load volatile i32, ptr %0, align 4
  ret i1 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sb_mark_inode_writeback(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_clear_mark(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @folio_wait_writeback_killable(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %23, %1
  %3 = load volatile i32, ptr %0, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_folio_wait_writeback, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %22 = tail call i32 @__traceiter_folio_wait_writeback(ptr noundef null, ptr noundef %0, ptr noundef %7) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  br label %23

23:                                               ; preds = %21, %10, %6
  %24 = tail call i32 @folio_wait_bit_killable(ptr noundef %0, i32 noundef 15) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %2, label %26

26:                                               ; preds = %23, %2
  %27 = phi i32 [ -4, %23 ], [ 0, %2 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_wait_bit_killable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_wait_stable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon.98, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 11
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %1
  %12 = load volatile i32, ptr %0, align 4
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %32, %11
  %16 = tail call ptr @folio_mapping(ptr noundef %0) #10
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_folio_wait_writeback, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #10
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %31 = tail call i32 @__traceiter_folio_wait_writeback(ptr noundef null, ptr noundef %0, ptr noundef %16) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  br label %32

32:                                               ; preds = %30, %19, %15
  tail call void @folio_wait_bit(ptr noundef %0, i32 noundef 15) #10
  %33 = load volatile i32, ptr %0, align 4
  %34 = and i32 %33, 32768
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %15

36:                                               ; preds = %32, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_global_dirty_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fprop_add_percpu_max(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fprop_new_period(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fprop_fraction_percpu(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bdi_dirty_ratelimit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wb_dirty_limits(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !11
  %7 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @fprop_fraction_percpu(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 1), ptr noundef %8, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %9 = load i32, ptr @bdi_min_ratio, align 4
  %10 = sub i32 100, %9
  %11 = mul i32 %10, %6
  %12 = udiv i32 %11, 100
  %13 = zext i32 %12 to i64
  %14 = load i32, ptr %2, align 4
  %15 = zext i32 %14 to i64
  %16 = mul nuw nsw i64 %13, %15
  %17 = load i32, ptr %3, align 4
  %18 = icmp ult i64 %16, 4294967296
  br i1 %18, label %19, label %23, !prof !16

19:                                               ; preds = %1
  %20 = trunc i64 %16 to i32
  %21 = udiv i32 %20, %17
  %22 = zext i32 %21 to i64
  br label %26

23:                                               ; preds = %1
  %24 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %16) #11, !srcloc !17
  %25 = extractvalue { i64, i64 } %24, 1
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i64 [ %22, %19 ], [ %25, %23 ]
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.backing_dev_info, ptr %29, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.backing_dev_info, ptr %29, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  %34 = mul i32 %31, %6
  %35 = udiv i32 %34, 100
  %36 = zext i32 %35 to i64
  %37 = add i64 %27, %36
  %38 = mul i32 %33, %6
  %39 = udiv i32 %38, 100
  %40 = zext i32 %39 to i64
  %41 = icmp ugt i64 %37, %40
  %42 = trunc i64 %37 to i32
  %43 = select i1 %41, i32 %39, i32 %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %44 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 7
  store i32 %43, ptr %44, align 4
  %45 = load i32, ptr %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %26
  %48 = zext i32 %43 to i64
  %49 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = mul nuw i64 %51, %48
  %53 = icmp ult i64 %52, 4294967296
  br i1 %53, label %54, label %57, !prof !16

54:                                               ; preds = %47
  %55 = trunc i64 %52 to i32
  %56 = udiv i32 %55, %45
  br label %61

57:                                               ; preds = %47
  %58 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %52) #11, !srcloc !17
  %59 = extractvalue { i64, i64 } %58, 1
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %57, %54, %26
  %62 = phi i32 [ 0, %26 ], [ %56, %54 ], [ %60, %57 ]
  %63 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 8
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr @nr_cpu_ids, align 4
  %65 = icmp eq i32 %64, 0
  %66 = call i32 @llvm.ctlz.i32(i32 %64, i1 false) #10, !range !13
  %67 = mul nsw i32 %66, -8
  %68 = add nsw i32 %67, 256
  %69 = select i1 %65, i32 0, i32 %68
  %70 = shl i32 %64, 1
  %71 = mul i32 %70, %69
  %72 = icmp ult i32 %43, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = getelementptr %struct.bdi_writeback, ptr %4, i32 0, i32 9, i32 0
  %75 = call i64 @__percpu_counter_sum(ptr noundef %74) #10
  %76 = call i64 @llvm.smax.i64(i64 %75, i64 0) #10
  %77 = getelementptr %struct.bdi_writeback, ptr %4, i32 0, i32 9, i32 1
  %78 = call i64 @__percpu_counter_sum(ptr noundef %77) #10
  br label %85

79:                                               ; preds = %61
  %80 = getelementptr %struct.bdi_writeback, ptr %4, i32 0, i32 9, i32 0, i32 1
  %81 = load volatile i64, ptr %80, align 8
  %82 = call i64 @llvm.smax.i64(i64 %81, i64 0) #10
  %83 = getelementptr %struct.bdi_writeback, ptr %4, i32 0, i32 9, i32 1, i32 1
  %84 = load volatile i64, ptr %83, align 8
  br label %85

85:                                               ; preds = %79, %73
  %86 = phi i64 [ %84, %79 ], [ %78, %73 ]
  %87 = phi i64 [ %82, %79 ], [ %76, %73 ]
  %88 = call i64 @llvm.smax.i64(i64 %86, i64 0) #10
  %89 = add nuw i64 %88, %87
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds %struct.dirty_throttle_control, ptr %0, i32 0, i32 6
  store i32 %90, ptr %91, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_start_background_writeback(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @pos_ratio_polynom(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = sub nsw i64 %4, %5
  %7 = shl nsw i64 %6, 10
  %8 = sub i32 %2, %0
  %9 = or i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = tail call i64 @div64_s64(i64 noundef %7, i64 noundef %10) #10
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = mul nsw i64 %13, %13
  %15 = lshr i64 %14, 10
  %16 = mul i64 %15, %13
  %17 = ashr i64 %16, 10
  %18 = tail call i64 @llvm.smax.i64(i64 %17, i64 -1024)
  %19 = tail call i64 @llvm.smin.i64(i64 %18, i64 1024)
  %20 = add nsw i64 %19, 1024
  ret i64 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_balance_dirty_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wbc_writepage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_writeback_dirty_folio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_folio_wait_writeback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
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
!9 = !{i64 2154617552}
!10 = !{i64 2154617766}
!11 = !{!"auto-init"}
!12 = !{i64 395576, i64 395637}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 398593}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148415700, i64 2148415980, i64 2148416314, i64 2148416648}
!18 = !{i64 2148911131}
!19 = !{i64 2148906955}
!20 = !{i64 2148907030, i64 2148907057, i64 2148907104, i64 2148907126, i64 2148907154, i64 2148907174}
!21 = !{i64 2148934134}
!22 = !{i64 2154635155}
!23 = !{i64 2154635365}
!24 = !{i64 2148100342}
!25 = !{i64 500337, i64 2147990308, i64 2147990334, i64 2147990381, i64 2147990403, i64 2147990431, i64 2147990451}
!26 = !{i64 2148003204, i64 2148003236, i64 2148003265, i64 2148003299, i64 2148003330, i64 2148003353}
!27 = !{i64 2148100545}
!28 = !{i64 2155039583}
!29 = !{i64 414276}
!30 = !{i64 2155043069}
!31 = !{i64 2154661019}
!32 = !{i64 2154661417}
!33 = !{i64 2149238735}
!34 = !{i64 2149238952}
!35 = !{i64 2155082580, i64 2155083065, i64 2155082617, i64 2155082673, i64 2155082707, i64 2155082731, i64 2155082772, i64 2155082793, i64 2155082821, i64 2155082855}
!36 = !{i64 395821}
!37 = !{i64 2148935275}
!38 = !{i64 2148010982, i64 2148011014, i64 2148011043, i64 2148011077, i64 2148011108, i64 2148011131}
!39 = !{i64 2148112298}
!40 = !{i64 2155086259, i64 2155086744, i64 2155086296, i64 2155086352, i64 2155086386, i64 2155086410, i64 2155086451, i64 2155086472, i64 2155086500, i64 2155086534}
!41 = !{i64 2154582846}
!42 = !{i64 2154583000}
!43 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!44 = !{i64 2155100662, i64 2155101147, i64 2155100699, i64 2155100755, i64 2155100789, i64 2155100813, i64 2155100854, i64 2155100875, i64 2155100903, i64 2155100937}
!45 = !{i64 2154331098}
!46 = !{i64 2154331278}
!47 = !{i64 2148002520, i64 2148002546, i64 2148002575, i64 2148002609, i64 2148002640, i64 2148002663}
!48 = !{i64 2148103175}
!49 = !{i64 2148005561, i64 2148005593, i64 2148005622, i64 2148005656, i64 2148005687, i64 2148005710}
!50 = !{i64 2148103378}
!51 = !{i64 2150252838}
!52 = !{i64 2154310060}
!53 = !{i64 2154310242}
!54 = !{i64 2148004877, i64 2148004903, i64 2148004932, i64 2148004966, i64 2148004997, i64 2148005020}
