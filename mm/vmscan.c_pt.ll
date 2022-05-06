; ModuleID = '/llk/IR/mm/vmscan.c_pt.bc'
source_filename = "../mm/vmscan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_shrinker:\09\09\09\09\09"
module asm "\09.asciz \09\22register_shrinker\22\09\09\09\09\09"
module asm "__kstrtabns_register_shrinker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_shrinker:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_shrinker\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_shrinker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_shrinkers:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_shrinkers\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_shrinkers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_check_move_unevictable_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22check_move_unevictable_pages\22\09\09\09\09\09"
module asm "__kstrtabns_check_move_unevictable_pages:\09\09\09\09\09"
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.vm_event_state = type { [71 x i32] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mm_vmscan_kswapd_sleep = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_mm_vmscan_kswapd_wake = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_vmscan_wakeup_kswapd = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_vmscan_direct_reclaim_begin_template = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_vmscan_direct_reclaim_end_template = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_mm_shrink_slab_start = type { %struct.trace_entry, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, [0 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.trace_event_raw_mm_shrink_slab_end = type { %struct.trace_entry, ptr, i32, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_vmscan_lru_isolate = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_vmscan_writepage = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.page = type { i32, %union.anon, %union.anon.68, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.trace_event_raw_mm_vmscan_lru_shrink_inactive = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.reclaim_stat = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.trace_event_raw_mm_vmscan_lru_shrink_active = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_vmscan_node_reclaim_begin = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_vmscan_throttled = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.72 = type { ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scan_control = type { i32, ptr, ptr, i32, i32, i16, i8, i8, i8, i32, i32, i32, %struct.anon.99, %struct.reclaim_state }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.reclaim_state = type { i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.anon.74 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.anon.62 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.migration_target_control = type { i32, ptr, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }

@__tpstrtab_mm_vmscan_kswapd_sleep = internal constant [23 x i8] c"mm_vmscan_kswapd_sleep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_kswapd_sleep = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_kswapd_sleep }, align 4
@__tracepoint_mm_vmscan_kswapd_sleep = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_kswapd_sleep, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_kswapd_sleep, ptr null, ptr @__traceiter_mm_vmscan_kswapd_sleep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_kswapd_sleep = internal constant ptr @__tracepoint_mm_vmscan_kswapd_sleep, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_kswapd_wake = internal constant [22 x i8] c"mm_vmscan_kswapd_wake\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_kswapd_wake = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_kswapd_wake }, align 4
@__tracepoint_mm_vmscan_kswapd_wake = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_kswapd_wake, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_kswapd_wake, ptr null, ptr @__traceiter_mm_vmscan_kswapd_wake, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_kswapd_wake = internal constant ptr @__tracepoint_mm_vmscan_kswapd_wake, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_wakeup_kswapd = internal constant [24 x i8] c"mm_vmscan_wakeup_kswapd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_wakeup_kswapd = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_wakeup_kswapd }, align 4
@__tracepoint_mm_vmscan_wakeup_kswapd = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_wakeup_kswapd, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_wakeup_kswapd, ptr null, ptr @__traceiter_mm_vmscan_wakeup_kswapd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_wakeup_kswapd = internal constant ptr @__tracepoint_mm_vmscan_wakeup_kswapd, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_direct_reclaim_begin = internal constant [31 x i8] c"mm_vmscan_direct_reclaim_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_direct_reclaim_begin = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_direct_reclaim_begin }, align 4
@__tracepoint_mm_vmscan_direct_reclaim_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_direct_reclaim_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_direct_reclaim_begin, ptr null, ptr @__traceiter_mm_vmscan_direct_reclaim_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_direct_reclaim_begin = internal constant ptr @__tracepoint_mm_vmscan_direct_reclaim_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_direct_reclaim_end = internal constant [29 x i8] c"mm_vmscan_direct_reclaim_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_direct_reclaim_end = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_direct_reclaim_end }, align 4
@__tracepoint_mm_vmscan_direct_reclaim_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_direct_reclaim_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_direct_reclaim_end, ptr null, ptr @__traceiter_mm_vmscan_direct_reclaim_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_direct_reclaim_end = internal constant ptr @__tracepoint_mm_vmscan_direct_reclaim_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_shrink_slab_start = internal constant [21 x i8] c"mm_shrink_slab_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_shrink_slab_start = dso_local global %struct.static_call_key { ptr @__traceiter_mm_shrink_slab_start }, align 4
@__tracepoint_mm_shrink_slab_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_shrink_slab_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_shrink_slab_start, ptr null, ptr @__traceiter_mm_shrink_slab_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_shrink_slab_start = internal constant ptr @__tracepoint_mm_shrink_slab_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_shrink_slab_end = internal constant [19 x i8] c"mm_shrink_slab_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_shrink_slab_end = dso_local global %struct.static_call_key { ptr @__traceiter_mm_shrink_slab_end }, align 4
@__tracepoint_mm_shrink_slab_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_shrink_slab_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_shrink_slab_end, ptr null, ptr @__traceiter_mm_shrink_slab_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_shrink_slab_end = internal constant ptr @__tracepoint_mm_shrink_slab_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_lru_isolate = internal constant [22 x i8] c"mm_vmscan_lru_isolate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_lru_isolate = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_lru_isolate }, align 4
@__tracepoint_mm_vmscan_lru_isolate = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_lru_isolate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_lru_isolate, ptr null, ptr @__traceiter_mm_vmscan_lru_isolate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_lru_isolate = internal constant ptr @__tracepoint_mm_vmscan_lru_isolate, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_writepage = internal constant [20 x i8] c"mm_vmscan_writepage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_writepage = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_writepage }, align 4
@__tracepoint_mm_vmscan_writepage = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_writepage, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_writepage, ptr null, ptr @__traceiter_mm_vmscan_writepage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_writepage = internal constant ptr @__tracepoint_mm_vmscan_writepage, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_lru_shrink_inactive = internal constant [30 x i8] c"mm_vmscan_lru_shrink_inactive\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_lru_shrink_inactive = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_lru_shrink_inactive }, align 4
@__tracepoint_mm_vmscan_lru_shrink_inactive = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_lru_shrink_inactive, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_lru_shrink_inactive, ptr null, ptr @__traceiter_mm_vmscan_lru_shrink_inactive, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_lru_shrink_inactive = internal constant ptr @__tracepoint_mm_vmscan_lru_shrink_inactive, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_lru_shrink_active = internal constant [28 x i8] c"mm_vmscan_lru_shrink_active\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_lru_shrink_active = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_lru_shrink_active }, align 4
@__tracepoint_mm_vmscan_lru_shrink_active = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_lru_shrink_active, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_lru_shrink_active, ptr null, ptr @__traceiter_mm_vmscan_lru_shrink_active, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_lru_shrink_active = internal constant ptr @__tracepoint_mm_vmscan_lru_shrink_active, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_node_reclaim_begin = internal constant [29 x i8] c"mm_vmscan_node_reclaim_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_node_reclaim_begin = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_node_reclaim_begin }, align 4
@__tracepoint_mm_vmscan_node_reclaim_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_node_reclaim_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_node_reclaim_begin, ptr null, ptr @__traceiter_mm_vmscan_node_reclaim_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_node_reclaim_begin = internal constant ptr @__tracepoint_mm_vmscan_node_reclaim_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_node_reclaim_end = internal constant [27 x i8] c"mm_vmscan_node_reclaim_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_node_reclaim_end = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_node_reclaim_end }, align 4
@__tracepoint_mm_vmscan_node_reclaim_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_node_reclaim_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_node_reclaim_end, ptr null, ptr @__traceiter_mm_vmscan_node_reclaim_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_node_reclaim_end = internal constant ptr @__tracepoint_mm_vmscan_node_reclaim_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_vmscan_throttled = internal constant [20 x i8] c"mm_vmscan_throttled\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_vmscan_throttled = dso_local global %struct.static_call_key { ptr @__traceiter_mm_vmscan_throttled }, align 4
@__tracepoint_mm_vmscan_throttled = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_vmscan_throttled, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_vmscan_throttled, ptr null, ptr @__traceiter_mm_vmscan_throttled, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_vmscan_throttled = internal constant ptr @__tracepoint_mm_vmscan_throttled, section "__tracepoints_ptrs", align 4
@str__vmscan__trace_system_name = internal constant [7 x i8] c"vmscan\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"COMPACT_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_SKIPPED = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"COMPACT_DEFERRED\00", align 1
@__TRACE_SYSTEM_COMPACT_DEFERRED = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.1, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_DEFERRED = internal global ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"COMPACT_CONTINUE\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTINUE = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.2, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTINUE = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"COMPACT_SUCCESS\00", align 1
@__TRACE_SYSTEM_COMPACT_SUCCESS = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.3, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SUCCESS = internal global ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"COMPACT_PARTIAL_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.4, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"COMPACT_COMPLETE\00", align 1
@__TRACE_SYSTEM_COMPACT_COMPLETE = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_COMPLETE = internal global ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"COMPACT_NO_SUITABLE_PAGE\00", align 1
@__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.6, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"COMPACT_NOT_SUITABLE_ZONE\00", align 1
@__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.7, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"COMPACT_CONTENDED\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTENDED = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.8, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTENDED = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"COMPACT_PRIO_SYNC_FULL\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.9, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, section "_ftrace_eval_map", align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"COMPACT_PRIO_SYNC_LIGHT\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.10, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, section "_ftrace_eval_map", align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"COMPACT_PRIO_ASYNC\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.11, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, section "_ftrace_eval_map", align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"ZONE_DMA\00", align 1
@__TRACE_SYSTEM_ZONE_DMA = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.12, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_DMA = internal global ptr @__TRACE_SYSTEM_ZONE_DMA, section "_ftrace_eval_map", align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"ZONE_NORMAL\00", align 1
@__TRACE_SYSTEM_ZONE_NORMAL = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.13, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_NORMAL = internal global ptr @__TRACE_SYSTEM_ZONE_NORMAL, section "_ftrace_eval_map", align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"ZONE_HIGHMEM\00", align 1
@__TRACE_SYSTEM_ZONE_HIGHMEM = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.14, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_HIGHMEM = internal global ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, section "_ftrace_eval_map", align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"ZONE_MOVABLE\00", align 1
@__TRACE_SYSTEM_ZONE_MOVABLE = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.15, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_MOVABLE = internal global ptr @__TRACE_SYSTEM_ZONE_MOVABLE, section "_ftrace_eval_map", align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.16, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.17, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.18, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.19, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"LRU_UNEVICTABLE\00", align 1
@__TRACE_SYSTEM_LRU_UNEVICTABLE = internal global %struct.trace_eval_map { ptr @str__vmscan__trace_system_name, ptr @.str.20, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_UNEVICTABLE = internal global ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, section "_ftrace_eval_map", align 4
@trace_event_fields_mm_vmscan_kswapd_sleep = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_kswapd_sleep = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_kswapd_sleep, ptr @perf_trace_mm_vmscan_kswapd_sleep, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_kswapd_sleep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_kswapd_sleep, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_kswapd_sleep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_kswapd_sleep = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_kswapd_sleep, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_kswapd_sleep = internal global [19 x i8] c"\22nid=%d\22, REC->nid\00", align 1
@event_mm_vmscan_kswapd_sleep = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_kswapd_sleep, %union.anon.97 { ptr @__tracepoint_mm_vmscan_kswapd_sleep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_kswapd_sleep }, ptr @print_fmt_mm_vmscan_kswapd_sleep, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_kswapd_sleep = internal global ptr @event_mm_vmscan_kswapd_sleep, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_kswapd_wake = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_kswapd_wake = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_kswapd_wake, ptr @perf_trace_mm_vmscan_kswapd_wake, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_kswapd_wake, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_kswapd_wake, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_kswapd_wake, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_kswapd_wake = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_kswapd_wake, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_kswapd_wake = internal global [40 x i8] c"\22nid=%d order=%d\22, REC->nid, REC->order\00", align 1
@event_mm_vmscan_kswapd_wake = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_kswapd_wake, %union.anon.97 { ptr @__tracepoint_mm_vmscan_kswapd_wake }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_kswapd_wake }, ptr @print_fmt_mm_vmscan_kswapd_wake, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_kswapd_wake = internal global ptr @event_mm_vmscan_kswapd_wake, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_wakeup_kswapd = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_wakeup_kswapd = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_wakeup_kswapd, ptr @perf_trace_mm_vmscan_wakeup_kswapd, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_wakeup_kswapd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_wakeup_kswapd, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_wakeup_kswapd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_wakeup_kswapd = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_wakeup_kswapd, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_wakeup_kswapd = internal global [3030 x i8] c"\22nid=%d order=%d gfp_flags=%s\22, REC->nid, REC->order, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22\00", align 1
@event_mm_vmscan_wakeup_kswapd = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_wakeup_kswapd, %union.anon.97 { ptr @__tracepoint_mm_vmscan_wakeup_kswapd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_wakeup_kswapd }, ptr @print_fmt_mm_vmscan_wakeup_kswapd, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_wakeup_kswapd = internal global ptr @event_mm_vmscan_wakeup_kswapd, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_direct_reclaim_begin_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_direct_reclaim_begin_template = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_direct_reclaim_begin_template, ptr @perf_trace_mm_vmscan_direct_reclaim_begin_template, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_direct_reclaim_begin_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_direct_reclaim_begin_template, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_direct_reclaim_begin_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_direct_reclaim_begin_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_direct_reclaim_begin_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_direct_reclaim_begin_template = internal global [3013 x i8] c"\22order=%d gfp_flags=%s\22, REC->order, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22\00", align 1
@event_mm_vmscan_direct_reclaim_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_direct_reclaim_begin_template, %union.anon.97 { ptr @__tracepoint_mm_vmscan_direct_reclaim_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_direct_reclaim_begin_template }, ptr @print_fmt_mm_vmscan_direct_reclaim_begin_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_direct_reclaim_begin = internal global ptr @event_mm_vmscan_direct_reclaim_begin, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_direct_reclaim_end_template = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.75, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_direct_reclaim_end_template = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_direct_reclaim_end_template, ptr @perf_trace_mm_vmscan_direct_reclaim_end_template, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_direct_reclaim_end_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_direct_reclaim_end_template, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_direct_reclaim_end_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_direct_reclaim_end_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_direct_reclaim_end_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_direct_reclaim_end_template = internal global [38 x i8] c"\22nr_reclaimed=%lu\22, REC->nr_reclaimed\00", align 1
@event_mm_vmscan_direct_reclaim_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_direct_reclaim_end_template, %union.anon.97 { ptr @__tracepoint_mm_vmscan_direct_reclaim_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_direct_reclaim_end_template }, ptr @print_fmt_mm_vmscan_direct_reclaim_end_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_direct_reclaim_end = internal global ptr @event_mm_vmscan_direct_reclaim_end, section "_ftrace_events", align 4
@trace_event_fields_mm_shrink_slab_start = internal global [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.77, %union.anon.95 { %struct.anon.96 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.79, %union.anon.95 { %struct.anon.96 { ptr @.str.80, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.81, %union.anon.95 { %struct.anon.96 { ptr @.str.82, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.83, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.84, %union.anon.95 { %struct.anon.96 { ptr @.str.85, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.86, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.87, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_shrink_slab_start = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_shrink_slab_start, ptr @perf_trace_mm_shrink_slab_start, ptr @trace_event_reg, ptr @trace_event_fields_mm_shrink_slab_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_shrink_slab_start, i64 24), ptr getelementptr (i8, ptr @event_class_mm_shrink_slab_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_shrink_slab_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_shrink_slab_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_shrink_slab_start = internal global [3206 x i8] c"\22%pS %p: nid: %d objects to shrink %ld gfp_flags %s cache items %ld delta %lld total_scan %ld priority %d\22, REC->shrink, REC->shr, REC->nid, REC->nr_objects_to_shrink, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22, REC->cache_items, REC->delta, REC->total_scan, REC->priority\00", align 1
@event_mm_shrink_slab_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_shrink_slab_start, %union.anon.97 { ptr @__tracepoint_mm_shrink_slab_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_shrink_slab_start }, ptr @print_fmt_mm_shrink_slab_start, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_shrink_slab_start = internal global ptr @event_mm_shrink_slab_start, section "_ftrace_events", align 4
@trace_event_fields_mm_shrink_slab_end = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.77, %union.anon.95 { %struct.anon.96 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.79, %union.anon.95 { %struct.anon.96 { ptr @.str.80, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.81, %union.anon.95 { %struct.anon.96 { ptr @.str.89, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.81, %union.anon.95 { %struct.anon.96 { ptr @.str.90, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.91, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.81, %union.anon.95 { %struct.anon.96 { ptr @.str.86, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_shrink_slab_end = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_shrink_slab_end, ptr @perf_trace_mm_shrink_slab_end, ptr @trace_event_reg, ptr @trace_event_fields_mm_shrink_slab_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_shrink_slab_end, i64 24), ptr getelementptr (i8, ptr @event_class_mm_shrink_slab_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_shrink_slab_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_shrink_slab_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_shrink_slab_end = internal global [198 x i8] c"\22%pS %p: nid: %d unused scan count %ld new scan count %ld total_scan %ld last shrinker return val %d\22, REC->shrink, REC->shr, REC->nid, REC->unused_scan, REC->new_scan, REC->total_scan, REC->retval\00", align 1
@event_mm_shrink_slab_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_shrink_slab_end, %union.anon.97 { ptr @__tracepoint_mm_shrink_slab_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_shrink_slab_end }, ptr @print_fmt_mm_shrink_slab_end, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_shrink_slab_end = internal global ptr @event_mm_shrink_slab_end, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_lru_isolate = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.93, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.94, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.96, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.97, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.95 { %struct.anon.96 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.100, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_lru_isolate = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_lru_isolate, ptr @perf_trace_mm_vmscan_lru_isolate, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_lru_isolate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_lru_isolate, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_lru_isolate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_lru_isolate = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_lru_isolate, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_lru_isolate = internal global [434 x i8] c"\22isolate_mode=%d classzone=%d order=%d nr_requested=%lu nr_scanned=%lu nr_skipped=%lu nr_taken=%lu lru=%s\22, REC->isolate_mode, REC->highest_zoneidx, REC->order, REC->nr_requested, REC->nr_scanned, REC->nr_skipped, REC->nr_taken, __print_symbolic(REC->lru, {LRU_INACTIVE_ANON, \22inactive_anon\22}, {LRU_ACTIVE_ANON, \22active_anon\22}, {LRU_INACTIVE_FILE, \22inactive_file\22}, {LRU_ACTIVE_FILE, \22active_file\22}, {LRU_UNEVICTABLE, \22unevictable\22})\00", align 1
@event_mm_vmscan_lru_isolate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_lru_isolate, %union.anon.97 { ptr @__tracepoint_mm_vmscan_lru_isolate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_lru_isolate }, ptr @print_fmt_mm_vmscan_lru_isolate, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_lru_isolate = internal global ptr @event_mm_vmscan_lru_isolate, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_writepage = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.107, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.108, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_writepage = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_writepage, ptr @perf_trace_mm_vmscan_writepage, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_writepage, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_writepage, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_writepage, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_writepage = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_writepage, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_writepage = internal global [326 x i8] c"\22page=%p pfn=0x%lx flags=%s\22, (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))), REC->pfn, (REC->reclaim_flags) ? __print_flags(REC->reclaim_flags, \22|\22, {0x0001u, \22RECLAIM_WB_ANON\22}, {0x0002u, \22RECLAIM_WB_FILE\22}, {0x0010u, \22RECLAIM_WB_MIXED\22}, {0x0004u, \22RECLAIM_WB_SYNC\22}, {0x0008u, \22RECLAIM_WB_ASYNC\22} ) : \22RECLAIM_WB_NONE\22\00", align 1
@event_mm_vmscan_writepage = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_writepage, %union.anon.97 { ptr @__tracepoint_mm_vmscan_writepage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_writepage }, ptr @print_fmt_mm_vmscan_writepage, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_writepage = internal global ptr @event_mm_vmscan_writepage, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_lru_shrink_inactive = internal global [14 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.75, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.116, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.118, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.119, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.120, %union.anon.95 { %struct.anon.96 { ptr @.str.121, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.120, %union.anon.95 { %struct.anon.96 { ptr @.str.122, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.123, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.124, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.87, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.108, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_lru_shrink_inactive = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_lru_shrink_inactive, ptr @perf_trace_mm_vmscan_lru_shrink_inactive, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_lru_shrink_inactive, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_lru_shrink_inactive, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_lru_shrink_inactive, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_lru_shrink_inactive = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_lru_shrink_inactive, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_lru_shrink_inactive = internal global [645 x i8] c"\22nid=%d nr_scanned=%ld nr_reclaimed=%ld nr_dirty=%ld nr_writeback=%ld nr_congested=%ld nr_immediate=%ld nr_activate_anon=%d nr_activate_file=%d nr_ref_keep=%ld nr_unmap_fail=%ld priority=%d flags=%s\22, REC->nid, REC->nr_scanned, REC->nr_reclaimed, REC->nr_dirty, REC->nr_writeback, REC->nr_congested, REC->nr_immediate, REC->nr_activate0, REC->nr_activate1, REC->nr_ref_keep, REC->nr_unmap_fail, REC->priority, (REC->reclaim_flags) ? __print_flags(REC->reclaim_flags, \22|\22, {0x0001u, \22RECLAIM_WB_ANON\22}, {0x0002u, \22RECLAIM_WB_FILE\22}, {0x0010u, \22RECLAIM_WB_MIXED\22}, {0x0004u, \22RECLAIM_WB_SYNC\22}, {0x0008u, \22RECLAIM_WB_ASYNC\22} ) : \22RECLAIM_WB_NONE\22\00", align 1
@event_mm_vmscan_lru_shrink_inactive = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_lru_shrink_inactive, %union.anon.97 { ptr @__tracepoint_mm_vmscan_lru_shrink_inactive }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_lru_shrink_inactive }, ptr @print_fmt_mm_vmscan_lru_shrink_inactive, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_lru_shrink_inactive = internal global ptr @event_mm_vmscan_lru_shrink_inactive, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_lru_shrink_active = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.97, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.126, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.127, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.95 { %struct.anon.96 { ptr @.str.128, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.87, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.108, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_lru_shrink_active = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_lru_shrink_active, ptr @perf_trace_mm_vmscan_lru_shrink_active, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_lru_shrink_active, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_lru_shrink_active, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_lru_shrink_active, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_lru_shrink_active = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_lru_shrink_active, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_lru_shrink_active = internal global [427 x i8] c"\22nid=%d nr_taken=%ld nr_active=%ld nr_deactivated=%ld nr_referenced=%ld priority=%d flags=%s\22, REC->nid, REC->nr_taken, REC->nr_active, REC->nr_deactivated, REC->nr_referenced, REC->priority, (REC->reclaim_flags) ? __print_flags(REC->reclaim_flags, \22|\22, {0x0001u, \22RECLAIM_WB_ANON\22}, {0x0002u, \22RECLAIM_WB_FILE\22}, {0x0010u, \22RECLAIM_WB_MIXED\22}, {0x0004u, \22RECLAIM_WB_SYNC\22}, {0x0008u, \22RECLAIM_WB_ASYNC\22} ) : \22RECLAIM_WB_NONE\22\00", align 1
@event_mm_vmscan_lru_shrink_active = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_lru_shrink_active, %union.anon.97 { ptr @__tracepoint_mm_vmscan_lru_shrink_active }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_lru_shrink_active }, ptr @print_fmt_mm_vmscan_lru_shrink_active, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_lru_shrink_active = internal global ptr @event_mm_vmscan_lru_shrink_active, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_node_reclaim_begin = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_node_reclaim_begin = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_node_reclaim_begin, ptr @perf_trace_mm_vmscan_node_reclaim_begin, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_node_reclaim_begin, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_node_reclaim_begin, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_node_reclaim_begin, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_node_reclaim_begin = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_node_reclaim_begin, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_node_reclaim_begin = internal global [3030 x i8] c"\22nid=%d order=%d gfp_flags=%s\22, REC->nid, REC->order, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22\00", align 1
@event_mm_vmscan_node_reclaim_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_node_reclaim_begin, %union.anon.97 { ptr @__tracepoint_mm_vmscan_node_reclaim_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_node_reclaim_begin }, ptr @print_fmt_mm_vmscan_node_reclaim_begin, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_node_reclaim_begin = internal global ptr @event_mm_vmscan_node_reclaim_begin, section "_ftrace_events", align 4
@event_mm_vmscan_node_reclaim_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_direct_reclaim_end_template, %union.anon.97 { ptr @__tracepoint_mm_vmscan_node_reclaim_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_direct_reclaim_end_template }, ptr @print_fmt_mm_vmscan_direct_reclaim_end_template, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_node_reclaim_end = internal global ptr @event_mm_vmscan_node_reclaim_end, section "_ftrace_events", align 4
@trace_event_fields_mm_vmscan_throttled = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.130, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.131, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.132, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_vmscan_throttled = internal global %struct.trace_event_class { ptr @str__vmscan__trace_system_name, ptr @trace_event_raw_event_mm_vmscan_throttled, ptr @perf_trace_mm_vmscan_throttled, ptr @trace_event_reg, ptr @trace_event_fields_mm_vmscan_throttled, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_vmscan_throttled, i64 24), ptr getelementptr (i8, ptr @event_class_mm_vmscan_throttled, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_vmscan_throttled = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_vmscan_throttled, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_vmscan_throttled = internal global [435 x i8] c"\22nid=%d usec_timeout=%d usect_delayed=%d reason=%s\22, REC->nid, REC->usec_timeout, REC->usec_delayed, (REC->reason) ? __print_flags(REC->reason, \22|\22, {(1 << VMSCAN_THROTTLE_WRITEBACK), \22VMSCAN_THROTTLE_WRITEBACK\22}, {(1 << VMSCAN_THROTTLE_ISOLATED), \22VMSCAN_THROTTLE_ISOLATED\22}, {(1 << VMSCAN_THROTTLE_NOPROGRESS), \22VMSCAN_THROTTLE_NOPROGRESS\22}, {(1 << VMSCAN_THROTTLE_CONGESTED), \22VMSCAN_THROTTLE_CONGESTED\22} ) : \22VMSCAN_THROTTLE_NONE\22\00", align 1
@event_mm_vmscan_throttled = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_vmscan_throttled, %union.anon.97 { ptr @__tracepoint_mm_vmscan_throttled }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_vmscan_throttled }, ptr @print_fmt_mm_vmscan_throttled, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_vmscan_throttled = internal global ptr @event_mm_vmscan_throttled, section "_ftrace_events", align 4
@vm_swappiness = dso_local local_unnamed_addr global i32 60, align 4
@shrinker_rwsem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @shrinker_rwsem, i64 16), ptr getelementptr (i8, ptr @shrinker_rwsem, i64 16) } }, align 4
@shrinker_list = internal global %struct.list_head { ptr @shrinker_list, ptr @shrinker_list }, align 4
@__kstrtab_register_shrinker = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_shrinker = external dso_local constant [0 x i8], align 1
@__ksymtab_register_shrinker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_shrinker to i32), ptr @__kstrtab_register_shrinker, ptr @__kstrtabns_register_shrinker }, section "___ksymtab+register_shrinker", align 4
@__kstrtab_unregister_shrinker = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_shrinker = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_shrinker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_shrinker to i32), ptr @__kstrtab_unregister_shrinker, ptr @__kstrtabns_unregister_shrinker }, section "___ksymtab+unregister_shrinker", align 4
@__kstrtab_synchronize_shrinkers = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_shrinkers = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_shrinkers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_shrinkers to i32), ptr @__kstrtab_synchronize_shrinkers, ptr @__kstrtabns_synchronize_shrinkers }, section "___ksymtab+synchronize_shrinkers", align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"mm/vmscan.c\00", align 1
@reclaim_throttle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@isolate_lru_page._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.isolate_lru_page = private unnamed_addr constant [17 x i8] c"isolate_lru_page\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"trying to isolate tail page\00", align 1
@laptop_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"kswapd%d\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [45 x i8] c"\013vmscan: Failed to start kswapd on node %d\0A\00", align 1
@__initcall__kmod_vmscan__409_4668_kswapd_init6 = internal global ptr @kswapd_init, section ".initcall6.init", align 4
@__kstrtab_check_move_unevictable_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_check_move_unevictable_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_check_move_unevictable_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @check_move_unevictable_pages to i32), ptr @__kstrtab_check_move_unevictable_pages, ptr @__kstrtabns_check_move_unevictable_pages }, section "___ksymtab_gpl+check_move_unevictable_pages", align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"nid\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"nid=%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"zid\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"nid=%d order=%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"gfp_t\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"gfp_flags\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"nid=%d order=%d gfp_flags=%s\0A\00", align 1
@trace_raw_output_mm_vmscan_wakeup_kswapd.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.34 }, %struct.trace_print_flags { i32 18620618, ptr @.str.35 }, %struct.trace_print_flags { i32 17829066, ptr @.str.36 }, %struct.trace_print_flags { i32 1051842, ptr @.str.37 }, %struct.trace_print_flags { i32 1051840, ptr @.str.38 }, %struct.trace_print_flags { i32 4197568, ptr @.str.39 }, %struct.trace_print_flags { i32 3264, ptr @.str.40 }, %struct.trace_print_flags { i32 3136, ptr @.str.41 }, %struct.trace_print_flags { i32 2592, ptr @.str.42 }, %struct.trace_print_flags { i32 3072, ptr @.str.43 }, %struct.trace_print_flags { i32 2048, ptr @.str.44 }, %struct.trace_print_flags { i32 1, ptr @.str.45 }, %struct.trace_print_flags { i32 2, ptr @.str.46 }, %struct.trace_print_flags { i32 4, ptr @.str.47 }, %struct.trace_print_flags { i32 32, ptr @.str.48 }, %struct.trace_print_flags { i32 512, ptr @.str.49 }, %struct.trace_print_flags { i32 64, ptr @.str.50 }, %struct.trace_print_flags { i32 128, ptr @.str.51 }, %struct.trace_print_flags { i32 8192, ptr @.str.52 }, %struct.trace_print_flags { i32 16384, ptr @.str.53 }, %struct.trace_print_flags { i32 32768, ptr @.str.54 }, %struct.trace_print_flags { i32 65536, ptr @.str.55 }, %struct.trace_print_flags { i32 262144, ptr @.str.56 }, %struct.trace_print_flags { i32 256, ptr @.str.57 }, %struct.trace_print_flags { i32 524288, ptr @.str.58 }, %struct.trace_print_flags { i32 131072, ptr @.str.59 }, %struct.trace_print_flags { i32 1048576, ptr @.str.60 }, %struct.trace_print_flags { i32 2097152, ptr @.str.61 }, %struct.trace_print_flags { i32 16, ptr @.str.62 }, %struct.trace_print_flags { i32 8, ptr @.str.63 }, %struct.trace_print_flags { i32 4194304, ptr @.str.64 }, %struct.trace_print_flags { i32 4096, ptr @.str.65 }, %struct.trace_print_flags { i32 3072, ptr @.str.66 }, %struct.trace_print_flags { i32 1024, ptr @.str.67 }, %struct.trace_print_flags { i32 2048, ptr @.str.68 }, %struct.trace_print_flags { i32 8388608, ptr @.str.69 }, %struct.trace_print_flags { i32 16777216, ptr @.str.70 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.34 = private unnamed_addr constant [14 x i8] c"GFP_TRANSHUGE\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"GFP_TRANSHUGE_LIGHT\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"GFP_HIGHUSER_MOVABLE\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"GFP_HIGHUSER\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"GFP_USER\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"GFP_KERNEL_ACCOUNT\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"GFP_KERNEL\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"GFP_NOFS\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"GFP_ATOMIC\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"GFP_NOIO\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"GFP_NOWAIT\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"GFP_DMA\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"__GFP_HIGHMEM\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"GFP_DMA32\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"__GFP_HIGH\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"__GFP_ATOMIC\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"__GFP_IO\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"__GFP_FS\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"__GFP_NOWARN\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"__GFP_RETRY_MAYFAIL\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"__GFP_NOFAIL\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"__GFP_NORETRY\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"__GFP_COMP\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"__GFP_ZERO\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"__GFP_NOMEMALLOC\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"__GFP_MEMALLOC\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"__GFP_HARDWALL\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"__GFP_THISNODE\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"__GFP_RECLAIMABLE\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"__GFP_MOVABLE\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"__GFP_ACCOUNT\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"__GFP_WRITE\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"__GFP_RECLAIM\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"__GFP_DIRECT_RECLAIM\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"__GFP_KSWAPD_RECLAIM\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"__GFP_ZEROTAGS\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"__GFP_SKIP_KASAN_POISON\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"order=%d gfp_flags=%s\0A\00", align 1
@trace_raw_output_mm_vmscan_direct_reclaim_begin_template.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.34 }, %struct.trace_print_flags { i32 18620618, ptr @.str.35 }, %struct.trace_print_flags { i32 17829066, ptr @.str.36 }, %struct.trace_print_flags { i32 1051842, ptr @.str.37 }, %struct.trace_print_flags { i32 1051840, ptr @.str.38 }, %struct.trace_print_flags { i32 4197568, ptr @.str.39 }, %struct.trace_print_flags { i32 3264, ptr @.str.40 }, %struct.trace_print_flags { i32 3136, ptr @.str.41 }, %struct.trace_print_flags { i32 2592, ptr @.str.42 }, %struct.trace_print_flags { i32 3072, ptr @.str.43 }, %struct.trace_print_flags { i32 2048, ptr @.str.44 }, %struct.trace_print_flags { i32 1, ptr @.str.45 }, %struct.trace_print_flags { i32 2, ptr @.str.46 }, %struct.trace_print_flags { i32 4, ptr @.str.47 }, %struct.trace_print_flags { i32 32, ptr @.str.48 }, %struct.trace_print_flags { i32 512, ptr @.str.49 }, %struct.trace_print_flags { i32 64, ptr @.str.50 }, %struct.trace_print_flags { i32 128, ptr @.str.51 }, %struct.trace_print_flags { i32 8192, ptr @.str.52 }, %struct.trace_print_flags { i32 16384, ptr @.str.53 }, %struct.trace_print_flags { i32 32768, ptr @.str.54 }, %struct.trace_print_flags { i32 65536, ptr @.str.55 }, %struct.trace_print_flags { i32 262144, ptr @.str.56 }, %struct.trace_print_flags { i32 256, ptr @.str.57 }, %struct.trace_print_flags { i32 524288, ptr @.str.58 }, %struct.trace_print_flags { i32 131072, ptr @.str.59 }, %struct.trace_print_flags { i32 1048576, ptr @.str.60 }, %struct.trace_print_flags { i32 2097152, ptr @.str.61 }, %struct.trace_print_flags { i32 16, ptr @.str.62 }, %struct.trace_print_flags { i32 8, ptr @.str.63 }, %struct.trace_print_flags { i32 4194304, ptr @.str.64 }, %struct.trace_print_flags { i32 4096, ptr @.str.65 }, %struct.trace_print_flags { i32 3072, ptr @.str.66 }, %struct.trace_print_flags { i32 1024, ptr @.str.67 }, %struct.trace_print_flags { i32 2048, ptr @.str.68 }, %struct.trace_print_flags { i32 8388608, ptr @.str.69 }, %struct.trace_print_flags { i32 16777216, ptr @.str.70 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.74 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"nr_reclaimed\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"nr_reclaimed=%lu\0A\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"struct shrinker *\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"shr\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"nr_objects_to_shrink\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"cache_items\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"total_scan\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.88 = private unnamed_addr constant [106 x i8] c"%pS %p: nid: %d objects to shrink %ld gfp_flags %s cache items %ld delta %lld total_scan %ld priority %d\0A\00", align 1
@trace_raw_output_mm_shrink_slab_start.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.34 }, %struct.trace_print_flags { i32 18620618, ptr @.str.35 }, %struct.trace_print_flags { i32 17829066, ptr @.str.36 }, %struct.trace_print_flags { i32 1051842, ptr @.str.37 }, %struct.trace_print_flags { i32 1051840, ptr @.str.38 }, %struct.trace_print_flags { i32 4197568, ptr @.str.39 }, %struct.trace_print_flags { i32 3264, ptr @.str.40 }, %struct.trace_print_flags { i32 3136, ptr @.str.41 }, %struct.trace_print_flags { i32 2592, ptr @.str.42 }, %struct.trace_print_flags { i32 3072, ptr @.str.43 }, %struct.trace_print_flags { i32 2048, ptr @.str.44 }, %struct.trace_print_flags { i32 1, ptr @.str.45 }, %struct.trace_print_flags { i32 2, ptr @.str.46 }, %struct.trace_print_flags { i32 4, ptr @.str.47 }, %struct.trace_print_flags { i32 32, ptr @.str.48 }, %struct.trace_print_flags { i32 512, ptr @.str.49 }, %struct.trace_print_flags { i32 64, ptr @.str.50 }, %struct.trace_print_flags { i32 128, ptr @.str.51 }, %struct.trace_print_flags { i32 8192, ptr @.str.52 }, %struct.trace_print_flags { i32 16384, ptr @.str.53 }, %struct.trace_print_flags { i32 32768, ptr @.str.54 }, %struct.trace_print_flags { i32 65536, ptr @.str.55 }, %struct.trace_print_flags { i32 262144, ptr @.str.56 }, %struct.trace_print_flags { i32 256, ptr @.str.57 }, %struct.trace_print_flags { i32 524288, ptr @.str.58 }, %struct.trace_print_flags { i32 131072, ptr @.str.59 }, %struct.trace_print_flags { i32 1048576, ptr @.str.60 }, %struct.trace_print_flags { i32 2097152, ptr @.str.61 }, %struct.trace_print_flags { i32 16, ptr @.str.62 }, %struct.trace_print_flags { i32 8, ptr @.str.63 }, %struct.trace_print_flags { i32 4194304, ptr @.str.64 }, %struct.trace_print_flags { i32 4096, ptr @.str.65 }, %struct.trace_print_flags { i32 3072, ptr @.str.66 }, %struct.trace_print_flags { i32 1024, ptr @.str.67 }, %struct.trace_print_flags { i32 2048, ptr @.str.68 }, %struct.trace_print_flags { i32 8388608, ptr @.str.69 }, %struct.trace_print_flags { i32 16777216, ptr @.str.70 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.89 = private unnamed_addr constant [12 x i8] c"unused_scan\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"new_scan\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.92 = private unnamed_addr constant [101 x i8] c"%pS %p: nid: %d unused scan count %ld new scan count %ld total_scan %ld last shrinker return val %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"highest_zoneidx\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"nr_requested\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"nr_scanned\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"nr_skipped\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"nr_taken\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"isolate_mode_t\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"isolate_mode\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"lru\00", align 1
@.str.101 = private unnamed_addr constant [106 x i8] c"isolate_mode=%d classzone=%d order=%d nr_requested=%lu nr_scanned=%lu nr_skipped=%lu nr_taken=%lu lru=%s\0A\00", align 1
@trace_raw_output_mm_vmscan_lru_isolate.symbols = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.102 }, %struct.trace_print_flags { i32 1, ptr @.str.103 }, %struct.trace_print_flags { i32 2, ptr @.str.104 }, %struct.trace_print_flags { i32 3, ptr @.str.105 }, %struct.trace_print_flags { i32 4, ptr @.str.106 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.102 = private unnamed_addr constant [14 x i8] c"inactive_anon\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"active_anon\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"inactive_file\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"active_file\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"unevictable\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.107 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"reclaim_flags\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"page=%p pfn=0x%lx flags=%s\0A\00", align 1
@trace_raw_output_mm_vmscan_writepage.__flags = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.110 }, %struct.trace_print_flags { i32 2, ptr @.str.111 }, %struct.trace_print_flags { i32 16, ptr @.str.112 }, %struct.trace_print_flags { i32 4, ptr @.str.113 }, %struct.trace_print_flags { i32 8, ptr @.str.114 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.110 = private unnamed_addr constant [16 x i8] c"RECLAIM_WB_ANON\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"RECLAIM_WB_FILE\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"RECLAIM_WB_MIXED\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"RECLAIM_WB_SYNC\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"RECLAIM_WB_ASYNC\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"RECLAIM_WB_NONE\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"nr_dirty\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"nr_writeback\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"nr_congested\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"nr_immediate\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"nr_activate0\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"nr_activate1\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"nr_ref_keep\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"nr_unmap_fail\00", align 1
@.str.125 = private unnamed_addr constant [199 x i8] c"nid=%d nr_scanned=%ld nr_reclaimed=%ld nr_dirty=%ld nr_writeback=%ld nr_congested=%ld nr_immediate=%ld nr_activate_anon=%d nr_activate_file=%d nr_ref_keep=%ld nr_unmap_fail=%ld priority=%d flags=%s\0A\00", align 1
@trace_raw_output_mm_vmscan_lru_shrink_inactive.__flags = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.110 }, %struct.trace_print_flags { i32 2, ptr @.str.111 }, %struct.trace_print_flags { i32 16, ptr @.str.112 }, %struct.trace_print_flags { i32 4, ptr @.str.113 }, %struct.trace_print_flags { i32 8, ptr @.str.114 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.126 = private unnamed_addr constant [10 x i8] c"nr_active\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"nr_deactivated\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"nr_referenced\00", align 1
@.str.129 = private unnamed_addr constant [93 x i8] c"nid=%d nr_taken=%ld nr_active=%ld nr_deactivated=%ld nr_referenced=%ld priority=%d flags=%s\0A\00", align 1
@trace_raw_output_mm_vmscan_lru_shrink_active.__flags = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.110 }, %struct.trace_print_flags { i32 2, ptr @.str.111 }, %struct.trace_print_flags { i32 16, ptr @.str.112 }, %struct.trace_print_flags { i32 4, ptr @.str.113 }, %struct.trace_print_flags { i32 8, ptr @.str.114 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_mm_vmscan_node_reclaim_begin.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.34 }, %struct.trace_print_flags { i32 18620618, ptr @.str.35 }, %struct.trace_print_flags { i32 17829066, ptr @.str.36 }, %struct.trace_print_flags { i32 1051842, ptr @.str.37 }, %struct.trace_print_flags { i32 1051840, ptr @.str.38 }, %struct.trace_print_flags { i32 4197568, ptr @.str.39 }, %struct.trace_print_flags { i32 3264, ptr @.str.40 }, %struct.trace_print_flags { i32 3136, ptr @.str.41 }, %struct.trace_print_flags { i32 2592, ptr @.str.42 }, %struct.trace_print_flags { i32 3072, ptr @.str.43 }, %struct.trace_print_flags { i32 2048, ptr @.str.44 }, %struct.trace_print_flags { i32 1, ptr @.str.45 }, %struct.trace_print_flags { i32 2, ptr @.str.46 }, %struct.trace_print_flags { i32 4, ptr @.str.47 }, %struct.trace_print_flags { i32 32, ptr @.str.48 }, %struct.trace_print_flags { i32 512, ptr @.str.49 }, %struct.trace_print_flags { i32 64, ptr @.str.50 }, %struct.trace_print_flags { i32 128, ptr @.str.51 }, %struct.trace_print_flags { i32 8192, ptr @.str.52 }, %struct.trace_print_flags { i32 16384, ptr @.str.53 }, %struct.trace_print_flags { i32 32768, ptr @.str.54 }, %struct.trace_print_flags { i32 65536, ptr @.str.55 }, %struct.trace_print_flags { i32 262144, ptr @.str.56 }, %struct.trace_print_flags { i32 256, ptr @.str.57 }, %struct.trace_print_flags { i32 524288, ptr @.str.58 }, %struct.trace_print_flags { i32 131072, ptr @.str.59 }, %struct.trace_print_flags { i32 1048576, ptr @.str.60 }, %struct.trace_print_flags { i32 2097152, ptr @.str.61 }, %struct.trace_print_flags { i32 16, ptr @.str.62 }, %struct.trace_print_flags { i32 8, ptr @.str.63 }, %struct.trace_print_flags { i32 4194304, ptr @.str.64 }, %struct.trace_print_flags { i32 4096, ptr @.str.65 }, %struct.trace_print_flags { i32 3072, ptr @.str.66 }, %struct.trace_print_flags { i32 1024, ptr @.str.67 }, %struct.trace_print_flags { i32 2048, ptr @.str.68 }, %struct.trace_print_flags { i32 8388608, ptr @.str.69 }, %struct.trace_print_flags { i32 16777216, ptr @.str.70 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.130 = private unnamed_addr constant [13 x i8] c"usec_timeout\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"usec_delayed\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.133 = private unnamed_addr constant [51 x i8] c"nid=%d usec_timeout=%d usect_delayed=%d reason=%s\0A\00", align 1
@trace_raw_output_mm_vmscan_throttled.__flags = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.134 }, %struct.trace_print_flags { i32 2, ptr @.str.135 }, %struct.trace_print_flags { i32 4, ptr @.str.136 }, %struct.trace_print_flags { i32 8, ptr @.str.137 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.134 = private unnamed_addr constant [26 x i8] c"VMSCAN_THROTTLE_WRITEBACK\00", align 1
@.str.135 = private unnamed_addr constant [25 x i8] c"VMSCAN_THROTTLE_ISOLATED\00", align 1
@.str.136 = private unnamed_addr constant [27 x i8] c"VMSCAN_THROTTLE_NOPROGRESS\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"VMSCAN_THROTTLE_CONGESTED\00", align 1
@.str.138 = private unnamed_addr constant [21 x i8] c"VMSCAN_THROTTLE_NONE\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@nr_swap_pages = external dso_local global %struct.atomic_t, align 4
@numa_demotion_enabled = external dso_local local_unnamed_addr global i8, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@.str.140 = private unnamed_addr constant [29 x i8] c"\016vmscan: %s: orphaned page\0A\00", align 1
@__func__.pageout = private unnamed_addr constant [8 x i8] c"pageout\00", align 1
@__const.pageout.wbc = private unnamed_addr constant { i32, i32, i64, i64, i32, i8, i8, [2 x i8] } { i32 32, i32 0, i64 0, i64 9223372036854775807, i32 0, i8 8, i8 0, [2 x i8] zeroinitializer }, align 8
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@compound_page_dtors = external dso_local local_unnamed_addr constant [2 x ptr], align 4
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@set_task_reclaim_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@set_task_reclaim_state.__already_done.141 = internal unnamed_addr global i1 false, section ".data.once", align 1
@buffer_heads_over_limit = external dso_local local_unnamed_addr global i32, align 4
@vm_zone_stat = external dso_local global [10 x %struct.atomic_t], align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [116 x ptr] [ptr @TRACE_SYSTEM_COMPACT_COMPLETE, ptr @TRACE_SYSTEM_COMPACT_CONTENDED, ptr @TRACE_SYSTEM_COMPACT_CONTINUE, ptr @TRACE_SYSTEM_COMPACT_DEFERRED, ptr @TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @TRACE_SYSTEM_COMPACT_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_SUCCESS, ptr @TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @TRACE_SYSTEM_ZONE_DMA, ptr @TRACE_SYSTEM_ZONE_HIGHMEM, ptr @TRACE_SYSTEM_ZONE_MOVABLE, ptr @TRACE_SYSTEM_ZONE_NORMAL, ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @__TRACE_SYSTEM_ZONE_DMA, ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, ptr @__TRACE_SYSTEM_ZONE_MOVABLE, ptr @__TRACE_SYSTEM_ZONE_NORMAL, ptr @__event_mm_shrink_slab_end, ptr @__event_mm_shrink_slab_start, ptr @__event_mm_vmscan_direct_reclaim_begin, ptr @__event_mm_vmscan_direct_reclaim_end, ptr @__event_mm_vmscan_kswapd_sleep, ptr @__event_mm_vmscan_kswapd_wake, ptr @__event_mm_vmscan_lru_isolate, ptr @__event_mm_vmscan_lru_shrink_active, ptr @__event_mm_vmscan_lru_shrink_inactive, ptr @__event_mm_vmscan_node_reclaim_begin, ptr @__event_mm_vmscan_node_reclaim_end, ptr @__event_mm_vmscan_throttled, ptr @__event_mm_vmscan_wakeup_kswapd, ptr @__event_mm_vmscan_writepage, ptr @__initcall__kmod_vmscan__409_4668_kswapd_init6, ptr @__ksymtab_check_move_unevictable_pages, ptr @__ksymtab_register_shrinker, ptr @__ksymtab_synchronize_shrinkers, ptr @__ksymtab_unregister_shrinker, ptr @__tracepoint_mm_shrink_slab_end, ptr @__tracepoint_mm_shrink_slab_start, ptr @__tracepoint_mm_vmscan_direct_reclaim_begin, ptr @__tracepoint_mm_vmscan_direct_reclaim_end, ptr @__tracepoint_mm_vmscan_kswapd_sleep, ptr @__tracepoint_mm_vmscan_kswapd_wake, ptr @__tracepoint_mm_vmscan_lru_isolate, ptr @__tracepoint_mm_vmscan_lru_shrink_active, ptr @__tracepoint_mm_vmscan_lru_shrink_inactive, ptr @__tracepoint_mm_vmscan_node_reclaim_begin, ptr @__tracepoint_mm_vmscan_node_reclaim_end, ptr @__tracepoint_mm_vmscan_throttled, ptr @__tracepoint_mm_vmscan_wakeup_kswapd, ptr @__tracepoint_mm_vmscan_writepage, ptr @__tracepoint_ptr_mm_shrink_slab_end, ptr @__tracepoint_ptr_mm_shrink_slab_start, ptr @__tracepoint_ptr_mm_vmscan_direct_reclaim_begin, ptr @__tracepoint_ptr_mm_vmscan_direct_reclaim_end, ptr @__tracepoint_ptr_mm_vmscan_kswapd_sleep, ptr @__tracepoint_ptr_mm_vmscan_kswapd_wake, ptr @__tracepoint_ptr_mm_vmscan_lru_isolate, ptr @__tracepoint_ptr_mm_vmscan_lru_shrink_active, ptr @__tracepoint_ptr_mm_vmscan_lru_shrink_inactive, ptr @__tracepoint_ptr_mm_vmscan_node_reclaim_begin, ptr @__tracepoint_ptr_mm_vmscan_node_reclaim_end, ptr @__tracepoint_ptr_mm_vmscan_throttled, ptr @__tracepoint_ptr_mm_vmscan_wakeup_kswapd, ptr @__tracepoint_ptr_mm_vmscan_writepage, ptr @event_class_mm_shrink_slab_end, ptr @event_class_mm_shrink_slab_start, ptr @event_class_mm_vmscan_direct_reclaim_begin_template, ptr @event_class_mm_vmscan_direct_reclaim_end_template, ptr @event_class_mm_vmscan_kswapd_sleep, ptr @event_class_mm_vmscan_kswapd_wake, ptr @event_class_mm_vmscan_lru_isolate, ptr @event_class_mm_vmscan_lru_shrink_active, ptr @event_class_mm_vmscan_lru_shrink_inactive, ptr @event_class_mm_vmscan_node_reclaim_begin, ptr @event_class_mm_vmscan_throttled, ptr @event_class_mm_vmscan_wakeup_kswapd, ptr @event_class_mm_vmscan_writepage, ptr @event_mm_shrink_slab_end, ptr @event_mm_shrink_slab_start, ptr @event_mm_vmscan_direct_reclaim_begin, ptr @event_mm_vmscan_direct_reclaim_end, ptr @event_mm_vmscan_kswapd_sleep, ptr @event_mm_vmscan_kswapd_wake, ptr @event_mm_vmscan_lru_isolate, ptr @event_mm_vmscan_lru_shrink_active, ptr @event_mm_vmscan_lru_shrink_inactive, ptr @event_mm_vmscan_node_reclaim_begin, ptr @event_mm_vmscan_node_reclaim_end, ptr @event_mm_vmscan_throttled, ptr @event_mm_vmscan_wakeup_kswapd, ptr @event_mm_vmscan_writepage], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_kswapd_sleep(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_kswapd_sleep, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #13
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_kswapd_wake(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_kswapd_wake, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_wakeup_kswapd(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_wakeup_kswapd, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #13
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_direct_reclaim_begin(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_direct_reclaim_begin, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_direct_reclaim_end(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_direct_reclaim_end, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #13
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_shrink_slab_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_shrink_slab_start, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #13
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_shrink_slab_end(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_shrink_slab_end, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #13
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_lru_isolate(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_lru_isolate, i32 0, i32 7), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %17, %12 ], [ %10, %9 ]
  %14 = load volatile ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tracepoint_func, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %14(ptr noundef %16, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13
  %17 = getelementptr %struct.tracepoint_func, ptr %13, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_writepage(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_writepage, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #13
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_lru_shrink_inactive(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_lru_shrink_inactive, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #13
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_lru_shrink_active(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_lru_shrink_active, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #13
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_node_reclaim_begin(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_node_reclaim_begin, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_node_reclaim_end(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_node_reclaim_end, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #13
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_vmscan_throttled(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_throttled, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #13
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_kswapd_sleep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_sleep, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_kswapd_sleep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #7, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #13
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #13
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_sleep, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #13
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_kswapd_wake(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_wake, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_wake, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_wake, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_kswapd_wake(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_wake, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_wake, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_wake, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #13
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_wakeup_kswapd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #13
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_wakeup_kswapd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #7, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #13
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %23, i32 0, i32 4
  store i32 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #13
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_direct_reclaim_begin_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_direct_reclaim_begin_template, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_direct_reclaim_begin_template, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_direct_reclaim_begin_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #7, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #13
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #13
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_direct_reclaim_begin_template, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_direct_reclaim_begin_template, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #13
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_direct_reclaim_end_template(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_direct_reclaim_end_template, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_direct_reclaim_end_template(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #7, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #13
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #13
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_direct_reclaim_end_template, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #13
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_shrink_slab_start(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !10

14:                                               ; preds = %8
  %15 = and i32 %11, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %18, label %37, label %19

19:                                               ; preds = %17, %14, %8
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 48) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %20, i32 0, i32 1
  store ptr %1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.shrinker, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %20, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.shrink_control, ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %20, i32 0, i32 3
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %20, i32 0, i32 4
  store i32 %3, ptr %30, align 4
  %31 = load i32, ptr %2, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %20, i32 0, i32 5
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %20, i32 0, i32 6
  store i32 %4, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %20, i32 0, i32 7
  store i64 %5, ptr %34, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %20, i32 0, i32 8
  store i32 %6, ptr %35, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %20, i32 0, i32 9
  store i32 %7, ptr %36, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #13
  br label %37

37:                                               ; preds = %22, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_shrink_slab_start(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #7, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %22, %8
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #13
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  store i32 %31, ptr %32, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !0) #13
  %37 = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  store i32 19, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %26, i32 0, i32 1
  store ptr %1, ptr %39, align 8
  %40 = getelementptr inbounds %struct.shrinker, ptr %1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %26, i32 0, i32 2
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.shrink_control, ptr %2, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %26, i32 0, i32 3
  store i32 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %26, i32 0, i32 4
  store i32 %3, ptr %46, align 4
  %47 = load i32, ptr %2, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %26, i32 0, i32 5
  store i32 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %26, i32 0, i32 6
  store i32 %4, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %26, i32 0, i32 7
  store i64 %5, ptr %50, align 8
  %51 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %26, i32 0, i32 8
  store i32 %6, ptr %51, align 8
  %52 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %26, i32 0, i32 9
  store i32 %7, ptr %52, align 4
  %53 = load i32, ptr %10, align 4
  %54 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 52, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %18, ptr noundef null) #13
  br label %55

55:                                               ; preds = %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_shrink_slab_end(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %7
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %17, label %31, label %18

18:                                               ; preds = %16, %13, %7
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 36) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %19, i32 0, i32 1
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %19, i32 0, i32 2
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.shrinker, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %19, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %19, i32 0, i32 4
  store i32 %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %19, i32 0, i32 5
  store i32 %5, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %19, i32 0, i32 6
  store i32 %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %19, i32 0, i32 7
  store i32 %6, ptr %30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #13
  br label %31

31:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_shrink_slab_end(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #7, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %21, %7
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #13
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %25, i32 0, i32 1
  store ptr %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %25, i32 0, i32 2
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.shrinker, ptr %1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %25, i32 0, i32 3
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %25, i32 0, i32 4
  store i32 %4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %25, i32 0, i32 5
  store i32 %5, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %25, i32 0, i32 6
  store i32 %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %25, i32 0, i32 7
  store i32 %6, ptr %46, align 4
  %47 = load i32, ptr %9, align 4
  %48 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 36, i32 noundef %47, ptr noundef %0, i64 noundef 1, ptr noundef %48, ptr noundef %17, ptr noundef null) #13
  br label %49

49:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_lru_isolate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 24, i1 false), !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 704
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15, !prof !10

15:                                               ; preds = %9
  %16 = and i32 %12, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20, !prof !11

18:                                               ; preds = %15
  %19 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %19, label %32, label %20

20:                                               ; preds = %18, %15, %9
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %10, ptr noundef %0, i32 noundef 40) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %21, i32 0, i32 1
  store i32 %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %21, i32 0, i32 2
  store i32 %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %21, i32 0, i32 3
  store i32 %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %21, i32 0, i32 4
  store i32 %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %21, i32 0, i32 5
  store i32 %5, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %21, i32 0, i32 6
  store i32 %6, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %21, i32 0, i32 7
  store i32 %7, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %21, i32 0, i32 8
  store i32 %8, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %10) #13
  br label %32

32:                                               ; preds = %23, %20, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_lru_isolate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store ptr null, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !annotation !9
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %9
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %23, %9
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %10, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #13
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #13
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %27, i32 0, i32 1
  store i32 %1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %27, i32 0, i32 2
  store i32 %2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %27, i32 0, i32 3
  store i32 %3, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %27, i32 0, i32 4
  store i32 %4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %27, i32 0, i32 5
  store i32 %5, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %27, i32 0, i32 6
  store i32 %6, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %27, i32 0, i32 7
  store i32 %7, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %27, i32 0, i32 8
  store i32 %8, ptr %47, align 4
  %48 = load i32, ptr %11, align 4
  %49 = load ptr, ptr %10, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef 44, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %19, ptr noundef null) #13
  br label %50

50:                                               ; preds = %29, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_writepage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %12, label %39, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 16) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %1 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  %21 = ashr exact i32 %20, 5
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_writepage, ptr %14, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !10

29:                                               ; preds = %16
  %30 = add i32 %26, -1
  br label %31

31:                                               ; preds = %29, %16
  %32 = phi i32 [ %30, %29 ], [ %18, %16 ]
  %33 = inttoptr i32 %32 to ptr
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 524288
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 10, i32 9
  %38 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_writepage, ptr %14, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %39

39:                                               ; preds = %31, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_writepage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #7, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #13
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #13
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %1 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %34, %35
  %37 = ashr exact i32 %36, 5
  %38 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %39 = add i32 %37, %38
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_writepage, ptr %20, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !10

45:                                               ; preds = %22
  %46 = add i32 %42, -1
  br label %47

47:                                               ; preds = %45, %22
  %48 = phi i32 [ %46, %45 ], [ %34, %22 ]
  %49 = inttoptr i32 %48 to ptr
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 524288
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 10, i32 9
  %54 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_writepage, ptr %20, i32 0, i32 2
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %4, align 4
  %56 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 20, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %12, ptr noundef null) #13
  br label %57

57:                                               ; preds = %47, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_lru_shrink_inactive(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %7
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %17, label %52, label %18

18:                                               ; preds = %16, %13, %7
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 60) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 1
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 2
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 3
  store i32 %3, ptr %24, align 4
  %25 = load i32, ptr %4, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 7
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 8
  store i32 %37, ptr %38, align 4
  %39 = getelementptr %struct.reclaim_stat, ptr %4, i32 0, i32 6, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 9
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 10
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 12
  store i32 %5, ptr %48, align 4
  %49 = icmp eq i32 %6, 0
  %50 = select i1 %49, i32 9, i32 10
  %51 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %19, i32 0, i32 13
  store i32 %50, ptr %51, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #13
  br label %52

52:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_lru_shrink_inactive(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #7, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %70, label %24

24:                                               ; preds = %21, %7
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %70, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #13
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 1
  store i32 %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 2
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 3
  store i32 %3, ptr %40, align 4
  %41 = load i32, ptr %4, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 5
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 7
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 8
  store i32 %53, ptr %54, align 4
  %55 = getelementptr %struct.reclaim_stat, ptr %4, i32 0, i32 6, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 9
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 10
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 11
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 12
  store i32 %5, ptr %64, align 4
  %65 = icmp eq i32 %6, 0
  %66 = select i1 %65, i32 9, i32 10
  %67 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %25, i32 0, i32 13
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr %9, align 4
  %69 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 60, i32 noundef %68, ptr noundef %0, i64 noundef 1, ptr noundef %69, ptr noundef %17, ptr noundef null) #13
  br label %70

70:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_lru_shrink_active(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !10

14:                                               ; preds = %8
  %15 = and i32 %11, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %18, label %32, label %19

19:                                               ; preds = %17, %14, %8
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 36) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %20, i32 0, i32 1
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %20, i32 0, i32 2
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %20, i32 0, i32 3
  store i32 %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %20, i32 0, i32 4
  store i32 %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %20, i32 0, i32 5
  store i32 %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %20, i32 0, i32 6
  store i32 %6, ptr %28, align 4
  %29 = icmp eq i32 %7, 0
  %30 = select i1 %29, i32 9, i32 10
  %31 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %20, i32 0, i32 7
  store i32 %30, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #13
  br label %32

32:                                               ; preds = %22, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_lru_shrink_active(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #7, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %50, label %25

25:                                               ; preds = %22, %8
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #13
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  store i32 %31, ptr %32, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !0) #13
  %37 = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  store i32 19, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %26, i32 0, i32 1
  store i32 %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %26, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %26, i32 0, i32 3
  store i32 %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %26, i32 0, i32 4
  store i32 %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %26, i32 0, i32 5
  store i32 %5, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %26, i32 0, i32 6
  store i32 %6, ptr %44, align 4
  %45 = icmp eq i32 %7, 0
  %46 = select i1 %45, i32 9, i32 10
  %47 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %26, i32 0, i32 7
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %10, align 4
  %49 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 36, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %18, ptr noundef null) #13
  br label %50

50:                                               ; preds = %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_node_reclaim_begin(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_node_reclaim_begin, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_node_reclaim_begin, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_node_reclaim_begin, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_node_reclaim_begin(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #13
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #13
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_node_reclaim_begin, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_node_reclaim_begin, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_node_reclaim_begin, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #13
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_vmscan_throttled(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %15, label %25, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = shl nuw i32 1, %4
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %17, i32 0, i32 4
  store i32 %23, ptr %24, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #13
  br label %25

25:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_vmscan_throttled(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #7, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #13
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #13
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = shl nuw i32 1, %4
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %23, i32 0, i32 4
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %15, ptr noundef null) #13
  br label %43

43:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zone_reclaimable_pages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %6 = icmp ult i32 %5, %4
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %5, %7 ], [ %22, %11 ]
  %13 = phi i32 [ %3, %7 ], [ %21, %11 ]
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %10
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr [10 x i8], ptr %17, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = add i32 %13, %20
  %22 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_online_mask) #14
  %23 = icmp ult i32 %22, %4
  br i1 %23, label %11, label %24

24:                                               ; preds = %11, %1
  %25 = phi i32 [ %3, %1 ], [ %21, %11 ]
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #13
  %27 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 4
  %28 = load volatile i32, ptr %27, align 4
  %29 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %30 = icmp ult i32 %29, %4
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi i32 [ %29, %31 ], [ %46, %35 ]
  %37 = phi i32 [ %28, %31 ], [ %45, %35 ]
  %38 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %34
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr [10 x i8], ptr %41, i32 0, i32 4
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add i32 %37, %44
  %46 = tail call i32 @cpumask_next(i32 noundef %36, ptr noundef nonnull @__cpu_online_mask) #14
  %47 = icmp ult i32 %46, %4
  br i1 %47, label %35, label %48

48:                                               ; preds = %35, %24
  %49 = phi i32 [ %28, %24 ], [ %45, %35 ]
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0) #13
  %51 = add nuw i32 %50, %26
  %52 = load volatile i32, ptr @nr_swap_pages, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load i8, ptr @numa_demotion_enabled, align 1, !range !13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %114, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @next_demotion_node(i32 noundef 0) #13
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %114, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr @nr_cpu_ids, align 4
  br label %62

62:                                               ; preds = %60, %48
  %63 = phi i32 [ %61, %60 ], [ %4, %48 ]
  %64 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %67 = icmp ult i32 %66, %63
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = ptrtoint ptr %70 to i32
  br label %72

72:                                               ; preds = %72, %68
  %73 = phi i32 [ %66, %68 ], [ %83, %72 ]
  %74 = phi i32 [ %65, %68 ], [ %82, %72 ]
  %75 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %71
  %78 = inttoptr i32 %77 to ptr
  %79 = getelementptr [10 x i8], ptr %78, i32 0, i32 1
  %80 = load i8, ptr %79, align 1
  %81 = sext i8 %80 to i32
  %82 = add i32 %74, %81
  %83 = tail call i32 @cpumask_next(i32 noundef %73, ptr noundef nonnull @__cpu_online_mask) #14
  %84 = icmp ult i32 %83, %63
  br i1 %84, label %72, label %85

85:                                               ; preds = %72, %62
  %86 = phi i32 [ %65, %62 ], [ %82, %72 ]
  %87 = tail call i32 @llvm.smax.i32(i32 %86, i32 0) #13
  %88 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 2
  %89 = load volatile i32, ptr %88, align 4
  %90 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %91 = icmp ult i32 %90, %63
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %94 = load ptr, ptr %93, align 4
  %95 = ptrtoint ptr %94 to i32
  br label %96

96:                                               ; preds = %96, %92
  %97 = phi i32 [ %90, %92 ], [ %107, %96 ]
  %98 = phi i32 [ %89, %92 ], [ %106, %96 ]
  %99 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %97
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %95
  %102 = inttoptr i32 %101 to ptr
  %103 = getelementptr [10 x i8], ptr %102, i32 0, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = sext i8 %104 to i32
  %106 = add i32 %98, %105
  %107 = tail call i32 @cpumask_next(i32 noundef %97, ptr noundef nonnull @__cpu_online_mask) #14
  %108 = icmp ult i32 %107, %63
  br i1 %108, label %96, label %109

109:                                              ; preds = %96, %85
  %110 = phi i32 [ %89, %85 ], [ %106, %96 ]
  %111 = tail call i32 @llvm.smax.i32(i32 %110, i32 0) #13
  %112 = add i32 %87, %51
  %113 = add i32 %112, %111
  br label %114

114:                                              ; preds = %109, %57, %54
  %115 = phi i32 [ %113, %109 ], [ %51, %57 ], [ %51, %54 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prealloc_shrinker(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -5
  store i32 %7, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 4) #15
  %11 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 6
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  %13 = select i1 %12, i32 -12, i32 0
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_prealloced_shrinker(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @down_write(ptr noundef nonnull @shrinker_rwsem) #13
  tail call void @up_write(ptr noundef nonnull @shrinker_rwsem) #13
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #13
  store ptr null, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_shrinker_prepared(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @down_write(ptr noundef nonnull @shrinker_rwsem) #13
  %2 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %2, align 4
  %4 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 5, i32 1
  store ptr %3, ptr %4, align 4
  store volatile ptr %2, ptr %3, align 4
  %5 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 1
  store i32 %7, ptr %5, align 4
  tail call void @up_write(ptr noundef nonnull @shrinker_rwsem) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_shrinker(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -5
  store i32 %7, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 4) #15
  %11 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 6
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  tail call void @down_write(ptr noundef nonnull @shrinker_rwsem) #13
  %14 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %14, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %14, align 4
  %16 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 5, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %14, ptr %15, align 4
  %17 = load i32, ptr %2, align 4
  %18 = or i32 %17, 1
  store i32 %18, ptr %2, align 4
  tail call void @up_write(ptr noundef nonnull @shrinker_rwsem) #13
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi i32 [ 0, %13 ], [ -12, %8 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_shrinker(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  tail call void @down_write(ptr noundef nonnull @shrinker_rwsem) #13
  %7 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 5, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %12, -2
  store i32 %13, ptr %2, align 4
  tail call void @up_write(ptr noundef nonnull @shrinker_rwsem) #13
  %14 = getelementptr inbounds %struct.shrinker, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #13
  store ptr null, ptr %14, align 4
  br label %16

16:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @synchronize_shrinkers() #0 {
  tail call void @down_write(ptr noundef nonnull @shrinker_rwsem) #13
  tail call void @up_write(ptr noundef nonnull @shrinker_rwsem) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drop_slab() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #13
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 98, i32 1
  br label %3

3:                                                ; preds = %12, %0
  %4 = phi i32 [ 0, %0 ], [ %14, %12 ]
  %5 = load volatile i32, ptr %1, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %3
  %13 = tail call fastcc i32 @shrink_slab(i32 noundef 3264, i32 noundef 0, i32 noundef 0) #13
  %14 = add i32 %4, 1
  %15 = lshr i32 %13, %4
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %3, label %17

17:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reclaim_throttle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 10, i32 %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #13
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #13
  store i32 0, ptr %3, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 131072
  %13 = icmp ne i32 %12, 0
  %14 = and i32 %11, 2097168
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %13, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @__cond_resched() #13
  br label %219

19:                                               ; preds = %2
  switch i32 %1, label %179 [
    i32 0, label %20
    i32 3, label %29
    i32 2, label %29
    i32 1, label %182
  ]

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 11
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #13, !srcloc !15
  %22 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #13, !srcloc !16
  %23 = extractvalue { i32, i32 } %22, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %182

25:                                               ; preds = %20
  %26 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 33), align 4
  %27 = call i32 @llvm.smax.i32(i32 %26, i32 0) #13
  %28 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 12
  store volatile i32 %27, ptr %28, align 4
  br label %182

29:                                               ; preds = %19, %19
  %30 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 16
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 15
  br i1 %32, label %177, label %33

33:                                               ; preds = %29
  %34 = getelementptr %struct.zone, ptr %0, i32 0, i32 13
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %33
  %38 = call i32 @zone_reclaimable_pages(ptr noundef %0) #13
  %39 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 6
  %40 = load volatile i32, ptr %39, align 4
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %43 = icmp ult i32 %42, %41
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = getelementptr %struct.zone, ptr %0, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %48

48:                                               ; preds = %48, %44
  %49 = phi i32 [ %42, %44 ], [ %59, %48 ]
  %50 = phi i32 [ %40, %44 ], [ %58, %48 ]
  %51 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %47
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr [10 x i8], ptr %54, i32 0, i32 6
  %56 = load i8, ptr %55, align 1
  %57 = sext i8 %56 to i32
  %58 = add i32 %50, %57
  %59 = call i32 @cpumask_next(i32 noundef %49, ptr noundef nonnull @__cpu_online_mask) #14
  %60 = icmp ult i32 %59, %41
  br i1 %60, label %48, label %61

61:                                               ; preds = %48, %37
  %62 = phi i32 [ %40, %37 ], [ %58, %48 ]
  %63 = call i32 @llvm.smax.i32(i32 %62, i32 0) #13
  br label %64

64:                                               ; preds = %61, %33
  %65 = phi i32 [ %38, %61 ], [ 0, %33 ]
  %66 = phi i32 [ %63, %61 ], [ 0, %33 ]
  %67 = getelementptr %struct.zone, ptr %0, i32 1, i32 13
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %64
  %71 = getelementptr %struct.zone, ptr %0, i32 1
  %72 = call i32 @zone_reclaimable_pages(ptr noundef %71) #13
  %73 = add i32 %72, %65
  %74 = getelementptr %struct.zone, ptr %0, i32 1, i32 37, i32 6
  %75 = load volatile i32, ptr %74, align 4
  %76 = load i32, ptr @nr_cpu_ids, align 4
  %77 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %78 = icmp ult i32 %77, %76
  br i1 %78, label %79, label %96

79:                                               ; preds = %70
  %80 = getelementptr %struct.zone, ptr %0, i32 1, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = ptrtoint ptr %81 to i32
  br label %83

83:                                               ; preds = %83, %79
  %84 = phi i32 [ %77, %79 ], [ %94, %83 ]
  %85 = phi i32 [ %75, %79 ], [ %93, %83 ]
  %86 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, %82
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr [10 x i8], ptr %89, i32 0, i32 6
  %91 = load i8, ptr %90, align 1
  %92 = sext i8 %91 to i32
  %93 = add i32 %85, %92
  %94 = call i32 @cpumask_next(i32 noundef %84, ptr noundef nonnull @__cpu_online_mask) #14
  %95 = icmp ult i32 %94, %76
  br i1 %95, label %83, label %96

96:                                               ; preds = %83, %70
  %97 = phi i32 [ %75, %70 ], [ %93, %83 ]
  %98 = call i32 @llvm.smax.i32(i32 %97, i32 0) #13
  %99 = add nuw i32 %98, %66
  br label %100

100:                                              ; preds = %96, %64
  %101 = phi i32 [ %73, %96 ], [ %65, %64 ]
  %102 = phi i32 [ %99, %96 ], [ %66, %64 ]
  %103 = getelementptr %struct.zone, ptr %0, i32 2, i32 13
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %136, label %106

106:                                              ; preds = %100
  %107 = getelementptr %struct.zone, ptr %0, i32 2
  %108 = call i32 @zone_reclaimable_pages(ptr noundef %107) #13
  %109 = add i32 %108, %101
  %110 = getelementptr %struct.zone, ptr %0, i32 2, i32 37, i32 6
  %111 = load volatile i32, ptr %110, align 4
  %112 = load i32, ptr @nr_cpu_ids, align 4
  %113 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %114 = icmp ult i32 %113, %112
  br i1 %114, label %115, label %132

115:                                              ; preds = %106
  %116 = getelementptr %struct.zone, ptr %0, i32 2, i32 6
  %117 = load ptr, ptr %116, align 4
  %118 = ptrtoint ptr %117 to i32
  br label %119

119:                                              ; preds = %119, %115
  %120 = phi i32 [ %113, %115 ], [ %130, %119 ]
  %121 = phi i32 [ %111, %115 ], [ %129, %119 ]
  %122 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %120
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, %118
  %125 = inttoptr i32 %124 to ptr
  %126 = getelementptr [10 x i8], ptr %125, i32 0, i32 6
  %127 = load i8, ptr %126, align 1
  %128 = sext i8 %127 to i32
  %129 = add i32 %121, %128
  %130 = call i32 @cpumask_next(i32 noundef %120, ptr noundef nonnull @__cpu_online_mask) #14
  %131 = icmp ult i32 %130, %112
  br i1 %131, label %119, label %132

132:                                              ; preds = %119, %106
  %133 = phi i32 [ %111, %106 ], [ %129, %119 ]
  %134 = call i32 @llvm.smax.i32(i32 %133, i32 0) #13
  %135 = add i32 %134, %102
  br label %136

136:                                              ; preds = %132, %100
  %137 = phi i32 [ %109, %132 ], [ %101, %100 ]
  %138 = phi i32 [ %135, %132 ], [ %102, %100 ]
  %139 = getelementptr %struct.zone, ptr %0, i32 3, i32 13
  %140 = load i32, ptr %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %172, label %142

142:                                              ; preds = %136
  %143 = getelementptr %struct.zone, ptr %0, i32 3
  %144 = call i32 @zone_reclaimable_pages(ptr noundef %143) #13
  %145 = add i32 %144, %137
  %146 = getelementptr %struct.zone, ptr %0, i32 3, i32 37, i32 6
  %147 = load volatile i32, ptr %146, align 4
  %148 = load i32, ptr @nr_cpu_ids, align 4
  %149 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %150 = icmp ult i32 %149, %148
  br i1 %150, label %151, label %168

151:                                              ; preds = %142
  %152 = getelementptr %struct.zone, ptr %0, i32 3, i32 6
  %153 = load ptr, ptr %152, align 4
  %154 = ptrtoint ptr %153 to i32
  br label %155

155:                                              ; preds = %155, %151
  %156 = phi i32 [ %149, %151 ], [ %166, %155 ]
  %157 = phi i32 [ %147, %151 ], [ %165, %155 ]
  %158 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %156
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, %154
  %161 = inttoptr i32 %160 to ptr
  %162 = getelementptr [10 x i8], ptr %161, i32 0, i32 6
  %163 = load i8, ptr %162, align 1
  %164 = sext i8 %163 to i32
  %165 = add i32 %157, %164
  %166 = call i32 @cpumask_next(i32 noundef %156, ptr noundef nonnull @__cpu_online_mask) #14
  %167 = icmp ult i32 %166, %148
  br i1 %167, label %155, label %168

168:                                              ; preds = %155, %142
  %169 = phi i32 [ %147, %142 ], [ %165, %155 ]
  %170 = call i32 @llvm.smax.i32(i32 %169, i32 0) #13
  %171 = add i32 %170, %138
  br label %172

172:                                              ; preds = %168, %136
  %173 = phi i32 [ %145, %168 ], [ %137, %136 ]
  %174 = phi i32 [ %171, %168 ], [ %138, %136 ]
  %175 = shl i32 %174, 1
  %176 = icmp sgt i32 %175, %173
  br i1 %176, label %182, label %177

177:                                              ; preds = %172, %29
  %178 = call i32 @__cond_resched() #13
  br label %219

179:                                              ; preds = %19
  %180 = load i1, ptr @reclaim_throttle.__already_done, align 1
  br i1 %180, label %182, label %181, !prof !10

181:                                              ; preds = %179
  store i1 true, ptr @reclaim_throttle.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1109, i32 noundef 9, ptr noundef null) #13
  br label %182

182:                                              ; preds = %181, %179, %172, %25, %20, %19
  %183 = phi i32 [ 10, %25 ], [ 10, %20 ], [ 1, %172 ], [ 2, %19 ], [ 100, %181 ], [ 100, %179 ]
  call void @prepare_to_wait(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 2) #13
  %184 = call i32 @schedule_timeout(i32 noundef %183) #13
  call void @finish_wait(ptr noundef %4, ptr noundef nonnull %3) #13
  %185 = icmp eq i32 %1, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %187) #13, !srcloc !15
  %188 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %187, ptr %187, i32 1, ptr elementtype(i32) %187) #13, !srcloc !18
  br label %189

189:                                              ; preds = %186, %182
  %190 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 7
  %191 = load i32, ptr %190, align 4
  %192 = call i32 @jiffies_to_usecs(i32 noundef %183) #13
  %193 = sub i32 %183, %184
  %194 = call i32 @jiffies_to_usecs(i32 noundef %193) #13
  %195 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_throttled, i32 0, i32 1), align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %199 = load i32, ptr %198, align 8
  %200 = lshr i32 %199, 5
  %201 = getelementptr i32, ptr @__cpu_online_mask, i32 %200
  %202 = load volatile i32, ptr %201, align 4
  %203 = and i32 %199, 31
  %204 = shl nuw i32 1, %203
  %205 = and i32 %204, %202
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %197
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  %208 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_throttled, i32 0, i32 7), align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %218, label %210

210:                                              ; preds = %210, %207
  %211 = phi ptr [ %215, %210 ], [ %208, %207 ]
  %212 = load volatile ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.tracepoint_func, ptr %211, i32 0, i32 1
  %214 = load ptr, ptr %213, align 4
  call void %212(ptr noundef %214, i32 noundef %191, i32 noundef %192, i32 noundef %194, i32 noundef %1) #13
  %215 = getelementptr %struct.tracepoint_func, ptr %211, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %210

218:                                              ; preds = %210, %207
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %219

219:                                              ; preds = %218, %197, %189, %177, %17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__acct_reclaim_writeback(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load volatile i32, ptr %1, align 4
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.page, ptr %1, i32 1, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ 1, %3 ]
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 33, i32 noundef %11) #13
  %12 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 33), align 4
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0) #13
  %14 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 12
  %15 = load volatile i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = shl i32 %2, 5
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %20, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %21

21:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remove_mapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @__remove_mapping(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef null)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  store volatile i32 1, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 1, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__remove_mapping(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !10

9:                                                ; preds = %4
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %1 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmscan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1248, 0\0A.popsection", ""() #13, !srcloc !22
  unreachable

20:                                               ; preds = %13
  %21 = tail call ptr @page_mapping(ptr noundef %1) #13
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %24, label %23, !prof !10

23:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmscan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1249, 0\0A.popsection", ""() #13, !srcloc !23
  unreachable

24:                                               ; preds = %20
  %25 = load volatile i32, ptr %5, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !10

28:                                               ; preds = %24
  %29 = add i32 %25, -1
  br label %32

30:                                               ; preds = %24
  %31 = ptrtoint ptr %1 to i32
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = inttoptr i32 %33 to ptr
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 524288
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load volatile i32, ptr %34, align 4
  %40 = and i32 %39, 1024
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %32
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %44) #13
  br label %45

45:                                               ; preds = %42, %38
  %46 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %46) #13
  %47 = load volatile i32, ptr %1, align 4
  %48 = and i32 %47, 65536
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = getelementptr %struct.page, ptr %1, i32 1, i32 1, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i32 [ %52, %50 ], [ 1, %45 ]
  %55 = add i32 %54, 1
  %56 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #13, !srcloc !15
  br label %57

57:                                               ; preds = %57, %53
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 %55, i32 0, ptr elementtype(i32) %56) #13, !srcloc !25
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %57

61:                                               ; preds = %57
  %62 = extractvalue { i32, i32 } %58, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %63 = icmp eq i32 %62, %55
  br i1 %63, label %64, label %159

64:                                               ; preds = %61
  %65 = load volatile i32, ptr %5, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !10

68:                                               ; preds = %64
  %69 = add i32 %65, -1
  br label %72

70:                                               ; preds = %64
  %71 = ptrtoint ptr %1 to i32
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = inttoptr i32 %73 to ptr
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78, !prof !10

78:                                               ; preds = %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  store volatile i32 %55, ptr %56, align 4
  br label %159

79:                                               ; preds = %72
  %80 = load volatile i32, ptr %5, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !10

83:                                               ; preds = %79
  %84 = add i32 %80, -1
  br label %87

85:                                               ; preds = %79
  %86 = ptrtoint ptr %1 to i32
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = inttoptr i32 %88 to ptr
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 524288
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %87
  %94 = load volatile i32, ptr %89, align 4
  %95 = and i32 %94, 1024
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = insertvalue [1 x i32] poison, i32 %99, 0
  br i1 %2, label %101, label %108

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = tail call ptr @workingset_eviction(ptr noundef %1, ptr noundef %3) #13
  br label %108

108:                                              ; preds = %106, %101, %97
  %109 = phi ptr [ null, %101 ], [ %107, %106 ], [ null, %97 ]
  tail call void @__delete_from_swap_cache(ptr noundef %1, [1 x i32] %100, ptr noundef %109) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %110 = load i16, ptr %46, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  tail call void @put_swap_page(ptr noundef %1, [1 x i32] %100) #13
  br label %184

112:                                              ; preds = %93, %87
  %113 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.address_space_operations, ptr %114, i32 0, i32 11
  %116 = load ptr, ptr %115, align 4
  br i1 %2, label %117, label %138

117:                                              ; preds = %112
  %118 = load volatile i32, ptr %5, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121, !prof !10

121:                                              ; preds = %117
  %122 = add i32 %118, -1
  br label %125

123:                                              ; preds = %117
  %124 = ptrtoint ptr %1 to i32
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = inttoptr i32 %126 to ptr
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %128, 524288
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %133, 16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = tail call ptr @workingset_eviction(ptr noundef %1, ptr noundef %3) #13
  br label %138

138:                                              ; preds = %136, %131, %125, %112
  %139 = phi ptr [ null, %131 ], [ %137, %136 ], [ null, %125 ], [ null, %112 ]
  %140 = load volatile i32, ptr %5, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143, !prof !10

143:                                              ; preds = %138
  %144 = add i32 %140, -1
  br label %147

145:                                              ; preds = %138
  %146 = ptrtoint ptr %1 to i32
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = inttoptr i32 %148 to ptr
  tail call void @__filemap_remove_folio(ptr noundef %149, ptr noundef %139) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %150 = load i16, ptr %46, align 4
  %151 = add i16 %150, 1
  store i16 %151, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %152 = load ptr, ptr %0, align 4
  tail call void @inode_add_lru(ptr noundef %152) #13
  %153 = load ptr, ptr %0, align 4
  %154 = getelementptr inbounds %struct.inode, ptr %153, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %155 = load i16, ptr %154, align 4
  %156 = add i16 %155, 1
  store i16 %156, ptr %154, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %157 = icmp eq ptr %116, null
  br i1 %157, label %184, label %158

158:                                              ; preds = %147
  tail call void %116(ptr noundef %1) #13
  br label %184

159:                                              ; preds = %78, %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %160 = load i16, ptr %46, align 4
  %161 = add i16 %160, 1
  store i16 %161, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %162 = load volatile i32, ptr %5, align 4
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165, !prof !10

165:                                              ; preds = %159
  %166 = add i32 %162, -1
  br label %169

167:                                              ; preds = %159
  %168 = ptrtoint ptr %1 to i32
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  %171 = inttoptr i32 %170 to ptr
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %172, 524288
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = load volatile i32, ptr %171, align 4
  %177 = and i32 %176, 1024
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175, %169
  %180 = load ptr, ptr %0, align 4
  %181 = getelementptr inbounds %struct.inode, ptr %180, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %182 = load i16, ptr %181, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %181, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %184

184:                                              ; preds = %179, %175, %158, %147, %108
  %185 = phi i32 [ 1, %147 ], [ 1, %158 ], [ 1, %108 ], [ 0, %179 ], [ 0, %175 ]
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @putback_lru_page(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @lru_cache_add(ptr noundef %0) #13
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !34
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !35
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #13
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reclaim_clean_pages_from_list(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.scan_control, align 4
  %4 = alloca %struct.reclaim_stat, align 4
  %5 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false)
  %6 = getelementptr inbounds { i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, i32, %struct.anon.99, %struct.reclaim_state }, ptr %3, i32 0, i32 5
  store i8 32, ptr %6, align 4
  %7 = getelementptr inbounds { i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, i32, %struct.anon.99, %struct.reclaim_state }, ptr %3, i32 0, i32 11
  store i32 3264, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %5, ptr %5, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %8, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %81, label %11

11:                                               ; preds = %79, %2
  %12 = phi ptr [ %14, %79 ], [ %9, %2 ]
  %13 = getelementptr i8, ptr %12, i32 -4
  %14 = load ptr, ptr %12, align 4
  %15 = load volatile i32, ptr %12, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !10

18:                                               ; preds = %11
  %19 = add i32 %15, -1
  br label %22

20:                                               ; preds = %11
  %21 = ptrtoint ptr %13 to i32
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = inttoptr i32 %23 to ptr
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 524288
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %22
  %29 = load volatile i32, ptr %12, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %28
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %28
  %35 = ptrtoint ptr %13 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %12, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = and i32 %45, 3
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %79, label %48

48:                                               ; preds = %42
  %49 = load volatile i32, ptr %12, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !10

52:                                               ; preds = %48
  %53 = add i32 %49, -1
  br label %56

54:                                               ; preds = %48
  %55 = ptrtoint ptr %13 to i32
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = inttoptr i32 %57 to ptr
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1048576
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load volatile i32, ptr %12, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66, !prof !10

66:                                               ; preds = %62
  %67 = add i32 %63, -1
  br label %70

68:                                               ; preds = %62
  %69 = ptrtoint ptr %13 to i32
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = inttoptr i32 %71 to ptr
  call void @_clear_bit(i32 noundef 5, ptr noundef %72) #13
  %73 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %12, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %75, ptr %74, align 4
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %12, ptr %78, align 4
  store ptr %77, ptr %12, align 4
  store ptr %5, ptr %73, align 4
  store volatile ptr %12, ptr %5, align 8
  br label %79

79:                                               ; preds = %70, %56, %42, %36, %22
  %80 = icmp eq ptr %14, %1
  br i1 %80, label %81, label %11

81:                                               ; preds = %79, %2
  %82 = tail call ptr @llvm.thread.pointer() #13
  %83 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 2048
  %86 = or i32 %84, 2048
  store i32 %86, ptr %83, align 4
  %87 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = call fastcc i32 @shrink_page_list(ptr noundef nonnull %5, ptr noundef %88, ptr noundef nonnull %3, ptr noundef nonnull %4, i1 noundef zeroext true)
  %90 = load i32, ptr %83, align 4
  %91 = and i32 %90, -2049
  %92 = or i32 %91, %85
  store i32 %92, ptr %83, align 4
  %93 = load volatile ptr, ptr %5, align 8
  %94 = icmp eq ptr %93, %5
  br i1 %94, label %100, label %95

95:                                               ; preds = %81
  %96 = load ptr, ptr %1, align 4
  %97 = load ptr, ptr %8, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %1, ptr %98, align 4
  store ptr %93, ptr %1, align 4
  store ptr %96, ptr %97, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %97, ptr %99, align 4
  br label %100

100:                                              ; preds = %95, %81
  %101 = load ptr, ptr %87, align 4
  %102 = sub i32 0, %89
  call void @mod_node_page_state(ptr noundef %101, i32 noundef 8, i32 noundef %102) #13
  %103 = load ptr, ptr %87, align 4
  %104 = getelementptr inbounds %struct.reclaim_stat, ptr %4, i32 0, i32 9
  %105 = load i32, ptr %104, align 4
  call void @mod_node_page_state(ptr noundef %103, i32 noundef 7, i32 noundef %105) #13
  %106 = load ptr, ptr %87, align 4
  %107 = sub i32 0, %105
  call void @mod_node_page_state(ptr noundef %106, i32 noundef 8, i32 noundef %107) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #13
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @shrink_page_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.writeback_control, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head, align 8
  %10 = alloca %struct.list_head, align 8
  %11 = alloca %struct.list_head, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store ptr %9, ptr %9, align 8
  %14 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  store ptr %10, ptr %10, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %10, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  store ptr %11, ptr %11, align 8
  %16 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %11, ptr %16, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false)
  %17 = call i32 @__cond_resched() #13
  %18 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = load i8, ptr @numa_demotion_enabled, align 1, !range !13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %5
  %23 = icmp eq ptr %2, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.scan_control, ptr %2, i32 0, i32 5
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 8192
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %22
  %30 = call i32 @next_demotion_node(i32 noundef %19) #13
  %31 = icmp ne i32 %30, -1
  br label %32

32:                                               ; preds = %29, %24, %5
  %33 = phi i1 [ false, %5 ], [ false, %24 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %35 = getelementptr inbounds %struct.scan_control, ptr %2, i32 0, i32 10
  %36 = getelementptr inbounds %struct.scan_control, ptr %2, i32 0, i32 5
  %37 = getelementptr inbounds %struct.scan_control, ptr %2, i32 0, i32 9
  %38 = getelementptr inbounds %struct.reclaim_stat, ptr %3, i32 0, i32 1
  %39 = getelementptr inbounds %struct.reclaim_stat, ptr %3, i32 0, i32 2
  %40 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 25
  %41 = getelementptr inbounds %struct.reclaim_stat, ptr %3, i32 0, i32 4
  %42 = getelementptr inbounds %struct.reclaim_stat, ptr %3, i32 0, i32 3
  %43 = getelementptr inbounds %struct.scan_control, ptr %2, i32 0, i32 2
  %44 = getelementptr inbounds %struct.reclaim_stat, ptr %3, i32 0, i32 7
  %45 = getelementptr inbounds %struct.reclaim_stat, ptr %3, i32 0, i32 5
  %46 = getelementptr inbounds %struct.reclaim_stat, ptr %3, i32 0, i32 8
  %47 = getelementptr inbounds %struct.reclaim_stat, ptr %3, i32 0, i32 9
  br label %48

48:                                               ; preds = %1126, %32
  %49 = phi i1 [ %33, %32 ], [ false, %1126 ]
  %50 = phi i32 [ 0, %32 ], [ %1120, %1126 ]
  %51 = load volatile ptr, ptr %0, align 4
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %1093, label %53

53:                                               ; preds = %1089, %48
  %54 = phi i32 [ %1090, %1089 ], [ %50, %48 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #13
  store i8 0, ptr %12, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #13
  store i8 0, ptr %13, align 1, !annotation !9
  %55 = call i32 @__cond_resched() #13
  %56 = load ptr, ptr %34, align 4
  %57 = getelementptr i8, ptr %56, i32 -4
  %58 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %56, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  %62 = load volatile i32, ptr %56, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65, !prof !10

65:                                               ; preds = %53
  %66 = add i32 %62, -1
  br label %69

67:                                               ; preds = %53
  %68 = ptrtoint ptr %57 to i32
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = inttoptr i32 %70 to ptr
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %1086

75:                                               ; preds = %69
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #13, !srcloc !15
  %76 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #13, !srcloc !36
  %77 = extractvalue { i32, i32, i32 } %76, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %1086

80:                                               ; preds = %75
  %81 = load volatile i32, ptr %57, align 4
  %82 = and i32 %81, 65536
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %56, i32 44
  %86 = load i32, ptr %85, align 4
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i32 [ %86, %84 ], [ 1, %80 ]
  %89 = load i32, ptr %35, align 4
  %90 = add i32 %89, %88
  store i32 %90, ptr %35, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  %91 = call ptr @page_mapping(ptr noundef %57) #13
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.address_space, ptr %91, i32 0, i32 10
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98, !prof !39

98:                                               ; preds = %93
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br label %1000

99:                                               ; preds = %93, %87
  %100 = load volatile i32, ptr %56, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103, !prof !10

103:                                              ; preds = %99
  %104 = add i32 %100, -1
  br label %107

105:                                              ; preds = %99
  %106 = ptrtoint ptr %57 to i32
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = inttoptr i32 %108 to ptr
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 2097152
  %112 = icmp eq i32 %111, 0
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br i1 %112, label %113, label %1000, !prof !10

113:                                              ; preds = %107
  %114 = load i16, ptr %36, align 4
  %115 = and i16 %114, 32
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call zeroext i1 @page_mapped(ptr noundef %57) #13
  br i1 %118, label %1085, label %119

119:                                              ; preds = %117, %113
  %120 = load i32, ptr %37, align 4
  %121 = and i32 %120, 128
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %119
  %124 = load volatile i32, ptr %56, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127, !prof !10

127:                                              ; preds = %123
  %128 = add i32 %124, -1
  br label %131

129:                                              ; preds = %123
  %130 = ptrtoint ptr %57 to i32
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = inttoptr i32 %132 to ptr
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %134, 524288
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %131
  %138 = load volatile i32, ptr %133, align 4
  %139 = and i32 %138, 1024
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = and i32 %120, 64
  %143 = icmp ne i32 %142, 0
  br label %144

144:                                              ; preds = %141, %137, %131, %119
  %145 = phi i1 [ true, %119 ], [ false, %137 ], [ %143, %141 ], [ false, %131 ]
  %146 = load volatile i32, ptr %56, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149, !prof !10

149:                                              ; preds = %144
  %150 = add i32 %146, -1
  br label %153

151:                                              ; preds = %144
  %152 = ptrtoint ptr %57 to i32
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = inttoptr i32 %154 to ptr
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %156, 524288
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %189

159:                                              ; preds = %153
  %160 = load volatile i32, ptr %56, align 4
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163, !prof !10

163:                                              ; preds = %159
  %164 = add i32 %160, -1
  br label %167

165:                                              ; preds = %159
  %166 = ptrtoint ptr %57 to i32
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = inttoptr i32 %168 to ptr
  %170 = getelementptr inbounds %struct.anon.74, ptr %169, i32 0, i32 2
  %171 = load ptr, ptr %170, align 4
  %172 = ptrtoint ptr %171 to i32
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %190, label %175

175:                                              ; preds = %167
  %176 = load volatile i32, ptr %56, align 4
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179, !prof !10

179:                                              ; preds = %175
  %180 = add i32 %176, -1
  br label %183

181:                                              ; preds = %175
  %182 = ptrtoint ptr %57 to i32
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  %185 = inttoptr i32 %184 to ptr
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %186, 524288
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183, %153
  store i8 0, ptr %12, align 1
  store i8 0, ptr %13, align 1
  br label %232

190:                                              ; preds = %183, %167
  %191 = load volatile i32, ptr %56, align 4
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194, !prof !10

194:                                              ; preds = %190
  %195 = add i32 %191, -1
  br label %198

196:                                              ; preds = %190
  %197 = ptrtoint ptr %57 to i32
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  %200 = inttoptr i32 %199 to ptr
  %201 = load volatile i32, ptr %200, align 4
  %202 = trunc i32 %201 to i8
  %203 = lshr i8 %202, 3
  %204 = and i8 %203, 1
  store i8 %204, ptr %12, align 1
  %205 = load volatile i32, ptr %56, align 4
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208, !prof !10

208:                                              ; preds = %198
  %209 = add i32 %205, -1
  br label %212

210:                                              ; preds = %198
  %211 = ptrtoint ptr %57 to i32
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %209, %208 ], [ %211, %210 ]
  %214 = inttoptr i32 %213 to ptr
  %215 = load volatile i32, ptr %214, align 4
  %216 = lshr i32 %215, 15
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, ptr %13, align 1
  %219 = load i32, ptr %57, align 4
  %220 = and i32 %219, 24576
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %232, label %222

222:                                              ; preds = %212
  %223 = call ptr @page_mapping(ptr noundef %57) #13
  %224 = icmp eq ptr %223, null
  br i1 %224, label %232, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.address_space, ptr %223, i32 0, i32 9
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.address_space_operations, ptr %227, i32 0, i32 18
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %225
  call void %229(ptr noundef %57, ptr noundef nonnull %12, ptr noundef nonnull %13) #13
  br label %232

232:                                              ; preds = %231, %225, %222, %212, %189
  %233 = load i8, ptr %12, align 1, !range !13
  %234 = icmp eq i8 %233, 0
  %235 = load i8, ptr %13, align 1
  %236 = icmp eq i8 %235, 0
  %237 = select i1 %234, i1 %236, i1 false
  br i1 %237, label %246, label %238

238:                                              ; preds = %232
  %239 = load i32, ptr %3, align 4
  %240 = add i32 %239, 1
  store i32 %240, ptr %3, align 4
  %241 = icmp ne i8 %233, 0
  %242 = select i1 %241, i1 %236, i1 false
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load i32, ptr %38, align 4
  %245 = add i32 %244, 1
  store i32 %245, ptr %38, align 4
  br label %246

246:                                              ; preds = %243, %238, %232
  %247 = call ptr @page_mapping(ptr noundef %57) #13
  %248 = load i8, ptr %12, align 1, !range !13
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = load i8, ptr %13, align 1, !range !13
  %252 = icmp ne i8 %251, 0
  %253 = icmp ne ptr %247, null
  %254 = select i1 %252, i1 %253, i1 false
  br i1 %254, label %257, label %266

255:                                              ; preds = %246
  %256 = icmp eq ptr %247, null
  br i1 %256, label %264, label %257

257:                                              ; preds = %255, %250
  %258 = load ptr, ptr %247, align 4
  %259 = call ptr @inode_to_bdi(ptr noundef %258) #13
  %260 = getelementptr inbounds %struct.backing_dev_info, ptr %259, i32 0, i32 11, i32 10
  %261 = load i32, ptr %260, align 8
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %283

264:                                              ; preds = %257, %255
  %265 = load i8, ptr %13, align 1
  br label %266

266:                                              ; preds = %264, %250
  %267 = phi i8 [ %265, %264 ], [ %251, %250 ]
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %286, label %269

269:                                              ; preds = %266
  %270 = load volatile i32, ptr %56, align 4
  %271 = and i32 %270, 1
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %275, label %273, !prof !10

273:                                              ; preds = %269
  %274 = add i32 %270, -1
  br label %277

275:                                              ; preds = %269
  %276 = ptrtoint ptr %57 to i32
  br label %277

277:                                              ; preds = %275, %273
  %278 = phi i32 [ %274, %273 ], [ %276, %275 ]
  %279 = inttoptr i32 %278 to ptr
  %280 = load volatile i32, ptr %279, align 4
  %281 = and i32 %280, 262144
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %277, %257
  %284 = load i32, ptr %39, align 4
  %285 = add i32 %284, 1
  store i32 %285, ptr %39, align 4
  br label %286

286:                                              ; preds = %283, %277, %266
  %287 = load volatile i32, ptr %56, align 4
  %288 = and i32 %287, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290, !prof !10

290:                                              ; preds = %286
  %291 = add i32 %287, -1
  br label %294

292:                                              ; preds = %286
  %293 = ptrtoint ptr %57 to i32
  br label %294

294:                                              ; preds = %292, %290
  %295 = phi i32 [ %291, %290 ], [ %293, %292 ]
  %296 = inttoptr i32 %295 to ptr
  %297 = load volatile i32, ptr %296, align 4
  %298 = and i32 %297, 32768
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %340, label %300

300:                                              ; preds = %294
  %301 = tail call ptr @llvm.thread.pointer() #13
  %302 = getelementptr inbounds %struct.task_struct, ptr %301, i32 0, i32 4
  %303 = load i32, ptr %302, align 4
  %304 = and i32 %303, 131072
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %327, label %306

306:                                              ; preds = %300
  %307 = load volatile i32, ptr %56, align 4
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %312, label %310, !prof !10

310:                                              ; preds = %306
  %311 = add i32 %307, -1
  br label %314

312:                                              ; preds = %306
  %313 = ptrtoint ptr %57 to i32
  br label %314

314:                                              ; preds = %312, %310
  %315 = phi i32 [ %311, %310 ], [ %313, %312 ]
  %316 = inttoptr i32 %315 to ptr
  %317 = load volatile i32, ptr %316, align 4
  %318 = and i32 %317, 262144
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %327, label %320

320:                                              ; preds = %314
  %321 = load volatile i32, ptr %40, align 4
  %322 = and i32 %321, 2
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %320
  %325 = load i32, ptr %41, align 4
  %326 = add i32 %325, 1
  store i32 %326, ptr %41, align 4
  br label %1000

327:                                              ; preds = %320, %314, %300
  %328 = load volatile i32, ptr %56, align 4
  %329 = and i32 %328, 1
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %333, label %331, !prof !10

331:                                              ; preds = %327
  %332 = add i32 %328, -1
  br label %335

333:                                              ; preds = %327
  %334 = ptrtoint ptr %57 to i32
  br label %335

335:                                              ; preds = %333, %331
  %336 = phi i32 [ %332, %331 ], [ %334, %333 ]
  %337 = inttoptr i32 %336 to ptr
  call void @_set_bit(i32 noundef 18, ptr noundef %337) #13
  %338 = load i32, ptr %42, align 4
  %339 = add i32 %338, 1
  store i32 %339, ptr %42, align 4
  br label %1000

340:                                              ; preds = %294
  br i1 %4, label %413, label %341

341:                                              ; preds = %340
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !9
  %342 = load ptr, ptr %43, align 4
  %343 = call i32 @page_referenced(ptr noundef %57, i32 noundef 1, ptr noundef %342, ptr noundef nonnull %8) #13
  %344 = load volatile i32, ptr %56, align 4
  %345 = and i32 %344, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347, !prof !10

347:                                              ; preds = %341
  %348 = add i32 %344, -1
  br label %351

349:                                              ; preds = %341
  %350 = ptrtoint ptr %57 to i32
  br label %351

351:                                              ; preds = %349, %347
  %352 = phi i32 [ %348, %347 ], [ %350, %349 ]
  %353 = inttoptr i32 %352 to ptr
  %354 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %353) #13
  %355 = load i32, ptr %8, align 4
  %356 = and i32 %355, 8192
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %409

358:                                              ; preds = %351
  %359 = icmp eq i32 %343, 0
  br i1 %359, label %392, label %360

360:                                              ; preds = %358
  %361 = load volatile i32, ptr %56, align 4
  %362 = and i32 %361, 1
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %366, label %364, !prof !10

364:                                              ; preds = %360
  %365 = add i32 %361, -1
  br label %368

366:                                              ; preds = %360
  %367 = ptrtoint ptr %57 to i32
  br label %368

368:                                              ; preds = %366, %364
  %369 = phi i32 [ %365, %364 ], [ %367, %366 ]
  %370 = inttoptr i32 %369 to ptr
  call void @_set_bit(i32 noundef 1, ptr noundef %370) #13
  %371 = icmp ne i32 %354, 0
  %372 = icmp sgt i32 %343, 1
  %373 = select i1 %371, i1 true, i1 %372
  br i1 %373, label %411, label %374

374:                                              ; preds = %368
  %375 = load i32, ptr %8, align 4
  %376 = and i32 %375, 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %412, label %378

378:                                              ; preds = %374
  %379 = load volatile i32, ptr %56, align 4
  %380 = and i32 %379, 1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %384, label %382, !prof !10

382:                                              ; preds = %378
  %383 = add i32 %379, -1
  br label %386

384:                                              ; preds = %378
  %385 = ptrtoint ptr %57 to i32
  br label %386

386:                                              ; preds = %384, %382
  %387 = phi i32 [ %383, %382 ], [ %385, %384 ]
  %388 = inttoptr i32 %387 to ptr
  %389 = load volatile i32, ptr %388, align 4
  %390 = and i32 %389, 524288
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %411, label %412

392:                                              ; preds = %358
  %393 = icmp eq i32 %354, 0
  br i1 %393, label %408, label %394

394:                                              ; preds = %392
  %395 = load volatile i32, ptr %56, align 4
  %396 = and i32 %395, 1
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %400, label %398, !prof !10

398:                                              ; preds = %394
  %399 = add i32 %395, -1
  br label %402

400:                                              ; preds = %394
  %401 = ptrtoint ptr %57 to i32
  br label %402

402:                                              ; preds = %400, %398
  %403 = phi i32 [ %399, %398 ], [ %401, %400 ]
  %404 = inttoptr i32 %403 to ptr
  %405 = load volatile i32, ptr %404, align 4
  %406 = and i32 %405, 524288
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %402, %392
  br label %409

409:                                              ; preds = %408, %402, %351
  %410 = phi i32 [ 1, %402 ], [ 0, %351 ], [ 0, %408 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %413

411:                                              ; preds = %386, %368
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %1000

412:                                              ; preds = %386, %374
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %1080

413:                                              ; preds = %409, %340
  %414 = phi i32 [ %410, %409 ], [ 0, %340 ]
  br i1 %49, label %415, label %418

415:                                              ; preds = %413
  %416 = load ptr, ptr %11, align 8
  %417 = getelementptr inbounds %struct.list_head, ptr %416, i32 0, i32 1
  store ptr %56, ptr %417, align 4
  store ptr %416, ptr %56, align 4
  store ptr %11, ptr %58, align 4
  store volatile ptr %56, ptr %11, align 8
  call void @unlock_page(ptr noundef %57) #13
  br label %1089

418:                                              ; preds = %413
  %419 = load volatile i32, ptr %56, align 4
  %420 = and i32 %419, 1
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %424, label %422, !prof !10

422:                                              ; preds = %418
  %423 = add i32 %419, -1
  br label %426

424:                                              ; preds = %418
  %425 = ptrtoint ptr %57 to i32
  br label %426

426:                                              ; preds = %424, %422
  %427 = phi i32 [ %423, %422 ], [ %425, %424 ]
  %428 = inttoptr i32 %427 to ptr
  %429 = getelementptr inbounds %struct.anon.74, ptr %428, i32 0, i32 2
  %430 = load ptr, ptr %429, align 4
  %431 = ptrtoint ptr %430 to i32
  %432 = and i32 %431, 1
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %533, label %434

434:                                              ; preds = %426
  %435 = load volatile i32, ptr %56, align 4
  %436 = and i32 %435, 1
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %440, label %438, !prof !10

438:                                              ; preds = %434
  %439 = add i32 %435, -1
  br label %442

440:                                              ; preds = %434
  %441 = ptrtoint ptr %57 to i32
  br label %442

442:                                              ; preds = %440, %438
  %443 = phi i32 [ %439, %438 ], [ %441, %440 ]
  %444 = inttoptr i32 %443 to ptr
  %445 = load volatile i32, ptr %444, align 4
  %446 = and i32 %445, 524288
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %533, label %448

448:                                              ; preds = %442
  %449 = load volatile i32, ptr %56, align 4
  %450 = and i32 %449, 1
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %454, label %452, !prof !10

452:                                              ; preds = %448
  %453 = add i32 %449, -1
  br label %456

454:                                              ; preds = %448
  %455 = ptrtoint ptr %57 to i32
  br label %456

456:                                              ; preds = %454, %452
  %457 = phi i32 [ %453, %452 ], [ %455, %454 ]
  %458 = inttoptr i32 %457 to ptr
  %459 = load volatile i32, ptr %458, align 4
  %460 = and i32 %459, 524288
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %466, label %462

462:                                              ; preds = %456
  %463 = load volatile i32, ptr %458, align 4
  %464 = and i32 %463, 1024
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %533

466:                                              ; preds = %462, %456
  %467 = load i32, ptr %37, align 4
  %468 = and i32 %467, 64
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %1085, label %470

470:                                              ; preds = %466
  %471 = load volatile i32, ptr %56, align 4
  %472 = and i32 %471, 1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %476, label %474, !prof !10

474:                                              ; preds = %470
  %475 = add i32 %471, -1
  br label %478

476:                                              ; preds = %470
  %477 = ptrtoint ptr %57 to i32
  br label %478

478:                                              ; preds = %476, %474
  %479 = phi i32 [ %475, %474 ], [ %477, %476 ]
  %480 = inttoptr i32 %479 to ptr
  %481 = load volatile i32, ptr %480, align 4
  %482 = and i32 %481, 65536
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %489

484:                                              ; preds = %478
  %485 = getelementptr inbounds %struct.page, ptr %480, i32 0, i32 1
  %486 = load volatile i32, ptr %485, align 4
  %487 = and i32 %486, 1
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %512, label %489

489:                                              ; preds = %484, %478
  %490 = load volatile i32, ptr %480, align 4
  %491 = and i32 %490, 65536
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %512, label %493

493:                                              ; preds = %489
  %494 = getelementptr %struct.page, ptr %480, i32 1, i32 1
  %495 = getelementptr inbounds %struct.anon.62, ptr %494, i32 0, i32 2
  %496 = load i8, ptr %495, align 1
  %497 = icmp ugt i8 %496, 1
  br i1 %497, label %498, label %512

498:                                              ; preds = %493
  %499 = load volatile i32, ptr %56, align 4
  %500 = and i32 %499, 1
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %504, label %502, !prof !10

502:                                              ; preds = %498
  %503 = add i32 %499, -1
  br label %506

504:                                              ; preds = %498
  %505 = ptrtoint ptr %57 to i32
  br label %506

506:                                              ; preds = %504, %502
  %507 = phi i32 [ %503, %502 ], [ %505, %504 ]
  %508 = inttoptr i32 %507 to ptr
  %509 = getelementptr %struct.page, ptr %508, i32 2, i32 1, i32 0, i32 0, i32 1
  %510 = load volatile i32, ptr %509, align 4
  %511 = icmp sgt i32 %510, 0
  br i1 %511, label %1085, label %526

512:                                              ; preds = %493, %489, %484
  %513 = load volatile i32, ptr %56, align 4
  %514 = and i32 %513, 1
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %518, label %516, !prof !10

516:                                              ; preds = %512
  %517 = add i32 %513, -1
  br label %520

518:                                              ; preds = %512
  %519 = ptrtoint ptr %57 to i32
  br label %520

520:                                              ; preds = %518, %516
  %521 = phi i32 [ %517, %516 ], [ %519, %518 ]
  %522 = inttoptr i32 %521 to ptr
  %523 = getelementptr inbounds %struct.page, ptr %522, i32 0, i32 3
  %524 = load volatile i32, ptr %523, align 4
  %525 = icmp ugt i32 %524, 1023
  br i1 %525, label %1085, label %526

526:                                              ; preds = %520, %506
  %527 = call i32 @add_to_swap(ptr noundef %57) #13
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %531

529:                                              ; preds = %526
  %530 = icmp ugt i32 %88, 1
  br i1 %530, label %996, label %1000

531:                                              ; preds = %526
  %532 = call ptr @page_mapping(ptr noundef %57) #13
  br label %533

533:                                              ; preds = %531, %462, %442, %426
  %534 = phi i1 [ %145, %462 ], [ true, %531 ], [ %145, %442 ], [ %145, %426 ]
  %535 = phi ptr [ %247, %462 ], [ %532, %531 ], [ %247, %442 ], [ %247, %426 ]
  %536 = icmp ugt i32 %88, 1
  br i1 %536, label %537, label %541

537:                                              ; preds = %533
  %538 = load i32, ptr %35, align 4
  %539 = sub i32 1, %88
  %540 = add i32 %539, %538
  store i32 %540, ptr %35, align 4
  br label %541

541:                                              ; preds = %537, %533
  %542 = phi i32 [ 1, %537 ], [ %88, %533 ]
  %543 = call zeroext i1 @page_mapped(ptr noundef %57) #13
  br i1 %543, label %544, label %579

544:                                              ; preds = %541
  %545 = load volatile i32, ptr %56, align 4
  %546 = and i32 %545, 1
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %550, label %548, !prof !10

548:                                              ; preds = %544
  %549 = add i32 %545, -1
  br label %552

550:                                              ; preds = %544
  %551 = ptrtoint ptr %57 to i32
  br label %552

552:                                              ; preds = %550, %548
  %553 = phi i32 [ %549, %548 ], [ %551, %550 ]
  %554 = inttoptr i32 %553 to ptr
  %555 = load volatile i32, ptr %554, align 4
  call void @try_to_unmap(ptr noundef %57, i32 noundef 64) #13
  %556 = call zeroext i1 @page_mapped(ptr noundef %57) #13
  br i1 %556, label %557, label %579

557:                                              ; preds = %552
  %558 = and i32 %555, 524288
  %559 = icmp eq i32 %558, 0
  %560 = load i32, ptr %46, align 4
  %561 = add i32 %560, %542
  store i32 %561, ptr %46, align 4
  br i1 %559, label %562, label %1000

562:                                              ; preds = %557
  %563 = load volatile i32, ptr %56, align 4
  %564 = and i32 %563, 1
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %568, label %566, !prof !10

566:                                              ; preds = %562
  %567 = add i32 %563, -1
  br label %570

568:                                              ; preds = %562
  %569 = ptrtoint ptr %57 to i32
  br label %570

570:                                              ; preds = %568, %566
  %571 = phi i32 [ %567, %566 ], [ %569, %568 ]
  %572 = inttoptr i32 %571 to ptr
  %573 = load volatile i32, ptr %572, align 4
  %574 = and i32 %573, 524288
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %1000, label %576

576:                                              ; preds = %570
  %577 = load i32, ptr %47, align 4
  %578 = add i32 %577, %542
  store i32 %578, ptr %47, align 4
  br label %1000

579:                                              ; preds = %552, %541
  %580 = load volatile i32, ptr %56, align 4
  %581 = and i32 %580, 1
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %585, label %583, !prof !10

583:                                              ; preds = %579
  %584 = add i32 %580, -1
  br label %587

585:                                              ; preds = %579
  %586 = ptrtoint ptr %57 to i32
  br label %587

587:                                              ; preds = %585, %583
  %588 = phi i32 [ %584, %583 ], [ %586, %585 ]
  %589 = inttoptr i32 %588 to ptr
  %590 = load volatile i32, ptr %589, align 4
  %591 = and i32 %590, 8
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %905, label %593

593:                                              ; preds = %587
  %594 = load volatile i32, ptr %56, align 4
  %595 = and i32 %594, 1
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %599, label %597, !prof !10

597:                                              ; preds = %593
  %598 = add i32 %594, -1
  br label %601

599:                                              ; preds = %593
  %600 = ptrtoint ptr %57 to i32
  br label %601

601:                                              ; preds = %599, %597
  %602 = phi i32 [ %598, %597 ], [ %600, %599 ]
  %603 = inttoptr i32 %602 to ptr
  %604 = load volatile i32, ptr %603, align 4
  %605 = and i32 %604, 524288
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %642

607:                                              ; preds = %601
  %608 = tail call ptr @llvm.thread.pointer() #13
  %609 = getelementptr inbounds %struct.task_struct, ptr %608, i32 0, i32 4
  %610 = load i32, ptr %609, align 4
  %611 = and i32 %610, 131072
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %631, label %613

613:                                              ; preds = %607
  %614 = load volatile i32, ptr %56, align 4
  %615 = and i32 %614, 1
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %619, label %617, !prof !10

617:                                              ; preds = %613
  %618 = add i32 %614, -1
  br label %621

619:                                              ; preds = %613
  %620 = ptrtoint ptr %57 to i32
  br label %621

621:                                              ; preds = %619, %617
  %622 = phi i32 [ %618, %617 ], [ %620, %619 ]
  %623 = inttoptr i32 %622 to ptr
  %624 = load volatile i32, ptr %623, align 4
  %625 = and i32 %624, 262144
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %631, label %627

627:                                              ; preds = %621
  %628 = load volatile i32, ptr %40, align 4
  %629 = and i32 %628, 1
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %642

631:                                              ; preds = %627, %621, %607
  call void @inc_node_page_state(ptr noundef %57, i32 noundef 30) #13
  %632 = load volatile i32, ptr %56, align 4
  %633 = and i32 %632, 1
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %637, label %635, !prof !10

635:                                              ; preds = %631
  %636 = add i32 %632, -1
  br label %639

637:                                              ; preds = %631
  %638 = ptrtoint ptr %57 to i32
  br label %639

639:                                              ; preds = %637, %635
  %640 = phi i32 [ %636, %635 ], [ %638, %637 ]
  %641 = inttoptr i32 %640 to ptr
  call void @_set_bit(i32 noundef 18, ptr noundef %641) #13
  br label %1000

642:                                              ; preds = %627, %601
  %643 = icmp eq i32 %414, 1
  %644 = xor i1 %534, true
  %645 = select i1 %643, i1 true, i1 %644
  br i1 %645, label %1085, label %646

646:                                              ; preds = %642
  %647 = load i16, ptr %36, align 4
  %648 = and i16 %647, 16
  %649 = icmp eq i16 %648, 0
  br i1 %649, label %1085, label %650

650:                                              ; preds = %646
  %651 = load volatile i32, ptr %56, align 4
  %652 = and i32 %651, 1
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %656, label %654, !prof !10

654:                                              ; preds = %650
  %655 = add i32 %651, -1
  br label %658

656:                                              ; preds = %650
  %657 = ptrtoint ptr %57 to i32
  br label %658

658:                                              ; preds = %656, %654
  %659 = phi i32 [ %655, %654 ], [ %657, %656 ]
  %660 = inttoptr i32 %659 to ptr
  %661 = getelementptr inbounds %struct.page, ptr %660, i32 0, i32 3
  %662 = load volatile i32, ptr %661, align 4
  %663 = load i32, ptr %57, align 4
  %664 = and i32 %663, 24576
  %665 = icmp ne i32 %664, 0
  %666 = sext i1 %665 to i32
  %667 = add i32 %662, %666
  %668 = icmp eq i32 %667, 2
  br i1 %668, label %669, label %1085

669:                                              ; preds = %658
  %670 = icmp eq ptr %535, null
  br i1 %670, label %671, label %687

671:                                              ; preds = %669
  br i1 %665, label %672, label %1085

672:                                              ; preds = %671
  %673 = call i32 @try_to_free_buffers(ptr noundef %57) #13
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %1085, label %675

675:                                              ; preds = %672
  %676 = load volatile i32, ptr %56, align 4
  %677 = and i32 %676, 1
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %681, label %679, !prof !10

679:                                              ; preds = %675
  %680 = add i32 %676, -1
  br label %683

681:                                              ; preds = %675
  %682 = ptrtoint ptr %57 to i32
  br label %683

683:                                              ; preds = %681, %679
  %684 = phi i32 [ %680, %679 ], [ %682, %681 ]
  %685 = inttoptr i32 %684 to ptr
  call void @_clear_bit(i32 noundef 3, ptr noundef %685) #13
  %686 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.pageout) #16
  br label %905

687:                                              ; preds = %669
  %688 = getelementptr inbounds %struct.address_space, ptr %535, i32 0, i32 9
  %689 = load ptr, ptr %688, align 4
  %690 = load ptr, ptr %689, align 4
  %691 = icmp eq ptr %690, null
  br i1 %691, label %1000, label %692

692:                                              ; preds = %687
  %693 = load ptr, ptr %535, align 4
  %694 = tail call ptr @llvm.thread.pointer() #13
  %695 = getelementptr inbounds %struct.task_struct, ptr %694, i32 0, i32 4
  %696 = load i32, ptr %695, align 4
  %697 = and i32 %696, 8388608
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %710

699:                                              ; preds = %692
  %700 = call ptr @inode_to_bdi(ptr noundef %693) #13
  %701 = getelementptr inbounds %struct.backing_dev_info, ptr %700, i32 0, i32 11, i32 10
  %702 = load i32, ptr %701, align 8
  %703 = and i32 %702, 1
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %710, label %705

705:                                              ; preds = %699
  %706 = call ptr @inode_to_bdi(ptr noundef %693) #13
  %707 = getelementptr inbounds %struct.task_struct, ptr %694, i32 0, i32 117
  %708 = load ptr, ptr %707, align 4
  %709 = icmp eq ptr %706, %708
  br i1 %709, label %710, label %1085

710:                                              ; preds = %705, %699, %692
  %711 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %57) #13
  br i1 %711, label %712, label %905

712:                                              ; preds = %710
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) @__const.pageout.wbc, i32 32, i1 false) #13
  %713 = load volatile i32, ptr %56, align 4
  %714 = and i32 %713, 1
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %718, label %716, !prof !10

716:                                              ; preds = %712
  %717 = add i32 %713, -1
  br label %720

718:                                              ; preds = %712
  %719 = ptrtoint ptr %57 to i32
  br label %720

720:                                              ; preds = %718, %716
  %721 = phi i32 [ %717, %716 ], [ %719, %718 ]
  %722 = inttoptr i32 %721 to ptr
  call void @_set_bit(i32 noundef 18, ptr noundef %722) #13
  %723 = load ptr, ptr %688, align 4
  %724 = load ptr, ptr %723, align 4
  %725 = call i32 %724(ptr noundef %57, ptr noundef nonnull %7) #13
  %726 = icmp slt i32 %725, 0
  br i1 %726, label %727, label %763

727:                                              ; preds = %720
  %728 = load volatile i32, ptr %56, align 4
  %729 = and i32 %728, 1
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %733, label %731, !prof !10

731:                                              ; preds = %727
  %732 = add i32 %728, -1
  br label %735

733:                                              ; preds = %727
  %734 = ptrtoint ptr %57 to i32
  br label %735

735:                                              ; preds = %733, %731
  %736 = phi i32 [ %732, %731 ], [ %734, %733 ]
  %737 = inttoptr i32 %736 to ptr
  %738 = load volatile i32, ptr %737, align 4
  %739 = and i32 %738, 1
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %746

741:                                              ; preds = %735
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %737) #13, !srcloc !15
  %742 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %737, ptr %737, i32 1, ptr elementtype(i32) %737) #13, !srcloc !36
  %743 = extractvalue { i32, i32, i32 } %742, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  %744 = and i32 %743, 1
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %747, label %746

746:                                              ; preds = %741, %735
  call void @__folio_lock(ptr noundef %737) #13
  br label %747

747:                                              ; preds = %746, %741
  %748 = call ptr @page_mapping(ptr noundef %57) #13
  %749 = icmp eq ptr %748, %535
  br i1 %749, label %750, label %762

750:                                              ; preds = %747
  call void @__filemap_set_wb_err(ptr noundef nonnull %535, i32 noundef %725) #13
  %751 = load ptr, ptr %535, align 4
  %752 = icmp eq ptr %751, null
  br i1 %752, label %758, label %753

753:                                              ; preds = %750
  %754 = getelementptr inbounds %struct.inode, ptr %751, i32 0, i32 8
  %755 = load ptr, ptr %754, align 4
  %756 = getelementptr inbounds %struct.super_block, ptr %755, i32 0, i32 44
  %757 = call i32 @errseq_set(ptr noundef %756, i32 noundef %725) #13
  br label %758

758:                                              ; preds = %753, %750
  %759 = icmp eq i32 %725, -28
  %760 = getelementptr inbounds %struct.address_space, ptr %535, i32 0, i32 10
  %761 = zext i1 %759 to i32
  call void @_set_bit(i32 noundef %761, ptr noundef %760) #13
  br label %762

762:                                              ; preds = %758, %747
  call void @unlock_page(ptr noundef %57) #13
  br label %776

763:                                              ; preds = %720
  %764 = icmp eq i32 %725, 524288
  br i1 %764, label %765, label %776

765:                                              ; preds = %763
  %766 = load volatile i32, ptr %56, align 4
  %767 = and i32 %766, 1
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %771, label %769, !prof !10

769:                                              ; preds = %765
  %770 = add i32 %766, -1
  br label %773

771:                                              ; preds = %765
  %772 = ptrtoint ptr %57 to i32
  br label %773

773:                                              ; preds = %771, %769
  %774 = phi i32 [ %770, %769 ], [ %772, %771 ]
  %775 = inttoptr i32 %774 to ptr
  call void @_clear_bit(i32 noundef 18, ptr noundef %775) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  br label %1000

776:                                              ; preds = %763, %762
  %777 = load volatile i32, ptr %56, align 4
  %778 = and i32 %777, 1
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %782, label %780, !prof !10

780:                                              ; preds = %776
  %781 = add i32 %777, -1
  br label %784

782:                                              ; preds = %776
  %783 = ptrtoint ptr %57 to i32
  br label %784

784:                                              ; preds = %782, %780
  %785 = phi i32 [ %781, %780 ], [ %783, %782 ]
  %786 = inttoptr i32 %785 to ptr
  %787 = load volatile i32, ptr %786, align 4
  %788 = and i32 %787, 32768
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %801

790:                                              ; preds = %784
  %791 = load volatile i32, ptr %56, align 4
  %792 = and i32 %791, 1
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %796, label %794, !prof !10

794:                                              ; preds = %790
  %795 = add i32 %791, -1
  br label %798

796:                                              ; preds = %790
  %797 = ptrtoint ptr %57 to i32
  br label %798

798:                                              ; preds = %796, %794
  %799 = phi i32 [ %795, %794 ], [ %797, %796 ]
  %800 = inttoptr i32 %799 to ptr
  call void @_clear_bit(i32 noundef 18, ptr noundef %800) #13
  br label %801

801:                                              ; preds = %798, %784
  %802 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_writepage, i32 0, i32 1), align 4
  %803 = icmp sgt i32 %802, 0
  br i1 %803, label %804, label %826

804:                                              ; preds = %801
  %805 = getelementptr inbounds %struct.thread_info, ptr %694, i32 0, i32 2
  %806 = load i32, ptr %805, align 8
  %807 = lshr i32 %806, 5
  %808 = getelementptr i32, ptr @__cpu_online_mask, i32 %807
  %809 = load volatile i32, ptr %808, align 4
  %810 = and i32 %806, 31
  %811 = shl nuw i32 1, %810
  %812 = and i32 %811, %809
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %826, label %814

814:                                              ; preds = %804
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  %815 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_writepage, i32 0, i32 7), align 4
  %816 = icmp eq ptr %815, null
  br i1 %816, label %825, label %817

817:                                              ; preds = %817, %814
  %818 = phi ptr [ %822, %817 ], [ %815, %814 ]
  %819 = load volatile ptr, ptr %818, align 4
  %820 = getelementptr inbounds %struct.tracepoint_func, ptr %818, i32 0, i32 1
  %821 = load ptr, ptr %820, align 4
  call void %819(ptr noundef %821, ptr noundef %57) #13
  %822 = getelementptr %struct.tracepoint_func, ptr %818, i32 1
  %823 = load ptr, ptr %822, align 4
  %824 = icmp eq ptr %823, null
  br i1 %824, label %825, label %817

825:                                              ; preds = %817, %814
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !42
  br label %826

826:                                              ; preds = %825, %804, %801
  call void @inc_node_page_state(ptr noundef %57, i32 noundef 29) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  %827 = load i32, ptr %45, align 4
  %828 = add i32 %827, 1
  store i32 %828, ptr %45, align 4
  %829 = load volatile i32, ptr %56, align 4
  %830 = and i32 %829, 1
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %834, label %832, !prof !10

832:                                              ; preds = %826
  %833 = add i32 %829, -1
  br label %836

834:                                              ; preds = %826
  %835 = ptrtoint ptr %57 to i32
  br label %836

836:                                              ; preds = %834, %832
  %837 = phi i32 [ %833, %832 ], [ %835, %834 ]
  %838 = inttoptr i32 %837 to ptr
  %839 = load volatile i32, ptr %838, align 4
  %840 = and i32 %839, 32768
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %1086

842:                                              ; preds = %836
  %843 = load volatile i32, ptr %56, align 4
  %844 = and i32 %843, 1
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %848, label %846, !prof !10

846:                                              ; preds = %842
  %847 = add i32 %843, -1
  br label %850

848:                                              ; preds = %842
  %849 = ptrtoint ptr %57 to i32
  br label %850

850:                                              ; preds = %848, %846
  %851 = phi i32 [ %847, %846 ], [ %849, %848 ]
  %852 = inttoptr i32 %851 to ptr
  %853 = load volatile i32, ptr %852, align 4
  %854 = and i32 %853, 8
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %1086

856:                                              ; preds = %850
  %857 = load volatile i32, ptr %56, align 4
  %858 = and i32 %857, 1
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %862, label %860, !prof !10

860:                                              ; preds = %856
  %861 = add i32 %857, -1
  br label %864

862:                                              ; preds = %856
  %863 = ptrtoint ptr %57 to i32
  br label %864

864:                                              ; preds = %862, %860
  %865 = phi i32 [ %861, %860 ], [ %863, %862 ]
  %866 = inttoptr i32 %865 to ptr
  %867 = load volatile i32, ptr %866, align 4
  %868 = and i32 %867, 1
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %870, label %1086

870:                                              ; preds = %864
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %866) #13, !srcloc !15
  %871 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %866, ptr %866, i32 1, ptr elementtype(i32) %866) #13, !srcloc !36
  %872 = extractvalue { i32, i32, i32 } %871, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  %873 = and i32 %872, 1
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %1086

875:                                              ; preds = %870
  %876 = load volatile i32, ptr %56, align 4
  %877 = and i32 %876, 1
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %881, label %879, !prof !10

879:                                              ; preds = %875
  %880 = add i32 %876, -1
  br label %883

881:                                              ; preds = %875
  %882 = ptrtoint ptr %57 to i32
  br label %883

883:                                              ; preds = %881, %879
  %884 = phi i32 [ %880, %879 ], [ %882, %881 ]
  %885 = inttoptr i32 %884 to ptr
  %886 = load volatile i32, ptr %885, align 4
  %887 = and i32 %886, 8
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %889, label %1085

889:                                              ; preds = %883
  %890 = load volatile i32, ptr %56, align 4
  %891 = and i32 %890, 1
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %895, label %893, !prof !10

893:                                              ; preds = %889
  %894 = add i32 %890, -1
  br label %897

895:                                              ; preds = %889
  %896 = ptrtoint ptr %57 to i32
  br label %897

897:                                              ; preds = %895, %893
  %898 = phi i32 [ %894, %893 ], [ %896, %895 ]
  %899 = inttoptr i32 %898 to ptr
  %900 = load volatile i32, ptr %899, align 4
  %901 = and i32 %900, 32768
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %903, label %1085

903:                                              ; preds = %897
  %904 = call ptr @page_mapping(ptr noundef %57) #13
  br label %905

905:                                              ; preds = %903, %710, %683, %587
  %906 = phi ptr [ %904, %903 ], [ %535, %587 ], [ null, %683 ], [ %535, %710 ]
  %907 = load i32, ptr %57, align 4
  %908 = and i32 %907, 24576
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %937, label %910

910:                                              ; preds = %905
  %911 = load i32, ptr %37, align 4
  %912 = call i32 @try_to_release_page(ptr noundef %57, i32 noundef %911) #13
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %1000, label %914

914:                                              ; preds = %910
  %915 = icmp eq ptr %906, null
  br i1 %915, label %916, label %937

916:                                              ; preds = %914
  %917 = load volatile i32, ptr %56, align 4
  %918 = and i32 %917, 1
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %922, label %920, !prof !10

920:                                              ; preds = %916
  %921 = add i32 %917, -1
  br label %924

922:                                              ; preds = %916
  %923 = ptrtoint ptr %57 to i32
  br label %924

924:                                              ; preds = %922, %920
  %925 = phi i32 [ %921, %920 ], [ %923, %922 ]
  %926 = inttoptr i32 %925 to ptr
  %927 = getelementptr inbounds %struct.page, ptr %926, i32 0, i32 3
  %928 = load volatile i32, ptr %927, align 4
  %929 = icmp eq i32 %928, 1
  br i1 %929, label %930, label %937

930:                                              ; preds = %924
  call void @unlock_page(ptr noundef %57) #13
  %931 = getelementptr i8, ptr %56, i32 24
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %931) #13, !srcloc !15
  %932 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %931, ptr %931, i32 1, ptr elementtype(i32) %931) #13, !srcloc !34
  %933 = extractvalue { i32, i32 } %932, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !35
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %992, label %935

935:                                              ; preds = %930
  %936 = add i32 %54, 1
  br label %1089

937:                                              ; preds = %924, %914, %905
  %938 = load volatile i32, ptr %56, align 4
  %939 = and i32 %938, 1
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %943, label %941, !prof !10

941:                                              ; preds = %937
  %942 = add i32 %938, -1
  br label %945

943:                                              ; preds = %937
  %944 = ptrtoint ptr %57 to i32
  br label %945

945:                                              ; preds = %943, %941
  %946 = phi i32 [ %942, %941 ], [ %944, %943 ]
  %947 = inttoptr i32 %946 to ptr
  %948 = getelementptr inbounds %struct.anon.74, ptr %947, i32 0, i32 2
  %949 = load ptr, ptr %948, align 4
  %950 = ptrtoint ptr %949 to i32
  %951 = and i32 %950, 1
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %985, label %953

953:                                              ; preds = %945
  %954 = load volatile i32, ptr %56, align 4
  %955 = and i32 %954, 1
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %959, label %957, !prof !10

957:                                              ; preds = %953
  %958 = add i32 %954, -1
  br label %961

959:                                              ; preds = %953
  %960 = ptrtoint ptr %57 to i32
  br label %961

961:                                              ; preds = %959, %957
  %962 = phi i32 [ %958, %957 ], [ %960, %959 ]
  %963 = inttoptr i32 %962 to ptr
  %964 = load volatile i32, ptr %963, align 4
  %965 = and i32 %964, 524288
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %985

967:                                              ; preds = %961
  %968 = getelementptr i8, ptr %56, i32 24
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %968) #13, !srcloc !15
  br label %969

969:                                              ; preds = %969, %967
  %970 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %968, ptr %968, i32 1, i32 0, ptr elementtype(i32) %968) #13, !srcloc !25
  %971 = extractvalue { i32, i32 } %970, 0
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %969

973:                                              ; preds = %969
  %974 = extractvalue { i32, i32 } %970, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %975 = icmp eq i32 %974, 1
  br i1 %975, label %976, label %1085

976:                                              ; preds = %973
  %977 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %978 = call i32 @llvm.read_register.i32(metadata !0) #13
  %979 = inttoptr i32 %978 to ptr
  %980 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %979) #7, !srcloc !12
  %981 = add i32 %980, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 22) to i32)
  %982 = inttoptr i32 %981 to ptr
  %983 = load i32, ptr %982, align 4
  %984 = add i32 %983, 1
  store i32 %984, ptr %982, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %977) #13, !srcloc !44
  br label %991

985:                                              ; preds = %961, %945
  %986 = icmp eq ptr %906, null
  br i1 %986, label %1085, label %987

987:                                              ; preds = %985
  %988 = load ptr, ptr %43, align 4
  %989 = call fastcc i32 @__remove_mapping(ptr noundef nonnull %906, ptr noundef %57, i1 noundef zeroext true, ptr noundef %988)
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %1085, label %991

991:                                              ; preds = %987, %976
  call void @unlock_page(ptr noundef %57) #13
  br label %992

992:                                              ; preds = %991, %930
  %993 = add i32 %542, %54
  %994 = load ptr, ptr %10, align 8
  %995 = getelementptr inbounds %struct.list_head, ptr %994, i32 0, i32 1
  store ptr %56, ptr %995, align 4
  store ptr %994, ptr %56, align 4
  store ptr %10, ptr %58, align 4
  store volatile ptr %56, ptr %10, align 8
  br label %1089

996:                                              ; preds = %529
  %997 = load i32, ptr %35, align 4
  %998 = sub i32 1, %88
  %999 = add i32 %998, %997
  store i32 %999, ptr %35, align 4
  br label %1000

1000:                                             ; preds = %996, %910, %773, %687, %639, %576, %570, %557, %529, %411, %335, %324, %107, %98
  %1001 = phi i32 [ %88, %107 ], [ %88, %324 ], [ %88, %335 ], [ %542, %910 ], [ %542, %639 ], [ 1, %996 ], [ %88, %529 ], [ %88, %98 ], [ %88, %411 ], [ %542, %773 ], [ %542, %576 ], [ %542, %570 ], [ %542, %557 ], [ %542, %687 ]
  %1002 = load volatile i32, ptr %56, align 4
  %1003 = and i32 %1002, 1
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1007, label %1005, !prof !10

1005:                                             ; preds = %1000
  %1006 = add i32 %1002, -1
  br label %1009

1007:                                             ; preds = %1000
  %1008 = ptrtoint ptr %57 to i32
  br label %1009

1009:                                             ; preds = %1007, %1005
  %1010 = phi i32 [ %1006, %1005 ], [ %1008, %1007 ]
  %1011 = inttoptr i32 %1010 to ptr
  %1012 = load volatile i32, ptr %1011, align 4
  %1013 = and i32 %1012, 524288
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1040, label %1015

1015:                                             ; preds = %1009
  %1016 = load volatile i32, ptr %1011, align 4
  %1017 = and i32 %1016, 1024
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1040, label %1019

1019:                                             ; preds = %1015
  %1020 = load volatile i32, ptr @nr_swap_pages, align 4
  %1021 = shl i32 %1020, 1
  %1022 = load i32, ptr @total_swap_pages, align 4
  %1023 = icmp slt i32 %1021, %1022
  br i1 %1023, label %1038, label %1024

1024:                                             ; preds = %1019
  %1025 = load volatile i32, ptr %56, align 4
  %1026 = and i32 %1025, 1
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1030, label %1028, !prof !10

1028:                                             ; preds = %1024
  %1029 = add i32 %1025, -1
  br label %1032

1030:                                             ; preds = %1024
  %1031 = ptrtoint ptr %57 to i32
  br label %1032

1032:                                             ; preds = %1030, %1028
  %1033 = phi i32 [ %1029, %1028 ], [ %1031, %1030 ]
  %1034 = inttoptr i32 %1033 to ptr
  %1035 = load volatile i32, ptr %1034, align 4
  %1036 = and i32 %1035, 2097152
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1040, label %1038

1038:                                             ; preds = %1032, %1019
  %1039 = call i32 @try_to_free_swap(ptr noundef %57) #13
  br label %1040

1040:                                             ; preds = %1038, %1032, %1015, %1009
  %1041 = load volatile i32, ptr %56, align 4
  %1042 = and i32 %1041, 1
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1046, label %1044, !prof !10

1044:                                             ; preds = %1040
  %1045 = add i32 %1041, -1
  br label %1048

1046:                                             ; preds = %1040
  %1047 = ptrtoint ptr %57 to i32
  br label %1048

1048:                                             ; preds = %1046, %1044
  %1049 = phi i32 [ %1045, %1044 ], [ %1047, %1046 ]
  %1050 = inttoptr i32 %1049 to ptr
  %1051 = load volatile i32, ptr %1050, align 4
  %1052 = and i32 %1051, 2097152
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %1085

1054:                                             ; preds = %1048
  %1055 = load volatile i32, ptr %56, align 4
  %1056 = and i32 %1055, 1
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1060, label %1058, !prof !10

1058:                                             ; preds = %1054
  %1059 = add i32 %1055, -1
  br label %1062

1060:                                             ; preds = %1054
  %1061 = ptrtoint ptr %57 to i32
  br label %1062

1062:                                             ; preds = %1060, %1058
  %1063 = phi i32 [ %1059, %1058 ], [ %1061, %1060 ]
  %1064 = inttoptr i32 %1063 to ptr
  %1065 = load volatile i32, ptr %1064, align 4
  %1066 = lshr i32 %1065, 19
  %1067 = and i32 %1066, 1
  %1068 = xor i32 %1067, 1
  %1069 = load volatile i32, ptr %56, align 4
  %1070 = and i32 %1069, 1
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1074, label %1072, !prof !10

1072:                                             ; preds = %1062
  %1073 = add i32 %1069, -1
  br label %1076

1074:                                             ; preds = %1062
  %1075 = ptrtoint ptr %57 to i32
  br label %1076

1076:                                             ; preds = %1074, %1072
  %1077 = phi i32 [ %1073, %1072 ], [ %1075, %1074 ]
  %1078 = inttoptr i32 %1077 to ptr
  call void @_set_bit(i32 noundef 5, ptr noundef %1078) #13
  %1079 = getelementptr %struct.reclaim_stat, ptr %3, i32 0, i32 6, i32 %1068
  br label %1080

1080:                                             ; preds = %1076, %412
  %1081 = phi ptr [ %1079, %1076 ], [ %44, %412 ]
  %1082 = phi i32 [ %1001, %1076 ], [ %88, %412 ]
  %1083 = load i32, ptr %1081, align 4
  %1084 = add i32 %1083, %1082
  store i32 %1084, ptr %1081, align 4
  br label %1085

1085:                                             ; preds = %1080, %1048, %987, %985, %973, %897, %883, %705, %672, %671, %658, %646, %642, %520, %506, %466, %117
  call void @unlock_page(ptr noundef %57) #13
  br label %1086

1086:                                             ; preds = %1085, %870, %864, %850, %836, %75, %69
  %1087 = load ptr, ptr %9, align 8
  %1088 = getelementptr inbounds %struct.list_head, ptr %1087, i32 0, i32 1
  store ptr %56, ptr %1088, align 4
  store ptr %1087, ptr %56, align 4
  store ptr %9, ptr %58, align 4
  store volatile ptr %56, ptr %9, align 8
  br label %1089

1089:                                             ; preds = %1086, %992, %935, %415
  %1090 = phi i32 [ %54, %1086 ], [ %54, %415 ], [ %993, %992 ], [ %936, %935 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #13
  %1091 = load volatile ptr, ptr %0, align 4
  %1092 = icmp eq ptr %1091, %0
  br i1 %1092, label %1093, label %53

1093:                                             ; preds = %1089, %48
  %1094 = phi i32 [ %50, %48 ], [ %1090, %1089 ]
  %1095 = load i32, ptr %18, align 4
  %1096 = call i32 @next_demotion_node(i32 noundef %1095) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %1097 = load volatile ptr, ptr %11, align 8
  %1098 = icmp eq ptr %1097, %11
  %1099 = icmp eq i32 %1096, -1
  %1100 = select i1 %1098, i1 true, i1 %1099
  br i1 %1100, label %1118, label %1101

1101:                                             ; preds = %1093
  %1102 = call i32 @migrate_pages(ptr noundef nonnull %11, ptr noundef nonnull @alloc_demote_page, ptr noundef null, i32 noundef %1096, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %6) #13
  %1103 = tail call ptr @llvm.thread.pointer() #13
  %1104 = getelementptr inbounds %struct.task_struct, ptr %1103, i32 0, i32 4
  %1105 = load i32, ptr %1104, align 4
  %1106 = and i32 %1105, 131072
  %1107 = icmp eq i32 %1106, 0
  %1108 = load i32, ptr %6, align 4
  %1109 = call i32 @llvm.read_register.i32(metadata !0) #13
  %1110 = inttoptr i32 %1109 to ptr
  %1111 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1110) #7
  %1112 = select i1 %1107, i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 28) to i32), i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 27) to i32)
  %1113 = add i32 %1111, %1112
  %1114 = inttoptr i32 %1113 to ptr
  %1115 = load i32, ptr %1114, align 4
  %1116 = add i32 %1115, %1108
  store i32 %1116, ptr %1114, align 4
  %1117 = load i32, ptr %6, align 4
  br label %1118

1118:                                             ; preds = %1101, %1093
  %1119 = phi i32 [ %1117, %1101 ], [ 0, %1093 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %1120 = add i32 %1119, %1094
  %1121 = load volatile ptr, ptr %11, align 8
  %1122 = icmp eq ptr %1121, %11
  br i1 %1122, label %1132, label %1123

1123:                                             ; preds = %1118
  %1124 = load volatile ptr, ptr %11, align 8
  %1125 = icmp eq ptr %1124, %11
  br i1 %1125, label %1126, label %1127

1126:                                             ; preds = %1127, %1123
  br label %48

1127:                                             ; preds = %1123
  %1128 = load ptr, ptr %0, align 4
  %1129 = load ptr, ptr %16, align 4
  %1130 = getelementptr inbounds %struct.list_head, ptr %1124, i32 0, i32 1
  store ptr %0, ptr %1130, align 4
  store ptr %1124, ptr %0, align 4
  store ptr %1128, ptr %1129, align 4
  %1131 = getelementptr inbounds %struct.list_head, ptr %1128, i32 0, i32 1
  store ptr %1129, ptr %1131, align 4
  store volatile ptr %11, ptr %11, align 8
  store ptr %11, ptr %16, align 4
  br label %1126

1132:                                             ; preds = %1118
  %1133 = getelementptr inbounds %struct.reclaim_stat, ptr %3, i32 0, i32 6
  %1134 = load i32, ptr %1133, align 4
  %1135 = getelementptr %struct.reclaim_stat, ptr %3, i32 0, i32 6, i32 1
  %1136 = load i32, ptr %1135, align 4
  call void @free_unref_page_list(ptr noundef nonnull %10) #13
  %1137 = load volatile ptr, ptr %9, align 8
  %1138 = icmp eq ptr %1137, %9
  br i1 %1138, label %1144, label %1139

1139:                                             ; preds = %1132
  %1140 = load ptr, ptr %0, align 4
  %1141 = load ptr, ptr %14, align 4
  %1142 = getelementptr inbounds %struct.list_head, ptr %1137, i32 0, i32 1
  store ptr %0, ptr %1142, align 4
  store ptr %1137, ptr %0, align 4
  store ptr %1140, ptr %1141, align 4
  %1143 = getelementptr inbounds %struct.list_head, ptr %1140, i32 0, i32 1
  store ptr %1141, ptr %1143, align 4
  br label %1144

1144:                                             ; preds = %1139, %1132
  %1145 = add i32 %1136, %1134
  %1146 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %1147 = call i32 @llvm.read_register.i32(metadata !0) #13
  %1148 = inttoptr i32 %1147 to ptr
  %1149 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1148) #7, !srcloc !12
  %1150 = add i32 %1149, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 17) to i32)
  %1151 = inttoptr i32 %1150 to ptr
  %1152 = load i32, ptr %1151, align 4
  %1153 = add i32 %1145, %1152
  store i32 %1153, ptr %1151, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1146) #13, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  ret i32 %1120
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__isolate_lru_page_prepare(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !10

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
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %100, label %17

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %3, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !10

21:                                               ; preds = %17
  %22 = add i32 %18, -1
  br label %25

23:                                               ; preds = %17
  %24 = ptrtoint ptr %0 to i32
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = inttoptr i32 %26 to ptr
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1048576
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %1, 8
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %32, %30
  br i1 %33, label %100, label %34

34:                                               ; preds = %25
  %35 = and i32 %1, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %94, label %37

37:                                               ; preds = %34
  %38 = load volatile i32, ptr %3, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !10

41:                                               ; preds = %37
  %42 = add i32 %38, -1
  br label %45

43:                                               ; preds = %37
  %44 = ptrtoint ptr %0 to i32
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = inttoptr i32 %46 to ptr
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 32768
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %45
  %52 = load volatile i32, ptr %3, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55, !prof !10

55:                                               ; preds = %51
  %56 = add i32 %52, -1
  br label %59

57:                                               ; preds = %51
  %58 = ptrtoint ptr %0 to i32
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = inttoptr i32 %60 to ptr
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %94, label %65

65:                                               ; preds = %59
  %66 = load volatile i32, ptr %3, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69, !prof !10

69:                                               ; preds = %65
  %70 = add i32 %66, -1
  br label %73

71:                                               ; preds = %65
  %72 = ptrtoint ptr %0 to i32
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = inttoptr i32 %74 to ptr
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #13, !srcloc !15
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #13, !srcloc !36
  %81 = extractvalue { i32, i32, i32 } %80, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = tail call ptr @page_mapping(ptr noundef %0) #13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  tail call void @unlock_page(ptr noundef %0) #13
  br label %94

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.address_space, ptr %85, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.address_space_operations, ptr %90, i32 0, i32 13
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  tail call void @unlock_page(ptr noundef %0) #13
  br i1 %93, label %100, label %94

94:                                               ; preds = %88, %87, %59, %34
  %95 = and i32 %1, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = tail call zeroext i1 @page_mapped(ptr noundef %0) #13
  br i1 %98, label %100, label %99

99:                                               ; preds = %97, %94
  br label %100

100:                                              ; preds = %99, %97, %88, %79, %73, %45, %25, %11
  %101 = phi i1 [ true, %99 ], [ false, %11 ], [ false, %25 ], [ false, %45 ], [ false, %97 ], [ false, %79 ], [ false, %88 ], [ false, %73 ]
  ret i1 %101
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @trylock_page(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

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
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !15
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #13, !srcloc !36
  %18 = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  %19 = and i32 %18, 1
  %20 = xor i32 %19, 1
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32 [ %20, %16 ], [ 0, %10 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @isolate_lru_page(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @___ratelimit(ptr noundef nonnull @isolate_lru_page._rs, ptr noundef nonnull @__func__.isolate_lru_page) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !10

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 2245, i32 noundef 9, ptr noundef nonnull @.str.22) #13
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = load volatile i32, ptr %2, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !10

15:                                               ; preds = %11
  %16 = add i32 %12, -1
  br label %19

17:                                               ; preds = %11
  %18 = ptrtoint ptr %0 to i32
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %21) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %80, label %24

24:                                               ; preds = %19
  %25 = load volatile i32, ptr %2, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !10

28:                                               ; preds = %24
  %29 = add i32 %25, -1
  br label %32

30:                                               ; preds = %24
  %31 = ptrtoint ptr %0 to i32
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #13, !srcloc !15
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #13, !srcloc !45
  tail call void @_raw_spin_lock_irq(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #13
  %37 = load volatile i32, ptr %2, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !10

40:                                               ; preds = %32
  %41 = add i32 %37, -1
  br label %44

42:                                               ; preds = %32
  %43 = ptrtoint ptr %0 to i32
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.anon.74, ptr %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.anon.74, ptr %46, i32 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  %52 = load volatile i32, ptr %46, align 4
  %53 = and i32 %52, 1048576
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load volatile i32, ptr %46, align 4
  %57 = lshr i32 %56, 18
  %58 = and i32 %57, 2
  %59 = load volatile i32, ptr %46, align 4
  %60 = lshr i32 %59, 5
  %61 = and i32 %60, 1
  %62 = or i32 %61, %58
  %63 = xor i32 %62, 2
  br label %64

64:                                               ; preds = %55, %44
  %65 = phi i32 [ %63, %55 ], [ 4, %44 ]
  %66 = load volatile i32, ptr %46, align 4
  %67 = and i32 %66, 65536
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = getelementptr %struct.page, ptr %46, i32 1, i32 1, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %71, %69 ], [ 1, %64 ]
  %74 = lshr i32 %52, 30
  %75 = sub i32 0, %73
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %65, i32 noundef %75) #13
  %76 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %74
  %77 = add nsw i32 %65, 1
  tail call void @__mod_zone_page_state(ptr noundef %76, i32 noundef %77, i32 noundef %75) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %78 = load i16, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1), align 8
  %79 = add i16 %78, 1
  store i16 %79, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  br label %80

80:                                               ; preds = %72, %19
  %81 = phi i32 [ 0, %72 ], [ -16, %19 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reclaim_pages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.reclaim_stat, align 4
  %4 = alloca %struct.scan_control, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false)
  %6 = getelementptr inbounds { i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, i32, %struct.anon.99, %struct.reclaim_state }, ptr %4, i32 0, i32 5
  store i8 112, ptr %6, align 4
  %7 = getelementptr inbounds { i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, i32, %struct.anon.99, %struct.reclaim_state }, ptr %4, i32 0, i32 6
  store i8 32, ptr %7, align 1
  %8 = getelementptr inbounds { i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, i32, %struct.anon.99, %struct.reclaim_state }, ptr %4, i32 0, i32 11
  store i32 3264, ptr %8, align 4
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 2048
  store i32 %12, ptr %10, align 4
  %13 = load volatile ptr, ptr %0, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %58, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store volatile ptr %2, ptr %2, align 8
  store ptr %2, ptr %5, align 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !10

21:                                               ; preds = %15
  %22 = add i32 %18, -1
  br label %26

23:                                               ; preds = %15
  %24 = getelementptr i8, ptr %17, i32 -4
  %25 = ptrtoint ptr %24 to i32
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %22, %21 ], [ %25, %23 ]
  %28 = inttoptr i32 %27 to ptr
  call void @_clear_bit(i32 noundef 5, ptr noundef %28) #13
  %29 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %17, ptr %34, align 4
  store ptr %33, ptr %17, align 4
  store ptr %2, ptr %29, align 4
  store volatile ptr %17, ptr %2, align 8
  %35 = load volatile ptr, ptr %0, align 4
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %58, label %37

37:                                               ; preds = %47, %26
  %38 = load ptr, ptr %16, align 4
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42, !prof !10

42:                                               ; preds = %37
  %43 = add i32 %39, -1
  br label %47

44:                                               ; preds = %37
  %45 = getelementptr i8, ptr %38, i32 -4
  %46 = ptrtoint ptr %45 to i32
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %43, %42 ], [ %46, %44 ]
  %49 = inttoptr i32 %48 to ptr
  call void @_clear_bit(i32 noundef 5, ptr noundef %49) #13
  %50 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %38, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %38, ptr %55, align 4
  store ptr %54, ptr %38, align 4
  store ptr %2, ptr %50, align 4
  store volatile ptr %38, ptr %2, align 8
  %56 = load volatile ptr, ptr %0, align 4
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %37, !llvm.loop !46

58:                                               ; preds = %47, %26, %1
  %59 = load volatile ptr, ptr %2, align 8
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %90, label %61

61:                                               ; preds = %58
  %62 = call fastcc i32 @shrink_page_list(ptr noundef nonnull %2, ptr noundef nonnull @contig_page_data, ptr noundef nonnull %4, ptr noundef nonnull %3, i1 noundef zeroext false)
  %63 = load volatile ptr, ptr %2, align 8
  %64 = icmp eq ptr %63, %2
  br i1 %64, label %90, label %65

65:                                               ; preds = %87, %61
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr i8, ptr %66, i32 -4
  %68 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %66, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %69, ptr %71, align 4
  store volatile ptr %70, ptr %69, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %66, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %68, align 4
  call void @lru_cache_add(ptr noundef %67) #13
  %72 = load volatile i32, ptr %66, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75, !prof !10

75:                                               ; preds = %65
  %76 = add i32 %72, -1
  br label %79

77:                                               ; preds = %65
  %78 = ptrtoint ptr %67 to i32
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.page, ptr %81, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #13, !srcloc !15
  %83 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #13, !srcloc !34
  %84 = extractvalue { i32, i32 } %83, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !35
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  call void @__put_page(ptr noundef %81) #13
  br label %87

87:                                               ; preds = %86, %79
  %88 = load volatile ptr, ptr %2, align 8
  %89 = icmp eq ptr %88, %2
  br i1 %89, label %90, label %65

90:                                               ; preds = %87, %61, %58
  %91 = phi i32 [ 0, %58 ], [ %62, %61 ], [ %62, %87 ]
  %92 = and i32 %11, 2048
  %93 = load i32, ptr %10, align 4
  %94 = and i32 %93, -2049
  %95 = or i32 %94, %92
  store i32 %95, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @try_to_free_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = alloca %struct.scan_control, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #13
  %8 = getelementptr inbounds i8, ptr %7, i32 24
  store i32 0, ptr %8, align 4, !annotation !9
  store i32 32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 1
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 2
  %11 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  %12 = load i32, ptr @laptop_mode, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i16 112, i16 96
  store i16 %14, ptr %11, align 4
  %15 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 6
  %16 = trunc i32 %1 to i8
  store i8 %16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 7
  store i8 12, ptr %17, align 1
  %18 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 8
  %19 = shl i32 %2, 1
  %20 = and i32 %19, 30
  %21 = lshr i32 19988769, %20
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 3
  store i8 %23, ptr %18, align 4
  %24 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 9
  %25 = tail call ptr @llvm.thread.pointer() #13
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 4
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 269221888
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30, !prof !10

30:                                               ; preds = %4
  %31 = and i32 %27, 524288
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = and i32 %2, -193
  br label %40

35:                                               ; preds = %30
  %36 = and i32 %27, 262144
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %2, -129
  %39 = select i1 %37, i32 %2, i32 %38
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = and i32 %27, 268435456
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %41, -9
  %45 = select i1 %43, i32 %41, i32 %44
  br label %46

46:                                               ; preds = %40, %4
  %47 = phi i32 [ %2, %4 ], [ %45, %40 ]
  store i32 %47, ptr %24, align 4
  %48 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 10
  %49 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 11
  %50 = getelementptr inbounds %struct.scan_control, ptr %7, i32 0, i32 13
  %51 = and i32 %27, 2097152
  %52 = icmp eq i32 %51, 0
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %48, i8 0, i64 40, i1 false)
  br i1 %52, label %53, label %165

53:                                               ; preds = %46
  %54 = load volatile i32, ptr %25, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 98, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 256
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %165

62:                                               ; preds = %57, %53
  %63 = shl i32 %47, 1
  %64 = and i32 %63, 30
  %65 = lshr i32 19988769, %64
  %66 = and i32 %65, 3
  %67 = icmp eq ptr %3, null
  br i1 %67, label %68, label %72, !prof !10

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.zoneref, ptr %0, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %70, %66
  br i1 %71, label %72, label %74, !prof !11

72:                                               ; preds = %68, %62
  %73 = tail call ptr @__next_zones_zonelist(ptr noundef %0, i32 noundef %66, ptr noundef %3) #13
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi ptr [ %73, %72 ], [ %0, %68 ]
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %165, label %78

78:                                               ; preds = %101, %74
  %79 = phi ptr [ %103, %101 ], [ %76, %74 ]
  %80 = phi ptr [ %102, %101 ], [ %75, %74 ]
  %81 = getelementptr inbounds %struct.zone, ptr %79, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = ptrtoint ptr %79 to i32
  %84 = ptrtoint ptr %82 to i32
  %85 = sub i32 %83, %84
  %86 = icmp sgt i32 %85, 896
  br i1 %86, label %93, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.zone, ptr %79, i32 0, i32 4
  %89 = tail call fastcc zeroext i1 @allow_direct_reclaim(ptr noundef %82) #13
  %90 = xor i1 %89, true
  %91 = icmp ne ptr %82, null
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %105, label %165

93:                                               ; preds = %78
  %94 = getelementptr %struct.zoneref, ptr %80, i32 1
  br i1 %67, label %95, label %99, !prof !10

95:                                               ; preds = %93
  %96 = getelementptr %struct.zoneref, ptr %80, i32 1, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp ugt i32 %97, %66
  br i1 %98, label %99, label %101, !prof !11

99:                                               ; preds = %95, %93
  %100 = tail call ptr @__next_zones_zonelist(ptr noundef %94, i32 noundef %66, ptr noundef %3) #13
  br label %101

101:                                              ; preds = %99, %95
  %102 = phi ptr [ %100, %99 ], [ %94, %95 ]
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %165, label %78

105:                                              ; preds = %87
  %106 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %107 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %108 = inttoptr i32 %107 to ptr
  %109 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %108) #7, !srcloc !12
  %110 = add i32 %109, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 31) to i32)
  %111 = inttoptr i32 %110 to ptr
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %106) #13, !srcloc !44
  %114 = and i32 %47, 128
  %115 = icmp eq i32 %114, 0
  %116 = tail call fastcc zeroext i1 @allow_direct_reclaim(ptr noundef nonnull %82) #13
  br i1 %115, label %117, label %138

117:                                              ; preds = %105
  br i1 %116, label %156, label %118

118:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #13, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #13
  %119 = getelementptr inbounds %struct.pglist_data, ptr %82, i32 0, i32 9
  %120 = call i32 @prepare_to_wait_event(ptr noundef %119, ptr noundef nonnull %5, i32 noundef 1) #13
  %121 = call fastcc zeroext i1 @allow_direct_reclaim(ptr noundef nonnull %82) #13
  br i1 %121, label %136, label %122

122:                                              ; preds = %126, %118
  %123 = phi i32 [ %133, %126 ], [ 100, %118 ]
  %124 = phi i32 [ %128, %126 ], [ %120, %118 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = call i32 @schedule_timeout(i32 noundef %123) #13
  %128 = call i32 @prepare_to_wait_event(ptr noundef %119, ptr noundef nonnull %5, i32 noundef 1) #13
  %129 = call fastcc zeroext i1 @allow_direct_reclaim(ptr noundef nonnull %82) #13
  %130 = xor i1 %129, true
  %131 = icmp ne i32 %127, 0
  %132 = select i1 %130, i1 true, i1 %131
  %133 = select i1 %132, i32 %127, i32 1
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %129, i1 true, i1 %134
  br i1 %135, label %136, label %122

136:                                              ; preds = %126, %118
  call void @finish_wait(ptr noundef %119, ptr noundef nonnull %5) #13
  br label %137

137:                                              ; preds = %136, %122
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  br label %156

138:                                              ; preds = %105
  br i1 %116, label %156, label %139

139:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #13, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #13
  %140 = load ptr, ptr %88, align 4
  %141 = getelementptr inbounds %struct.pglist_data, ptr %140, i32 0, i32 9
  %142 = call i32 @prepare_to_wait_event(ptr noundef %141, ptr noundef nonnull %6, i32 noundef 258) #13
  %143 = call fastcc zeroext i1 @allow_direct_reclaim(ptr noundef nonnull %82) #13
  br i1 %143, label %152, label %144

144:                                              ; preds = %147, %139
  %145 = phi i32 [ %150, %147 ], [ %142, %139 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  call void @schedule() #13
  %148 = load ptr, ptr %88, align 4
  %149 = getelementptr inbounds %struct.pglist_data, ptr %148, i32 0, i32 9
  %150 = call i32 @prepare_to_wait_event(ptr noundef %149, ptr noundef nonnull %6, i32 noundef 258) #13
  %151 = call fastcc zeroext i1 @allow_direct_reclaim(ptr noundef nonnull %82) #13
  br i1 %151, label %152, label %144

152:                                              ; preds = %147, %139
  %153 = load ptr, ptr %88, align 4
  %154 = getelementptr inbounds %struct.pglist_data, ptr %153, i32 0, i32 9
  call void @finish_wait(ptr noundef %154, ptr noundef nonnull %6) #13
  br label %155

155:                                              ; preds = %152, %144
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  br label %156

156:                                              ; preds = %155, %138, %137, %117
  %157 = load volatile i32, ptr %25, align 4
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 98, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 256
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %440

165:                                              ; preds = %160, %156, %101, %87, %74, %57, %46
  %166 = icmp eq ptr %50, null
  %167 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 116
  %168 = load ptr, ptr %167, align 8
  br i1 %166, label %174, label %169

169:                                              ; preds = %165
  %170 = icmp ne ptr %168, null
  %171 = load i1, ptr @set_task_reclaim_state.__already_done, align 1
  %172 = xor i1 %171, true
  %173 = select i1 %170, i1 %172, i1 false
  br i1 %173, label %179, label %182, !prof !11

174:                                              ; preds = %165
  %175 = icmp eq ptr %168, null
  %176 = load i1, ptr @set_task_reclaim_state.__already_done.141, align 1
  %177 = xor i1 %176, true
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %182, !prof !11

179:                                              ; preds = %174, %169
  %180 = phi ptr [ @set_task_reclaim_state.__already_done, %169 ], [ @set_task_reclaim_state.__already_done.141, %174 ]
  %181 = phi i32 [ 183, %169 ], [ 186, %174 ]
  store i1 true, ptr %180, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef %181, i32 noundef 9, ptr noundef null) #13
  br label %182

182:                                              ; preds = %179, %174, %169
  store ptr %50, ptr %167, align 8
  %183 = load i32, ptr %24, align 4
  %184 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_direct_reclaim_begin, i32 0, i32 1), align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %188 = load i32, ptr %187, align 8
  %189 = lshr i32 %188, 5
  %190 = getelementptr i32, ptr @__cpu_online_mask, i32 %189
  %191 = load volatile i32, ptr %190, align 4
  %192 = and i32 %188, 31
  %193 = shl nuw i32 1, %192
  %194 = and i32 %193, %191
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %208, label %196

196:                                              ; preds = %186
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  %197 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_direct_reclaim_begin, i32 0, i32 7), align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %207, label %199

199:                                              ; preds = %199, %196
  %200 = phi ptr [ %204, %199 ], [ %197, %196 ]
  %201 = load volatile ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.tracepoint_func, ptr %200, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  call void %201(ptr noundef %203, i32 noundef %1, i32 noundef %183) #13
  %204 = getelementptr %struct.tracepoint_func, ptr %200, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %199

207:                                              ; preds = %199, %196
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  br label %208

208:                                              ; preds = %207, %186, %182
  %209 = load i8, ptr %17, align 1
  %210 = getelementptr inbounds %struct.zoneref, ptr %0, i32 0, i32 1
  br label %211

211:                                              ; preds = %398, %208
  %212 = load i8, ptr %18, align 4
  %213 = sext i8 %212 to i32
  %214 = add nsw i32 %213, 8
  %215 = getelementptr [71 x i32], ptr @vm_event_states, i32 0, i32 %214
  %216 = ptrtoint ptr %215 to i32
  %217 = call i32 @llvm.read_register.i32(metadata !0) #13
  %218 = inttoptr i32 %217 to ptr
  %219 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %218) #7, !srcloc !12
  %220 = add i32 %219, %216
  %221 = inttoptr i32 %220 to ptr
  %222 = load i32, ptr %221, align 4
  %223 = add i32 %222, 1
  store i32 %223, ptr %221, align 4
  %224 = load i32, ptr %24, align 4
  %225 = or i32 %224, 2
  %226 = shl i32 %225, 1
  %227 = and i32 %226, 30
  %228 = lshr i32 19988769, %227
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 3
  br label %231

231:                                              ; preds = %340, %211
  store i32 0, ptr %48, align 4
  %232 = load i32, ptr @buffer_heads_over_limit, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = load i8, ptr %18, align 4
  br label %237

236:                                              ; preds = %231
  store i32 %225, ptr %24, align 4
  store i8 %230, ptr %18, align 4
  br label %237

237:                                              ; preds = %236, %234
  %238 = phi i8 [ %235, %234 ], [ %230, %236 ]
  %239 = sext i8 %238 to i32
  %240 = load ptr, ptr %9, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %245, !prof !10

242:                                              ; preds = %237
  %243 = load i32, ptr %210, align 4
  %244 = icmp ugt i32 %243, %239
  br i1 %244, label %245, label %247, !prof !11

245:                                              ; preds = %242, %237
  %246 = call ptr @__next_zones_zonelist(ptr noundef %0, i32 noundef %239, ptr noundef %240) #13
  br label %247

247:                                              ; preds = %245, %242
  %248 = phi ptr [ %246, %245 ], [ %0, %242 ]
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %327, label %251

251:                                              ; preds = %300, %247
  %252 = phi ptr [ %302, %300 ], [ %249, %247 ]
  %253 = phi ptr [ %288, %300 ], [ null, %247 ]
  %254 = phi ptr [ %287, %300 ], [ null, %247 ]
  %255 = phi ptr [ %301, %300 ], [ %248, %247 ]
  %256 = load i8, ptr %15, align 2
  %257 = icmp sgt i8 %256, 3
  br i1 %257, label %258, label %279

258:                                              ; preds = %251
  %259 = zext i8 %256 to i32
  %260 = load i8, ptr %18, align 4
  %261 = sext i8 %260 to i32
  %262 = call i32 @compaction_suitable(ptr noundef nonnull %252, i32 noundef %259, i32 noundef 0, i32 noundef %261) #13
  switch i32 %262, label %263 [
    i32 8, label %276
    i32 1, label %279
  ]

263:                                              ; preds = %258
  %264 = getelementptr [3 x i32], ptr %252, i32 0, i32 2
  %265 = load i32, ptr %264, align 8
  %266 = getelementptr inbounds %struct.zone, ptr %252, i32 0, i32 1
  %267 = load i32, ptr %266, align 4
  %268 = add i32 %267, %265
  %269 = load i8, ptr %15, align 2
  %270 = zext i8 %269 to i32
  %271 = shl i32 2, %270
  %272 = add i32 %268, %271
  %273 = load i8, ptr %18, align 4
  %274 = sext i8 %273 to i32
  %275 = call zeroext i1 @zone_watermark_ok_safe(ptr noundef nonnull %252, i32 noundef 0, i32 noundef %272, i32 noundef %274) #13
  br i1 %275, label %276, label %279

276:                                              ; preds = %263, %258
  %277 = load i16, ptr %11, align 4
  %278 = or i16 %277, 1024
  store i16 %278, ptr %11, align 4
  br label %286

279:                                              ; preds = %263, %258, %251
  %280 = getelementptr inbounds %struct.zone, ptr %252, i32 0, i32 4
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, %254
  br i1 %282, label %286, label %283

283:                                              ; preds = %279
  %284 = icmp eq ptr %253, null
  %285 = select i1 %284, ptr %281, ptr %253
  call fastcc void @shrink_node(ptr noundef %281, ptr noundef nonnull %7) #13
  br label %286

286:                                              ; preds = %283, %279, %276
  %287 = phi ptr [ %281, %283 ], [ %254, %276 ], [ %254, %279 ]
  %288 = phi ptr [ %285, %283 ], [ %253, %276 ], [ %253, %279 ]
  %289 = getelementptr %struct.zoneref, ptr %255, i32 1
  %290 = load i8, ptr %18, align 4
  %291 = sext i8 %290 to i32
  %292 = load ptr, ptr %9, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %298, !prof !10

294:                                              ; preds = %286
  %295 = getelementptr %struct.zoneref, ptr %255, i32 1, i32 1
  %296 = load i32, ptr %295, align 4
  %297 = icmp ugt i32 %296, %291
  br i1 %297, label %298, label %300, !prof !11

298:                                              ; preds = %294, %286
  %299 = call ptr @__next_zones_zonelist(ptr noundef %289, i32 noundef %291, ptr noundef %292) #13
  br label %300

300:                                              ; preds = %298, %294
  %301 = phi ptr [ %299, %298 ], [ %289, %294 ]
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %251

304:                                              ; preds = %300
  %305 = icmp eq ptr %288, null
  br i1 %305, label %327, label %306

306:                                              ; preds = %304
  %307 = load i32, ptr %49, align 4
  %308 = load i32, ptr %48, align 4
  %309 = lshr i32 %308, 3
  %310 = icmp ugt i32 %307, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %306
  %312 = getelementptr %struct.pglist_data, ptr %288, i32 0, i32 10, i32 2, i32 1
  %313 = load volatile ptr, ptr %312, align 4
  %314 = icmp eq ptr %313, %312
  br i1 %314, label %327, label %315

315:                                              ; preds = %311
  %316 = getelementptr %struct.pglist_data, ptr %288, i32 0, i32 10, i32 2
  call void @__wake_up(ptr noundef %316, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %327

317:                                              ; preds = %306
  %318 = load i32, ptr %26, align 4
  %319 = and i32 %318, 131072
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %317
  %322 = load i8, ptr %17, align 1
  %323 = icmp eq i8 %322, 1
  %324 = icmp eq i32 %307, 0
  %325 = select i1 %323, i1 %324, i1 false
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  call void @reclaim_throttle(ptr noundef nonnull %288, i32 noundef 2) #13
  br label %327

327:                                              ; preds = %326, %321, %317, %315, %311, %304, %247
  store i32 %224, ptr %24, align 4
  %328 = load i32, ptr %49, align 4
  %329 = load i32, ptr %7, align 4
  %330 = icmp ult i32 %328, %329
  br i1 %330, label %331, label %343

331:                                              ; preds = %327
  %332 = load i16, ptr %11, align 4
  %333 = and i16 %332, 1024
  %334 = icmp eq i16 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %331
  %336 = load i8, ptr %17, align 1
  %337 = icmp slt i8 %336, 10
  br i1 %337, label %338, label %340

338:                                              ; preds = %335
  %339 = or i16 %332, 16
  store i16 %339, ptr %11, align 4
  br label %340

340:                                              ; preds = %338, %335
  %341 = add i8 %336, -1
  store i8 %341, ptr %17, align 1
  %342 = icmp sgt i8 %341, -1
  br i1 %342, label %231, label %343

343:                                              ; preds = %340, %331, %327
  %344 = load i8, ptr %18, align 4
  %345 = sext i8 %344 to i32
  %346 = load ptr, ptr %9, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %351, !prof !10

348:                                              ; preds = %343
  %349 = load i32, ptr %210, align 4
  %350 = icmp ugt i32 %349, %345
  br i1 %350, label %351, label %353, !prof !11

351:                                              ; preds = %348, %343
  %352 = call ptr @__next_zones_zonelist(ptr noundef %0, i32 noundef %345, ptr noundef %346) #13
  br label %353

353:                                              ; preds = %351, %348
  %354 = phi ptr [ %352, %351 ], [ %0, %348 ]
  %355 = load ptr, ptr %354, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %388, label %357

357:                                              ; preds = %384, %353
  %358 = phi ptr [ %386, %384 ], [ %355, %353 ]
  %359 = phi ptr [ %385, %384 ], [ %354, %353 ]
  %360 = phi ptr [ %372, %384 ], [ null, %353 ]
  %361 = getelementptr inbounds %struct.zone, ptr %358, i32 0, i32 4
  %362 = load ptr, ptr %361, align 4
  %363 = icmp eq ptr %362, %360
  br i1 %363, label %371, label %364

364:                                              ; preds = %357
  %365 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 12), align 4
  %366 = call i32 @llvm.smax.i32(i32 %365, i32 0) #13
  %367 = getelementptr inbounds %struct.pglist_data, ptr %362, i32 0, i32 24, i32 5
  store i32 %366, ptr %367, align 4
  %368 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 13), align 4
  %369 = call i32 @llvm.smax.i32(i32 %368, i32 0) #13
  %370 = getelementptr %struct.pglist_data, ptr %362, i32 0, i32 24, i32 5, i32 1
  store i32 %369, ptr %370, align 4
  br label %371

371:                                              ; preds = %364, %357
  %372 = phi ptr [ %360, %357 ], [ %362, %364 ]
  %373 = getelementptr %struct.zoneref, ptr %359, i32 1
  %374 = load i8, ptr %18, align 4
  %375 = sext i8 %374 to i32
  %376 = load ptr, ptr %9, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %382, !prof !10

378:                                              ; preds = %371
  %379 = getelementptr %struct.zoneref, ptr %359, i32 1, i32 1
  %380 = load i32, ptr %379, align 4
  %381 = icmp ugt i32 %380, %375
  br i1 %381, label %382, label %384, !prof !11

382:                                              ; preds = %378, %371
  %383 = call ptr @__next_zones_zonelist(ptr noundef %373, i32 noundef %375, ptr noundef %376) #13
  br label %384

384:                                              ; preds = %382, %378
  %385 = phi ptr [ %383, %382 ], [ %373, %378 ]
  %386 = load ptr, ptr %385, align 4
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %357

388:                                              ; preds = %384, %353
  %389 = load i32, ptr %49, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %406

391:                                              ; preds = %388
  %392 = load i16, ptr %11, align 4
  %393 = and i16 %392, 1024
  %394 = icmp eq i16 %393, 0
  br i1 %394, label %395, label %406

395:                                              ; preds = %391
  %396 = and i16 %392, 8
  %397 = icmp eq i16 %396, 0
  br i1 %397, label %403, label %398

398:                                              ; preds = %403, %395
  %399 = phi i16 [ -389, %403 ], [ -13, %395 ]
  %400 = phi i16 [ 128, %403 ], [ 4, %395 ]
  store i8 %209, ptr %17, align 1
  %401 = and i16 %399, %392
  %402 = or i16 %401, %400
  store i16 %402, ptr %11, align 4
  br label %211

403:                                              ; preds = %395
  %404 = and i16 %392, 256
  %405 = icmp eq i16 %404, 0
  br i1 %405, label %406, label %398

406:                                              ; preds = %403, %391, %388
  %407 = phi i32 [ %389, %388 ], [ 1, %391 ], [ 0, %403 ]
  %408 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_direct_reclaim_end, i32 0, i32 1), align 4
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %432

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %412 = load i32, ptr %411, align 8
  %413 = lshr i32 %412, 5
  %414 = getelementptr i32, ptr @__cpu_online_mask, i32 %413
  %415 = load volatile i32, ptr %414, align 4
  %416 = and i32 %412, 31
  %417 = shl nuw i32 1, %416
  %418 = and i32 %417, %415
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %432, label %420

420:                                              ; preds = %410
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !50
  %421 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_direct_reclaim_end, i32 0, i32 7), align 4
  %422 = icmp eq ptr %421, null
  br i1 %422, label %431, label %423

423:                                              ; preds = %423, %420
  %424 = phi ptr [ %428, %423 ], [ %421, %420 ]
  %425 = load volatile ptr, ptr %424, align 4
  %426 = getelementptr inbounds %struct.tracepoint_func, ptr %424, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  call void %425(ptr noundef %427, i32 noundef %407) #13
  %428 = getelementptr %struct.tracepoint_func, ptr %424, i32 1
  %429 = load ptr, ptr %428, align 4
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %423

431:                                              ; preds = %423, %420
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !51
  br label %432

432:                                              ; preds = %431, %410, %406
  %433 = load ptr, ptr %167, align 8
  %434 = icmp eq ptr %433, null
  %435 = load i1, ptr @set_task_reclaim_state.__already_done.141, align 1
  %436 = xor i1 %435, true
  %437 = select i1 %434, i1 %436, i1 false
  br i1 %437, label %438, label %439, !prof !11

438:                                              ; preds = %432
  store i1 true, ptr @set_task_reclaim_state.__already_done.141, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 186, i32 noundef 9, ptr noundef null) #13
  br label %439

439:                                              ; preds = %438, %432
  store ptr null, ptr %167, align 8
  br label %440

440:                                              ; preds = %439, %160
  %441 = phi i32 [ %407, %439 ], [ 1, %160 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #13
  ret i32 %441
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_kswapd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 11
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %100, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pglist_data, ptr %10, i32 0, i32 15
  %12 = load volatile i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 4
  %14 = icmp ult i32 %12, %3
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store volatile i32 %3, ptr %11, align 8
  br label %17

17:                                               ; preds = %16, %8
  %18 = getelementptr inbounds %struct.pglist_data, ptr %10, i32 0, i32 14
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp slt i32 %19, %2
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store volatile i32 %2, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.pglist_data, ptr %10, i32 0, i32 8
  %24 = getelementptr inbounds %struct.pglist_data, ptr %10, i32 0, i32 8, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %100, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pglist_data, ptr %10, i32 0, i32 16
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, 15
  %31 = icmp slt i32 %3, 0
  %32 = or i1 %31, %30
  br i1 %32, label %67, label %33

33:                                               ; preds = %47, %27
  %34 = phi i32 [ %48, %47 ], [ -1, %27 ]
  %35 = phi i32 [ %49, %47 ], [ 0, %27 ]
  %36 = getelementptr %struct.zone, ptr %10, i32 %35, i32 11
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = getelementptr %struct.zone, ptr %10, i32 %35
  %41 = getelementptr [3 x i32], ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr %struct.zone, ptr %10, i32 %35, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = tail call zeroext i1 @zone_watermark_ok_safe(ptr noundef %40, i32 noundef %2, i32 noundef %45, i32 noundef %3) #13
  br i1 %46, label %53, label %47

47:                                               ; preds = %39, %33
  %48 = phi i32 [ %45, %39 ], [ %34, %33 ]
  %49 = add i32 %35, 1
  %50 = icmp sgt i32 %49, %3
  br i1 %50, label %51, label %33

51:                                               ; preds = %47
  %52 = icmp eq i32 %48, -1
  br i1 %52, label %53, label %71

53:                                               ; preds = %51, %39
  %54 = icmp sgt i32 %3, -1
  br i1 %54, label %55, label %67

55:                                               ; preds = %64, %53
  %56 = phi i32 [ %65, %64 ], [ %3, %53 ]
  %57 = getelementptr %struct.zone, ptr %10, i32 %56, i32 11
  %58 = load volatile i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = getelementptr %struct.zone, ptr %10, i32 %56, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60, %55
  %65 = add nsw i32 %56, -1
  %66 = icmp sgt i32 %56, 0
  br i1 %66, label %55, label %67

67:                                               ; preds = %64, %53, %27
  %68 = and i32 %1, 1024
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %67
  tail call void @wakeup_kcompactd(ptr noundef %10, i32 noundef %2, i32 noundef %3) #13
  br label %100

71:                                               ; preds = %60, %51
  %72 = getelementptr inbounds %struct.pglist_data, ptr %10, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_wakeup_kswapd, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = tail call ptr @llvm.thread.pointer() #13
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !52
  %88 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_wakeup_kswapd, i32 0, i32 7), align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %90, %87
  %91 = phi ptr [ %95, %90 ], [ %88, %87 ]
  %92 = load volatile ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.tracepoint_func, ptr %91, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void %92(ptr noundef %94, i32 noundef %73, i32 noundef %3, i32 noundef %2, i32 noundef %1) #13
  %95 = getelementptr %struct.tracepoint_func, ptr %91, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %90

98:                                               ; preds = %90, %87
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !53
  br label %99

99:                                               ; preds = %98, %76, %71
  tail call void @__wake_up(ptr noundef %23, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %100

100:                                              ; preds = %99, %70, %67, %22, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_kcompactd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kswapd_run(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 13), align 16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kswapd, ptr noundef nonnull @contig_page_data, i32 noundef -1, ptr noundef nonnull @.str.23, i32 noundef %0) #13
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @wake_up_process(ptr noundef %5) #13
  br label %15

9:                                                ; preds = %4
  store ptr %5, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 13), align 16
  %10 = load i32, ptr @system_state, align 4
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmscan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4638, 0\0A.popsection", ""() #13, !srcloc !54
  unreachable

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %0) #16
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %5, %7 ], [ null, %13 ]
  store ptr %16, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 13), align 16
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kswapd(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = tail call ptr @llvm.thread.pointer() #13
  %4 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 7
  %5 = load i32, ptr @__cpu_online_mask, align 4
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %3, ptr noundef nonnull @__cpu_online_mask) #13
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 8521728
  store i32 %13, ptr %11, align 4
  %14 = tail call zeroext i1 @set_freezable() #13
  %15 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 14
  store volatile i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 15
  store volatile i32 4, ptr %16, align 8
  %17 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 11
  store volatile i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  %22 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 8
  %23 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  br label %24

24:                                               ; preds = %147, %10
  %25 = phi i32 [ 3, %10 ], [ %107, %147 ]
  %26 = load volatile i32, ptr %15, align 4
  %27 = load volatile i32, ptr %16, align 8
  %28 = icmp eq i32 %27, 4
  %29 = select i1 %28, i32 %25, i32 %27
  br label %30

30:                                               ; preds = %143, %24
  %31 = phi i32 [ %29, %24 ], [ %107, %143 ]
  %32 = phi i32 [ %26, %24 ], [ %144, %143 ]
  %33 = phi i32 [ %26, %24 ], [ %104, %143 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  store ptr %3, ptr %18, align 4
  store ptr @autoremove_wake_function, ptr %19, align 4
  store ptr %20, ptr %20, align 4
  store ptr %20, ptr %21, align 4
  %34 = load volatile i32, ptr @system_freezing_cnt, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !10

36:                                               ; preds = %30
  %37 = call zeroext i1 @freezing_slow_path(ptr noundef %3) #13
  br i1 %37, label %103, label %38

38:                                               ; preds = %36, %30
  %39 = call zeroext i1 @kthread_should_stop() #13
  br i1 %39, label %103, label %40

40:                                               ; preds = %38
  call void @prepare_to_wait(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 1) #13
  %41 = call fastcc zeroext i1 @prepare_kswapd_sleep(ptr noundef %0, i32 noundef %32, i32 noundef %31) #13
  br i1 %41, label %42, label %53

42:                                               ; preds = %40
  call void @reset_isolation_suitable(ptr noundef %0) #13
  call void @wakeup_kcompactd(ptr noundef %0, i32 noundef %33, i32 noundef %31) #13
  %43 = call i32 @schedule_timeout(i32 noundef 10) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load volatile i32, ptr %16, align 8
  %47 = icmp eq i32 %46, 4
  %48 = select i1 %47, i32 %31, i32 %46
  store volatile i32 %48, ptr %16, align 8
  %49 = load volatile i32, ptr %15, align 4
  %50 = icmp slt i32 %49, %32
  br i1 %50, label %51, label %84

51:                                               ; preds = %45
  store volatile i32 %32, ptr %15, align 4
  br label %84

52:                                               ; preds = %42
  call void @finish_wait(ptr noundef %22, ptr noundef nonnull %2) #13
  call void @prepare_to_wait(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %53

53:                                               ; preds = %52, %40
  %54 = call fastcc zeroext i1 @prepare_kswapd_sleep(ptr noundef %0, i32 noundef %32, i32 noundef %31) #13
  br i1 %54, label %55, label %93

55:                                               ; preds = %53
  %56 = load i32, ptr %4, align 4
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_kswapd_sleep, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32, ptr %23, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %59
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !55
  %69 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_kswapd_sleep, i32 0, i32 7), align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %71, %68
  %72 = phi ptr [ %76, %71 ], [ %69, %68 ]
  %73 = load volatile ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.tracepoint_func, ptr %72, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  call void %73(ptr noundef %75, i32 noundef %56) #13
  %76 = getelementptr %struct.tracepoint_func, ptr %72, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %71

79:                                               ; preds = %71, %68
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !56
  br label %80

80:                                               ; preds = %79, %59, %55
  call void @set_pgdat_percpu_threshold(ptr noundef %0, ptr noundef nonnull @calculate_normal_threshold) #13
  %81 = call zeroext i1 @kthread_should_stop() #13
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  call void @schedule() #13
  br label %83

83:                                               ; preds = %82, %80
  call void @set_pgdat_percpu_threshold(ptr noundef %0, ptr noundef nonnull @calculate_pressure_threshold) #13
  br label %102

84:                                               ; preds = %51, %45
  call void @finish_wait(ptr noundef %22, ptr noundef nonnull %2) #13
  call void @prepare_to_wait(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 1) #13
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %86 = call i32 @llvm.read_register.i32(metadata !0) #13
  %87 = inttoptr i32 %86 to ptr
  %88 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %87) #7, !srcloc !12
  %89 = add i32 %88, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 39) to i32)
  %90 = inttoptr i32 %89 to ptr
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #13, !srcloc !44
  br label %102

93:                                               ; preds = %53
  %94 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %95 = call i32 @llvm.read_register.i32(metadata !0) #13
  %96 = inttoptr i32 %95 to ptr
  %97 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %96) #7, !srcloc !12
  %98 = add i32 %97, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 40) to i32)
  %99 = inttoptr i32 %98 to ptr
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %94) #13, !srcloc !44
  br label %102

102:                                              ; preds = %93, %84, %83
  call void @finish_wait(ptr noundef %22, ptr noundef nonnull %2) #13
  br label %103

103:                                              ; preds = %102, %38, %36
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  %104 = load volatile i32, ptr %15, align 4
  %105 = load volatile i32, ptr %16, align 8
  %106 = icmp eq i32 %105, 4
  %107 = select i1 %106, i32 %31, i32 %105
  store volatile i32 0, ptr %15, align 4
  store volatile i32 4, ptr %16, align 8
  %108 = load volatile i32, ptr @system_freezing_cnt, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110, !prof !10

110:                                              ; preds = %103
  %111 = call zeroext i1 @freezing_slow_path(ptr noundef %3) #13
  br i1 %111, label %112, label %114, !prof !11

112:                                              ; preds = %110
  %113 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %114

114:                                              ; preds = %112, %110, %103
  %115 = phi i1 [ %113, %112 ], [ false, %110 ], [ false, %103 ]
  %116 = call zeroext i1 @kthread_should_stop() #13
  %117 = select i1 %116, i1 true, i1 %115
  br i1 %117, label %146, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %4, align 4
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_kswapd_wake, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %118
  %123 = load i32, ptr %23, align 8
  %124 = lshr i32 %123, 5
  %125 = getelementptr i32, ptr @__cpu_online_mask, i32 %124
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %123, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %128, %126
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %122
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  %132 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_kswapd_wake, i32 0, i32 7), align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %142, label %134

134:                                              ; preds = %134, %131
  %135 = phi ptr [ %139, %134 ], [ %132, %131 ]
  %136 = load volatile ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.tracepoint_func, ptr %135, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  call void %136(ptr noundef %138, i32 noundef %119, i32 noundef %107, i32 noundef %104) #13
  %139 = getelementptr %struct.tracepoint_func, ptr %135, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %134

142:                                              ; preds = %134, %131
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  br label %143

143:                                              ; preds = %142, %122, %118
  %144 = call fastcc i32 @balance_pgdat(ptr noundef %0, i32 noundef %104, i32 noundef %107)
  %145 = icmp ult i32 %144, %104
  br i1 %145, label %30, label %147

146:                                              ; preds = %114
  br i1 %116, label %148, label %147

147:                                              ; preds = %146, %143
  br label %24

148:                                              ; preds = %146
  %149 = load i32, ptr %11, align 4
  %150 = and i32 %149, -8521729
  store i32 %150, ptr %11, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kswapd_stop(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 13), align 16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @kthread_stop(ptr noundef nonnull %2) #13
  store ptr null, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 13), align 16
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @kswapd_init() #6 section ".init.text" {
  tail call void @swap_setup() #13
  tail call void @kswapd_run(i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @check_move_unevictable_pages(ptr nocapture noundef readonly %0) #0 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %214, label %4

4:                                                ; preds = %179, %1
  %5 = phi i32 [ %12, %179 ], [ 0, %1 ]
  %6 = phi i32 [ %181, %179 ], [ 0, %1 ]
  %7 = phi ptr [ %180, %179 ], [ null, %1 ]
  %8 = getelementptr %struct.pagevec, ptr %0, i32 0, i32 2, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = add nuw nsw i32 %5, 1
  %13 = load volatile i32, ptr %10, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !10

16:                                               ; preds = %4
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %4
  %19 = ptrtoint ptr %9 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %22) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %179, label %25

25:                                               ; preds = %20
  %26 = icmp eq ptr %7, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %7, i32 -3776
  %29 = icmp eq ptr %28, @contig_page_data
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.lruvec, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  br label %34

34:                                               ; preds = %30, %25
  tail call void @_raw_spin_lock_irq(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #13
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi ptr [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24), %34 ], [ %7, %27 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  %37 = tail call ptr @page_mapping(ptr noundef %9) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.address_space, ptr %37, i32 0, i32 10
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br label %167

45:                                               ; preds = %39, %35
  %46 = load volatile i32, ptr %10, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !10

49:                                               ; preds = %45
  %50 = add i32 %46, -1
  br label %53

51:                                               ; preds = %45
  %52 = ptrtoint ptr %9 to i32
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = inttoptr i32 %54 to ptr
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 2097152
  %58 = icmp eq i32 %57, 0
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br i1 %58, label %59, label %167

59:                                               ; preds = %53
  %60 = load volatile i32, ptr %10, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !10

63:                                               ; preds = %59
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %59
  %66 = ptrtoint ptr %9 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1048576
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %167, label %73

73:                                               ; preds = %67
  %74 = load volatile i32, ptr %10, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !10

77:                                               ; preds = %73
  %78 = add i32 %74, -1
  br label %81

79:                                               ; preds = %73
  %80 = ptrtoint ptr %9 to i32
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.anon.74, ptr %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.anon.74, ptr %83, i32 0, i32 1, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %84, align 4
  %88 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %86, ptr %88, align 4
  store volatile ptr %87, ptr %86, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %85, align 4
  %89 = load volatile i32, ptr %83, align 4
  %90 = and i32 %89, 1048576
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %81
  %93 = load volatile i32, ptr %83, align 4
  %94 = lshr i32 %93, 18
  %95 = and i32 %94, 2
  %96 = load volatile i32, ptr %83, align 4
  %97 = lshr i32 %96, 5
  %98 = and i32 %97, 1
  %99 = or i32 %98, %95
  %100 = xor i32 %99, 2
  br label %101

101:                                              ; preds = %92, %81
  %102 = phi i32 [ %100, %92 ], [ 4, %81 ]
  %103 = load volatile i32, ptr %83, align 4
  %104 = and i32 %103, 65536
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = getelementptr %struct.page, ptr %83, i32 1, i32 1, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %101
  %110 = phi i32 [ %108, %106 ], [ 1, %101 ]
  %111 = lshr i32 %89, 30
  %112 = sub i32 0, %110
  %113 = getelementptr i8, ptr %36, i32 -3776
  tail call void @__mod_node_page_state(ptr noundef %113, i32 noundef %102, i32 noundef %112) #13
  %114 = getelementptr [4 x %struct.zone], ptr %113, i32 0, i32 %111
  %115 = add nsw i32 %102, 1
  tail call void @__mod_zone_page_state(ptr noundef %114, i32 noundef %115, i32 noundef %112) #13
  %116 = load volatile i32, ptr %10, align 4
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119, !prof !10

119:                                              ; preds = %109
  %120 = add i32 %116, -1
  br label %123

121:                                              ; preds = %109
  %122 = ptrtoint ptr %9 to i32
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = inttoptr i32 %124 to ptr
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %125) #13
  %126 = load volatile i32, ptr %10, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129, !prof !10

129:                                              ; preds = %123
  %130 = add i32 %126, -1
  br label %133

131:                                              ; preds = %123
  %132 = ptrtoint ptr %9 to i32
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = inttoptr i32 %134 to ptr
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %136, 1048576
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load volatile i32, ptr %135, align 4
  %141 = lshr i32 %140, 18
  %142 = and i32 %141, 2
  %143 = load volatile i32, ptr %135, align 4
  %144 = lshr i32 %143, 5
  %145 = and i32 %144, 1
  %146 = or i32 %145, %142
  %147 = xor i32 %146, 2
  br label %148

148:                                              ; preds = %139, %133
  %149 = phi i32 [ %147, %139 ], [ 4, %133 ]
  %150 = load volatile i32, ptr %135, align 4
  %151 = and i32 %150, 65536
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = getelementptr %struct.page, ptr %135, i32 1, i32 1, i32 0, i32 2
  %155 = load i32, ptr %154, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = phi i32 [ %155, %153 ], [ 1, %148 ]
  %158 = lshr i32 %136, 30
  tail call void @__mod_node_page_state(ptr noundef %113, i32 noundef %149, i32 noundef %157) #13
  %159 = getelementptr [4 x %struct.zone], ptr %113, i32 0, i32 %158
  %160 = add nsw i32 %149, 1
  tail call void @__mod_zone_page_state(ptr noundef %159, i32 noundef %160, i32 noundef %157) #13
  %161 = getelementptr inbounds %struct.anon.74, ptr %135, i32 0, i32 1
  %162 = getelementptr [5 x %struct.list_head], ptr %36, i32 0, i32 %149
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.list_head, ptr %163, i32 0, i32 1
  store ptr %161, ptr %164, align 4
  store ptr %163, ptr %161, align 4
  %165 = getelementptr inbounds %struct.anon.74, ptr %135, i32 0, i32 1, i32 1
  store ptr %162, ptr %165, align 4
  store volatile ptr %161, ptr %162, align 4
  %166 = add i32 %6, 1
  br label %167

167:                                              ; preds = %156, %67, %53, %44
  %168 = phi i32 [ %166, %156 ], [ %6, %67 ], [ %6, %53 ], [ %6, %44 ]
  %169 = load volatile i32, ptr %10, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172, !prof !10

172:                                              ; preds = %167
  %173 = add i32 %169, -1
  br label %176

174:                                              ; preds = %167
  %175 = ptrtoint ptr %9 to i32
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = inttoptr i32 %177 to ptr
  tail call void @_set_bit(i32 noundef 4, ptr noundef %178) #13
  br label %179

179:                                              ; preds = %176, %20
  %180 = phi ptr [ %36, %176 ], [ %7, %20 ]
  %181 = phi i32 [ %168, %176 ], [ %6, %20 ]
  %182 = load i8, ptr %0, align 4
  %183 = zext i8 %182 to i32
  %184 = icmp ult i32 %12, %183
  br i1 %184, label %4, label %185

185:                                              ; preds = %179
  %186 = icmp eq ptr %180, null
  br i1 %186, label %205, label %187

187:                                              ; preds = %185
  %188 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %189 = inttoptr i32 %188 to ptr
  %190 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %189) #7, !srcloc !12
  %191 = add i32 %190, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 64) to i32)
  %192 = inttoptr i32 %191 to ptr
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, %181
  store i32 %194, ptr %192, align 4
  %195 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %196 = inttoptr i32 %195 to ptr
  %197 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %196) #7, !srcloc !12
  %198 = add i32 %197, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 63) to i32)
  %199 = inttoptr i32 %198 to ptr
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, %12
  store i32 %201, ptr %199, align 4
  %202 = getelementptr inbounds %struct.lruvec, ptr %180, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %203 = load i16, ptr %202, align 4
  %204 = add i16 %203, 1
  store i16 %204, ptr %202, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  br label %214

205:                                              ; preds = %185
  %206 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %207 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %208 = inttoptr i32 %207 to ptr
  %209 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %208) #7, !srcloc !12
  %210 = add i32 %209, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 63) to i32)
  %211 = inttoptr i32 %210 to ptr
  %212 = load i32, ptr %211, align 4
  %213 = add i32 %212, %12
  store i32 %213, ptr %211, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %206) #13, !srcloc !44
  br label %214

214:                                              ; preds = %205, %187, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_kswapd_sleep(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_sleep, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %11) #13
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_kswapd_wake(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_wake, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_kswapd_wake, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %11, i32 noundef %13) #13
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_wakeup_kswapd(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %7, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_wakeup_kswapd, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %16, ptr noundef nonnull @trace_raw_output_mm_vmscan_wakeup_kswapd.__flags) #13
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi ptr [ %19, %18 ], [ @.str.72, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %12, i32 noundef %14, ptr noundef %21) #13
  %22 = tail call i32 @trace_handle_return(ptr noundef %4) #13
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i32 [ %22, %20 ], [ %8, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_direct_reclaim_begin_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_direct_reclaim_begin_template, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_direct_reclaim_begin_template, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %14, ptr noundef nonnull @trace_raw_output_mm_vmscan_direct_reclaim_begin_template.__flags) #13
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %17, %16 ], [ @.str.72, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.73, i32 noundef %12, ptr noundef %19) #13
  %20 = tail call i32 @trace_handle_return(ptr noundef %4) #13
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i32 [ %20, %18 ], [ %8, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_direct_reclaim_end_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_direct_reclaim_end_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.76, i32 noundef %11) #13
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_shrink_slab_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %7, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %7, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %10
  %23 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %20, ptr noundef nonnull @trace_raw_output_mm_shrink_slab_start.__flags) #13
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi ptr [ %23, %22 ], [ @.str.72, %10 ]
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %7, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %7, i32 0, i32 7
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %7, i32 0, i32 8
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_start, ptr %7, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.88, ptr noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef %18, ptr noundef %25, i32 noundef %27, i64 noundef %29, i32 noundef %31, i32 noundef %33) #13
  %34 = tail call i32 @trace_handle_return(ptr noundef %4) #13
  br label %35

35:                                               ; preds = %24, %3
  %36 = phi i32 [ %34, %24 ], [ %8, %3 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_shrink_slab_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %5, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_shrink_slab_end, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #13
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_lru_isolate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %5, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %5, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %5, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %5, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %5, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_isolate, ptr %5, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %26, ptr noundef nonnull @trace_raw_output_mm_vmscan_lru_isolate.symbols) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef %27) #13
  %28 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_writepage(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load ptr, ptr @mem_map, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_writepage, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %15 = sub i32 %13, %14
  %16 = getelementptr %struct.page, ptr %11, i32 %15
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_writepage, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %18, ptr noundef nonnull @trace_raw_output_mm_vmscan_writepage.__flags) #13
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi ptr [ %21, %20 ], [ @.str.115, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.109, ptr noundef %16, i32 noundef %13, ptr noundef %23) #13
  %24 = tail call i32 @trace_handle_return(ptr noundef %4) #13
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ %24, %22 ], [ %8, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_lru_shrink_inactive(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %43

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_inactive, ptr %7, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %10
  %39 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %36, ptr noundef nonnull @trace_raw_output_mm_vmscan_lru_shrink_inactive.__flags) #13
  br label %40

40:                                               ; preds = %38, %10
  %41 = phi ptr [ %39, %38 ], [ @.str.115, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.125, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, ptr noundef %41) #13
  %42 = tail call i32 @trace_handle_return(ptr noundef %4) #13
  br label %43

43:                                               ; preds = %40, %3
  %44 = phi i32 [ %42, %40 ], [ %8, %3 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_lru_shrink_active(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %7, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %7, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %7, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_lru_shrink_active, ptr %7, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %10
  %27 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %24, ptr noundef nonnull @trace_raw_output_mm_vmscan_lru_shrink_active.__flags) #13
  br label %28

28:                                               ; preds = %26, %10
  %29 = phi ptr [ %27, %26 ], [ @.str.115, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.129, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef %29) #13
  %30 = tail call i32 @trace_handle_return(ptr noundef %4) #13
  br label %31

31:                                               ; preds = %28, %3
  %32 = phi i32 [ %30, %28 ], [ %8, %3 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_node_reclaim_begin(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_node_reclaim_begin, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_node_reclaim_begin, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_node_reclaim_begin, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %16, ptr noundef nonnull @trace_raw_output_mm_vmscan_node_reclaim_begin.__flags) #13
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi ptr [ %19, %18 ], [ @.str.72, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %12, i32 noundef %14, ptr noundef %21) #13
  %22 = tail call i32 @trace_handle_return(ptr noundef %4) #13
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i32 [ %22, %20 ], [ %8, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_vmscan_throttled(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_vmscan_throttled, ptr %7, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %18, ptr noundef nonnull @trace_raw_output_mm_vmscan_throttled.__flags) #13
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi ptr [ %21, %20 ], [ @.str.138, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.133, i32 noundef %12, i32 noundef %14, i32 noundef %16, ptr noundef %23) #13
  %24 = tail call i32 @trace_handle_return(ptr noundef %4) #13
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ %24, %22 ], [ %8, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @next_demotion_node(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @shrink_slab(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.shrink_control, align 4
  %5 = tail call i32 @down_read_trylock(ptr noundef nonnull @shrinker_rwsem) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %191, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.shrink_control, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.shrink_control, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.shrink_control, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.shrink_control, ptr %4, i32 0, i32 4
  br label %12

12:                                               ; preds = %179, %7
  %13 = phi ptr [ %15, %179 ], [ @shrinker_list, %7 ]
  %14 = phi i32 [ %183, %179 ], [ 0, %7 ]
  %15 = load ptr, ptr %13, align 4
  %16 = icmp eq ptr %15, @shrinker_list
  br i1 %16, label %189, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %15, i32 -20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %8, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store ptr null, ptr %11, align 4
  %19 = getelementptr i8, ptr %15, i32 -12
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 128, i32 %20
  %23 = load ptr, ptr %18, align 4
  %24 = call i32 %23(ptr noundef %18, ptr noundef nonnull %4) #13
  switch i32 %24, label %25 [
    i32 -2, label %179
    i32 0, label %179
  ]

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %15, i32 -4
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = icmp eq ptr %28, null
  %30 = and i32 %27, 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = and i32 %27, 2
  %35 = icmp eq i32 %34, 0
  %36 = load i32, ptr %8, align 4
  %37 = select i1 %35, i32 0, i32 %36
  %38 = getelementptr i8, ptr %15, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr %struct.atomic_t, ptr %39, i32 %37
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !59
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #13, !srcloc !15
  %41 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %40) #13, !srcloc !60
  %42 = extractvalue { i32, i32 } %41, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !61
  br label %43

43:                                               ; preds = %33, %25
  %44 = phi i32 [ %42, %33 ], [ 0, %25 ]
  %45 = getelementptr i8, ptr %15, i32 -8
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = ashr i32 %24, %2
  %50 = sext i32 %49 to i64
  %51 = shl nsw i64 %50, 2
  %52 = icmp ult i64 %51, 4294967296
  br i1 %52, label %53, label %57, !prof !10

53:                                               ; preds = %48
  %54 = trunc i64 %51 to i32
  %55 = udiv i32 %54, %46
  %56 = zext i32 %55 to i64
  br label %63

57:                                               ; preds = %48
  %58 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %51) #17, !srcloc !62
  %59 = extractvalue { i64, i64 } %58, 1
  br label %63

60:                                               ; preds = %43
  %61 = sdiv i32 %24, 2
  %62 = sext i32 %61 to i64
  br label %63

63:                                               ; preds = %60, %57, %53
  %64 = phi i64 [ %62, %60 ], [ %56, %53 ], [ %59, %57 ]
  %65 = ashr i32 %44, %2
  %66 = trunc i64 %64 to i32
  %67 = add i32 %65, %66
  %68 = shl i32 %24, 1
  %69 = call i32 @llvm.smin.i32(i32 %67, i32 %68) #13
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_shrink_slab_start, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %63
  %73 = tail call ptr @llvm.thread.pointer() #13
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %72
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !63
  %84 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_shrink_slab_start, i32 0, i32 7), align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %86, %83
  %87 = phi ptr [ %91, %86 ], [ %84, %83 ]
  %88 = load volatile ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.tracepoint_func, ptr %87, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  call void %88(ptr noundef %90, ptr noundef %18, ptr noundef nonnull %4, i32 noundef %44, i32 noundef %24, i64 noundef %64, i32 noundef %69, i32 noundef %2) #13
  %91 = getelementptr %struct.tracepoint_func, ptr %87, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %86

94:                                               ; preds = %86, %83
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !64
  br label %95

95:                                               ; preds = %94, %72, %63
  %96 = icmp sge i32 %69, %22
  %97 = icmp sge i32 %69, %24
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = getelementptr i8, ptr %15, i32 -16
  br label %101

101:                                              ; preds = %109, %99
  %102 = phi i32 [ 0, %99 ], [ %110, %109 ]
  %103 = phi i32 [ %69, %99 ], [ %121, %109 ]
  %104 = phi i32 [ 0, %99 ], [ %122, %109 ]
  %105 = call i32 @llvm.smin.i32(i32 %22, i32 %103) #13
  store i32 %105, ptr %9, align 4
  store i32 %105, ptr %10, align 4
  %106 = load ptr, ptr %100, align 4
  %107 = call i32 %106(ptr noundef %18, ptr noundef nonnull %4) #13
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %127, label %109

109:                                              ; preds = %101
  %110 = add i32 %107, %102
  %111 = load i32, ptr %10, align 4
  %112 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %113 = call i32 @llvm.read_register.i32(metadata !0) #13
  %114 = inttoptr i32 %113 to ptr
  %115 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %114) #7, !srcloc !12
  %116 = add i32 %115, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 37) to i32)
  %117 = inttoptr i32 %116 to ptr
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, %111
  store i32 %119, ptr %117, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %112) #13, !srcloc !44
  %120 = load i32, ptr %10, align 4
  %121 = sub i32 %103, %120
  %122 = add i32 %120, %104
  %123 = call i32 @__cond_resched() #13
  %124 = icmp sge i32 %121, %22
  %125 = icmp sge i32 %121, %24
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %101, label %127

127:                                              ; preds = %109, %101, %95
  %128 = phi i32 [ 0, %95 ], [ %122, %109 ], [ %104, %101 ]
  %129 = phi i32 [ %69, %95 ], [ %121, %109 ], [ %103, %101 ]
  %130 = phi i32 [ 0, %95 ], [ %110, %109 ], [ %102, %101 ]
  %131 = load i32, ptr %26, align 4
  %132 = load ptr, ptr %11, align 4
  %133 = icmp eq ptr %132, null
  %134 = and i32 %131, 4
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %127
  %138 = add i32 %44, %66
  %139 = sub i32 %138, %128
  %140 = call i32 @llvm.smax.i32(i32 %139, i32 0) #13
  %141 = call i32 @llvm.smin.i32(i32 %140, i32 %68) #13
  %142 = and i32 %131, 2
  %143 = icmp eq i32 %142, 0
  %144 = load i32, ptr %8, align 4
  %145 = select i1 %143, i32 0, i32 %144
  %146 = getelementptr i8, ptr %15, i32 8
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr %struct.atomic_t, ptr %147, i32 %145
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #13, !srcloc !15
  %149 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 %141, ptr elementtype(i32) %148) #13, !srcloc !16
  %150 = extractvalue { i32, i32 } %149, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  br label %151

151:                                              ; preds = %137, %127
  %152 = phi i32 [ %150, %137 ], [ 0, %127 ]
  %153 = load i32, ptr %8, align 4
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_shrink_slab_end, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %151
  %157 = tail call ptr @llvm.thread.pointer() #13
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %156
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !65
  %168 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_shrink_slab_end, i32 0, i32 7), align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %178, label %170

170:                                              ; preds = %170, %167
  %171 = phi ptr [ %175, %170 ], [ %168, %167 ]
  %172 = load volatile ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.tracepoint_func, ptr %171, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  call void %172(ptr noundef %174, ptr noundef %18, i32 noundef %153, i32 noundef %130, i32 noundef %44, i32 noundef %152, i32 noundef %129) #13
  %175 = getelementptr %struct.tracepoint_func, ptr %171, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %170

178:                                              ; preds = %170, %167
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !66
  br label %179

179:                                              ; preds = %178, %156, %151, %17, %17
  %180 = phi i32 [ %24, %17 ], [ %24, %17 ], [ %130, %151 ], [ %130, %156 ], [ %130, %178 ]
  %181 = icmp eq i32 %180, -2
  %182 = select i1 %181, i32 0, i32 %180
  %183 = add i32 %182, %14
  %184 = load volatile ptr, ptr getelementptr inbounds (%struct.rw_semaphore, ptr @shrinker_rwsem, i32 0, i32 4), align 4
  %185 = icmp eq ptr %184, getelementptr inbounds (%struct.rw_semaphore, ptr @shrinker_rwsem, i32 0, i32 4)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  br i1 %185, label %12, label %186

186:                                              ; preds = %179
  %187 = icmp eq i32 %183, 0
  %188 = select i1 %187, i32 1, i32 %183
  br label %189

189:                                              ; preds = %186, %12
  %190 = phi i32 [ %188, %186 ], [ %14, %12 ]
  call void @up_read(ptr noundef nonnull @shrinker_rwsem) #13
  br label %191

191:                                              ; preds = %189, %3
  %192 = phi i32 [ %190, %189 ], [ 0, %3 ]
  %193 = call i32 @__cond_resched() #13
  ret i32 %192
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @workingset_eviction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__delete_from_swap_cache(ptr noundef, [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_swap_page(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_remove_folio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @try_to_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_node_page_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_unref_page_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_referenced(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @alloc_demote_page(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.migration_target_control, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.migration_target_control, ptr %3, i32 0, i32 1
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.migration_target_control, ptr %3, i32 0, i32 2
  store i32 20457674, ptr %5, align 4
  %6 = ptrtoint ptr %3 to i32
  %7 = call ptr @alloc_migration_target(ptr noundef %0, i32 noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_migration_target(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @allow_direct_reclaim(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 15
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 11
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @zone_reclaimable_pages(ptr noundef %0)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %0, align 64
  %14 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %13, %15
  %17 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 37, i32 0
  %18 = load volatile i32, ptr %17, align 4
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0) #13
  br label %20

20:                                               ; preds = %12, %9, %5
  %21 = phi i32 [ %16, %12 ], [ 0, %9 ], [ 0, %5 ]
  %22 = phi i32 [ %19, %12 ], [ 0, %9 ], [ 0, %5 ]
  %23 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1
  %24 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 11
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %20
  %28 = tail call i32 @zone_reclaimable_pages(ptr noundef %23)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %23, align 64
  %32 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %31, %21
  %35 = add i32 %34, %33
  %36 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 37, i32 0
  %37 = load volatile i32, ptr %36, align 4
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #13
  %39 = add nuw i32 %38, %22
  br label %40

40:                                               ; preds = %30, %27, %20
  %41 = phi i32 [ %35, %30 ], [ %21, %27 ], [ %21, %20 ]
  %42 = phi i32 [ %39, %30 ], [ %22, %27 ], [ %22, %20 ]
  %43 = icmp eq i32 %41, 0
  %44 = lshr i32 %41, 1
  %45 = icmp ugt i32 %42, %44
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %58, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 8
  %49 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 8, i32 1
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 15
  %54 = load volatile i32, ptr %53, align 8
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store volatile i32 1, ptr %53, align 8
  br label %57

57:                                               ; preds = %56, %52
  tail call void @__wake_up(ptr noundef %48, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %58

58:                                               ; preds = %57, %47, %40, %1
  %59 = phi i1 [ true, %1 ], [ true, %40 ], [ false, %57 ], [ false, %47 ]
  ret i1 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__next_zones_zonelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @shrink_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reclaim_stat, align 4
  %6 = alloca [2 x i64], align 8
  %7 = alloca [5 x i32], align 4
  %8 = alloca [5 x i32], align 4
  %9 = alloca %struct.blk_plug, align 4
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 116
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 24
  %14 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 12
  %15 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 11
  %16 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 24, i32 1
  %17 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 24, i32 2
  %18 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 24, i32 3
  %20 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 4
  %21 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 5
  %22 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 24, i32 5
  %23 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 24, i32 5, i32 1
  %24 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 7
  %25 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 7
  %26 = icmp eq ptr %1, null
  %27 = getelementptr inbounds [2 x i64], ptr %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 8
  %29 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %30 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 3
  %31 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 2
  %32 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %33 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 9
  %34 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 98, i32 1
  %35 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 10, i32 1, i32 1
  %36 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 10, i32 1
  %37 = getelementptr inbounds %struct.reclaim_stat, ptr %5, i32 0, i32 5
  %38 = getelementptr inbounds %struct.reclaim_stat, ptr %5, i32 0, i32 1
  %39 = getelementptr inbounds %struct.reclaim_stat, ptr %5, i32 0, i32 2
  %40 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 12, i32 2
  %41 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 12, i32 1
  %42 = getelementptr inbounds %struct.reclaim_stat, ptr %5, i32 0, i32 3
  %43 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 12, i32 3
  %44 = getelementptr inbounds %struct.reclaim_stat, ptr %5, i32 0, i32 4
  %45 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 12, i32 4
  %46 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 12, i32 6
  %47 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 12, i32 5
  %48 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %49 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 1
  %50 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 2
  %51 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 3
  %52 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 1
  %53 = icmp eq ptr %12, null
  %54 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 25
  %55 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 24, i32 6
  %56 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 117
  %57 = getelementptr inbounds %struct.scan_control, ptr %1, i32 0, i32 6
  %58 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 11
  %59 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 0, i32 2
  %60 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 1
  %61 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 11
  %62 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 0, i32 2
  %63 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 1
  %64 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 11
  %65 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 0, i32 2
  %66 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 1
  %67 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 11
  %68 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 0, i32 2
  %69 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 1
  %70 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 11
  %71 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 11
  %72 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 11
  %73 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 11
  br label %74

74:                                               ; preds = %777, %2
  %75 = phi i1 [ false, %2 ], [ %655, %777 ]
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %14, i8 0, i32 28, i1 false)
  %76 = load i32, ptr %15, align 4
  call void @_raw_spin_lock_irq(ptr noundef %16) #13
  %77 = load i32, ptr %17, align 4
  store i32 %77, ptr %18, align 4
  %78 = load i32, ptr %19, align 4
  store i32 %78, ptr %20, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %79 = load i16, ptr %16, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %16, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %81 = load i16, ptr %21, align 4
  %82 = and i16 %81, 4
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %137

84:                                               ; preds = %74
  %85 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 12), align 4
  %86 = call i32 @llvm.smax.i32(i32 %85, i32 0) #13
  %87 = load i32, ptr %22, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load volatile i32, ptr @vm_node_stat, align 4
  %91 = call i32 @llvm.smax.i32(i32 %90, i32 0) #13
  %92 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %93 = call i32 @llvm.smax.i32(i32 %92, i32 0) #13
  %94 = add nuw i32 %93, %91
  %95 = icmp ult i32 %94, 262144
  br i1 %95, label %100, label %96

96:                                               ; preds = %89
  %97 = lshr i32 %94, 18
  %98 = mul nuw nsw i32 %97, 10
  %99 = call i32 @int_sqrt(i32 noundef %98) #13
  br label %100

100:                                              ; preds = %96, %89
  %101 = phi i32 [ %99, %96 ], [ 1, %89 ]
  %102 = mul i32 %101, %91
  %103 = icmp ult i32 %102, %93
  %104 = load i16, ptr %21, align 4
  br i1 %103, label %105, label %108

105:                                              ; preds = %100, %84
  %106 = phi i16 [ %81, %84 ], [ %104, %100 ]
  %107 = or i16 %106, 1
  br label %110

108:                                              ; preds = %100
  %109 = and i16 %104, -2
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi i16 [ %109, %108 ], [ %107, %105 ]
  store i16 %111, ptr %21, align 4
  %112 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 13), align 4
  %113 = call i32 @llvm.smax.i32(i32 %112, i32 0) #13
  %114 = load i32, ptr %23, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %118 = call i32 @llvm.smax.i32(i32 %117, i32 0) #13
  %119 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %120 = call i32 @llvm.smax.i32(i32 %119, i32 0) #13
  %121 = add nuw i32 %120, %118
  %122 = icmp ult i32 %121, 262144
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = lshr i32 %121, 18
  %125 = mul nuw nsw i32 %124, 10
  %126 = call i32 @int_sqrt(i32 noundef %125) #13
  br label %127

127:                                              ; preds = %123, %116
  %128 = phi i32 [ %126, %123 ], [ 1, %116 ]
  %129 = mul i32 %128, %118
  %130 = icmp ult i32 %129, %120
  %131 = load i16, ptr %21, align 4
  br i1 %130, label %132, label %135

132:                                              ; preds = %127, %110
  %133 = phi i16 [ %111, %110 ], [ %131, %127 ]
  %134 = or i16 %133, 2
  br label %139

135:                                              ; preds = %127
  %136 = and i16 %131, -3
  br label %139

137:                                              ; preds = %74
  %138 = or i16 %81, 3
  br label %139

139:                                              ; preds = %137, %135, %132
  %140 = phi i16 [ %138, %137 ], [ %136, %135 ], [ %134, %132 ]
  %141 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %142 = call i32 @llvm.smax.i32(i32 %141, i32 0) #13
  %143 = load i8, ptr %24, align 1
  %144 = zext i8 %143 to i32
  %145 = lshr i32 %142, %144
  %146 = icmp ne i32 %145, 0
  %147 = and i16 %140, 2
  %148 = icmp eq i16 %147, 0
  %149 = select i1 %146, i1 %148, i1 false
  %150 = and i16 %140, -2049
  %151 = select i1 %149, i16 2048, i16 0
  %152 = or i16 %151, %150
  store i16 %152, ptr %21, align 4
  %153 = load volatile i32, ptr @vm_zone_stat, align 4
  %154 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %155 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %156 = load volatile i32, ptr %58, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %139
  %159 = load i32, ptr %59, align 8
  %160 = load i32, ptr %60, align 4
  %161 = add i32 %159, %160
  br label %162

162:                                              ; preds = %158, %139
  %163 = phi i32 [ %161, %158 ], [ 0, %139 ]
  %164 = load volatile i32, ptr %61, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %62, align 8
  %168 = load i32, ptr %63, align 4
  %169 = add i32 %167, %163
  %170 = add i32 %169, %168
  br label %171

171:                                              ; preds = %166, %162
  %172 = phi i32 [ %170, %166 ], [ %163, %162 ]
  %173 = load volatile i32, ptr %64, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %65, align 8
  %177 = load i32, ptr %66, align 4
  %178 = add i32 %176, %172
  %179 = add i32 %178, %177
  br label %180

180:                                              ; preds = %175, %171
  %181 = phi i32 [ %179, %175 ], [ %172, %171 ]
  %182 = load volatile i32, ptr %67, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %180
  %185 = load i32, ptr %68, align 8
  %186 = load i32, ptr %69, align 4
  %187 = add i32 %185, %181
  %188 = add i32 %187, %186
  br label %189

189:                                              ; preds = %184, %180
  %190 = phi i32 [ %188, %184 ], [ %181, %180 ]
  %191 = call i32 @llvm.smax.i32(i32 %153, i32 0) #13
  %192 = call i32 @llvm.smax.i32(i32 %154, i32 0) #13
  %193 = call i32 @llvm.smax.i32(i32 %155, i32 0) #13
  %194 = load volatile i32, ptr @vm_node_stat, align 4
  %195 = call i32 @llvm.smax.i32(i32 %194, i32 0) #13
  %196 = add nuw i32 %192, %191
  %197 = add i32 %196, %193
  %198 = icmp ule i32 %197, %190
  %199 = and i16 %140, 1
  %200 = icmp eq i16 %199, 0
  %201 = select i1 %198, i1 %200, i1 false
  %202 = lshr i32 %195, %144
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %201, i1 %203, i1 false
  %205 = select i1 %204, i16 4096, i16 0
  %206 = and i16 %152, -4097
  %207 = or i16 %205, %206
  store i16 %207, ptr %21, align 4
  %208 = call i32 @__cond_resched() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #13, !annotation !9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false) #13, !annotation !9
  %209 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false) #13, !annotation !9
  %210 = load i32, ptr @vm_swappiness, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #13, !annotation !9
  %211 = load i16, ptr %21, align 4
  %212 = and i16 %211, 64
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %258, label %214

214:                                              ; preds = %189
  %215 = load i32, ptr %25, align 4
  %216 = load volatile i32, ptr @nr_swap_pages, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %214
  %219 = load i8, ptr @numa_demotion_enabled, align 1, !range !13
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %258, label %221

221:                                              ; preds = %218
  %222 = and i16 %211, 8192
  %223 = icmp eq i16 %222, 0
  %224 = select i1 %26, i1 true, i1 %223
  br i1 %224, label %225, label %258

225:                                              ; preds = %221
  %226 = call i32 @next_demotion_node(i32 noundef %215) #13
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %258, label %228

228:                                              ; preds = %225, %214
  %229 = icmp ne i32 %210, 0
  %230 = load i8, ptr %24, align 1
  %231 = icmp eq i8 %230, 0
  %232 = select i1 %231, i1 %229, i1 false
  br i1 %232, label %258, label %233

233:                                              ; preds = %228
  %234 = load i16, ptr %21, align 4
  %235 = and i16 %234, 4096
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %237, label %258

237:                                              ; preds = %233
  %238 = and i16 %234, 2048
  %239 = icmp eq i16 %238, 0
  br i1 %239, label %240, label %258

240:                                              ; preds = %237
  %241 = load i32, ptr %18, align 4
  %242 = load i32, ptr %20, align 4
  %243 = add i32 %242, %241
  %244 = add i32 %243, %241
  %245 = add i32 %242, 1
  %246 = add i32 %245, %243
  %247 = add i32 %246, %244
  %248 = mul i32 %247, %210
  %249 = add i32 %244, 1
  %250 = udiv i32 %248, %249
  %251 = sub i32 200, %210
  %252 = mul i32 %247, %251
  %253 = udiv i32 %252, %246
  %254 = zext i32 %250 to i64
  store i64 %254, ptr %6, align 8
  %255 = zext i32 %253 to i64
  store i64 %255, ptr %27, align 8
  %256 = add i32 %253, %250
  %257 = zext i32 %256 to i64
  br label %258

258:                                              ; preds = %240, %237, %233, %228, %225, %221, %218, %189
  %259 = phi i32 [ 0, %240 ], [ 1, %225 ], [ 1, %189 ], [ 0, %228 ], [ 0, %233 ], [ 1, %237 ], [ 1, %218 ], [ 1, %221 ]
  %260 = phi i32 [ 1, %240 ], [ 3, %225 ], [ 3, %189 ], [ 0, %228 ], [ 2, %233 ], [ 3, %237 ], [ 3, %218 ], [ 3, %221 ]
  %261 = phi i64 [ %257, %240 ], [ 0, %225 ], [ 0, %189 ], [ 0, %228 ], [ 0, %233 ], [ 0, %237 ], [ 0, %218 ], [ 0, %221 ]
  br label %262

262:                                              ; preds = %327, %258
  %263 = phi i32 [ 0, %258 ], [ %330, %327 ]
  %264 = and i32 %263, 2147483646
  %265 = icmp eq i32 %264, 2
  %266 = zext i1 %265 to i32
  %267 = load i8, ptr %28, align 4
  %268 = icmp sgt i8 %267, -1
  br i1 %268, label %269, label %311

269:                                              ; preds = %262
  %270 = add nuw nsw i32 %263, 1
  %271 = call i8 @llvm.umin.i8(i8 %267, i8 3) #13
  %272 = load volatile i32, ptr %70, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %269
  %275 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 37, i32 %270
  %276 = load volatile i32, ptr %275, align 4
  %277 = call i32 @llvm.smax.i32(i32 %276, i32 0) #13
  br label %278

278:                                              ; preds = %274, %269
  %279 = phi i32 [ %277, %274 ], [ 0, %269 ]
  %280 = icmp eq i8 %271, 0
  br i1 %280, label %311, label %281

281:                                              ; preds = %278
  %282 = load volatile i32, ptr %71, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %281
  %285 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 37, i32 %270
  %286 = load volatile i32, ptr %285, align 4
  %287 = call i32 @llvm.smax.i32(i32 %286, i32 0) #13
  %288 = add nuw i32 %287, %279
  br label %289

289:                                              ; preds = %284, %281
  %290 = phi i32 [ %288, %284 ], [ %279, %281 ]
  %291 = icmp eq i8 %271, 1
  br i1 %291, label %311, label %292

292:                                              ; preds = %289
  %293 = load volatile i32, ptr %72, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %300, label %295

295:                                              ; preds = %292
  %296 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 37, i32 %270
  %297 = load volatile i32, ptr %296, align 4
  %298 = call i32 @llvm.smax.i32(i32 %297, i32 0) #13
  %299 = add i32 %298, %290
  br label %300

300:                                              ; preds = %295, %292
  %301 = phi i32 [ %299, %295 ], [ %290, %292 ]
  %302 = icmp eq i8 %271, 2
  br i1 %302, label %311, label %303

303:                                              ; preds = %300
  %304 = load volatile i32, ptr %73, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %303
  %307 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 37, i32 %270
  %308 = load volatile i32, ptr %307, align 4
  %309 = call i32 @llvm.smax.i32(i32 %308, i32 0) #13
  %310 = add i32 %309, %301
  br label %311

311:                                              ; preds = %306, %303, %300, %289, %278, %262
  %312 = phi i32 [ 0, %262 ], [ %279, %278 ], [ %290, %289 ], [ %301, %300 ], [ %310, %306 ], [ %301, %303 ]
  %313 = load i8, ptr %24, align 1
  %314 = zext i8 %313 to i32
  %315 = lshr i32 %312, %314
  switch i32 %260, label %326 [
    i32 0, label %327
    i32 1, label %316
    i32 3, label %323
    i32 2, label %323
  ]

316:                                              ; preds = %311
  %317 = zext i32 %315 to i64
  %318 = getelementptr [2 x i64], ptr %6, i32 0, i32 %266
  %319 = load i64, ptr %318, align 8
  %320 = mul i64 %319, %317
  %321 = call i64 @div64_u64(i64 noundef %320, i64 noundef %261) #13
  %322 = trunc i64 %321 to i32
  br label %327

323:                                              ; preds = %311, %311
  %324 = icmp eq i32 %259, %266
  %325 = select i1 %324, i32 %315, i32 0
  br label %327

326:                                              ; preds = %311
  unreachable

327:                                              ; preds = %323, %316, %311
  %328 = phi i32 [ %322, %316 ], [ %315, %311 ], [ %325, %323 ]
  %329 = getelementptr i32, ptr %7, i32 %263
  store i32 %328, ptr %329, align 4
  %330 = add nuw nsw i32 %263, 1
  %331 = icmp eq i32 %330, 4
  br i1 %331, label %332, label %262

332:                                              ; preds = %327
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %7, i32 20, i1 false) #13
  %333 = load i32, ptr %29, align 4
  %334 = and i32 %333, 131072
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %332
  %337 = load i8, ptr %24, align 1
  %338 = icmp eq i8 %337, 12
  br label %339

339:                                              ; preds = %336, %332
  %340 = phi i1 [ false, %332 ], [ %338, %336 ]
  call void @blk_start_plug(ptr noundef nonnull %9) #13
  %341 = load i32, ptr %7, align 4
  %342 = icmp ne i32 %341, 0
  %343 = load i32, ptr %30, align 4
  %344 = icmp ne i32 %343, 0
  %345 = select i1 %342, i1 true, i1 %344
  %346 = load i32, ptr %31, align 4
  %347 = icmp ne i32 %346, 0
  %348 = select i1 %345, i1 true, i1 %347
  br i1 %348, label %349, label %608

349:                                              ; preds = %598, %339
  %350 = phi i32 [ %600, %598 ], [ %341, %339 ]
  %351 = phi i32 [ %540, %598 ], [ 0, %339 ]
  %352 = phi i1 [ %599, %598 ], [ %340, %339 ]
  br label %353

353:                                              ; preds = %543, %349
  %354 = phi i32 [ %350, %349 ], [ %545, %543 ]
  %355 = phi i32 [ 0, %349 ], [ %541, %543 ]
  %356 = phi i32 [ %351, %349 ], [ %540, %543 ]
  %357 = icmp eq i32 %354, 0
  br i1 %357, label %539, label %358

358:                                              ; preds = %353
  %359 = getelementptr [5 x i32], ptr %7, i32 0, i32 %355
  %360 = call i32 @llvm.umin.i32(i32 %354, i32 32) #13
  %361 = sub i32 %354, %360
  store i32 %361, ptr %359, align 4
  %362 = and i32 %355, 2147483645
  %363 = icmp eq i32 %362, 1
  br i1 %363, label %364, label %377

364:                                              ; preds = %358
  %365 = load i16, ptr %21, align 4
  %366 = and i16 %365, 3
  %367 = zext i16 %366 to i32
  %368 = and i32 %355, 2147483646
  %369 = icmp eq i32 %368, 2
  %370 = zext i1 %369 to i32
  %371 = shl nuw nsw i32 1, %370
  %372 = and i32 %371, %367
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %375, label %374

374:                                              ; preds = %364
  call fastcc void @shrink_active_list(i32 noundef %360, ptr noundef %13, ptr noundef %1, i32 noundef %355) #13
  br label %536

375:                                              ; preds = %364
  %376 = or i16 %365, 8
  store i16 %376, ptr %21, align 4
  br label %536

377:                                              ; preds = %358
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  store ptr %3, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false) #13, !annotation !9
  %378 = and i32 %355, 2147483646
  %379 = icmp eq i32 %378, 2
  %380 = select i1 %379, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), ptr @vm_node_stat
  %381 = select i1 %379, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 8), ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 7)
  %382 = load i32, ptr %29, align 4
  %383 = and i32 %382, 131072
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %423

385:                                              ; preds = %377
  %386 = load volatile i32, ptr %380, align 4
  %387 = call i32 @llvm.smax.i32(i32 %386, i32 0) #13
  %388 = load volatile i32, ptr %381, align 4
  %389 = call i32 @llvm.smax.i32(i32 %388, i32 0) #13
  %390 = load i32, ptr %33, align 4
  %391 = and i32 %390, 192
  %392 = icmp eq i32 %391, 192
  %393 = lshr i32 %387, 3
  %394 = select i1 %392, i32 %393, i32 %387
  %395 = icmp ugt i32 %389, %394
  br i1 %395, label %400, label %396

396:                                              ; preds = %412, %385
  %397 = load volatile ptr, ptr %35, align 4
  %398 = icmp eq ptr %397, %35
  br i1 %398, label %423, label %399

399:                                              ; preds = %396
  call void @__wake_up(ptr noundef %36, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %423

400:                                              ; preds = %385
  call void @reclaim_throttle(ptr noundef %0, i32 noundef 1) #13
  %401 = load volatile i32, ptr %10, align 4
  %402 = and i32 %401, 1
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %400
  %405 = load i32, ptr %34, align 4
  %406 = and i32 %405, 256
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %534

408:                                              ; preds = %404, %400
  %409 = load i32, ptr %29, align 4
  %410 = and i32 %409, 131072
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %423

412:                                              ; preds = %408
  %413 = load volatile i32, ptr %380, align 4
  %414 = call i32 @llvm.smax.i32(i32 %413, i32 0) #13
  %415 = load volatile i32, ptr %381, align 4
  %416 = call i32 @llvm.smax.i32(i32 %415, i32 0) #13
  %417 = load i32, ptr %33, align 4
  %418 = and i32 %417, 192
  %419 = icmp eq i32 %418, 192
  %420 = lshr i32 %414, 3
  %421 = select i1 %419, i32 %420, i32 %414
  %422 = icmp ugt i32 %416, %421
  br i1 %422, label %534, label %396

423:                                              ; preds = %408, %399, %396, %377
  %424 = zext i1 %379 to i32
  call void @lru_add_drain() #13
  call void @_raw_spin_lock_irq(ptr noundef %16) #13
  %425 = call fastcc i32 @isolate_lru_pages(i32 noundef %360, ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1, i32 noundef %355) #13
  %426 = select i1 %379, i32 8, i32 7
  call void @__mod_node_page_state(ptr noundef %0, i32 noundef %426, i32 noundef %425) #13
  %427 = load i32, ptr %29, align 4
  %428 = and i32 %427, 131072
  %429 = icmp eq i32 %428, 0
  %430 = select i1 %429, i32 30, i32 29
  %431 = load i32, ptr %4, align 4
  %432 = getelementptr [71 x i32], ptr @vm_event_states, i32 0, i32 %430
  %433 = ptrtoint ptr %432 to i32
  %434 = call i32 @llvm.read_register.i32(metadata !0) #13
  %435 = inttoptr i32 %434 to ptr
  %436 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %435) #7, !srcloc !12
  %437 = add i32 %436, %433
  %438 = inttoptr i32 %437 to ptr
  %439 = load i32, ptr %438, align 4
  %440 = add i32 %439, %431
  store i32 %440, ptr %438, align 4
  %441 = select i1 %379, i32 33, i32 32
  %442 = getelementptr [71 x i32], ptr @vm_event_states, i32 0, i32 %441
  %443 = ptrtoint ptr %442 to i32
  %444 = call i32 @llvm.read_register.i32(metadata !0) #13
  %445 = inttoptr i32 %444 to ptr
  %446 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %445) #7, !srcloc !12
  %447 = add i32 %446, %443
  %448 = inttoptr i32 %447 to ptr
  %449 = load i32, ptr %448, align 4
  %450 = add i32 %449, %431
  store i32 %450, ptr %448, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %451 = load i16, ptr %16, align 4
  %452 = add i16 %451, 1
  store i16 %452, ptr %16, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %453 = icmp eq i32 %425, 0
  br i1 %453, label %534, label %454

454:                                              ; preds = %423
  %455 = call fastcc i32 @shrink_page_list(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i1 noundef zeroext false) #13
  call void @_raw_spin_lock_irq(ptr noundef %16) #13
  %456 = call fastcc i32 @move_pages_to_lru(ptr noundef %13, ptr noundef nonnull %3) #13
  %457 = sub i32 0, %425
  call void @__mod_node_page_state(ptr noundef %0, i32 noundef %426, i32 noundef %457) #13
  %458 = load i32, ptr %29, align 4
  %459 = and i32 %458, 131072
  %460 = icmp eq i32 %459, 0
  %461 = select i1 %460, i32 26, i32 25
  %462 = getelementptr [71 x i32], ptr @vm_event_states, i32 0, i32 %461
  %463 = ptrtoint ptr %462 to i32
  %464 = call i32 @llvm.read_register.i32(metadata !0) #13
  %465 = inttoptr i32 %464 to ptr
  %466 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %465) #7, !srcloc !12
  %467 = add i32 %466, %463
  %468 = inttoptr i32 %467 to ptr
  %469 = load i32, ptr %468, align 4
  %470 = add i32 %469, %455
  store i32 %470, ptr %468, align 4
  %471 = select i1 %379, i32 35, i32 34
  %472 = getelementptr [71 x i32], ptr @vm_event_states, i32 0, i32 %471
  %473 = ptrtoint ptr %472 to i32
  %474 = call i32 @llvm.read_register.i32(metadata !0) #13
  %475 = inttoptr i32 %474 to ptr
  %476 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %475) #7, !srcloc !12
  %477 = add i32 %476, %473
  %478 = inttoptr i32 %477 to ptr
  %479 = load i32, ptr %478, align 4
  %480 = add i32 %479, %455
  store i32 %480, ptr %478, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %481 = load i16, ptr %16, align 4
  %482 = add i16 %481, 1
  store i16 %482, ptr %16, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %483 = load i32, ptr %37, align 4
  call void @lru_note_cost(ptr noundef %13, i1 noundef zeroext %379, i32 noundef %483) #13
  call void @free_unref_page_list(ptr noundef nonnull %3) #13
  %484 = load i32, ptr %38, align 4
  %485 = icmp eq i32 %484, %425
  br i1 %485, label %486, label %487

486:                                              ; preds = %454
  call void @wakeup_flusher_threads(i32 noundef 1) #13
  br label %487

487:                                              ; preds = %486, %454
  %488 = load i32, ptr %5, align 4
  %489 = load i32, ptr %14, align 4
  %490 = add i32 %489, %488
  store i32 %490, ptr %14, align 4
  %491 = load i32, ptr %39, align 4
  %492 = load i32, ptr %40, align 4
  %493 = add i32 %492, %491
  store i32 %493, ptr %40, align 4
  %494 = load i32, ptr %41, align 4
  %495 = add i32 %494, %484
  store i32 %495, ptr %41, align 4
  %496 = load i32, ptr %42, align 4
  %497 = load i32, ptr %43, align 4
  %498 = add i32 %497, %496
  store i32 %498, ptr %43, align 4
  %499 = load i32, ptr %44, align 4
  %500 = load i32, ptr %45, align 4
  %501 = add i32 %500, %499
  store i32 %501, ptr %45, align 4
  %502 = load i32, ptr %46, align 4
  %503 = add i32 %502, %425
  store i32 %503, ptr %46, align 4
  br i1 %379, label %504, label %507

504:                                              ; preds = %487
  %505 = load i32, ptr %47, align 4
  %506 = add i32 %505, %425
  store i32 %506, ptr %47, align 4
  br label %507

507:                                              ; preds = %504, %487
  %508 = load i32, ptr %25, align 4
  %509 = load i8, ptr %24, align 1
  %510 = sext i8 %509 to i32
  %511 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_lru_shrink_inactive, i32 0, i32 1), align 4
  %512 = icmp sgt i32 %511, 0
  br i1 %512, label %513, label %534

513:                                              ; preds = %507
  %514 = load i32, ptr %48, align 8
  %515 = lshr i32 %514, 5
  %516 = getelementptr i32, ptr @__cpu_online_mask, i32 %515
  %517 = load volatile i32, ptr %516, align 4
  %518 = and i32 %514, 31
  %519 = shl nuw i32 1, %518
  %520 = and i32 %519, %517
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %534, label %522

522:                                              ; preds = %513
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !67
  %523 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_lru_shrink_inactive, i32 0, i32 7), align 4
  %524 = icmp eq ptr %523, null
  br i1 %524, label %533, label %525

525:                                              ; preds = %525, %522
  %526 = phi ptr [ %530, %525 ], [ %523, %522 ]
  %527 = load volatile ptr, ptr %526, align 4
  %528 = getelementptr inbounds %struct.tracepoint_func, ptr %526, i32 0, i32 1
  %529 = load ptr, ptr %528, align 4
  call void %527(ptr noundef %529, i32 noundef %508, i32 noundef %431, i32 noundef %455, ptr noundef nonnull %5, i32 noundef %510, i32 noundef %424) #13
  %530 = getelementptr %struct.tracepoint_func, ptr %526, i32 1
  %531 = load ptr, ptr %530, align 4
  %532 = icmp eq ptr %531, null
  br i1 %532, label %533, label %525

533:                                              ; preds = %525, %522
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !68
  br label %534

534:                                              ; preds = %533, %513, %507, %423, %412, %404
  %535 = phi i32 [ 0, %423 ], [ %455, %507 ], [ %455, %513 ], [ %455, %533 ], [ 32, %404 ], [ 0, %412 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %536

536:                                              ; preds = %534, %375, %374
  %537 = phi i32 [ %535, %534 ], [ 0, %375 ], [ 0, %374 ]
  %538 = add i32 %537, %356
  br label %539

539:                                              ; preds = %536, %353
  %540 = phi i32 [ %538, %536 ], [ %356, %353 ]
  %541 = add nuw nsw i32 %355, 1
  %542 = icmp eq i32 %541, 4
  br i1 %542, label %546, label %543

543:                                              ; preds = %539
  %544 = getelementptr [5 x i32], ptr %7, i32 0, i32 %541
  %545 = load i32, ptr %544, align 4
  br label %353

546:                                              ; preds = %539
  %547 = call i32 @__cond_resched() #13
  %548 = icmp ult i32 %540, %209
  %549 = select i1 %548, i1 true, i1 %352
  br i1 %549, label %598, label %550

550:                                              ; preds = %546
  %551 = load i32, ptr %31, align 4
  %552 = load i32, ptr %30, align 4
  %553 = add i32 %552, %551
  %554 = load i32, ptr %7, align 4
  %555 = load i32, ptr %49, align 4
  %556 = add i32 %555, %554
  %557 = icmp ne i32 %553, 0
  %558 = icmp ne i32 %556, 0
  %559 = select i1 %557, i1 %558, i1 false
  br i1 %559, label %560, label %608

560:                                              ; preds = %550
  %561 = icmp ugt i32 %553, %556
  br i1 %561, label %562, label %564

562:                                              ; preds = %560
  %563 = load i32, ptr %8, align 4
  br label %566

564:                                              ; preds = %560
  %565 = load i32, ptr %50, align 4
  br label %566

566:                                              ; preds = %564, %562
  %567 = phi ptr [ %51, %564 ], [ %52, %562 ]
  %568 = phi i32 [ %565, %564 ], [ %563, %562 ]
  %569 = phi i32 [ %553, %564 ], [ %556, %562 ]
  %570 = phi i32 [ 0, %564 ], [ 2, %562 ]
  %571 = phi i32 [ 2, %564 ], [ 0, %562 ]
  %572 = load i32, ptr %567, align 4
  %573 = add i32 %568, 1
  %574 = add i32 %573, %572
  %575 = mul i32 %569, 100
  %576 = udiv i32 %575, %574
  %577 = getelementptr [5 x i32], ptr %7, i32 0, i32 %571
  store i32 0, ptr %577, align 4
  %578 = or i32 %571, 1
  %579 = getelementptr [5 x i32], ptr %7, i32 0, i32 %578
  store i32 0, ptr %579, align 4
  %580 = getelementptr [5 x i32], ptr %8, i32 0, i32 %570
  %581 = load i32, ptr %580, align 4
  %582 = getelementptr [5 x i32], ptr %7, i32 0, i32 %570
  %583 = load i32, ptr %582, align 4
  %584 = sub i32 %581, %583
  %585 = sub i32 100, %576
  %586 = mul i32 %581, %585
  %587 = udiv i32 %586, 100
  %588 = call i32 @llvm.usub.sat.i32(i32 %587, i32 %584) #13
  store i32 %588, ptr %582, align 4
  %589 = or i32 %570, 1
  %590 = getelementptr [5 x i32], ptr %8, i32 0, i32 %589
  %591 = load i32, ptr %590, align 4
  %592 = getelementptr [5 x i32], ptr %7, i32 0, i32 %589
  %593 = load i32, ptr %592, align 4
  %594 = sub i32 %591, %593
  %595 = mul i32 %591, %585
  %596 = udiv i32 %595, 100
  %597 = call i32 @llvm.usub.sat.i32(i32 %596, i32 %594) #13
  store i32 %597, ptr %592, align 4
  br label %598

598:                                              ; preds = %566, %546
  %599 = phi i1 [ true, %566 ], [ %352, %546 ]
  %600 = load i32, ptr %7, align 4
  %601 = icmp ne i32 %600, 0
  %602 = load i32, ptr %30, align 4
  %603 = icmp ne i32 %602, 0
  %604 = select i1 %601, i1 true, i1 %603
  %605 = load i32, ptr %31, align 4
  %606 = icmp ne i32 %605, 0
  %607 = select i1 %604, i1 true, i1 %606
  br i1 %607, label %349, label %608

608:                                              ; preds = %598, %550, %339
  %609 = phi i32 [ 0, %339 ], [ %540, %550 ], [ %540, %598 ]
  call void @blk_finish_plug(ptr noundef nonnull %9) #13
  %610 = load i32, ptr %15, align 4
  %611 = add i32 %610, %609
  store i32 %611, ptr %15, align 4
  %612 = load i32, ptr @total_swap_pages, align 4
  %613 = icmp sgt i32 %612, 0
  br i1 %613, label %626, label %614

614:                                              ; preds = %608
  %615 = load i32, ptr %25, align 4
  %616 = load i8, ptr @numa_demotion_enabled, align 1, !range !13
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %642, label %618

618:                                              ; preds = %614
  br i1 %26, label %623, label %619

619:                                              ; preds = %618
  %620 = load i16, ptr %21, align 4
  %621 = and i16 %620, 8192
  %622 = icmp eq i16 %621, 0
  br i1 %622, label %623, label %642

623:                                              ; preds = %619, %618
  %624 = call i32 @next_demotion_node(i32 noundef %615) #13
  %625 = icmp eq i32 %624, -1
  br i1 %625, label %642, label %626

626:                                              ; preds = %623, %608
  %627 = load volatile i32, ptr @vm_node_stat, align 4
  %628 = call i32 @llvm.smax.i32(i32 %627, i32 0) #13
  %629 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %630 = call i32 @llvm.smax.i32(i32 %629, i32 0) #13
  %631 = add nuw i32 %630, %628
  %632 = icmp ult i32 %631, 262144
  br i1 %632, label %637, label %633

633:                                              ; preds = %626
  %634 = lshr i32 %631, 18
  %635 = mul nuw nsw i32 %634, 10
  %636 = call i32 @int_sqrt(i32 noundef %635) #13
  br label %637

637:                                              ; preds = %633, %626
  %638 = phi i32 [ %636, %633 ], [ 1, %626 ]
  %639 = mul i32 %638, %628
  %640 = icmp ult i32 %639, %630
  br i1 %640, label %641, label %642

641:                                              ; preds = %637
  call fastcc void @shrink_active_list(i32 noundef 32, ptr noundef %13, ptr noundef %1, i32 noundef 1) #13
  br label %642

642:                                              ; preds = %641, %637, %623, %619, %614
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #13
  %643 = load i32, ptr %33, align 4
  %644 = load i32, ptr %25, align 4
  %645 = load i8, ptr %24, align 1
  %646 = sext i8 %645 to i32
  %647 = call fastcc i32 @shrink_slab(i32 noundef %643, i32 noundef %644, i32 noundef %646) #13
  br i1 %53, label %652, label %648

648:                                              ; preds = %642
  %649 = load i32, ptr %12, align 4
  %650 = load i32, ptr %15, align 4
  %651 = add i32 %650, %649
  store i32 %651, ptr %15, align 4
  store i32 0, ptr %12, align 4
  br label %652

652:                                              ; preds = %648, %642
  %653 = load i32, ptr %15, align 4
  %654 = icmp ne i32 %653, %76
  %655 = select i1 %654, i1 true, i1 %75
  %656 = load i32, ptr %29, align 4
  %657 = and i32 %656, 131072
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %675, label %659

659:                                              ; preds = %652
  %660 = load i32, ptr %43, align 4
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %666, label %662

662:                                              ; preds = %659
  %663 = load i32, ptr %46, align 4
  %664 = icmp eq i32 %660, %663
  br i1 %664, label %665, label %666

665:                                              ; preds = %662
  call void @_set_bit(i32 noundef 1, ptr noundef %54) #13
  br label %666

666:                                              ; preds = %665, %662, %659
  %667 = load i32, ptr %41, align 4
  %668 = load i32, ptr %47, align 4
  %669 = icmp eq i32 %667, %668
  br i1 %669, label %670, label %671

670:                                              ; preds = %666
  call void @_set_bit(i32 noundef 0, ptr noundef %54) #13
  br label %671

671:                                              ; preds = %670, %666
  %672 = load i32, ptr %45, align 4
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %675, label %674

674:                                              ; preds = %671
  call void @reclaim_throttle(ptr noundef %0, i32 noundef 0)
  br label %675

675:                                              ; preds = %674, %671, %652
  %676 = load i32, ptr %29, align 4
  %677 = and i32 %676, 131072
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %687, label %679

679:                                              ; preds = %675
  %680 = load i32, ptr %14, align 4
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %687, label %682

682:                                              ; preds = %679
  %683 = load i32, ptr %40, align 4
  %684 = icmp eq i32 %680, %683
  br i1 %684, label %685, label %687

685:                                              ; preds = %682
  call void @_set_bit(i32 noundef 0, ptr noundef %55) #13
  %686 = load i32, ptr %29, align 4
  br label %687

687:                                              ; preds = %685, %682, %679, %675
  %688 = phi i32 [ %676, %675 ], [ %686, %685 ], [ %676, %682 ], [ %676, %679 ]
  %689 = and i32 %688, 131072
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %711

691:                                              ; preds = %687
  %692 = and i32 %688, 1048576
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %702, label %694

694:                                              ; preds = %691
  %695 = load ptr, ptr %56, align 4
  %696 = icmp eq ptr %695, null
  br i1 %696, label %702, label %697

697:                                              ; preds = %694
  %698 = getelementptr inbounds %struct.backing_dev_info, ptr %695, i32 0, i32 11, i32 10
  %699 = load i32, ptr %698, align 8
  %700 = and i32 %699, 1
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %711, label %702

702:                                              ; preds = %697, %694, %691
  %703 = load i16, ptr %21, align 4
  %704 = and i16 %703, 512
  %705 = icmp eq i16 %704, 0
  br i1 %705, label %706, label %711

706:                                              ; preds = %702
  %707 = load volatile i32, ptr %55, align 4
  %708 = and i32 %707, 1
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %711, label %710

710:                                              ; preds = %706
  call void @reclaim_throttle(ptr noundef %0, i32 noundef 3)
  br label %711

711:                                              ; preds = %710, %706, %702, %697, %687
  %712 = load i32, ptr %15, align 4
  %713 = load i8, ptr %57, align 2
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %780, label %715

715:                                              ; preds = %711
  %716 = icmp sgt i8 %713, 3
  br i1 %716, label %722, label %717

717:                                              ; preds = %715
  %718 = load i8, ptr %24, align 1
  %719 = icmp sgt i8 %718, 9
  %720 = icmp eq i32 %712, %76
  %721 = or i1 %720, %719
  br i1 %721, label %780, label %724

722:                                              ; preds = %715
  %723 = icmp eq i32 %712, %76
  br i1 %723, label %780, label %724

724:                                              ; preds = %722, %717
  %725 = load i8, ptr %28, align 4
  %726 = icmp slt i8 %725, 0
  br i1 %726, label %753, label %727

727:                                              ; preds = %724
  %728 = zext i8 %725 to i32
  br label %729

729:                                              ; preds = %746, %727
  %730 = phi i8 [ %747, %746 ], [ %725, %727 ]
  %731 = phi i32 [ %749, %746 ], [ %728, %727 ]
  %732 = phi i32 [ %748, %746 ], [ 0, %727 ]
  %733 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %732, i32 11
  %734 = load volatile i32, ptr %733, align 4
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %746, label %736

736:                                              ; preds = %729
  %737 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %732
  %738 = load i8, ptr %57, align 2
  %739 = sext i8 %738 to i32
  %740 = call i32 @compaction_suitable(ptr noundef %737, i32 noundef %739, i32 noundef 0, i32 noundef %731) #13
  %741 = add i32 %740, -4
  %742 = and i32 %741, -5
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %780, label %744

744:                                              ; preds = %736
  %745 = load i8, ptr %28, align 4
  br label %746

746:                                              ; preds = %744, %729
  %747 = phi i8 [ %745, %744 ], [ %730, %729 ]
  %748 = add nuw nsw i32 %732, 1
  %749 = sext i8 %747 to i32
  %750 = icmp slt i32 %732, %749
  br i1 %750, label %729, label %751

751:                                              ; preds = %746
  %752 = load i8, ptr %57, align 2
  br label %753

753:                                              ; preds = %751, %724
  %754 = phi i8 [ %752, %751 ], [ %713, %724 ]
  %755 = zext i8 %754 to i32
  %756 = shl i32 2, %755
  %757 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %758 = call i32 @llvm.smax.i32(i32 %757, i32 0) #13
  %759 = load i32, ptr %25, align 4
  %760 = load volatile i32, ptr @nr_swap_pages, align 4
  %761 = icmp sgt i32 %760, 0
  br i1 %761, label %773, label %762

762:                                              ; preds = %753
  %763 = load i8, ptr @numa_demotion_enabled, align 1, !range !13
  %764 = icmp eq i8 %763, 0
  br i1 %764, label %777, label %765

765:                                              ; preds = %762
  br i1 %26, label %770, label %766

766:                                              ; preds = %765
  %767 = load i16, ptr %21, align 4
  %768 = and i16 %767, 8192
  %769 = icmp eq i16 %768, 0
  br i1 %769, label %770, label %777

770:                                              ; preds = %766, %765
  %771 = call i32 @next_demotion_node(i32 noundef %759) #13
  %772 = icmp eq i32 %771, -1
  br i1 %772, label %777, label %773

773:                                              ; preds = %770, %753
  %774 = load volatile i32, ptr @vm_node_stat, align 4
  %775 = call i32 @llvm.smax.i32(i32 %774, i32 0) #13
  %776 = add nuw i32 %775, %758
  br label %777

777:                                              ; preds = %773, %770, %766, %762
  %778 = phi i32 [ %776, %773 ], [ %758, %770 ], [ %758, %762 ], [ %758, %766 ]
  %779 = icmp ugt i32 %778, %756
  br i1 %779, label %74, label %780

780:                                              ; preds = %777, %736, %722, %717, %711
  br i1 %655, label %781, label %783

781:                                              ; preds = %780
  %782 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 16
  store i32 0, ptr %782, align 4
  br label %783

783:                                              ; preds = %781, %780
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @compaction_suitable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zone_watermark_ok_safe(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @shrink_active_list(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head, align 8
  %8 = alloca %struct.list_head, align 8
  %9 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr %7, ptr %7, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store ptr %8, ptr %8, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %8, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store ptr %9, ptr %9, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  %13 = and i32 %3, -2
  %14 = icmp eq i32 %13, 2
  %15 = getelementptr i8, ptr %1, i32 -3776
  call void @lru_add_drain() #13
  %16 = getelementptr inbounds %struct.lruvec, ptr %1, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %16) #13
  %17 = call fastcc i32 @isolate_lru_pages(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3)
  %18 = select i1 %14, i32 8, i32 7
  call void @__mod_node_page_state(ptr noundef %15, i32 noundef %18, i32 noundef %17) #13
  %19 = load i32, ptr %5, align 4
  %20 = call i32 @llvm.read_register.i32(metadata !0) #13
  %21 = inttoptr i32 %20 to ptr
  %22 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #7, !srcloc !12
  %23 = add i32 %22, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 23) to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %19
  store i32 %26, ptr %24, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %27 = load i16, ptr %16, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %16, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %29 = load volatile ptr, ptr %7, align 8
  %30 = icmp eq ptr %29, %7
  br i1 %30, label %137, label %31

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.scan_control, ptr %2, i32 0, i32 2
  br label %33

33:                                               ; preds = %108, %31
  %34 = phi i32 [ 0, %31 ], [ %109, %108 ]
  br label %35

35:                                               ; preds = %66, %33
  %36 = call i32 @__cond_resched() #13
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr i8, ptr %37, i32 -4
  %39 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  %43 = call ptr @page_mapping(ptr noundef %38) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.address_space, ptr %43, i32 0, i32 10
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !39

50:                                               ; preds = %45
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br label %65

51:                                               ; preds = %45, %35
  %52 = load volatile i32, ptr %37, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55, !prof !10

55:                                               ; preds = %51
  %56 = add i32 %52, -1
  br label %59

57:                                               ; preds = %51
  %58 = ptrtoint ptr %38 to i32
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = inttoptr i32 %60 to ptr
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 2097152
  %64 = icmp eq i32 %63, 0
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br i1 %64, label %69, label %65, !prof !10

65:                                               ; preds = %59, %50
  call void @putback_lru_page(ptr noundef %38)
  br label %66

66:                                               ; preds = %132, %65
  %67 = load volatile ptr, ptr %7, align 8
  %68 = icmp eq ptr %67, %7
  br i1 %68, label %137, label %35

69:                                               ; preds = %59
  %70 = load i32, ptr @buffer_heads_over_limit, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72, !prof !10

72:                                               ; preds = %69
  %73 = load i32, ptr %38, align 4
  %74 = and i32 %73, 24576
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = call fastcc i32 @trylock_page(ptr noundef %38)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %38, align 4
  %81 = and i32 %80, 24576
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = call i32 @try_to_release_page(ptr noundef %38, i32 noundef 0) #13
  br label %85

85:                                               ; preds = %83, %79
  call void @unlock_page(ptr noundef %38) #13
  br label %86

86:                                               ; preds = %85, %76, %72, %69
  %87 = load ptr, ptr %32, align 4
  %88 = call i32 @page_referenced(ptr noundef %38, i32 noundef 0, ptr noundef %87, ptr noundef nonnull %6) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %6, align 4
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %90
  %95 = load volatile i32, ptr %37, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98, !prof !10

98:                                               ; preds = %94
  %99 = add i32 %95, -1
  br label %102

100:                                              ; preds = %94
  %101 = ptrtoint ptr %38 to i32
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = inttoptr i32 %103 to ptr
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 524288
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = add i32 %34, 1
  %110 = load ptr, ptr %8, align 8
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %37, ptr %111, align 4
  store ptr %110, ptr %37, align 4
  store ptr %8, ptr %39, align 4
  store volatile ptr %37, ptr %8, align 8
  %112 = load volatile ptr, ptr %7, align 8
  %113 = icmp eq ptr %112, %7
  br i1 %113, label %137, label %33

114:                                              ; preds = %102, %90, %86
  %115 = load volatile i32, ptr %37, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118, !prof !10

118:                                              ; preds = %114
  %119 = add i32 %115, -1
  br label %122

120:                                              ; preds = %114
  %121 = ptrtoint ptr %38 to i32
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = inttoptr i32 %123 to ptr
  call void @_clear_bit(i32 noundef 5, ptr noundef %124) #13
  %125 = load volatile i32, ptr %37, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128, !prof !10

128:                                              ; preds = %122
  %129 = add i32 %125, -1
  br label %132

130:                                              ; preds = %122
  %131 = ptrtoint ptr %38 to i32
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = inttoptr i32 %133 to ptr
  call void @_set_bit(i32 noundef 6, ptr noundef %134) #13
  %135 = load ptr, ptr %9, align 8
  %136 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  store ptr %37, ptr %136, align 4
  store ptr %135, ptr %37, align 4
  store ptr %9, ptr %39, align 4
  store volatile ptr %37, ptr %9, align 8
  br label %66

137:                                              ; preds = %108, %66, %4
  %138 = phi i32 [ 0, %4 ], [ %34, %66 ], [ %109, %108 ]
  %139 = zext i1 %14 to i32
  call void @_raw_spin_lock_irq(ptr noundef %16) #13
  %140 = call fastcc i32 @move_pages_to_lru(ptr noundef %1, ptr noundef nonnull %8)
  %141 = call fastcc i32 @move_pages_to_lru(ptr noundef %1, ptr noundef nonnull %9)
  %142 = load volatile ptr, ptr %9, align 8
  %143 = icmp eq ptr %142, %9
  br i1 %143, label %149, label %144

144:                                              ; preds = %137
  %145 = load ptr, ptr %8, align 8
  %146 = load ptr, ptr %12, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  store ptr %8, ptr %147, align 4
  store ptr %142, ptr %8, align 8
  store ptr %145, ptr %146, align 4
  %148 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  store ptr %146, ptr %148, align 4
  br label %149

149:                                              ; preds = %144, %137
  %150 = call i32 @llvm.read_register.i32(metadata !0) #13
  %151 = inttoptr i32 %150 to ptr
  %152 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %151) #7, !srcloc !12
  %153 = add i32 %152, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 18) to i32)
  %154 = inttoptr i32 %153 to ptr
  %155 = load i32, ptr %154, align 4
  %156 = add i32 %155, %141
  store i32 %156, ptr %154, align 4
  %157 = sub i32 0, %17
  call void @__mod_node_page_state(ptr noundef %15, i32 noundef %18, i32 noundef %157) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %158 = load i16, ptr %16, align 4
  %159 = add i16 %158, 1
  store i16 %159, ptr %16, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  call void @free_unref_page_list(ptr noundef nonnull %8) #13
  %160 = getelementptr i8, ptr %1, i32 -132
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.scan_control, ptr %2, i32 0, i32 7
  %163 = load i8, ptr %162, align 1
  %164 = sext i8 %163 to i32
  %165 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_lru_shrink_active, i32 0, i32 1), align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %149
  %168 = tail call ptr @llvm.thread.pointer() #13
  %169 = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 2
  %170 = load i32, ptr %169, align 8
  %171 = lshr i32 %170, 5
  %172 = getelementptr i32, ptr @__cpu_online_mask, i32 %171
  %173 = load volatile i32, ptr %172, align 4
  %174 = and i32 %170, 31
  %175 = shl nuw i32 1, %174
  %176 = and i32 %175, %173
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %167
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !69
  %179 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_lru_shrink_active, i32 0, i32 7), align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %189, label %181

181:                                              ; preds = %181, %178
  %182 = phi ptr [ %186, %181 ], [ %179, %178 ]
  %183 = load volatile ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.tracepoint_func, ptr %182, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  call void %183(ptr noundef %185, i32 noundef %161, i32 noundef %17, i32 noundef %140, i32 noundef %141, i32 noundef %138, i32 noundef %164, i32 noundef %139) #13
  %186 = getelementptr %struct.tracepoint_func, ptr %182, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %181

189:                                              ; preds = %181, %178
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !70
  br label %190

190:                                              ; preds = %189, %167, %149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isolate_lru_pages(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x i32], align 4
  %8 = alloca [4 x i32], align 4
  %9 = alloca %struct.list_head, align 8
  %10 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store ptr %9, ptr %9, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.scan_control, ptr %4, i32 0, i32 5
  %13 = load i16, ptr %12, align 4
  %14 = lshr i16 %13, 4
  %15 = and i16 %14, 2
  %16 = xor i16 %15, 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %0, 0
  br i1 %18, label %132, label %19

19:                                               ; preds = %6
  %20 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %5, i32 1
  %21 = getelementptr inbounds %struct.scan_control, ptr %4, i32 0, i32 8
  br label %22

22:                                               ; preds = %128, %19
  %23 = phi i32 [ 0, %19 ], [ %130, %128 ]
  %24 = phi i32 [ 0, %19 ], [ %129, %128 ]
  %25 = phi i32 [ 0, %19 ], [ %45, %128 ]
  %26 = load volatile ptr, ptr %10, align 4
  %27 = icmp eq ptr %26, %10
  br i1 %27, label %132, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr i8, ptr %29, i32 -4
  %31 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %10
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %32, i32 -4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #13, !srcloc !15
  br label %36

36:                                               ; preds = %34, %28
  %37 = load volatile i32, ptr %30, align 4
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %29, i32 44
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %42, %40 ], [ 1, %36 ]
  %45 = add i32 %44, %25
  %46 = lshr i32 %37, 30
  %47 = load i8, ptr %21, align 4
  %48 = sext i8 %47 to i32
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load ptr, ptr %31, align 4
  %52 = load ptr, ptr %29, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %29, ptr %55, align 4
  store ptr %54, ptr %29, align 4
  store ptr %9, ptr %31, align 4
  store volatile ptr %29, ptr %9, align 8
  %56 = load i32, ptr %30, align 4
  %57 = lshr i32 %56, 30
  %58 = getelementptr [4 x i32], ptr %8, i32 0, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %44
  store i32 %60, ptr %58, align 4
  br label %128

61:                                               ; preds = %43
  %62 = add i32 %44, %24
  %63 = call zeroext i1 @__isolate_lru_page_prepare(ptr noundef %30, i32 noundef %17)
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %31, align 4
  %66 = load ptr, ptr %29, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %65, ptr %67, align 4
  store volatile ptr %66, ptr %65, align 4
  %68 = load ptr, ptr %10, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %29, ptr %69, align 4
  store ptr %68, ptr %29, align 4
  store ptr %10, ptr %31, align 4
  store volatile ptr %29, ptr %10, align 4
  br label %128

70:                                               ; preds = %61
  %71 = getelementptr i8, ptr %29, i32 24
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #13, !srcloc !15
  %72 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 0, i32 1, ptr elementtype(i32) %71) #13, !srcloc !72
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load ptr, ptr %31, align 4
  %77 = load ptr, ptr %29, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  store volatile ptr %77, ptr %76, align 4
  %79 = load ptr, ptr %10, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %29, ptr %80, align 4
  store ptr %79, ptr %29, align 4
  store ptr %10, ptr %31, align 4
  store volatile ptr %29, ptr %10, align 4
  br label %128

81:                                               ; preds = %70
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %82 = load volatile i32, ptr %29, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85, !prof !10

85:                                               ; preds = %81
  %86 = add i32 %82, -1
  br label %89

87:                                               ; preds = %81
  %88 = ptrtoint ptr %30 to i32
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = inttoptr i32 %90 to ptr
  %92 = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %91) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %89
  %95 = load volatile i32, ptr %29, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98, !prof !10

98:                                               ; preds = %94
  %99 = add i32 %95, -1
  br label %102

100:                                              ; preds = %94
  %101 = ptrtoint ptr %30 to i32
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = inttoptr i32 %103 to ptr
  %105 = getelementptr inbounds %struct.page, ptr %104, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #13, !srcloc !15
  %106 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #13, !srcloc !34
  %107 = extractvalue { i32, i32 } %106, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !35
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  call void @__put_page(ptr noundef %104) #13
  br label %110

110:                                              ; preds = %109, %102
  %111 = load ptr, ptr %31, align 4
  %112 = load ptr, ptr %29, align 4
  %113 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  store ptr %111, ptr %113, align 4
  store volatile ptr %112, ptr %111, align 4
  %114 = load ptr, ptr %10, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %29, ptr %115, align 4
  store ptr %114, ptr %29, align 4
  store ptr %10, ptr %31, align 4
  store volatile ptr %29, ptr %10, align 4
  br label %128

116:                                              ; preds = %89
  %117 = add i32 %44, %23
  %118 = load i32, ptr %30, align 4
  %119 = lshr i32 %118, 30
  %120 = getelementptr [4 x i32], ptr %7, i32 0, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, %44
  store i32 %122, ptr %120, align 4
  %123 = load ptr, ptr %31, align 4
  %124 = load ptr, ptr %29, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  store ptr %123, ptr %125, align 4
  store volatile ptr %124, ptr %123, align 4
  %126 = load ptr, ptr %2, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %29, ptr %127, align 4
  store ptr %126, ptr %29, align 4
  store ptr %2, ptr %31, align 4
  store volatile ptr %29, ptr %2, align 4
  br label %128

128:                                              ; preds = %116, %110, %75, %64, %50
  %129 = phi i32 [ %24, %50 ], [ %62, %75 ], [ %62, %116 ], [ %62, %110 ], [ %62, %64 ]
  %130 = phi i32 [ %23, %50 ], [ %23, %75 ], [ %117, %116 ], [ %23, %110 ], [ %23, %64 ]
  %131 = icmp ult i32 %129, %0
  br i1 %131, label %22, label %132

132:                                              ; preds = %128, %22, %6
  %133 = phi i32 [ 0, %6 ], [ %45, %128 ], [ %25, %22 ]
  %134 = phi i32 [ 0, %6 ], [ %130, %128 ], [ %23, %22 ]
  %135 = load volatile ptr, ptr %9, align 8
  %136 = icmp eq ptr %135, %9
  br i1 %136, label %197, label %137

137:                                              ; preds = %132
  %138 = load volatile ptr, ptr %9, align 8
  %139 = icmp eq ptr %138, %9
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %10, align 4
  %142 = load ptr, ptr %11, align 4
  %143 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %10, ptr %143, align 4
  store ptr %138, ptr %10, align 4
  store ptr %141, ptr %142, align 4
  %144 = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  store ptr %142, ptr %144, align 4
  br label %145

145:                                              ; preds = %140, %137
  %146 = load i32, ptr %8, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %145
  %149 = call i32 @llvm.read_register.i32(metadata !0) #13
  %150 = inttoptr i32 %149 to ptr
  %151 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %150) #7, !srcloc !12
  %152 = add i32 %151, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 12) to i32)
  %153 = inttoptr i32 %152 to ptr
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, %146
  store i32 %155, ptr %153, align 4
  br label %156

156:                                              ; preds = %148, %145
  %157 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %156
  %161 = call i32 @llvm.read_register.i32(metadata !0) #13
  %162 = inttoptr i32 %161 to ptr
  %163 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %162) #7, !srcloc !12
  %164 = add i32 %163, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 13) to i32)
  %165 = inttoptr i32 %164 to ptr
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, %158
  store i32 %167, ptr %165, align 4
  %168 = add i32 %158, %146
  br label %169

169:                                              ; preds = %160, %156
  %170 = phi i32 [ %168, %160 ], [ %146, %156 ]
  %171 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 2
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %169
  %175 = call i32 @llvm.read_register.i32(metadata !0) #13
  %176 = inttoptr i32 %175 to ptr
  %177 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %176) #7, !srcloc !12
  %178 = add i32 %177, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 14) to i32)
  %179 = inttoptr i32 %178 to ptr
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, %172
  store i32 %181, ptr %179, align 4
  %182 = add i32 %172, %170
  br label %183

183:                                              ; preds = %174, %169
  %184 = phi i32 [ %182, %174 ], [ %170, %169 ]
  %185 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 3
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %183
  %189 = call i32 @llvm.read_register.i32(metadata !0) #13
  %190 = inttoptr i32 %189 to ptr
  %191 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %190) #7, !srcloc !12
  %192 = add i32 %191, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 15) to i32)
  %193 = inttoptr i32 %192 to ptr
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, %186
  store i32 %195, ptr %193, align 4
  %196 = add i32 %186, %184
  br label %197

197:                                              ; preds = %188, %183, %132
  %198 = phi i32 [ 0, %132 ], [ %196, %188 ], [ %184, %183 ]
  store i32 %133, ptr %3, align 4
  %199 = getelementptr inbounds %struct.scan_control, ptr %4, i32 0, i32 8
  %200 = load i8, ptr %199, align 4
  %201 = sext i8 %200 to i32
  %202 = getelementptr inbounds %struct.scan_control, ptr %4, i32 0, i32 6
  %203 = load i8, ptr %202, align 2
  %204 = sext i8 %203 to i32
  %205 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_lru_isolate, i32 0, i32 1), align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %230

207:                                              ; preds = %197
  %208 = tail call ptr @llvm.thread.pointer() #13
  %209 = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 2
  %210 = load i32, ptr %209, align 8
  %211 = lshr i32 %210, 5
  %212 = getelementptr i32, ptr @__cpu_online_mask, i32 %211
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %210, 31
  %215 = shl nuw i32 1, %214
  %216 = and i32 %215, %213
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %230, label %218

218:                                              ; preds = %207
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !74
  %219 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_vmscan_lru_isolate, i32 0, i32 7), align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %229, label %221

221:                                              ; preds = %221, %218
  %222 = phi ptr [ %226, %221 ], [ %219, %218 ]
  %223 = load volatile ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.tracepoint_func, ptr %222, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  call void %223(ptr noundef %225, i32 noundef %201, i32 noundef %204, i32 noundef %0, i32 noundef %133, i32 noundef %198, i32 noundef %134, i32 noundef %17, i32 noundef %5) #13
  %226 = getelementptr %struct.tracepoint_func, ptr %222, i32 1
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %221

229:                                              ; preds = %221, %218
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !75
  br label %230

230:                                              ; preds = %229, %207, %197
  %231 = getelementptr i8, ptr %1, i32 -3776
  %232 = add i32 %5, 1
  %233 = load i32, ptr %7, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %230
  %236 = sub i32 0, %233
  call void @__mod_node_page_state(ptr noundef %231, i32 noundef %5, i32 noundef %236) #13
  call void @__mod_zone_page_state(ptr noundef %231, i32 noundef %232, i32 noundef %236) #13
  br label %237

237:                                              ; preds = %235, %230
  %238 = getelementptr inbounds i32, ptr %7, i32 1
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %237
  %242 = sub i32 0, %239
  call void @__mod_node_page_state(ptr noundef %231, i32 noundef %5, i32 noundef %242) #13
  %243 = getelementptr i8, ptr %1, i32 -2880
  call void @__mod_zone_page_state(ptr noundef %243, i32 noundef %232, i32 noundef %242) #13
  br label %244

244:                                              ; preds = %241, %237
  %245 = getelementptr inbounds i32, ptr %7, i32 2
  %246 = load i32, ptr %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = sub i32 0, %246
  call void @__mod_node_page_state(ptr noundef %231, i32 noundef %5, i32 noundef %249) #13
  %250 = getelementptr i8, ptr %1, i32 -1984
  call void @__mod_zone_page_state(ptr noundef %250, i32 noundef %232, i32 noundef %249) #13
  br label %251

251:                                              ; preds = %248, %244
  %252 = getelementptr inbounds i32, ptr %7, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = sub i32 0, %253
  call void @__mod_node_page_state(ptr noundef %231, i32 noundef %5, i32 noundef %256) #13
  %257 = getelementptr i8, ptr %1, i32 -1088
  call void @__mod_zone_page_state(ptr noundef %257, i32 noundef %232, i32 noundef %256) #13
  br label %258

258:                                              ; preds = %255, %251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @move_pages_to_lru(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = load volatile ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %160, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.lruvec, ptr %0, i32 0, i32 1
  %10 = getelementptr i8, ptr %0, i32 -3776
  br label %11

11:                                               ; preds = %157, %7
  %12 = phi i32 [ 0, %7 ], [ %142, %157 ]
  br label %13

13:                                               ; preds = %45, %11
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 -4
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  %20 = call ptr @page_mapping(ptr noundef %15) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 10
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !39

27:                                               ; preds = %22
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br label %42

28:                                               ; preds = %22, %13
  %29 = load volatile i32, ptr %14, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %28
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %28
  %35 = ptrtoint ptr %15 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 2097152
  %41 = icmp eq i32 %40, 0
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br i1 %41, label %48, label %42, !prof !10

42:                                               ; preds = %36, %27
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %43 = load i16, ptr %9, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  call void @putback_lru_page(ptr noundef %15)
  call void @_raw_spin_lock_irq(ptr noundef %9) #13
  br label %45

45:                                               ; preds = %101, %93, %42
  %46 = load volatile ptr, ptr %1, align 4
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %160, label %13

48:                                               ; preds = %36
  %49 = load volatile i32, ptr %14, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !10

52:                                               ; preds = %48
  %53 = add i32 %49, -1
  br label %56

54:                                               ; preds = %48
  %55 = ptrtoint ptr %15 to i32
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = inttoptr i32 %57 to ptr
  call void @_set_bit(i32 noundef 4, ptr noundef %58) #13
  %59 = getelementptr i8, ptr %14, i32 24
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #13, !srcloc !15
  %60 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #13, !srcloc !34
  %61 = extractvalue { i32, i32 } %60, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !35
  %62 = icmp eq i32 %61, 0
  %63 = load volatile i32, ptr %14, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %62, label %66, label %104, !prof !11

66:                                               ; preds = %56
  br i1 %65, label %69, label %67, !prof !10

67:                                               ; preds = %66
  %68 = add i32 %63, -1
  br label %71

69:                                               ; preds = %66
  %70 = ptrtoint ptr %15 to i32
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = inttoptr i32 %72 to ptr
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -17
  store i32 %75, ptr %73, align 4
  %76 = load volatile i32, ptr %73, align 4
  %77 = and i32 %76, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = load volatile i32, ptr %73, align 4
  %81 = and i32 %80, 1048576
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79, %71
  %84 = and i32 %76, -1048609
  store i32 %84, ptr %73, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = load volatile i32, ptr %15, align 4
  %87 = and i32 %86, 65536
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load volatile i32, ptr %14, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %101, label %93, !prof !10

93:                                               ; preds = %89, %85
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %94 = load i16, ptr %9, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !29
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %96 = getelementptr i8, ptr %14, i32 36
  %97 = load i8, ptr %96, align 4
  %98 = zext i8 %97 to i32
  %99 = getelementptr [2 x ptr], ptr @compound_page_dtors, i32 0, i32 %98
  %100 = load ptr, ptr %99, align 4
  call void %100(ptr noundef %15) #13
  call void @_raw_spin_lock_irq(ptr noundef %9) #13
  br label %45

101:                                              ; preds = %89
  %102 = load ptr, ptr %3, align 8
  %103 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  store ptr %14, ptr %103, align 4
  store ptr %102, ptr %14, align 4
  store ptr %3, ptr %16, align 4
  store volatile ptr %14, ptr %3, align 8
  br label %45

104:                                              ; preds = %56
  br i1 %65, label %107, label %105, !prof !10

105:                                              ; preds = %104
  %106 = add i32 %63, -1
  br label %109

107:                                              ; preds = %104
  %108 = ptrtoint ptr %15 to i32
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = inttoptr i32 %110 to ptr
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %112, 1048576
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load volatile i32, ptr %111, align 4
  %117 = lshr i32 %116, 18
  %118 = and i32 %117, 2
  %119 = load volatile i32, ptr %111, align 4
  %120 = lshr i32 %119, 5
  %121 = and i32 %120, 1
  %122 = or i32 %121, %118
  %123 = xor i32 %122, 2
  br label %124

124:                                              ; preds = %115, %109
  %125 = phi i32 [ %123, %115 ], [ 4, %109 ]
  %126 = load volatile i32, ptr %111, align 4
  %127 = and i32 %126, 65536
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = getelementptr %struct.page, ptr %111, i32 1, i32 1, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = phi i32 [ %131, %129 ], [ 1, %124 ]
  %134 = lshr i32 %112, 30
  call void @__mod_node_page_state(ptr noundef %10, i32 noundef %125, i32 noundef %133) #13
  %135 = getelementptr [4 x %struct.zone], ptr %10, i32 0, i32 %134
  %136 = add nsw i32 %125, 1
  call void @__mod_zone_page_state(ptr noundef %135, i32 noundef %136, i32 noundef %133) #13
  %137 = getelementptr inbounds %struct.anon.74, ptr %111, i32 0, i32 1
  %138 = getelementptr [5 x %struct.list_head], ptr %0, i32 0, i32 %125
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  store ptr %137, ptr %140, align 4
  store ptr %139, ptr %137, align 4
  %141 = getelementptr inbounds %struct.anon.74, ptr %111, i32 0, i32 1, i32 1
  store ptr %138, ptr %141, align 4
  store volatile ptr %137, ptr %138, align 4
  %142 = add i32 %12, 1
  %143 = load volatile i32, ptr %14, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146, !prof !10

146:                                              ; preds = %132
  %147 = add i32 %143, -1
  br label %150

148:                                              ; preds = %132
  %149 = ptrtoint ptr %15 to i32
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = inttoptr i32 %151 to ptr
  %153 = load volatile i32, ptr %152, align 4
  %154 = and i32 %153, 32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %150
  call void @workingset_age_nonresident(ptr noundef %0, i32 noundef 1) #13
  br label %157

157:                                              ; preds = %156, %150
  %158 = load volatile ptr, ptr %1, align 4
  %159 = icmp eq ptr %158, %1
  br i1 %159, label %160, label %11

160:                                              ; preds = %157, %45, %2
  %161 = phi i32 [ 0, %2 ], [ %12, %45 ], [ %142, %157 ]
  %162 = load volatile ptr, ptr %3, align 8
  %163 = icmp eq ptr %162, %3
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %4, align 4
  %166 = getelementptr inbounds %struct.list_head, ptr %162, i32 0, i32 1
  store ptr %1, ptr %166, align 4
  store ptr %162, ptr %1, align 4
  store ptr %1, ptr %165, align 4
  %167 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %165, ptr %167, align 4
  br label %168

168:                                              ; preds = %164, %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_note_cost(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_age_nonresident(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @balance_pgdat(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x i32], align 4
  %5 = alloca %struct.scan_control, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.scan_control, ptr %5, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i64 72, i1 false)
  store i16 32, ptr %6, align 4
  %7 = getelementptr inbounds %struct.scan_control, ptr %5, i32 0, i32 6
  %8 = trunc i32 %1 to i8
  store i8 %8, ptr %7, align 2
  %9 = getelementptr inbounds %struct.scan_control, ptr %5, i32 0, i32 9
  store i32 3264, ptr %9, align 4
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.scan_control, ptr %5, i32 0, i32 13
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 116
  %14 = load ptr, ptr %13, align 8
  br i1 %12, label %20, label %15

15:                                               ; preds = %3
  %16 = icmp ne ptr %14, null
  %17 = load i1, ptr @set_task_reclaim_state.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %25, label %28, !prof !11

20:                                               ; preds = %3
  %21 = icmp eq ptr %14, null
  %22 = load i1, ptr @set_task_reclaim_state.__already_done.141, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %28, !prof !11

25:                                               ; preds = %20, %15
  %26 = phi ptr [ @set_task_reclaim_state.__already_done, %15 ], [ @set_task_reclaim_state.__already_done.141, %20 ]
  %27 = phi i32 [ 183, %15 ], [ 186, %20 ]
  store i1 true, ptr %26, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef %27, i32 noundef 9, ptr noundef null) #13
  br label %28

28:                                               ; preds = %25, %20, %15
  store ptr %11, ptr %13, align 8
  %29 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %30 = call i32 @llvm.read_register.i32(metadata !0) #13
  %31 = inttoptr i32 %30 to ptr
  %32 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #7, !srcloc !12
  %33 = add i32 %32, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 41) to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #13, !srcloc !44
  %37 = icmp slt i32 %2, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %49, %28
  %39 = phi i32 [ %51, %49 ], [ 0, %28 ]
  %40 = phi i32 [ %50, %49 ], [ 0, %28 ]
  %41 = getelementptr %struct.zone, ptr %0, i32 %39, i32 11
  %42 = load volatile i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = getelementptr %struct.zone, ptr %0, i32 %39, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %40
  %48 = getelementptr [4 x i32], ptr %4, i32 0, i32 %39
  store i32 %46, ptr %48, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i32 [ %47, %44 ], [ %40, %38 ]
  %51 = add i32 %39, 1
  %52 = icmp sgt i32 %51, %2
  br i1 %52, label %53, label %38

53:                                               ; preds = %49, %28
  %54 = phi i32 [ 0, %28 ], [ %50, %49 ]
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.scan_control, ptr %5, i32 0, i32 7
  %57 = getelementptr inbounds %struct.scan_control, ptr %5, i32 0, i32 11
  %58 = trunc i32 %2 to i8
  %59 = getelementptr inbounds %struct.scan_control, ptr %5, i32 0, i32 8
  %60 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 7
  %61 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 24
  %62 = getelementptr inbounds %struct.scan_control, ptr %5, i32 0, i32 10
  %63 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 9
  %64 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 9, i32 1
  %65 = getelementptr %struct.zone, ptr %0, i32 3, i32 11
  %66 = getelementptr %struct.zone, ptr %0, i32 2, i32 11
  %67 = getelementptr %struct.zone, ptr %0, i32 1, i32 11
  %68 = getelementptr %struct.zone, ptr %0, i32 0, i32 11
  br label %69

69:                                               ; preds = %127, %53
  %70 = phi i32 [ %54, %53 ], [ 0, %127 ]
  br i1 %37, label %81, label %71

71:                                               ; preds = %78, %69
  %72 = phi i32 [ %79, %78 ], [ 0, %69 ]
  %73 = getelementptr %struct.zone, ptr %0, i32 %72, i32 11
  %74 = load volatile i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = getelementptr %struct.zone, ptr %0, i32 %72, i32 21
  call void @_set_bit(i32 noundef 1, ptr noundef %77) #13
  br label %78

78:                                               ; preds = %76, %71
  %79 = add i32 %72, 1
  %80 = icmp sgt i32 %79, %2
  br i1 %80, label %81, label %71

81:                                               ; preds = %78, %69
  store i8 12, ptr %56, align 1
  %82 = load i32, ptr %57, align 4
  br label %83

83:                                               ; preds = %247, %81
  %84 = phi i32 [ %82, %81 ], [ %235, %247 ]
  %85 = phi i32 [ %70, %81 ], [ %237, %247 ]
  store i8 %58, ptr %59, align 4
  %86 = load i32, ptr @buffer_heads_over_limit, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %83
  %89 = load volatile i32, ptr %65, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %99, %96, %93, %88
  %92 = phi i8 [ 3, %88 ], [ 2, %93 ], [ 1, %96 ], [ 0, %99 ]
  store i8 %92, ptr %59, align 4
  br label %102

93:                                               ; preds = %88
  %94 = load volatile i32, ptr %66, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %91

96:                                               ; preds = %93
  %97 = load volatile i32, ptr %67, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %91

99:                                               ; preds = %96
  %100 = load volatile i32, ptr %68, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %91

102:                                              ; preds = %99, %91, %83
  %103 = load i8, ptr %7, align 2
  %104 = sext i8 %103 to i32
  br i1 %37, label %105, label %107

105:                                              ; preds = %102
  %106 = icmp ne i32 %85, 0
  br label %131

107:                                              ; preds = %123, %102
  %108 = phi i32 [ %124, %123 ], [ -1, %102 ]
  %109 = phi i32 [ %125, %123 ], [ 0, %102 ]
  %110 = getelementptr %struct.zone, ptr %0, i32 %109, i32 11
  %111 = load volatile i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %107
  %114 = getelementptr %struct.zone, ptr %0, i32 %109
  %115 = getelementptr [3 x i32], ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = getelementptr %struct.zone, ptr %0, i32 %109, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, %116
  %120 = call zeroext i1 @zone_watermark_ok_safe(ptr noundef %114, i32 noundef %104, i32 noundef %119, i32 noundef %2) #13
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = icmp ne i32 %85, 0
  br label %131

123:                                              ; preds = %113, %107
  %124 = phi i32 [ %119, %113 ], [ %108, %107 ]
  %125 = add i32 %109, 1
  %126 = icmp sgt i32 %125, %2
  br i1 %126, label %127, label %107

127:                                              ; preds = %123
  %128 = icmp ne i32 %124, -1
  %129 = icmp ne i32 %85, 0
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %69, label %131

131:                                              ; preds = %127, %121, %105
  %132 = phi i1 [ %122, %121 ], [ %129, %127 ], [ %106, %105 ]
  %133 = phi i1 [ false, %121 ], [ %128, %127 ], [ false, %105 ]
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %135, label %257

135:                                              ; preds = %131
  %136 = load i8, ptr %56, align 1
  %137 = icmp ne i8 %136, 10
  %138 = xor i1 %132, true
  %139 = select i1 %138, i1 true, i1 %137
  %140 = load i32, ptr @laptop_mode, align 4
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i1 %138, i1 false
  %143 = load i16, ptr %6, align 4
  %144 = select i1 %142, i16 16, i16 0
  %145 = and i16 %143, -81
  %146 = select i1 %132, i16 0, i16 64
  %147 = or i16 %145, %146
  %148 = or i16 %147, %144
  store i16 %148, ptr %6, align 4
  %149 = load i32, ptr @total_swap_pages, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %135
  %152 = load i8, ptr @numa_demotion_enabled, align 1, !range !13
  %153 = icmp ne i8 %152, 0
  %154 = and i16 %143, 8192
  %155 = icmp eq i16 %154, 0
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %177

157:                                              ; preds = %151
  %158 = load i32, ptr %60, align 4
  %159 = call i32 @next_demotion_node(i32 noundef %158) #13
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %177, label %161

161:                                              ; preds = %157, %135
  %162 = load volatile i32, ptr @vm_node_stat, align 4
  %163 = call i32 @llvm.smax.i32(i32 %162, i32 0) #13
  %164 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %165 = call i32 @llvm.smax.i32(i32 %164, i32 0) #13
  %166 = add nuw i32 %165, %163
  %167 = icmp ult i32 %166, 262144
  br i1 %167, label %172, label %168

168:                                              ; preds = %161
  %169 = lshr i32 %166, 18
  %170 = mul nuw nsw i32 %169, 10
  %171 = call i32 @int_sqrt(i32 noundef %170) #13
  br label %172

172:                                              ; preds = %168, %161
  %173 = phi i32 [ %171, %168 ], [ 1, %161 ]
  %174 = mul i32 %173, %163
  %175 = icmp ult i32 %174, %165
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  call fastcc void @shrink_active_list(i32 noundef 32, ptr noundef %61, ptr noundef nonnull %5, i32 noundef 1) #13
  br label %177

177:                                              ; preds = %176, %172, %157, %151
  %178 = load i8, ptr %56, align 1
  %179 = icmp slt i8 %178, 10
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i16, ptr %6, align 4
  %182 = or i16 %181, 16
  store i16 %182, ptr %6, align 4
  br label %183

183:                                              ; preds = %180, %177
  store i32 0, ptr %62, align 4
  store i32 0, ptr %5, align 4
  %184 = load i8, ptr %59, align 4
  %185 = icmp slt i8 %184, 0
  br i1 %185, label %206, label %186

186:                                              ; preds = %183
  %187 = zext i8 %184 to i32
  br label %188

188:                                              ; preds = %202, %186
  %189 = phi i32 [ %203, %202 ], [ 0, %186 ]
  %190 = phi i32 [ %204, %202 ], [ 0, %186 ]
  %191 = getelementptr %struct.zone, ptr %0, i32 %190, i32 11
  %192 = load volatile i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %188
  %195 = getelementptr %struct.zone, ptr %0, i32 %190, i32 0, i32 2
  %196 = load i32, ptr %195, align 8
  %197 = getelementptr %struct.zone, ptr %0, i32 %190, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, %196
  %200 = call i32 @llvm.umax.i32(i32 %199, i32 32) #13
  %201 = add i32 %200, %189
  store i32 %201, ptr %5, align 4
  br label %202

202:                                              ; preds = %194, %188
  %203 = phi i32 [ %189, %188 ], [ %201, %194 ]
  %204 = add nuw nsw i32 %190, 1
  %205 = icmp eq i32 %190, %187
  br i1 %205, label %206, label %188

206:                                              ; preds = %202, %183
  call fastcc void @shrink_node(ptr noundef %0, ptr noundef nonnull %5) #13
  %207 = load i8, ptr %7, align 2
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %206
  %210 = load i32, ptr %57, align 4
  %211 = zext i8 %207 to i32
  %212 = shl i32 2, %211
  %213 = icmp ult i32 %210, %212
  br i1 %213, label %215, label %214

214:                                              ; preds = %209
  store i8 0, ptr %7, align 2
  br label %215

215:                                              ; preds = %214, %209, %206
  %216 = load i32, ptr %62, align 4
  %217 = load i32, ptr %5, align 4
  %218 = icmp ult i32 %216, %217
  %219 = select i1 %218, i1 %139, i1 false
  %220 = load volatile ptr, ptr %64, align 4
  %221 = icmp eq ptr %220, %64
  br i1 %221, label %225, label %222

222:                                              ; preds = %215
  %223 = call fastcc zeroext i1 @allow_direct_reclaim(ptr noundef %0)
  br i1 %223, label %224, label %225

224:                                              ; preds = %222
  call void @__wake_up(ptr noundef %63, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %225

225:                                              ; preds = %224, %222, %215
  %226 = load volatile i32, ptr @system_freezing_cnt, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %232, label %228, !prof !10

228:                                              ; preds = %225
  %229 = call zeroext i1 @freezing_slow_path(ptr noundef %10) #13
  br i1 %229, label %230, label %232, !prof !11

230:                                              ; preds = %228
  %231 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br i1 %231, label %250, label %232

232:                                              ; preds = %230, %228, %225
  %233 = call zeroext i1 @kthread_should_stop() #13
  br i1 %233, label %250, label %234

234:                                              ; preds = %232
  %235 = load i32, ptr %57, align 4
  %236 = sub i32 %235, %84
  %237 = call i32 @llvm.usub.sat.i32(i32 %85, i32 %236)
  %238 = icmp ule i32 %85, %236
  %239 = icmp ne i32 %235, %84
  %240 = or i1 %239, %238
  br i1 %240, label %241, label %250

241:                                              ; preds = %234
  %242 = xor i1 %219, true
  %243 = select i1 %242, i1 %239, i1 false
  %244 = load i8, ptr %56, align 1
  br i1 %243, label %247, label %245

245:                                              ; preds = %241
  %246 = add i8 %244, -1
  store i8 %246, ptr %56, align 1
  br label %247

247:                                              ; preds = %245, %241
  %248 = phi i8 [ %246, %245 ], [ %244, %241 ]
  %249 = icmp sgt i8 %248, 0
  br i1 %249, label %83, label %250

250:                                              ; preds = %247, %234, %232, %230
  %251 = load i32, ptr %57, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 16
  %255 = load i32, ptr %254, align 4
  %256 = add i32 %255, 1
  store i32 %256, ptr %254, align 4
  br label %257

257:                                              ; preds = %253, %250, %131
  br i1 %37, label %269, label %258

258:                                              ; preds = %265, %257
  %259 = phi i32 [ %266, %265 ], [ 0, %257 ]
  %260 = getelementptr %struct.zone, ptr %0, i32 %259, i32 11
  %261 = load volatile i32, ptr %260, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %258
  %264 = getelementptr %struct.zone, ptr %0, i32 %259, i32 21
  call void @_clear_bit(i32 noundef 1, ptr noundef %264) #13
  br label %265

265:                                              ; preds = %263, %258
  %266 = add i32 %259, 1
  %267 = icmp sgt i32 %266, %2
  br i1 %267, label %268, label %258

268:                                              ; preds = %265
  br i1 %55, label %286, label %270

269:                                              ; preds = %257
  br i1 %55, label %286, label %285

270:                                              ; preds = %268
  br i1 %37, label %285, label %271

271:                                              ; preds = %282, %270
  %272 = phi i32 [ %283, %282 ], [ 0, %270 ]
  %273 = getelementptr [4 x i32], ptr %4, i32 0, i32 %272
  %274 = load i32, ptr %273, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %271
  %277 = getelementptr %struct.zone, ptr %0, i32 %272, i32 22
  %278 = call i32 @_raw_spin_lock_irqsave(ptr noundef %277) #13
  %279 = getelementptr %struct.zone, ptr %0, i32 %272, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = call i32 @llvm.usub.sat.i32(i32 %280, i32 %274)
  store i32 %281, ptr %279, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %277, i32 noundef %278) #13
  br label %282

282:                                              ; preds = %276, %271
  %283 = add i32 %272, 1
  %284 = icmp sgt i32 %283, %2
  br i1 %284, label %285, label %271

285:                                              ; preds = %282, %270, %269
  call void @wakeup_kcompactd(ptr noundef %0, i32 noundef 11, i32 noundef %2) #13
  br label %286

286:                                              ; preds = %285, %269, %268
  %287 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 12), align 4
  %288 = call i32 @llvm.smax.i32(i32 %287, i32 0) #13
  %289 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 24, i32 5
  store i32 %288, ptr %289, align 4
  %290 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 13), align 4
  %291 = call i32 @llvm.smax.i32(i32 %290, i32 0) #13
  %292 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 24, i32 5, i32 1
  store i32 %291, ptr %292, align 4
  %293 = load ptr, ptr %13, align 8
  %294 = icmp eq ptr %293, null
  %295 = load i1, ptr @set_task_reclaim_state.__already_done.141, align 1
  %296 = xor i1 %295, true
  %297 = select i1 %294, i1 %296, i1 false
  br i1 %297, label %298, label %299, !prof !11

298:                                              ; preds = %286
  store i1 true, ptr @set_task_reclaim_state.__already_done.141, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 186, i32 noundef 9, ptr noundef null) #13
  br label %299

299:                                              ; preds = %298, %286
  store ptr null, ptr %13, align 8
  %300 = load i8, ptr %7, align 2
  %301 = sext i8 %300 to i32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %301
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @prepare_kswapd_sleep(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 9, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 15
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %29, %13
  %16 = phi i32 [ %30, %29 ], [ -1, %13 ]
  %17 = phi i32 [ %31, %29 ], [ 0, %13 ]
  %18 = getelementptr %struct.zone, ptr %0, i32 %17, i32 11
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = getelementptr %struct.zone, ptr %0, i32 %17
  %23 = getelementptr [3 x i32], ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr %struct.zone, ptr %0, i32 %17, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = tail call zeroext i1 @zone_watermark_ok_safe(ptr noundef %22, i32 noundef %1, i32 noundef %27, i32 noundef %2) #13
  br i1 %28, label %35, label %29

29:                                               ; preds = %21, %15
  %30 = phi i32 [ %27, %21 ], [ %16, %15 ]
  %31 = add i32 %17, 1
  %32 = icmp sgt i32 %31, %2
  br i1 %32, label %33, label %15

33:                                               ; preds = %29
  %34 = icmp eq i32 %30, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %33, %21, %13
  %36 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 24, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %36) #13
  %37 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 25
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %37) #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %37) #13
  br label %38

38:                                               ; preds = %35, %33, %9
  %39 = phi i1 [ true, %35 ], [ true, %9 ], [ false, %33 ]
  ret i1 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_isolation_suitable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pgdat_percpu_threshold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calculate_normal_threshold(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calculate_pressure_threshold(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @swap_setup() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

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
!12 = !{i64 904967}
!13 = !{i8 0, i8 2}
!14 = !{i64 2148579821}
!15 = !{i64 980589, i64 2148470560, i64 2148470586, i64 2148470633, i64 2148470655, i64 2148470683, i64 2148470703}
!16 = !{i64 2148482659, i64 2148482691, i64 2148482720, i64 2148482754, i64 2148482785, i64 2148482808}
!17 = !{i64 2148580024}
!18 = !{i64 2148484332, i64 2148484358, i64 2148484387, i64 2148484421, i64 2148484452, i64 2148484475}
!19 = !{i64 2154407868}
!20 = !{i64 2154408096}
!21 = !{i64 2148576449}
!22 = !{i64 2156523126, i64 2156523603, i64 2156523163, i64 2156523219, i64 2156523253, i64 2156523277, i64 2156523318, i64 2156523339, i64 2156523367, i64 2156523401}
!23 = !{i64 2156524155, i64 2156524632, i64 2156524192, i64 2156524248, i64 2156524282, i64 2156524306, i64 2156524347, i64 2156524368, i64 2156524396, i64 2156524430}
!24 = !{i64 2148595401}
!25 = !{i64 966652, i64 966676, i64 966697, i64 966714, i64 966731}
!26 = !{i64 2148595601}
!27 = !{i64 2149147655}
!28 = !{i64 2149143479}
!29 = !{i64 2149143554, i64 2149143581, i64 2149143628, i64 2149143650, i64 2149143678, i64 2149143698}
!30 = !{i64 886512}
!31 = !{i64 2149171799}
!32 = !{i64 2149170658}
!33 = !{i64 2148582654}
!34 = !{i64 2148485016, i64 2148485048, i64 2148485077, i64 2148485111, i64 2148485142, i64 2148485165}
!35 = !{i64 2148582857}
!36 = !{i64 2148490437, i64 2148490469, i64 2148490498, i64 2148490532, i64 2148490563, i64 2148490586}
!37 = !{i64 2148591777}
!38 = !{i64 2149546427}
!39 = !{!"branch_weights", i32 2146410443, i32 1073205}
!40 = !{i64 2149546644}
!41 = !{i64 2154308731}
!42 = !{i64 2154308889}
!43 = !{i64 886267, i64 886328}
!44 = !{i64 889284}
!45 = !{i64 2148481975, i64 2148482001, i64 2148482030, i64 2148482064, i64 2148482095, i64 2148482118}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.peeled.count", i32 1}
!48 = !{i64 2154211597}
!49 = !{i64 2154211801}
!50 = !{i64 2154228974}
!51 = !{i64 2154229166}
!52 = !{i64 2154194370}
!53 = !{i64 2154194580}
!54 = !{i64 2156625811, i64 2156626288, i64 2156625848, i64 2156625904, i64 2156625938, i64 2156625962, i64 2156626003, i64 2156626024, i64 2156626052, i64 2156626086}
!55 = !{i64 2154156661}
!56 = !{i64 2154156823}
!57 = !{i64 2154173237}
!58 = !{i64 2154173421}
!59 = !{i64 2148686298}
!60 = !{i64 989239, i64 989256, i64 989280, i64 989306, i64 989324}
!61 = !{i64 2148686642}
!62 = !{i64 2148331372, i64 2148331652, i64 2148331986, i64 2148332320}
!63 = !{i64 2154248514}
!64 = !{i64 2154248812}
!65 = !{i64 2154271480}
!66 = !{i64 2154271768}
!67 = !{i64 2154331110}
!68 = !{i64 2154331382}
!69 = !{i64 2154351024}
!70 = !{i64 2154351332}
!71 = !{i64 2148481482}
!72 = !{i64 967158, i64 967183, i64 967205, i64 967221, i64 967233, i64 967253, i64 967277, i64 967293, i64 967305}
!73 = !{i64 2148481608}
!74 = !{i64 2154291476}
!75 = !{i64 2154291808}
