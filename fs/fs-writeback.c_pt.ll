; ModuleID = '/llk/IR/fs/fs-writeback.c_pt.bc'
source_filename = "../fs/fs-writeback.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_wbc_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_wbc_writepage\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_wbc_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_wbc_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_wbc_writepage\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_wbc_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_wbc_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_wbc_writepage\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_wbc_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_io_list_del:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_io_list_del\22\09\09\09\09\09"
module asm "__kstrtabns_inode_io_list_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mark_inode_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22__mark_inode_dirty\22\09\09\09\09\09"
module asm "__kstrtabns___mark_inode_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_writeback_inodes_sb_nr:\09\09\09\09\09"
module asm "\09.asciz \09\22writeback_inodes_sb_nr\22\09\09\09\09\09"
module asm "__kstrtabns_writeback_inodes_sb_nr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_writeback_inodes_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22writeback_inodes_sb\22\09\09\09\09\09"
module asm "__kstrtabns_writeback_inodes_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_to_writeback_inodes_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22try_to_writeback_inodes_sb\22\09\09\09\09\09"
module asm "__kstrtabns_try_to_writeback_inodes_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_inodes_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_inodes_sb\22\09\09\09\09\09"
module asm "__kstrtabns_sync_inodes_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_write_inode_now:\09\09\09\09\09"
module asm "\09.asciz \09\22write_inode_now\22\09\09\09\09\09"
module asm "__kstrtabns_write_inode_now:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_inode_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_inode_metadata\22\09\09\09\09\09"
module asm "__kstrtabns_sync_inode_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.97, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.trace_print_flags = type { i32, ptr }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i32, i32, i32 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_writeback_folio_template = type { %struct.trace_entry, [32 x i8], i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.anon = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_writeback_dirty_inode_template = type { %struct.trace_entry, [32 x i8], i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_writeback_write_inode_template = type { %struct.trace_entry, [32 x i8], i32, i32, i32, [0 x i8] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.trace_event_raw_writeback_work_class = type { %struct.trace_entry, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.wb_writeback_work = type { i32, ptr, i32, i8, i32, %struct.list_head, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.trace_event_raw_writeback_pages_written = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_writeback_class = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.trace_event_raw_writeback_bdi_register = type { %struct.trace_entry, [32 x i8], [0 x i8] }
%struct.trace_event_raw_wbc_class = type { %struct.trace_entry, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_writeback_queue_io = type { %struct.trace_entry, [32 x i8], i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_global_dirty_state = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_bdi_dirty_ratelimit = type { %struct.trace_entry, [32 x i8], i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_balance_dirty_pages = type { %struct.trace_entry, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24 }
%struct.llist_node = type { ptr }
%union.anon.24 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_event_raw_writeback_sb_inodes_requeue = type { %struct.trace_entry, [32 x i8], i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_writeback_congest_waited_template = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_writeback_single_inode_template = type { %struct.trace_entry, [32 x i8], i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_writeback_inode_template = type { %struct.trace_entry, i32, i32, i32, i16, i32, [0 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.wb_completion = type { %struct.atomic_t, ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@dirtytime_expire_interval = dso_local local_unnamed_addr global i32 43200, align 4
@__tpstrtab_writeback_dirty_folio = internal constant [22 x i8] c"writeback_dirty_folio\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_dirty_folio = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_dirty_folio }, align 4
@__tracepoint_writeback_dirty_folio = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_dirty_folio, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_dirty_folio, ptr null, ptr @__traceiter_writeback_dirty_folio, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_dirty_folio = internal constant ptr @__tracepoint_writeback_dirty_folio, section "__tracepoints_ptrs", align 4
@__tpstrtab_folio_wait_writeback = internal constant [21 x i8] c"folio_wait_writeback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_folio_wait_writeback = dso_local global %struct.static_call_key { ptr @__traceiter_folio_wait_writeback }, align 4
@__tracepoint_folio_wait_writeback = dso_local global %struct.tracepoint { ptr @__tpstrtab_folio_wait_writeback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_folio_wait_writeback, ptr null, ptr @__traceiter_folio_wait_writeback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_folio_wait_writeback = internal constant ptr @__tracepoint_folio_wait_writeback, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_mark_inode_dirty = internal constant [27 x i8] c"writeback_mark_inode_dirty\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_mark_inode_dirty = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_mark_inode_dirty }, align 4
@__tracepoint_writeback_mark_inode_dirty = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_mark_inode_dirty, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_mark_inode_dirty, ptr null, ptr @__traceiter_writeback_mark_inode_dirty, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_mark_inode_dirty = internal constant ptr @__tracepoint_writeback_mark_inode_dirty, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_dirty_inode_start = internal constant [28 x i8] c"writeback_dirty_inode_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_dirty_inode_start = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_dirty_inode_start }, align 4
@__tracepoint_writeback_dirty_inode_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_dirty_inode_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_dirty_inode_start, ptr null, ptr @__traceiter_writeback_dirty_inode_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_dirty_inode_start = internal constant ptr @__tracepoint_writeback_dirty_inode_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_dirty_inode = internal constant [22 x i8] c"writeback_dirty_inode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_dirty_inode = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_dirty_inode }, align 4
@__tracepoint_writeback_dirty_inode = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_dirty_inode, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_dirty_inode, ptr null, ptr @__traceiter_writeback_dirty_inode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_dirty_inode = internal constant ptr @__tracepoint_writeback_dirty_inode, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_write_inode_start = internal constant [28 x i8] c"writeback_write_inode_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_write_inode_start = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_write_inode_start }, align 4
@__tracepoint_writeback_write_inode_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_write_inode_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_write_inode_start, ptr null, ptr @__traceiter_writeback_write_inode_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_write_inode_start = internal constant ptr @__tracepoint_writeback_write_inode_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_write_inode = internal constant [22 x i8] c"writeback_write_inode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_write_inode = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_write_inode }, align 4
@__tracepoint_writeback_write_inode = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_write_inode, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_write_inode, ptr null, ptr @__traceiter_writeback_write_inode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_write_inode = internal constant ptr @__tracepoint_writeback_write_inode, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_queue = internal constant [16 x i8] c"writeback_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_queue = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_queue }, align 4
@__tracepoint_writeback_queue = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_queue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_queue, ptr null, ptr @__traceiter_writeback_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_queue = internal constant ptr @__tracepoint_writeback_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_exec = internal constant [15 x i8] c"writeback_exec\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_exec = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_exec }, align 4
@__tracepoint_writeback_exec = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_exec, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_exec, ptr null, ptr @__traceiter_writeback_exec, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_exec = internal constant ptr @__tracepoint_writeback_exec, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_start = internal constant [16 x i8] c"writeback_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_start = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_start }, align 4
@__tracepoint_writeback_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_start, ptr null, ptr @__traceiter_writeback_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_start = internal constant ptr @__tracepoint_writeback_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_written = internal constant [18 x i8] c"writeback_written\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_written = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_written }, align 4
@__tracepoint_writeback_written = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_written, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_written, ptr null, ptr @__traceiter_writeback_written, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_written = internal constant ptr @__tracepoint_writeback_written, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_wait = internal constant [15 x i8] c"writeback_wait\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_wait = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_wait }, align 4
@__tracepoint_writeback_wait = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_wait, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_wait, ptr null, ptr @__traceiter_writeback_wait, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_wait = internal constant ptr @__tracepoint_writeback_wait, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_pages_written = internal constant [24 x i8] c"writeback_pages_written\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_pages_written = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_pages_written }, align 4
@__tracepoint_writeback_pages_written = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_pages_written, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_pages_written, ptr null, ptr @__traceiter_writeback_pages_written, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_pages_written = internal constant ptr @__tracepoint_writeback_pages_written, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_wake_background = internal constant [26 x i8] c"writeback_wake_background\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_wake_background = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_wake_background }, align 4
@__tracepoint_writeback_wake_background = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_wake_background, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_wake_background, ptr null, ptr @__traceiter_writeback_wake_background, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_wake_background = internal constant ptr @__tracepoint_writeback_wake_background, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_bdi_register = internal constant [23 x i8] c"writeback_bdi_register\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_bdi_register = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_bdi_register }, align 4
@__tracepoint_writeback_bdi_register = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_bdi_register, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_bdi_register, ptr null, ptr @__traceiter_writeback_bdi_register, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_bdi_register = internal constant ptr @__tracepoint_writeback_bdi_register, section "__tracepoints_ptrs", align 4
@__tpstrtab_wbc_writepage = internal constant [14 x i8] c"wbc_writepage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wbc_writepage = dso_local global %struct.static_call_key { ptr @__traceiter_wbc_writepage }, align 4
@__tracepoint_wbc_writepage = dso_local global %struct.tracepoint { ptr @__tpstrtab_wbc_writepage, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_wbc_writepage, ptr null, ptr @__traceiter_wbc_writepage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wbc_writepage = internal constant ptr @__tracepoint_wbc_writepage, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_queue_io = internal constant [19 x i8] c"writeback_queue_io\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_queue_io = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_queue_io }, align 4
@__tracepoint_writeback_queue_io = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_queue_io, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_queue_io, ptr null, ptr @__traceiter_writeback_queue_io, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_queue_io = internal constant ptr @__tracepoint_writeback_queue_io, section "__tracepoints_ptrs", align 4
@__tpstrtab_global_dirty_state = internal constant [19 x i8] c"global_dirty_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_global_dirty_state = dso_local global %struct.static_call_key { ptr @__traceiter_global_dirty_state }, align 4
@__tracepoint_global_dirty_state = dso_local global %struct.tracepoint { ptr @__tpstrtab_global_dirty_state, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_global_dirty_state, ptr null, ptr @__traceiter_global_dirty_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_global_dirty_state = internal constant ptr @__tracepoint_global_dirty_state, section "__tracepoints_ptrs", align 4
@__tpstrtab_bdi_dirty_ratelimit = internal constant [20 x i8] c"bdi_dirty_ratelimit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bdi_dirty_ratelimit = dso_local global %struct.static_call_key { ptr @__traceiter_bdi_dirty_ratelimit }, align 4
@__tracepoint_bdi_dirty_ratelimit = dso_local global %struct.tracepoint { ptr @__tpstrtab_bdi_dirty_ratelimit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_bdi_dirty_ratelimit, ptr null, ptr @__traceiter_bdi_dirty_ratelimit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bdi_dirty_ratelimit = internal constant ptr @__tracepoint_bdi_dirty_ratelimit, section "__tracepoints_ptrs", align 4
@__tpstrtab_balance_dirty_pages = internal constant [20 x i8] c"balance_dirty_pages\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_balance_dirty_pages = dso_local global %struct.static_call_key { ptr @__traceiter_balance_dirty_pages }, align 4
@__tracepoint_balance_dirty_pages = dso_local global %struct.tracepoint { ptr @__tpstrtab_balance_dirty_pages, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_balance_dirty_pages, ptr null, ptr @__traceiter_balance_dirty_pages, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_balance_dirty_pages = internal constant ptr @__tracepoint_balance_dirty_pages, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_sb_inodes_requeue = internal constant [28 x i8] c"writeback_sb_inodes_requeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_sb_inodes_requeue = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_sb_inodes_requeue }, align 4
@__tracepoint_writeback_sb_inodes_requeue = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_sb_inodes_requeue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_sb_inodes_requeue, ptr null, ptr @__traceiter_writeback_sb_inodes_requeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_sb_inodes_requeue = internal constant ptr @__tracepoint_writeback_sb_inodes_requeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_congestion_wait = internal constant [26 x i8] c"writeback_congestion_wait\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_congestion_wait = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_congestion_wait }, align 4
@__tracepoint_writeback_congestion_wait = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_congestion_wait, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_congestion_wait, ptr null, ptr @__traceiter_writeback_congestion_wait, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_congestion_wait = internal constant ptr @__tracepoint_writeback_congestion_wait, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_single_inode_start = internal constant [29 x i8] c"writeback_single_inode_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_single_inode_start = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_single_inode_start }, align 4
@__tracepoint_writeback_single_inode_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_single_inode_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_single_inode_start, ptr null, ptr @__traceiter_writeback_single_inode_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_single_inode_start = internal constant ptr @__tracepoint_writeback_single_inode_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_single_inode = internal constant [23 x i8] c"writeback_single_inode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_single_inode = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_single_inode }, align 4
@__tracepoint_writeback_single_inode = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_single_inode, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_single_inode, ptr null, ptr @__traceiter_writeback_single_inode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_single_inode = internal constant ptr @__tracepoint_writeback_single_inode, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_lazytime = internal constant [19 x i8] c"writeback_lazytime\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_lazytime = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_lazytime }, align 4
@__tracepoint_writeback_lazytime = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_lazytime, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_lazytime, ptr null, ptr @__traceiter_writeback_lazytime, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_lazytime = internal constant ptr @__tracepoint_writeback_lazytime, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_lazytime_iput = internal constant [24 x i8] c"writeback_lazytime_iput\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_lazytime_iput = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_lazytime_iput }, align 4
@__tracepoint_writeback_lazytime_iput = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_lazytime_iput, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_lazytime_iput, ptr null, ptr @__traceiter_writeback_lazytime_iput, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_lazytime_iput = internal constant ptr @__tracepoint_writeback_lazytime_iput, section "__tracepoints_ptrs", align 4
@__tpstrtab_writeback_dirty_inode_enqueue = internal constant [30 x i8] c"writeback_dirty_inode_enqueue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_writeback_dirty_inode_enqueue = dso_local global %struct.static_call_key { ptr @__traceiter_writeback_dirty_inode_enqueue }, align 4
@__tracepoint_writeback_dirty_inode_enqueue = dso_local global %struct.tracepoint { ptr @__tpstrtab_writeback_dirty_inode_enqueue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_writeback_dirty_inode_enqueue, ptr null, ptr @__traceiter_writeback_dirty_inode_enqueue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_writeback_dirty_inode_enqueue = internal constant ptr @__tracepoint_writeback_dirty_inode_enqueue, section "__tracepoints_ptrs", align 4
@__tpstrtab_sb_mark_inode_writeback = internal constant [24 x i8] c"sb_mark_inode_writeback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sb_mark_inode_writeback = dso_local global %struct.static_call_key { ptr @__traceiter_sb_mark_inode_writeback }, align 4
@__tracepoint_sb_mark_inode_writeback = dso_local global %struct.tracepoint { ptr @__tpstrtab_sb_mark_inode_writeback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sb_mark_inode_writeback, ptr null, ptr @__traceiter_sb_mark_inode_writeback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sb_mark_inode_writeback = internal constant ptr @__tracepoint_sb_mark_inode_writeback, section "__tracepoints_ptrs", align 4
@__tpstrtab_sb_clear_inode_writeback = internal constant [25 x i8] c"sb_clear_inode_writeback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sb_clear_inode_writeback = dso_local global %struct.static_call_key { ptr @__traceiter_sb_clear_inode_writeback }, align 4
@__tracepoint_sb_clear_inode_writeback = dso_local global %struct.tracepoint { ptr @__tpstrtab_sb_clear_inode_writeback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sb_clear_inode_writeback, ptr null, ptr @__traceiter_sb_clear_inode_writeback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sb_clear_inode_writeback = internal constant ptr @__tracepoint_sb_clear_inode_writeback, section "__tracepoints_ptrs", align 4
@str__writeback__trace_system_name = internal constant [10 x i8] c"writeback\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"WB_REASON_BACKGROUND\00", align 1
@__TRACE_SYSTEM_WB_REASON_BACKGROUND = internal global %struct.trace_eval_map { ptr @str__writeback__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_WB_REASON_BACKGROUND = internal global ptr @__TRACE_SYSTEM_WB_REASON_BACKGROUND, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"WB_REASON_VMSCAN\00", align 1
@__TRACE_SYSTEM_WB_REASON_VMSCAN = internal global %struct.trace_eval_map { ptr @str__writeback__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_WB_REASON_VMSCAN = internal global ptr @__TRACE_SYSTEM_WB_REASON_VMSCAN, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"WB_REASON_SYNC\00", align 1
@__TRACE_SYSTEM_WB_REASON_SYNC = internal global %struct.trace_eval_map { ptr @str__writeback__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_WB_REASON_SYNC = internal global ptr @__TRACE_SYSTEM_WB_REASON_SYNC, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"WB_REASON_PERIODIC\00", align 1
@__TRACE_SYSTEM_WB_REASON_PERIODIC = internal global %struct.trace_eval_map { ptr @str__writeback__trace_system_name, ptr @.str.3, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_WB_REASON_PERIODIC = internal global ptr @__TRACE_SYSTEM_WB_REASON_PERIODIC, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"WB_REASON_LAPTOP_TIMER\00", align 1
@__TRACE_SYSTEM_WB_REASON_LAPTOP_TIMER = internal global %struct.trace_eval_map { ptr @str__writeback__trace_system_name, ptr @.str.4, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_WB_REASON_LAPTOP_TIMER = internal global ptr @__TRACE_SYSTEM_WB_REASON_LAPTOP_TIMER, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"WB_REASON_FS_FREE_SPACE\00", align 1
@__TRACE_SYSTEM_WB_REASON_FS_FREE_SPACE = internal global %struct.trace_eval_map { ptr @str__writeback__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_WB_REASON_FS_FREE_SPACE = internal global ptr @__TRACE_SYSTEM_WB_REASON_FS_FREE_SPACE, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"WB_REASON_FORKER_THREAD\00", align 1
@__TRACE_SYSTEM_WB_REASON_FORKER_THREAD = internal global %struct.trace_eval_map { ptr @str__writeback__trace_system_name, ptr @.str.6, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_WB_REASON_FORKER_THREAD = internal global ptr @__TRACE_SYSTEM_WB_REASON_FORKER_THREAD, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"WB_REASON_FOREIGN_FLUSH\00", align 1
@__TRACE_SYSTEM_WB_REASON_FOREIGN_FLUSH = internal global %struct.trace_eval_map { ptr @str__writeback__trace_system_name, ptr @.str.7, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_WB_REASON_FOREIGN_FLUSH = internal global ptr @__TRACE_SYSTEM_WB_REASON_FOREIGN_FLUSH, section "_ftrace_eval_map", align 4
@trace_event_fields_writeback_folio_template = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_folio_template = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_folio_template, ptr @perf_trace_writeback_folio_template, ptr @trace_event_reg, ptr @trace_event_fields_writeback_folio_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_folio_template, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_folio_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_folio_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_folio_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_folio_template = internal global [76 x i8] c"\22bdi %s: ino=%lu index=%lu\22, REC->name, (unsigned long)REC->ino, REC->index\00", align 1
@event_writeback_dirty_folio = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_folio_template, %union.anon.97 { ptr @__tracepoint_writeback_dirty_folio }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_folio_template }, ptr @print_fmt_writeback_folio_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_dirty_folio = internal global ptr @event_writeback_dirty_folio, section "_ftrace_events", align 4
@event_folio_wait_writeback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_folio_template, %union.anon.97 { ptr @__tracepoint_folio_wait_writeback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_folio_template }, ptr @print_fmt_writeback_folio_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_folio_wait_writeback = internal global ptr @event_folio_wait_writeback, section "_ftrace_events", align 4
@trace_event_fields_writeback_dirty_inode_template = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_dirty_inode_template = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_dirty_inode_template, ptr @perf_trace_writeback_dirty_inode_template, ptr @trace_event_reg, ptr @trace_event_fields_writeback_dirty_inode_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_dirty_inode_template, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_dirty_inode_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_dirty_inode_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_dirty_inode_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_dirty_inode_template = internal global [666 x i8] c"\22bdi %s: ino=%lu state=%s flags=%s\22, REC->name, (unsigned long)REC->ino, __print_flags(REC->state, \22|\22, {(1 << 0), \22I_DIRTY_SYNC\22}, {(1 << 1), \22I_DIRTY_DATASYNC\22}, {(1 << 2), \22I_DIRTY_PAGES\22}, {(1 << 3), \22I_NEW\22}, {(1 << 4), \22I_WILL_FREE\22}, {(1 << 5), \22I_FREEING\22}, {(1 << 6), \22I_CLEAR\22}, {(1 << 7), \22I_SYNC\22}, {(1 << 11), \22I_DIRTY_TIME\22}, {(1 << 8), \22I_REFERENCED\22} ), __print_flags(REC->flags, \22|\22, {(1 << 0), \22I_DIRTY_SYNC\22}, {(1 << 1), \22I_DIRTY_DATASYNC\22}, {(1 << 2), \22I_DIRTY_PAGES\22}, {(1 << 3), \22I_NEW\22}, {(1 << 4), \22I_WILL_FREE\22}, {(1 << 5), \22I_FREEING\22}, {(1 << 6), \22I_CLEAR\22}, {(1 << 7), \22I_SYNC\22}, {(1 << 11), \22I_DIRTY_TIME\22}, {(1 << 8), \22I_REFERENCED\22} )\00", align 1
@event_writeback_mark_inode_dirty = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_dirty_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_mark_inode_dirty }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_dirty_inode_template }, ptr @print_fmt_writeback_dirty_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_mark_inode_dirty = internal global ptr @event_writeback_mark_inode_dirty, section "_ftrace_events", align 4
@event_writeback_dirty_inode_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_dirty_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_dirty_inode_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_dirty_inode_template }, ptr @print_fmt_writeback_dirty_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_dirty_inode_start = internal global ptr @event_writeback_dirty_inode_start, section "_ftrace_events", align 4
@event_writeback_dirty_inode = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_dirty_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_dirty_inode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_dirty_inode_template }, ptr @print_fmt_writeback_dirty_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_dirty_inode = internal global ptr @event_writeback_dirty_inode, section "_ftrace_events", align 4
@trace_event_fields_writeback_write_inode_template = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_write_inode_template = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_write_inode_template, ptr @perf_trace_writeback_write_inode_template, ptr @trace_event_reg, ptr @trace_event_fields_writeback_write_inode_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_write_inode_template, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_write_inode_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_write_inode_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_write_inode_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_write_inode_template = internal global [130 x i8] c"\22bdi %s: ino=%lu sync_mode=%d cgroup_ino=%lu\22, REC->name, (unsigned long)REC->ino, REC->sync_mode, (unsigned long)REC->cgroup_ino\00", align 1
@event_writeback_write_inode_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_write_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_write_inode_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_write_inode_template }, ptr @print_fmt_writeback_write_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_write_inode_start = internal global ptr @event_writeback_write_inode_start, section "_ftrace_events", align 4
@event_writeback_write_inode = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_write_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_write_inode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_write_inode_template }, ptr @print_fmt_writeback_write_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_write_inode = internal global ptr @event_writeback_write_inode, section "_ftrace_events", align 4
@trace_event_fields_writeback_work_class = internal global [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.95 { %struct.anon.96 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.40, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.42, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_work_class = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_work_class, ptr @perf_trace_writeback_work_class, ptr @trace_event_reg, ptr @trace_event_fields_writeback_work_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_work_class, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_work_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_work_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_work_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_work_class = internal global [689 x i8] c"\22bdi %s: sb_dev %d:%d nr_pages=%ld sync_mode=%d kupdate=%d range_cyclic=%d background=%d reason=%s cgroup_ino=%lu\22, REC->name, ((unsigned int) ((REC->sb_dev) >> 20)), ((unsigned int) ((REC->sb_dev) & ((1U << 20) - 1))), REC->nr_pages, REC->sync_mode, REC->for_kupdate, REC->range_cyclic, REC->for_background, __print_symbolic(REC->reason, { WB_REASON_BACKGROUND, \22background\22 }, { WB_REASON_VMSCAN, \22vmscan\22 }, { WB_REASON_SYNC, \22sync\22 }, { WB_REASON_PERIODIC, \22periodic\22 }, { WB_REASON_LAPTOP_TIMER, \22laptop_timer\22 }, { WB_REASON_FS_FREE_SPACE, \22fs_free_space\22 }, { WB_REASON_FORKER_THREAD, \22forker_thread\22 }, { WB_REASON_FOREIGN_FLUSH, \22foreign_flush\22 }), (unsigned long)REC->cgroup_ino\00", align 1
@event_writeback_queue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_work_class, %union.anon.97 { ptr @__tracepoint_writeback_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_work_class }, ptr @print_fmt_writeback_work_class, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_queue = internal global ptr @event_writeback_queue, section "_ftrace_events", align 4
@event_writeback_exec = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_work_class, %union.anon.97 { ptr @__tracepoint_writeback_exec }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_work_class }, ptr @print_fmt_writeback_work_class, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_exec = internal global ptr @event_writeback_exec, section "_ftrace_events", align 4
@event_writeback_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_work_class, %union.anon.97 { ptr @__tracepoint_writeback_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_work_class }, ptr @print_fmt_writeback_work_class, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_start = internal global ptr @event_writeback_start, section "_ftrace_events", align 4
@event_writeback_written = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_work_class, %union.anon.97 { ptr @__tracepoint_writeback_written }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_work_class }, ptr @print_fmt_writeback_work_class, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_written = internal global ptr @event_writeback_written, section "_ftrace_events", align 4
@event_writeback_wait = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_work_class, %union.anon.97 { ptr @__tracepoint_writeback_wait }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_work_class }, ptr @print_fmt_writeback_work_class, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_wait = internal global ptr @event_writeback_wait, section "_ftrace_events", align 4
@trace_event_fields_writeback_pages_written = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.53, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_pages_written = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_pages_written, ptr @perf_trace_writeback_pages_written, ptr @trace_event_reg, ptr @trace_event_fields_writeback_pages_written, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_pages_written, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_pages_written, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_pages_written = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_pages_written, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_pages_written = internal global [18 x i8] c"\22%ld\22, REC->pages\00", align 1
@event_writeback_pages_written = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_pages_written, %union.anon.97 { ptr @__tracepoint_writeback_pages_written }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_pages_written }, ptr @print_fmt_writeback_pages_written, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_pages_written = internal global ptr @event_writeback_pages_written, section "_ftrace_events", align 4
@trace_event_fields_writeback_class = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_class = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_class, ptr @perf_trace_writeback_class, ptr @trace_event_reg, ptr @trace_event_fields_writeback_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_class, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_class = internal global [68 x i8] c"\22bdi %s: cgroup_ino=%lu\22, REC->name, (unsigned long)REC->cgroup_ino\00", align 1
@event_writeback_wake_background = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_class, %union.anon.97 { ptr @__tracepoint_writeback_wake_background }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_class }, ptr @print_fmt_writeback_class, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_wake_background = internal global ptr @event_writeback_wake_background, section "_ftrace_events", align 4
@trace_event_fields_writeback_bdi_register = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_bdi_register = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_bdi_register, ptr @perf_trace_writeback_bdi_register, ptr @trace_event_reg, ptr @trace_event_fields_writeback_bdi_register, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_bdi_register, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_bdi_register, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_bdi_register = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_bdi_register, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_bdi_register = internal global [20 x i8] c"\22bdi %s\22, REC->name\00", align 1
@event_writeback_bdi_register = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_bdi_register, %union.anon.97 { ptr @__tracepoint_writeback_bdi_register }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_bdi_register }, ptr @print_fmt_writeback_bdi_register, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_bdi_register = internal global ptr @event_writeback_bdi_register, section "_ftrace_events", align 4
@trace_event_fields_wbc_class = internal global [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.57, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.58, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.40, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.42, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.59, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.60, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.61, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_wbc_class = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_wbc_class, ptr @perf_trace_wbc_class, ptr @trace_event_reg, ptr @trace_event_fields_wbc_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wbc_class, i64 24), ptr getelementptr (i8, ptr @event_class_wbc_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wbc_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_wbc_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_wbc_class = internal global [316 x i8] c"\22bdi %s: towrt=%ld skip=%ld mode=%d kupd=%d bgrd=%d reclm=%d cyclic=%d start=0x%lx end=0x%lx cgroup_ino=%lu\22, REC->name, REC->nr_to_write, REC->pages_skipped, REC->sync_mode, REC->for_kupdate, REC->for_background, REC->for_reclaim, REC->range_cyclic, REC->range_start, REC->range_end, (unsigned long)REC->cgroup_ino\00", align 1
@event_wbc_writepage = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wbc_class, %union.anon.97 { ptr @__tracepoint_wbc_writepage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wbc_class }, ptr @print_fmt_wbc_class, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_wbc_writepage = internal global ptr @event_wbc_writepage, section "_ftrace_events", align 4
@trace_event_fields_writeback_queue_io = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.63, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.64, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.65, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_queue_io = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_queue_io, ptr @perf_trace_writeback_queue_io, ptr @trace_event_reg, ptr @trace_event_fields_writeback_queue_io, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_queue_io, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_queue_io, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_queue_io = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_queue_io, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_queue_io = internal global [490 x i8] c"\22bdi %s: older=%lu age=%ld enqueue=%d reason=%s cgroup_ino=%lu\22, REC->name, REC->older, REC->age, REC->moved, __print_symbolic(REC->reason, { WB_REASON_BACKGROUND, \22background\22 }, { WB_REASON_VMSCAN, \22vmscan\22 }, { WB_REASON_SYNC, \22sync\22 }, { WB_REASON_PERIODIC, \22periodic\22 }, { WB_REASON_LAPTOP_TIMER, \22laptop_timer\22 }, { WB_REASON_FS_FREE_SPACE, \22fs_free_space\22 }, { WB_REASON_FORKER_THREAD, \22forker_thread\22 }, { WB_REASON_FOREIGN_FLUSH, \22foreign_flush\22 }), (unsigned long)REC->cgroup_ino\00", align 1
@event_writeback_queue_io = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_queue_io, %union.anon.97 { ptr @__tracepoint_writeback_queue_io }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_queue_io }, ptr @print_fmt_writeback_queue_io, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_queue_io = internal global ptr @event_writeback_queue_io, section "_ftrace_events", align 4
@trace_event_fields_global_dirty_state = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.68, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.71, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.73, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_global_dirty_state = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_global_dirty_state, ptr @perf_trace_global_dirty_state, ptr @trace_event_reg, ptr @trace_event_fields_global_dirty_state, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_global_dirty_state, i64 24), ptr getelementptr (i8, ptr @event_class_global_dirty_state, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_global_dirty_state = internal global %struct.trace_event_functions { ptr @trace_raw_output_global_dirty_state, ptr null, ptr null, ptr null }, align 4
@print_fmt_global_dirty_state = internal global [214 x i8] c"\22dirty=%lu writeback=%lu bg_thresh=%lu thresh=%lu limit=%lu dirtied=%lu written=%lu\22, REC->nr_dirty, REC->nr_writeback, REC->background_thresh, REC->dirty_thresh, REC->dirty_limit, REC->nr_dirtied, REC->nr_written\00", align 1
@event_global_dirty_state = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_global_dirty_state, %union.anon.97 { ptr @__tracepoint_global_dirty_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_global_dirty_state }, ptr @print_fmt_global_dirty_state, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_global_dirty_state = internal global ptr @event_global_dirty_state, section "_ftrace_events", align 4
@trace_event_fields_bdi_dirty_ratelimit = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.75, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.76, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.77, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.79, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.80, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.81, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_bdi_dirty_ratelimit = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_bdi_dirty_ratelimit, ptr @perf_trace_bdi_dirty_ratelimit, ptr @trace_event_reg, ptr @trace_event_fields_bdi_dirty_ratelimit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bdi_dirty_ratelimit, i64 24), ptr getelementptr (i8, ptr @event_class_bdi_dirty_ratelimit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bdi_dirty_ratelimit = internal global %struct.trace_event_functions { ptr @trace_raw_output_bdi_dirty_ratelimit, ptr null, ptr null, ptr null }, align 4
@print_fmt_bdi_dirty_ratelimit = internal global [302 x i8] c"\22bdi %s: write_bw=%lu awrite_bw=%lu dirty_rate=%lu dirty_ratelimit=%lu task_ratelimit=%lu balanced_dirty_ratelimit=%lu cgroup_ino=%lu\22, REC->bdi, REC->write_bw, REC->avg_write_bw, REC->dirty_rate, REC->dirty_ratelimit, REC->task_ratelimit, REC->balanced_dirty_ratelimit, (unsigned long)REC->cgroup_ino\00", align 1
@event_bdi_dirty_ratelimit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bdi_dirty_ratelimit, %union.anon.97 { ptr @__tracepoint_bdi_dirty_ratelimit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bdi_dirty_ratelimit }, ptr @print_fmt_bdi_dirty_ratelimit, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_bdi_dirty_ratelimit = internal global ptr @event_bdi_dirty_ratelimit, section "_ftrace_events", align 4
@trace_event_fields_balance_dirty_pages = internal global [16 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.75, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.83, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.84, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.85, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.86, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.79, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.80, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.88, %union.anon.95 { %struct.anon.96 { ptr @.str.89, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.88, %union.anon.95 { %struct.anon.96 { ptr @.str.90, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.91, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.92, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.93, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.94, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_balance_dirty_pages = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_balance_dirty_pages, ptr @perf_trace_balance_dirty_pages, ptr @trace_event_reg, ptr @trace_event_fields_balance_dirty_pages, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_balance_dirty_pages, i64 24), ptr getelementptr (i8, ptr @event_class_balance_dirty_pages, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_balance_dirty_pages = internal global %struct.trace_event_functions { ptr @trace_raw_output_balance_dirty_pages, ptr null, ptr null, ptr null }, align 4
@print_fmt_balance_dirty_pages = internal global [441 x i8] c"\22bdi %s: limit=%lu setpoint=%lu dirty=%lu bdi_setpoint=%lu bdi_dirty=%lu dirty_ratelimit=%lu task_ratelimit=%lu dirtied=%u dirtied_pause=%u paused=%lu pause=%ld period=%lu think=%ld cgroup_ino=%lu\22, REC->bdi, REC->limit, REC->setpoint, REC->dirty, REC->bdi_setpoint, REC->bdi_dirty, REC->dirty_ratelimit, REC->task_ratelimit, REC->dirtied, REC->dirtied_pause, REC->paused, REC->pause, REC->period, REC->think, (unsigned long)REC->cgroup_ino\00", align 1
@event_balance_dirty_pages = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_balance_dirty_pages, %union.anon.97 { ptr @__tracepoint_balance_dirty_pages }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_balance_dirty_pages }, ptr @print_fmt_balance_dirty_pages, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_balance_dirty_pages = internal global ptr @event_balance_dirty_pages, section "_ftrace_events", align 4
@trace_event_fields_writeback_sb_inodes_requeue = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.96, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_sb_inodes_requeue = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_sb_inodes_requeue, ptr @perf_trace_writeback_sb_inodes_requeue, ptr @trace_event_reg, ptr @trace_event_fields_writeback_sb_inodes_requeue, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_sb_inodes_requeue, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_sb_inodes_requeue, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_sb_inodes_requeue = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_sb_inodes_requeue, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_sb_inodes_requeue = internal global [488 x i8] c"\22bdi %s: ino=%lu state=%s dirtied_when=%lu age=%lu cgroup_ino=%lu\22, REC->name, (unsigned long)REC->ino, __print_flags(REC->state, \22|\22, {(1 << 0), \22I_DIRTY_SYNC\22}, {(1 << 1), \22I_DIRTY_DATASYNC\22}, {(1 << 2), \22I_DIRTY_PAGES\22}, {(1 << 3), \22I_NEW\22}, {(1 << 4), \22I_WILL_FREE\22}, {(1 << 5), \22I_FREEING\22}, {(1 << 6), \22I_CLEAR\22}, {(1 << 7), \22I_SYNC\22}, {(1 << 11), \22I_DIRTY_TIME\22}, {(1 << 8), \22I_REFERENCED\22} ), REC->dirtied_when, (jiffies - REC->dirtied_when) / 100, (unsigned long)REC->cgroup_ino\00", align 1
@event_writeback_sb_inodes_requeue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_sb_inodes_requeue, %union.anon.97 { ptr @__tracepoint_writeback_sb_inodes_requeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_sb_inodes_requeue }, ptr @print_fmt_writeback_sb_inodes_requeue, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_sb_inodes_requeue = internal global ptr @event_writeback_sb_inodes_requeue, section "_ftrace_events", align 4
@trace_event_fields_writeback_congest_waited_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.88, %union.anon.95 { %struct.anon.96 { ptr @.str.98, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.88, %union.anon.95 { %struct.anon.96 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_congest_waited_template = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_congest_waited_template, ptr @perf_trace_writeback_congest_waited_template, ptr @trace_event_reg, ptr @trace_event_fields_writeback_congest_waited_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_congest_waited_template, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_congest_waited_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_congest_waited_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_congest_waited_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_congest_waited_template = internal global [72 x i8] c"\22usec_timeout=%u usec_delayed=%u\22, REC->usec_timeout, REC->usec_delayed\00", align 1
@event_writeback_congestion_wait = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_congest_waited_template, %union.anon.97 { ptr @__tracepoint_writeback_congestion_wait }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_congest_waited_template }, ptr @print_fmt_writeback_congest_waited_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_congestion_wait = internal global ptr @event_writeback_congestion_wait, section "_ftrace_events", align 4
@trace_event_fields_writeback_single_inode_template = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.96, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.101, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.57, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.102, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_single_inode_template = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_single_inode_template, ptr @perf_trace_writeback_single_inode_template, ptr @trace_event_reg, ptr @trace_event_fields_writeback_single_inode_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_single_inode_template, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_single_inode_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_single_inode_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_single_inode_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_single_inode_template = internal global [573 x i8] c"\22bdi %s: ino=%lu state=%s dirtied_when=%lu age=%lu index=%lu to_write=%ld wrote=%lu cgroup_ino=%lu\22, REC->name, (unsigned long)REC->ino, __print_flags(REC->state, \22|\22, {(1 << 0), \22I_DIRTY_SYNC\22}, {(1 << 1), \22I_DIRTY_DATASYNC\22}, {(1 << 2), \22I_DIRTY_PAGES\22}, {(1 << 3), \22I_NEW\22}, {(1 << 4), \22I_WILL_FREE\22}, {(1 << 5), \22I_FREEING\22}, {(1 << 6), \22I_CLEAR\22}, {(1 << 7), \22I_SYNC\22}, {(1 << 11), \22I_DIRTY_TIME\22}, {(1 << 8), \22I_REFERENCED\22} ), REC->dirtied_when, (jiffies - REC->dirtied_when) / 100, REC->writeback_index, REC->nr_to_write, REC->wrote, (unsigned long)REC->cgroup_ino\00", align 1
@event_writeback_single_inode_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_single_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_single_inode_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_single_inode_template }, ptr @print_fmt_writeback_single_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_single_inode_start = internal global ptr @event_writeback_single_inode_start, section "_ftrace_events", align 4
@event_writeback_single_inode = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_single_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_single_inode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_single_inode_template }, ptr @print_fmt_writeback_single_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_single_inode = internal global ptr @event_writeback_single_inode, section "_ftrace_events", align 4
@trace_event_fields_writeback_inode_template = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.38, %union.anon.95 { %struct.anon.96 { ptr @.str.104, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.105, %union.anon.95 { %struct.anon.96 { ptr @.str.106, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.96, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_writeback_inode_template = internal global %struct.trace_event_class { ptr @str__writeback__trace_system_name, ptr @trace_event_raw_event_writeback_inode_template, ptr @perf_trace_writeback_inode_template, ptr @trace_event_reg, ptr @trace_event_fields_writeback_inode_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_writeback_inode_template, i64 24), ptr getelementptr (i8, ptr @event_class_writeback_inode_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_writeback_inode_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_writeback_inode_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_writeback_inode_template = internal global [489 x i8] c"\22dev %d,%d ino %lu dirtied %lu state %s mode 0%o\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), (unsigned long)REC->ino, REC->dirtied_when, __print_flags(REC->state, \22|\22, {(1 << 0), \22I_DIRTY_SYNC\22}, {(1 << 1), \22I_DIRTY_DATASYNC\22}, {(1 << 2), \22I_DIRTY_PAGES\22}, {(1 << 3), \22I_NEW\22}, {(1 << 4), \22I_WILL_FREE\22}, {(1 << 5), \22I_FREEING\22}, {(1 << 6), \22I_CLEAR\22}, {(1 << 7), \22I_SYNC\22}, {(1 << 11), \22I_DIRTY_TIME\22}, {(1 << 8), \22I_REFERENCED\22} ), REC->mode\00", align 1
@event_writeback_lazytime = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_lazytime }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_inode_template }, ptr @print_fmt_writeback_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_lazytime = internal global ptr @event_writeback_lazytime, section "_ftrace_events", align 4
@event_writeback_lazytime_iput = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_lazytime_iput }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_inode_template }, ptr @print_fmt_writeback_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_lazytime_iput = internal global ptr @event_writeback_lazytime_iput, section "_ftrace_events", align 4
@event_writeback_dirty_inode_enqueue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_inode_template, %union.anon.97 { ptr @__tracepoint_writeback_dirty_inode_enqueue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_inode_template }, ptr @print_fmt_writeback_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_writeback_dirty_inode_enqueue = internal global ptr @event_writeback_dirty_inode_enqueue, section "_ftrace_events", align 4
@event_sb_mark_inode_writeback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_inode_template, %union.anon.97 { ptr @__tracepoint_sb_mark_inode_writeback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_inode_template }, ptr @print_fmt_writeback_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sb_mark_inode_writeback = internal global ptr @event_sb_mark_inode_writeback, section "_ftrace_events", align 4
@event_sb_clear_inode_writeback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_writeback_inode_template, %union.anon.97 { ptr @__tracepoint_sb_clear_inode_writeback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_writeback_inode_template }, ptr @print_fmt_writeback_inode_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sb_clear_inode_writeback = internal global ptr @event_sb_clear_inode_writeback, section "_ftrace_events", align 4
@__kstrtab___tracepoint_wbc_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_wbc_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_wbc_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_wbc_writepage to i32), ptr @__kstrtab___tracepoint_wbc_writepage, ptr @__kstrtabns___tracepoint_wbc_writepage }, section "___ksymtab_gpl+__tracepoint_wbc_writepage", align 4
@__kstrtab___traceiter_wbc_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_wbc_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_wbc_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_wbc_writepage to i32), ptr @__kstrtab___traceiter_wbc_writepage, ptr @__kstrtabns___traceiter_wbc_writepage }, section "___ksymtab_gpl+__traceiter_wbc_writepage", align 4
@__kstrtab___SCK__tp_func_wbc_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_wbc_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_wbc_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_wbc_writepage to i32), ptr @__kstrtab___SCK__tp_func_wbc_writepage, ptr @__kstrtabns___SCK__tp_func_wbc_writepage }, section "___ksymtab_gpl+__SCK__tp_func_wbc_writepage", align 4
@__kstrtab_inode_io_list_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_io_list_del = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_io_list_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_io_list_del to i32), ptr @__kstrtab_inode_io_list_del, ptr @__kstrtabns_inode_io_list_del }, section "___ksymtab+inode_io_list_del", align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"flush-%s\00", align 1
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@bdi_list = external dso_local global %struct.list_head, align 4
@__initcall__kmod_fs_writeback__438_2352_start_dirtytime_writeback6 = internal global ptr @start_dirtytime_writeback, section ".initcall6.init", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dirtytime_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @dirtytime_work, i64 4), ptr getelementptr (i8, ptr @dirtytime_work, i64 4) }, ptr @wakeup_dirtytime_writeback }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@__mark_inode_dirty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"fs/fs-writeback.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___mark_inode_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns___mark_inode_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab___mark_inode_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mark_inode_dirty to i32), ptr @__kstrtab___mark_inode_dirty, ptr @__kstrtabns___mark_inode_dirty }, section "___ksymtab+__mark_inode_dirty", align 4
@__kstrtab_writeback_inodes_sb_nr = external dso_local constant [0 x i8], align 1
@__kstrtabns_writeback_inodes_sb_nr = external dso_local constant [0 x i8], align 1
@__ksymtab_writeback_inodes_sb_nr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @writeback_inodes_sb_nr to i32), ptr @__kstrtab_writeback_inodes_sb_nr, ptr @__kstrtabns_writeback_inodes_sb_nr }, section "___ksymtab+writeback_inodes_sb_nr", align 4
@__kstrtab_writeback_inodes_sb = external dso_local constant [0 x i8], align 1
@__kstrtabns_writeback_inodes_sb = external dso_local constant [0 x i8], align 1
@__ksymtab_writeback_inodes_sb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @writeback_inodes_sb to i32), ptr @__kstrtab_writeback_inodes_sb, ptr @__kstrtabns_writeback_inodes_sb }, section "___ksymtab+writeback_inodes_sb", align 4
@__kstrtab_try_to_writeback_inodes_sb = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_to_writeback_inodes_sb = external dso_local constant [0 x i8], align 1
@__ksymtab_try_to_writeback_inodes_sb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_to_writeback_inodes_sb to i32), ptr @__kstrtab_try_to_writeback_inodes_sb, ptr @__kstrtabns_try_to_writeback_inodes_sb }, section "___ksymtab+try_to_writeback_inodes_sb", align 4
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@__kstrtab_sync_inodes_sb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_inodes_sb = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_inodes_sb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_inodes_sb to i32), ptr @__kstrtab_sync_inodes_sb, ptr @__kstrtabns_sync_inodes_sb }, section "___ksymtab+sync_inodes_sb", align 4
@__kstrtab_write_inode_now = external dso_local constant [0 x i8], align 1
@__kstrtabns_write_inode_now = external dso_local constant [0 x i8], align 1
@__ksymtab_write_inode_now = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @write_inode_now to i32), ptr @__kstrtab_write_inode_now, ptr @__kstrtabns_write_inode_now }, section "___ksymtab+write_inode_now", align 4
@__kstrtab_sync_inode_metadata = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_inode_metadata = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_inode_metadata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_inode_metadata to i32), ptr @__kstrtab_sync_inode_metadata, ptr @__kstrtabns_sync_inode_metadata }, section "___ksymtab+sync_inode_metadata", align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"char[32]\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ino_t\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ino\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"bdi %s: ino=%lu index=%lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"bdi %s: ino=%lu state=%s flags=%s\0A\00", align 1
@trace_raw_output_writeback_dirty_inode_template.__flags = internal constant [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.20 }, %struct.trace_print_flags { i32 2, ptr @.str.21 }, %struct.trace_print_flags { i32 4, ptr @.str.22 }, %struct.trace_print_flags { i32 8, ptr @.str.23 }, %struct.trace_print_flags { i32 16, ptr @.str.24 }, %struct.trace_print_flags { i32 32, ptr @.str.25 }, %struct.trace_print_flags { i32 64, ptr @.str.26 }, %struct.trace_print_flags { i32 128, ptr @.str.27 }, %struct.trace_print_flags { i32 2048, ptr @.str.28 }, %struct.trace_print_flags { i32 256, ptr @.str.29 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"I_DIRTY_SYNC\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"I_DIRTY_DATASYNC\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"I_DIRTY_PAGES\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"I_NEW\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"I_WILL_FREE\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"I_FREEING\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"I_CLEAR\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"I_SYNC\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"I_DIRTY_TIME\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"I_REFERENCED\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@trace_raw_output_writeback_dirty_inode_template.__flags.31 = internal constant [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.20 }, %struct.trace_print_flags { i32 2, ptr @.str.21 }, %struct.trace_print_flags { i32 4, ptr @.str.22 }, %struct.trace_print_flags { i32 8, ptr @.str.23 }, %struct.trace_print_flags { i32 16, ptr @.str.24 }, %struct.trace_print_flags { i32 32, ptr @.str.25 }, %struct.trace_print_flags { i32 64, ptr @.str.26 }, %struct.trace_print_flags { i32 128, ptr @.str.27 }, %struct.trace_print_flags { i32 2048, ptr @.str.28 }, %struct.trace_print_flags { i32 256, ptr @.str.29 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.32 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sync_mode\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"cgroup_ino\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"bdi %s: ino=%lu sync_mode=%d cgroup_ino=%lu\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"nr_pages\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"dev_t\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"sb_dev\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"for_kupdate\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"range_cyclic\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"for_background\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.44 = private unnamed_addr constant [114 x i8] c"bdi %s: sb_dev %d:%d nr_pages=%ld sync_mode=%d kupdate=%d range_cyclic=%d background=%d reason=%s cgroup_ino=%lu\0A\00", align 1
@trace_raw_output_writeback_work_class.symbols = internal constant [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.45 }, %struct.trace_print_flags { i32 1, ptr @.str.46 }, %struct.trace_print_flags { i32 2, ptr @.str.47 }, %struct.trace_print_flags { i32 3, ptr @.str.48 }, %struct.trace_print_flags { i32 4, ptr @.str.49 }, %struct.trace_print_flags { i32 5, ptr @.str.50 }, %struct.trace_print_flags { i32 6, ptr @.str.51 }, %struct.trace_print_flags { i32 7, ptr @.str.52 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.45 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"vmscan\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"laptop_timer\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"fs_free_space\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"forker_thread\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"foreign_flush\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"pages\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"bdi %s: cgroup_ino=%lu\0A\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"bdi %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"nr_to_write\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"pages_skipped\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"for_reclaim\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"range_start\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"range_end\00", align 1
@.str.62 = private unnamed_addr constant [108 x i8] c"bdi %s: towrt=%ld skip=%ld mode=%d kupd=%d bgrd=%d reclm=%d cyclic=%d start=0x%lx end=0x%lx cgroup_ino=%lu\0A\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"older\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"moved\00", align 1
@.str.66 = private unnamed_addr constant [63 x i8] c"bdi %s: older=%lu age=%ld enqueue=%d reason=%s cgroup_ino=%lu\0A\00", align 1
@trace_raw_output_writeback_queue_io.symbols = internal constant [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.45 }, %struct.trace_print_flags { i32 1, ptr @.str.46 }, %struct.trace_print_flags { i32 2, ptr @.str.47 }, %struct.trace_print_flags { i32 3, ptr @.str.48 }, %struct.trace_print_flags { i32 4, ptr @.str.49 }, %struct.trace_print_flags { i32 5, ptr @.str.50 }, %struct.trace_print_flags { i32 6, ptr @.str.51 }, %struct.trace_print_flags { i32 7, ptr @.str.52 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@global_wb_domain = external dso_local local_unnamed_addr global %struct.wb_domain, align 8
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@.str.67 = private unnamed_addr constant [9 x i8] c"nr_dirty\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"nr_writeback\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"background_thresh\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"dirty_thresh\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"dirty_limit\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"nr_dirtied\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"nr_written\00", align 1
@.str.74 = private unnamed_addr constant [84 x i8] c"dirty=%lu writeback=%lu bg_thresh=%lu thresh=%lu limit=%lu dirtied=%lu written=%lu\0A\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"bdi\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"write_bw\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"avg_write_bw\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"dirty_rate\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"dirty_ratelimit\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"task_ratelimit\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"balanced_dirty_ratelimit\00", align 1
@.str.82 = private unnamed_addr constant [134 x i8] c"bdi %s: write_bw=%lu awrite_bw=%lu dirty_rate=%lu dirty_ratelimit=%lu task_ratelimit=%lu balanced_dirty_ratelimit=%lu cgroup_ino=%lu\0A\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"setpoint\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"bdi_setpoint\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"bdi_dirty\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"dirtied\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"dirtied_pause\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"paused\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"think\00", align 1
@.str.95 = private unnamed_addr constant [197 x i8] c"bdi %s: limit=%lu setpoint=%lu dirty=%lu bdi_setpoint=%lu bdi_dirty=%lu dirty_ratelimit=%lu task_ratelimit=%lu dirtied=%u dirtied_pause=%u paused=%lu pause=%ld period=%lu think=%ld cgroup_ino=%lu\0A\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"dirtied_when\00", align 1
@.str.97 = private unnamed_addr constant [66 x i8] c"bdi %s: ino=%lu state=%s dirtied_when=%lu age=%lu cgroup_ino=%lu\0A\00", align 1
@trace_raw_output_writeback_sb_inodes_requeue.__flags = internal constant [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.20 }, %struct.trace_print_flags { i32 2, ptr @.str.21 }, %struct.trace_print_flags { i32 4, ptr @.str.22 }, %struct.trace_print_flags { i32 8, ptr @.str.23 }, %struct.trace_print_flags { i32 16, ptr @.str.24 }, %struct.trace_print_flags { i32 32, ptr @.str.25 }, %struct.trace_print_flags { i32 64, ptr @.str.26 }, %struct.trace_print_flags { i32 128, ptr @.str.27 }, %struct.trace_print_flags { i32 2048, ptr @.str.28 }, %struct.trace_print_flags { i32 256, ptr @.str.29 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.98 = private unnamed_addr constant [13 x i8] c"usec_timeout\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"usec_delayed\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"usec_timeout=%u usec_delayed=%u\0A\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"writeback_index\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"wrote\00", align 1
@.str.103 = private unnamed_addr constant [99 x i8] c"bdi %s: ino=%lu state=%s dirtied_when=%lu age=%lu index=%lu to_write=%ld wrote=%lu cgroup_ino=%lu\0A\00", align 1
@trace_raw_output_writeback_single_inode_template.__flags = internal constant [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.20 }, %struct.trace_print_flags { i32 2, ptr @.str.21 }, %struct.trace_print_flags { i32 4, ptr @.str.22 }, %struct.trace_print_flags { i32 8, ptr @.str.23 }, %struct.trace_print_flags { i32 16, ptr @.str.24 }, %struct.trace_print_flags { i32 32, ptr @.str.25 }, %struct.trace_print_flags { i32 64, ptr @.str.26 }, %struct.trace_print_flags { i32 128, ptr @.str.27 }, %struct.trace_print_flags { i32 2048, ptr @.str.28 }, %struct.trace_print_flags { i32 256, ptr @.str.29 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.104 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"__u16\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"dev %d,%d ino %lu dirtied %lu state %s mode 0%o\0A\00", align 1
@trace_raw_output_writeback_inode_template.__flags = internal constant [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.20 }, %struct.trace_print_flags { i32 2, ptr @.str.21 }, %struct.trace_print_flags { i32 4, ptr @.str.22 }, %struct.trace_print_flags { i32 8, ptr @.str.23 }, %struct.trace_print_flags { i32 16, ptr @.str.24 }, %struct.trace_print_flags { i32 32, ptr @.str.25 }, %struct.trace_print_flags { i32 64, ptr @.str.26 }, %struct.trace_print_flags { i32 128, ptr @.str.27 }, %struct.trace_print_flags { i32 2048, ptr @.str.28 }, %struct.trace_print_flags { i32 256, ptr @.str.29 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@bdi_wq = external dso_local local_unnamed_addr global ptr, align 4
@wb_io_lists_depopulated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dirty_expire_interval = external dso_local local_unnamed_addr global i32, align 4
@blockdev_superblock = external dso_local local_unnamed_addr global ptr, align 4
@wb_io_lists_populated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.wb_check_background_flush.work = private unnamed_addr constant { i32, ptr, i32, i8, [3 x i8], i32, %struct.list_head, ptr } { i32 2147483647, ptr null, i32 0, i8 12, [3 x i8] zeroinitializer, i32 0, %struct.list_head zeroinitializer, ptr null }, align 4
@llvm.compiler.used = appending global [160 x ptr] [ptr @TRACE_SYSTEM_WB_REASON_BACKGROUND, ptr @TRACE_SYSTEM_WB_REASON_FOREIGN_FLUSH, ptr @TRACE_SYSTEM_WB_REASON_FORKER_THREAD, ptr @TRACE_SYSTEM_WB_REASON_FS_FREE_SPACE, ptr @TRACE_SYSTEM_WB_REASON_LAPTOP_TIMER, ptr @TRACE_SYSTEM_WB_REASON_PERIODIC, ptr @TRACE_SYSTEM_WB_REASON_SYNC, ptr @TRACE_SYSTEM_WB_REASON_VMSCAN, ptr @__TRACE_SYSTEM_WB_REASON_BACKGROUND, ptr @__TRACE_SYSTEM_WB_REASON_FOREIGN_FLUSH, ptr @__TRACE_SYSTEM_WB_REASON_FORKER_THREAD, ptr @__TRACE_SYSTEM_WB_REASON_FS_FREE_SPACE, ptr @__TRACE_SYSTEM_WB_REASON_LAPTOP_TIMER, ptr @__TRACE_SYSTEM_WB_REASON_PERIODIC, ptr @__TRACE_SYSTEM_WB_REASON_SYNC, ptr @__TRACE_SYSTEM_WB_REASON_VMSCAN, ptr @__event_balance_dirty_pages, ptr @__event_bdi_dirty_ratelimit, ptr @__event_folio_wait_writeback, ptr @__event_global_dirty_state, ptr @__event_sb_clear_inode_writeback, ptr @__event_sb_mark_inode_writeback, ptr @__event_wbc_writepage, ptr @__event_writeback_bdi_register, ptr @__event_writeback_congestion_wait, ptr @__event_writeback_dirty_folio, ptr @__event_writeback_dirty_inode, ptr @__event_writeback_dirty_inode_enqueue, ptr @__event_writeback_dirty_inode_start, ptr @__event_writeback_exec, ptr @__event_writeback_lazytime, ptr @__event_writeback_lazytime_iput, ptr @__event_writeback_mark_inode_dirty, ptr @__event_writeback_pages_written, ptr @__event_writeback_queue, ptr @__event_writeback_queue_io, ptr @__event_writeback_sb_inodes_requeue, ptr @__event_writeback_single_inode, ptr @__event_writeback_single_inode_start, ptr @__event_writeback_start, ptr @__event_writeback_wait, ptr @__event_writeback_wake_background, ptr @__event_writeback_write_inode, ptr @__event_writeback_write_inode_start, ptr @__event_writeback_written, ptr @__initcall__kmod_fs_writeback__438_2352_start_dirtytime_writeback6, ptr @__ksymtab___SCK__tp_func_wbc_writepage, ptr @__ksymtab___mark_inode_dirty, ptr @__ksymtab___traceiter_wbc_writepage, ptr @__ksymtab___tracepoint_wbc_writepage, ptr @__ksymtab_inode_io_list_del, ptr @__ksymtab_sync_inode_metadata, ptr @__ksymtab_sync_inodes_sb, ptr @__ksymtab_try_to_writeback_inodes_sb, ptr @__ksymtab_write_inode_now, ptr @__ksymtab_writeback_inodes_sb, ptr @__ksymtab_writeback_inodes_sb_nr, ptr @__tracepoint_balance_dirty_pages, ptr @__tracepoint_bdi_dirty_ratelimit, ptr @__tracepoint_folio_wait_writeback, ptr @__tracepoint_global_dirty_state, ptr @__tracepoint_ptr_balance_dirty_pages, ptr @__tracepoint_ptr_bdi_dirty_ratelimit, ptr @__tracepoint_ptr_folio_wait_writeback, ptr @__tracepoint_ptr_global_dirty_state, ptr @__tracepoint_ptr_sb_clear_inode_writeback, ptr @__tracepoint_ptr_sb_mark_inode_writeback, ptr @__tracepoint_ptr_wbc_writepage, ptr @__tracepoint_ptr_writeback_bdi_register, ptr @__tracepoint_ptr_writeback_congestion_wait, ptr @__tracepoint_ptr_writeback_dirty_folio, ptr @__tracepoint_ptr_writeback_dirty_inode, ptr @__tracepoint_ptr_writeback_dirty_inode_enqueue, ptr @__tracepoint_ptr_writeback_dirty_inode_start, ptr @__tracepoint_ptr_writeback_exec, ptr @__tracepoint_ptr_writeback_lazytime, ptr @__tracepoint_ptr_writeback_lazytime_iput, ptr @__tracepoint_ptr_writeback_mark_inode_dirty, ptr @__tracepoint_ptr_writeback_pages_written, ptr @__tracepoint_ptr_writeback_queue, ptr @__tracepoint_ptr_writeback_queue_io, ptr @__tracepoint_ptr_writeback_sb_inodes_requeue, ptr @__tracepoint_ptr_writeback_single_inode, ptr @__tracepoint_ptr_writeback_single_inode_start, ptr @__tracepoint_ptr_writeback_start, ptr @__tracepoint_ptr_writeback_wait, ptr @__tracepoint_ptr_writeback_wake_background, ptr @__tracepoint_ptr_writeback_write_inode, ptr @__tracepoint_ptr_writeback_write_inode_start, ptr @__tracepoint_ptr_writeback_written, ptr @__tracepoint_sb_clear_inode_writeback, ptr @__tracepoint_sb_mark_inode_writeback, ptr @__tracepoint_wbc_writepage, ptr @__tracepoint_writeback_bdi_register, ptr @__tracepoint_writeback_congestion_wait, ptr @__tracepoint_writeback_dirty_folio, ptr @__tracepoint_writeback_dirty_inode, ptr @__tracepoint_writeback_dirty_inode_enqueue, ptr @__tracepoint_writeback_dirty_inode_start, ptr @__tracepoint_writeback_exec, ptr @__tracepoint_writeback_lazytime, ptr @__tracepoint_writeback_lazytime_iput, ptr @__tracepoint_writeback_mark_inode_dirty, ptr @__tracepoint_writeback_pages_written, ptr @__tracepoint_writeback_queue, ptr @__tracepoint_writeback_queue_io, ptr @__tracepoint_writeback_sb_inodes_requeue, ptr @__tracepoint_writeback_single_inode, ptr @__tracepoint_writeback_single_inode_start, ptr @__tracepoint_writeback_start, ptr @__tracepoint_writeback_wait, ptr @__tracepoint_writeback_wake_background, ptr @__tracepoint_writeback_write_inode, ptr @__tracepoint_writeback_write_inode_start, ptr @__tracepoint_writeback_written, ptr @event_balance_dirty_pages, ptr @event_bdi_dirty_ratelimit, ptr @event_class_balance_dirty_pages, ptr @event_class_bdi_dirty_ratelimit, ptr @event_class_global_dirty_state, ptr @event_class_wbc_class, ptr @event_class_writeback_bdi_register, ptr @event_class_writeback_class, ptr @event_class_writeback_congest_waited_template, ptr @event_class_writeback_dirty_inode_template, ptr @event_class_writeback_folio_template, ptr @event_class_writeback_inode_template, ptr @event_class_writeback_pages_written, ptr @event_class_writeback_queue_io, ptr @event_class_writeback_sb_inodes_requeue, ptr @event_class_writeback_single_inode_template, ptr @event_class_writeback_work_class, ptr @event_class_writeback_write_inode_template, ptr @event_folio_wait_writeback, ptr @event_global_dirty_state, ptr @event_sb_clear_inode_writeback, ptr @event_sb_mark_inode_writeback, ptr @event_wbc_writepage, ptr @event_writeback_bdi_register, ptr @event_writeback_congestion_wait, ptr @event_writeback_dirty_folio, ptr @event_writeback_dirty_inode, ptr @event_writeback_dirty_inode_enqueue, ptr @event_writeback_dirty_inode_start, ptr @event_writeback_exec, ptr @event_writeback_lazytime, ptr @event_writeback_lazytime_iput, ptr @event_writeback_mark_inode_dirty, ptr @event_writeback_pages_written, ptr @event_writeback_queue, ptr @event_writeback_queue_io, ptr @event_writeback_sb_inodes_requeue, ptr @event_writeback_single_inode, ptr @event_writeback_single_inode_start, ptr @event_writeback_start, ptr @event_writeback_wait, ptr @event_writeback_wake_background, ptr @event_writeback_write_inode, ptr @event_writeback_write_inode_start, ptr @event_writeback_written], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_dirty_folio(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_folio, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_folio_wait_writeback(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_folio_wait_writeback, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_mark_inode_dirty(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_mark_inode_dirty, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_dirty_inode_start(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_inode_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_dirty_inode(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_inode, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_write_inode_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_write_inode_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_write_inode(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_write_inode, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_queue(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_queue, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_exec(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_exec, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_written(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_written, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_wait(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_wait, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_pages_written(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_pages_written, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_wake_background(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_wake_background, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_bdi_register(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_bdi_register, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wbc_writepage(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wbc_writepage, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_queue_io(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_queue_io, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #10
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_global_dirty_state(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_global_dirty_state, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bdi_dirty_ratelimit(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bdi_dirty_ratelimit, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #10
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_balance_dirty_pages(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #0 {
  %14 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_balance_dirty_pages, i32 0, i32 7), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %21, %16 ], [ %14, %13 ]
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tracepoint_func, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %18(ptr noundef %20, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #10
  %21 = getelementptr %struct.tracepoint_func, ptr %17, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16

24:                                               ; preds = %16, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_sb_inodes_requeue(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_sb_inodes_requeue, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_congestion_wait(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_congestion_wait, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_single_inode_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_single_inode_start, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_single_inode(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_single_inode, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_lazytime(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_lazytime, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_lazytime_iput(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_lazytime_iput, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_writeback_dirty_inode_enqueue(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_inode_enqueue, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sb_mark_inode_writeback(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sb_mark_inode_writeback, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sb_clear_inode_writeback(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sb_clear_inode_writeback, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_folio_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %37, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 48) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_writeback_folio_template, ptr %15, i32 0, i32 1
  %19 = icmp eq ptr %2, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %2, align 4
  %22 = call ptr @inode_to_bdi(ptr noundef %21) #10
  %23 = call ptr @bdi_dev_name(ptr noundef %22) #10
  %24 = call i32 @strscpy_pad(ptr noundef %18, ptr noundef %23, i32 noundef 32) #10
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  br label %31

28:                                               ; preds = %17
  %29 = call ptr @bdi_dev_name(ptr noundef null) #10
  %30 = call i32 @strscpy_pad(ptr noundef %18, ptr noundef %29, i32 noundef 32) #10
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi i32 [ %27, %20 ], [ 0, %28 ]
  %33 = getelementptr inbounds %struct.trace_event_raw_writeback_folio_template, ptr %15, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_writeback_folio_template, ptr %15, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %37

37:                                               ; preds = %31, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_folio_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_writeback_folio_template, ptr %21, i32 0, i32 1
  %35 = icmp eq ptr %2, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %23
  %37 = load ptr, ptr %2, align 4
  %38 = call ptr @inode_to_bdi(ptr noundef %37) #10
  %39 = call ptr @bdi_dev_name(ptr noundef %38) #10
  %40 = call i32 @strscpy_pad(ptr noundef %34, ptr noundef %39, i32 noundef 32) #10
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  br label %47

44:                                               ; preds = %23
  %45 = call ptr @bdi_dev_name(ptr noundef null) #10
  %46 = call i32 @strscpy_pad(ptr noundef %34, ptr noundef %45, i32 noundef 32) #10
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi i32 [ %43, %36 ], [ 0, %44 ]
  %49 = getelementptr inbounds %struct.trace_event_raw_writeback_folio_template, ptr %21, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_writeback_folio_template, ptr %21, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %5, align 4
  %54 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 52, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %13, ptr noundef null) #10
  br label %55

55:                                               ; preds = %47, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_dirty_inode_template(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %29, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 52) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %19 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %15, i32 0, i32 1
  %20 = call ptr @bdi_dev_name(ptr noundef %18) #10
  %21 = call i32 @strscpy_pad(ptr noundef %19, ptr noundef %20, i32 noundef 32) #10
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %15, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %15, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %15, i32 0, i32 4
  store i32 %2, ptr %28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %29

29:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_dirty_inode_template(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %35 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %21, i32 0, i32 1
  %36 = call ptr @bdi_dev_name(ptr noundef %34) #10
  %37 = call i32 @strscpy_pad(ptr noundef %35, ptr noundef %36, i32 noundef 32) #10
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %21, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %21, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %21, i32 0, i32 4
  store i32 %2, ptr %44, align 4
  %45 = load i32, ptr %5, align 4
  %46 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 52, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %13, ptr noundef null) #10
  br label %47

47:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_write_inode_template(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %29, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 52) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %15, i32 0, i32 1
  %19 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %20 = call ptr @bdi_dev_name(ptr noundef %19) #10
  %21 = call i32 @strscpy_pad(ptr noundef %18, ptr noundef %20, i32 noundef 32) #10
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %15, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %15, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %15, i32 0, i32 4
  store i32 1, ptr %28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %29

29:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_write_inode_template(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %21, i32 0, i32 1
  %35 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %36 = call ptr @bdi_dev_name(ptr noundef %35) #10
  %37 = call i32 @strscpy_pad(ptr noundef %34, ptr noundef %36, i32 noundef 32) #10
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %21, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %21, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %21, i32 0, i32 4
  store i32 1, ptr %44, align 4
  %45 = load i32, ptr %5, align 4
  %46 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 52, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %13, ptr noundef null) #10
  br label %47

47:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_work_class(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %56, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 72) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %1, align 8
  %20 = call ptr @bdi_dev_name(ptr noundef %19) #10
  %21 = call i32 @strscpy_pad(ptr noundef %18, ptr noundef %20, i32 noundef 32) #10
  %22 = load i32, ptr %2, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %15, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  br label %30

30:                                               ; preds = %27, %17
  %31 = phi i32 [ %29, %27 ], [ 0, %17 ]
  %32 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %15, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %15, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 3
  %37 = load i8, ptr %36, align 4
  %38 = lshr i8 %37, 1
  %39 = and i8 %38, 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %15, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  %42 = load i8, ptr %36, align 4
  %43 = lshr i8 %42, 2
  %44 = and i8 %43, 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %15, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = load i8, ptr %36, align 4
  %48 = lshr i8 %47, 3
  %49 = and i8 %48, 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %15, i32 0, i32 7
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %15, i32 0, i32 8
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %15, i32 0, i32 9
  store i32 1, ptr %55, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %56

56:                                               ; preds = %30, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_work_class(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %74, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 76, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %21, i32 0, i32 1
  %35 = load ptr, ptr %1, align 8
  %36 = call ptr @bdi_dev_name(ptr noundef %35) #10
  %37 = call i32 @strscpy_pad(ptr noundef %34, ptr noundef %36, i32 noundef 32) #10
  %38 = load i32, ptr %2, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %21, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  br label %46

46:                                               ; preds = %43, %23
  %47 = phi i32 [ %45, %43 ], [ 0, %23 ]
  %48 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %21, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %21, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 3
  %53 = load i8, ptr %52, align 4
  %54 = lshr i8 %53, 1
  %55 = and i8 %54, 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %21, i32 0, i32 5
  store i32 %56, ptr %57, align 4
  %58 = load i8, ptr %52, align 4
  %59 = lshr i8 %58, 2
  %60 = and i8 %59, 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %21, i32 0, i32 6
  store i32 %61, ptr %62, align 4
  %63 = load i8, ptr %52, align 4
  %64 = lshr i8 %63, 3
  %65 = and i8 %64, 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %21, i32 0, i32 7
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %21, i32 0, i32 8
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %21, i32 0, i32 9
  store i32 1, ptr %71, align 4
  %72 = load i32, ptr %5, align 4
  %73 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 76, i32 noundef %72, ptr noundef %0, i64 noundef 1, ptr noundef %73, ptr noundef %13, ptr noundef null) #10
  br label %74

74:                                               ; preds = %46, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_pages_written(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_writeback_pages_written, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #10
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_pages_written(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #10
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_writeback_pages_written, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #10
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_class(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %12, label %22, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 44) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_writeback_class, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %1, align 8
  %19 = call ptr @bdi_dev_name(ptr noundef %18) #10
  %20 = call i32 @strscpy_pad(ptr noundef %17, ptr noundef %19, i32 noundef 32) #10
  %21 = getelementptr inbounds %struct.trace_event_raw_writeback_class, ptr %14, i32 0, i32 2
  store i32 1, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #10
  br label %22

22:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_class(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #10
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_writeback_class, ptr %20, i32 0, i32 1
  %34 = load ptr, ptr %1, align 8
  %35 = call ptr @bdi_dev_name(ptr noundef %34) #10
  %36 = call i32 @strscpy_pad(ptr noundef %33, ptr noundef %35, i32 noundef 32) #10
  %37 = getelementptr inbounds %struct.trace_event_raw_writeback_class, ptr %20, i32 0, i32 2
  store i32 1, ptr %37, align 4
  %38 = load i32, ptr %4, align 4
  %39 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 44, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %12, ptr noundef null) #10
  br label %40

40:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_bdi_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %12, label %20, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 40) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_writeback_bdi_register, ptr %14, i32 0, i32 1
  %18 = call ptr @bdi_dev_name(ptr noundef %1) #10
  %19 = call i32 @strscpy_pad(ptr noundef %17, ptr noundef %18, i32 noundef 32) #10
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #10
  br label %20

20:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_bdi_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #10
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_writeback_bdi_register, ptr %20, i32 0, i32 1
  %34 = call ptr @bdi_dev_name(ptr noundef %1) #10
  %35 = call i32 @strscpy_pad(ptr noundef %33, ptr noundef %34, i32 noundef 32) #10
  %36 = load i32, ptr %4, align 4
  %37 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 44, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %12, ptr noundef null) #10
  br label %38

38:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wbc_class(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %58, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 80) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %58, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 1
  %19 = call ptr @bdi_dev_name(ptr noundef %2) #10
  %20 = call i32 @strscpy_pad(ptr noundef %18, ptr noundef %19, i32 noundef 32) #10
  %21 = load i32, ptr %1, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 1
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 5
  store i32 %32, ptr %33, align 4
  %34 = load i16, ptr %29, align 4
  %35 = lshr i16 %34, 1
  %36 = and i16 %35, 1
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 6
  store i32 %37, ptr %38, align 4
  %39 = load i16, ptr %29, align 4
  %40 = lshr i16 %39, 3
  %41 = and i16 %40, 1
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 7
  store i32 %42, ptr %43, align 4
  %44 = load i16, ptr %29, align 4
  %45 = lshr i16 %44, 4
  %46 = and i16 %45, 1
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 8
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 9
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 3
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 10
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %15, i32 0, i32 11
  store i32 1, ptr %57, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %58

58:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_wbc_class(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %76, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 84, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %76, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 1
  %35 = call ptr @bdi_dev_name(ptr noundef %2) #10
  %36 = call i32 @strscpy_pad(ptr noundef %34, ptr noundef %35, i32 noundef 32) #10
  %37 = load i32, ptr %1, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, 1
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 5
  store i32 %48, ptr %49, align 4
  %50 = load i16, ptr %45, align 4
  %51 = lshr i16 %50, 1
  %52 = and i16 %51, 1
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 6
  store i32 %53, ptr %54, align 4
  %55 = load i16, ptr %45, align 4
  %56 = lshr i16 %55, 3
  %57 = and i16 %56, 1
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 7
  store i32 %58, ptr %59, align 4
  %60 = load i16, ptr %45, align 4
  %61 = lshr i16 %60, 4
  %62 = and i16 %61, 1
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 8
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 9
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 3
  %70 = load i64, ptr %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 10
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %21, i32 0, i32 11
  store i32 1, ptr %73, align 4
  %74 = load i32, ptr %5, align 4
  %75 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 84, i32 noundef %74, ptr noundef %0, i64 noundef 1, ptr noundef %75, ptr noundef %13, ptr noundef null) #10
  br label %76

76:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_queue_io(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %15, label %35, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 60) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %1, align 8
  %22 = call ptr @bdi_dev_name(ptr noundef %21) #10
  %23 = call i32 @strscpy_pad(ptr noundef %20, ptr noundef %22, i32 noundef 32) #10
  %24 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %17, i32 0, i32 2
  store i32 %3, ptr %24, align 4
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %25, %3
  %27 = mul i32 %26, 1000
  %28 = udiv i32 %27, 100
  %29 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %17, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %17, i32 0, i32 4
  store i32 %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %17, i32 0, i32 5
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %17, i32 0, i32 6
  store i32 1, ptr %34, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #10
  br label %35

35:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_queue_io(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #6, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %53, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #10
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %23, i32 0, i32 1
  %37 = load ptr, ptr %1, align 8
  %38 = call ptr @bdi_dev_name(ptr noundef %37) #10
  %39 = call i32 @strscpy_pad(ptr noundef %36, ptr noundef %38, i32 noundef 32) #10
  %40 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %23, i32 0, i32 2
  store i32 %3, ptr %40, align 4
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = sub i32 %41, %3
  %43 = mul i32 %42, 1000
  %44 = udiv i32 %43, 100
  %45 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %23, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %23, i32 0, i32 4
  store i32 %4, ptr %46, align 4
  %47 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %23, i32 0, i32 5
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %23, i32 0, i32 6
  store i32 1, ptr %50, align 4
  %51 = load i32, ptr %7, align 4
  %52 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 60, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %15, ptr noundef null) #10
  br label %53

53:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_global_dirty_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %34, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 36) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %14
  %18 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %19 = call i32 @llvm.smax.i32(i32 %18, i32 0) #10
  %20 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %22 = call i32 @llvm.smax.i32(i32 %21, i32 0) #10
  %23 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %15, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 31), align 4
  %25 = call i32 @llvm.smax.i32(i32 %24, i32 0) #10
  %26 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %15, i32 0, i32 6
  store i32 %25, ptr %26, align 4
  %27 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 32), align 4
  %28 = call i32 @llvm.smax.i32(i32 %27, i32 0) #10
  %29 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %15, i32 0, i32 7
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %15, i32 0, i32 3
  store i32 %1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %15, i32 0, i32 4
  store i32 %2, ptr %31, align 4
  %32 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %15, i32 0, i32 5
  store i32 %32, ptr %33, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %34

34:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_global_dirty_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %35 = call i32 @llvm.smax.i32(i32 %34, i32 0) #10
  %36 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %38 = call i32 @llvm.smax.i32(i32 %37, i32 0) #10
  %39 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %21, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 31), align 4
  %41 = call i32 @llvm.smax.i32(i32 %40, i32 0) #10
  %42 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %21, i32 0, i32 6
  store i32 %41, ptr %42, align 4
  %43 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 32), align 4
  %44 = call i32 @llvm.smax.i32(i32 %43, i32 0) #10
  %45 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %21, i32 0, i32 7
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %21, i32 0, i32 3
  store i32 %1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %21, i32 0, i32 4
  store i32 %2, ptr %47, align 4
  %48 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %21, i32 0, i32 5
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %5, align 4
  %51 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %13, ptr noundef null) #10
  br label %52

52:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bdi_dirty_ratelimit(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %14, label %44, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 68) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %1, align 8
  %21 = call ptr @bdi_dev_name(ptr noundef %20) #10
  %22 = call i32 @strscpy_pad(ptr noundef %19, ptr noundef %21, i32 noundef 32) #10
  %23 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 14
  %24 = load i32, ptr %23, align 8
  %25 = shl i32 %24, 2
  %26 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %16, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 2
  %30 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %16, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = shl i32 %2, 2
  %32 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %16, i32 0, i32 4
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 16
  %34 = load i32, ptr %33, align 8
  %35 = shl i32 %34, 2
  %36 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %16, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = shl i32 %3, 2
  %38 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %16, i32 0, i32 6
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 17
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 %40, 2
  %42 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %16, i32 0, i32 7
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %16, i32 0, i32 8
  store i32 1, ptr %43, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #10
  br label %44

44:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_bdi_dirty_ratelimit(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #6, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %62, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #10
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #10
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %22, i32 0, i32 1
  %36 = load ptr, ptr %1, align 8
  %37 = call ptr @bdi_dev_name(ptr noundef %36) #10
  %38 = call i32 @strscpy_pad(ptr noundef %35, ptr noundef %37, i32 noundef 32) #10
  %39 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 14
  %40 = load i32, ptr %39, align 8
  %41 = shl i32 %40, 2
  %42 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %22, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 15
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 2
  %46 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %22, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  %47 = shl i32 %2, 2
  %48 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %22, i32 0, i32 4
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 16
  %50 = load i32, ptr %49, align 8
  %51 = shl i32 %50, 2
  %52 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %22, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  %53 = shl i32 %3, 2
  %54 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %22, i32 0, i32 6
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 17
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %56, 2
  %58 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %22, i32 0, i32 7
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %22, i32 0, i32 8
  store i32 1, ptr %59, align 4
  %60 = load i32, ptr %6, align 4
  %61 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 68, i32 noundef %60, ptr noundef %0, i64 noundef 1, ptr noundef %61, ptr noundef %14, ptr noundef null) #10
  br label %62

62:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_balance_dirty_pages(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #0 {
  %14 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 24, i1 false), !annotation !9
  %15 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 704
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !10

19:                                               ; preds = %13
  %20 = and i32 %16, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24, !prof !11

22:                                               ; preds = %19
  %23 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %23, label %78, label %24

24:                                               ; preds = %22, %19, %13
  %25 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %14, ptr noundef %0, i32 noundef 96) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %78, label %27

27:                                               ; preds = %24
  %28 = add i32 %3, %2
  %29 = lshr i32 %28, 1
  %30 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 1
  %31 = load ptr, ptr %1, align 8
  %32 = call ptr @bdi_dev_name(ptr noundef %31) #10
  %33 = call i32 @strscpy_pad(ptr noundef %30, ptr noundef %32, i32 noundef 32) #10
  %34 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %37 = add i32 %36, %29
  %38 = lshr i32 %37, 1
  %39 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = mul i32 %38, %5
  %42 = add i32 %2, 1
  %43 = udiv i32 %41, %42
  %44 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 5
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 6
  store i32 %6, ptr %45, align 4
  %46 = shl i32 %7, 2
  %47 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 7
  store i32 %46, ptr %47, align 4
  %48 = shl i32 %8, 2
  %49 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 8
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 9
  store i32 %9, ptr %50, align 4
  %51 = tail call ptr @llvm.thread.pointer() #10
  %52 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 141
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 10
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 142
  %56 = load i32, ptr %55, align 16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %27
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = sub i32 %59, %56
  %61 = mul i32 %60, 1000
  %62 = sdiv i32 %61, 100
  br label %63

63:                                               ; preds = %58, %27
  %64 = phi i32 [ %62, %58 ], [ 0, %27 ]
  %65 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 14
  store i32 %64, ptr %65, align 4
  %66 = mul i32 %10, 1000
  %67 = udiv i32 %66, 100
  %68 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 13
  store i32 %67, ptr %68, align 4
  %69 = mul i32 %11, 1000
  %70 = sdiv i32 %69, 100
  %71 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 12
  store i32 %70, ptr %71, align 4
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = sub i32 %72, %12
  %74 = mul i32 %73, 1000
  %75 = udiv i32 %74, 100
  %76 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 11
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %25, i32 0, i32 15
  store i32 1, ptr %77, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %14) #10
  br label %78

78:                                               ; preds = %63, %24, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_balance_dirty_pages(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #0 {
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store ptr null, ptr %14, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #10
  store i32 0, ptr %15, align 4, !annotation !9
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #6, !srcloc !12
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load volatile ptr, ptr %23, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %96, label %30

30:                                               ; preds = %27, %13
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef 100, ptr noundef nonnull %14, ptr noundef nonnull %15) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %96, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %14, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #10
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #10
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = add i32 %3, %2
  %45 = lshr i32 %44, 1
  %46 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 1
  %47 = load ptr, ptr %1, align 8
  %48 = call ptr @bdi_dev_name(ptr noundef %47) #10
  %49 = call i32 @strscpy_pad(ptr noundef %46, ptr noundef %48, i32 noundef 32) #10
  %50 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 2
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %53 = add i32 %52, %45
  %54 = lshr i32 %53, 1
  %55 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 4
  store i32 %4, ptr %56, align 4
  %57 = mul i32 %54, %5
  %58 = add i32 %2, 1
  %59 = udiv i32 %57, %58
  %60 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 5
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 6
  store i32 %6, ptr %61, align 4
  %62 = shl i32 %7, 2
  %63 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 7
  store i32 %62, ptr %63, align 4
  %64 = shl i32 %8, 2
  %65 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 8
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 9
  store i32 %9, ptr %66, align 4
  %67 = tail call ptr @llvm.thread.pointer() #10
  %68 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 141
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 10
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 142
  %72 = load i32, ptr %71, align 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %33
  %75 = load volatile i32, ptr @jiffies, align 64
  %76 = sub i32 %75, %72
  %77 = mul i32 %76, 1000
  %78 = sdiv i32 %77, 100
  br label %79

79:                                               ; preds = %74, %33
  %80 = phi i32 [ %78, %74 ], [ 0, %33 ]
  %81 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 14
  store i32 %80, ptr %81, align 4
  %82 = mul i32 %10, 1000
  %83 = udiv i32 %82, 100
  %84 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 13
  store i32 %83, ptr %84, align 4
  %85 = mul i32 %11, 1000
  %86 = sdiv i32 %85, 100
  %87 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 12
  store i32 %86, ptr %87, align 4
  %88 = load volatile i32, ptr @jiffies, align 64
  %89 = sub i32 %88, %12
  %90 = mul i32 %89, 1000
  %91 = udiv i32 %90, 100
  %92 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 11
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %31, i32 0, i32 15
  store i32 1, ptr %93, align 4
  %94 = load i32, ptr %15, align 4
  %95 = load ptr, ptr %14, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef 100, i32 noundef %94, ptr noundef %0, i64 noundef 1, ptr noundef %95, ptr noundef %23, ptr noundef null) #10
  br label %96

96:                                               ; preds = %79, %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_sb_inodes_requeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %12, label %32, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 56) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %14, i32 0, i32 1
  %18 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %19 = call ptr @bdi_dev_name(ptr noundef %18) #10
  %20 = call i32 @strscpy_pad(ptr noundef %17, ptr noundef %19, i32 noundef 32) #10
  %21 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %14, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %14, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %14, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  %30 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %31 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %14, i32 0, i32 5
  store i32 1, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #10
  br label %32

32:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_sb_inodes_requeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #10
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %20, i32 0, i32 1
  %34 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %35 = call ptr @bdi_dev_name(ptr noundef %34) #10
  %36 = call i32 @strscpy_pad(ptr noundef %33, ptr noundef %35, i32 noundef 32) #10
  %37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %20, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %20, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %20, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %47 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %20, i32 0, i32 5
  store i32 1, ptr %47, align 4
  %48 = load i32, ptr %4, align 4
  %49 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 60, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %12, ptr noundef null) #10
  br label %50

50:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_congest_waited_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_writeback_congest_waited_template, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_writeback_congest_waited_template, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_congest_waited_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_writeback_congest_waited_template, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_writeback_congest_waited_template, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #10
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_single_inode_template(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %14, label %42, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 68) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %16, i32 0, i32 1
  %20 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %21 = call ptr @bdi_dev_name(ptr noundef %20) #10
  %22 = call i32 @strscpy_pad(ptr noundef %19, ptr noundef %21, i32 noundef 32) #10
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %16, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %16, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %16, i32 0, i32 4
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.address_space, ptr %33, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %16, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %16, i32 0, i32 6
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %2, align 8
  %39 = sub i32 %3, %38
  %40 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %16, i32 0, i32 7
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %16, i32 0, i32 8
  store i32 1, ptr %41, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #10
  br label %42

42:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_single_inode_template(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #6, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %60, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #10
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #10
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %22, i32 0, i32 1
  %36 = call ptr @inode_to_bdi(ptr noundef %1) #10
  %37 = call ptr @bdi_dev_name(ptr noundef %36) #10
  %38 = call i32 @strscpy_pad(ptr noundef %35, ptr noundef %37, i32 noundef 32) #10
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %22, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %22, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %22, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.address_space, ptr %49, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %22, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %22, i32 0, i32 6
  store i32 %3, ptr %53, align 4
  %54 = load i32, ptr %2, align 8
  %55 = sub i32 %3, %54
  %56 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %22, i32 0, i32 7
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %22, i32 0, i32 8
  store i32 1, ptr %57, align 4
  %58 = load i32, ptr %6, align 4
  %59 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 68, i32 noundef %58, ptr noundef %0, i64 noundef 1, ptr noundef %59, ptr noundef %14, ptr noundef null) #10
  br label %60

60:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_writeback_inode_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %12, label %33, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 28) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %14, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %14, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %14, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = load i16, ptr %1, align 8
  %29 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %14, i32 0, i32 4
  store i16 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %14, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #10
  br label %33

33:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_writeback_inode_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #10
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %20, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %20, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %20, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  %44 = load i16, ptr %1, align 8
  %45 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %20, i32 0, i32 4
  store i16 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %20, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %4, align 4
  %50 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %12, ptr noundef null) #10
  br label %51

51:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wb_wait_for_completion(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !14
  %4 = load volatile i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #10
  %7 = getelementptr inbounds %struct.wb_completion, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef nonnull %2, i32 noundef 2) #10
  %10 = load volatile i32, ptr %0, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %12, %6
  call void @schedule() #10
  %13 = load ptr, ptr %7, align 4
  %14 = call i32 @prepare_to_wait_event(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 2) #10
  %15 = load volatile i32, ptr %0, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %12

17:                                               ; preds = %12, %6
  %18 = load ptr, ptr %7, align 4
  call void @finish_wait(ptr noundef %18, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %19

19:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wb_start_background_writeback(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_wake_background, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_wake_background, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #10
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %27

27:                                               ; preds = %26, %4, %1
  %28 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %28) #10
  %29 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 1
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr @bdi_wq, align 4
  %35 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 23
  %36 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %34, ptr noundef %35, i32 noundef 0) #10
  br label %37

37:                                               ; preds = %33, %27
  tail call void @_raw_spin_unlock_bh(ptr noundef %28) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_io_list_del(ptr noundef %0) #0 {
  %2 = tail call ptr @inode_to_bdi(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.backing_dev_info, ptr %2, i32 0, i32 11
  %4 = getelementptr inbounds %struct.backing_dev_info, ptr %2, i32 0, i32 11, i32 7
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -131073
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %10, align 4
  %14 = getelementptr inbounds %struct.backing_dev_info, ptr %2, i32 0, i32 11, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.backing_dev_info, ptr %2, i32 0, i32 11, i32 3
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.backing_dev_info, ptr %2, i32 0, i32 11, i32 4
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.backing_dev_info, ptr %2, i32 0, i32 11, i32 5
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %14) #10
  %31 = getelementptr inbounds %struct.backing_dev_info, ptr %2, i32 0, i32 11, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.backing_dev_info, ptr %33, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #10, !srcloc !13
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 %32, ptr elementtype(i32) %34) #10, !srcloc !18
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %37 = icmp slt i32 %36, 0
  %38 = load i1, ptr @wb_io_lists_depopulated.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %30
  store i1 true, ptr @wb_io_lists_depopulated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  br label %42

42:                                               ; preds = %41, %30, %26, %22, %18, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %43 = load i16, ptr %5, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %45 = load i16, ptr %4, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sb_mark_inode_writeback(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 57
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #10
  %10 = load volatile ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %12, label %42

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 58
  %14 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 58, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %4, ptr %14, align 4
  store ptr %13, ptr %4, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %4, ptr %15, align 4
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sb_mark_inode_writeback, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %12
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
  br i1 %29, label %42, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sb_mark_inode_writeback, i32 0, i32 7), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %38, %33 ], [ %31, %30 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tracepoint_func, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %35(ptr noundef %37, ptr noundef %0) #10
  %38 = getelementptr %struct.tracepoint_func, ptr %34, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33

41:                                               ; preds = %33, %30
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %42

42:                                               ; preds = %41, %19, %12, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #10
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sb_clear_inode_writeback(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 57
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #10
  %10 = load volatile ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %41, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %10, ptr %14, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %13, align 4
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sb_clear_inode_writeback, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = tail call ptr @llvm.thread.pointer() #10
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sb_clear_inode_writeback, i32 0, i32 7), align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %32, %29
  %33 = phi ptr [ %37, %32 ], [ %30, %29 ]
  %34 = load volatile ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tracepoint_func, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void %34(ptr noundef %36, ptr noundef %0) #10
  %37 = getelementptr %struct.tracepoint_func, ptr %33, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32

40:                                               ; preds = %32, %29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  br label %41

41:                                               ; preds = %40, %18, %12, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #10
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_wait_for_writeback(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_bit_queue_entry, align 4
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  store ptr %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 1
  store i32 7, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 1
  %9 = tail call ptr @llvm.thread.pointer() #10
  store ptr %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 2
  store ptr @wake_bit_function, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 3
  store ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  %13 = call ptr @bit_waitqueue(ptr noundef %4, i32 noundef 7) #10
  %14 = load i32, ptr %4, align 4
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %18 = load i16, ptr %3, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %20 = call i32 @__wait_on_bit(ptr noundef %13, ptr noundef nonnull %2, ptr noundef nonnull @bit_wait, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %3) #10
  %21 = load i32, ptr %4, align 4
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %25 = load i16, ptr %3, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wb_workfn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wb_writeback_work, align 4
  %3 = alloca %struct.wb_writeback_work, align 4
  %4 = alloca %struct.wb_writeback_work, align 4
  %5 = getelementptr i8, ptr %0, i32 -276
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @bdi_dev_name(ptr noundef %6) #10
  tail call void (ptr, ...) @set_worker_desc(ptr noundef nonnull @.str.8, ptr noundef %7) #10
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 8388608
  store i32 %11, ptr %9, align 4
  %12 = tail call zeroext i1 @current_is_workqueue_rescuer() #10
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -272
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %170, !prof !10

18:                                               ; preds = %13, %1
  %19 = getelementptr i8, ptr %0, i32 -272
  %20 = getelementptr i8, ptr %0, i32 -12
  %21 = getelementptr i8, ptr %0, i32 -8
  %22 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %23 = getelementptr inbounds i8, ptr %4, i32 12
  %24 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 1
  %25 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 4
  %27 = getelementptr i8, ptr %0, i32 -16
  %28 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 5
  %29 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 6
  %30 = getelementptr i8, ptr %0, i32 -268
  %31 = getelementptr inbounds i8, ptr %3, i32 12
  %32 = getelementptr inbounds %struct.wb_writeback_work, ptr %3, i32 0, i32 1
  %33 = getelementptr inbounds %struct.wb_writeback_work, ptr %3, i32 0, i32 2
  %34 = getelementptr inbounds %struct.wb_writeback_work, ptr %3, i32 0, i32 4
  %35 = getelementptr inbounds %struct.wb_writeback_work, ptr %3, i32 0, i32 5
  %36 = getelementptr inbounds %struct.wb_writeback_work, ptr %3, i32 0, i32 6
  br label %37

37:                                               ; preds = %167, %18
  call void @_set_bit(i32 noundef 1, ptr noundef %19) #10
  call void @_raw_spin_lock_bh(ptr noundef %20) #10
  %38 = load volatile ptr, ptr %21, align 4
  %39 = icmp eq ptr %38, %21
  br i1 %39, label %40, label %42

40:                                               ; preds = %94, %37
  %41 = phi i32 [ 0, %37 ], [ %77, %94 ]
  call void @_raw_spin_unlock_bh(ptr noundef %20) #10
  br label %97

42:                                               ; preds = %94, %37
  %43 = phi ptr [ %95, %94 ], [ %38, %37 ]
  %44 = phi i32 [ %77, %94 ], [ 0, %37 ]
  %45 = getelementptr i8, ptr %43, i32 -20
  %46 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %43, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store volatile ptr %43, ptr %43, align 4
  store ptr %43, ptr %46, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %20) #10
  %50 = icmp eq ptr %45, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %42
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_exec, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i32, ptr %22, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %54
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  %64 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_exec, i32 0, i32 7), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %66, %63
  %67 = phi ptr [ %71, %66 ], [ %64, %63 ]
  %68 = load volatile ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.tracepoint_func, ptr %67, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  call void %68(ptr noundef %70, ptr noundef %5, ptr noundef nonnull %45) #10
  %71 = getelementptr %struct.tracepoint_func, ptr %67, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %66

74:                                               ; preds = %66, %63
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  br label %75

75:                                               ; preds = %74, %54, %51
  %76 = call fastcc i32 @wb_writeback(ptr noundef %5, ptr noundef nonnull %45) #10
  %77 = add i32 %76, %44
  %78 = getelementptr i8, ptr %43, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %43, i32 -8
  %81 = load i8, ptr %80, align 4
  %82 = and i8 %81, 32
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  call void @kfree(ptr noundef nonnull %45) #10
  br label %85

85:                                               ; preds = %84, %75
  %86 = icmp eq ptr %79, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.wb_completion, ptr %79, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %79) #10, !srcloc !13
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %79, ptr nonnull %79, i32 1, ptr nonnull elementtype(i32) %79) #10, !srcloc !18
  %91 = extractvalue { i32, i32 } %90, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  call void @__wake_up(ptr noundef %89, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %94

94:                                               ; preds = %93, %87, %85
  call void @_raw_spin_lock_bh(ptr noundef %20) #10
  %95 = load volatile ptr, ptr %21, align 4
  %96 = icmp eq ptr %95, %21
  br i1 %96, label %40, label %42

97:                                               ; preds = %42, %40
  %98 = phi i32 [ %41, %40 ], [ %44, %42 ]
  %99 = load volatile i32, ptr %19, align 4
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %97
  %103 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %104 = call i32 @llvm.smax.i32(i32 %103, i32 0) #10
  %105 = call i32 @get_nr_dirty_inodes() #10
  %106 = add i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  store i32 4, ptr %23, align 4, !annotation !9
  store i32 %106, ptr %4, align 4
  store ptr null, ptr %24, align 4
  store i32 0, ptr %25, align 4
  %109 = load i32, ptr %27, align 4
  store i32 %109, ptr %26, align 4
  store i64 0, ptr %28, align 4
  store ptr null, ptr %29, align 4
  %110 = call fastcc i32 @wb_writeback(ptr noundef %5, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  br label %111

111:                                              ; preds = %108, %102
  %112 = phi i32 [ %110, %108 ], [ 0, %102 ]
  call void @_clear_bit(i32 noundef 3, ptr noundef %19) #10
  br label %113

113:                                              ; preds = %111, %97
  %114 = phi i32 [ %112, %111 ], [ 0, %97 ]
  %115 = load i32, ptr @dirty_writeback_interval, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %113
  %118 = load i32, ptr %30, align 8
  %119 = mul i32 %115, 10
  %120 = call i32 @__msecs_to_jiffies(i32 noundef %119) #10
  %121 = load volatile i32, ptr @jiffies, align 64
  %122 = add i32 %120, %118
  %123 = sub i32 %121, %122
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %117
  %126 = load volatile i32, ptr @jiffies, align 64
  store i32 %126, ptr %30, align 8
  %127 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %128 = call i32 @llvm.smax.i32(i32 %127, i32 0) #10
  %129 = call i32 @get_nr_dirty_inodes() #10
  %130 = add i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  store i32 6, ptr %31, align 4, !annotation !9
  store i32 %130, ptr %3, align 4
  store ptr null, ptr %32, align 4
  store i32 0, ptr %33, align 4
  store i32 3, ptr %34, align 4
  store i64 0, ptr %35, align 4
  store ptr null, ptr %36, align 4
  %133 = call fastcc i32 @wb_writeback(ptr noundef %5, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %134

134:                                              ; preds = %132, %125, %117, %113
  %135 = phi i32 [ %133, %132 ], [ 0, %113 ], [ 0, %117 ], [ 0, %125 ]
  %136 = call zeroext i1 @wb_over_bg_thresh(ptr noundef %5) #10
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.wb_check_background_flush.work, i32 32, i1 false) #10
  %138 = call fastcc i32 @wb_writeback(ptr noundef %5, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  br label %139

139:                                              ; preds = %137, %134
  %140 = phi i32 [ %138, %137 ], [ 0, %134 ]
  %141 = add i32 %114, %98
  %142 = add i32 %141, %135
  %143 = add i32 %142, %140
  call void @_clear_bit(i32 noundef 1, ptr noundef %19) #10
  %144 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_pages_written, i32 0, i32 1), align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %167

146:                                              ; preds = %139
  %147 = load i32, ptr %22, align 8
  %148 = lshr i32 %147, 5
  %149 = getelementptr i32, ptr @__cpu_online_mask, i32 %148
  %150 = load volatile i32, ptr %149, align 4
  %151 = and i32 %147, 31
  %152 = shl nuw i32 1, %151
  %153 = and i32 %152, %150
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %146
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %156 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_pages_written, i32 0, i32 7), align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %166, label %158

158:                                              ; preds = %158, %155
  %159 = phi ptr [ %163, %158 ], [ %156, %155 ]
  %160 = load volatile ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.tracepoint_func, ptr %159, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  call void %160(ptr noundef %162, i32 noundef %143) #10
  %163 = getelementptr %struct.tracepoint_func, ptr %159, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %158

166:                                              ; preds = %158, %155
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  br label %167

167:                                              ; preds = %166, %146, %139
  %168 = load volatile ptr, ptr %21, align 4
  %169 = icmp eq ptr %168, %21
  br i1 %169, label %172, label %37

170:                                              ; preds = %13
  %171 = tail call fastcc i32 @writeback_inodes_wb(ptr noundef %5)
  tail call fastcc void @trace_writeback_pages_written(i32 noundef %171)
  br label %172

172:                                              ; preds = %170, %167
  %173 = getelementptr i8, ptr %0, i32 -8
  %174 = load volatile ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, %173
  br i1 %175, label %186, label %176

176:                                              ; preds = %172
  %177 = getelementptr i8, ptr %0, i32 -12
  call void @_raw_spin_lock_bh(ptr noundef %177) #10
  %178 = getelementptr i8, ptr %0, i32 -272
  %179 = load volatile i32, ptr %178, align 4
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %176
  %183 = load ptr, ptr @bdi_wq, align 4
  %184 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %183, ptr noundef %0, i32 noundef 0) #10
  br label %185

185:                                              ; preds = %182, %176
  call void @_raw_spin_unlock_bh(ptr noundef %177) #10
  br label %195

186:                                              ; preds = %172
  %187 = getelementptr i8, ptr %0, i32 -272
  %188 = load volatile i32, ptr %187, align 4
  %189 = and i32 %188, 4
  %190 = icmp ne i32 %189, 0
  %191 = load i32, ptr @dirty_writeback_interval, align 4
  %192 = icmp ne i32 %191, 0
  %193 = select i1 %190, i1 %192, i1 false
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  call void @wb_wakeup_delayed(ptr noundef %5) #10
  br label %195

195:                                              ; preds = %194, %186, %185
  %196 = load i32, ptr %9, align 4
  %197 = and i32 %196, -8388609
  store i32 %197, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_worker_desc(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdi_dev_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @current_is_workqueue_rescuer() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_writeback_pages_written(i32 noundef %0) unnamed_addr #4 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_pages_written, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_pages_written, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, i32 noundef %0) #10
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @writeback_inodes_wb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wb_writeback_work, align 4
  %3 = alloca %struct.blk_plug, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  %4 = getelementptr inbounds i8, ptr %2, i32 12
  store i32 0, ptr %4, align 4, !annotation !9
  store i32 1024, ptr %2, align 4
  %5 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 1
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 3
  store i8 4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 4
  store i32 6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 5
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 6
  store ptr null, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  call void @blk_start_plug(ptr noundef nonnull %3) #10
  %11 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 4
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load volatile i32, ptr @jiffies, align 64
  call fastcc void @queue_io(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %16)
  br label %17

17:                                               ; preds = %15, %1
  %18 = call fastcc i32 @__writeback_inodes_wb(ptr noundef %0, ptr noundef nonnull %2)
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %19 = load i16, ptr %11, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  call void @blk_finish_plug(ptr noundef nonnull %3) #10
  %21 = load i32, ptr %2, align 4
  %22 = sub i32 1024, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_wakeup_delayed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_flusher_threads_bdi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  tail call fastcc void @__wakeup_flusher_threads_bdi(ptr noundef %0, i32 noundef %1)
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__wakeup_flusher_threads_bdi(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 10
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 12
  %8 = load volatile ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %37, label %10

10:                                               ; preds = %34, %6
  %11 = phi ptr [ %35, %34 ], [ %8, %6 ]
  %12 = getelementptr i8, ptr %11, i32 -364
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %12) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %11, i32 -108
  store i32 %1, ptr %24, align 4
  %25 = getelementptr i8, ptr %11, i32 -104
  tail call void @_raw_spin_lock_bh(ptr noundef %25) #10
  %26 = load volatile i32, ptr %12, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @bdi_wq, align 4
  %31 = getelementptr i8, ptr %11, i32 -92
  %32 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %31, i32 noundef 0) #10
  br label %33

33:                                               ; preds = %29, %23
  tail call void @_raw_spin_unlock_bh(ptr noundef %25) #10
  br label %34

34:                                               ; preds = %33, %20, %16, %10
  %35 = load volatile ptr, ptr %11, align 8
  %36 = icmp eq ptr %35, %7
  br i1 %36, label %37, label %10

37:                                               ; preds = %34, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_flusher_threads(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 115
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.blk_plug, ptr %4, i32 0, i32 7
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %6
  tail call void @blk_flush_plug(ptr noundef nonnull %4, i1 noundef zeroext true) #10
  br label %14

14:                                               ; preds = %13, %9, %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %15 = load volatile ptr, ptr @bdi_list, align 4
  %16 = icmp eq ptr %15, @bdi_list
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %20, %17 ], [ %15, %14 ]
  %19 = getelementptr i8, ptr %18, i32 -20
  tail call fastcc void @__wakeup_flusher_threads_bdi(ptr noundef %19, i32 noundef %0)
  %20 = load volatile ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, @bdi_list
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_flush_plug(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @start_dirtytime_writeback() #5 section ".init.text" {
  %1 = load i32, ptr @dirtytime_expire_interval, align 4
  %2 = mul i32 %1, 100
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef nonnull @dirtytime_work, i32 noundef %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dirtytime_interval_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef nonnull @dirtytime_work, i32 noundef 0) #10
  br label %13

13:                                               ; preds = %10, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mark_inode_dirty(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_mark_inode_dirty, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_mark_inode_dirty, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, ptr noundef %0, i32 noundef %1) #10
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  br label %30

30:                                               ; preds = %29, %7, %2
  %31 = and i32 %1, 3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %94, label %33

33:                                               ; preds = %30
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_inode_start, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = tail call ptr @llvm.thread.pointer() #10
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  %48 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_inode_start, i32 0, i32 7), align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %50, %47
  %51 = phi ptr [ %55, %50 ], [ %48, %47 ]
  %52 = load volatile ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tracepoint_func, ptr %51, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void %52(ptr noundef %54, ptr noundef %0, i32 noundef %1) #10
  %55 = getelementptr %struct.tracepoint_func, ptr %51, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %50

58:                                               ; preds = %50, %47
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br label %59

59:                                               ; preds = %58, %36, %33
  %60 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.super_operations, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void %63(ptr noundef %0, i32 noundef %31) #10
  br label %66

66:                                               ; preds = %65, %59
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_inode, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %66
  %70 = tail call ptr @llvm.thread.pointer() #10
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  %81 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_inode, i32 0, i32 7), align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %83, %80
  %84 = phi ptr [ %88, %83 ], [ %81, %80 ]
  %85 = load volatile ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.tracepoint_func, ptr %84, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  tail call void %85(ptr noundef %87, ptr noundef %0, i32 noundef %1) #10
  %88 = getelementptr %struct.tracepoint_func, ptr %84, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %83

91:                                               ; preds = %83, %80
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %92

92:                                               ; preds = %91, %69, %66
  %93 = and i32 %1, -2049
  br label %103

94:                                               ; preds = %30
  %95 = and i32 %1, 2048
  %96 = icmp ne i32 %95, 0
  %97 = icmp ne i32 %1, 2048
  %98 = and i1 %97, %96
  %99 = load i1, ptr @__mark_inode_dirty.__already_done, align 1
  %100 = xor i1 %99, true
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %103, !prof !11

102:                                              ; preds = %94
  store i1 true, ptr @__mark_inode_dirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2421, i32 noundef 9, ptr noundef null) #10
  br label %103

103:                                              ; preds = %102, %94, %92
  %104 = phi i32 [ 0, %92 ], [ 1, %102 ], [ %95, %94 ]
  %105 = phi i32 [ %93, %92 ], [ %1, %102 ], [ %1, %94 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !40
  %106 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, %105
  br i1 %109, label %180, label %110

110:                                              ; preds = %103
  %111 = icmp eq i32 %104, 0
  %112 = and i32 %107, 3
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %111, i1 true, i1 %113
  br i1 %114, label %115, label %180

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %116) #10
  %117 = load i32, ptr %106, align 4
  %118 = and i32 %117, 3
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %111, true
  %121 = select i1 %120, i1 %119, i1 false
  %122 = and i32 %117, %105
  %123 = icmp eq i32 %122, %105
  %124 = select i1 %121, i1 true, i1 %123
  br i1 %124, label %177, label %125

125:                                              ; preds = %115
  %126 = and i32 %117, 7
  %127 = and i32 %105, 3
  %128 = icmp eq i32 %127, 0
  %129 = and i32 %117, -2049
  %130 = select i1 %128, i32 %117, i32 %129
  %131 = or i32 %130, %105
  store i32 %131, ptr %106, align 4
  %132 = and i32 %131, 131072
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %177

134:                                              ; preds = %125
  %135 = load i16, ptr %0, align 8
  %136 = and i16 %135, -4096
  %137 = icmp eq i16 %136, 24576
  br i1 %137, label %147, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp ne ptr %140, null
  %142 = and i32 %131, 32
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %141, i1 %143, i1 false
  %145 = icmp eq i32 %126, 0
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %152, label %177

147:                                              ; preds = %134
  %148 = and i32 %131, 32
  %149 = icmp eq i32 %148, 0
  %150 = icmp eq i32 %126, 0
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %152, label %177

152:                                              ; preds = %147, %138
  %153 = tail call fastcc ptr @locked_inode_to_wb_and_lock_list(ptr noundef %0)
  %154 = load volatile i32, ptr @jiffies, align 64
  %155 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25
  store i32 %154, ptr %155, align 8
  br i1 %111, label %159, label %156

156:                                              ; preds = %152
  %157 = load volatile i32, ptr @jiffies, align 64
  %158 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 26
  store i32 %157, ptr %158, align 4
  br label %159

159:                                              ; preds = %156, %152
  %160 = load i32, ptr %106, align 4
  %161 = and i32 %160, 7
  %162 = icmp eq i32 %161, 0
  %163 = getelementptr inbounds %struct.bdi_writeback, ptr %153, i32 0, i32 3
  %164 = getelementptr inbounds %struct.bdi_writeback, ptr %153, i32 0, i32 6
  %165 = select i1 %162, ptr %164, ptr %163
  %166 = tail call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %0, ptr noundef %153, ptr noundef %165)
  %167 = getelementptr inbounds %struct.bdi_writeback, ptr %153, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %168 = load i16, ptr %167, align 4
  %169 = add i16 %168, 1
  store i16 %169, ptr %167, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  tail call fastcc void @trace_writeback_dirty_inode_enqueue(ptr noundef %0)
  br i1 %166, label %170, label %180

170:                                              ; preds = %159
  %171 = load ptr, ptr %153, align 8
  %172 = getelementptr inbounds %struct.backing_dev_info, ptr %171, i32 0, i32 6
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %170
  tail call void @wb_wakeup_delayed(ptr noundef %153) #10
  br label %180

177:                                              ; preds = %147, %138, %125, %115
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %178 = load i16, ptr %116, align 4
  %179 = add i16 %178, 1
  store i16 %179, ptr %116, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %180

180:                                              ; preds = %177, %176, %170, %159, %110, %103
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @locked_inode_to_wb_and_lock_list(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @inode_to_bdi(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.backing_dev_info, ptr %2, i32 0, i32 11
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %5 = load i16, ptr %4, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %7 = getelementptr inbounds %struct.backing_dev_info, ptr %2, i32 0, i32 11, i32 7
  tail call void @_raw_spin_lock(ptr noundef %7) #10
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %6 = load volatile i32, ptr %5, align 4
  store volatile i32 %6, ptr %4, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %6, 65535
  %9 = icmp eq i32 %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #10, !srcloc !41
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %12, ptr %18, align 4
  store ptr %17, ptr %12, align 4
  store ptr %2, ptr %13, align 4
  store volatile ptr %12, ptr %2, align 4
  %19 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 6
  %20 = icmp eq ptr %19, %2
  %21 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %20, label %40, label %25

25:                                               ; preds = %11
  br i1 %24, label %26, label %65

26:                                               ; preds = %25
  tail call void @_set_bit(i32 noundef 2, ptr noundef %21) #10
  %27 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = load i1, ptr @wb_io_lists_populated.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %35, !prof !11

33:                                               ; preds = %26
  store i1 true, ptr @wb_io_lists_populated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 91, i32 noundef 9, ptr noundef null) #10
  %34 = load i32, ptr %27, align 4
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi i32 [ %34, %33 ], [ %28, %26 ]
  %37 = load ptr, ptr %1, align 8
  %38 = getelementptr inbounds %struct.backing_dev_info, ptr %37, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #10, !srcloc !13
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 %36, ptr elementtype(i32) %38) #10, !srcloc !42
  br label %65

40:                                               ; preds = %11
  br i1 %24, label %65, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 3
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 4
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 5
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %21) #10
  %54 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 15
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %1, align 8
  %57 = getelementptr inbounds %struct.backing_dev_info, ptr %56, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #10, !srcloc !13
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 %55, ptr elementtype(i32) %57) #10, !srcloc !18
  %59 = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %60 = icmp slt i32 %59, 0
  %61 = load i1, ptr @wb_io_lists_depopulated.__already_done, align 1
  %62 = xor i1 %61, true
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %65, !prof !11

64:                                               ; preds = %53
  store i1 true, ptr @wb_io_lists_depopulated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  br label %65

65:                                               ; preds = %64, %53, %49, %45, %41, %40, %35, %25
  %66 = phi i1 [ false, %25 ], [ true, %35 ], [ false, %40 ], [ false, %41 ], [ false, %45 ], [ false, %49 ], [ false, %53 ], [ false, %64 ]
  ret i1 %66
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_writeback_dirty_inode_enqueue(ptr noundef %0) unnamed_addr #4 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_inode_enqueue, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !43
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_inode_enqueue, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #10
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !44
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @writeback_inodes_sb_nr(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wb_completion, align 8
  %5 = alloca %struct.wb_writeback_work, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 1, ptr %4, align 8, !annotation !9
  %8 = getelementptr inbounds %struct.wb_completion, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 13
  store ptr %9, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %10 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 1, ptr %10, align 4, !annotation !9
  store i32 %1, ptr %5, align 4
  %11 = getelementptr inbounds %struct.wb_writeback_work, ptr %5, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wb_writeback_work, ptr %5, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wb_writeback_work, ptr %5, i32 0, i32 4
  store i32 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wb_writeback_work, ptr %5, i32 0, i32 5
  store i64 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wb_writeback_work, ptr %5, i32 0, i32 6
  store ptr %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 10
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = icmp ne ptr %7, @noop_backing_dev_info
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27, !prof !11

25:                                               ; preds = %21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2620, i32 noundef 9, ptr noundef null) #10
  %26 = load ptr, ptr %6, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi ptr [ %26, %25 ], [ %7, %21 ]
  call fastcc void @bdi_split_work_to_wbs(ptr noundef %28, ptr noundef nonnull %5, i1 noundef zeroext false) #10
  call void @wb_wait_for_completion(ptr noundef nonnull %4) #10
  br label %29

29:                                               ; preds = %27, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @writeback_inodes_sb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wb_completion, align 8
  %4 = alloca %struct.wb_writeback_work, align 4
  %5 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0) #10
  %7 = tail call i32 @get_nr_dirty_inodes() #10
  %8 = add i32 %6, %7
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 1, ptr %3, align 8, !annotation !9
  %11 = getelementptr inbounds %struct.wb_completion, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.backing_dev_info, ptr %10, i32 0, i32 13
  store ptr %12, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  %13 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 1, ptr %13, align 4, !annotation !9
  store i32 %8, ptr %4, align 4
  %14 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 4
  store i32 %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 5
  store i64 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 6
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.backing_dev_info, ptr %10, i32 0, i32 10
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne ptr %10, @noop_backing_dev_info
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  %26 = load volatile i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30, !prof !11

28:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2620, i32 noundef 9, ptr noundef null) #10
  %29 = load ptr, ptr %9, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %10, %24 ]
  call fastcc void @bdi_split_work_to_wbs(ptr noundef %31, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  call void @wb_wait_for_completion(ptr noundef nonnull %3) #10
  br label %32

32:                                               ; preds = %30, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @try_to_writeback_inodes_sb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wb_completion, align 8
  %4 = alloca %struct.wb_writeback_work, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  %6 = tail call i32 @down_read_trylock(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0) #10
  %11 = tail call i32 @get_nr_dirty_inodes() #10
  %12 = add i32 %10, %11
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 1, ptr %3, align 8, !annotation !9
  %15 = getelementptr inbounds %struct.wb_completion, ptr %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.backing_dev_info, ptr %14, i32 0, i32 13
  store ptr %16, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  %17 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 1, ptr %17, align 4, !annotation !9
  store i32 %12, ptr %4, align 4
  %18 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 1
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 2
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 4
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 5
  store i64 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 6
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.backing_dev_info, ptr %14, i32 0, i32 10
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne ptr %14, @noop_backing_dev_info
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %35

28:                                               ; preds = %8
  %29 = load volatile i32, ptr %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33, !prof !11

31:                                               ; preds = %28
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2620, i32 noundef 9, ptr noundef null) #10
  %32 = load ptr, ptr %13, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %32, %31 ], [ %14, %28 ]
  call fastcc void @bdi_split_work_to_wbs(ptr noundef %34, ptr noundef nonnull %4, i1 noundef zeroext true) #10
  call void @wb_wait_for_completion(ptr noundef nonnull %3) #10
  br label %35

35:                                               ; preds = %33, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @up_read(ptr noundef %5) #10
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sync_inodes_sb(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.wb_completion, align 8
  %4 = alloca %struct.wb_writeback_work, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 1, ptr %3, align 8, !annotation !9
  %7 = getelementptr inbounds %struct.wb_completion, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 13
  store ptr %8, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  %9 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %9, align 4, !annotation !9
  store i32 2147483647, ptr %4, align 4
  %10 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 2
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 3
  store i8 16, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 4
  store i32 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 5
  store i64 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wb_writeback_work, ptr %4, i32 0, i32 6
  store ptr %3, ptr %15, align 4
  %16 = icmp eq ptr %6, @noop_backing_dev_info
  br i1 %16, label %81, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !11

21:                                               ; preds = %17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2704, i32 noundef 9, ptr noundef null) #10
  br label %22

22:                                               ; preds = %21, %17
  call fastcc void @bdi_split_work_to_wbs(ptr noundef %6, ptr noundef nonnull %4, i1 noundef zeroext false)
  call void @wb_wait_for_completion(ptr noundef nonnull %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr %2, ptr %2, align 8
  %23 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %23, align 4
  %24 = load volatile i32, ptr %18, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2527, i32 noundef 9, ptr noundef null) #10
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 52
  call void @mutex_lock(ptr noundef %28) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %29 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 57
  call void @_raw_spin_lock_irq(ptr noundef %29) #10
  %30 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 58
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 58, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %2, ptr %37, align 4
  store ptr %31, ptr %2, align 8
  store ptr %34, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %30, ptr %30, align 4
  store ptr %30, ptr %35, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load volatile ptr, ptr %2, align 8
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %78, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 58, i32 1
  br label %44

44:                                               ; preds = %75, %42
  %45 = phi ptr [ %40, %42 ], [ %76, %75 ]
  %46 = getelementptr i8, ptr %45, i32 -192
  %47 = getelementptr i8, ptr %45, i32 -160
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  %53 = load ptr, ptr %43, align 4
  store ptr %45, ptr %43, align 4
  store ptr %30, ptr %45, align 4
  store ptr %53, ptr %49, align 4
  store volatile ptr %45, ptr %53, align 4
  %54 = getelementptr inbounds %struct.address_space, ptr %48, i32 0, i32 1, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 67108864
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %44
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %59 = load i16, ptr %29, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %29, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !45
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  %61 = getelementptr i8, ptr %45, i32 -88
  call void @_raw_spin_lock(ptr noundef %61) #10
  %62 = getelementptr i8, ptr %45, i32 -68
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 56
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %67 = load i16, ptr %61, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %61, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %74

69:                                               ; preds = %58
  call void @__iget(ptr noundef %46) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %70 = load i16, ptr %61, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %61, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %72 = call i32 @filemap_fdatawait_keep_errors(ptr noundef %48) #10
  %73 = call i32 @__cond_resched() #10
  call void @iput(ptr noundef %46) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  br label %74

74:                                               ; preds = %69, %66
  call void @_raw_spin_lock_irq(ptr noundef %29) #10
  br label %75

75:                                               ; preds = %74, %44
  %76 = load volatile ptr, ptr %2, align 8
  %77 = icmp eq ptr %76, %2
  br i1 %77, label %78, label %44

78:                                               ; preds = %75, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %79 = load i16, ptr %29, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %29, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !45
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  call void @mutex_unlock(ptr noundef %28) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %81

81:                                               ; preds = %78, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bdi_split_work_to_wbs(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  br i1 %2, label %4, label %9

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %76

9:                                                ; preds = %4, %3
  %10 = getelementptr inbounds %struct.wb_writeback_work, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, -33
  store i8 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_queue, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %9
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_queue, i32 0, i32 7), align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %35, %30 ], [ %28, %27 ]
  %32 = load volatile ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tracepoint_func, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %32(ptr noundef %34, ptr noundef %13, ptr noundef %1) #10
  %35 = getelementptr %struct.tracepoint_func, ptr %31, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %27
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  br label %39

39:                                               ; preds = %38, %16, %9
  %40 = getelementptr inbounds %struct.wb_writeback_work, ptr %1, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %41) #10, !srcloc !13
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #10, !srcloc !42
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %46) #10
  %47 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 1
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.wb_writeback_work, ptr %1, i32 0, i32 5
  %53 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 22
  %54 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 22, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %52, ptr %54, align 4
  store ptr %53, ptr %52, align 4
  %56 = getelementptr inbounds %struct.wb_writeback_work, ptr %1, i32 0, i32 5, i32 1
  store ptr %55, ptr %56, align 4
  store volatile ptr %52, ptr %55, align 4
  %57 = load ptr, ptr @bdi_wq, align 4
  %58 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 23
  %59 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %57, ptr noundef %58, i32 noundef 0) #10
  br label %75

60:                                               ; preds = %45
  %61 = load ptr, ptr %40, align 4
  %62 = load i8, ptr %10, align 4
  %63 = and i8 %62, 32
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  tail call void @kfree(ptr noundef %1) #10
  br label %66

66:                                               ; preds = %65, %60
  %67 = icmp eq ptr %61, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.wb_completion, ptr %61, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %61) #10, !srcloc !13
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %61, ptr nonnull %61, i32 1, ptr nonnull elementtype(i32) %61) #10, !srcloc !18
  %72 = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  tail call void @__wake_up(ptr noundef %70, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %75

75:                                               ; preds = %74, %68, %66, %51
  tail call void @_raw_spin_unlock_bh(ptr noundef %46) #10
  br label %76

76:                                               ; preds = %75, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @write_inode_now(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.writeback_control, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 24
  store i64 0, ptr %4, align 8, !annotation !9
  store i32 2147483647, ptr %3, align 8
  %5 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 2
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 3
  store i64 9223372036854775807, ptr %7, align 8
  %8 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 4
  %9 = icmp ne i32 %1, 0
  %10 = zext i1 %9 to i32
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @inode_to_bdi(ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.backing_dev_info, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, ptr %3, align 8
  br label %20

20:                                               ; preds = %19, %2
  %21 = call fastcc i32 @writeback_single_inode(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @writeback_single_inode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_bit_queue_entry, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 35
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %9 = load i32, ptr %8, align 4
  br i1 %7, label %10, label %13

10:                                               ; preds = %2
  %11 = and i32 %9, 48
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %18, !prof !11

13:                                               ; preds = %2
  %14 = and i32 %9, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !10

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 1709, %10 ], [ 1711, %13 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef %17, i32 noundef 9, ptr noundef null) #10
  br label %18

18:                                               ; preds = %16, %13, %10
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  store ptr %19, ptr %3, align 4
  %28 = getelementptr inbounds %struct.wait_bit_key, ptr %3, i32 0, i32 1
  store i32 7, ptr %28, align 4
  %29 = getelementptr inbounds %struct.wait_bit_key, ptr %3, i32 0, i32 2
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %3, i32 0, i32 1
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %3, i32 0, i32 1, i32 1
  %32 = tail call ptr @llvm.thread.pointer() #10
  store ptr %32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %3, i32 0, i32 1, i32 2
  store ptr @wake_bit_function, ptr %33, align 4
  %34 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %3, i32 0, i32 1, i32 3
  store ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %3, i32 0, i32 1, i32 3, i32 1
  store ptr %34, ptr %35, align 4
  %36 = call ptr @bit_waitqueue(ptr noundef %19, i32 noundef 7) #10
  %37 = load i32, ptr %19, align 4
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %40, %27
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %41 = load i16, ptr %4, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %43 = call i32 @__wait_on_bit(ptr noundef %36, ptr noundef nonnull %3, ptr noundef nonnull @bit_wait, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %4) #10
  %44 = load i32, ptr %19, align 4
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %40

47:                                               ; preds = %40, %27
  %48 = phi i32 [ %37, %27 ], [ %44, %40 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %49

49:                                               ; preds = %47, %18
  %50 = phi i32 [ %48, %47 ], [ %20, %18 ]
  %51 = and i32 %50, 2055
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.address_space, ptr %59, i32 0, i32 1, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 67108864
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %57, %49
  %65 = or i32 %50, 128
  store i32 %65, ptr %19, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %66 = load i16, ptr %4, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %68 = call fastcc i32 @__writeback_single_inode(ptr noundef %0, ptr noundef %1)
  %69 = call ptr @inode_to_bdi(ptr noundef %0) #10
  %70 = getelementptr inbounds %struct.backing_dev_info, ptr %69, i32 0, i32 11, i32 7
  call void @_raw_spin_lock(ptr noundef %70) #10
  call void @_raw_spin_lock(ptr noundef %4) #10
  %71 = load i32, ptr %19, align 4
  %72 = and i32 %71, 2055
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.backing_dev_info, ptr %69, i32 0, i32 11
  call fastcc void @inode_cgwb_move_to_attached(ptr noundef %0, ptr noundef %75)
  br label %76

76:                                               ; preds = %74, %64
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %77 = load i16, ptr %70, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %70, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %79 = load i32, ptr %19, align 4
  %80 = and i32 %79, -129
  store i32 %80, ptr %19, align 4
  call void @inode_add_lru(ptr noundef %0) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !49
  call void @wake_up_bit(ptr noundef %19, i32 noundef 7) #10
  br label %81

81:                                               ; preds = %76, %57, %53, %23
  %82 = phi i32 [ 0, %23 ], [ %68, %76 ], [ 0, %53 ], [ 0, %57 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %83 = load i16, ptr %4, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sync_inode_metadata(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.writeback_control, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 %6, ptr %4, align 8
  %7 = call fastcc i32 @writeback_single_inode(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret i32 %7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_folio_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_writeback_folio_template, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_writeback_folio_template, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_writeback_folio_template, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %10, i32 noundef %12, i32 noundef %14) #10
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_dirty_inode_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %15, ptr noundef nonnull @trace_raw_output_writeback_dirty_inode_template.__flags) #10
  %17 = getelementptr inbounds %struct.trace_event_raw_writeback_dirty_inode_template, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %18, ptr noundef nonnull @trace_raw_output_writeback_dirty_inode_template.__flags.31) #10
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %11, i32 noundef %13, ptr noundef %16, ptr noundef %19) #10
  %20 = tail call i32 @trace_handle_return(ptr noundef %10) #10
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_write_inode_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_writeback_write_inode_template, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #10
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_work_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %32

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 20
  %15 = and i32 %13, 1048575
  %16 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %5, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %5, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %27, ptr noundef nonnull @trace_raw_output_writeback_work_class.symbols) #10
  %29 = getelementptr inbounds %struct.trace_event_raw_writeback_work_class, ptr %5, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %11, i32 noundef %14, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, ptr noundef %28, i32 noundef %30) #10
  %31 = tail call i32 @trace_handle_return(ptr noundef %10) #10
  br label %32

32:                                               ; preds = %8, %3
  %33 = phi i32 [ %31, %8 ], [ %6, %3 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_pages_written(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_writeback_pages_written, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %11) #10
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_writeback_class, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_writeback_class, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.55, ptr noundef %10, i32 noundef %12) #10
  %13 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ %6, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_bdi_register(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_writeback_bdi_register, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef %10) #10
  %11 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ %6, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wbc_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %32

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_wbc_class, ptr %5, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #10
  %31 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %32

32:                                               ; preds = %8, %3
  %33 = phi i32 [ %31, %8 ], [ %6, %3 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_queue_io(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %19, ptr noundef nonnull @trace_raw_output_writeback_queue_io.symbols) #10
  %21 = getelementptr inbounds %struct.trace_event_raw_writeback_queue_io, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef %20, i32 noundef %22) #10
  %23 = tail call i32 @trace_handle_return(ptr noundef %10) #10
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_global_dirty_state(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_global_dirty_state, ptr %5, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #10
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bdi_dirty_ratelimit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %5, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_bdi_dirty_ratelimit, ptr %5, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.82, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #10
  %25 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %26

26:                                               ; preds = %8, %3
  %27 = phi i32 [ %25, %8 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_balance_dirty_pages(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 12
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_balance_dirty_pages, ptr %5, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #10
  %39 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %40

40:                                               ; preds = %8, %3
  %41 = phi i32 [ %39, %8 ], [ %6, %3 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_sb_inodes_requeue(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %15, ptr noundef nonnull @trace_raw_output_writeback_sb_inodes_requeue.__flags) #10
  %17 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = sub i32 %19, %18
  %21 = udiv i32 %20, 100
  %22 = getelementptr inbounds %struct.trace_event_raw_writeback_sb_inodes_requeue, ptr %5, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %11, i32 noundef %13, ptr noundef %16, i32 noundef %18, i32 noundef %21, i32 noundef %23) #10
  %24 = tail call i32 @trace_handle_return(ptr noundef %10) #10
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_congest_waited_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_writeback_congest_waited_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_writeback_congest_waited_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.100, i32 noundef %11, i32 noundef %13) #10
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_single_inode_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %15, ptr noundef nonnull @trace_raw_output_writeback_single_inode_template.__flags) #10
  %17 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = sub i32 %19, %18
  %21 = udiv i32 %20, 100
  %22 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %5, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %5, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %5, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_writeback_single_inode_template, ptr %5, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef %11, i32 noundef %13, ptr noundef %16, i32 noundef %18, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #10
  %30 = tail call i32 @trace_handle_return(ptr noundef %10) #10
  br label %31

31:                                               ; preds = %8, %3
  %32 = phi i32 [ %30, %8 ], [ %6, %3 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_writeback_inode_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 20
  %14 = and i32 %12, 1048575
  %15 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %5, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %20, ptr noundef nonnull @trace_raw_output_writeback_inode_template.__flags) #10
  %22 = getelementptr inbounds %struct.trace_event_raw_writeback_inode_template, ptr %5, i32 0, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.107, i32 noundef %13, i32 noundef %14, i32 noundef %16, i32 noundef %18, ptr noundef %21, i32 noundef %24) #10
  %25 = tail call i32 @trace_handle_return(ptr noundef %10) #10
  br label %26

26:                                               ; preds = %8, %3
  %27 = phi i32 [ %25, %8 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_bit_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bit_waitqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__wait_on_bit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wb_writeback(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = alloca %struct.blk_plug, align 4
  %5 = load i32, ptr %1, align 4
  %6 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  call void @blk_start_plug(ptr noundef nonnull %4) #10
  %7 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 22
  %9 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %1, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %165, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wb_writeback_work, ptr %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.wb_writeback_work, ptr %1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 5, i32 1
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  br label %21

21:                                               ; preds = %162, %12
  %22 = phi i32 [ %6, %12 ], [ %52, %162 ]
  %23 = load i8, ptr %13, align 4
  %24 = and i8 %23, 8
  %25 = icmp eq i8 %24, 0
  %26 = and i8 %23, 10
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load volatile ptr, ptr %8, align 4
  %30 = icmp eq ptr %29, %8
  br i1 %30, label %31, label %165

31:                                               ; preds = %28, %21
  br i1 %25, label %36, label %32

32:                                               ; preds = %31
  %33 = call zeroext i1 @wb_over_bg_thresh(ptr noundef %0) #10
  br i1 %33, label %34, label %165

34:                                               ; preds = %32
  %35 = load i8, ptr %13, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i8 [ %35, %34 ], [ %23, %31 ]
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = load i32, ptr @dirty_expire_interval, align 4
  %43 = mul i32 %42, 10
  %44 = call i32 @__msecs_to_jiffies(i32 noundef %43) #10
  %45 = sub i32 %41, %44
  br label %51

46:                                               ; preds = %36
  %47 = and i8 %37, 8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load volatile i32, ptr @jiffies, align 64
  br label %51

51:                                               ; preds = %49, %46, %40
  %52 = phi i32 [ %45, %40 ], [ %50, %49 ], [ %22, %46 ]
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_start, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = tail call ptr @llvm.thread.pointer() #10
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %55
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !50
  %67 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_start, i32 0, i32 7), align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %74, %69 ], [ %67, %66 ]
  %71 = load volatile ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tracepoint_func, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  call void %71(ptr noundef %73, ptr noundef %0, ptr noundef %1) #10
  %74 = getelementptr %struct.tracepoint_func, ptr %70, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %69

77:                                               ; preds = %69, %66
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  br label %78

78:                                               ; preds = %77, %55, %51
  %79 = load volatile ptr, ptr %14, align 4
  %80 = icmp eq ptr %79, %14
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call fastcc void @queue_io(ptr noundef %0, ptr noundef %1, i32 noundef %52)
  br label %82

82:                                               ; preds = %81, %78
  %83 = load ptr, ptr %15, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = call fastcc i32 @writeback_sb_inodes(ptr noundef nonnull %83, ptr noundef %0, ptr noundef %1)
  br label %89

87:                                               ; preds = %82
  %88 = call fastcc i32 @__writeback_inodes_wb(ptr noundef %0, ptr noundef %1)
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_written, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %89
  %94 = tail call ptr @llvm.thread.pointer() #10
  %95 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = lshr i32 %96, 5
  %98 = getelementptr i32, ptr @__cpu_online_mask, i32 %97
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %96, 31
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %93
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %105 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_written, i32 0, i32 7), align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %107, %104
  %108 = phi ptr [ %112, %107 ], [ %105, %104 ]
  %109 = load volatile ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.tracepoint_func, ptr %108, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  call void %109(ptr noundef %111, ptr noundef %0, ptr noundef %1) #10
  %112 = getelementptr %struct.tracepoint_func, ptr %108, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %107

115:                                              ; preds = %107, %104
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %116

116:                                              ; preds = %115, %93, %89
  %117 = icmp eq i32 %90, 0
  br i1 %117, label %118, label %162

118:                                              ; preds = %116
  %119 = load volatile ptr, ptr %9, align 4
  %120 = icmp eq ptr %119, %9
  br i1 %120, label %165, label %121

121:                                              ; preds = %118
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_wait, i32 0, i32 1), align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %121
  %125 = tail call ptr @llvm.thread.pointer() #10
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %127 = load i32, ptr %126, align 8
  %128 = lshr i32 %127, 5
  %129 = getelementptr i32, ptr @__cpu_online_mask, i32 %128
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %127, 31
  %132 = shl nuw i32 1, %131
  %133 = and i32 %132, %130
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %124
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %136 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_wait, i32 0, i32 7), align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %138, %135
  %139 = phi ptr [ %143, %138 ], [ %136, %135 ]
  %140 = load volatile ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.tracepoint_func, ptr %139, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  call void %140(ptr noundef %142, ptr noundef %0, ptr noundef %1) #10
  %143 = getelementptr %struct.tracepoint_func, ptr %139, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %138

146:                                              ; preds = %138, %135
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !55
  br label %147

147:                                              ; preds = %146, %124, %121
  %148 = load ptr, ptr %16, align 4
  %149 = getelementptr i8, ptr %148, i32 -64
  call void @_raw_spin_lock(ptr noundef %149) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %150 = load i16, ptr %7, align 4
  %151 = add i16 %150, 1
  store i16 %151, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  %152 = tail call ptr @llvm.thread.pointer() #10
  store i32 0, ptr %3, align 4
  store ptr %152, ptr %17, align 4
  store ptr @autoremove_wake_function, ptr %18, align 4
  store ptr %19, ptr %19, align 4
  store ptr %19, ptr %20, align 4
  %153 = getelementptr i8, ptr %148, i32 -44
  %154 = call ptr @bit_waitqueue(ptr noundef %153, i32 noundef 7) #10
  call void @prepare_to_wait(ptr noundef %154, ptr noundef nonnull %3, i32 noundef 2) #10
  %155 = load i32, ptr %153, align 4
  %156 = and i32 %155, 128
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %157 = load i16, ptr %149, align 4
  %158 = add i16 %157, 1
  store i16 %158, ptr %149, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %159 = icmp eq i32 %156, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %147
  call void @schedule() #10
  br label %161

161:                                              ; preds = %160, %147
  call void @finish_wait(ptr noundef %154, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  call void @_raw_spin_lock(ptr noundef %7) #10
  br label %162

162:                                              ; preds = %161, %116
  %163 = load i32, ptr %1, align 4
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %165, label %21

165:                                              ; preds = %162, %118, %32, %28, %2
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %166 = load i16, ptr %7, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  call void @blk_finish_plug(ptr noundef nonnull %4) #10
  %168 = load i32, ptr %1, align 4
  %169 = sub i32 %5, %168
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret i32 %169
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wb_over_bg_thresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @queue_io(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %6 = load volatile i32, ptr %5, align 4
  store volatile i32 %6, ptr %4, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %6, 65535
  %9 = icmp eq i32 %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1453, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 5
  %13 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 4
  %14 = load volatile ptr, ptr %12, align 4
  %15 = icmp eq ptr %14, %12
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 5, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %20, align 4
  store ptr %14, ptr %13, align 4
  store ptr %17, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %18, align 4
  br label %22

22:                                               ; preds = %16, %11
  %23 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 3
  %24 = tail call fastcc i32 @move_expired_inodes(ptr noundef %23, ptr noundef %13, i32 noundef %2)
  %25 = getelementptr inbounds %struct.wb_writeback_work, ptr %1, i32 0, i32 3
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = load i32, ptr @dirtytime_expire_interval, align 4
  %32 = mul i32 %31, -100
  %33 = add i32 %32, %30
  br label %34

34:                                               ; preds = %29, %22
  %35 = phi i32 [ %2, %22 ], [ %33, %29 ]
  %36 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 6
  %37 = tail call fastcc i32 @move_expired_inodes(ptr noundef %36, ptr noundef %13, i32 noundef %35)
  %38 = add i32 %37, %24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  tail call void @_set_bit(i32 noundef 2, ptr noundef %41) #10
  %46 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 15
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = load i1, ptr @wb_io_lists_populated.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %54, !prof !11

52:                                               ; preds = %45
  store i1 true, ptr @wb_io_lists_populated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 91, i32 noundef 9, ptr noundef null) #10
  %53 = load i32, ptr %46, align 4
  br label %54

54:                                               ; preds = %52, %45
  %55 = phi i32 [ %53, %52 ], [ %47, %45 ]
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr inbounds %struct.backing_dev_info, ptr %56, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #10, !srcloc !13
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 %55, ptr elementtype(i32) %57) #10, !srcloc !42
  br label %59

59:                                               ; preds = %54, %40, %34
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_queue_io, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = tail call ptr @llvm.thread.pointer() #10
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !57
  %74 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_queue_io, i32 0, i32 7), align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %76, %73
  %77 = phi ptr [ %81, %76 ], [ %74, %73 ]
  %78 = load volatile ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.tracepoint_func, ptr %77, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  tail call void %78(ptr noundef %80, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %38) #10
  %81 = getelementptr %struct.tracepoint_func, ptr %77, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %76

84:                                               ; preds = %76, %73
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  br label %85

85:                                               ; preds = %84, %62, %59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @writeback_sb_inodes(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wait_queue_entry, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.writeback_control, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #10
  %11 = getelementptr inbounds %struct.writeback_control, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.writeback_control, ptr %10, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  store i64 9223372036854775807, ptr %12, align 8
  %13 = getelementptr inbounds %struct.writeback_control, ptr %10, i32 0, i32 4
  %14 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.writeback_control, ptr %10, i32 0, i32 5
  %17 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 3
  %18 = load i8, ptr %17, align 4
  %19 = lshr i8 %18, 1
  %20 = and i8 %19, 1
  %21 = lshr i8 %18, 2
  %22 = and i8 %21, 2
  %23 = or i8 %20, %22
  %24 = shl i8 %18, 2
  %25 = and i8 %24, 4
  %26 = or i8 %23, %25
  %27 = shl i8 %18, 1
  %28 = and i8 %27, 32
  %29 = and i8 %24, 16
  %30 = or i8 %26, %29
  %31 = or i8 %30, %28
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %16, align 4
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 4
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %349, label %37

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 4, i32 1
  %39 = getelementptr inbounds %struct.wb_writeback_work, ptr %2, i32 0, i32 1
  %40 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 3
  %41 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 7
  %42 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 1
  %43 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 2
  %44 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 3
  %45 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 3, i32 1
  %46 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 15
  %47 = add i32 %33, 10
  %48 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 5
  br label %49

49:                                               ; preds = %345, %37
  %50 = phi i32 [ 0, %37 ], [ %346, %345 ]
  %51 = load ptr, ptr %38, align 4
  %52 = getelementptr i8, ptr %51, i32 -168
  %53 = getelementptr i8, ptr %51, i32 -140
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %85, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %39, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %349, label %59

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %51, i32 -64
  call void @_raw_spin_lock(ptr noundef %60) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %61 = load volatile i32, ptr %60, align 4
  store volatile i32 %61, ptr %9, align 4
  %62 = lshr i32 %61, 16
  %63 = and i32 %61, 65535
  %64 = icmp eq i32 %63, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br i1 %64, label %65, label %66, !prof !11

65:                                               ; preds = %59
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1331, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

66:                                               ; preds = %59
  %67 = load volatile ptr, ptr %40, align 4
  %68 = icmp eq ptr %67, %40
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = getelementptr i8, ptr %51, i32 -16
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr i8, ptr %67, i32 -16
  %73 = load i32, ptr %72, align 8
  %74 = sub i32 %71, %73
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load volatile i32, ptr @jiffies, align 64
  store i32 %77, ptr %70, align 8
  br label %78

78:                                               ; preds = %76, %69, %66
  %79 = call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %52, ptr noundef %1, ptr noundef %40) #10
  %80 = getelementptr i8, ptr %51, i32 -44
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, -131073
  store i32 %82, ptr %80, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %83 = load i16, ptr %60, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %60, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %345

85:                                               ; preds = %49
  %86 = getelementptr i8, ptr %51, i32 -64
  call void @_raw_spin_lock(ptr noundef %86) #10
  %87 = getelementptr i8, ptr %51, i32 -44
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 56
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %115, label %91

91:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  %92 = load volatile i32, ptr %86, align 4
  store volatile i32 %92, ptr %8, align 4
  %93 = lshr i32 %92, 16
  %94 = and i32 %92, 65535
  %95 = icmp eq i32 %94, %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  br i1 %95, label %96, label %97, !prof !11

96:                                               ; preds = %91
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1331, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

97:                                               ; preds = %91
  %98 = load volatile ptr, ptr %40, align 4
  %99 = icmp eq ptr %98, %40
  br i1 %99, label %109, label %100

100:                                              ; preds = %97
  %101 = getelementptr i8, ptr %51, i32 -16
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr i8, ptr %98, i32 -16
  %104 = load i32, ptr %103, align 8
  %105 = sub i32 %102, %104
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load volatile i32, ptr @jiffies, align 64
  store i32 %108, ptr %101, align 8
  br label %109

109:                                              ; preds = %107, %100, %97
  %110 = call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %52, ptr noundef %1, ptr noundef %40) #10
  %111 = load i32, ptr %87, align 4
  %112 = and i32 %111, -131073
  store i32 %112, ptr %87, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %113 = load i16, ptr %86, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %86, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %345

115:                                              ; preds = %85
  %116 = and i32 %88, 128
  %117 = icmp ne i32 %116, 0
  %118 = load i32, ptr %13, align 8
  %119 = icmp ne i32 %118, 1
  %120 = select i1 %117, i1 %119, i1 false
  call void asm sideeffect "dmb ish", "~{memory}"() #10
  br i1 %120, label %121, label %150

121:                                              ; preds = %115
  %122 = load i16, ptr %86, align 4
  %123 = add i16 %122, 1
  store i16 %123, ptr %86, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %124 = call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %52, ptr noundef %1, ptr noundef %48) #10
  %125 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_sb_inodes_requeue, i32 0, i32 1), align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %345

127:                                              ; preds = %121
  %128 = tail call ptr @llvm.thread.pointer() #10
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 5
  %132 = getelementptr i32, ptr @__cpu_online_mask, i32 %131
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %130, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %345, label %138

138:                                              ; preds = %127
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  %139 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_sb_inodes_requeue, i32 0, i32 7), align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %141, %138
  %142 = phi ptr [ %146, %141 ], [ %139, %138 ]
  %143 = load volatile ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.tracepoint_func, ptr %142, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  call void %143(ptr noundef %145, ptr noundef %52) #10
  %146 = getelementptr %struct.tracepoint_func, ptr %142, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %141

149:                                              ; preds = %141, %138
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  br label %345

150:                                              ; preds = %115
  %151 = load i16, ptr %41, align 4
  %152 = add i16 %151, 1
  store i16 %152, ptr %41, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %153 = load i32, ptr %87, align 4
  %154 = and i32 %153, 128
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #10
  %157 = tail call ptr @llvm.thread.pointer() #10
  store i32 0, ptr %7, align 4
  store ptr %157, ptr %42, align 4
  store ptr @autoremove_wake_function, ptr %43, align 4
  store ptr %44, ptr %44, align 4
  store ptr %44, ptr %45, align 4
  %158 = call ptr @bit_waitqueue(ptr noundef %87, i32 noundef 7) #10
  call void @prepare_to_wait(ptr noundef %158, ptr noundef nonnull %7, i32 noundef 2) #10
  %159 = load i32, ptr %87, align 4
  %160 = and i32 %159, 128
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %161 = load i16, ptr %86, align 4
  %162 = add i16 %161, 1
  store i16 %162, ptr %86, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %163 = icmp eq i32 %160, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %156
  call void @schedule() #10
  br label %165

165:                                              ; preds = %164, %156
  call void @finish_wait(ptr noundef %158, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #10
  call void @_raw_spin_lock(ptr noundef %41) #10
  br label %345

166:                                              ; preds = %150
  %167 = or i32 %153, 128
  store i32 %167, ptr %87, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %168 = load i16, ptr %86, align 4
  %169 = add i16 %168, 1
  store i16 %169, ptr %86, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %170 = load i32, ptr %14, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %186, label %172

172:                                              ; preds = %166
  %173 = load i8, ptr %17, align 4
  %174 = and i8 %173, 1
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load i32, ptr %46, align 4
  %178 = lshr i32 %177, 1
  %179 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 4
  %180 = lshr i32 %179, 3
  %181 = call i32 @llvm.umin.i32(i32 %178, i32 %180) #10
  %182 = load i32, ptr %2, align 4
  %183 = call i32 @llvm.smin.i32(i32 %181, i32 %182) #10
  %184 = add nsw i32 %183, 1024
  %185 = and i32 %184, -1024
  br label %186

186:                                              ; preds = %176, %172, %166
  %187 = phi i32 [ %185, %176 ], [ 2147483647, %172 ], [ 2147483647, %166 ]
  store i32 %187, ptr %10, align 8
  store i32 0, ptr %11, align 4
  %188 = call fastcc i32 @__writeback_single_inode(ptr noundef %52, ptr noundef nonnull %10)
  %189 = load i32, ptr %10, align 8
  %190 = sub i32 %189, %187
  %191 = load i32, ptr %2, align 4
  %192 = add i32 %190, %191
  store i32 %192, ptr %2, align 4
  %193 = tail call ptr @llvm.thread.pointer() #10
  %194 = load volatile i32, ptr %193, align 4
  %195 = and i32 %194, 2
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %186
  %198 = getelementptr inbounds %struct.task_struct, ptr %193, i32 0, i32 115
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  call void @blk_flush_plug(ptr noundef nonnull %199, i1 noundef zeroext false) #10
  br label %202

202:                                              ; preds = %201, %197
  %203 = call i32 @__cond_resched() #10
  br label %204

204:                                              ; preds = %202, %186
  %205 = call ptr @inode_to_bdi(ptr noundef %52) #10
  %206 = getelementptr inbounds %struct.backing_dev_info, ptr %205, i32 0, i32 11
  %207 = getelementptr inbounds %struct.backing_dev_info, ptr %205, i32 0, i32 11, i32 7
  call void @_raw_spin_lock(ptr noundef %207) #10
  call void @_raw_spin_lock(ptr noundef %86) #10
  %208 = load i32, ptr %87, align 4
  %209 = and i32 %208, 2055
  %210 = icmp eq i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = add i32 %187, %50
  %213 = sub i32 %212, %189
  %214 = add i32 %213, %211
  %215 = and i32 %208, 32
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %327

217:                                              ; preds = %204
  %218 = and i32 %208, 7
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %230, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %13, align 8
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = load i16, ptr %16, align 4
  %225 = and i16 %224, 4
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %223, %220
  %228 = load volatile i32, ptr @jiffies, align 64
  %229 = getelementptr i8, ptr %51, i32 -16
  store i32 %228, ptr %229, align 8
  br label %230

230:                                              ; preds = %227, %223, %217
  %231 = load i32, ptr %11, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %256, label %233

233:                                              ; preds = %230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %234 = load volatile i32, ptr %86, align 4
  store volatile i32 %234, ptr %6, align 4
  %235 = lshr i32 %234, 16
  %236 = and i32 %234, 65535
  %237 = icmp eq i32 %236, %235
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br i1 %237, label %238, label %239, !prof !11

238:                                              ; preds = %233
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1331, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.backing_dev_info, ptr %205, i32 0, i32 11, i32 3
  %241 = load volatile ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, %240
  br i1 %242, label %252, label %243

243:                                              ; preds = %239
  %244 = getelementptr i8, ptr %51, i32 -16
  %245 = load i32, ptr %244, align 8
  %246 = getelementptr i8, ptr %241, i32 -16
  %247 = load i32, ptr %246, align 8
  %248 = sub i32 %245, %247
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = load volatile i32, ptr @jiffies, align 64
  store i32 %251, ptr %244, align 8
  br label %252

252:                                              ; preds = %250, %243, %239
  %253 = call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %52, ptr noundef %206, ptr noundef %240) #10
  %254 = load i32, ptr %87, align 4
  %255 = and i32 %254, -131073
  store i32 %255, ptr %87, align 4
  br label %327

256:                                              ; preds = %230
  %257 = getelementptr i8, ptr %51, i32 -136
  %258 = load ptr, ptr %257, align 8
  %259 = getelementptr inbounds %struct.address_space, ptr %258, i32 0, i32 1, i32 1
  %260 = load i32, ptr %259, align 4
  %261 = and i32 %260, 33554432
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %292, label %263

263:                                              ; preds = %256
  %264 = load i32, ptr %10, align 8
  %265 = icmp slt i32 %264, 1
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.backing_dev_info, ptr %205, i32 0, i32 11, i32 5
  %268 = call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %52, ptr noundef %206, ptr noundef %267) #10
  br label %327

269:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %270 = load volatile i32, ptr %86, align 4
  store volatile i32 %270, ptr %5, align 4
  %271 = lshr i32 %270, 16
  %272 = and i32 %270, 65535
  %273 = icmp eq i32 %272, %271
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %273, label %274, label %275, !prof !11

274:                                              ; preds = %269
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1331, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.backing_dev_info, ptr %205, i32 0, i32 11, i32 3
  %277 = load volatile ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, %276
  br i1 %278, label %288, label %279

279:                                              ; preds = %275
  %280 = getelementptr i8, ptr %51, i32 -16
  %281 = load i32, ptr %280, align 8
  %282 = getelementptr i8, ptr %277, i32 -16
  %283 = load i32, ptr %282, align 8
  %284 = sub i32 %281, %283
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %279
  %287 = load volatile i32, ptr @jiffies, align 64
  store i32 %287, ptr %280, align 8
  br label %288

288:                                              ; preds = %286, %279, %275
  %289 = call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %52, ptr noundef %206, ptr noundef %276) #10
  %290 = load i32, ptr %87, align 4
  %291 = and i32 %290, -131073
  store i32 %291, ptr %87, align 4
  br label %327

292:                                              ; preds = %256
  br i1 %219, label %316, label %293

293:                                              ; preds = %292
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %294 = load volatile i32, ptr %86, align 4
  store volatile i32 %294, ptr %4, align 4
  %295 = lshr i32 %294, 16
  %296 = and i32 %294, 65535
  %297 = icmp eq i32 %296, %295
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %297, label %298, label %299, !prof !11

298:                                              ; preds = %293
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1331, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.backing_dev_info, ptr %205, i32 0, i32 11, i32 3
  %301 = load volatile ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, %300
  br i1 %302, label %312, label %303

303:                                              ; preds = %299
  %304 = getelementptr i8, ptr %51, i32 -16
  %305 = load i32, ptr %304, align 8
  %306 = getelementptr i8, ptr %301, i32 -16
  %307 = load i32, ptr %306, align 8
  %308 = sub i32 %305, %307
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %303
  %311 = load volatile i32, ptr @jiffies, align 64
  store i32 %311, ptr %304, align 8
  br label %312

312:                                              ; preds = %310, %303, %299
  %313 = call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %52, ptr noundef %206, ptr noundef %300) #10
  %314 = load i32, ptr %87, align 4
  %315 = and i32 %314, -131073
  store i32 %315, ptr %87, align 4
  br label %327

316:                                              ; preds = %292
  %317 = and i32 %208, 2048
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %316
  %320 = load volatile i32, ptr @jiffies, align 64
  %321 = getelementptr i8, ptr %51, i32 -16
  store i32 %320, ptr %321, align 8
  %322 = getelementptr inbounds %struct.backing_dev_info, ptr %205, i32 0, i32 11, i32 6
  %323 = call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %52, ptr noundef %206, ptr noundef %322) #10
  %324 = load i32, ptr %87, align 4
  %325 = and i32 %324, -131073
  store i32 %325, ptr %87, align 4
  br label %327

326:                                              ; preds = %316
  call fastcc void @inode_cgwb_move_to_attached(ptr noundef %52, ptr noundef %206) #10
  br label %327

327:                                              ; preds = %326, %319, %312, %288, %266, %252, %204
  %328 = load i32, ptr %87, align 4
  %329 = and i32 %328, -129
  store i32 %329, ptr %87, align 4
  call void @inode_add_lru(ptr noundef %52) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !49
  call void @wake_up_bit(ptr noundef %87, i32 noundef 7) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %330 = load i16, ptr %86, align 4
  %331 = add i16 %330, 1
  store i16 %331, ptr %86, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %332 = icmp eq ptr %206, %1
  br i1 %332, label %336, label %333, !prof !10

333:                                              ; preds = %327
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %334 = load i16, ptr %207, align 4
  %335 = add i16 %334, 1
  store i16 %335, ptr %207, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  call void @_raw_spin_lock(ptr noundef %41) #10
  br label %336

336:                                              ; preds = %333, %327
  %337 = icmp eq i32 %214, 0
  br i1 %337, label %345, label %338

338:                                              ; preds = %336
  %339 = load volatile i32, ptr @jiffies, align 64
  %340 = sub i32 %47, %339
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %338
  %343 = load i32, ptr %2, align 4
  %344 = icmp slt i32 %343, 1
  br i1 %344, label %349, label %345

345:                                              ; preds = %342, %336, %165, %149, %127, %121, %109, %78
  %346 = phi i32 [ %50, %78 ], [ %50, %109 ], [ %50, %165 ], [ %50, %121 ], [ %50, %127 ], [ %50, %149 ], [ %214, %342 ], [ 0, %336 ]
  %347 = load volatile ptr, ptr %34, align 4
  %348 = icmp eq ptr %347, %34
  br i1 %348, label %349, label %49

349:                                              ; preds = %345, %342, %338, %56, %3
  %350 = phi i32 [ 0, %3 ], [ %214, %342 ], [ %214, %338 ], [ %50, %56 ], [ %346, %345 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  ret i32 %350
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__writeback_inodes_wb(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %61, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 4, i32 1
  %10 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 3
  %11 = add i32 %4, 10
  br label %12

12:                                               ; preds = %57, %8
  %13 = phi i32 [ 0, %8 ], [ %58, %57 ]
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 -168
  %16 = getelementptr i8, ptr %14, i32 -140
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i1 @trylock_super(ptr noundef %17) #10
  br i1 %18, label %45, label %19

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %14, i32 -64
  tail call void @_raw_spin_lock(ptr noundef %20) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %21 = load volatile i32, ptr %20, align 4
  store volatile i32 %21, ptr %3, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %21, 65535
  %24 = icmp eq i32 %23, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %24, label %25, label %26, !prof !11

25:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1331, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

26:                                               ; preds = %19
  %27 = load volatile ptr, ptr %10, align 4
  %28 = icmp eq ptr %27, %10
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %14, i32 -16
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr i8, ptr %27, i32 -16
  %33 = load i32, ptr %32, align 8
  %34 = sub i32 %31, %33
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load volatile i32, ptr @jiffies, align 64
  store i32 %37, ptr %30, align 8
  br label %38

38:                                               ; preds = %36, %29, %26
  %39 = tail call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %15, ptr noundef %0, ptr noundef %10) #10
  %40 = getelementptr i8, ptr %14, i32 -44
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -131073
  store i32 %42, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %43 = load i16, ptr %20, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %57

45:                                               ; preds = %12
  %46 = tail call fastcc i32 @writeback_sb_inodes(ptr noundef %17, ptr noundef %0, ptr noundef %1)
  %47 = add i32 %46, %13
  %48 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 14
  tail call void @up_read(ptr noundef %48) #10
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = sub i32 %11, %51
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %1, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %61, label %57

57:                                               ; preds = %54, %45, %38
  %58 = phi i32 [ %13, %38 ], [ %47, %54 ], [ 0, %45 ]
  %59 = load volatile ptr, ptr %5, align 4
  %60 = icmp eq ptr %59, %5
  br i1 %60, label %61, label %12

61:                                               ; preds = %57, %54, %50, %2
  %62 = phi i32 [ 0, %2 ], [ %47, %54 ], [ %47, %50 ], [ %58, %57 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @move_expired_inodes(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %43, %3
  %8 = phi ptr [ %40, %43 ], [ null, %3 ]
  %9 = phi i32 [ %47, %43 ], [ 0, %3 ]
  %10 = phi i32 [ %32, %43 ], [ 0, %3 ]
  br label %11

11:                                               ; preds = %25, %7
  %12 = phi i32 [ %32, %25 ], [ %10, %7 ]
  %13 = load volatile ptr, ptr %0, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %48, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 -16
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %2, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = sub i32 %22, %18
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %48, label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %16, ptr %31, align 4
  store ptr %30, ptr %16, align 4
  store ptr %4, ptr %26, align 4
  store volatile ptr %16, ptr %4, align 8
  %32 = add i32 %12, 1
  %33 = getelementptr i8, ptr %16, i32 -64
  call void @_raw_spin_lock(ptr noundef %33) #10
  %34 = getelementptr i8, ptr %16, i32 -44
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 131072
  store i32 %36, ptr %34, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %37 = load i16, ptr %33, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %39 = getelementptr i8, ptr %16, i32 -140
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr @blockdev_superblock, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %11, label %43

43:                                               ; preds = %25
  %44 = icmp eq ptr %8, null
  %45 = icmp eq ptr %8, %40
  %46 = select i1 %44, i1 true, i1 %45
  %47 = select i1 %46, i32 %9, i32 1
  br label %7

48:                                               ; preds = %21, %11
  %49 = icmp eq i32 %9, 0
  %50 = load volatile ptr, ptr %4, align 8
  %51 = icmp eq ptr %50, %4
  br i1 %49, label %53, label %52

52:                                               ; preds = %48
  br i1 %51, label %83, label %62

53:                                               ; preds = %48
  br i1 %51, label %83, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %1, align 4
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %1, ptr %57, align 4
  store ptr %50, ptr %1, align 4
  store ptr %55, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  br label %83

59:                                               ; preds = %78, %62
  %60 = load volatile ptr, ptr %4, align 8
  %61 = icmp eq ptr %60, %4
  br i1 %61, label %83, label %62

62:                                               ; preds = %59, %52
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr i8, ptr %63, i32 -140
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %63, %4
  br i1 %66, label %59, label %67

67:                                               ; preds = %80, %62
  %68 = phi ptr [ %82, %80 ], [ %65, %62 ]
  %69 = phi ptr [ %71, %80 ], [ %63, %62 ]
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %68, %65
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load ptr, ptr %69, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %71, ptr %75, align 4
  store volatile ptr %74, ptr %71, align 4
  %76 = load ptr, ptr %1, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %69, ptr %77, align 4
  store ptr %76, ptr %69, align 4
  store ptr %1, ptr %70, align 4
  store volatile ptr %69, ptr %1, align 4
  br label %78

78:                                               ; preds = %73, %67
  %79 = icmp eq ptr %71, %4
  br i1 %79, label %59, label %80

80:                                               ; preds = %78
  %81 = getelementptr i8, ptr %71, i32 -140
  %82 = load ptr, ptr %81, align 4
  br label %67

83:                                               ; preds = %59, %54, %53, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %12
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__writeback_single_inode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %1, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1614, i32 noundef 9, ptr noundef null) #10
  br label %11

11:                                               ; preds = %10, %2
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_single_inode_start, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #10
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  %26 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_single_inode_start, i32 0, i32 7), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %33, %28 ], [ %26, %25 ]
  %30 = load volatile ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tracepoint_func, ptr %29, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %30(ptr noundef %32, ptr noundef %0, ptr noundef %1, i32 noundef %5) #10
  %33 = getelementptr %struct.tracepoint_func, ptr %29, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %28

36:                                               ; preds = %28, %25
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  br label %37

37:                                               ; preds = %36, %14, %11
  %38 = tail call i32 @do_writepages(ptr noundef %4, ptr noundef %1) #10
  %39 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 32
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = tail call i32 @filemap_fdatawait_range(ptr noundef %4, i64 noundef 0, i64 noundef 9223372036854775807) #10
  %49 = icmp eq i32 %38, 0
  %50 = select i1 %49, i32 %48, i32 %38
  br label %51

51:                                               ; preds = %47, %42, %37
  %52 = phi i32 [ %38, %42 ], [ %50, %47 ], [ %38, %37 ]
  %53 = load i32, ptr %6, align 4
  %54 = and i32 %53, 2048
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %39, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 26
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr @dirtytime_expire_interval, align 4
  %63 = mul i32 %62, 100
  %64 = add i32 %63, %61
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = sub i32 %64, %65
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %59, %56
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_lazytime, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %68
  %72 = tail call ptr @llvm.thread.pointer() #10
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !64
  %83 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_lazytime, i32 0, i32 7), align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %85, %82
  %86 = phi ptr [ %90, %85 ], [ %83, %82 ]
  %87 = load volatile ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.tracepoint_func, ptr %86, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  tail call void %87(ptr noundef %89, ptr noundef %0) #10
  %90 = getelementptr %struct.tracepoint_func, ptr %86, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %85

93:                                               ; preds = %85, %82
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  br label %94

94:                                               ; preds = %93, %71, %68
  tail call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 1) #10
  br label %95

95:                                               ; preds = %94, %59, %51
  %96 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %96) #10
  %97 = load i32, ptr %6, align 4
  %98 = and i32 %97, 7
  %99 = and i32 %97, -8
  store i32 %99, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !66
  %100 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 1, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 33554432
  %103 = icmp eq i32 %102, 0
  %104 = load i32, ptr %6, align 4
  br i1 %103, label %107, label %105

105:                                              ; preds = %95
  %106 = or i32 %104, 4
  store i32 %106, ptr %6, align 4
  br label %119

107:                                              ; preds = %95
  %108 = and i32 %104, 262144
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110, !prof !10

110:                                              ; preds = %107
  %111 = and i32 %104, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = and i32 %104, -262145
  store i32 %114, ptr %6, align 4
  %115 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %116 = load i16, ptr %115, align 4
  %117 = or i16 %116, 64
  store i16 %117, ptr %115, align 4
  %118 = or i32 %98, 262144
  br label %119

119:                                              ; preds = %113, %110, %107, %105
  %120 = phi i32 [ %98, %105 ], [ %98, %110 ], [ %118, %113 ], [ %98, %107 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %121 = load i16, ptr %96, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %96, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %123 = and i32 %120, -5
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %197, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.super_block, ptr %127, i32 0, i32 6
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.super_operations, ptr %129, i32 0, i32 4
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %193, label %133

133:                                              ; preds = %125
  %134 = tail call zeroext i1 @is_bad_inode(ptr noundef %0) #10
  br i1 %134, label %193, label %135

135:                                              ; preds = %133
  %136 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_write_inode_start, i32 0, i32 1), align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %135
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
  br i1 %148, label %161, label %149

149:                                              ; preds = %138
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %150 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_write_inode_start, i32 0, i32 7), align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %152, %149
  %153 = phi ptr [ %157, %152 ], [ %150, %149 ]
  %154 = load volatile ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.tracepoint_func, ptr %153, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  tail call void %154(ptr noundef %156, ptr noundef %0, ptr noundef %1) #10
  %157 = getelementptr %struct.tracepoint_func, ptr %153, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %152

160:                                              ; preds = %152, %149
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  br label %161

161:                                              ; preds = %160, %138, %135
  %162 = load ptr, ptr %126, align 4
  %163 = getelementptr inbounds %struct.super_block, ptr %162, i32 0, i32 6
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.super_operations, ptr %164, i32 0, i32 4
  %166 = load ptr, ptr %165, align 4
  %167 = tail call i32 %166(ptr noundef %0, ptr noundef %1) #10
  %168 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_write_inode, i32 0, i32 1), align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %161
  %171 = tail call ptr @llvm.thread.pointer() #10
  %172 = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 2
  %173 = load i32, ptr %172, align 8
  %174 = lshr i32 %173, 5
  %175 = getelementptr i32, ptr @__cpu_online_mask, i32 %174
  %176 = load volatile i32, ptr %175, align 4
  %177 = and i32 %173, 31
  %178 = shl nuw i32 1, %177
  %179 = and i32 %178, %176
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %170
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %182 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_write_inode, i32 0, i32 7), align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %192, label %184

184:                                              ; preds = %184, %181
  %185 = phi ptr [ %189, %184 ], [ %182, %181 ]
  %186 = load volatile ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.tracepoint_func, ptr %185, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  tail call void %186(ptr noundef %188, ptr noundef %0, ptr noundef %1) #10
  %189 = getelementptr %struct.tracepoint_func, ptr %185, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %184

192:                                              ; preds = %184, %181
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  br label %193

193:                                              ; preds = %192, %170, %161, %133, %125
  %194 = phi i32 [ 0, %133 ], [ 0, %125 ], [ %167, %161 ], [ %167, %170 ], [ %167, %192 ]
  %195 = icmp eq i32 %52, 0
  %196 = select i1 %195, i32 %194, i32 %52
  br label %197

197:                                              ; preds = %193, %119
  %198 = phi i32 [ %196, %193 ], [ %52, %119 ]
  %199 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %200 = load i16, ptr %199, align 4
  %201 = and i16 %200, -65
  store i16 %201, ptr %199, align 4
  %202 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_single_inode, i32 0, i32 1), align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %197
  %205 = tail call ptr @llvm.thread.pointer() #10
  %206 = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 2
  %207 = load i32, ptr %206, align 8
  %208 = lshr i32 %207, 5
  %209 = getelementptr i32, ptr @__cpu_online_mask, i32 %208
  %210 = load volatile i32, ptr %209, align 4
  %211 = and i32 %207, 31
  %212 = shl nuw i32 1, %211
  %213 = and i32 %212, %210
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %227, label %215

215:                                              ; preds = %204
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %216 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_single_inode, i32 0, i32 7), align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %226, label %218

218:                                              ; preds = %218, %215
  %219 = phi ptr [ %223, %218 ], [ %216, %215 ]
  %220 = load volatile ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.tracepoint_func, ptr %219, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  tail call void %220(ptr noundef %222, ptr noundef %0, ptr noundef %1, i32 noundef %5) #10
  %223 = getelementptr %struct.tracepoint_func, ptr %219, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %218

226:                                              ; preds = %218, %215
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  br label %227

227:                                              ; preds = %226, %204, %197
  ret i32 %198
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_writepages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inode_cgwb_move_to_attached(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %6 = load volatile i32, ptr %5, align 4
  store volatile i32 %6, ptr %4, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %6, 65535
  %9 = icmp eq i32 %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1166, 0\0A.popsection", ""() #10, !srcloc !73
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %13 = load volatile i32, ptr %12, align 4
  store volatile i32 %13, ptr %3, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %13, 65535
  %16 = icmp eq i32 %15, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fs-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1167, 0\0A.popsection", ""() #10, !srcloc !74
  unreachable

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -131073
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store volatile ptr %22, ptr %22, align 4
  store ptr %22, ptr %23, align 4
  %27 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 3
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 4
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 5
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %27) #10
  %44 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %1, align 8
  %47 = getelementptr inbounds %struct.backing_dev_info, ptr %46, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !13
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 %45, ptr elementtype(i32) %47) #10, !srcloc !18
  %49 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %50 = icmp slt i32 %49, 0
  %51 = load i1, ptr @wb_io_lists_depopulated.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !11

54:                                               ; preds = %43
  store i1 true, ptr @wb_io_lists_depopulated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  br label %55

55:                                               ; preds = %54, %43, %39, %35, %31, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trylock_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wakeup_dirtytime_writeback(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %2 = load volatile ptr, ptr @bdi_list, align 4
  %3 = icmp eq ptr %2, @bdi_list
  br i1 %3, label %31, label %7

4:                                                ; preds = %28, %7
  %5 = load volatile ptr, ptr %8, align 4
  %6 = icmp eq ptr %5, @bdi_list
  br i1 %6, label %31, label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = getelementptr i8, ptr %8, i32 420
  %10 = load volatile ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %4, label %12

12:                                               ; preds = %28, %7
  %13 = phi ptr [ %29, %28 ], [ %10, %7 ]
  %14 = getelementptr i8, ptr %13, i32 -332
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %13, i32 -104
  tail call void @_raw_spin_lock_bh(ptr noundef %18) #10
  %19 = getelementptr i8, ptr %13, i32 -364
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @bdi_wq, align 4
  %25 = getelementptr i8, ptr %13, i32 -92
  %26 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %25, i32 noundef 0) #10
  br label %27

27:                                               ; preds = %23, %17
  tail call void @_raw_spin_unlock_bh(ptr noundef %18) #10
  br label %28

28:                                               ; preds = %27, %12
  %29 = load volatile ptr, ptr %13, align 8
  %30 = icmp eq ptr %29, %9
  br i1 %30, label %4, label %12

31:                                               ; preds = %4, %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %32 = load i32, ptr @dirtytime_expire_interval, align 4
  %33 = mul i32 %32, 100
  %34 = load ptr, ptr @system_wq, align 4
  %35 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %34, ptr noundef nonnull @dirtytime_work, i32 noundef %33) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_nr_dirty_inodes() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_keep_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 403555}
!13 = !{i64 489616, i64 2147979587, i64 2147979613, i64 2147979660, i64 2147979682, i64 2147979710, i64 2147979730}
!14 = !{i64 2147994156, i64 2147994182, i64 2147994211, i64 2147994245, i64 2147994276, i64 2147994299}
!15 = !{i64 2153941759}
!16 = !{i64 2153941925}
!17 = !{i64 2148092454}
!18 = !{i64 2147994840, i64 2147994872, i64 2147994901, i64 2147994935, i64 2147994966, i64 2147994989}
!19 = !{i64 2148092657}
!20 = !{i64 2148900410}
!21 = !{i64 2148896234}
!22 = !{i64 2148896309, i64 2148896336, i64 2148896383, i64 2148896405, i64 2148896433, i64 2148896453}
!23 = !{i64 2148923413}
!24 = !{i64 2154203991}
!25 = !{i64 2154204159}
!26 = !{i64 2154224642}
!27 = !{i64 2154224812}
!28 = !{i64 2153854698}
!29 = !{i64 2153854854}
!30 = !{i64 2153924907}
!31 = !{i64 2153925091}
!32 = !{i64 2149402339}
!33 = !{i64 2149402556}
!34 = !{i64 2153744153}
!35 = !{i64 2153744341}
!36 = !{i64 2153761314}
!37 = !{i64 2153761504}
!38 = !{i64 2153782362}
!39 = !{i64 2153782540}
!40 = !{i64 2156261750}
!41 = !{i64 2156085553, i64 2156086035, i64 2156085590, i64 2156085646, i64 2156085680, i64 2156085704, i64 2156085745, i64 2156085766, i64 2156085794, i64 2156085828}
!42 = !{i64 2147991799, i64 2147991825, i64 2147991854, i64 2147991888, i64 2147991919, i64 2147991942}
!43 = !{i64 2154187115}
!44 = !{i64 2154187295}
!45 = !{i64 385100}
!46 = !{i64 2148924554}
!47 = !{i64 2153838126}
!48 = !{i64 2153838284}
!49 = !{i64 2156094370}
!50 = !{i64 2153871255}
!51 = !{i64 2153871413}
!52 = !{i64 2153887944}
!53 = !{i64 2153888106}
!54 = !{i64 2153908685}
!55 = !{i64 2153908841}
!56 = !{i64 2156096013, i64 2156096496, i64 2156096050, i64 2156096106, i64 2156096140, i64 2156096164, i64 2156096205, i64 2156096226, i64 2156096254, i64 2156096288}
!57 = !{i64 2153996763}
!58 = !{i64 2153996973}
!59 = !{i64 2156093041, i64 2156093524, i64 2156093078, i64 2156093134, i64 2156093168, i64 2156093192, i64 2156093233, i64 2156093254, i64 2156093282, i64 2156093316}
!60 = !{i64 2154075600}
!61 = !{i64 2154075776}
!62 = !{i64 2154115298}
!63 = !{i64 2154115512}
!64 = !{i64 2154149992}
!65 = !{i64 2154150150}
!66 = !{i64 2156099034}
!67 = !{i64 2153799853}
!68 = !{i64 2153800039}
!69 = !{i64 2153817126}
!70 = !{i64 2153817300}
!71 = !{i64 2154133412}
!72 = !{i64 2154133614}
!73 = !{i64 2156088228, i64 2156088711, i64 2156088265, i64 2156088321, i64 2156088355, i64 2156088379, i64 2156088420, i64 2156088441, i64 2156088469, i64 2156088503}
!74 = !{i64 2156089523, i64 2156090006, i64 2156089560, i64 2156089616, i64 2156089650, i64 2156089674, i64 2156089715, i64 2156089736, i64 2156089764, i64 2156089798}
