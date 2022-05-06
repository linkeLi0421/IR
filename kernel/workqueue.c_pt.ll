; ModuleID = '/llk/IR/kernel/workqueue.c_pt.bc'
source_filename = "../kernel/workqueue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22system_wq\22\09\09\09\09\09"
module asm "__kstrtabns_system_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_highpri_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22system_highpri_wq\22\09\09\09\09\09"
module asm "__kstrtabns_system_highpri_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_long_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22system_long_wq\22\09\09\09\09\09"
module asm "__kstrtabns_system_long_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_unbound_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22system_unbound_wq\22\09\09\09\09\09"
module asm "__kstrtabns_system_unbound_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_freezable_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22system_freezable_wq\22\09\09\09\09\09"
module asm "__kstrtabns_system_freezable_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_power_efficient_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22system_power_efficient_wq\22\09\09\09\09\09"
module asm "__kstrtabns_system_power_efficient_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_freezable_power_efficient_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22system_freezable_power_efficient_wq\22\09\09\09\09\09"
module asm "__kstrtabns_system_freezable_power_efficient_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_queue_work_on:\09\09\09\09\09"
module asm "\09.asciz \09\22queue_work_on\22\09\09\09\09\09"
module asm "__kstrtabns_queue_work_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_queue_work_node:\09\09\09\09\09"
module asm "\09.asciz \09\22queue_work_node\22\09\09\09\09\09"
module asm "__kstrtabns_queue_work_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_delayed_work_timer_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22delayed_work_timer_fn\22\09\09\09\09\09"
module asm "__kstrtabns_delayed_work_timer_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_queue_delayed_work_on:\09\09\09\09\09"
module asm "\09.asciz \09\22queue_delayed_work_on\22\09\09\09\09\09"
module asm "__kstrtabns_queue_delayed_work_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mod_delayed_work_on:\09\09\09\09\09"
module asm "\09.asciz \09\22mod_delayed_work_on\22\09\09\09\09\09"
module asm "__kstrtabns_mod_delayed_work_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_queue_rcu_work:\09\09\09\09\09"
module asm "\09.asciz \09\22queue_rcu_work\22\09\09\09\09\09"
module asm "__kstrtabns_queue_rcu_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_workqueue\22\09\09\09\09\09"
module asm "__kstrtabns_flush_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drain_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22drain_workqueue\22\09\09\09\09\09"
module asm "__kstrtabns_drain_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_work:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_work\22\09\09\09\09\09"
module asm "__kstrtabns_flush_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cancel_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22cancel_work_sync\22\09\09\09\09\09"
module asm "__kstrtabns_cancel_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_delayed_work\22\09\09\09\09\09"
module asm "__kstrtabns_flush_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_rcu_work:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_rcu_work\22\09\09\09\09\09"
module asm "__kstrtabns_flush_rcu_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cancel_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22cancel_delayed_work\22\09\09\09\09\09"
module asm "__kstrtabns_cancel_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cancel_delayed_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22cancel_delayed_work_sync\22\09\09\09\09\09"
module asm "__kstrtabns_cancel_delayed_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_execute_in_process_context:\09\09\09\09\09"
module asm "\09.asciz \09\22execute_in_process_context\22\09\09\09\09\09"
module asm "__kstrtabns_execute_in_process_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_workqueue\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_destroy_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22destroy_workqueue\22\09\09\09\09\09"
module asm "__kstrtabns_destroy_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_workqueue_set_max_active:\09\09\09\09\09"
module asm "\09.asciz \09\22workqueue_set_max_active\22\09\09\09\09\09"
module asm "__kstrtabns_workqueue_set_max_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_current_work:\09\09\09\09\09"
module asm "\09.asciz \09\22current_work\22\09\09\09\09\09"
module asm "__kstrtabns_current_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_workqueue_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22workqueue_congested\22\09\09\09\09\09"
module asm "__kstrtabns_workqueue_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_work_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22work_busy\22\09\09\09\09\09"
module asm "__kstrtabns_work_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_worker_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22set_worker_desc\22\09\09\09\09\09"
module asm "__kstrtabns_set_worker_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_work_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22work_on_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_work_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_work_on_cpu_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22work_on_cpu_safe\22\09\09\09\09\09"
module asm "__kstrtabns_work_on_cpu_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.61 }
%union.anon.61 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.92 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.94, %struct.trace_event, ptr, ptr, %union.anon.95, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.94 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.95 = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type {}
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.worker_pool = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.list_head, %struct.timer_list, %struct.timer_list, [64 x %struct.hlist_head], ptr, %struct.list_head, ptr, %struct.ida, ptr, %struct.hlist_node, i32, %struct.callback_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.callback_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rcuwait = type { ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.pool_workqueue = type { ptr, ptr, i32, i32, i32, [16 x i32], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.callback_head, [116 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.workqueue_struct = type { %struct.list_head, %struct.list_head, %struct.mutex, i32, i32, %struct.atomic_t, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, [24 x i8], %struct.callback_head, [60 x i8], i32, ptr, [0 x ptr], [56 x i8] }
%struct.trace_event_raw_workqueue_queue_work = type { %struct.trace_entry, ptr, ptr, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_workqueue_activate_work = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_workqueue_execute_start = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.trace_event_raw_workqueue_execute_end = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.worker = type { %union.anon.52, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.list_head, i32, i32, i32, i32, [24 x i8], ptr, ptr }
%union.anon.52 = type { %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.wq_flusher = type { %struct.list_head, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wq_barrier = type { %struct.work_struct, %struct.completion, ptr }
%struct.cwt_wait = type { %struct.wait_queue_entry, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.workqueue_attrs = type { i32, [1 x %struct.cpumask], i8 }
%struct.apply_wqattrs_ctx = type { ptr, ptr, %struct.list_head, ptr, [0 x ptr] }
%struct.__va_list = type { ptr }
%struct.wq_device = type { ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_for_cpu = type { %struct.work_struct, ptr, ptr, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__param_str_disable_numa = internal constant [23 x i8] c"workqueue.disable_numa\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@wq_disable_numa = internal global i8 0, align 1
@__param_disable_numa = internal constant %struct.kernel_param { ptr @__param_str_disable_numa, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.61 { ptr @wq_disable_numa } }, section "__param", align 4
@__UNIQUE_ID_disable_numatype234 = internal constant [37 x i8] c"workqueue.parmtype=disable_numa:bool\00", section ".modinfo", align 1
@__param_str_power_efficient = internal constant [26 x i8] c"workqueue.power_efficient\00", align 1
@wq_power_efficient = internal global i8 0, align 1
@__param_power_efficient = internal constant %struct.kernel_param { ptr @__param_str_power_efficient, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.61 { ptr @wq_power_efficient } }, section "__param", align 4
@__UNIQUE_ID_power_efficienttype235 = internal constant [40 x i8] c"workqueue.parmtype=power_efficient:bool\00", section ".modinfo", align 1
@__param_str_debug_force_rr_cpu = internal constant [29 x i8] c"workqueue.debug_force_rr_cpu\00", align 1
@wq_debug_force_rr_cpu = internal global i8 0, align 1
@__param_debug_force_rr_cpu = internal constant %struct.kernel_param { ptr @__param_str_debug_force_rr_cpu, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.61 { ptr @wq_debug_force_rr_cpu } }, section "__param", align 4
@__UNIQUE_ID_debug_force_rr_cputype236 = internal constant [43 x i8] c"workqueue.parmtype=debug_force_rr_cpu:bool\00", section ".modinfo", align 1
@system_wq = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_system_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_system_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_wq to i32), ptr @__kstrtab_system_wq, ptr @__kstrtabns_system_wq }, section "___ksymtab+system_wq", align 4
@system_highpri_wq = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_system_highpri_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_highpri_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_system_highpri_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_highpri_wq to i32), ptr @__kstrtab_system_highpri_wq, ptr @__kstrtabns_system_highpri_wq }, section "___ksymtab_gpl+system_highpri_wq", align 4
@system_long_wq = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_system_long_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_long_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_system_long_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_long_wq to i32), ptr @__kstrtab_system_long_wq, ptr @__kstrtabns_system_long_wq }, section "___ksymtab_gpl+system_long_wq", align 4
@system_unbound_wq = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_system_unbound_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_unbound_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_system_unbound_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_unbound_wq to i32), ptr @__kstrtab_system_unbound_wq, ptr @__kstrtabns_system_unbound_wq }, section "___ksymtab_gpl+system_unbound_wq", align 4
@system_freezable_wq = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_system_freezable_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_freezable_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_system_freezable_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_freezable_wq to i32), ptr @__kstrtab_system_freezable_wq, ptr @__kstrtabns_system_freezable_wq }, section "___ksymtab_gpl+system_freezable_wq", align 4
@system_power_efficient_wq = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_system_power_efficient_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_power_efficient_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_system_power_efficient_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_power_efficient_wq to i32), ptr @__kstrtab_system_power_efficient_wq, ptr @__kstrtabns_system_power_efficient_wq }, section "___ksymtab_gpl+system_power_efficient_wq", align 4
@system_freezable_power_efficient_wq = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_system_freezable_power_efficient_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_freezable_power_efficient_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_system_freezable_power_efficient_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_freezable_power_efficient_wq to i32), ptr @__kstrtab_system_freezable_power_efficient_wq, ptr @__kstrtabns_system_freezable_power_efficient_wq }, section "___ksymtab_gpl+system_freezable_power_efficient_wq", align 4
@__tpstrtab_workqueue_queue_work = internal constant [21 x i8] c"workqueue_queue_work\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_workqueue_queue_work = dso_local global %struct.static_call_key { ptr @__traceiter_workqueue_queue_work }, align 4
@__tracepoint_workqueue_queue_work = dso_local global %struct.tracepoint { ptr @__tpstrtab_workqueue_queue_work, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_workqueue_queue_work, ptr null, ptr @__traceiter_workqueue_queue_work, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_workqueue_queue_work = internal constant ptr @__tracepoint_workqueue_queue_work, section "__tracepoints_ptrs", align 4
@__tpstrtab_workqueue_activate_work = internal constant [24 x i8] c"workqueue_activate_work\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_workqueue_activate_work = dso_local global %struct.static_call_key { ptr @__traceiter_workqueue_activate_work }, align 4
@__tracepoint_workqueue_activate_work = dso_local global %struct.tracepoint { ptr @__tpstrtab_workqueue_activate_work, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_workqueue_activate_work, ptr null, ptr @__traceiter_workqueue_activate_work, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_workqueue_activate_work = internal constant ptr @__tracepoint_workqueue_activate_work, section "__tracepoints_ptrs", align 4
@__tpstrtab_workqueue_execute_start = internal constant [24 x i8] c"workqueue_execute_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_workqueue_execute_start = dso_local global %struct.static_call_key { ptr @__traceiter_workqueue_execute_start }, align 4
@__tracepoint_workqueue_execute_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_workqueue_execute_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_workqueue_execute_start, ptr null, ptr @__traceiter_workqueue_execute_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_workqueue_execute_start = internal constant ptr @__tracepoint_workqueue_execute_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_workqueue_execute_end = internal constant [22 x i8] c"workqueue_execute_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_workqueue_execute_end = dso_local global %struct.static_call_key { ptr @__traceiter_workqueue_execute_end }, align 4
@__tracepoint_workqueue_execute_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_workqueue_execute_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_workqueue_execute_end, ptr null, ptr @__traceiter_workqueue_execute_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_workqueue_execute_end = internal constant ptr @__tracepoint_workqueue_execute_end, section "__tracepoints_ptrs", align 4
@trace_event_fields_workqueue_queue_work = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.92 { %struct.anon.93 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.92 { %struct.anon.93 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.92 { %struct.anon.93 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_workqueue_queue_work = internal global %struct.trace_event_class { ptr @.str.35, ptr @trace_event_raw_event_workqueue_queue_work, ptr @perf_trace_workqueue_queue_work, ptr @trace_event_reg, ptr @trace_event_fields_workqueue_queue_work, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_workqueue_queue_work, i64 24), ptr getelementptr (i8, ptr @event_class_workqueue_queue_work, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_workqueue_queue_work = internal global %struct.trace_event_functions { ptr @trace_raw_output_workqueue_queue_work, ptr null, ptr null, ptr null }, align 4
@print_fmt_workqueue_queue_work = internal global [133 x i8] c"\22work struct=%p function=%ps workqueue=%s req_cpu=%u cpu=%u\22, REC->work, REC->function, __get_str(workqueue), REC->req_cpu, REC->cpu\00", align 1
@event_workqueue_queue_work = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_workqueue_queue_work, %union.anon.94 { ptr @__tracepoint_workqueue_queue_work }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_workqueue_queue_work }, ptr @print_fmt_workqueue_queue_work, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_workqueue_queue_work = internal global ptr @event_workqueue_queue_work, section "_ftrace_events", align 4
@trace_event_fields_workqueue_activate_work = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_workqueue_activate_work = internal global %struct.trace_event_class { ptr @.str.35, ptr @trace_event_raw_event_workqueue_activate_work, ptr @perf_trace_workqueue_activate_work, ptr @trace_event_reg, ptr @trace_event_fields_workqueue_activate_work, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_workqueue_activate_work, i64 24), ptr getelementptr (i8, ptr @event_class_workqueue_activate_work, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_workqueue_activate_work = internal global %struct.trace_event_functions { ptr @trace_raw_output_workqueue_activate_work, ptr null, ptr null, ptr null }, align 4
@print_fmt_workqueue_activate_work = internal global [28 x i8] c"\22work struct %p\22, REC->work\00", align 1
@event_workqueue_activate_work = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_workqueue_activate_work, %union.anon.94 { ptr @__tracepoint_workqueue_activate_work }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_workqueue_activate_work }, ptr @print_fmt_workqueue_activate_work, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_workqueue_activate_work = internal global ptr @event_workqueue_activate_work, section "_ftrace_events", align 4
@trace_event_fields_workqueue_execute_start = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_workqueue_execute_start = internal global %struct.trace_event_class { ptr @.str.35, ptr @trace_event_raw_event_workqueue_execute_start, ptr @perf_trace_workqueue_execute_start, ptr @trace_event_reg, ptr @trace_event_fields_workqueue_execute_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_workqueue_execute_start, i64 24), ptr getelementptr (i8, ptr @event_class_workqueue_execute_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_workqueue_execute_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_workqueue_execute_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_workqueue_execute_start = internal global [57 x i8] c"\22work struct %p: function %ps\22, REC->work, REC->function\00", align 1
@event_workqueue_execute_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_workqueue_execute_start, %union.anon.94 { ptr @__tracepoint_workqueue_execute_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_workqueue_execute_start }, ptr @print_fmt_workqueue_execute_start, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_workqueue_execute_start = internal global ptr @event_workqueue_execute_start, section "_ftrace_events", align 4
@trace_event_fields_workqueue_execute_end = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_workqueue_execute_end = internal global %struct.trace_event_class { ptr @.str.35, ptr @trace_event_raw_event_workqueue_execute_end, ptr @perf_trace_workqueue_execute_end, ptr @trace_event_reg, ptr @trace_event_fields_workqueue_execute_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_workqueue_execute_end, i64 24), ptr getelementptr (i8, ptr @event_class_workqueue_execute_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_workqueue_execute_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_workqueue_execute_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_workqueue_execute_end = internal global [57 x i8] c"\22work struct %p: function %ps\22, REC->work, REC->function\00", align 1
@event_workqueue_execute_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_workqueue_execute_end, %union.anon.94 { ptr @__tracepoint_workqueue_execute_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_workqueue_execute_end }, ptr @print_fmt_workqueue_execute_end, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_workqueue_execute_end = internal global ptr @event_workqueue_execute_end, section "_ftrace_events", align 4
@__kstrtab_queue_work_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_queue_work_on = external dso_local constant [0 x i8], align 1
@__ksymtab_queue_work_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @queue_work_on to i32), ptr @__kstrtab_queue_work_on, ptr @__kstrtabns_queue_work_on }, section "___ksymtab+queue_work_on", align 4
@queue_work_node.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [19 x i8] c"kernel/workqueue.c\00", align 1
@__kstrtab_queue_work_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_queue_work_node = external dso_local constant [0 x i8], align 1
@__ksymtab_queue_work_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @queue_work_node to i32), ptr @__kstrtab_queue_work_node, ptr @__kstrtabns_queue_work_node }, section "___ksymtab_gpl+queue_work_node", align 4
@__kstrtab_delayed_work_timer_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns_delayed_work_timer_fn = external dso_local constant [0 x i8], align 1
@__ksymtab_delayed_work_timer_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @delayed_work_timer_fn to i32), ptr @__kstrtab_delayed_work_timer_fn, ptr @__kstrtabns_delayed_work_timer_fn }, section "___ksymtab+delayed_work_timer_fn", align 4
@__kstrtab_queue_delayed_work_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_queue_delayed_work_on = external dso_local constant [0 x i8], align 1
@__ksymtab_queue_delayed_work_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @queue_delayed_work_on to i32), ptr @__kstrtab_queue_delayed_work_on, ptr @__kstrtabns_queue_delayed_work_on }, section "___ksymtab+queue_delayed_work_on", align 4
@__kstrtab_mod_delayed_work_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_mod_delayed_work_on = external dso_local constant [0 x i8], align 1
@__ksymtab_mod_delayed_work_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mod_delayed_work_on to i32), ptr @__kstrtab_mod_delayed_work_on, ptr @__kstrtabns_mod_delayed_work_on }, section "___ksymtab_gpl+mod_delayed_work_on", align 4
@__kstrtab_queue_rcu_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_queue_rcu_work = external dso_local constant [0 x i8], align 1
@__ksymtab_queue_rcu_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @queue_rcu_work to i32), ptr @__kstrtab_queue_rcu_work, ptr @__kstrtabns_queue_rcu_work }, section "___ksymtab+queue_rcu_work", align 4
@wq_online = internal unnamed_addr global i1 false, align 1
@flush_workqueue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_flush_workqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_workqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_workqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_workqueue to i32), ptr @__kstrtab_flush_workqueue, ptr @__kstrtabns_flush_workqueue }, section "___ksymtab+flush_workqueue", align 4
@.str.9 = private unnamed_addr constant [52 x i8] c"\014workqueue %s: %s() isn't complete after %u tries\0A\00", align 1
@__func__.drain_workqueue = private unnamed_addr constant [16 x i8] c"drain_workqueue\00", align 1
@__kstrtab_drain_workqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_drain_workqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_drain_workqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drain_workqueue to i32), ptr @__kstrtab_drain_workqueue, ptr @__kstrtabns_drain_workqueue }, section "___ksymtab_gpl+drain_workqueue", align 4
@__kstrtab_flush_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_work = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_work to i32), ptr @__kstrtab_flush_work, ptr @__kstrtabns_flush_work }, section "___ksymtab_gpl+flush_work", align 4
@__kstrtab_cancel_work_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_cancel_work_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_cancel_work_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cancel_work_sync to i32), ptr @__kstrtab_cancel_work_sync, ptr @__kstrtabns_cancel_work_sync }, section "___ksymtab_gpl+cancel_work_sync", align 4
@__kstrtab_flush_delayed_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_delayed_work = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_delayed_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_delayed_work to i32), ptr @__kstrtab_flush_delayed_work, ptr @__kstrtabns_flush_delayed_work }, section "___ksymtab+flush_delayed_work", align 4
@__kstrtab_flush_rcu_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_rcu_work = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_rcu_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_rcu_work to i32), ptr @__kstrtab_flush_rcu_work, ptr @__kstrtabns_flush_rcu_work }, section "___ksymtab+flush_rcu_work", align 4
@__kstrtab_cancel_delayed_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_cancel_delayed_work = external dso_local constant [0 x i8], align 1
@__ksymtab_cancel_delayed_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cancel_delayed_work to i32), ptr @__kstrtab_cancel_delayed_work, ptr @__kstrtabns_cancel_delayed_work }, section "___ksymtab+cancel_delayed_work", align 4
@__kstrtab_cancel_delayed_work_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_cancel_delayed_work_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_cancel_delayed_work_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cancel_delayed_work_sync to i32), ptr @__kstrtab_cancel_delayed_work_sync, ptr @__kstrtabns_cancel_delayed_work_sync }, section "___ksymtab+cancel_delayed_work_sync", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_execute_in_process_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_execute_in_process_context = external dso_local constant [0 x i8], align 1
@__ksymtab_execute_in_process_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @execute_in_process_context to i32), ptr @__kstrtab_execute_in_process_context, ptr @__kstrtabns_execute_in_process_context }, section "___ksymtab_gpl+execute_in_process_context", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@wq_pool_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @wq_pool_mutex, i64 12), ptr getelementptr (i8, ptr @wq_pool_mutex, i64 12) } }, align 4
@alloc_workqueue.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"&wq->mutex\00", align 1
@workqueues = internal global %struct.list_head { ptr @workqueues, ptr @workqueues }, align 4
@__kstrtab_alloc_workqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_workqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_workqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_workqueue to i32), ptr @__kstrtab_alloc_workqueue, ptr @__kstrtabns_alloc_workqueue }, section "___ksymtab_gpl+alloc_workqueue", align 4
@wq_mayday_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"\014%s: %s has the following busy pwq\0A\00", align 1
@__func__.destroy_workqueue = private unnamed_addr constant [18 x i8] c"destroy_workqueue\00", align 1
@__kstrtab_destroy_workqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_destroy_workqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_destroy_workqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @destroy_workqueue to i32), ptr @__kstrtab_destroy_workqueue, ptr @__kstrtabns_destroy_workqueue }, section "___ksymtab_gpl+destroy_workqueue", align 4
@__kstrtab_workqueue_set_max_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_workqueue_set_max_active = external dso_local constant [0 x i8], align 1
@__ksymtab_workqueue_set_max_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @workqueue_set_max_active to i32), ptr @__kstrtab_workqueue_set_max_active, ptr @__kstrtabns_workqueue_set_max_active }, section "___ksymtab_gpl+workqueue_set_max_active", align 4
@__kstrtab_current_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_current_work = external dso_local constant [0 x i8], align 1
@__ksymtab_current_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @current_work to i32), ptr @__kstrtab_current_work, ptr @__kstrtabns_current_work }, section "___ksymtab+current_work", align 4
@__kstrtab_workqueue_congested = external dso_local constant [0 x i8], align 1
@__kstrtabns_workqueue_congested = external dso_local constant [0 x i8], align 1
@__ksymtab_workqueue_congested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @workqueue_congested to i32), ptr @__kstrtab_workqueue_congested, ptr @__kstrtabns_workqueue_congested }, section "___ksymtab_gpl+workqueue_congested", align 4
@__kstrtab_work_busy = external dso_local constant [0 x i8], align 1
@__kstrtabns_work_busy = external dso_local constant [0 x i8], align 1
@__ksymtab_work_busy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @work_busy to i32), ptr @__kstrtab_work_busy, ptr @__kstrtabns_work_busy }, section "___ksymtab_gpl+work_busy", align 4
@__kstrtab_set_worker_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_worker_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_set_worker_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_worker_desc to i32), ptr @__kstrtab_set_worker_desc, ptr @__kstrtabns_set_worker_desc }, section "___ksymtab_gpl+set_worker_desc", align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"%sWorkqueue: %s %ps\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"\01c (%s)\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\016workqueue %s: flags=0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"\016Showing busy workqueues and worker pools:\0A\00", align 1
@worker_pool_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@wq_pool_attach_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @wq_pool_attach_mutex, i64 12), ptr getelementptr (i8, ptr @wq_pool_attach_mutex, i64 12) } }, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@cpu_worker_pools = internal global [2 x %struct.worker_pool] zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__kstrtab_work_on_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_work_on_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_work_on_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @work_on_cpu to i32), ptr @__kstrtab_work_on_cpu, ptr @__kstrtabns_work_on_cpu }, section "___ksymtab_gpl+work_on_cpu", align 4
@__kstrtab_work_on_cpu_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_work_on_cpu_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_work_on_cpu_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @work_on_cpu_safe to i32), ptr @__kstrtab_work_on_cpu_safe, ptr @__kstrtabns_work_on_cpu_safe }, section "___ksymtab_gpl+work_on_cpu_safe", align 4
@freeze_workqueues_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@workqueue_freezing = internal unnamed_addr global i1 false, align 1
@freeze_workqueues_busy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@freeze_workqueues_busy.__already_done.19 = internal unnamed_addr global i1 false, section ".data.once", align 1
@wq_unbound_cpumask = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@__initcall__kmod_workqueue__322_5707_wq_sysfs_init1 = internal global ptr @wq_sysfs_init, section ".initcall1.init", align 4
@wq_subsys = internal global %struct.bus_type { ptr @.str.35, ptr null, ptr null, ptr null, ptr @wq_sysfs_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@wq_sysfs_unbound_attrs = internal global [5 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292 }, ptr @wq_pool_ids_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420 }, ptr @wq_nice_show, ptr @wq_nice_store }, %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420 }, ptr @wq_cpumask_show, ptr @wq_cpumask_store }, %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420 }, ptr @wq_numa_show, ptr @wq_numa_store }, %struct.device_attribute zeroinitializer], align 4
@__const.workqueue_init_early.std_nice = private unnamed_addr constant [2 x i32] [i32 0, i32 -20], align 4
@.str.21 = private unnamed_addr constant [15 x i8] c"pool_workqueue\00", align 1
@pwq_cache = internal unnamed_addr global ptr null, align 4
@unbound_std_wq_attrs = internal unnamed_addr global [2 x ptr] zeroinitializer, align 4
@ordered_wq_attrs = internal unnamed_addr global [2 x ptr] zeroinitializer, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"events_highpri\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"events_long\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"events_unbound\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"events_freezable\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"events_power_efficient\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"events_freezable_power_efficient\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"workqueue: failed to create early rescuer for %s\00", align 1
@unbound_pool_hash = internal global [64 x %struct.hlist_head] zeroinitializer, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"work\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.35 = private constant [10 x i8] c"workqueue\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"req_cpu\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"work struct=%p function=%ps workqueue=%s req_cpu=%u cpu=%u\0A\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"work struct %p\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"work struct %p: function %ps\0A\00", align 1
@__queue_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__queue_work.__already_done.42 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"workqueue: per-cpu pwq for %s on cpu%d has 0 refcnt\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@wq_select_unbound_cpu.printed_dbg_warning = internal unnamed_addr global i1 false, align 1
@.str.44 = private unnamed_addr constant [74 x i8] c"\014workqueue: round-robin CPU selection forced, expect performance impact\0A\00", align 1
@wq_rr_cpu_last = internal global i32 0, section ".data..percpu", align 4
@set_work_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_pwq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__queue_delayed_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__queue_delayed_work.__already_done.48 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__queue_delayed_work.__already_done.49 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__queue_delayed_work.__already_done.50 = internal unnamed_addr global i1 false, section ".data.once", align 1
@put_pwq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@flush_workqueue_prep_pwqs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue_prep_pwqs.__already_done.52 = internal unnamed_addr global i1 false, section ".data.once", align 1
@flush_workqueue_prep_pwqs.__already_done.53 = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_flush_dependency.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = private unnamed_addr constant [70 x i8] c"workqueue: PF_MEMALLOC task %d(%s) is flushing !WQ_MEM_RECLAIM %s:%ps\00", align 1
@check_flush_dependency.__already_done.55 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"workqueue: WQ_MEM_RECLAIM %s:%ps is flushing !WQ_MEM_RECLAIM %s:%ps\00", align 1
@__cancel_work_timer.cancel_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @__cancel_work_timer.cancel_waitq, i64 4), ptr getelementptr (i8, ptr @__cancel_work_timer.cancel_waitq, i64 4) } }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@manager_wait = internal global %struct.rcuwait zeroinitializer, align 4
@pwq_unbound_release_workfn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = private unnamed_addr constant [89 x i8] c"\014workqueue: max_active %d requested for %s is out of range, clamping between %d and %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"ordering guarantee broken for workqueue %s\0A\00", align 1
@rescuer_thread.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rescuer_thread.__already_done.60 = internal unnamed_addr global i1 false, section ".data.once", align 1
@process_one_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = private unnamed_addr constant [78 x i8] c"\013BUG: workqueue leaked lock or atomic: %s/0x%08x/%d\0A     last function: %ps\0A\00", align 1
@worker_set_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@worker_clr_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"\016  pwq %d:\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"\01c active=%d/%d refcnt=%d%s\0A\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c" MAYDAY\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"\016    in-flight:\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"\01c%s %d%s:%ps\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"(RESCUER)\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"\016    pending:\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"\016    inactive:\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"\01c cpus=%*pbl\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"\01c node=%d\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"\01c flags=0x%x nice=%d\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"\01c%s BAR(%d)\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"\01c%s %ps\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"\016pool %d:\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"\01c hung=%us workers=%d\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"\01c manager: %d\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"\01c %s%d\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"idle: \00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"%d:%d%s\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"u%d:%d\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"kworker/%s\00", align 1
@worker_thread.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"kworker/dying\00", align 1
@worker_thread.__already_done.87 = internal unnamed_addr global i1 false, section ".data.once", align 1
@worker_leave_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@worker_enter_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@worker_enter_idle.__already_done.88 = internal unnamed_addr global i1 false, section ".data.once", align 1
@worker_enter_idle.__already_done.89 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rebind_workers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rebind_workers.__already_done.90 = internal unnamed_addr global i1 false, section ".data.once", align 1
@restore_unbound_workers_cpumask.cpumask = internal global %struct.cpumask zeroinitializer, align 4
@restore_unbound_workers_cpumask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@unbind_workers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wq_sysfs_cpumask_attr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420 }, ptr @wq_unbound_cpumask_show, ptr @wq_unbound_cpumask_store }, align 4
@.str.92 = private unnamed_addr constant [8 x i8] c"cpumask\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@wq_sysfs_groups = internal global [2 x ptr] [ptr @wq_sysfs_group, ptr null], align 4
@wq_sysfs_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @wq_sysfs_attrs, ptr null }, align 4
@wq_sysfs_attrs = internal global [3 x ptr] [ptr @dev_attr_per_cpu, ptr @dev_attr_max_active, ptr null], align 4
@dev_attr_per_cpu = internal global %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292 }, ptr @per_cpu_show, ptr null }, align 4
@dev_attr_max_active = internal global %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420 }, ptr @max_active_show, ptr @max_active_store }, align 4
@.str.94 = private unnamed_addr constant [8 x i8] c"per_cpu\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"max_active\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"pool_ids\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"numa\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"%s%d:%d\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_debug_force_rr_cputype236, ptr @__UNIQUE_ID_disable_numatype234, ptr @__UNIQUE_ID_power_efficienttype235, ptr @__event_workqueue_activate_work, ptr @__event_workqueue_execute_end, ptr @__event_workqueue_execute_start, ptr @__event_workqueue_queue_work, ptr @__initcall__kmod_workqueue__322_5707_wq_sysfs_init1, ptr @__ksymtab_alloc_workqueue, ptr @__ksymtab_cancel_delayed_work, ptr @__ksymtab_cancel_delayed_work_sync, ptr @__ksymtab_cancel_work_sync, ptr @__ksymtab_current_work, ptr @__ksymtab_delayed_work_timer_fn, ptr @__ksymtab_destroy_workqueue, ptr @__ksymtab_drain_workqueue, ptr @__ksymtab_execute_in_process_context, ptr @__ksymtab_flush_delayed_work, ptr @__ksymtab_flush_rcu_work, ptr @__ksymtab_flush_work, ptr @__ksymtab_flush_workqueue, ptr @__ksymtab_mod_delayed_work_on, ptr @__ksymtab_queue_delayed_work_on, ptr @__ksymtab_queue_rcu_work, ptr @__ksymtab_queue_work_node, ptr @__ksymtab_queue_work_on, ptr @__ksymtab_set_worker_desc, ptr @__ksymtab_system_freezable_power_efficient_wq, ptr @__ksymtab_system_freezable_wq, ptr @__ksymtab_system_highpri_wq, ptr @__ksymtab_system_long_wq, ptr @__ksymtab_system_power_efficient_wq, ptr @__ksymtab_system_unbound_wq, ptr @__ksymtab_system_wq, ptr @__ksymtab_work_busy, ptr @__ksymtab_work_on_cpu, ptr @__ksymtab_work_on_cpu_safe, ptr @__ksymtab_workqueue_congested, ptr @__ksymtab_workqueue_set_max_active, ptr @__param_debug_force_rr_cpu, ptr @__param_disable_numa, ptr @__param_power_efficient, ptr @__tracepoint_ptr_workqueue_activate_work, ptr @__tracepoint_ptr_workqueue_execute_end, ptr @__tracepoint_ptr_workqueue_execute_start, ptr @__tracepoint_ptr_workqueue_queue_work, ptr @__tracepoint_workqueue_activate_work, ptr @__tracepoint_workqueue_execute_end, ptr @__tracepoint_workqueue_execute_start, ptr @__tracepoint_workqueue_queue_work, ptr @event_class_workqueue_activate_work, ptr @event_class_workqueue_execute_end, ptr @event_class_workqueue_execute_start, ptr @event_class_workqueue_queue_work, ptr @event_workqueue_activate_work, ptr @event_workqueue_execute_end, ptr @event_workqueue_execute_start, ptr @event_workqueue_queue_work], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_workqueue_queue_work(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_queue_work, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, ptr noundef %3) #17
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_workqueue_activate_work(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_activate_work, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #17
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_workqueue_execute_start(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_execute_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #17
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_workqueue_execute_end(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_execute_end, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #17
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_workqueue_queue_work(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %14, label %42, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.pool_workqueue, ptr %2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.workqueue_struct, ptr %17, i32 0, i32 16
  %19 = tail call i32 @strlen(ptr noundef nonnull %18) #17
  %20 = add i32 %19, 29
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %20) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %15
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65564
  %26 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %21, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %21, i32 0, i32 1
  store ptr %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.work_struct, ptr %3, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %21, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %21, i32 28
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr inbounds %struct.workqueue_struct, ptr %32, i32 0, i32 16
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str.30, ptr %33
  %36 = call ptr @strcpy(ptr noundef %31, ptr noundef nonnull %35)
  %37 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %21, i32 0, i32 4
  store i32 %1, ptr %37, align 4
  %38 = load ptr, ptr %2, align 256
  %39 = getelementptr inbounds %struct.worker_pool, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %21, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #17
  br label %42

42:                                               ; preds = %23, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_workqueue_queue_work(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.pool_workqueue, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.workqueue_struct, ptr %8, i32 0, i32 16
  %10 = tail call i32 @strlen(ptr noundef nonnull %9) #17
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65564
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #13, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %62, label %27

27:                                               ; preds = %24, %4
  %28 = add i32 %10, 40
  %29 = and i32 %28, -8
  %30 = add i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #17
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #17
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %31, i32 0, i32 3
  store i32 %12, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %31, i32 0, i32 1
  store ptr %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.work_struct, ptr %3, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %31, i32 0, i32 2
  store ptr %47, ptr %48, align 4
  %49 = getelementptr i8, ptr %31, i32 28
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds %struct.workqueue_struct, ptr %50, i32 0, i32 16
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr @.str.30, ptr %51
  %54 = call ptr @strcpy(ptr noundef %49, ptr noundef nonnull %53)
  %55 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %31, i32 0, i32 4
  store i32 %1, ptr %55, align 4
  %56 = load ptr, ptr %2, align 256
  %57 = getelementptr inbounds %struct.worker_pool, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %31, i32 0, i32 5
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %6, align 4
  %61 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %60, ptr noundef %0, i64 noundef 1, ptr noundef %61, ptr noundef %20, ptr noundef null) #17
  br label %62

62:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_workqueue_activate_work(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_workqueue_activate_work, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #17
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_workqueue_activate_work(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #13, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #17
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #17
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_workqueue_activate_work, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #17
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_workqueue_execute_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %12, label %21, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 16) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_start, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_start, ptr %14, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #17
  br label %21

21:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_workqueue_execute_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #13, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #17
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #17
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_start, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_start, ptr %20, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = load i32, ptr %4, align 4
  %38 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 20, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %12, ptr noundef null) #17
  br label %39

39:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_workqueue_execute_end(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_end, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_end, ptr %15, i32 0, i32 2
  store ptr %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #17
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_workqueue_execute_end(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #13, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #17
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #17
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_end, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_end, ptr %21, i32 0, i32 2
  store ptr %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #17
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wq_worker_running(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @kthread_data(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.worker, ptr %2, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %7 = getelementptr inbounds %struct.worker, ptr %2, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 456
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.worker, ptr %2, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.worker_pool, ptr %13, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #17, !srcloc !14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #17, !srcloc !15
  br label %16

16:                                               ; preds = %11, %6
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !16
  store i32 0, ptr %3, align 4
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wq_worker_sleeping(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @kthread_data(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.worker, ptr %2, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 456
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.worker, ptr %2, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.worker, ptr %2, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  store i32 1, ptr %10, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #17
  %14 = load i32, ptr %3, align 4
  %15 = and i32 %14, 456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %18 = load i16, ptr %9, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %42

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.worker_pool, ptr %9, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #17, !srcloc !14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #17, !srcloc !23
  %23 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.worker_pool, ptr %9, i32 0, i32 7
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.worker_pool, ptr %9, i32 0, i32 10
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  %33 = icmp eq ptr %31, null
  %34 = or i1 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.worker, ptr %31, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @wake_up_process(ptr noundef %37) #17
  br label %39

39:                                               ; preds = %35, %29, %25, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %40 = load i16, ptr %9, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %42

42:                                               ; preds = %39, %17, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @wq_worker_last_func(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @kthread_data(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.worker, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @queue_work_on(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @__queue_work(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  br label %8

8:                                                ; preds = %7, %3
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #17, !srcloc !26
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__queue_work(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.workqueue_struct, ptr %1, i32 0, i32 19
  %5 = load i32, ptr %4, align 64
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8, !prof !10

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i1 @is_chained_work(ptr noundef %1)
  %10 = load i1, ptr @__queue_work.__already_done, align 1
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %8
  store i1 true, ptr @__queue_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1455, i32 noundef 9, ptr noundef null) #17
  br label %13

13:                                               ; preds = %12, %8
  br i1 %9, label %14, label %242

14:                                               ; preds = %13, %3
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %15 = icmp eq i32 %0, 16
  %16 = getelementptr inbounds %struct.workqueue_struct, ptr %1, i32 0, i32 21
  %17 = getelementptr inbounds %struct.workqueue_struct, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %2 to i32
  %19 = mul i32 %18, 1640531527
  %20 = lshr i32 %19, 26
  %21 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 2
  br label %22

22:                                               ; preds = %143, %14
  %23 = phi i32 [ %0, %14 ], [ %87, %143 ]
  %24 = load i32, ptr %4, align 64
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %72, label %27

27:                                               ; preds = %22
  br i1 %15, label %28, label %69

28:                                               ; preds = %27
  %29 = tail call ptr @llvm.thread.pointer() #17
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = load i8, ptr @wq_debug_force_rr_cpu, align 1, !range !28
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %42, !prof !10

34:                                               ; preds = %28
  %35 = lshr i32 %31, 5
  %36 = getelementptr i32, ptr @wq_unbound_cpumask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %31, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %69

42:                                               ; preds = %28
  %43 = load i1, ptr @wq_select_unbound_cpu.printed_dbg_warning, align 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #18
  store i1 true, ptr @wq_select_unbound_cpu.printed_dbg_warning, align 1
  br label %46

46:                                               ; preds = %44, %42, %34
  %47 = load i32, ptr @wq_unbound_cpumask, align 4
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %52) #13, !srcloc !12
  %54 = add i32 %53, ptrtoint (ptr @wq_rr_cpu_last to i32)
  %55 = inttoptr i32 %54 to ptr
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 @cpumask_next_and(i32 noundef %56, ptr noundef nonnull @wq_unbound_cpumask, ptr noundef nonnull @__cpu_online_mask) #19
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %67, label %60, !prof !10

60:                                               ; preds = %50
  %61 = load i32, ptr @__cpu_online_mask, align 4
  %62 = and i32 %61, %48
  %63 = icmp eq i32 %62, 0
  %64 = tail call i32 @llvm.cttz.i32(i32 %62, i1 true) #17, !range !29
  %65 = select i1 %63, i32 16, i32 %64
  %66 = icmp ult i32 %65, %58
  br i1 %66, label %67, label %69, !prof !10

67:                                               ; preds = %60, %50
  %68 = phi i32 [ %65, %60 ], [ %57, %50 ]
  store i32 %68, ptr %55, align 4
  br label %69

69:                                               ; preds = %67, %60, %46, %34, %27
  %70 = phi i32 [ %23, %27 ], [ %68, %67 ], [ %31, %34 ], [ %31, %46 ], [ %31, %60 ]
  %71 = load volatile ptr, ptr %16, align 4
  br label %85

72:                                               ; preds = %22
  br i1 %15, label %73, label %77

73:                                               ; preds = %72
  %74 = tail call ptr @llvm.thread.pointer() #17
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  br label %77

77:                                               ; preds = %73, %72
  %78 = phi i32 [ %76, %73 ], [ %23, %72 ]
  %79 = load ptr, ptr %17, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  %84 = inttoptr i32 %83 to ptr
  br label %85

85:                                               ; preds = %77, %69
  %86 = phi ptr [ %71, %69 ], [ %84, %77 ]
  %87 = phi i32 [ %70, %69 ], [ %78, %77 ]
  %88 = load volatile i32, ptr %2, align 4
  %89 = and i32 %88, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = and i32 %88, -256
  %93 = inttoptr i32 %92 to ptr
  %94 = load ptr, ptr %93, align 256
  br label %100

95:                                               ; preds = %85
  %96 = lshr i32 %88, 5
  %97 = icmp eq i32 %96, 134217727
  br i1 %97, label %132, label %98

98:                                               ; preds = %95
  %99 = tail call ptr @idr_find(ptr noundef nonnull @worker_pool_idr, i32 noundef %96) #17
  br label %100

100:                                              ; preds = %98, %91
  %101 = phi ptr [ %94, %91 ], [ %99, %98 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %132, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %86, align 256
  %105 = icmp eq ptr %101, %104
  br i1 %105, label %132, label %106

106:                                              ; preds = %103
  tail call void @_raw_spin_lock(ptr noundef nonnull %101) #17
  %107 = getelementptr %struct.worker_pool, ptr %101, i32 0, i32 13, i32 %20
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %129, label %110

110:                                              ; preds = %120, %106
  %111 = phi ptr [ %121, %120 ], [ %108, %106 ]
  %112 = getelementptr inbounds %struct.worker, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %2
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.worker, ptr %111, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %21, align 4
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %115, %110
  %121 = load ptr, ptr %111, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %110

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.worker, ptr %111, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.pool_workqueue, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %1
  br i1 %128, label %134, label %129

129:                                              ; preds = %123, %120, %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %130 = load i16, ptr %101, align 4
  %131 = add i16 %130, 1
  store i16 %131, ptr %101, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  br label %132

132:                                              ; preds = %129, %103, %100, %95
  %133 = load ptr, ptr %86, align 256
  tail call void @_raw_spin_lock(ptr noundef %133) #17
  br label %134

134:                                              ; preds = %132, %123
  %135 = phi ptr [ %125, %123 ], [ %86, %132 ]
  %136 = getelementptr inbounds %struct.pool_workqueue, ptr %135, i32 0, i32 4
  %137 = load i32, ptr %136, align 16
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %151, !prof !11

139:                                              ; preds = %134
  %140 = load i32, ptr %4, align 64
  %141 = and i32 %140, 2
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %135, align 256
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %145 = load i16, ptr %144, align 4
  %146 = add i16 %145, 1
  store i16 %146, ptr %144, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !32
  br label %22

147:                                              ; preds = %139
  %148 = load i1, ptr @__queue_work.__already_done.42, align 1
  br i1 %148, label %151, label %149, !prof !10

149:                                              ; preds = %147
  store i1 true, ptr @__queue_work.__already_done.42, align 1
  %150 = getelementptr inbounds %struct.workqueue_struct, ptr %1, i32 0, i32 16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1510, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef %150, i32 noundef %87) #17
  br label %151

151:                                              ; preds = %149, %147, %134
  %152 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_queue_work, i32 0, i32 1), align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %151
  %155 = tail call ptr @llvm.thread.pointer() #17
  %156 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %157 = load i32, ptr %156, align 8
  %158 = lshr i32 %157, 5
  %159 = getelementptr i32, ptr @__cpu_online_mask, i32 %158
  %160 = load volatile i32, ptr %159, align 4
  %161 = and i32 %157, 31
  %162 = shl nuw i32 1, %161
  %163 = and i32 %162, %160
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %177, label %165

165:                                              ; preds = %154
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %166 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_queue_work, i32 0, i32 7), align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %176, label %168

168:                                              ; preds = %168, %165
  %169 = phi ptr [ %173, %168 ], [ %166, %165 ]
  %170 = load volatile ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.tracepoint_func, ptr %169, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  tail call void %170(ptr noundef %172, i32 noundef %0, ptr noundef %135, ptr noundef %2) #17
  %173 = getelementptr %struct.tracepoint_func, ptr %169, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %168

176:                                              ; preds = %168, %165
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  br label %177

177:                                              ; preds = %176, %154, %151
  %178 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1
  %179 = load volatile ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, %178
  br i1 %180, label %182, label %181, !prof !10

181:                                              ; preds = %177
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1516, i32 noundef 9, ptr noundef null) #17
  br label %238

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.pool_workqueue, ptr %135, i32 0, i32 2
  %184 = load i32, ptr %183, align 8
  %185 = getelementptr %struct.pool_workqueue, ptr %135, i32 0, i32 5, i32 %184
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, 1
  store i32 %187, ptr %185, align 4
  %188 = load i32, ptr %183, align 8
  %189 = shl i32 %188, 4
  %190 = getelementptr inbounds %struct.pool_workqueue, ptr %135, i32 0, i32 6
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.pool_workqueue, ptr %135, i32 0, i32 7
  %193 = load i32, ptr %192, align 8
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %195, label %232, !prof !10

195:                                              ; preds = %182
  %196 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_activate_work, i32 0, i32 1), align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %222

198:                                              ; preds = %195
  %199 = tail call ptr @llvm.thread.pointer() #17
  %200 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 2
  %201 = load i32, ptr %200, align 8
  %202 = lshr i32 %201, 5
  %203 = getelementptr i32, ptr @__cpu_online_mask, i32 %202
  %204 = load volatile i32, ptr %203, align 4
  %205 = and i32 %201, 31
  %206 = shl nuw i32 1, %205
  %207 = and i32 %206, %204
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %222, label %209

209:                                              ; preds = %198
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  %210 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_activate_work, i32 0, i32 7), align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %220, label %212

212:                                              ; preds = %212, %209
  %213 = phi ptr [ %217, %212 ], [ %210, %209 ]
  %214 = load volatile ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.tracepoint_func, ptr %213, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  tail call void %214(ptr noundef %216, ptr noundef %2) #17
  %217 = getelementptr %struct.tracepoint_func, ptr %213, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %212

220:                                              ; preds = %212, %209
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !36
  %221 = load i32, ptr %190, align 4
  br label %222

222:                                              ; preds = %220, %198, %195
  %223 = phi i32 [ %191, %195 ], [ %191, %198 ], [ %221, %220 ]
  %224 = add i32 %223, 1
  store i32 %224, ptr %190, align 4
  %225 = load ptr, ptr %135, align 256
  %226 = getelementptr inbounds %struct.worker_pool, ptr %225, i32 0, i32 7
  %227 = load volatile ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, %226
  br i1 %228, label %229, label %235

229:                                              ; preds = %222
  %230 = load volatile i32, ptr @jiffies, align 64
  %231 = getelementptr inbounds %struct.worker_pool, ptr %225, i32 0, i32 5
  store i32 %230, ptr %231, align 4
  br label %235

232:                                              ; preds = %182
  %233 = or i32 %189, 2
  %234 = getelementptr inbounds %struct.pool_workqueue, ptr %135, i32 0, i32 8
  br label %235

235:                                              ; preds = %232, %229, %222
  %236 = phi i32 [ %189, %229 ], [ %189, %222 ], [ %233, %232 ]
  %237 = phi ptr [ %226, %229 ], [ %226, %222 ], [ %234, %232 ]
  tail call fastcc void @insert_work(ptr noundef %135, ptr noundef %2, ptr noundef %237, i32 noundef %236)
  br label %238

238:                                              ; preds = %235, %181
  %239 = load ptr, ptr %135, align 256
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %240 = load i16, ptr %239, align 4
  %241 = add i16 %240, 1
  store i16 %241, ptr %239, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  br label %242

242:                                              ; preds = %238, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @queue_work_node(i32 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.workqueue_struct, ptr %1, i32 0, i32 19
  %5 = load i32, ptr %4, align 64
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @queue_work_node.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %3
  store i1 true, ptr @queue_work_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1639, i32 noundef 9, ptr noundef null) #17
  br label %12

12:                                               ; preds = %11, %3
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %14 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call fastcc void @__queue_work(i32 noundef 16, ptr noundef %1, ptr noundef %2)
  br label %17

17:                                               ; preds = %16, %12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #17, !srcloc !26
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @delayed_work_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 20
  %6 = load ptr, ptr %5, align 4
  tail call fastcc void @__queue_work(i32 noundef %4, ptr noundef %6, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @queue_delayed_work_on(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call fastcc void @__queue_delayed_work(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %9

9:                                                ; preds = %8, %4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #17, !srcloc !26
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__queue_delayed_work(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.delayed_work, ptr %2, i32 0, i32 1
  %6 = icmp eq ptr %1, null
  %7 = load i1, ptr @__queue_delayed_work.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %4
  store i1 true, ptr @__queue_delayed_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1670, i32 noundef 9, ptr noundef null) #17
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds %struct.delayed_work, ptr %2, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, @delayed_work_timer_fn
  %15 = load i1, ptr @__queue_delayed_work.__already_done.48, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !11

18:                                               ; preds = %11
  store i1 true, ptr @__queue_delayed_work.__already_done.48, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1671, i32 noundef 9, ptr noundef null) #17
  br label %19

19:                                               ; preds = %18, %11
  %20 = getelementptr inbounds %struct.delayed_work, ptr %2, i32 0, i32 1, i32 0, i32 1
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, null
  %23 = load i1, ptr @__queue_delayed_work.__already_done.49, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %19
  store i1 true, ptr @__queue_delayed_work.__already_done.49, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1672, i32 noundef 9, ptr noundef null) #17
  br label %27

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp ne ptr %29, %28
  %31 = load i1, ptr @__queue_delayed_work.__already_done.50, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %27
  store i1 true, ptr @__queue_delayed_work.__already_done.50, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1673, i32 noundef 9, ptr noundef null) #17
  br label %35

35:                                               ; preds = %34, %27
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  tail call fastcc void @__queue_work(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  br label %47

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.delayed_work, ptr %2, i32 0, i32 2
  store ptr %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.delayed_work, ptr %2, i32 0, i32 3
  store i32 %0, ptr %40, align 4
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = add i32 %41, %3
  %43 = getelementptr inbounds %struct.delayed_work, ptr %2, i32 0, i32 1, i32 1
  store i32 %42, ptr %43, align 4
  %44 = icmp eq i32 %0, 16
  br i1 %44, label %46, label %45, !prof !10

45:                                               ; preds = %38
  tail call void @add_timer_on(ptr noundef %5, i32 noundef %0) #17
  br label %47

46:                                               ; preds = %38
  tail call void @add_timer(ptr noundef %5) #17
  br label %47

47:                                               ; preds = %46, %45, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mod_delayed_work_on(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !9
  br label %6

6:                                                ; preds = %6, %4
  %7 = call fastcc i32 @try_to_grab_pending(ptr noundef %2, i1 noundef zeroext true, ptr noundef nonnull %5)
  %8 = icmp eq i32 %7, -11
  br i1 %8, label %6, label %9, !prof !11

9:                                                ; preds = %6
  %10 = icmp sgt i32 %7, -1
  br i1 %10, label %11, label %13, !prof !10

11:                                               ; preds = %9
  tail call fastcc void @__queue_delayed_work(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %12 = load i32, ptr %5, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #17, !srcloc !26
  br label %13

13:                                               ; preds = %11, %9
  %14 = icmp ne i32 %7, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_to_grab_pending(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  store i32 %4, ptr %2, align 4
  br i1 %1, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.delayed_work, ptr %0, i32 0, i32 1
  %7 = tail call i32 @del_timer(ptr noundef %6) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %73

9:                                                ; preds = %5, %3
  %10 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %0) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %73, label %12

12:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %13 = load volatile i32, ptr %0, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = and i32 %13, -256
  %18 = inttoptr i32 %17 to ptr
  %19 = load ptr, ptr %18, align 256
  br label %25

20:                                               ; preds = %12
  %21 = lshr i32 %13, 5
  %22 = icmp eq i32 %21, 134217727
  br i1 %22, label %67, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @idr_find(ptr noundef nonnull @worker_pool_idr, i32 noundef %21) #17
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi ptr [ %19, %16 ], [ %24, %23 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %67, label %28

28:                                               ; preds = %25
  tail call void @_raw_spin_lock(ptr noundef nonnull %26) #17
  %29 = load volatile i32, ptr %0, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %29, -256
  %33 = inttoptr i32 %32 to ptr
  %34 = icmp eq i32 %32, 0
  %35 = or i1 %31, %34
  br i1 %35, label %64, label %36

36:                                               ; preds = %28
  %37 = load ptr, ptr %33, align 256
  %38 = icmp eq ptr %37, %26
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = and i32 %29, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call fastcc void @pwq_activate_inactive_work(ptr noundef %0)
  br label %43

43:                                               ; preds = %42, %39
  %44 = getelementptr inbounds %struct.work_struct, ptr %0, i32 0, i32 1
  %45 = getelementptr inbounds %struct.work_struct, ptr %0, i32 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store volatile ptr %44, ptr %44, align 4
  store ptr %44, ptr %45, align 4
  %49 = load i32, ptr %0, align 4
  tail call fastcc void @pwq_dec_nr_in_flight(ptr noundef nonnull %33, i32 noundef %49)
  %50 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = load volatile i32, ptr %0, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = load i1, ptr @set_work_data.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !11

58:                                               ; preds = %43
  store i1 true, ptr @set_work_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #17
  br label %59

59:                                               ; preds = %58, %43
  %60 = shl i32 %51, 5
  %61 = or i32 %60, 1
  store volatile i32 %61, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %62 = load i16, ptr %26, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  br label %73

64:                                               ; preds = %36, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %65 = load i16, ptr %26, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  br label %67

67:                                               ; preds = %64, %25, %20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %68 = load i32, ptr %2, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %68) #17, !srcloc !26
  %69 = load volatile i32, ptr %0, align 4
  %70 = and i32 %69, 20
  %71 = icmp eq i32 %70, 16
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !39
  br label %73

73:                                               ; preds = %72, %67, %59, %9, %5
  %74 = phi i32 [ 1, %59 ], [ -11, %72 ], [ 1, %5 ], [ 0, %9 ], [ -2, %67 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @queue_rcu_work(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %1) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rcu_work, ptr %1, i32 0, i32 2
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rcu_work, ptr %1, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %7, ptr noundef nonnull @rcu_work_rcufn) #17
  br label %8

8:                                                ; preds = %5, %2
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_work_rcufn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !40
  %3 = getelementptr i8, ptr %0, i32 8
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @__queue_work(i32 noundef 16, ptr noundef %4, ptr noundef %2)
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_workqueue(ptr noundef %0) #0 {
  %2 = alloca %struct.wq_flusher, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #17
  %3 = getelementptr inbounds i8, ptr %2, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 12, i1 false), !annotation !9
  store ptr %2, ptr %2, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.wq_flusher, ptr %2, i32 0, i32 1
  store i32 -1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wq_flusher, ptr %2, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wq_flusher, ptr %2, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %7, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #17
  %8 = load i1, ptr @wq_online, align 1
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2824, i32 noundef 9, ptr noundef null) #17
  br label %227

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 2
  call void @mutex_lock(ptr noundef %11) #17
  %12 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  %15 = srem i32 %14, 16
  %16 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %15, %17
  %19 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 8
  br i1 %18, label %82, label %20

20:                                               ; preds = %10
  %21 = load volatile ptr, ptr %19, align 4
  %22 = icmp ne ptr %21, %19
  %23 = load i1, ptr @flush_workqueue.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %20
  store i1 true, ptr @flush_workqueue.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2843, i32 noundef 9, ptr noundef null) #17
  %27 = load i32, ptr %12, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i32 [ %27, %26 ], [ %13, %20 ]
  store i32 %29, ptr %5, align 4
  store i32 %15, ptr %12, align 4
  %30 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 16
  %32 = icmp eq ptr %31, null
  %33 = load i32, ptr %16, align 8
  br i1 %32, label %34, label %47

34:                                               ; preds = %28
  %35 = icmp ne i32 %33, %29
  %36 = load i1, ptr @flush_workqueue.__already_done.1, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %42, !prof !11

39:                                               ; preds = %34
  store i1 true, ptr @flush_workqueue.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2849, i32 noundef 9, ptr noundef null) #17
  %40 = load i32, ptr %16, align 8
  %41 = load i32, ptr %12, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = phi i32 [ %41, %39 ], [ %15, %34 ]
  %44 = phi i32 [ %40, %39 ], [ %33, %34 ]
  store ptr %2, ptr %30, align 16
  %45 = call fastcc zeroext i1 @flush_workqueue_prep_pwqs(ptr noundef %0, i32 noundef %44, i32 noundef %43)
  br i1 %45, label %85, label %46

46:                                               ; preds = %42
  store i32 %15, ptr %16, align 8
  store ptr null, ptr %30, align 16
  br label %226

47:                                               ; preds = %28
  %48 = icmp eq i32 %33, %29
  %49 = load i1, ptr @flush_workqueue.__already_done.2, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !11

52:                                               ; preds = %47
  store i1 true, ptr @flush_workqueue.__already_done.2, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2862, i32 noundef 9, ptr noundef null) #17
  br label %53

53:                                               ; preds = %52, %47
  %54 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 7
  %55 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 7, i32 1
  %56 = load ptr, ptr %55, align 4
  store ptr %2, ptr %55, align 4
  store ptr %54, ptr %2, align 4
  store ptr %56, ptr %4, align 4
  store volatile ptr %2, ptr %56, align 4
  %57 = load i32, ptr %12, align 4
  %58 = load volatile ptr, ptr %0, align 4
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %85, label %60

60:                                               ; preds = %53
  %61 = icmp sgt i32 %57, -1
  br label %62

62:                                               ; preds = %77, %60
  %63 = phi ptr [ %58, %60 ], [ %80, %77 ]
  %64 = getelementptr i8, ptr %63, i32 -100
  %65 = load ptr, ptr %64, align 256
  call void @_raw_spin_lock_irq(ptr noundef %65) #17
  br i1 %61, label %66, label %77

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %63, i32 -92
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 1
  %70 = srem i32 %69, 16
  %71 = icmp ne i32 %70, %57
  %72 = load i1, ptr @flush_workqueue_prep_pwqs.__already_done.53, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !11

75:                                               ; preds = %66
  store i1 true, ptr @flush_workqueue_prep_pwqs.__already_done.53, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2795, i32 noundef 9, ptr noundef null) #17
  br label %76

76:                                               ; preds = %75, %66
  store i32 %57, ptr %67, align 8
  br label %77

77:                                               ; preds = %76, %62
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %78 = load i16, ptr %65, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %65, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %80 = load volatile ptr, ptr %63, align 4
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %85, label %62

82:                                               ; preds = %10
  %83 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 8, i32 1
  %84 = load ptr, ptr %83, align 4
  store ptr %2, ptr %83, align 4
  store ptr %19, ptr %2, align 4
  store ptr %84, ptr %4, align 4
  store volatile ptr %2, ptr %84, align 4
  br label %85

85:                                               ; preds = %82, %77, %53, %42
  call fastcc void @check_flush_dependency(ptr noundef %0, ptr noundef null)
  call void @mutex_unlock(ptr noundef %11) #17
  call void @wait_for_completion(ptr noundef %6) #17
  %86 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 6
  %87 = load volatile ptr, ptr %86, align 16
  %88 = icmp eq ptr %87, %2
  br i1 %88, label %89, label %227

89:                                               ; preds = %85
  call void @mutex_lock(ptr noundef %11) #17
  %90 = load ptr, ptr %86, align 16
  %91 = icmp eq ptr %90, %2
  br i1 %91, label %92, label %226

92:                                               ; preds = %89
  store volatile ptr null, ptr %86, align 16
  %93 = load volatile ptr, ptr %2, align 4
  %94 = icmp ne ptr %93, %2
  %95 = load i1, ptr @flush_workqueue.__already_done.3, align 1
  %96 = xor i1 %95, true
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %99, !prof !11

98:                                               ; preds = %92
  store i1 true, ptr @flush_workqueue.__already_done.3, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2898, i32 noundef 9, ptr noundef null) #17
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32, ptr %16, align 8
  %101 = load i32, ptr %5, align 4
  %102 = icmp ne i32 %100, %101
  %103 = load i1, ptr @flush_workqueue.__already_done.4, align 1
  %104 = xor i1 %103, true
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %107, !prof !11

106:                                              ; preds = %99
  store i1 true, ptr @flush_workqueue.__already_done.4, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2899, i32 noundef 9, ptr noundef null) #17
  br label %107

107:                                              ; preds = %106, %99
  %108 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 7
  %109 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 8
  %110 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 7, i32 1
  %111 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 8, i32 1
  br label %112

112:                                              ; preds = %225, %107
  %113 = load ptr, ptr %108, align 4
  %114 = icmp eq ptr %113, %108
  br i1 %114, label %128, label %115

115:                                              ; preds = %121, %112
  %116 = phi ptr [ %122, %121 ], [ %113, %112 ]
  %117 = getelementptr inbounds %struct.wq_flusher, ptr %116, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = load i32, ptr %16, align 8
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load ptr, ptr %116, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %124, ptr %125, align 4
  store volatile ptr %122, ptr %124, align 4
  store volatile ptr %116, ptr %116, align 4
  store ptr %116, ptr %123, align 4
  %126 = getelementptr inbounds %struct.wq_flusher, ptr %116, i32 0, i32 2
  call void @complete(ptr noundef %126) #17
  %127 = icmp eq ptr %122, %108
  br i1 %127, label %128, label %115

128:                                              ; preds = %121, %115, %112
  %129 = phi ptr [ %108, %112 ], [ %116, %115 ], [ %108, %121 ]
  %130 = load volatile ptr, ptr %109, align 4
  %131 = icmp eq ptr %130, %109
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %16, align 8
  %134 = load i32, ptr %12, align 4
  %135 = add i32 %134, 1
  %136 = srem i32 %135, 16
  %137 = icmp ne i32 %133, %136
  %138 = load i1, ptr @flush_workqueue.__already_done.5, align 1
  %139 = xor i1 %138, true
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %142, !prof !11

141:                                              ; preds = %132
  store i1 true, ptr @flush_workqueue.__already_done.5, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2913, i32 noundef 9, ptr noundef null) #17
  br label %142

142:                                              ; preds = %141, %132, %128
  %143 = load i32, ptr %16, align 8
  %144 = add i32 %143, 1
  %145 = srem i32 %144, 16
  store i32 %145, ptr %16, align 8
  %146 = load volatile ptr, ptr %109, align 4
  %147 = icmp eq ptr %146, %109
  br i1 %147, label %191, label %148

148:                                              ; preds = %148, %142
  %149 = phi ptr [ %152, %148 ], [ %146, %142 ]
  %150 = load i32, ptr %12, align 4
  %151 = getelementptr inbounds %struct.wq_flusher, ptr %149, i32 0, i32 1
  store i32 %150, ptr %151, align 4
  %152 = load ptr, ptr %149, align 4
  %153 = icmp eq ptr %152, %109
  br i1 %153, label %154, label %148

154:                                              ; preds = %148
  %155 = load i32, ptr %12, align 4
  %156 = add i32 %155, 1
  %157 = srem i32 %156, 16
  store i32 %157, ptr %12, align 4
  %158 = load volatile ptr, ptr %109, align 4
  %159 = icmp eq ptr %158, %109
  br i1 %159, label %165, label %160

160:                                              ; preds = %154
  %161 = load ptr, ptr %110, align 4
  %162 = load ptr, ptr %111, align 4
  %163 = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  store ptr %161, ptr %163, align 4
  store ptr %158, ptr %161, align 4
  store ptr %108, ptr %162, align 4
  store ptr %162, ptr %110, align 4
  store volatile ptr %109, ptr %109, align 4
  store ptr %109, ptr %111, align 4
  %164 = load i32, ptr %12, align 4
  br label %165

165:                                              ; preds = %160, %154
  %166 = phi i32 [ %157, %154 ], [ %164, %160 ]
  %167 = load volatile ptr, ptr %0, align 4
  %168 = icmp eq ptr %167, %0
  br i1 %168, label %191, label %169

169:                                              ; preds = %165
  %170 = icmp sgt i32 %166, -1
  br label %171

171:                                              ; preds = %186, %169
  %172 = phi ptr [ %167, %169 ], [ %189, %186 ]
  %173 = getelementptr i8, ptr %172, i32 -100
  %174 = load ptr, ptr %173, align 256
  call void @_raw_spin_lock_irq(ptr noundef %174) #17
  br i1 %170, label %175, label %186

175:                                              ; preds = %171
  %176 = getelementptr i8, ptr %172, i32 -92
  %177 = load i32, ptr %176, align 8
  %178 = add i32 %177, 1
  %179 = srem i32 %178, 16
  %180 = icmp ne i32 %179, %166
  %181 = load i1, ptr @flush_workqueue_prep_pwqs.__already_done.53, align 1
  %182 = xor i1 %181, true
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %184, label %185, !prof !11

184:                                              ; preds = %175
  store i1 true, ptr @flush_workqueue_prep_pwqs.__already_done.53, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2795, i32 noundef 9, ptr noundef null) #17
  br label %185

185:                                              ; preds = %184, %175
  store i32 %166, ptr %176, align 8
  br label %186

186:                                              ; preds = %185, %171
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %187 = load i16, ptr %174, align 4
  %188 = add i16 %187, 1
  store i16 %188, ptr %174, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %189 = load volatile ptr, ptr %172, align 4
  %190 = icmp eq ptr %189, %0
  br i1 %190, label %191, label %171

191:                                              ; preds = %186, %165, %142
  %192 = load volatile ptr, ptr %108, align 4
  %193 = icmp eq ptr %192, %108
  %194 = load i32, ptr %16, align 8
  %195 = load i32, ptr %12, align 4
  br i1 %193, label %196, label %202

196:                                              ; preds = %191
  %197 = icmp ne i32 %194, %195
  %198 = load i1, ptr @flush_workqueue.__already_done.6, align 1
  %199 = xor i1 %198, true
  %200 = select i1 %197, i1 %199, i1 false
  br i1 %200, label %201, label %226, !prof !11

201:                                              ; preds = %196
  store i1 true, ptr @flush_workqueue.__already_done.6, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2937, i32 noundef 9, ptr noundef null) #17
  br label %226

202:                                              ; preds = %191
  %203 = icmp eq i32 %194, %195
  %204 = load i1, ptr @flush_workqueue.__already_done.7, align 1
  %205 = xor i1 %204, true
  %206 = select i1 %203, i1 %205, i1 false
  br i1 %206, label %207, label %209, !prof !11

207:                                              ; preds = %202
  store i1 true, ptr @flush_workqueue.__already_done.7, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2945, i32 noundef 9, ptr noundef null) #17
  %208 = load i32, ptr %16, align 8
  br label %209

209:                                              ; preds = %207, %202
  %210 = phi i32 [ %208, %207 ], [ %194, %202 ]
  %211 = getelementptr inbounds %struct.wq_flusher, ptr %129, i32 0, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = icmp ne i32 %210, %212
  %214 = load i1, ptr @flush_workqueue.__already_done.8, align 1
  %215 = xor i1 %214, true
  %216 = select i1 %213, i1 %215, i1 false
  br i1 %216, label %217, label %218, !prof !11

217:                                              ; preds = %209
  store i1 true, ptr @flush_workqueue.__already_done.8, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2946, i32 noundef 9, ptr noundef null) #17
  br label %218

218:                                              ; preds = %217, %209
  %219 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = load ptr, ptr %129, align 4
  %222 = getelementptr inbounds %struct.list_head, ptr %221, i32 0, i32 1
  store ptr %220, ptr %222, align 4
  store volatile ptr %221, ptr %220, align 4
  store volatile ptr %129, ptr %129, align 4
  store ptr %129, ptr %219, align 4
  store ptr %129, ptr %86, align 16
  %223 = load i32, ptr %16, align 8
  %224 = call fastcc zeroext i1 @flush_workqueue_prep_pwqs(ptr noundef %0, i32 noundef %223, i32 noundef -1)
  br i1 %224, label %226, label %225

225:                                              ; preds = %218
  store ptr null, ptr %86, align 16
  br label %112

226:                                              ; preds = %218, %201, %196, %89, %46
  call void @mutex_unlock(ptr noundef %11) #17
  br label %227

227:                                              ; preds = %226, %85, %9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #17
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @flush_workqueue_prep_pwqs(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 5
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = load i1, ptr @flush_workqueue_prep_pwqs.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %5
  store i1 true, ptr @flush_workqueue_prep_pwqs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2775, i32 noundef 9, ptr noundef null) #17
  br label %13

13:                                               ; preds = %12, %5
  store volatile i32 1, ptr %6, align 4
  br label %14

14:                                               ; preds = %13, %3
  %15 = load volatile ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %58, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 5
  %19 = icmp sgt i32 %2, -1
  br label %20

20:                                               ; preds = %53, %17
  %21 = phi ptr [ %15, %17 ], [ %56, %53 ]
  %22 = phi i1 [ false, %17 ], [ %41, %53 ]
  %23 = getelementptr i8, ptr %21, i32 -100
  %24 = load ptr, ptr %23, align 256
  tail call void @_raw_spin_lock_irq(ptr noundef %24) #17
  br i1 %4, label %25, label %40

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %21, i32 -88
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, -1
  %29 = load i1, ptr @flush_workqueue_prep_pwqs.__already_done.52, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !11

32:                                               ; preds = %25
  store i1 true, ptr @flush_workqueue_prep_pwqs.__already_done.52, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2785, i32 noundef 9, ptr noundef null) #17
  br label %33

33:                                               ; preds = %32, %25
  %34 = getelementptr i8, ptr %21, i32 -80
  %35 = getelementptr [16 x i32], ptr %34, i32 0, i32 %1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  store i32 %1, ptr %26, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #17, !srcloc !14
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #17, !srcloc !15
  br label %40

40:                                               ; preds = %38, %33, %20
  %41 = phi i1 [ true, %38 ], [ %22, %33 ], [ %22, %20 ]
  br i1 %19, label %42, label %53

42:                                               ; preds = %40
  %43 = getelementptr i8, ptr %21, i32 -92
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  %46 = srem i32 %45, 16
  %47 = icmp ne i32 %46, %2
  %48 = load i1, ptr @flush_workqueue_prep_pwqs.__already_done.53, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !11

51:                                               ; preds = %42
  store i1 true, ptr @flush_workqueue_prep_pwqs.__already_done.53, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2795, i32 noundef 9, ptr noundef null) #17
  br label %52

52:                                               ; preds = %51, %42
  store i32 %2, ptr %43, align 8
  br label %53

53:                                               ; preds = %52, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %54 = load i16, ptr %24, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %56 = load volatile ptr, ptr %21, align 4
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %20

58:                                               ; preds = %53, %14
  %59 = phi i1 [ false, %14 ], [ %41, %53 ]
  br i1 %4, label %60, label %69

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #17, !srcloc !14
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #17, !srcloc !23
  %63 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 6
  %67 = load ptr, ptr %66, align 16
  %68 = getelementptr inbounds %struct.wq_flusher, ptr %67, i32 0, i32 2
  tail call void @complete(ptr noundef %68) #17
  br label %69

69:                                               ; preds = %65, %60, %58
  ret i1 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @check_flush_dependency(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 19
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %7
  %14 = tail call ptr @llvm.thread.pointer() #17
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 15728640
  %18 = load volatile i32, ptr %15, align 4
  %19 = and i32 %18, 983040
  %20 = or i32 %19, %17
  %21 = load volatile i32, ptr %15, align 4
  %22 = and i32 %21, 256
  %23 = or i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @kthread_data(ptr noundef %14) #17
  br label %32

32:                                               ; preds = %30, %25, %13
  %33 = phi ptr [ %31, %30 ], [ null, %25 ], [ null, %13 ]
  %34 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 2048
  %37 = icmp ne i32 %36, 0
  %38 = load i1, ptr @check_flush_dependency.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %46, !prof !11

41:                                               ; preds = %32
  store i1 true, ptr @check_flush_dependency.__already_done, align 1
  %42 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 52
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 85
  %45 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2645, i32 noundef 9, ptr noundef nonnull @.str.54, i32 noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %8) #17
  br label %46

46:                                               ; preds = %41, %32
  %47 = icmp eq ptr %33, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.worker, ptr %33, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.pool_workqueue, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.workqueue_struct, ptr %52, i32 0, i32 19
  %54 = load i32, ptr %53, align 64
  %55 = and i32 %54, 262152
  %56 = icmp eq i32 %55, 8
  %57 = load i1, ptr @check_flush_dependency.__already_done.55, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %65, !prof !11

60:                                               ; preds = %48
  store i1 true, ptr @check_flush_dependency.__already_done.55, align 1
  %61 = getelementptr inbounds %struct.workqueue_struct, ptr %52, i32 0, i32 16
  %62 = getelementptr inbounds %struct.worker, ptr %33, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2650, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %61, ptr noundef %63, ptr noundef %64, ptr noundef %8) #17
  br label %65

65:                                               ; preds = %60, %48, %46, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drain_workqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #17
  %3 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 16
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 16
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 64
  %10 = or i32 %9, 65536
  store i32 %10, ptr %8, align 64
  br label %11

11:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %2) #17
  %12 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 16
  br label %14

13:                                               ; preds = %45, %40
  tail call void @mutex_unlock(ptr noundef %2) #17
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ 0, %11 ], [ %38, %13 ]
  tail call void @flush_workqueue(ptr noundef %0)
  tail call void @mutex_lock(ptr noundef %2) #17
  br label %16

16:                                               ; preds = %26, %14
  %17 = phi ptr [ %0, %14 ], [ %18, %26 ]
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -100
  %20 = icmp eq ptr %18, %0
  br i1 %20, label %47, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 256
  tail call void @_raw_spin_lock_irq(ptr noundef %22) #17
  %23 = getelementptr i8, ptr %18, i32 -16
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %18, i32 -8
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  %30 = load ptr, ptr %19, align 256
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br i1 %29, label %16, label %37

33:                                               ; preds = %21
  %34 = load ptr, ptr %19, align 256
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %35 = load i16, ptr %34, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %37

37:                                               ; preds = %33, %26
  %38 = add i32 %15, 1
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = urem i32 %38, 100
  %42 = icmp eq i32 %41, 0
  %43 = icmp ult i32 %38, 1001
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %13

45:                                               ; preds = %40, %37
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %12, ptr noundef nonnull @__func__.drain_workqueue, i32 noundef %38) #18
  br label %13

47:                                               ; preds = %16
  %48 = load i32, ptr %3, align 16
  %49 = add i32 %48, -1
  store i32 %49, ptr %3, align 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 19
  %53 = load i32, ptr %52, align 64
  %54 = and i32 %53, -65537
  store i32 %54, ptr %52, align 64
  br label %55

55:                                               ; preds = %51, %47
  tail call void @mutex_unlock(ptr noundef %2) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @flush_work(ptr noundef %0) #0 {
  %2 = tail call fastcc zeroext i1 @__flush_work(ptr noundef %0, i1 noundef zeroext false)
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__flush_work(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.wq_barrier, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  %4 = getelementptr inbounds i8, ptr %3, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 16, i1 false), !annotation !9
  %5 = load i1, ptr @wq_online, align 1
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3081, i32 noundef 9, ptr noundef null) #17
  br label %104

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.work_struct, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3084, i32 noundef 9, ptr noundef null) #17
  br label %104

12:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %13 = load volatile i32, ptr %0, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = and i32 %13, -256
  %18 = inttoptr i32 %17 to ptr
  %19 = load ptr, ptr %18, align 256
  br label %25

20:                                               ; preds = %12
  %21 = lshr i32 %13, 5
  %22 = icmp eq i32 %21, 134217727
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @idr_find(ptr noundef nonnull @worker_pool_idr, i32 noundef %21) #17
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi ptr [ %19, %16 ], [ %24, %23 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  br label %104

29:                                               ; preds = %25
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %26) #17
  %30 = load volatile i32, ptr %0, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %30, -256
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %32, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = inttoptr i32 %33 to ptr
  %38 = load ptr, ptr %37, align 256
  %39 = icmp eq ptr %38, %26
  br i1 %39, label %63, label %90, !prof !10

40:                                               ; preds = %29
  %41 = ptrtoint ptr %0 to i32
  %42 = mul i32 %41, 1640531527
  %43 = lshr i32 %42, 26
  %44 = getelementptr %struct.worker_pool, ptr %26, i32 0, i32 13, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %90, label %47

47:                                               ; preds = %57, %40
  %48 = phi ptr [ %58, %57 ], [ %45, %40 ]
  %49 = getelementptr inbounds %struct.worker, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.worker, ptr %48, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %8, align 4
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %47
  %58 = load ptr, ptr %48, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %90, label %47

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.worker, ptr %48, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %36
  %64 = phi ptr [ null, %36 ], [ %48, %60 ]
  %65 = phi ptr [ %37, %36 ], [ %62, %60 ]
  %66 = getelementptr inbounds %struct.pool_workqueue, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call fastcc void @check_flush_dependency(ptr noundef %67, ptr noundef %0) #17
  %68 = getelementptr inbounds %struct.work_struct, ptr %3, i32 0, i32 1
  store volatile ptr %68, ptr %68, align 4
  %69 = getelementptr inbounds %struct.work_struct, ptr %3, i32 0, i32 1, i32 1
  store ptr %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.work_struct, ptr %3, i32 0, i32 2
  store ptr @wq_barrier_func, ptr %70, align 4
  store i32 -31, ptr %3, align 4
  %71 = getelementptr inbounds %struct.wq_barrier, ptr %3, i32 0, i32 1
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.wq_barrier, ptr %3, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %72, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #17
  %73 = tail call ptr @llvm.thread.pointer() #17
  %74 = getelementptr inbounds %struct.wq_barrier, ptr %3, i32 0, i32 2
  store ptr %73, ptr %74, align 4
  %75 = icmp eq ptr %64, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.worker, ptr %64, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.worker, ptr %64, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  br label %93

81:                                               ; preds = %63
  %82 = getelementptr inbounds %struct.work_struct, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load i32, ptr %0, align 4
  %85 = and i32 %84, 8
  %86 = or i32 %85, 2
  %87 = lshr i32 %84, 4
  %88 = and i32 %87, 15
  %89 = or i32 %84, 8
  store i32 %89, ptr %0, align 4
  br label %93

90:                                               ; preds = %57, %40, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %91 = load i16, ptr %26, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  br label %104

93:                                               ; preds = %81, %76
  %94 = phi ptr [ %78, %76 ], [ %83, %81 ]
  %95 = phi i32 [ %80, %76 ], [ %88, %81 ]
  %96 = phi i32 [ 2, %76 ], [ %86, %81 ]
  %97 = getelementptr %struct.pool_workqueue, ptr %65, i32 0, i32 5, i32 %95
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 4
  %100 = shl i32 %95, 4
  %101 = or i32 %96, %100
  call fastcc void @insert_work(ptr noundef %65, ptr noundef nonnull %3, ptr noundef %94, i32 noundef %101) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %102 = load i16, ptr %26, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %26, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  call void @wait_for_completion(ptr noundef %71) #17
  br label %104

104:                                              ; preds = %93, %90, %28, %11, %6
  %105 = phi i1 [ false, %6 ], [ false, %11 ], [ true, %93 ], [ false, %90 ], [ false, %28 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  ret i1 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cancel_work_sync(ptr noundef %0) #0 {
  %2 = tail call fastcc zeroext i1 @__cancel_work_timer(ptr noundef %0, i1 noundef zeroext false)
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__cancel_work_timer(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cwt_wait, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  %9 = getelementptr inbounds %struct.cwt_wait, ptr %4, i32 0, i32 1
  br label %10

10:                                               ; preds = %21, %2
  %11 = call fastcc i32 @try_to_grab_pending(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull %3)
  %12 = icmp eq i32 %11, -2
  br i1 %12, label %13, label %21, !prof !11

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %14 = tail call ptr @llvm.thread.pointer() #17
  store ptr %14, ptr %5, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %8, align 4
  store i32 0, ptr %4, align 4
  store ptr @cwt_wakefn, ptr %6, align 4
  store ptr %0, ptr %9, align 4
  %15 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef nonnull @__cancel_work_timer.cancel_waitq, ptr noundef nonnull %4, i32 noundef 2) #17
  %16 = load volatile i32, ptr %0, align 4
  %17 = and i32 %16, 20
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  call void @schedule() #17
  br label %20

20:                                               ; preds = %19, %13
  call void @finish_wait(ptr noundef nonnull @__cancel_work_timer.cancel_waitq, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %21

21:                                               ; preds = %20, %10
  %22 = icmp slt i32 %11, 0
  br i1 %22, label %10, label %23, !prof !11

23:                                               ; preds = %21
  %24 = load volatile i32, ptr %0, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = and i32 %24, -256
  %29 = inttoptr i32 %28 to ptr
  %30 = load ptr, ptr %29, align 256
  %31 = getelementptr inbounds %struct.worker_pool, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  br label %35

33:                                               ; preds = %23
  %34 = lshr i32 %24, 5
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %32, %27 ], [ %34, %33 ]
  %37 = load volatile i32, ptr %0, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  %40 = load i1, ptr @set_work_data.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !11

43:                                               ; preds = %35
  store i1 true, ptr @set_work_data.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #17
  br label %44

44:                                               ; preds = %43, %35
  %45 = shl i32 %36, 5
  %46 = or i32 %45, 17
  store volatile i32 %46, ptr %0, align 4
  %47 = load i32, ptr %3, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #17, !srcloc !26
  %48 = load i1, ptr @wq_online, align 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call fastcc zeroext i1 @__flush_work(ptr noundef %0, i1 noundef zeroext true)
  br label %51

51:                                               ; preds = %49, %44
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !41
  %52 = load volatile i32, ptr %0, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = load i1, ptr @set_work_data.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !11

58:                                               ; preds = %51
  store i1 true, ptr @set_work_data.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #17
  br label %59

59:                                               ; preds = %58, %51
  store volatile i32 -32, ptr %0, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !42
  %60 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @__cancel_work_timer.cancel_waitq, i32 0, i32 1), align 4
  %61 = icmp eq ptr %60, getelementptr inbounds (%struct.wait_queue_head, ptr @__cancel_work_timer.cancel_waitq, i32 0, i32 1)
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @__wake_up(ptr noundef nonnull @__cancel_work_timer.cancel_waitq, i32 noundef 3, i32 noundef 1, ptr noundef %0) #17
  br label %63

63:                                               ; preds = %62, %59
  %64 = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i1 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @flush_delayed_work(ptr noundef %0) #0 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !40
  %2 = getelementptr inbounds %struct.delayed_work, ptr %0, i32 0, i32 1
  %3 = tail call i32 @del_timer_sync(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.delayed_work, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.delayed_work, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call fastcc void @__queue_work(i32 noundef %7, ptr noundef %9, ptr noundef %0)
  br label %10

10:                                               ; preds = %5, %1
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  %11 = tail call fastcc zeroext i1 @__flush_work(ptr noundef %0, i1 noundef zeroext false) #17
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @flush_rcu_work(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @rcu_barrier() #17
  %6 = tail call fastcc zeroext i1 @__flush_work(ptr noundef %0, i1 noundef zeroext false) #17
  br label %9

7:                                                ; preds = %1
  %8 = tail call fastcc zeroext i1 @__flush_work(ptr noundef %0, i1 noundef zeroext false) #17
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ true, %5 ], [ %8, %7 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cancel_delayed_work(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !9
  br label %3

3:                                                ; preds = %3, %1
  %4 = call fastcc i32 @try_to_grab_pending(ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull %2) #17
  %5 = icmp eq i32 %4, -11
  br i1 %5, label %3, label %6, !prof !11

6:                                                ; preds = %3
  %7 = icmp slt i32 %4, 0
  br i1 %7, label %33, label %8, !prof !11

8:                                                ; preds = %6
  %9 = load volatile i32, ptr %0, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = and i32 %9, -256
  %14 = inttoptr i32 %13 to ptr
  %15 = load ptr, ptr %14, align 256
  %16 = getelementptr inbounds %struct.worker_pool, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  br label %20

18:                                               ; preds = %8
  %19 = lshr i32 %9, 5
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i32 [ %17, %12 ], [ %19, %18 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !43
  %22 = load volatile i32, ptr %0, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  %25 = load i1, ptr @set_work_data.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !11

28:                                               ; preds = %20
  store i1 true, ptr @set_work_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #17
  br label %29

29:                                               ; preds = %28, %20
  %30 = shl i32 %21, 5
  store volatile i32 %30, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !44
  %31 = load i32, ptr %2, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #17, !srcloc !26
  %32 = icmp ne i32 %4, 0
  br label %33

33:                                               ; preds = %29, %6
  %34 = phi i1 [ %32, %29 ], [ false, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef %0) #0 {
  %2 = tail call fastcc zeroext i1 @__cancel_work_timer(ptr noundef %0, i1 noundef zeroext true)
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @schedule_on_each_cpu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias ptr @__alloc_percpu(i32 noundef 16, i32 noundef 4) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %1
  tail call void @cpus_read_lock() #17
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = ptrtoint ptr %2 to i32
  br label %16

10:                                               ; preds = %30, %4
  %11 = phi i32 [ %6, %4 ], [ %32, %30 ]
  %12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  %13 = icmp ult i32 %12, %11
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = ptrtoint ptr %2 to i32
  br label %34

16:                                               ; preds = %30, %8
  %17 = phi i32 [ %5, %8 ], [ %31, %30 ]
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %9
  %21 = inttoptr i32 %20 to ptr
  store i32 -32, ptr %21, align 4
  %22 = getelementptr inbounds %struct.work_struct, ptr %21, i32 0, i32 1
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.work_struct, ptr %21, i32 0, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.work_struct, ptr %21, i32 0, i32 2
  store ptr %0, ptr %24, align 4
  %25 = load ptr, ptr @system_wq, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %27 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %21) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  tail call fastcc void @__queue_work(i32 noundef %17, ptr noundef %25, ptr noundef %21) #17
  br label %30

30:                                               ; preds = %29, %16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #17, !srcloc !26
  %31 = tail call i32 @cpumask_next(i32 noundef %17, ptr noundef nonnull @__cpu_online_mask) #19
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %16, label %10

34:                                               ; preds = %34, %14
  %35 = phi i32 [ %12, %14 ], [ %41, %34 ]
  %36 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %15
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call fastcc zeroext i1 @__flush_work(ptr noundef %39, i1 noundef zeroext false) #17
  %41 = tail call i32 @cpumask_next(i32 noundef %35, ptr noundef nonnull @__cpu_online_mask) #19
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %34, label %44

44:                                               ; preds = %34, %10
  tail call void @cpus_read_unlock() #17
  tail call void @free_percpu(ptr noundef nonnull %2) #17
  br label %45

45:                                               ; preds = %44, %1
  %46 = phi i32 [ 0, %44 ], [ -12, %1 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @execute_in_process_context(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 15728640
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 983040
  %9 = or i32 %8, %6
  %10 = load volatile i32, ptr %4, align 4
  %11 = and i32 %10, 65280
  %12 = or i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void %0(ptr noundef %1) #17
  br label %25

15:                                               ; preds = %2
  store i32 -32, ptr %1, align 4
  %16 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  store ptr %0, ptr %18, align 4
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %21 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %1) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call fastcc void @__queue_work(i32 noundef 16, ptr noundef %19, ptr noundef %1) #17
  br label %24

24:                                               ; preds = %23, %15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #17, !srcloc !26
  br label %25

25:                                               ; preds = %24, %14
  %26 = phi i32 [ 1, %24 ], [ 0, %14 ]
  ret i32 %26
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @schedule_work(ptr noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr @system_wq, align 4
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @__queue_work(i32 noundef 16, ptr noundef %2, ptr noundef %0) #17
  br label %7

7:                                                ; preds = %6, %1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #17, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_workqueue_attrs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %0) #17
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_workqueue_attrs() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.workqueue_attrs, ptr %2, i32 0, i32 1
  %6 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %6, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @apply_workqueue_attrs(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @lockdep_assert_cpus_held() #17
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %3 = tail call fastcc i32 @apply_workqueue_attrs_locked(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @apply_workqueue_attrs_locked(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4075, i32 noundef 9, ptr noundef null) #17
  br label %30

8:                                                ; preds = %2
  %9 = load volatile ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = and i32 %4, 524288
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !10

14:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4080, i32 noundef 9, ptr noundef null) #17
  br label %30

15:                                               ; preds = %11
  %16 = and i32 %4, -131073
  store i32 %16, ptr %3, align 64
  br label %17

17:                                               ; preds = %15, %8
  %18 = tail call fastcc ptr @apply_wqattrs_prepare(ptr noundef %0, ptr noundef %1)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  tail call fastcc void @apply_wqattrs_commit(ptr noundef nonnull %18)
  %21 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %18, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call fastcc void @put_pwq_unlocked(ptr noundef %22) #17
  %23 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %18, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call fastcc void @put_pwq_unlocked(ptr noundef %24) #17
  %25 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %18, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  tail call void @kfree(ptr noundef nonnull %26) #17
  br label %29

29:                                               ; preds = %28, %20
  tail call void @kfree(ptr noundef nonnull %18) #17
  br label %30

30:                                               ; preds = %29, %17, %14, %7
  %31 = phi i32 [ -22, %7 ], [ 0, %29 ], [ -22, %14 ], [ -12, %17 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_workqueue(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = and i32 %1, 2
  %6 = icmp ne i32 %5, 0
  %7 = icmp eq i32 %2, 1
  %8 = and i1 %6, %7
  %9 = or i32 %1, 131072
  %10 = select i1 %8, i32 %9, i32 %1
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  %13 = load i8, ptr @wq_power_efficient, align 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  %16 = or i32 %10, 2
  %17 = select i1 %15, i32 %10, i32 %16
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 256, i32 260
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %190, label %23

23:                                               ; preds = %3
  br i1 %19, label %34, label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 12) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 13
  store ptr null, ptr %29, align 8
  br label %183

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.workqueue_attrs, ptr %26, i32 0, i32 1
  %32 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 13
  store ptr %26, ptr %33, align 8
  br label %34

34:                                               ; preds = %30, %23
  call void @llvm.va_start(ptr nonnull %4)
  %35 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 16
  %36 = load i32, ptr %4, align 4
  %37 = insertvalue [1 x i32] poison, i32 %36, 0
  %38 = call i32 @vsnprintf(ptr noundef %35, i32 noundef 24, ptr noundef %0, [1 x i32] %37)
  call void @llvm.va_end(ptr nonnull %4)
  %39 = icmp eq i32 %2, 0
  %40 = select i1 %39, i32 256, i32 %2
  br i1 %19, label %47, label %41

41:                                               ; preds = %34
  %42 = load i32, ptr @__cpu_possible_mask, align 4
  %43 = and i32 %42, 65535
  %44 = call i32 @__sw_hweight32(i32 noundef %43) #17
  %45 = shl i32 %44, 2
  %46 = call i32 @llvm.smax.i32(i32 %45, i32 512) #17
  br label %47

47:                                               ; preds = %41, %34
  %48 = phi i32 [ %46, %41 ], [ 512, %34 ]
  %49 = icmp slt i32 %40, 1
  %50 = icmp slt i32 %48, %40
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %40, ptr noundef %35, i32 noundef 1, i32 noundef %48) #18
  br label %54

54:                                               ; preds = %52, %47
  %55 = call i32 @llvm.smax.i32(i32 %40, i32 1) #17
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 %48) #17
  %57 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 19
  store i32 %17, ptr %57, align 64
  %58 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 12
  store i32 %56, ptr %58, align 4
  %59 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 2
  call void @__mutex_init(ptr noundef %59, ptr noundef nonnull @.str.10, ptr noundef nonnull @alloc_workqueue.__key) #17
  %60 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 5
  store volatile i32 0, ptr %60, align 4
  store volatile ptr %21, ptr %21, align 64
  %61 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %21, ptr %61, align 4
  %62 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 7
  store volatile ptr %62, ptr %62, align 4
  %63 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 7, i32 1
  store ptr %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 8
  store volatile ptr %64, ptr %64, align 4
  %65 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 8, i32 1
  store ptr %64, ptr %65, align 64
  %66 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 9
  store volatile ptr %66, ptr %66, align 4
  %67 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 9, i32 1
  store ptr %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 1
  store volatile ptr %68, ptr %68, align 8
  %69 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 1, i32 1
  store ptr %68, ptr %69, align 4
  %70 = load i32, ptr %57, align 64
  %71 = and i32 %70, 16
  %72 = and i32 %70, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %133

74:                                               ; preds = %54
  %75 = call noalias ptr @__alloc_percpu(i32 noundef 256, i32 noundef 256) #20
  %76 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 20
  store ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %183, label %78

78:                                               ; preds = %74
  %79 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %80 = load i32, ptr @nr_cpu_ids, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %161

82:                                               ; preds = %78
  %83 = lshr exact i32 %71, 4
  %84 = ptrtoint ptr %75 to i32
  %85 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, %84
  %88 = and i32 %87, 255
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90, !prof !10

90:                                               ; preds = %125, %82
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/workqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3810, 0\0A.popsection", ""() #17, !srcloc !45
  unreachable

91:                                               ; preds = %125, %82
  %92 = phi i32 [ %130, %125 ], [ %87, %82 ]
  %93 = phi i32 [ %129, %125 ], [ %86, %82 ]
  %94 = phi i32 [ %122, %125 ], [ %79, %82 ]
  %95 = inttoptr i32 %92 to ptr
  %96 = add i32 %93, ptrtoint (ptr @cpu_worker_pools to i32)
  %97 = inttoptr i32 %96 to ptr
  %98 = getelementptr %struct.worker_pool, ptr %97, i32 %83
  call void @llvm.memset.p0.i32(ptr noundef align 256 dereferenceable(256) %95, i8 0, i32 256, i1 false) #17
  store ptr %98, ptr %95, align 256
  %99 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 1
  store ptr %21, ptr %99, align 4
  %100 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 3
  store i32 -1, ptr %100, align 4
  %101 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 4
  store i32 1, ptr %101, align 16
  %102 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 8
  store volatile ptr %102, ptr %102, align 4
  %103 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 8, i32 1
  store ptr %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 9
  store volatile ptr %104, ptr %104, align 4
  %105 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 9, i32 1
  store ptr %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 10
  store volatile ptr %106, ptr %106, align 4
  %107 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 10, i32 1
  store ptr %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 11
  store i32 -32, ptr %108, align 4
  %109 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 11, i32 1
  store volatile ptr %109, ptr %109, align 4
  %110 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 11, i32 1, i32 1
  store ptr %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 11, i32 2
  store ptr @pwq_unbound_release_workfn, ptr %111, align 4
  call void @mutex_lock(ptr noundef %59) #17
  %112 = load ptr, ptr %99, align 4
  %113 = load volatile ptr, ptr %104, align 4
  %114 = icmp eq ptr %113, %104
  br i1 %114, label %115, label %121

115:                                              ; preds = %91
  %116 = getelementptr inbounds %struct.workqueue_struct, ptr %112, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.pool_workqueue, ptr %95, i32 0, i32 2
  store i32 %117, ptr %118, align 8
  call fastcc void @pwq_adjust_max_active(ptr noundef %95) #17
  %119 = load ptr, ptr %112, align 4
  store ptr %119, ptr %104, align 4
  store ptr %112, ptr %105, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  store volatile ptr %104, ptr %112, align 4
  %120 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %104, ptr %120, align 4
  br label %121

121:                                              ; preds = %115, %91
  call void @mutex_unlock(ptr noundef %59) #17
  %122 = call i32 @cpumask_next(i32 noundef %94, ptr noundef nonnull @__cpu_possible_mask) #19
  %123 = load i32, ptr @nr_cpu_ids, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %161

125:                                              ; preds = %121
  %126 = load ptr, ptr %76, align 4
  %127 = ptrtoint ptr %126 to i32
  %128 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %122
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, %127
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %91, label %90, !prof !10

133:                                              ; preds = %54
  call void @cpus_read_lock() #17
  %134 = load i32, ptr %57, align 64
  %135 = and i32 %134, 131072
  %136 = icmp eq i32 %135, 0
  %137 = lshr exact i32 %71, 4
  br i1 %136, label %153, label %138

138:                                              ; preds = %133
  %139 = getelementptr [2 x ptr], ptr @ordered_wq_attrs, i32 0, i32 %137
  %140 = load ptr, ptr %139, align 4
  call void @lockdep_assert_cpus_held() #17
  call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %141 = call fastcc i32 @apply_workqueue_attrs_locked(ptr noundef nonnull %21, ptr noundef %140) #17
  call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %138
  %144 = load ptr, ptr %21, align 64
  %145 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 14
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.pool_workqueue, ptr %146, i32 0, i32 9
  %148 = icmp eq ptr %144, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load ptr, ptr %61, align 4
  %151 = icmp eq ptr %150, %144
  br i1 %151, label %157, label %152, !prof !10

152:                                              ; preds = %149, %143
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4245, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %35) #17
  br label %157

153:                                              ; preds = %133
  %154 = getelementptr [2 x ptr], ptr @unbound_std_wq_attrs, i32 0, i32 %137
  %155 = load ptr, ptr %154, align 4
  call void @lockdep_assert_cpus_held() #17
  call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %156 = call fastcc i32 @apply_workqueue_attrs_locked(ptr noundef nonnull %21, ptr noundef %155) #17
  call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  br label %158

157:                                              ; preds = %152, %149
  call void @cpus_read_unlock() #17
  br label %161

158:                                              ; preds = %153, %138
  %159 = phi i32 [ %156, %153 ], [ %141, %138 ]
  call void @cpus_read_unlock() #17
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %183, label %161

161:                                              ; preds = %158, %157, %121, %78
  %162 = load i1, ptr @wq_online, align 1
  br i1 %162, label %163, label %166

163:                                              ; preds = %161
  %164 = call fastcc i32 @init_rescuer(ptr noundef nonnull %21)
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %189, label %166

166:                                              ; preds = %163, %161
  %167 = load i32, ptr %57, align 64
  %168 = and i32 %167, 64
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = call i32 @workqueue_sysfs_register(ptr noundef nonnull %21)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %170, %166
  call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  call void @mutex_lock(ptr noundef %59) #17
  %174 = load volatile ptr, ptr %21, align 64
  %175 = icmp eq ptr %174, %21
  br i1 %175, label %181, label %176

176:                                              ; preds = %176, %173
  %177 = phi ptr [ %179, %176 ], [ %174, %173 ]
  %178 = getelementptr i8, ptr %177, i32 -100
  call fastcc void @pwq_adjust_max_active(ptr noundef %178)
  %179 = load volatile ptr, ptr %177, align 4
  %180 = icmp eq ptr %179, %21
  br i1 %180, label %181, label %176

181:                                              ; preds = %176, %173
  call void @mutex_unlock(ptr noundef %59) #17
  %182 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @workqueues, i32 0, i32 1), align 4
  store ptr @workqueues, ptr %68, align 8
  store ptr %182, ptr %69, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  store volatile ptr %68, ptr %182, align 4
  store ptr %68, ptr getelementptr inbounds (%struct.list_head, ptr @workqueues, i32 0, i32 1), align 4
  call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  br label %190

183:                                              ; preds = %158, %74, %28
  %184 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 13
  %185 = load ptr, ptr %184, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  call void @kfree(ptr noundef nonnull %185) #17
  br label %188

188:                                              ; preds = %187, %183
  call void @kfree(ptr noundef nonnull %21) #17
  br label %190

189:                                              ; preds = %170, %163
  call void @destroy_workqueue(ptr noundef nonnull %21)
  br label %190

190:                                              ; preds = %189, %188, %181, %3
  %191 = phi ptr [ null, %188 ], [ null, %189 ], [ %21, %181 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret ptr %191
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_rescuer(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 64
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 96) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  store volatile ptr %8, ptr %8, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.worker, ptr %8, i32 0, i32 5
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.worker, ptr %8, i32 0, i32 5, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.worker, ptr %8, i32 0, i32 8
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.worker, ptr %8, i32 0, i32 8, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.worker, ptr %8, i32 0, i32 10
  store i32 8, ptr %16, align 4
  %17 = getelementptr inbounds %struct.worker, ptr %8, i32 0, i32 14
  store ptr %0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 16
  %19 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rescuer_thread, ptr noundef nonnull %8, i32 noundef -1, ptr noundef nonnull @.str.20, ptr noundef %18) #17
  %20 = getelementptr inbounds %struct.worker, ptr %8, i32 0, i32 6
  store ptr %19, ptr %20, align 8
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = ptrtoint ptr %19 to i32
  tail call void @kfree(ptr noundef nonnull %8) #17
  br label %28

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 10
  store ptr %8, ptr %25, align 4
  tail call void @kthread_bind_mask(ptr noundef %19, ptr noundef nonnull @__cpu_possible_mask) #17
  %26 = load ptr, ptr %20, align 8
  %27 = tail call i32 @wake_up_process(ptr noundef %26) #17
  br label %28

28:                                               ; preds = %24, %22, %6, %1
  %29 = phi i32 [ %23, %22 ], [ 0, %24 ], [ 0, %1 ], [ -12, %6 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @workqueue_sysfs_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 64
  %4 = and i32 %3, 524288
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5741, i32 noundef 9, ptr noundef null) #17
  br label %44

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 480) #21
  %10 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 15
  store ptr %9, ptr %10, align 32
  %11 = icmp eq ptr %9, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %7
  store ptr %0, ptr %9, align 8
  %13 = getelementptr inbounds %struct.wq_device, ptr %9, i32 0, i32 1
  %14 = getelementptr inbounds %struct.wq_device, ptr %9, i32 0, i32 1, i32 5
  store ptr @wq_subsys, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wq_device, ptr %9, i32 0, i32 1, i32 33
  store ptr @wq_device_release, ptr %15, align 4
  %16 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 16
  %17 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %13, ptr noundef nonnull @.str.20, ptr noundef %16) #17
  %18 = getelementptr inbounds %struct.wq_device, ptr %9, i32 0, i32 1, i32 0, i32 7
  %19 = load i8, ptr %18, align 8
  %20 = or i8 %19, 16
  store i8 %20, ptr %18, align 8
  %21 = tail call i32 @device_register(ptr noundef %13) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  tail call void @put_device(ptr noundef %13) #17
  store ptr null, ptr %10, align 32
  br label %44

24:                                               ; preds = %12
  %25 = load i32, ptr %2, align 64
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @wq_sysfs_unbound_attrs, align 4
  %29 = icmp eq ptr %28, null
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %40, label %35

31:                                               ; preds = %35
  %32 = getelementptr %struct.device_attribute, ptr %36, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %24
  %36 = phi ptr [ %32, %31 ], [ @wq_sysfs_unbound_attrs, %24 ]
  %37 = tail call i32 @device_create_file(ptr noundef %13, ptr noundef %36) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %31, label %39

39:                                               ; preds = %35
  tail call void @device_unregister(ptr noundef %13) #17
  store ptr null, ptr %10, align 32
  br label %44

40:                                               ; preds = %31, %24
  %41 = load i8, ptr %18, align 8
  %42 = and i8 %41, -17
  store i8 %42, ptr %18, align 8
  %43 = tail call i32 @kobject_uevent(ptr noundef %13, i32 noundef 0) #17
  br label %44

44:                                               ; preds = %40, %39, %23, %7, %6
  %45 = phi i32 [ -22, %6 ], [ %21, %23 ], [ 0, %40 ], [ %37, %39 ], [ -12, %7 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pwq_adjust_max_active(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.workqueue_struct, ptr %3, i32 0, i32 19
  %5 = load i32, ptr %4, align 64
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.workqueue_struct, ptr %3, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %59, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 256
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #17
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr %0, align 256
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #17
  %20 = load i1, ptr @workqueue_freezing, align 1
  br i1 %20, label %54, label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %16, %14 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.workqueue_struct, ptr %3, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 7
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 8
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %56, label %30

30:                                               ; preds = %21
  %31 = load i32, ptr %26, align 4
  %32 = icmp slt i32 %31, %24
  br i1 %32, label %33, label %56

33:                                               ; preds = %38, %30
  %34 = phi ptr [ %36, %38 ], [ %28, %30 ]
  %35 = getelementptr i8, ptr %34, i32 -4
  tail call fastcc void @pwq_activate_inactive_work(ptr noundef %35) #17
  %36 = load volatile ptr, ptr %27, align 4
  %37 = icmp eq ptr %36, %27
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %25, align 8
  %40 = load i32, ptr %26, align 4
  %41 = icmp slt i32 %40, %39
  br i1 %41, label %33, label %42

42:                                               ; preds = %38
  br i1 %32, label %43, label %56

43:                                               ; preds = %42, %33
  %44 = load ptr, ptr %0, align 256
  %45 = getelementptr inbounds %struct.worker_pool, ptr %44, i32 0, i32 10
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  %48 = icmp eq ptr %46, null
  %49 = or i1 %47, %48
  br i1 %49, label %56, label %50, !prof !11

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.worker, ptr %46, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @wake_up_process(ptr noundef %52) #17
  br label %56

54:                                               ; preds = %17
  %55 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 7
  store i32 0, ptr %55, align 8
  br label %56

56:                                               ; preds = %54, %50, %43, %42, %30, %21
  %57 = phi i32 [ %22, %42 ], [ %19, %54 ], [ %22, %43 ], [ %22, %50 ], [ %22, %21 ], [ %22, %30 ]
  %58 = load ptr, ptr %0, align 256
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %57) #17
  br label %59

59:                                               ; preds = %56, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @destroy_workqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 32
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 32
  %6 = getelementptr inbounds %struct.wq_device, ptr %3, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %6) #17
  br label %7

7:                                                ; preds = %5, %1
  tail call void @drain_workqueue(ptr noundef %0)
  %8 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @wq_mayday_lock) #17
  store ptr null, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %12 = load i16, ptr @wq_mayday_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @wq_mayday_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %14 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @kthread_stop(ptr noundef %15) #17
  tail call void @kfree(ptr noundef nonnull %9) #17
  br label %17

17:                                               ; preds = %11, %7
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %18 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %18) #17
  %19 = load volatile ptr, ptr %0, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %118, label %21

21:                                               ; preds = %112, %17
  %22 = phi ptr [ %116, %112 ], [ %19, %17 ]
  %23 = getelementptr i8, ptr %22, i32 -100
  %24 = load ptr, ptr %23, align 256
  tail call void @_raw_spin_lock_irq(ptr noundef %24) #17
  %25 = getelementptr i8, ptr %22, i32 -80
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %106, !prof !47

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %22, i32 -76
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %106, !prof !47

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %22, i32 -72
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %106, !prof !47

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %22, i32 -68
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %106, !prof !47

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %22, i32 -64
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %106, !prof !47

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %22, i32 -60
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %106, !prof !47

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %22, i32 -56
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %106, !prof !47

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %22, i32 -52
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %106, !prof !47

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %22, i32 -48
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %106, !prof !47

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %22, i32 -44
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %106, !prof !47

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %22, i32 -40
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %106, !prof !47

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %22, i32 -36
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %106, !prof !47

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %22, i32 -32
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %106, !prof !47

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %22, i32 -28
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %106, !prof !47

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %22, i32 -24
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %106, !prof !47

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %22, i32 -20
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %106, !prof !47

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %22, i32 -96
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.workqueue_struct, ptr %90, i32 0, i32 14
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, %23
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = getelementptr i8, ptr %22, i32 -84
  %96 = load i32, ptr %95, align 16
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %106, label %98, !prof !48

98:                                               ; preds = %94, %88
  %99 = getelementptr i8, ptr %22, i32 -16
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106, !prof !47

102:                                              ; preds = %98
  %103 = getelementptr i8, ptr %22, i32 -8
  %104 = load volatile ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %112, label %106, !prof !10

106:                                              ; preds = %102, %98, %94, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4453, i32 noundef 9, ptr noundef null) #17
  %107 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 16
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.destroy_workqueue, ptr noundef %107) #18
  tail call fastcc void @show_pwq(ptr noundef %23)
  %109 = load ptr, ptr %23, align 256
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %110 = load i16, ptr %109, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %109, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  tail call void @mutex_unlock(ptr noundef %18) #17
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  tail call void @show_one_workqueue(ptr noundef %0)
  br label %135

112:                                              ; preds = %102
  %113 = load ptr, ptr %23, align 256
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %114 = load i16, ptr %113, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %113, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %116 = load volatile ptr, ptr %22, align 4
  %117 = icmp eq ptr %116, %0
  br i1 %117, label %118, label %21

118:                                              ; preds = %112, %17
  tail call void @mutex_unlock(ptr noundef %18) #17
  %119 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 1
  %120 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 1, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %119, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store volatile ptr %122, ptr %121, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %120, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  %124 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 19
  %125 = load i32, ptr %124, align 64
  %126 = and i32 %125, 2
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 17
  tail call void @call_rcu(ptr noundef %129, ptr noundef nonnull @rcu_free_wq) #17
  br label %135

130:                                              ; preds = %118
  %131 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 21
  %132 = load volatile ptr, ptr %131, align 4
  store volatile ptr null, ptr %131, align 4
  tail call fastcc void @put_pwq_unlocked(ptr noundef %132)
  %133 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 14
  %134 = load ptr, ptr %133, align 4
  store ptr null, ptr %133, align 4
  tail call fastcc void @put_pwq_unlocked(ptr noundef %134)
  br label %135

135:                                              ; preds = %130, %128, %106
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @show_pwq(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 256
  %3 = getelementptr inbounds %struct.worker_pool, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.worker_pool, ptr %2, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.workqueue_attrs, ptr %7, i32 0, i32 1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 16, ptr noundef %8) #18
  %10 = getelementptr inbounds %struct.worker_pool, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %11) #18
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.worker_pool, ptr %2, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %17, i32 noundef %19) #18
  %21 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 16
  %27 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 10
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  %30 = select i1 %29, ptr @.str.65, ptr @.str.64
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef nonnull %30) #18
  br label %32

32:                                               ; preds = %43, %15
  %33 = phi i32 [ 0, %15 ], [ %44, %43 ]
  %34 = getelementptr %struct.worker_pool, ptr %2, i32 0, i32 13, i32 %33
  br label %35

35:                                               ; preds = %39, %32
  %36 = phi ptr [ %34, %32 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.worker, ptr %37, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %46, label %35

43:                                               ; preds = %35
  %44 = add nuw nsw i32 %33, 1
  %45 = icmp ult i32 %33, 63
  br i1 %45, label %32, label %102

46:                                               ; preds = %39
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #18
  br label %48

48:                                               ; preds = %96, %46
  %49 = phi i32 [ 0, %46 ], [ %98, %96 ]
  %50 = phi i1 [ false, %46 ], [ %97, %96 ]
  %51 = getelementptr %struct.worker_pool, ptr %2, i32 0, i32 13, i32 %49
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %96, label %54

54:                                               ; preds = %92, %48
  %55 = phi ptr [ %94, %92 ], [ %52, %48 ]
  %56 = phi i1 [ %93, %92 ], [ %50, %48 ]
  %57 = getelementptr inbounds %struct.worker, ptr %55, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %60, label %92

60:                                               ; preds = %54
  %61 = select i1 %56, ptr @.str.68, ptr @.str.65
  %62 = getelementptr inbounds %struct.worker, ptr %55, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 52
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.worker, ptr %55, i32 0, i32 14
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, ptr @.str.65, ptr @.str.69
  %70 = getelementptr inbounds %struct.worker, ptr %55, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull %61, i32 noundef %65, ptr noundef nonnull %69, ptr noundef %71) #18
  %73 = getelementptr inbounds %struct.worker, ptr %55, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %92, label %76

76:                                               ; preds = %89, %60
  %77 = phi ptr [ %90, %89 ], [ %74, %60 ]
  %78 = getelementptr i8, ptr %77, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, @wq_barrier_func
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr i8, ptr %77, i32 28
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 52
  %85 = load i32, ptr %84, align 8
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.65, i32 noundef %85) #18
  br label %89

87:                                               ; preds = %76
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.65, ptr noundef %79) #18
  br label %89

89:                                               ; preds = %87, %81
  %90 = load ptr, ptr %77, align 4
  %91 = icmp eq ptr %90, %73
  br i1 %91, label %92, label %76

92:                                               ; preds = %89, %60, %54
  %93 = phi i1 [ %56, %54 ], [ true, %60 ], [ true, %89 ]
  %94 = load ptr, ptr %55, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %54

96:                                               ; preds = %92, %48
  %97 = phi i1 [ %50, %48 ], [ %93, %92 ]
  %98 = add nuw nsw i32 %49, 1
  %99 = icmp eq i32 %98, 64
  br i1 %99, label %100, label %48

100:                                              ; preds = %96
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #18
  br label %102

102:                                              ; preds = %100, %43
  %103 = getelementptr inbounds %struct.worker_pool, ptr %2, i32 0, i32 7
  br label %104

104:                                              ; preds = %108, %102
  %105 = phi ptr [ %103, %102 ], [ %106, %108 ]
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, %103
  br i1 %107, label %155, label %108

108:                                              ; preds = %104
  %109 = getelementptr i8, ptr %106, i32 -4
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  %113 = and i32 %110, -256
  %114 = inttoptr i32 %113 to ptr
  %115 = select i1 %112, ptr null, ptr %114
  %116 = icmp eq ptr %115, %0
  br i1 %116, label %117, label %104

117:                                              ; preds = %108
  %118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #18
  %119 = load ptr, ptr %103, align 4
  %120 = icmp eq ptr %119, %103
  br i1 %120, label %153, label %121

121:                                              ; preds = %149, %117
  %122 = phi ptr [ %151, %149 ], [ %119, %117 ]
  %123 = phi i1 [ %150, %149 ], [ false, %117 ]
  %124 = getelementptr i8, ptr %122, i32 -4
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %125, 4
  %127 = icmp eq i32 %126, 0
  %128 = and i32 %125, -256
  %129 = inttoptr i32 %128 to ptr
  %130 = select i1 %127, ptr null, ptr %129
  %131 = icmp eq ptr %130, %0
  br i1 %131, label %132, label %149

132:                                              ; preds = %121
  %133 = getelementptr i8, ptr %122, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, @wq_barrier_func
  %136 = select i1 %123, ptr @.str.68, ptr @.str.65
  br i1 %135, label %137, label %143

137:                                              ; preds = %132
  %138 = getelementptr i8, ptr %122, i32 28
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 52
  %141 = load i32, ptr %140, align 8
  %142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %136, i32 noundef %141) #18
  br label %145

143:                                              ; preds = %132
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %136, ptr noundef %134) #18
  br label %145

145:                                              ; preds = %143, %137
  %146 = load i32, ptr %124, align 4
  %147 = and i32 %146, 8
  %148 = icmp eq i32 %147, 0
  br label %149

149:                                              ; preds = %145, %121
  %150 = phi i1 [ %123, %121 ], [ %148, %145 ]
  %151 = load ptr, ptr %122, align 4
  %152 = icmp eq ptr %151, %103
  br i1 %152, label %153, label %121

153:                                              ; preds = %149, %117
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #18
  br label %155

155:                                              ; preds = %153, %104
  %156 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 8
  %157 = load volatile ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, %156
  br i1 %158, label %187, label %159

159:                                              ; preds = %155
  %160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #18
  %161 = load ptr, ptr %156, align 4
  %162 = icmp eq ptr %161, %156
  br i1 %162, label %185, label %163

163:                                              ; preds = %179, %159
  %164 = phi ptr [ %183, %179 ], [ %161, %159 ]
  %165 = phi i1 [ %182, %179 ], [ false, %159 ]
  %166 = getelementptr i8, ptr %164, i32 -4
  %167 = getelementptr i8, ptr %164, i32 8
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, @wq_barrier_func
  %170 = select i1 %165, ptr @.str.68, ptr @.str.65
  br i1 %169, label %171, label %177

171:                                              ; preds = %163
  %172 = getelementptr i8, ptr %164, i32 28
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.task_struct, ptr %173, i32 0, i32 52
  %175 = load i32, ptr %174, align 8
  %176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %170, i32 noundef %175) #18
  br label %179

177:                                              ; preds = %163
  %178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %170, ptr noundef %168) #18
  br label %179

179:                                              ; preds = %177, %171
  %180 = load i32, ptr %166, align 4
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  %183 = load ptr, ptr %164, align 4
  %184 = icmp eq ptr %183, %156
  br i1 %184, label %185, label %163

185:                                              ; preds = %179, %159
  %186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #18
  br label %187

187:                                              ; preds = %185, %155
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_one_workqueue(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %10 ]
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -8
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %2, label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 16
  %16 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 19
  %17 = load i32, ptr %16, align 64
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %15, i32 noundef %17) #18
  %19 = load volatile ptr, ptr %0, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %38, label %21

21:                                               ; preds = %34, %14
  %22 = phi ptr [ %36, %34 ], [ %19, %14 ]
  %23 = getelementptr i8, ptr %22, i32 -100
  %24 = load ptr, ptr %23, align 256
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #17
  %26 = getelementptr i8, ptr %22, i32 -16
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %22, i32 -8
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %21
  tail call void @__printk_safe_enter() #17
  tail call fastcc void @show_pwq(ptr noundef %23)
  tail call void @__printk_safe_exit() #17
  br label %34

34:                                               ; preds = %33, %29
  %35 = load ptr, ptr %23, align 256
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %25) #17
  %36 = load volatile ptr, ptr %22, align 4
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %38, label %21

38:                                               ; preds = %34, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_free_wq(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 68
  %3 = load i32, ptr %2, align 64
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 72
  %8 = load ptr, ptr %7, align 4
  tail call void @free_percpu(ptr noundef %8) #17
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9, %6
  %15 = getelementptr i8, ptr %0, i32 -124
  tail call void @kfree(ptr noundef %15) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_pwq_unlocked(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 256
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #17
  %5 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 16
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29, !prof !11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.workqueue_struct, ptr %11, i32 0, i32 19
  %13 = load i32, ptr %12, align 64
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = load i1, ptr @put_pwq.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %9
  store i1 true, ptr @put_pwq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 9, ptr noundef null) #17
  br label %20

20:                                               ; preds = %19, %9
  br i1 %15, label %29, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 11
  %23 = load ptr, ptr @system_wq, align 4
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %25 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %22) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call fastcc void @__queue_work(i32 noundef 16, ptr noundef %23, ptr noundef %22) #17
  br label %28

28:                                               ; preds = %27, %21
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #17, !srcloc !26
  br label %29

29:                                               ; preds = %28, %20, %3
  %30 = load ptr, ptr %0, align 256
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %33

33:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @workqueue_set_max_active(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, 524288
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4519, i32 noundef 9, ptr noundef null) #17
  br label %40

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 16
  %10 = and i32 %4, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr @__cpu_possible_mask, align 4
  %14 = and i32 %13, 65535
  %15 = tail call i32 @__sw_hweight32(i32 noundef %14) #17
  %16 = shl i32 %15, 2
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 512) #17
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i32 [ %17, %12 ], [ 512, %8 ]
  %20 = icmp slt i32 %1, 1
  %21 = icmp slt i32 %19, %1
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %1, ptr noundef %9, i32 noundef 1, i32 noundef %19) #18
  br label %25

25:                                               ; preds = %23, %18
  %26 = tail call i32 @llvm.smax.i32(i32 %1, i32 1) #17
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %19) #17
  %28 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %28) #17
  %29 = load i32, ptr %3, align 64
  %30 = and i32 %29, -131073
  store i32 %30, ptr %3, align 64
  %31 = getelementptr inbounds %struct.workqueue_struct, ptr %0, i32 0, i32 12
  store i32 %27, ptr %31, align 4
  %32 = load volatile ptr, ptr %0, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %39, label %34

34:                                               ; preds = %34, %25
  %35 = phi ptr [ %37, %34 ], [ %32, %25 ]
  %36 = getelementptr i8, ptr %35, i32 -100
  tail call fastcc void @pwq_adjust_max_active(ptr noundef %36)
  %37 = load volatile ptr, ptr %35, align 4
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %39, label %34

39:                                               ; preds = %34, %25
  tail call void @mutex_unlock(ptr noundef %28) #17
  br label %40

40:                                               ; preds = %39, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @current_work() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #17
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 15728640
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 983040
  %7 = or i32 %6, %4
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 256
  %10 = or i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @kthread_data(ptr noundef %1) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.worker, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %17, %12, %0
  %24 = phi ptr [ %22, %20 ], [ null, %17 ], [ null, %12 ], [ null, %0 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @current_is_workqueue_rescuer() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #17
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 15728640
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 983040
  %7 = or i32 %6, %4
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 256
  %10 = or i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @kthread_data(ptr noundef %1) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.worker, ptr %18, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %22, null
  br label %24

24:                                               ; preds = %20, %17, %12, %0
  %25 = phi i1 [ false, %17 ], [ %23, %20 ], [ false, %12 ], [ false, %0 ]
  ret i1 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @workqueue_congested(i32 noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !49
  %3 = icmp eq i32 %0, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = tail call ptr @llvm.thread.pointer() #17
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.workqueue_struct, ptr %1, i32 0, i32 19
  %11 = load i32, ptr %10, align 64
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.workqueue_struct, ptr %1, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = inttoptr i32 %20 to ptr
  br label %25

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.workqueue_struct, ptr %1, i32 0, i32 21
  %24 = load volatile ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %14
  %26 = phi ptr [ %24, %22 ], [ %21, %14 ]
  %27 = getelementptr inbounds %struct.pool_workqueue, ptr %26, i32 0, i32 8
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp ne ptr %28, %27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  ret i1 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @work_busy(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %4 = load volatile i32, ptr %0, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = and i32 %4, -256
  %9 = inttoptr i32 %8 to ptr
  %10 = load ptr, ptr %9, align 256
  br label %16

11:                                               ; preds = %1
  %12 = lshr i32 %4, 5
  %13 = icmp eq i32 %12, 134217727
  br i1 %13, label %47, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @idr_find(ptr noundef nonnull @worker_pool_idr, i32 noundef %12) #17
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi ptr [ %10, %7 ], [ %15, %14 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %17) #17
  %21 = ptrtoint ptr %0 to i32
  %22 = mul i32 %21, 1640531527
  %23 = lshr i32 %22, 26
  %24 = getelementptr %struct.worker_pool, ptr %17, i32 0, i32 13, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.work_struct, ptr %0, i32 0, i32 2
  br label %29

29:                                               ; preds = %39, %27
  %30 = phi ptr [ %25, %27 ], [ %40, %39 ]
  %31 = getelementptr inbounds %struct.worker, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.worker, ptr %30, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %28, align 4
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %29
  %40 = load ptr, ptr %30, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %29

42:                                               ; preds = %39, %34, %19
  %43 = phi ptr [ null, %19 ], [ %30, %34 ], [ null, %39 ]
  %44 = icmp eq ptr %43, null
  %45 = or i32 %3, 2
  %46 = select i1 %44, i32 %3, i32 %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %17, i32 noundef %20) #17
  br label %47

47:                                               ; preds = %42, %16, %11
  %48 = phi i32 [ %46, %42 ], [ %3, %16 ], [ %3, %11 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_worker_desc(ptr nocapture noundef readonly %0, ...) #0 {
  %2 = alloca %struct.__va_list, align 4
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 15728640
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 983040
  %9 = or i32 %8, %6
  %10 = load volatile i32, ptr %4, align 4
  %11 = and i32 %10, 256
  %12 = or i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  br label %28

20:                                               ; preds = %14
  %21 = tail call ptr @kthread_data(ptr noundef %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  call void @llvm.va_start(ptr nonnull %2)
  %24 = getelementptr inbounds %struct.worker, ptr %21, i32 0, i32 13
  %25 = load i32, ptr %2, align 4
  %26 = insertvalue [1 x i32] poison, i32 %25, 0
  %27 = call i32 @vsnprintf(ptr noundef %24, i32 noundef 24, ptr noundef %0, [1 x i32] %26)
  call void @llvm.va_end(ptr nonnull %2)
  br label %28

28:                                               ; preds = %23, %20, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_worker_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca [24 x i8], align 1
  %5 = alloca [24 x i8], align 1
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %5, i8 0, i32 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @kthread_probe_data(ptr noundef %1) #17
  %14 = getelementptr inbounds %struct.worker, ptr %13, i32 0, i32 2
  %15 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %3, ptr noundef %14, i32 noundef 4) #17
  %16 = getelementptr inbounds %struct.worker, ptr %13, i32 0, i32 3
  %17 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %6, ptr noundef %16, i32 noundef 4) #17
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.pool_workqueue, ptr %18, i32 0, i32 1
  %20 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %7, ptr noundef %19, i32 noundef 4) #17
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.workqueue_struct, ptr %21, i32 0, i32 16
  %23 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %4, ptr noundef %22, i32 noundef 23) #17
  %24 = getelementptr inbounds %struct.worker, ptr %13, i32 0, i32 13
  %25 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %5, ptr noundef %24, i32 noundef 23) #17
  %26 = load ptr, ptr %3, align 4
  %27 = icmp ne ptr %26, null
  %28 = load i8, ptr %4, align 1
  %29 = icmp ne i8 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  %31 = load i8, ptr %5, align 1
  %32 = icmp ne i8 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %12
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %26) #18
  %36 = call i32 @strcmp(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %5) #18
  br label %40

40:                                               ; preds = %38, %34
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #18
  br label %42

42:                                               ; preds = %40, %12, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_probe_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_all_workqueues() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #18
  %3 = load volatile ptr, ptr @workqueues, align 4
  %4 = icmp eq ptr %3, @workqueues
  br i1 %4, label %5, label %8

5:                                                ; preds = %8, %0
  store i32 0, ptr %1, align 4
  %6 = call ptr @idr_get_next(ptr noundef nonnull @worker_pool_idr, ptr noundef nonnull %1) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %85, label %13

8:                                                ; preds = %8, %0
  %9 = phi ptr [ %11, %8 ], [ %3, %0 ]
  %10 = getelementptr i8, ptr %9, i32 -8
  tail call void @show_one_workqueue(ptr noundef %10)
  %11 = load volatile ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, @workqueues
  br i1 %12, label %5, label %8

13:                                               ; preds = %80, %5
  %14 = phi ptr [ %83, %80 ], [ %6, %5 ]
  %15 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %14) #17
  %16 = getelementptr inbounds %struct.worker_pool, ptr %14, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.worker_pool, ptr %14, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %80, label %21

21:                                               ; preds = %13
  call void @__printk_safe_enter() #17
  %22 = getelementptr inbounds %struct.worker_pool, ptr %14, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %23) #18
  %25 = getelementptr inbounds %struct.worker_pool, ptr %14, i32 0, i32 18
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.workqueue_attrs, ptr %26, i32 0, i32 1
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 16, ptr noundef %27) #18
  %29 = getelementptr inbounds %struct.worker_pool, ptr %14, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %30) #18
  br label %34

34:                                               ; preds = %32, %21
  %35 = getelementptr inbounds %struct.worker_pool, ptr %14, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %25, align 4
  %38 = load i32, ptr %37, align 4
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %36, i32 noundef %38) #18
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = getelementptr inbounds %struct.worker_pool, ptr %14, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  %44 = call i32 @jiffies_to_msecs(i32 noundef %43) #17
  %45 = udiv i32 %44, 1000
  %46 = load i32, ptr %16, align 4
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %45, i32 noundef %46) #18
  %48 = getelementptr inbounds %struct.worker_pool, ptr %14, i32 0, i32 14
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.worker, ptr %49, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 52
  %55 = load i32, ptr %54, align 8
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %55) #18
  br label %57

57:                                               ; preds = %51, %34
  %58 = getelementptr inbounds %struct.worker_pool, ptr %14, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %78, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.worker, ptr %59, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 52
  %65 = load i32, ptr %64, align 8
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %65) #18
  %67 = load ptr, ptr %59, align 4
  %68 = icmp eq ptr %67, %58
  br i1 %68, label %78, label %69

69:                                               ; preds = %69, %61
  %70 = phi ptr [ %76, %69 ], [ %67, %61 ]
  %71 = getelementptr inbounds %struct.worker, ptr %70, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 52
  %74 = load i32, ptr %73, align 8
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.65, i32 noundef %74) #18
  %76 = load ptr, ptr %70, align 4
  %77 = icmp eq ptr %76, %58
  br i1 %77, label %78, label %69, !llvm.loop !51

78:                                               ; preds = %69, %61, %57
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #18
  call void @__printk_safe_exit() #17
  br label %80

80:                                               ; preds = %78, %13
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %14, i32 noundef %15) #17
  %81 = load i32, ptr %1, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %1, align 4
  %83 = call ptr @idr_get_next(ptr noundef nonnull @worker_pool_idr, ptr noundef nonnull %1) #17
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %13

85:                                               ; preds = %80, %5
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wq_worker_comm(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 85
  %5 = tail call i32 @strscpy(ptr noundef %0, ptr noundef %4, i32 noundef %1) #17
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %8 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @kthread_data(ptr noundef %2) #17
  %14 = getelementptr inbounds %struct.worker, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %15) #17
  %18 = getelementptr inbounds %struct.worker, ptr %13, i32 0, i32 13
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.worker, ptr %13, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = getelementptr i8, ptr %0, i32 %5
  %26 = sub i32 %1, %5
  %27 = select i1 %24, ptr @.str.18, ptr @.str.17
  %28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %25, i32 noundef %26, ptr noundef nonnull %27, ptr noundef %18) #17
  br label %29

29:                                               ; preds = %21, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %30 = load i16, ptr %15, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %32

32:                                               ; preds = %29, %12, %7
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  br label %33

33:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @workqueue_prepare_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_worker_pools to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr [2 x %struct.worker_pool], ptr %5, i32 0, i32 2
  %7 = icmp ugt ptr %6, %5
  br i1 %7, label %8, label %26

8:                                                ; preds = %19, %1
  %9 = phi i32 [ %20, %19 ], [ %3, %1 ]
  %10 = phi ptr [ %21, %19 ], [ %5, %1 ]
  %11 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @create_worker(ptr noundef %10)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %2, align 4
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i32 [ %18, %17 ], [ %9, %8 ]
  %21 = getelementptr %struct.worker_pool, ptr %10, i32 1
  %22 = add i32 %20, ptrtoint (ptr @cpu_worker_pools to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr [2 x %struct.worker_pool], ptr %23, i32 0, i32 2
  %25 = icmp ult ptr %21, %24
  br i1 %25, label %8, label %26

26:                                               ; preds = %19, %14, %1
  %27 = phi i32 [ 0, %1 ], [ 0, %19 ], [ -12, %14 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @create_worker(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 17
  %4 = tail call i32 @ida_alloc_range(ptr noundef %3, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %78, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 96) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %77, label %11

11:                                               ; preds = %6
  store volatile ptr %9, ptr %9, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 5
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 5, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 8
  store volatile ptr %15, ptr %15, align 8
  %16 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 8, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 10
  store i32 8, ptr %17, align 4
  %18 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 11
  store i32 %4, ptr %18, align 8
  %19 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 18
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %25, 0
  %27 = select i1 %26, ptr @.str.83, ptr @.str.65
  %28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.82, i32 noundef %20, i32 noundef %4, ptr noundef nonnull %27)
  br label %33

29:                                               ; preds = %11
  %30 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.84, i32 noundef %31, i32 noundef %4)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, ptr %7, align 4
  %35 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @worker_thread, ptr noundef nonnull %9, i32 noundef %34, ptr noundef nonnull @.str.85, ptr noundef nonnull %2) #17
  %36 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 6
  store ptr %35, ptr %36, align 8
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %77, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 18
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %40, align 4
  call void @set_user_nice(ptr noundef %35, i32 noundef %41) #17
  %42 = load ptr, ptr %36, align 8
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr inbounds %struct.workqueue_attrs, ptr %43, i32 0, i32 1
  call void @kthread_bind_mask(ptr noundef %42, ptr noundef %44) #17
  call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %45 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, ptr %17, align 4
  %51 = or i32 %50, 128
  store i32 %51, ptr %17, align 4
  br label %55

52:                                               ; preds = %38
  %53 = load ptr, ptr %36, align 8
  %54 = load i32, ptr %19, align 4
  call void @kthread_set_per_cpu(ptr noundef %53, i32 noundef %54) #17
  br label %55

55:                                               ; preds = %52, %49
  %56 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 14
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %36, align 8
  %61 = load ptr, ptr %39, align 4
  %62 = getelementptr inbounds %struct.workqueue_attrs, ptr %61, i32 0, i32 1
  %63 = call i32 @set_cpus_allowed_ptr(ptr noundef %60, ptr noundef %62) #17
  br label %64

64:                                               ; preds = %59, %55
  %65 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 15
  %66 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 15, i32 1
  %67 = load ptr, ptr %66, align 4
  store ptr %15, ptr %66, align 4
  store ptr %65, ptr %15, align 8
  store ptr %67, ptr %16, align 4
  store volatile ptr %15, ptr %67, align 4
  %68 = getelementptr inbounds %struct.worker, ptr %9, i32 0, i32 7
  store ptr %0, ptr %68, align 4
  call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.worker_pool, ptr %69, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  call fastcc void @worker_enter_idle(ptr noundef nonnull %9)
  %73 = load ptr, ptr %36, align 8
  %74 = call i32 @wake_up_process(ptr noundef %73) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %75 = load i16, ptr %0, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %78

77:                                               ; preds = %33, %6
  call void @ida_free(ptr noundef %3, i32 noundef %4) #17
  call void @kfree(ptr noundef %9) #17
  br label %78

78:                                               ; preds = %77, %64, %1
  %79 = phi ptr [ null, %77 ], [ %9, %64 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret ptr %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @workqueue_online_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  store i32 0, ptr %2, align 4
  %3 = call ptr @idr_get_next(ptr noundef nonnull @worker_pool_idr, ptr noundef nonnull %2) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %103, label %5

5:                                                ; preds = %1
  %6 = lshr i32 %0, 5
  %7 = and i32 %0, 31
  %8 = shl nuw i32 1, %7
  br label %9

9:                                                ; preds = %98, %5
  %10 = phi ptr [ %3, %5 ], [ %101, %98 ]
  call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %11 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %67

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 18
  br label %20

20:                                               ; preds = %37, %18
  %21 = phi i32 [ %0, %18 ], [ %38, %37 ]
  %22 = phi ptr [ %16, %18 ], [ %35, %37 ]
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = load ptr, ptr %23, align 4
  call void @kthread_set_per_cpu(ptr noundef %24, i32 noundef %21) #17
  %25 = load ptr, ptr %23, align 4
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr inbounds %struct.workqueue_attrs, ptr %26, i32 0, i32 1
  %28 = call i32 @set_cpus_allowed_ptr(ptr noundef %25, ptr noundef %27) #17
  %29 = icmp slt i32 %28, 0
  %30 = load i1, ptr @rebind_workers.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %20
  store i1 true, ptr @rebind_workers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5051, i32 noundef 9, ptr noundef null) #17
  br label %34

34:                                               ; preds = %33, %20
  %35 = load ptr, ptr %22, align 4
  %36 = icmp eq ptr %35, %15
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %11, align 4
  br label %20

39:                                               ; preds = %34, %14
  call void @_raw_spin_lock_irq(ptr noundef nonnull %10) #17
  %40 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -5
  store i32 %42, ptr %40, align 4
  %43 = load ptr, ptr %15, align 4
  %44 = icmp eq ptr %43, %15
  br i1 %44, label %64, label %45

45:                                               ; preds = %39
  %46 = load i1, ptr @rebind_workers.__already_done.90, align 1
  br label %47

47:                                               ; preds = %58, %45
  %48 = phi i1 [ %59, %58 ], [ %46, %45 ]
  %49 = phi ptr [ %62, %58 ], [ %43, %45 ]
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 128
  %53 = icmp eq i32 %52, 0
  %54 = xor i1 %48, true
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %58, !prof !11

56:                                               ; preds = %47
  store i1 true, ptr @rebind_workers.__already_done.90, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5076, i32 noundef 9, ptr noundef null) #17
  %57 = load i1, ptr @rebind_workers.__already_done.90, align 1
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi i1 [ %57, %56 ], [ %48, %47 ]
  %60 = and i32 %51, -385
  %61 = or i32 %60, 256
  store volatile i32 %61, ptr %50, align 4
  %62 = load ptr, ptr %49, align 4
  %63 = icmp eq ptr %62, %15
  br i1 %63, label %64, label %47

64:                                               ; preds = %58, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %65 = load i16, ptr %10, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %98

67:                                               ; preds = %9
  %68 = icmp slt i32 %12, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 18
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.workqueue_attrs, ptr %71, i32 0, i32 1
  %73 = getelementptr i32, ptr %72, i32 %6
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, %8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %69
  %78 = load i32, ptr %72, align 4
  %79 = load i32, ptr @__cpu_online_mask, align 4
  %80 = and i32 %78, 65535
  %81 = and i32 %80, %79
  store i32 %81, ptr @restore_unbound_workers_cpumask.cpumask, align 4
  %82 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 15
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %98, label %85

85:                                               ; preds = %95, %77
  %86 = phi ptr [ %96, %95 ], [ %83, %77 ]
  %87 = getelementptr i8, ptr %86, i32 -8
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 @set_cpus_allowed_ptr(ptr noundef %88, ptr noundef nonnull @restore_unbound_workers_cpumask.cpumask) #17
  %90 = icmp slt i32 %89, 0
  %91 = load i1, ptr @restore_unbound_workers_cpumask.__already_done, align 1
  %92 = xor i1 %91, true
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %95, !prof !11

94:                                               ; preds = %85
  store i1 true, ptr @restore_unbound_workers_cpumask.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5110, i32 noundef 9, ptr noundef null) #17
  br label %95

95:                                               ; preds = %94, %85
  %96 = load ptr, ptr %86, align 4
  %97 = icmp eq ptr %96, %82
  br i1 %97, label %98, label %85

98:                                               ; preds = %95, %77, %69, %67, %64
  call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %99 = load i32, ptr %2, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %2, align 4
  %101 = call ptr @idr_get_next(ptr noundef nonnull @worker_pool_idr, ptr noundef nonnull %2) #17
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %9

103:                                              ; preds = %98, %1
  br label %104

104:                                              ; preds = %104, %103
  %105 = phi ptr [ %106, %104 ], [ @workqueues, %103 ]
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, @workqueues
  br i1 %107, label %108, label %104

108:                                              ; preds = %104
  call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @workqueue_offline_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #17
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5158, i32 noundef 9, ptr noundef null) #17
  br label %72

7:                                                ; preds = %1
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @cpu_worker_pools to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr [2 x %struct.worker_pool], ptr %11, i32 0, i32 2
  %13 = icmp ugt ptr %12, %11
  br i1 %13, label %14, label %66

14:                                               ; preds = %59, %7
  %15 = phi ptr [ %60, %59 ], [ %11, %7 ]
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  tail call void @_raw_spin_lock_irq(ptr noundef %15) #17
  %16 = getelementptr inbounds %struct.worker_pool, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %26, label %19

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %24, %19 ], [ %17, %14 ]
  %21 = getelementptr i8, ptr %20, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 128
  store i32 %23, ptr %21, align 4
  %24 = load ptr, ptr %20, align 4
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %19

26:                                               ; preds = %19, %14
  %27 = getelementptr inbounds %struct.worker_pool, ptr %15, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 4
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.worker_pool, ptr %15, i32 0, i32 6
  store volatile i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.worker_pool, ptr %15, i32 0, i32 10
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  %34 = icmp eq ptr %32, null
  %35 = or i1 %33, %34
  br i1 %35, label %40, label %36, !prof !11

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.worker, ptr %32, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @wake_up_process(ptr noundef %38) #17
  br label %40

40:                                               ; preds = %36, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %41 = load i16, ptr %15, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %43 = load ptr, ptr %16, align 4
  %44 = icmp eq ptr %43, %16
  br i1 %44, label %59, label %45

45:                                               ; preds = %56, %40
  %46 = phi ptr [ %57, %56 ], [ %43, %40 ]
  %47 = getelementptr i8, ptr %46, i32 -8
  %48 = load ptr, ptr %47, align 4
  tail call void @kthread_set_per_cpu(ptr noundef %48, i32 noundef -1) #17
  %49 = load ptr, ptr %47, align 4
  %50 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %49, ptr noundef nonnull @__cpu_possible_mask) #17
  %51 = icmp slt i32 %50, 0
  %52 = load i1, ptr @unbind_workers.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !11

55:                                               ; preds = %45
  store i1 true, ptr @unbind_workers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5022, i32 noundef 9, ptr noundef null) #17
  br label %56

56:                                               ; preds = %55, %45
  %57 = load ptr, ptr %46, align 4
  %58 = icmp eq ptr %57, %16
  br i1 %58, label %59, label %45

59:                                               ; preds = %56, %40
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %60 = getelementptr %struct.worker_pool, ptr %15, i32 1
  %61 = load i32, ptr %8, align 4
  %62 = add i32 %61, ptrtoint (ptr @cpu_worker_pools to i32)
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr [2 x %struct.worker_pool], ptr %63, i32 0, i32 2
  %65 = icmp ult ptr %60, %64
  br i1 %65, label %14, label %66

66:                                               ; preds = %59, %7
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  br label %67

67:                                               ; preds = %67, %66
  %68 = phi ptr [ @workqueues, %66 ], [ %69, %67 ]
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, @workqueues
  br i1 %70, label %71, label %67

71:                                               ; preds = %67
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  br label %72

72:                                               ; preds = %71, %6
  %73 = phi i32 [ -1, %6 ], [ 0, %71 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @work_on_cpu(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.work_for_cpu, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.work_for_cpu, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.work_for_cpu, ptr %4, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.work_for_cpu, ptr %4, i32 0, i32 3
  store i32 0, ptr %7, align 4
  store i32 -32, ptr %4, align 4
  %8 = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 2
  store ptr @work_for_cpu_fn, ptr %10, align 4
  %11 = load ptr, ptr @system_wq, align 4
  %12 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %13 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull %4) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  call fastcc void @__queue_work(i32 noundef %0, ptr noundef %11, ptr noundef nonnull %4) #17
  br label %16

16:                                               ; preds = %15, %3
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #17, !srcloc !26
  %17 = call fastcc zeroext i1 @__flush_work(ptr noundef nonnull %4, i1 noundef zeroext false) #17
  %18 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @work_for_cpu_fn(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.work_for_cpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.work_for_cpu, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %3(ptr noundef %5) #17
  %7 = getelementptr inbounds %struct.work_for_cpu, ptr %0, i32 0, i32 3
  store i32 %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @work_on_cpu_safe(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.work_for_cpu, align 4
  tail call void @cpus_read_lock() #17
  %5 = lshr i32 %0, 5
  %6 = getelementptr i32, ptr @__cpu_online_mask, i32 %5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %0, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #17
  %13 = getelementptr inbounds %struct.work_for_cpu, ptr %4, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.work_for_cpu, ptr %4, i32 0, i32 2
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.work_for_cpu, ptr %4, i32 0, i32 3
  store i32 0, ptr %15, align 4
  store i32 -32, ptr %4, align 4
  %16 = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 2
  store ptr @work_for_cpu_fn, ptr %18, align 4
  %19 = load ptr, ptr @system_wq, align 4
  %20 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %21 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull %4) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  call fastcc void @__queue_work(i32 noundef %0, ptr noundef %19, ptr noundef nonnull %4) #17
  br label %24

24:                                               ; preds = %23, %12
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #17, !srcloc !26
  %25 = call fastcc zeroext i1 @__flush_work(ptr noundef nonnull %4, i1 noundef zeroext false) #17
  %26 = load i32, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #17
  br label %27

27:                                               ; preds = %24, %3
  %28 = phi i32 [ %26, %24 ], [ -19, %3 ]
  call void @cpus_read_unlock() #17
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @freeze_workqueues_begin() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %1 = load i1, ptr @workqueue_freezing, align 1
  %2 = load i1, ptr @freeze_workqueues_begin.__already_done, align 1
  %3 = xor i1 %2, true
  %4 = select i1 %1, i1 %3, i1 false
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %0
  store i1 true, ptr @freeze_workqueues_begin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5252, i32 noundef 9, ptr noundef null) #17
  br label %6

6:                                                ; preds = %5, %0
  store i1 true, ptr @workqueue_freezing, align 1
  %7 = load ptr, ptr @workqueues, align 4
  %8 = icmp eq ptr %7, @workqueues
  br i1 %8, label %23, label %9

9:                                                ; preds = %20, %6
  %10 = phi ptr [ %21, %20 ], [ %7, %6 ]
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = getelementptr i8, ptr %10, i32 8
  tail call void @mutex_lock(ptr noundef %12) #17
  %13 = load volatile ptr, ptr %11, align 4
  %14 = icmp eq ptr %13, %11
  br i1 %14, label %20, label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %18, %15 ], [ %13, %9 ]
  %17 = getelementptr i8, ptr %16, i32 -100
  tail call fastcc void @pwq_adjust_max_active(ptr noundef %17)
  %18 = load volatile ptr, ptr %16, align 4
  %19 = icmp eq ptr %18, %11
  br i1 %19, label %20, label %15

20:                                               ; preds = %15, %9
  tail call void @mutex_unlock(ptr noundef %12) #17
  %21 = load ptr, ptr %10, align 4
  %22 = icmp eq ptr %21, @workqueues
  br i1 %22, label %23, label %9

23:                                               ; preds = %20, %6
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @freeze_workqueues_busy() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %1 = load i1, ptr @workqueue_freezing, align 1
  %2 = load i1, ptr @freeze_workqueues_busy.__already_done, align 1
  %3 = select i1 %1, i1 true, i1 %2
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %0
  store i1 true, ptr @freeze_workqueues_busy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5286, i32 noundef 9, ptr noundef null) #17
  br label %5

5:                                                ; preds = %4, %0
  %6 = load ptr, ptr @workqueues, align 4
  %7 = icmp eq ptr %6, @workqueues
  br i1 %7, label %37, label %8

8:                                                ; preds = %34, %5
  %9 = phi ptr [ %35, %34 ], [ %6, %5 ]
  %10 = getelementptr i8, ptr %9, i32 -8
  %11 = getelementptr i8, ptr %9, i32 184
  %12 = load i32, ptr %11, align 64
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %16

16:                                               ; preds = %29, %15
  %17 = phi ptr [ %10, %15 ], [ %18, %29 ]
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %10
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -16
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, 0
  %24 = load i1, ptr @freeze_workqueues_busy.__already_done.19, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %29, !prof !11

27:                                               ; preds = %20
  store i1 true, ptr @freeze_workqueues_busy.__already_done.19, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5297, i32 noundef 9, ptr noundef null) #17
  %28 = load i32, ptr %21, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %28, %27 ], [ %22, %20 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %16, label %32

32:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  br label %37

33:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  br label %34

34:                                               ; preds = %33, %8
  %35 = load ptr, ptr %9, align 4
  %36 = icmp eq ptr %35, @workqueues
  br i1 %36, label %37, label %8

37:                                               ; preds = %34, %32, %5
  %38 = phi i1 [ true, %32 ], [ false, %5 ], [ false, %34 ]
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  ret i1 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thaw_workqueues() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %1 = load i1, ptr @workqueue_freezing, align 1
  br i1 %1, label %2, label %19

2:                                                ; preds = %0
  store i1 false, ptr @workqueue_freezing, align 1
  %3 = load ptr, ptr @workqueues, align 4
  %4 = icmp eq ptr %3, @workqueues
  br i1 %4, label %19, label %5

5:                                                ; preds = %16, %2
  %6 = phi ptr [ %17, %16 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = getelementptr i8, ptr %6, i32 8
  tail call void @mutex_lock(ptr noundef %8) #17
  %9 = load volatile ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %16, label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %14, %11 ], [ %9, %5 ]
  %13 = getelementptr i8, ptr %12, i32 -100
  tail call fastcc void @pwq_adjust_max_active(ptr noundef %13)
  %14 = load volatile ptr, ptr %12, align 4
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %16, label %11

16:                                               ; preds = %11, %5
  tail call void @mutex_unlock(ptr noundef %8) #17
  %17 = load ptr, ptr %6, align 4
  %18 = icmp eq ptr %17, @workqueues
  br i1 %18, label %19, label %5

19:                                               ; preds = %16, %2, %0
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @workqueue_set_unbound_cpumask(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr @__cpu_possible_mask, align 4
  %5 = and i32 %3, 65535
  %6 = and i32 %5, %4
  store i32 %6, ptr %0, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %67, label %8

8:                                                ; preds = %1
  tail call void @cpus_read_lock() #17
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %9 = load i32, ptr %0, align 4
  %10 = load i32, ptr @wq_unbound_cpumask, align 4
  %11 = xor i32 %10, %9
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %8
  store i32 %9, ptr @wq_unbound_cpumask, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr %2, ptr %2, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %15, align 4
  %16 = load ptr, ptr @workqueues, align 4
  %17 = icmp eq ptr %16, @workqueues
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %65

19:                                               ; preds = %35, %14
  %20 = phi ptr [ %36, %35 ], [ %16, %14 ]
  %21 = getelementptr i8, ptr %20, i32 184
  %22 = load i32, ptr %21, align 64
  %23 = and i32 %22, 131074
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %20, i32 -8
  %27 = getelementptr i8, ptr %20, i32 80
  %28 = load ptr, ptr %27, align 8
  %29 = call fastcc ptr @apply_wqattrs_prepare(ptr noundef %26, ptr noundef %28) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %29, i32 0, i32 2
  %33 = load ptr, ptr %15, align 4
  store ptr %32, ptr %15, align 4
  store ptr %2, ptr %32, align 4
  %34 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %29, i32 0, i32 2, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %32, ptr %33, align 4
  br label %35

35:                                               ; preds = %31, %19
  %36 = load ptr, ptr %20, align 4
  %37 = icmp eq ptr %36, @workqueues
  br i1 %37, label %38, label %19

38:                                               ; preds = %35, %25
  %39 = phi i1 [ true, %35 ], [ false, %25 ]
  %40 = phi i1 [ false, %35 ], [ true, %25 ]
  %41 = phi i32 [ 0, %35 ], [ -12, %25 ]
  %42 = load ptr, ptr %2, align 8
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %63, label %44

44:                                               ; preds = %61, %38
  %45 = phi ptr [ %47, %61 ], [ %42, %38 ]
  %46 = getelementptr i8, ptr %45, i32 -8
  %47 = load ptr, ptr %45, align 4
  br i1 %39, label %48, label %49

48:                                               ; preds = %44
  call fastcc void @apply_wqattrs_commit(ptr noundef %46) #17
  br label %49

49:                                               ; preds = %48, %44
  %50 = icmp eq ptr %46, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %49
  %52 = getelementptr i8, ptr %45, i32 12
  %53 = load ptr, ptr %52, align 4
  call fastcc void @put_pwq_unlocked(ptr noundef %53) #17
  %54 = getelementptr i8, ptr %45, i32 8
  %55 = load ptr, ptr %54, align 4
  call fastcc void @put_pwq_unlocked(ptr noundef %55) #17
  %56 = getelementptr i8, ptr %45, i32 -4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  call void @kfree(ptr noundef nonnull %57) #17
  br label %60

60:                                               ; preds = %59, %51
  call void @kfree(ptr noundef nonnull %46) #17
  br label %61

61:                                               ; preds = %60, %49
  %62 = icmp eq ptr %47, %2
  br i1 %62, label %63, label %44

63:                                               ; preds = %61, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br i1 %40, label %64, label %65

64:                                               ; preds = %63
  store i32 %10, ptr @wq_unbound_cpumask, align 4
  br label %65

65:                                               ; preds = %64, %63, %18, %8
  %66 = phi i32 [ 0, %8 ], [ 0, %18 ], [ %41, %64 ], [ %41, %63 ]
  call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  call void @cpus_read_unlock() #17
  br label %67

67:                                               ; preds = %65, %1
  %68 = phi i32 [ -22, %1 ], [ %66, %65 ]
  ret i32 %68
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @wq_sysfs_init() #11 section ".init.text" {
  %1 = tail call i32 @subsys_virtual_register(ptr noundef nonnull @wq_subsys, ptr noundef null) #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @wq_subsys, i32 0, i32 2), align 4
  %5 = tail call i32 @device_create_file(ptr noundef %4, ptr noundef nonnull @wq_sysfs_cpumask_attr) #17
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ %1, %0 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wq_device_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @kfree(ptr noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @workqueue_init_early() local_unnamed_addr #11 section ".init.text" {
  %1 = tail call ptr @housekeeping_cpumask(i32 noundef 96) #17
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr @wq_unbound_cpumask, align 4
  %3 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.21, i32 noundef 256, i32 noundef 256, i32 noundef 262144, ptr noundef null) #17
  store ptr %3, ptr @pwq_cache, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %10, %0
  br label %58

8:                                                ; preds = %49
  %9 = load i32, ptr @nr_cpu_ids, align 4
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi i32 [ %9, %8 ], [ %15, %14 ]
  %12 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #19
  %13 = icmp ult i32 %12, %11
  br i1 %13, label %14, label %7

14:                                               ; preds = %10, %0
  %15 = phi i32 [ %11, %10 ], [ %5, %0 ]
  %16 = phi i32 [ %12, %10 ], [ %4, %0 ]
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, ptrtoint (ptr @cpu_worker_pools to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr [2 x %struct.worker_pool], ptr %20, i32 0, i32 2
  %22 = icmp ugt ptr %21, %20
  br i1 %22, label %23, label %10

23:                                               ; preds = %14
  %24 = and i32 %16, 31
  %25 = add nuw nsw i32 %24, 1
  %26 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %25
  %27 = lshr i32 %16, 5
  %28 = sub nsw i32 0, %27
  %29 = getelementptr i32, ptr %26, i32 %28
  br label %30

30:                                               ; preds = %49, %23
  %31 = phi i32 [ 0, %23 ], [ %51, %49 ]
  %32 = phi ptr [ %20, %23 ], [ %52, %49 ]
  %33 = tail call fastcc i32 @init_worker_pool(ptr noundef %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !10

35:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/workqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6025, 0\0A.popsection", ""() #17, !srcloc !53
  unreachable

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.worker_pool, ptr %32, i32 0, i32 1
  store i32 %16, ptr %37, align 4
  %38 = getelementptr inbounds %struct.worker_pool, ptr %32, i32 0, i32 18
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.workqueue_attrs, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %29, align 4
  store i32 %41, ptr %40, align 4
  %42 = getelementptr [2 x i32], ptr @__const.workqueue_init_early.std_nice, i32 0, i32 %31
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %38, align 4
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.worker_pool, ptr %32, i32 0, i32 2
  store i32 0, ptr %45, align 4
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %46 = tail call i32 @idr_alloc(ptr noundef nonnull @worker_pool_idr, ptr noundef %32, i32 noundef 0, i32 noundef 134217727, i32 noundef 3264) #17
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/workqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6033, 0\0A.popsection", ""() #17, !srcloc !54
  unreachable

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.worker_pool, ptr %32, i32 0, i32 3
  store i32 %46, ptr %50, align 4
  %51 = add i32 %31, 1
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  %52 = getelementptr %struct.worker_pool, ptr %32, i32 1
  %53 = load i32, ptr %17, align 4
  %54 = add i32 %53, ptrtoint (ptr @cpu_worker_pools to i32)
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr [2 x %struct.worker_pool], ptr %55, i32 0, i32 2
  %57 = icmp ult ptr %52, %56
  br i1 %57, label %30, label %8

58:                                               ; preds = %75, %7
  %59 = phi i1 [ false, %75 ], [ true, %7 ]
  %60 = phi i32 [ 1, %75 ], [ 0, %7 ]
  %61 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %62 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 12) #21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/workqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6042, 0\0A.popsection", ""() #17, !srcloc !55
  unreachable

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.workqueue_attrs, ptr %62, i32 0, i32 1
  %67 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %67, ptr %66, align 4
  %68 = getelementptr [2 x i32], ptr @__const.workqueue_init_early.std_nice, i32 0, i32 %60
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %62, align 8
  %70 = getelementptr [2 x ptr], ptr @unbound_std_wq_attrs, i32 0, i32 %60
  store ptr %62, ptr %70, align 4
  %71 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %72 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 12) #21
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/workqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6051, 0\0A.popsection", ""() #17, !srcloc !56
  unreachable

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.workqueue_attrs, ptr %72, i32 0, i32 1
  %77 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %77, ptr %76, align 4
  store i32 %69, ptr %72, align 8
  %78 = getelementptr inbounds %struct.workqueue_attrs, ptr %72, i32 0, i32 2
  store i8 1, ptr %78, align 8
  %79 = getelementptr [2 x ptr], ptr @ordered_wq_attrs, i32 0, i32 %60
  store ptr %72, ptr %79, align 4
  br i1 %59, label %58, label %80

80:                                               ; preds = %75
  %81 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0)
  store ptr %81, ptr @system_wq, align 4
  %82 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.23, i32 noundef 16, i32 noundef 0)
  store ptr %82, ptr @system_highpri_wq, align 4
  %83 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0)
  store ptr %83, ptr @system_long_wq, align 4
  %84 = load i32, ptr @__cpu_possible_mask, align 4
  %85 = and i32 %84, 65535
  %86 = tail call i32 @__sw_hweight32(i32 noundef %85) #17
  %87 = shl i32 %86, 2
  %88 = tail call i32 @llvm.smax.i32(i32 %87, i32 512)
  %89 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef %88)
  store ptr %89, ptr @system_unbound_wq, align 4
  %90 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef 0)
  store ptr %90, ptr @system_freezable_wq, align 4
  %91 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.27, i32 noundef 128, i32 noundef 0)
  store ptr %91, ptr @system_power_efficient_wq, align 4
  %92 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.28, i32 noundef 132, i32 noundef 0)
  store ptr %92, ptr @system_freezable_power_efficient_wq, align 4
  %93 = load ptr, ptr @system_wq, align 4
  %94 = icmp eq ptr %93, null
  %95 = load ptr, ptr @system_highpri_wq, align 4
  %96 = icmp eq ptr %95, null
  %97 = select i1 %94, i1 true, i1 %96
  %98 = load ptr, ptr @system_long_wq, align 4
  %99 = icmp eq ptr %98, null
  %100 = select i1 %97, i1 true, i1 %99
  %101 = load ptr, ptr @system_unbound_wq, align 4
  %102 = icmp eq ptr %101, null
  %103 = select i1 %100, i1 true, i1 %102
  %104 = load ptr, ptr @system_freezable_wq, align 4
  %105 = icmp eq ptr %104, null
  %106 = select i1 %103, i1 true, i1 %105
  %107 = load ptr, ptr @system_power_efficient_wq, align 4
  %108 = icmp eq ptr %107, null
  %109 = select i1 %106, i1 true, i1 %108
  %110 = icmp eq ptr %92, null
  %111 = select i1 %109, i1 true, i1 %110
  br i1 %111, label %112, label %113, !prof !11

112:                                              ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/workqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6072, 0\0A.popsection", ""() #17, !srcloc !57
  unreachable

113:                                              ; preds = %80
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_worker_pool(ptr noundef %0) unnamed_addr #0 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 3
  store i32 -1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 1
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 2
  store i32 -1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 4
  store i32 %7, ptr %5, align 4
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 7
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 7, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 10
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 10, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 13
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %14, i8 0, i32 256, i1 false) #17
  %15 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 11
  tail call void @init_timer_key(ptr noundef %15, ptr noundef nonnull @idle_worker_timeout, i32 noundef 524288, ptr noundef null, ptr noundef null) #17
  %16 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %16, ptr noundef nonnull @pool_mayday_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #17
  %17 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 15
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 15, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 17
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i32 33554437, ptr %20, align 4
  %21 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 17, i32 0, i32 2
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 19
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 19, i32 1
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 20
  store i32 1, ptr %24, align 4
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 12) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.workqueue_attrs, ptr %26, i32 0, i32 1
  %30 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %30, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %1
  %32 = phi i32 [ -12, %1 ], [ 0, %28 ]
  %33 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 18
  store ptr %26, ptr %33, align 4
  ret i32 %32
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @workqueue_init() local_unnamed_addr #11 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %10, label %7

4:                                                ; preds = %18, %10
  %5 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #19
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %10, label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @workqueues, align 4
  %9 = icmp eq ptr %8, @workqueues
  br i1 %9, label %37, label %27

10:                                               ; preds = %4, %0
  %11 = phi i32 [ %5, %4 ], [ %2, %0 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @cpu_worker_pools to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr [2 x %struct.worker_pool], ptr %15, i32 0, i32 2
  %17 = icmp ugt ptr %16, %15
  br i1 %17, label %18, label %4

18:                                               ; preds = %18, %10
  %19 = phi ptr [ %21, %18 ], [ %15, %10 ]
  %20 = getelementptr inbounds %struct.worker_pool, ptr %19, i32 0, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr %struct.worker_pool, ptr %19, i32 1
  %22 = load i32, ptr %12, align 4
  %23 = add i32 %22, ptrtoint (ptr @cpu_worker_pools to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr [2 x %struct.worker_pool], ptr %24, i32 0, i32 2
  %26 = icmp ult ptr %21, %25
  br i1 %26, label %18, label %4

27:                                               ; preds = %34, %7
  %28 = phi ptr [ %35, %34 ], [ %8, %7 ]
  %29 = getelementptr i8, ptr %28, i32 -8
  %30 = tail call fastcc i32 @init_rescuer(ptr noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %28, i32 92
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6113, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %33) #17
  br label %34

34:                                               ; preds = %32, %27
  %35 = load ptr, ptr %28, align 4
  %36 = icmp eq ptr %35, @workqueues
  br i1 %36, label %37, label %27

37:                                               ; preds = %34, %7
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  %38 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %44, %37
  br label %72

42:                                               ; preds = %57
  %43 = load i32, ptr @nr_cpu_ids, align 4
  br label %44

44:                                               ; preds = %48, %42
  %45 = phi i32 [ %43, %42 ], [ %49, %48 ]
  %46 = tail call i32 @cpumask_next(i32 noundef %50, ptr noundef nonnull @__cpu_online_mask) #19
  %47 = icmp ult i32 %46, %45
  br i1 %47, label %48, label %41

48:                                               ; preds = %44, %37
  %49 = phi i32 [ %45, %44 ], [ %39, %37 ]
  %50 = phi i32 [ %46, %44 ], [ %38, %37 ]
  %51 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, ptrtoint (ptr @cpu_worker_pools to i32)
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr [2 x %struct.worker_pool], ptr %54, i32 0, i32 2
  %56 = icmp ugt ptr %55, %54
  br i1 %56, label %64, label %44

57:                                               ; preds = %64
  %58 = getelementptr %struct.worker_pool, ptr %65, i32 1
  %59 = load i32, ptr %51, align 4
  %60 = add i32 %59, ptrtoint (ptr @cpu_worker_pools to i32)
  %61 = inttoptr i32 %60 to ptr
  %62 = getelementptr [2 x %struct.worker_pool], ptr %61, i32 0, i32 2
  %63 = icmp ult ptr %58, %62
  br i1 %63, label %64, label %42

64:                                               ; preds = %57, %48
  %65 = phi ptr [ %58, %57 ], [ %54, %48 ]
  %66 = getelementptr inbounds %struct.worker_pool, ptr %65, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, -5
  store i32 %68, ptr %66, align 4
  %69 = tail call fastcc ptr @create_worker(ptr noundef %65)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %57, !prof !11

71:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/workqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6122, 0\0A.popsection", ""() #17, !srcloc !58
  unreachable

72:                                               ; preds = %92, %41
  %73 = phi i32 [ %93, %92 ], [ 0, %41 ]
  %74 = getelementptr [64 x %struct.hlist_head], ptr @unbound_pool_hash, i32 0, i32 %73
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  %77 = getelementptr i8, ptr %75, i32 -380
  %78 = icmp eq ptr %77, null
  %79 = or i1 %76, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %85, %72
  %81 = phi ptr [ %89, %85 ], [ %77, %72 ]
  %82 = tail call fastcc ptr @create_worker(ptr noundef nonnull %81)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85, !prof !11

84:                                               ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/workqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6127, 0\0A.popsection", ""() #17, !srcloc !59
  unreachable

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.worker_pool, ptr %81, i32 0, i32 19
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  %89 = getelementptr i8, ptr %87, i32 -380
  %90 = icmp eq ptr %89, null
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %80

92:                                               ; preds = %85, %72
  %93 = add nuw nsw i32 %73, 1
  %94 = icmp eq i32 %93, 64
  br i1 %94, label %95, label %72

95:                                               ; preds = %92
  store i1 true, ptr @wq_online, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_workqueue_queue_work(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  %18 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_workqueue_queue_work, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %11, ptr noundef %13, ptr noundef %17, i32 noundef %19, i32 noundef %21) #17
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #17
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_workqueue_activate_work(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_workqueue_activate_work, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %11) #17
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #17
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_workqueue_execute_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_start, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_start, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %11, ptr noundef %13) #17
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #17
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_workqueue_execute_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_end, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_workqueue_execute_end, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %11, ptr noundef %13) #17
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #17
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_chained_work(ptr noundef readnone %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #17
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = load volatile i32, ptr %3, align 4
  %7 = and i32 %6, 983040
  %8 = or i32 %7, %5
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 256
  %11 = or i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @kthread_data(ptr noundef %2) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.worker, ptr %19, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.pool_workqueue, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %0
  br label %27

27:                                               ; preds = %21, %18, %13, %1
  %28 = phi i1 [ false, %18 ], [ %26, %21 ], [ false, %13 ], [ false, %1 ]
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @insert_work(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 256
  %6 = load volatile i32, ptr %1, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @set_work_data.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %4
  store i1 true, ptr @set_work_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #17
  br label %13

13:                                               ; preds = %12, %4
  %14 = ptrtoint ptr %0 to i32
  %15 = or i32 %14, %3
  %16 = or i32 %15, 5
  store volatile i32 %16, ptr %1, align 4
  %17 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %17, ptr %18, align 4
  store ptr %2, ptr %17, align 4
  %20 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %17, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 16
  %23 = icmp slt i32 %22, 1
  %24 = load i1, ptr @get_pwq.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %29, !prof !11

27:                                               ; preds = %13
  store i1 true, ptr @get_pwq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1123, i32 noundef 9, ptr noundef null) #17
  %28 = load i32, ptr %21, align 16
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi i32 [ %28, %27 ], [ %22, %13 ]
  %31 = add i32 %30, 1
  store i32 %31, ptr %21, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !60
  %32 = getelementptr inbounds %struct.worker_pool, ptr %5, i32 0, i32 6
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.worker_pool, ptr %5, i32 0, i32 10
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  %39 = icmp eq ptr %37, null
  %40 = or i1 %38, %39
  br i1 %40, label %45, label %41, !prof !11

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.worker, ptr %37, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @wake_up_process(ptr noundef %43) #17
  br label %45

45:                                               ; preds = %41, %35, %29
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer_on(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pwq_activate_inactive_work(ptr noundef %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %2, -256
  %6 = inttoptr i32 %5 to ptr
  %7 = select i1 %4, ptr null, ptr %6
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_activate_work, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #17
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_activate_work, i32 0, i32 7), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %29, %24 ], [ %22, %21 ]
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tracepoint_func, ptr %25, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %26(ptr noundef %28, ptr noundef %0) #17
  %29 = getelementptr %struct.tracepoint_func, ptr %25, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24

32:                                               ; preds = %24, %21
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !36
  br label %33

33:                                               ; preds = %32, %10, %1
  %34 = load ptr, ptr %7, align 256
  %35 = getelementptr inbounds %struct.worker_pool, ptr %34, i32 0, i32 7
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = getelementptr inbounds %struct.worker_pool, ptr %34, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %7, align 256
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi ptr [ %41, %38 ], [ %34, %33 ]
  %44 = getelementptr inbounds %struct.worker_pool, ptr %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.worker_pool, ptr %43, i32 0, i32 7, i32 1
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %0, %42 ], [ %50, %46 ]
  %48 = getelementptr inbounds %struct.work_struct, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 -4
  %51 = getelementptr inbounds %struct.work_struct, ptr %47, i32 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %49, ptr %52, align 4
  %54 = load ptr, ptr %45, align 4
  store ptr %48, ptr %45, align 4
  store ptr %44, ptr %48, align 4
  store ptr %54, ptr %51, align 4
  store volatile ptr %48, ptr %54, align 4
  %55 = load i32, ptr %47, align 4
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %46

58:                                               ; preds = %46
  %59 = load i32, ptr %0, align 4
  %60 = and i32 %59, -3
  store i32 %60, ptr %0, align 4
  %61 = getelementptr inbounds %struct.pool_workqueue, ptr %7, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pwq_dec_nr_in_flight(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = lshr i32 %1, 4
  %4 = and i32 %3, 15
  %5 = and i32 %1, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 8
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 8
  %17 = icmp slt i32 %10, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %12, i32 -4
  tail call fastcc void @pwq_activate_inactive_work(ptr noundef %19) #17
  br label %20

20:                                               ; preds = %18, %14, %7, %2
  %21 = getelementptr %struct.pool_workqueue, ptr %0, i32 0, i32 5, i32 %4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %4
  br i1 %26, label %27, label %41, !prof !11

27:                                               ; preds = %20
  %28 = icmp eq i32 %23, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  store i32 -1, ptr %24, align 4
  %30 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.workqueue_struct, ptr %31, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #17, !srcloc !14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #17, !srcloc !23
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load ptr, ptr %30, align 4
  %38 = getelementptr inbounds %struct.workqueue_struct, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr inbounds %struct.wq_flusher, ptr %39, i32 0, i32 2
  tail call void @complete(ptr noundef %40) #17
  br label %41

41:                                               ; preds = %36, %29, %27, %20
  %42 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 16
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60, !prof !11

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.workqueue_struct, ptr %48, i32 0, i32 19
  %50 = load i32, ptr %49, align 64
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  %53 = load i1, ptr @put_pwq.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !11

56:                                               ; preds = %46
  store i1 true, ptr @put_pwq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 9, ptr noundef null) #17
  br label %57

57:                                               ; preds = %56, %46
  br i1 %52, label %60, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.pool_workqueue, ptr %0, i32 0, i32 11
  tail call fastcc void @schedule_work(ptr noundef %59) #17
  br label %60

60:                                               ; preds = %58, %57, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wq_barrier_func(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wq_barrier, ptr %0, i32 0, i32 1
  tail call void @complete(ptr noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cwt_wakefn(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.cwt_wait, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @autoremove_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #17
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @apply_wqattrs_prepare(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #21
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 12) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.workqueue_attrs, ptr %6, i32 0, i32 1
  %10 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %10, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 12) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %180, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.workqueue_attrs, ptr %13, i32 0, i32 1
  %17 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %17, ptr %16, align 4
  %18 = icmp ne ptr %4, null
  %19 = icmp ne ptr %6, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %179

21:                                               ; preds = %15
  %22 = load i32, ptr %1, align 4
  store i32 %22, ptr %6, align 8
  %23 = getelementptr inbounds %struct.workqueue_attrs, ptr %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.workqueue_attrs, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.workqueue_attrs, ptr %1, i32 0, i32 2
  %27 = load i8, ptr %26, align 4, !range !28
  %28 = getelementptr inbounds %struct.workqueue_attrs, ptr %6, i32 0, i32 2
  store i8 %27, ptr %28, align 8
  %29 = load i32, ptr @wq_unbound_cpumask, align 4
  %30 = and i32 %25, 65535
  %31 = and i32 %30, %29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %21
  %35 = phi i32 [ %29, %33 ], [ %31, %21 ]
  store i32 %35, ptr %23, align 4
  store i32 %22, ptr %13, align 8
  store i32 %35, ptr %16, align 4
  %36 = getelementptr inbounds %struct.workqueue_attrs, ptr %13, i32 0, i32 2
  store i8 %27, ptr %36, align 8
  %37 = add i32 %22, -559038733
  %38 = xor i32 %37, -1874655147
  %39 = add i32 %38, -407022722
  %40 = xor i32 %39, -559038733
  %41 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 25) #17
  %42 = sub i32 %40, %41
  %43 = xor i32 %42, -1874655147
  %44 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 16) #17
  %45 = sub i32 %43, %44
  %46 = xor i32 %45, %39
  %47 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 4) #17
  %48 = sub i32 %46, %47
  %49 = xor i32 %48, %42
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 14) #17
  %51 = sub i32 %49, %50
  %52 = xor i32 %51, %45
  %53 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 24) #17
  %54 = sub i32 %52, %53
  %55 = add i32 %54, -559038733
  %56 = add i32 %35, %55
  %57 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 14) #17
  %58 = sub i32 0, %57
  %59 = xor i32 %56, %58
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 11) #17
  %61 = sub i32 %59, %60
  %62 = xor i32 %61, %55
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 25) #17
  %64 = sub i32 %62, %63
  %65 = xor i32 %64, %58
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 16) #17
  %67 = sub i32 %65, %66
  %68 = xor i32 %67, %61
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 4) #17
  %70 = sub i32 %68, %69
  %71 = xor i32 %70, %64
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 14) #17
  %73 = sub i32 %71, %72
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 24) #17
  %75 = xor i32 %73, %67
  %76 = sub i32 %75, %74
  %77 = mul i32 %76, 1640531527
  %78 = lshr i32 %77, 26
  %79 = getelementptr [64 x %struct.hlist_head], ptr @unbound_pool_hash, i32 0, i32 %78
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  %82 = getelementptr i8, ptr %80, i32 -380
  %83 = icmp eq ptr %82, null
  %84 = or i1 %81, %83
  br i1 %84, label %108, label %85

85:                                               ; preds = %101, %34
  %86 = phi ptr [ %105, %101 ], [ %82, %34 ]
  %87 = getelementptr inbounds %struct.worker_pool, ptr %86, i32 0, i32 18
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, %22
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.workqueue_attrs, ptr %88, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = xor i32 %35, %93
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.worker_pool, ptr %86, i32 0, i32 20
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 4
  br label %141

101:                                              ; preds = %91, %85
  %102 = getelementptr inbounds %struct.worker_pool, ptr %86, i32 0, i32 19
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  %105 = getelementptr i8, ptr %103, i32 -380
  %106 = icmp eq ptr %105, null
  %107 = or i1 %104, %106
  br i1 %107, label %108, label %85

108:                                              ; preds = %101, %34
  %109 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %110 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %109, i32 noundef 3520, i32 noundef 400) #21
  %111 = icmp eq ptr %110, null
  br i1 %111, label %177, label %112

112:                                              ; preds = %108
  %113 = tail call fastcc i32 @init_worker_pool(ptr noundef nonnull %110) #17
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %175, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.worker_pool, ptr %110, i32 0, i32 18
  %117 = load ptr, ptr %116, align 8
  store i32 %22, ptr %117, align 4
  %118 = getelementptr inbounds %struct.workqueue_attrs, ptr %117, i32 0, i32 1
  %119 = load i32, ptr %23, align 4
  store i32 %119, ptr %118, align 4
  %120 = load i8, ptr %28, align 8, !range !28
  %121 = getelementptr inbounds %struct.workqueue_attrs, ptr %117, i32 0, i32 2
  store i8 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.worker_pool, ptr %110, i32 0, i32 2
  store i32 -1, ptr %122, align 8
  %123 = load ptr, ptr %116, align 8
  %124 = getelementptr inbounds %struct.workqueue_attrs, ptr %123, i32 0, i32 2
  store i8 0, ptr %124, align 4
  %125 = tail call i32 @idr_alloc(ptr noundef nonnull @worker_pool_idr, ptr noundef nonnull %110, i32 noundef 0, i32 noundef 134217727, i32 noundef 3264) #17
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %127, label %175

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.worker_pool, ptr %110, i32 0, i32 3
  store i32 %125, ptr %128, align 4
  %129 = load i1, ptr @wq_online, align 1
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = tail call fastcc ptr @create_worker(ptr noundef nonnull %110) #17
  %132 = icmp eq ptr %131, null
  br i1 %132, label %175, label %133

133:                                              ; preds = %130, %127
  %134 = getelementptr inbounds %struct.worker_pool, ptr %110, i32 0, i32 19
  %135 = load ptr, ptr %79, align 4
  store volatile ptr %135, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.hlist_node, ptr %135, i32 0, i32 1
  store volatile ptr %134, ptr %138, align 4
  br label %139

139:                                              ; preds = %137, %133
  store volatile ptr %134, ptr %79, align 4
  %140 = getelementptr inbounds %struct.worker_pool, ptr %110, i32 0, i32 19, i32 1
  store volatile ptr %79, ptr %140, align 8
  br label %141

141:                                              ; preds = %139, %97
  %142 = phi ptr [ %86, %97 ], [ %110, %139 ]
  %143 = load ptr, ptr @pwq_cache, align 4
  %144 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %143, i32 noundef 3264) #17
  %145 = icmp eq ptr %144, null
  br i1 %145, label %175, label %146

146:                                              ; preds = %141
  %147 = ptrtoint ptr %144 to i32
  %148 = and i32 %147, 248
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150, !prof !10

150:                                              ; preds = %146
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/workqueue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3810, 0\0A.popsection", ""() #17, !srcloc !45
  unreachable

151:                                              ; preds = %146
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 256 dereferenceable(256) %144, i8 0, i32 256, i1 false) #17
  store ptr %142, ptr %144, align 256
  %152 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 1
  store ptr %0, ptr %152, align 4
  %153 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 3
  store i32 -1, ptr %153, align 4
  %154 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 4
  %155 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 8
  store volatile ptr %155, ptr %155, align 4
  %156 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 8, i32 1
  store ptr %155, ptr %156, align 8
  %157 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 9
  store volatile ptr %157, ptr %157, align 4
  %158 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 9, i32 1
  store ptr %157, ptr %158, align 8
  %159 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 10
  store volatile ptr %159, ptr %159, align 4
  %160 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 10, i32 1
  store ptr %159, ptr %160, align 8
  %161 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 11
  store i32 -32, ptr %161, align 4
  %162 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 11, i32 1
  store volatile ptr %162, ptr %162, align 8
  %163 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 11, i32 1, i32 1
  store ptr %162, ptr %163, align 4
  %164 = getelementptr inbounds %struct.pool_workqueue, ptr %144, i32 0, i32 11, i32 2
  store ptr @pwq_unbound_release_workfn, ptr %164, align 8
  %165 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %4, i32 0, i32 3
  store ptr %144, ptr %165, align 8
  %166 = load i32, ptr %23, align 4
  store i32 %166, ptr %16, align 4
  store i32 2, ptr %154, align 16
  %167 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %4, i32 0, i32 4
  store ptr %144, ptr %167, align 4
  %168 = load i32, ptr %1, align 4
  store i32 %168, ptr %6, align 8
  %169 = load i32, ptr %24, align 4
  %170 = load i8, ptr %26, align 4, !range !28
  store i8 %170, ptr %28, align 8
  %171 = load i32, ptr @__cpu_possible_mask, align 4
  %172 = and i32 %169, 65535
  %173 = and i32 %172, %171
  store i32 %173, ptr %23, align 4
  %174 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %4, i32 0, i32 1
  store ptr %6, ptr %174, align 4
  store ptr %0, ptr %4, align 8
  br label %193

175:                                              ; preds = %141, %130, %115, %112
  %176 = phi ptr [ %110, %130 ], [ %110, %115 ], [ %110, %112 ], [ %142, %141 ]
  tail call fastcc void @put_unbound_pool(ptr noundef nonnull %176) #17
  br label %177

177:                                              ; preds = %175, %108
  %178 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %4, i32 0, i32 3
  store ptr null, ptr %178, align 8
  br label %179

179:                                              ; preds = %177, %15
  tail call void @kfree(ptr noundef nonnull %13) #17
  br label %180

180:                                              ; preds = %179, %11
  br i1 %7, label %182, label %181

181:                                              ; preds = %180
  tail call void @kfree(ptr noundef nonnull %6) #17
  br label %182

182:                                              ; preds = %181, %180
  %183 = icmp eq ptr %4, null
  br i1 %183, label %196, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %4, i32 0, i32 4
  %186 = load ptr, ptr %185, align 4
  tail call fastcc void @put_pwq_unlocked(ptr noundef %186) #17
  %187 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %4, i32 0, i32 3
  %188 = load ptr, ptr %187, align 8
  tail call fastcc void @put_pwq_unlocked(ptr noundef %188) #17
  %189 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %4, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %184
  tail call void @kfree(ptr noundef nonnull %190) #17
  br label %193

193:                                              ; preds = %192, %184, %151
  %194 = phi ptr [ %13, %151 ], [ %4, %192 ], [ %4, %184 ]
  %195 = phi ptr [ %4, %151 ], [ null, %192 ], [ null, %184 ]
  tail call void @kfree(ptr noundef nonnull %194) #17
  br label %196

196:                                              ; preds = %193, %182
  %197 = phi ptr [ null, %182 ], [ %195, %193 ]
  ret ptr %197
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @apply_wqattrs_commit(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.workqueue_struct, ptr %2, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #17
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.workqueue_struct, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.workqueue_attrs, ptr %6, i32 0, i32 1
  %11 = getelementptr inbounds %struct.workqueue_attrs, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.workqueue_attrs, ptr %8, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !28
  %15 = getelementptr inbounds %struct.workqueue_attrs, ptr %6, i32 0, i32 2
  store i8 %14, ptr %15, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pool_workqueue, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pool_workqueue, ptr %18, i32 0, i32 9
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.workqueue_struct, ptr %20, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pool_workqueue, ptr %18, i32 0, i32 2
  store i32 %26, ptr %27, align 8
  tail call fastcc void @pwq_adjust_max_active(ptr noundef %18) #17
  %28 = load ptr, ptr %20, align 4
  store ptr %28, ptr %21, align 4
  %29 = getelementptr inbounds %struct.pool_workqueue, ptr %18, i32 0, i32 9, i32 1
  store ptr %20, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  store volatile ptr %21, ptr %20, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %21, ptr %30, align 4
  br label %31

31:                                               ; preds = %24, %1
  %32 = getelementptr inbounds %struct.workqueue_struct, ptr %16, i32 0, i32 21
  %33 = load volatile ptr, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !61
  store volatile ptr %18, ptr %32, align 4
  store ptr %33, ptr %17, align 4
  %34 = getelementptr inbounds %struct.apply_wqattrs_ctx, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pool_workqueue, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.pool_workqueue, ptr %35, i32 0, i32 9
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.workqueue_struct, ptr %37, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.pool_workqueue, ptr %35, i32 0, i32 2
  store i32 %43, ptr %44, align 8
  tail call fastcc void @pwq_adjust_max_active(ptr noundef %35) #17
  %45 = load ptr, ptr %37, align 4
  store ptr %45, ptr %38, align 4
  %46 = getelementptr inbounds %struct.pool_workqueue, ptr %35, i32 0, i32 9, i32 1
  store ptr %37, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  store volatile ptr %38, ptr %37, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %38, ptr %47, align 4
  %48 = load ptr, ptr %34, align 4
  br label %49

49:                                               ; preds = %41, %31
  %50 = phi ptr [ %35, %31 ], [ %48, %41 ]
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.workqueue_struct, ptr %51, i32 0, i32 14
  %53 = load ptr, ptr %52, align 4
  store ptr %50, ptr %52, align 4
  store ptr %53, ptr %34, align 4
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.workqueue_struct, ptr %54, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %55) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_unbound_pool(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %3 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1
  store i64 0, ptr %2, align 8
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %91

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3588, i32 noundef 9, ptr noundef null) #17
  br label %91

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 7
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %19, label %18, !prof !10

18:                                               ; preds = %14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3589, i32 noundef 9, ptr noundef null) #17
  br label %91

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call ptr @idr_remove(ptr noundef nonnull @worker_pool_idr, i32 noundef %21) #17
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 19
  %27 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 19, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 4
  store volatile ptr %31, ptr %28, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hlist_node, ptr %31, i32 0, i32 1
  store volatile ptr %28, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %30
  store ptr null, ptr %26, align 4
  store ptr null, ptr %27, align 4
  br label %36

36:                                               ; preds = %35, %25
  %37 = tail call ptr @llvm.thread.pointer() #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !62
  store volatile ptr %37, ptr @manager_wait, align 4
  %38 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  store volatile i32 2, ptr %38, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !63
  call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %39 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %43, %36
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %44 = load i16, ptr %0, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  call void @schedule() #17
  store volatile i32 2, ptr %38, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !63
  call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %46 = load i32, ptr %39, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %43

49:                                               ; preds = %43, %36
  store volatile ptr null, ptr @manager_wait, align 4
  store volatile i32 0, ptr %38, align 8
  %50 = load i32, ptr %39, align 4
  %51 = or i32 %50, 1
  store i32 %51, ptr %39, align 4
  %52 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 10
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  %55 = icmp eq ptr %53, null
  %56 = or i1 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %57, %49
  %58 = phi ptr [ %59, %57 ], [ %53, %49 ]
  call fastcc void @destroy_worker(ptr noundef nonnull %58)
  %59 = load volatile ptr, ptr %52, align 4
  %60 = icmp eq ptr %59, %52
  %61 = icmp eq ptr %59, null
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %57

63:                                               ; preds = %57, %49
  %64 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 9
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71, !prof !10

71:                                               ; preds = %67, %63
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3610, i32 noundef 9, ptr noundef null) #17
  br label %72

72:                                               ; preds = %71, %67
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %73 = load i16, ptr %0, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %75 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 15
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 16
  store ptr %2, ptr %79, align 4
  br label %80

80:                                               ; preds = %78, %72
  call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %81 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 16
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void @wait_for_completion(ptr noundef nonnull %82) #17
  br label %85

85:                                               ; preds = %84, %80
  %86 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 11
  %87 = call i32 @del_timer_sync(ptr noundef %86) #17
  %88 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 12
  %89 = call i32 @del_timer_sync(ptr noundef %88) #17
  %90 = getelementptr inbounds %struct.worker_pool, ptr %0, i32 0, i32 21
  call void @call_rcu(ptr noundef %90, ptr noundef nonnull @rcu_free_pool) #17
  br label %91

91:                                               ; preds = %85, %18, %13, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @destroy_worker(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2010, i32 noundef 9, ptr noundef null) #17
  br label %35

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 5
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2011, i32 noundef 9, ptr noundef null) #17
  br label %35

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !11

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2012, i32 noundef 9, ptr noundef null) #17
  br label %35

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %26, align 4
  %30 = load i32, ptr %14, align 4
  %31 = or i32 %30, 2
  store i32 %31, ptr %14, align 4
  %32 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @wake_up_process(ptr noundef %33) #17
  br label %35

35:                                               ; preds = %19, %18, %12, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_free_pool(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -28
  tail call void @ida_destroy(ptr noundef %2) #17
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %4) #17
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr i8, ptr %0, i32 -392
  tail call void @kfree(ptr noundef %8) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pwq_unbound_release_workfn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -116
  %3 = getelementptr i8, ptr %0, i32 -112
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 256
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.workqueue_struct, ptr %4, i32 0, i32 19
  %11 = load i32, ptr %10, align 64
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @pwq_unbound_release_workfn.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %9
  store i1 true, ptr @pwq_unbound_release_workfn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3726, i32 noundef 9, ptr noundef null) #17
  br label %18

18:                                               ; preds = %17, %9
  br i1 %13, label %32, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.workqueue_struct, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %20) #17
  %21 = getelementptr i8, ptr %0, i32 -12
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  %25 = load volatile ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, %4
  tail call void @mutex_unlock(ptr noundef %20) #17
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  tail call fastcc void @put_unbound_pool(ptr noundef %5)
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  %27 = getelementptr i8, ptr %0, i32 16
  tail call void @call_rcu(ptr noundef %27, ptr noundef nonnull @rcu_free_pwq) #17
  br i1 %26, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.workqueue_struct, ptr %4, i32 0, i32 17
  tail call void @call_rcu(ptr noundef %29, ptr noundef nonnull @rcu_free_wq) #17
  br label %32

30:                                               ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  tail call fastcc void @put_unbound_pool(ptr noundef %5)
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  %31 = getelementptr i8, ptr %0, i32 16
  tail call void @call_rcu(ptr noundef %31, ptr noundef nonnull @rcu_free_pwq) #17
  br label %32

32:                                               ; preds = %30, %28, %19, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_free_pwq(ptr noundef %0) #0 {
  %2 = load ptr, ptr @pwq_cache, align 4
  %3 = getelementptr i8, ptr %0, i32 -132
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rescuer_thread(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 5
  %5 = tail call ptr @llvm.thread.pointer() #17
  tail call void @set_user_nice(ptr noundef %5, i32 noundef -20) #17
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 32
  store i32 %8, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %9 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.workqueue_struct, ptr %3, i32 0, i32 9
  %11 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 10
  %12 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 8
  %14 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 8, i32 1
  %15 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 7
  %16 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 5, i32 1
  %17 = getelementptr inbounds %struct.workqueue_struct, ptr %3, i32 0, i32 10
  %18 = getelementptr inbounds %struct.workqueue_struct, ptr %3, i32 0, i32 9, i32 1
  br label %19

19:                                               ; preds = %230, %1
  store volatile i32 1026, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !64
  %20 = tail call zeroext i1 @kthread_should_stop() #17
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @wq_mayday_lock) #17
  %21 = load volatile ptr, ptr %10, align 4
  %22 = icmp eq ptr %21, %10
  br i1 %22, label %216, label %23

23:                                               ; preds = %213, %19
  %24 = phi ptr [ %214, %213 ], [ %21, %19 ]
  %25 = getelementptr i8, ptr %24, i32 -108
  %26 = load ptr, ptr %25, align 256
  store volatile i32 0, ptr %9, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store volatile ptr %24, ptr %24, align 4
  store ptr %24, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %31 = load i16, ptr @wq_mayday_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @wq_mayday_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %33 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, ptr %11, align 4
  %39 = or i32 %38, 128
  store i32 %39, ptr %11, align 4
  br label %44

40:                                               ; preds = %23
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  tail call void @kthread_set_per_cpu(ptr noundef %41, i32 noundef %43) #17
  br label %44

44:                                               ; preds = %40, %37
  %45 = load ptr, ptr %2, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %12, align 4
  %49 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 18
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.workqueue_attrs, ptr %50, i32 0, i32 1
  %52 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %48, ptr noundef %51) #17
  br label %53

53:                                               ; preds = %47, %44
  %54 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 15
  %55 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 15, i32 1
  %56 = load ptr, ptr %55, align 4
  store ptr %13, ptr %55, align 4
  store ptr %54, ptr %13, align 4
  store ptr %56, ptr %14, align 4
  store volatile ptr %13, ptr %56, align 4
  store ptr %26, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  tail call void @_raw_spin_lock_irq(ptr noundef %26) #17
  %57 = load volatile ptr, ptr %4, align 4
  %58 = icmp ne ptr %57, %4
  %59 = load i1, ptr @rescuer_thread.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !11

62:                                               ; preds = %53
  store i1 true, ptr @rescuer_thread.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2550, i32 noundef 9, ptr noundef null) #17
  br label %63

63:                                               ; preds = %62, %53
  %64 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %103, label %67

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %65, i32 -4
  %69 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 5
  br label %70

70:                                               ; preds = %99, %67
  %71 = phi ptr [ %68, %67 ], [ %100, %99 ]
  %72 = phi i1 [ true, %67 ], [ false, %99 ]
  %73 = phi ptr [ %65, %67 ], [ %101, %99 ]
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 -4
  %76 = load volatile i32, ptr %71, align 4
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  %79 = and i32 %76, -256
  %80 = inttoptr i32 %79 to ptr
  %81 = select i1 %78, ptr null, ptr %80
  %82 = icmp eq ptr %81, %25
  br i1 %82, label %83, label %99

83:                                               ; preds = %70
  br i1 %72, label %84, label %86

84:                                               ; preds = %83
  %85 = load volatile i32, ptr @jiffies, align 64
  store i32 %85, ptr %69, align 4
  br label %86

86:                                               ; preds = %84, %83
  br label %87

87:                                               ; preds = %87, %86
  %88 = phi ptr [ %91, %87 ], [ %71, %86 ]
  %89 = getelementptr inbounds %struct.work_struct, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %90, i32 -4
  %92 = getelementptr inbounds %struct.work_struct, ptr %88, i32 0, i32 1, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %93, ptr %94, align 4
  store volatile ptr %90, ptr %93, align 4
  %95 = load ptr, ptr %16, align 4
  store ptr %89, ptr %16, align 4
  store ptr %4, ptr %89, align 4
  store ptr %95, ptr %92, align 4
  store volatile ptr %89, ptr %95, align 4
  %96 = load i32, ptr %88, align 4
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %87

99:                                               ; preds = %87, %70
  %100 = phi ptr [ %75, %70 ], [ %91, %87 ]
  %101 = getelementptr inbounds %struct.work_struct, ptr %100, i32 0, i32 1
  %102 = icmp eq ptr %101, %64
  br i1 %102, label %103, label %70

103:                                              ; preds = %99, %63
  %104 = load volatile ptr, ptr %4, align 4
  %105 = icmp eq ptr %104, %4
  br i1 %105, label %151, label %106

106:                                              ; preds = %103
  %107 = load volatile ptr, ptr %4, align 4
  %108 = icmp eq ptr %107, %4
  br i1 %108, label %114, label %109

109:                                              ; preds = %109, %106
  %110 = phi ptr [ %112, %109 ], [ %107, %106 ]
  %111 = getelementptr i8, ptr %110, i32 -4
  tail call fastcc void @process_one_work(ptr noundef %0, ptr noundef %111) #17
  %112 = load volatile ptr, ptr %4, align 4
  %113 = icmp eq ptr %112, %4
  br i1 %113, label %114, label %109

114:                                              ; preds = %109, %106
  %115 = getelementptr i8, ptr %24, i32 -24
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %151, label %118

118:                                              ; preds = %114
  %119 = load volatile ptr, ptr %64, align 4
  %120 = icmp eq ptr %119, %64
  br i1 %120, label %151, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 6
  %123 = load volatile i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 9
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %125
  tail call void @_raw_spin_lock(ptr noundef nonnull @wq_mayday_lock) #17
  %130 = load ptr, ptr %17, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %148, label %132

132:                                              ; preds = %129
  %133 = load volatile ptr, ptr %24, align 4
  %134 = icmp eq ptr %133, %24
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = getelementptr i8, ptr %24, i32 -92
  %137 = load i32, ptr %136, align 16
  %138 = icmp slt i32 %137, 1
  %139 = load i1, ptr @get_pwq.__already_done, align 1
  %140 = xor i1 %139, true
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %142, label %144, !prof !11

142:                                              ; preds = %135
  store i1 true, ptr @get_pwq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1123, i32 noundef 9, ptr noundef null) #17
  %143 = load i32, ptr %136, align 16
  br label %144

144:                                              ; preds = %142, %135
  %145 = phi i32 [ %143, %142 ], [ %137, %135 ]
  %146 = add i32 %145, 1
  store i32 %146, ptr %136, align 16
  %147 = load ptr, ptr %18, align 4
  store ptr %24, ptr %18, align 4
  store ptr %10, ptr %24, align 4
  store ptr %147, ptr %27, align 4
  store volatile ptr %24, ptr %147, align 4
  br label %148

148:                                              ; preds = %144, %132, %129
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %149 = load i16, ptr @wq_mayday_lock, align 4
  %150 = add i16 %149, 1
  store i16 %150, ptr @wq_mayday_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  br label %151

151:                                              ; preds = %148, %125, %121, %118, %114, %103
  %152 = getelementptr i8, ptr %24, i32 -92
  %153 = load i32, ptr %152, align 16
  %154 = add i32 %153, -1
  store i32 %154, ptr %152, align 16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %176, !prof !11

156:                                              ; preds = %151
  %157 = getelementptr i8, ptr %24, i32 -104
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.workqueue_struct, ptr %158, i32 0, i32 19
  %160 = load i32, ptr %159, align 64
  %161 = and i32 %160, 2
  %162 = icmp eq i32 %161, 0
  %163 = load i1, ptr @put_pwq.__already_done, align 1
  %164 = xor i1 %163, true
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %167, !prof !11

166:                                              ; preds = %156
  store i1 true, ptr @put_pwq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 9, ptr noundef null) #17
  br label %167

167:                                              ; preds = %166, %156
  br i1 %162, label %176, label %168

168:                                              ; preds = %167
  %169 = getelementptr i8, ptr %24, i32 8
  %170 = load ptr, ptr @system_wq, align 4
  %171 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !25
  %172 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %169) #17
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  tail call fastcc void @__queue_work(i32 noundef 16, ptr noundef %170, ptr noundef %169) #17
  br label %175

175:                                              ; preds = %174, %168
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %171) #17, !srcloc !26
  br label %176

176:                                              ; preds = %175, %167, %151
  %177 = load volatile ptr, ptr %64, align 4
  %178 = icmp eq ptr %177, %64
  br i1 %178, label %193, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 6
  %181 = load volatile i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.worker_pool, ptr %26, i32 0, i32 10
  %185 = load volatile ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, %184
  %187 = icmp eq ptr %185, null
  %188 = or i1 %186, %187
  br i1 %188, label %193, label %189, !prof !11

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.worker, ptr %185, i32 0, i32 6
  %191 = load ptr, ptr %190, align 4
  %192 = tail call i32 @wake_up_process(ptr noundef %191) #17
  br label %193

193:                                              ; preds = %189, %183, %179, %176
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %194 = load i16, ptr %26, align 4
  %195 = add i16 %194, 1
  store i16 %195, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %196 = load ptr, ptr %15, align 4
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %197 = load ptr, ptr %12, align 4
  tail call void @kthread_set_per_cpu(ptr noundef %197, i32 noundef -1) #17
  %198 = load ptr, ptr %14, align 4
  %199 = load ptr, ptr %13, align 4
  %200 = getelementptr inbounds %struct.list_head, ptr %199, i32 0, i32 1
  store ptr %198, ptr %200, align 4
  store volatile ptr %199, ptr %198, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  store ptr null, ptr %15, align 4
  %201 = getelementptr inbounds %struct.worker_pool, ptr %196, i32 0, i32 15
  %202 = load volatile ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, %201
  br i1 %203, label %204, label %207

204:                                              ; preds = %193
  %205 = getelementptr inbounds %struct.worker_pool, ptr %196, i32 0, i32 16
  %206 = load ptr, ptr %205, align 4
  br label %207

207:                                              ; preds = %204, %193
  %208 = phi ptr [ %206, %204 ], [ null, %193 ]
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %209 = load i32, ptr %11, align 4
  %210 = and i32 %209, -385
  store i32 %210, ptr %11, align 4
  %211 = icmp eq ptr %208, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %207
  tail call void @complete(ptr noundef nonnull %208) #17
  br label %213

213:                                              ; preds = %212, %207
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @wq_mayday_lock) #17
  %214 = load volatile ptr, ptr %10, align 4
  %215 = icmp eq ptr %214, %10
  br i1 %215, label %216, label %23

216:                                              ; preds = %213, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %217 = load i16, ptr @wq_mayday_lock, align 4
  %218 = add i16 %217, 1
  store i16 %218, ptr @wq_mayday_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br i1 %20, label %219, label %222

219:                                              ; preds = %216
  store volatile i32 0, ptr %9, align 8
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %220 = load i32, ptr %6, align 4
  %221 = and i32 %220, -33
  store i32 %221, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  ret i32 0

222:                                              ; preds = %216
  %223 = load i32, ptr %11, align 4
  %224 = and i32 %223, 456
  %225 = icmp eq i32 %224, 0
  %226 = load i1, ptr @rescuer_thread.__already_done.60, align 1
  %227 = xor i1 %226, true
  %228 = select i1 %225, i1 %227, i1 false
  br i1 %228, label %229, label %230, !prof !11

229:                                              ; preds = %222
  store i1 true, ptr @rescuer_thread.__already_done.60, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2616, i32 noundef 9, ptr noundef null) #17
  br label %230

230:                                              ; preds = %229, %222
  tail call void @schedule() #17
  br label %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_set_per_cpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @process_one_work(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = and i32 %3, -256
  %7 = inttoptr i32 %6 to ptr
  %8 = select i1 %5, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pool_workqueue, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.workqueue_struct, ptr %12, i32 0, i32 19
  %14 = load i32, ptr %13, align 64
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = tail call ptr @llvm.thread.pointer() #17
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %24, %26
  %28 = load i1, ptr @process_one_work.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32, !prof !11

31:                                               ; preds = %21
  store i1 true, ptr @process_one_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2222, i32 noundef 9, ptr noundef null) #17
  br label %32

32:                                               ; preds = %31, %21, %2
  %33 = ptrtoint ptr %1 to i32
  %34 = mul i32 %33, 1640531527
  %35 = lshr i32 %34, 26
  %36 = getelementptr %struct.worker_pool, ptr %10, i32 0, i32 13, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store volatile ptr null, ptr %0, align 4
  br label %72

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  br label %42

42:                                               ; preds = %52, %40
  %43 = phi ptr [ %37, %40 ], [ %53, %52 ]
  %44 = getelementptr inbounds %struct.worker, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.worker, ptr %43, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %41, align 4
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %42
  %53 = load ptr, ptr %43, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %42

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.worker, ptr %43, i32 0, i32 5
  %57 = getelementptr inbounds %struct.worker, ptr %43, i32 0, i32 5, i32 1
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi ptr [ %1, %55 ], [ %62, %58 ]
  %60 = getelementptr inbounds %struct.work_struct, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 -4
  %63 = getelementptr inbounds %struct.work_struct, ptr %59, i32 0, i32 1, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  store volatile ptr %61, ptr %64, align 4
  %66 = load ptr, ptr %57, align 4
  store ptr %60, ptr %57, align 4
  store ptr %56, ptr %60, align 4
  store ptr %66, ptr %63, align 4
  store volatile ptr %60, ptr %66, align 4
  %67 = load i32, ptr %59, align 4
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %204, label %58

70:                                               ; preds = %52
  store volatile ptr %37, ptr %0, align 4
  %71 = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  store volatile ptr %0, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %39
  store volatile ptr %0, ptr %36, align 4
  %73 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  store volatile ptr %36, ptr %73, align 4
  %74 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 1
  store ptr %1, ptr %74, align 4
  %75 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 2
  store ptr %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 3
  store ptr %8, ptr %78, align 4
  %79 = load i32, ptr %1, align 4
  %80 = lshr i32 %79, 4
  %81 = and i32 %80, 15
  %82 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 4
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 13
  %84 = load ptr, ptr %11, align 4
  %85 = getelementptr inbounds %struct.workqueue_struct, ptr %84, i32 0, i32 16
  %86 = tail call i32 @strscpy(ptr noundef %83, ptr noundef %85, i32 noundef 24) #17
  %87 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1
  %88 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %87, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %89, ptr %91, align 4
  store volatile ptr %90, ptr %89, align 4
  store volatile ptr %87, ptr %87, align 4
  store ptr %87, ptr %88, align 4
  br i1 %16, label %93, label %92, !prof !10

92:                                               ; preds = %72
  tail call fastcc void @worker_set_flags(ptr noundef %0, i32 noundef 64)
  br label %93

93:                                               ; preds = %92, %72
  %94 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 7
  %95 = load volatile ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %94
  br i1 %96, label %111, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 6
  %99 = load volatile i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 10
  %103 = load volatile ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, %102
  %105 = icmp eq ptr %103, null
  %106 = or i1 %104, %105
  br i1 %106, label %111, label %107, !prof !11

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.worker, ptr %103, i32 0, i32 6
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 @wake_up_process(ptr noundef %109) #17
  br label %111

111:                                              ; preds = %107, %101, %97, %93
  %112 = getelementptr inbounds %struct.worker_pool, ptr %10, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !43
  %114 = load volatile i32, ptr %1, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  %117 = load i1, ptr @set_work_data.__already_done, align 1
  %118 = xor i1 %117, true
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %121, !prof !11

120:                                              ; preds = %111
  store i1 true, ptr @set_work_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #17
  br label %121

121:                                              ; preds = %120, %111
  %122 = shl i32 %113, 5
  store volatile i32 %122, ptr %1, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %123 = load i16, ptr %10, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %125 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_execute_start, i32 0, i32 1), align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %121
  %128 = tail call ptr @llvm.thread.pointer() #17
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 5
  %132 = getelementptr i32, ptr @__cpu_online_mask, i32 %131
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %130, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %127
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !65
  %139 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_execute_start, i32 0, i32 7), align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %141, %138
  %142 = phi ptr [ %146, %141 ], [ %139, %138 ]
  %143 = load volatile ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.tracepoint_func, ptr %142, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  tail call void %143(ptr noundef %145, ptr noundef %1) #17
  %146 = getelementptr %struct.tracepoint_func, ptr %142, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %141

149:                                              ; preds = %141, %138
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !66
  br label %150

150:                                              ; preds = %149, %127, %121
  %151 = load ptr, ptr %77, align 4
  tail call void %151(ptr noundef %1) #17
  %152 = load ptr, ptr %77, align 4
  %153 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_execute_end, i32 0, i32 1), align 4
  %154 = icmp sgt i32 %153, 0
  %155 = tail call ptr @llvm.thread.pointer() #17
  br i1 %154, label %156, label %178

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 5
  %160 = getelementptr i32, ptr @__cpu_online_mask, i32 %159
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %158, 31
  %163 = shl nuw i32 1, %162
  %164 = and i32 %163, %161
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %156
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !67
  %167 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_workqueue_execute_end, i32 0, i32 7), align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %177, label %169

169:                                              ; preds = %169, %166
  %170 = phi ptr [ %174, %169 ], [ %167, %166 ]
  %171 = load volatile ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.tracepoint_func, ptr %170, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  tail call void %171(ptr noundef %173, ptr noundef %1, ptr noundef %152) #17
  %174 = getelementptr %struct.tracepoint_func, ptr %170, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %169

177:                                              ; preds = %169, %166
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !68
  br label %178

178:                                              ; preds = %177, %156, %150
  %179 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 1
  %180 = load volatile i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %189, label %182, !prof !10

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.task_struct, ptr %155, i32 0, i32 85
  %184 = load volatile i32, ptr %179, align 4
  %185 = getelementptr inbounds %struct.task_struct, ptr %155, i32 0, i32 52
  %186 = load i32, ptr %185, align 8
  %187 = load ptr, ptr %77, align 4
  %188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %183, i32 noundef %184, i32 noundef %186, ptr noundef %187) #18
  tail call void @dump_stack() #18
  br label %189

189:                                              ; preds = %182, %178
  %190 = tail call i32 @__cond_resched() #17
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #17
  br i1 %16, label %192, label %191, !prof !10

191:                                              ; preds = %189
  tail call fastcc void @worker_clr_flags(ptr noundef %0, i32 noundef 64)
  br label %192

192:                                              ; preds = %191, %189
  %193 = load ptr, ptr %77, align 4
  %194 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 15
  store ptr %193, ptr %194, align 4
  %195 = load ptr, ptr %73, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %203, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr %0, align 4
  store volatile ptr %198, ptr %195, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.hlist_node, ptr %198, i32 0, i32 1
  store volatile ptr %195, ptr %201, align 4
  br label %202

202:                                              ; preds = %200, %197
  store ptr null, ptr %0, align 4
  store ptr null, ptr %73, align 4
  br label %203

203:                                              ; preds = %202, %192
  store ptr null, ptr %74, align 4
  store ptr null, ptr %77, align 4
  store ptr null, ptr %78, align 4
  store i32 2147483647, ptr %82, align 4
  tail call fastcc void @pwq_dec_nr_in_flight(ptr noundef %8, i32 noundef %79)
  br label %204

204:                                              ; preds = %203, %58
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @worker_set_flags(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @llvm.thread.pointer() #17
  %8 = icmp ne ptr %6, %7
  %9 = load i1, ptr @worker_set_flags.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %2
  store i1 true, ptr @worker_set_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 985, i32 noundef 9, ptr noundef null) #17
  br label %13

13:                                               ; preds = %12, %2
  %14 = and i32 %1, 456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.worker_pool, ptr %4, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #17, !srcloc !14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #17, !srcloc !69
  br label %24

24:                                               ; preds = %21, %16, %13
  %25 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %1
  store i32 %27, ptr %25, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @worker_clr_flags(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #17
  %10 = icmp ne ptr %8, %9
  %11 = load i1, ptr @worker_clr_flags.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %2
  store i1 true, ptr @worker_clr_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1011, i32 noundef 9, ptr noundef null) #17
  %15 = load i32, ptr %5, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ %15, %14 ], [ %6, %2 ]
  %18 = xor i32 %1, -1
  %19 = and i32 %17, %18
  store i32 %19, ptr %5, align 4
  %20 = and i32 %1, 456
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %6, 456
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  %25 = and i32 %19, 456
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.worker_pool, ptr %4, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #17, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #17, !srcloc !15
  br label %31

31:                                               ; preds = %28, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @worker_thread(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %4 = tail call ptr @llvm.thread.pointer() #17
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 32
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #17
  %8 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22, !prof !10

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 7
  %16 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 6
  %17 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 9
  %18 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 5
  %19 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 5
  %20 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 5, i32 1
  %21 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  br label %59

22:                                               ; preds = %244, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %23 = load i16, ptr %3, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %25 = load volatile ptr, ptr %0, align 4
  %26 = icmp ne ptr %25, %0
  %27 = load i1, ptr @worker_thread.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !11

30:                                               ; preds = %22
  store i1 true, ptr @worker_thread.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2409, i32 noundef 9, ptr noundef null) #17
  br label %31

31:                                               ; preds = %30, %22
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %32 = load i32, ptr %5, align 4
  %33 = and i32 %32, -33
  store i32 %33, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %34 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  tail call void @__set_task_comm(ptr noundef %35, ptr noundef nonnull @.str.86, i1 noundef zeroext false) #17
  %36 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 17
  %37 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  tail call void @ida_free(ptr noundef %36, i32 noundef %38) #17
  %39 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %40 = load ptr, ptr %34, align 4
  tail call void @kthread_set_per_cpu(ptr noundef %40, i32 noundef -1) #17
  %41 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 8
  %42 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 8, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %41, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %42, align 4
  store ptr null, ptr %2, align 4
  %46 = getelementptr inbounds %struct.worker_pool, ptr %39, i32 0, i32 15
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %49, label %52

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.worker_pool, ptr %39, i32 0, i32 16
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %31
  %53 = phi ptr [ %51, %49 ], [ null, %31 ]
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_attach_mutex) #17
  %54 = load i32, ptr %8, align 4
  %55 = and i32 %54, -385
  store i32 %55, ptr %8, align 4
  %56 = icmp eq ptr %53, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  tail call void @complete(ptr noundef nonnull %53) #17
  br label %58

58:                                               ; preds = %57, %52
  tail call void @kfree(ptr noundef %0) #17
  ret i32 0

59:                                               ; preds = %244, %12
  %60 = phi i32 [ %9, %12 ], [ %247, %244 ]
  %61 = load ptr, ptr %2, align 4
  %62 = and i32 %60, 4
  %63 = icmp eq i32 %62, 0
  %64 = load i1, ptr @worker_leave_idle.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !11

67:                                               ; preds = %59
  store i1 true, ptr @worker_leave_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1847, i32 noundef 9, ptr noundef null) #17
  br label %68

68:                                               ; preds = %67, %59
  br i1 %63, label %85, label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %13, align 4
  %71 = icmp ne ptr %70, %4
  %72 = load i1, ptr @worker_clr_flags.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !11

75:                                               ; preds = %69
  store i1 true, ptr @worker_clr_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1011, i32 noundef 9, ptr noundef null) #17
  br label %76

76:                                               ; preds = %75, %69
  %77 = load i32, ptr %8, align 4
  %78 = and i32 %77, -5
  store i32 %78, ptr %8, align 4
  %79 = getelementptr inbounds %struct.worker_pool, ptr %61, i32 0, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, -1
  store i32 %81, ptr %79, align 4
  %82 = load ptr, ptr %14, align 4
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  store volatile ptr %83, ptr %82, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %14, align 4
  br label %85

85:                                               ; preds = %76, %68
  %86 = load volatile ptr, ptr %15, align 4
  %87 = icmp eq ptr %86, %15
  br i1 %87, label %244, label %88

88:                                               ; preds = %145, %85
  %89 = load volatile i32, ptr %16, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %244

91:                                               ; preds = %88
  %92 = load i32, ptr %17, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %151, !prof !11

94:                                               ; preds = %91
  %95 = load ptr, ptr %2, align 4
  %96 = getelementptr inbounds %struct.worker_pool, ptr %95, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %151

100:                                              ; preds = %94
  %101 = or i32 %97, 1
  store i32 %101, ptr %96, align 4
  %102 = getelementptr inbounds %struct.worker_pool, ptr %95, i32 0, i32 14
  store ptr %0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.worker_pool, ptr %95, i32 0, i32 6
  %104 = getelementptr inbounds %struct.worker_pool, ptr %95, i32 0, i32 9
  %105 = getelementptr inbounds %struct.worker_pool, ptr %95, i32 0, i32 12
  %106 = getelementptr inbounds %struct.worker_pool, ptr %95, i32 0, i32 7
  br label %107

107:                                              ; preds = %142, %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %108 = load i16, ptr %95, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %95, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %110 = load volatile i32, ptr @jiffies, align 64
  %111 = add i32 %110, 2
  %112 = tail call i32 @mod_timer(ptr noundef %105, i32 noundef %111) #17
  br label %113

113:                                              ; preds = %132, %107
  %114 = tail call fastcc ptr @create_worker(ptr noundef %95) #17
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load volatile ptr, ptr %106, align 4
  %118 = icmp eq ptr %117, %106
  br i1 %118, label %135, label %119

119:                                              ; preds = %116
  %120 = load volatile i32, ptr %103, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load i32, ptr %104, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = tail call i32 @schedule_timeout_interruptible(i32 noundef 100) #17
  %127 = load volatile ptr, ptr %106, align 4
  %128 = icmp eq ptr %127, %106
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load volatile i32, ptr %103, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, ptr %104, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %113, label %135

135:                                              ; preds = %132, %129, %125, %122, %119, %116, %113
  %136 = tail call i32 @del_timer_sync(ptr noundef %105) #17
  tail call void @_raw_spin_lock_irq(ptr noundef %95) #17
  %137 = load volatile ptr, ptr %106, align 4
  %138 = icmp eq ptr %137, %106
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %140 = load volatile i32, ptr %103, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, ptr %104, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %107, label %145

145:                                              ; preds = %142, %139, %135
  store ptr null, ptr %102, align 4
  %146 = load i32, ptr %96, align 4
  %147 = and i32 %146, -2
  store i32 %147, ptr %96, align 4
  %148 = tail call i32 @rcuwait_wake_up(ptr noundef nonnull @manager_wait) #17
  %149 = load volatile ptr, ptr %15, align 4
  %150 = icmp eq ptr %149, %15
  br i1 %150, label %244, label %88

151:                                              ; preds = %94, %91
  %152 = load volatile ptr, ptr %18, align 4
  %153 = icmp ne ptr %152, %18
  %154 = load i1, ptr @worker_thread.__already_done.87, align 1
  %155 = xor i1 %154, true
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %158, !prof !11

157:                                              ; preds = %151
  store i1 true, ptr @worker_thread.__already_done.87, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2434, i32 noundef 9, ptr noundef null) #17
  br label %158

158:                                              ; preds = %157, %151
  %159 = load ptr, ptr %2, align 4
  %160 = load i32, ptr %8, align 4
  %161 = load ptr, ptr %13, align 4
  %162 = icmp ne ptr %161, %4
  %163 = load i1, ptr @worker_clr_flags.__already_done, align 1
  %164 = xor i1 %163, true
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %168, !prof !11

166:                                              ; preds = %158
  store i1 true, ptr @worker_clr_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1011, i32 noundef 9, ptr noundef null) #17
  %167 = load i32, ptr %8, align 4
  br label %168

168:                                              ; preds = %166, %158
  %169 = phi i32 [ %167, %166 ], [ %160, %158 ]
  %170 = and i32 %169, -265
  store i32 %170, ptr %8, align 4
  %171 = and i32 %160, 456
  %172 = icmp ne i32 %171, 0
  %173 = and i32 %169, 192
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.worker_pool, ptr %159, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %177) #17, !srcloc !14
  %178 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %177, ptr %177, i32 1, ptr elementtype(i32) %177) #17, !srcloc !15
  br label %179

179:                                              ; preds = %176, %168
  %180 = load ptr, ptr %15, align 4
  br label %181

181:                                              ; preds = %222, %179
  %182 = phi ptr [ %220, %222 ], [ %180, %179 ]
  %183 = getelementptr i8, ptr %182, i32 -4
  %184 = load volatile i32, ptr @jiffies, align 64
  store i32 %184, ptr %19, align 4
  %185 = load i32, ptr %183, align 4
  %186 = and i32 %185, 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %199, !prof !10

188:                                              ; preds = %181
  tail call fastcc void @process_one_work(ptr noundef %0, ptr noundef %183)
  %189 = load volatile ptr, ptr %18, align 4
  %190 = icmp eq ptr %189, %18
  br i1 %190, label %219, label %191, !prof !10

191:                                              ; preds = %188
  %192 = load volatile ptr, ptr %18, align 4
  %193 = icmp eq ptr %192, %18
  br i1 %193, label %219, label %194

194:                                              ; preds = %194, %191
  %195 = phi ptr [ %197, %194 ], [ %192, %191 ]
  %196 = getelementptr i8, ptr %195, i32 -4
  tail call fastcc void @process_one_work(ptr noundef %0, ptr noundef %196) #17
  %197 = load volatile ptr, ptr %18, align 4
  %198 = icmp eq ptr %197, %18
  br i1 %198, label %219, label %194

199:                                              ; preds = %199, %181
  %200 = phi ptr [ %203, %199 ], [ %183, %181 ]
  %201 = getelementptr inbounds %struct.work_struct, ptr %200, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr i8, ptr %202, i32 -4
  %204 = getelementptr inbounds %struct.work_struct, ptr %200, i32 0, i32 1, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.list_head, ptr %202, i32 0, i32 1
  store ptr %205, ptr %206, align 4
  store volatile ptr %202, ptr %205, align 4
  %207 = load ptr, ptr %20, align 4
  store ptr %201, ptr %20, align 4
  store ptr %18, ptr %201, align 4
  store ptr %207, ptr %204, align 4
  store volatile ptr %201, ptr %207, align 4
  %208 = load i32, ptr %200, align 4
  %209 = and i32 %208, 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %199

211:                                              ; preds = %199
  %212 = load volatile ptr, ptr %18, align 4
  %213 = icmp eq ptr %212, %18
  br i1 %213, label %219, label %214

214:                                              ; preds = %214, %211
  %215 = phi ptr [ %217, %214 ], [ %212, %211 ]
  %216 = getelementptr i8, ptr %215, i32 -4
  tail call fastcc void @process_one_work(ptr noundef %0, ptr noundef %216) #17
  %217 = load volatile ptr, ptr %18, align 4
  %218 = icmp eq ptr %217, %18
  br i1 %218, label %219, label %214

219:                                              ; preds = %214, %211, %194, %191, %188
  %220 = load volatile ptr, ptr %15, align 4
  %221 = icmp eq ptr %220, %15
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load volatile i32, ptr %16, align 4
  %224 = icmp slt i32 %223, 2
  br i1 %224, label %181, label %225

225:                                              ; preds = %222, %219
  %226 = load ptr, ptr %2, align 4
  %227 = load ptr, ptr %13, align 4
  %228 = icmp ne ptr %227, %4
  %229 = load i1, ptr @worker_set_flags.__already_done, align 1
  %230 = xor i1 %229, true
  %231 = select i1 %228, i1 %230, i1 false
  br i1 %231, label %232, label %233, !prof !11

232:                                              ; preds = %225
  store i1 true, ptr @worker_set_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 985, i32 noundef 9, ptr noundef null) #17
  br label %233

233:                                              ; preds = %232, %225
  %234 = load i32, ptr %8, align 4
  %235 = and i32 %234, 456
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.worker_pool, ptr %226, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %238) #17, !srcloc !14
  %239 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %238, ptr %238, i32 1, ptr elementtype(i32) %238) #17, !srcloc !69
  %240 = load i32, ptr %8, align 4
  br label %241

241:                                              ; preds = %237, %233
  %242 = phi i32 [ %234, %233 ], [ %240, %237 ]
  %243 = or i32 %242, 8
  store i32 %243, ptr %8, align 4
  br label %244

244:                                              ; preds = %241, %145, %88, %85
  tail call fastcc void @worker_enter_idle(ptr noundef %0)
  store volatile i32 1026, ptr %21, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %245 = load i16, ptr %3, align 4
  %246 = add i16 %245, 1
  store i16 %246, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  tail call void @schedule() #17
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #17
  %247 = load i32, ptr %8, align 4
  %248 = and i32 %247, 2
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %59, label %22, !prof !10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @worker_enter_idle(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @worker_enter_idle.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %1
  store i1 true, ptr @worker_enter_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1813, i32 noundef 9, ptr noundef null) #17
  br label %12

12:                                               ; preds = %11, %1
  br i1 %7, label %78, label %13

13:                                               ; preds = %12
  %14 = load volatile ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %20, null
  %22 = load i1, ptr @worker_enter_idle.__already_done.88, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %75, label %27, !prof !11

25:                                               ; preds = %16
  %26 = load i1, ptr @worker_enter_idle.__already_done.88, align 1
  br i1 %26, label %78, label %75, !prof !10

27:                                               ; preds = %18
  br i1 %21, label %78, label %28

28:                                               ; preds = %27, %13
  %29 = load i32, ptr %4, align 4
  %30 = or i32 %29, 4
  store i32 %30, ptr %4, align 4
  %31 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = getelementptr inbounds %struct.worker, ptr %0, i32 0, i32 9
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %0, ptr %38, align 4
  store ptr %37, ptr %0, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %36, ptr %39, align 4
  store volatile ptr %0, ptr %36, align 4
  %40 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = load i32, ptr %31, align 4
  %44 = add i32 %43, %42
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %63

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %48, %44
  %50 = shl i32 %44, 2
  %51 = add i32 %50, -8
  %52 = icmp slt i32 %51, %49
  br i1 %52, label %63, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 11, i32 0, i32 1
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 11
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = add i32 %59, 30000
  %61 = tail call i32 @mod_timer(ptr noundef %58, i32 noundef %60) #17
  %62 = load i32, ptr %31, align 4
  br label %63

63:                                               ; preds = %57, %53, %46, %28
  %64 = phi i32 [ %43, %28 ], [ %62, %57 ], [ %43, %53 ], [ %43, %46 ]
  %65 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, %64
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.worker_pool, ptr %3, i32 0, i32 6
  %70 = load volatile i32, ptr %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = load i1, ptr @worker_enter_idle.__already_done.89, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %78, !prof !11

75:                                               ; preds = %68, %25, %18
  %76 = phi ptr [ @worker_enter_idle.__already_done.88, %25 ], [ @worker_enter_idle.__already_done.88, %18 ], [ @worker_enter_idle.__already_done.89, %68 ]
  %77 = phi i32 [ 1815, %25 ], [ 1815, %18 ], [ 1831, %68 ]
  store i1 true, ptr %76, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %77, i32 noundef 9, ptr noundef null) #17
  br label %78

78:                                               ; preds = %75, %68, %63, %27, %25, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_virtual_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wq_unbound_cpumask_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.93, i32 noundef %4, ptr noundef nonnull @wq_unbound_cpumask) #17
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wq_unbound_cpumask_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4
  %6 = call i32 @bitmap_parse(ptr noundef %2, i32 noundef -1, ptr noundef nonnull %5, i32 noundef 16) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 @workqueue_set_unbound_cpumask(ptr noundef nonnull %5)
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %6, %4 ], [ %9, %8 ]
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %3, i32 %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @per_cpu_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.workqueue_struct, ptr %5, i32 0, i32 19
  %7 = load i32, ptr %6, align 64
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %10) #17
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_active_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.workqueue_struct, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %7) #17
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_active_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.97, ptr noundef nonnull %5)
  %9 = icmp ne i32 %8, 1
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 1
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  call void @workqueue_set_max_active(ptr noundef %7, i32 noundef %10)
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i32 [ %3, %13 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wq_pool_ids_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  tail call void @cpus_read_lock() #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %6 = getelementptr inbounds %struct.workqueue_struct, ptr %5, i32 0, i32 21
  %7 = load volatile ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 256
  %9 = getelementptr inbounds %struct.worker_pool, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef %10) #17
  %12 = getelementptr i8, ptr %2, i32 %11
  %13 = sub i32 4096, %11
  %14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %12, i32 noundef %13, ptr noundef nonnull @.str.103) #17
  %15 = add i32 %14, %11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  tail call void @cpus_read_unlock() #17
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wq_nice_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.workqueue_struct, ptr %5, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #17
  %7 = getelementptr inbounds %struct.workqueue_struct, ptr %5, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %9) #17
  tail call void @mutex_unlock(ptr noundef %6) #17
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wq_nice_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 8
  tail call void @cpus_read_lock() #17
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 12) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.workqueue_attrs, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.workqueue_struct, ptr %6, i32 0, i32 13
  %13 = load ptr, ptr %12, align 8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %8, align 8
  %15 = getelementptr inbounds %struct.workqueue_attrs, ptr %13, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %11, align 4
  %17 = getelementptr inbounds %struct.workqueue_attrs, ptr %13, i32 0, i32 2
  %18 = load i8, ptr %17, align 4, !range !28
  %19 = getelementptr inbounds %struct.workqueue_attrs, ptr %8, i32 0, i32 2
  store i8 %18, ptr %19, align 8
  %20 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.97, ptr noundef nonnull %8)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %10
  %23 = load i32, ptr %8, align 8
  %24 = add i32 %23, 20
  %25 = icmp ult i32 %24, 40
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call fastcc i32 @apply_workqueue_attrs_locked(ptr noundef %6, ptr noundef nonnull %8)
  br label %28

28:                                               ; preds = %26, %22, %10, %4
  %29 = phi i32 [ %27, %26 ], [ -22, %22 ], [ -22, %10 ], [ -12, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  tail call void @cpus_read_unlock() #17
  br i1 %9, label %31, label %30

30:                                               ; preds = %28
  tail call void @kfree(ptr noundef nonnull %8) #17
  br label %31

31:                                               ; preds = %30, %28
  %32 = icmp eq i32 %29, 0
  %33 = select i1 %32, i32 %3, i32 %29
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wq_cpumask_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.workqueue_struct, ptr %5, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #17
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = getelementptr inbounds %struct.workqueue_struct, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.workqueue_attrs, ptr %9, i32 0, i32 1
  %11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.93, i32 noundef %7, ptr noundef %10) #17
  tail call void @mutex_unlock(ptr noundef %6) #17
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wq_cpumask_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 8
  tail call void @cpus_read_lock() #17
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 12) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.workqueue_attrs, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.workqueue_struct, ptr %6, i32 0, i32 13
  %13 = load ptr, ptr %12, align 8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %8, align 8
  %15 = getelementptr inbounds %struct.workqueue_attrs, ptr %13, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %11, align 4
  %17 = getelementptr inbounds %struct.workqueue_attrs, ptr %13, i32 0, i32 2
  %18 = load i8, ptr %17, align 4, !range !28
  %19 = getelementptr inbounds %struct.workqueue_attrs, ptr %8, i32 0, i32 2
  store i8 %18, ptr %19, align 8
  %20 = tail call i32 @bitmap_parse(ptr noundef %2, i32 noundef -1, ptr noundef %11, i32 noundef 16) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = tail call fastcc i32 @apply_workqueue_attrs_locked(ptr noundef %6, ptr noundef nonnull %8)
  br label %24

24:                                               ; preds = %22, %10, %4
  %25 = phi i32 [ %20, %10 ], [ %23, %22 ], [ -12, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  tail call void @cpus_read_unlock() #17
  br i1 %9, label %27, label %26

26:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %8) #17
  br label %27

27:                                               ; preds = %26, %24
  %28 = icmp eq i32 %25, 0
  %29 = select i1 %28, i32 %3, i32 %25
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wq_numa_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.workqueue_struct, ptr %5, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #17
  %7 = getelementptr inbounds %struct.workqueue_struct, ptr %5, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.workqueue_attrs, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !28
  %11 = xor i8 %10, 1
  %12 = zext i8 %11 to i32
  %13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %12) #17
  tail call void @mutex_unlock(ptr noundef %6) #17
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wq_numa_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !9
  tail call void @cpus_read_lock() #17
  tail call void @mutex_lock(ptr noundef nonnull @wq_pool_mutex) #17
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 12) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.workqueue_attrs, ptr %9, i32 0, i32 1
  %13 = getelementptr inbounds %struct.workqueue_struct, ptr %7, i32 0, i32 13
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %9, align 8
  %16 = getelementptr inbounds %struct.workqueue_attrs, ptr %14, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %12, align 4
  %18 = getelementptr inbounds %struct.workqueue_attrs, ptr %14, i32 0, i32 2
  %19 = load i8, ptr %18, align 4, !range !28
  %20 = getelementptr inbounds %struct.workqueue_attrs, ptr %9, i32 0, i32 2
  store i8 %19, ptr %20, align 8
  %21 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.97, ptr noundef nonnull %5)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load i32, ptr %5, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i8
  store i8 %26, ptr %20, align 8
  %27 = call fastcc i32 @apply_workqueue_attrs_locked(ptr noundef %7, ptr noundef nonnull %9)
  br label %28

28:                                               ; preds = %23, %11, %4
  %29 = phi i32 [ %27, %23 ], [ -22, %11 ], [ -12, %4 ]
  call void @mutex_unlock(ptr noundef nonnull @wq_pool_mutex) #17
  call void @cpus_read_unlock() #17
  br i1 %10, label %31, label %30

30:                                               ; preds = %28
  call void @kfree(ptr noundef nonnull %9) #17
  br label %31

31:                                               ; preds = %30, %28
  %32 = icmp eq i32 %29, 0
  %33 = select i1 %32, i32 %3, i32 %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idle_worker_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -52
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #17
  %3 = getelementptr i8, ptr %0, i32 -36
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 1
  %7 = load i32, ptr %4, align 4
  %8 = add i32 %7, %6
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = getelementptr i8, ptr %0, i32 -4
  br label %13

13:                                               ; preds = %30, %10
  %14 = phi i32 [ %8, %10 ], [ %34, %30 ]
  %15 = load i32, ptr %11, align 4
  %16 = sub i32 %15, %14
  %17 = shl i32 %14, 2
  %18 = add i32 %17, -8
  %19 = icmp slt i32 %18, %16
  br i1 %19, label %36, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr inbounds %struct.worker, ptr %21, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 30000
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %25, %24
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %24) #17
  br label %36

30:                                               ; preds = %20
  tail call fastcc void @destroy_worker(ptr noundef %21)
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, 1
  %33 = load i32, ptr %4, align 4
  %34 = add i32 %33, %32
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %13, label %36

36:                                               ; preds = %30, %28, %13, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %37 = load i16, ptr %2, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pool_mayday_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -72
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #17
  tail call void @_raw_spin_lock(ptr noundef nonnull @wq_mayday_lock) #17
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %55, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -48
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -32
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %52, %10
  %15 = phi ptr [ %53, %52 ], [ %4, %10 ]
  %16 = getelementptr i8, ptr %15, i32 -4
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %17, -256
  %21 = inttoptr i32 %20 to ptr
  %22 = select i1 %19, ptr null, ptr %21
  %23 = getelementptr inbounds %struct.pool_workqueue, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.workqueue_struct, ptr %24, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.pool_workqueue, ptr %22, i32 0, i32 10
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.pool_workqueue, ptr %22, i32 0, i32 4
  %34 = load i32, ptr %33, align 16
  %35 = icmp slt i32 %34, 1
  %36 = load i1, ptr @get_pwq.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41, !prof !11

39:                                               ; preds = %32
  store i1 true, ptr @get_pwq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1123, i32 noundef 9, ptr noundef null) #17
  %40 = load i32, ptr %33, align 16
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi i32 [ %40, %39 ], [ %34, %32 ]
  %43 = add i32 %42, 1
  store i32 %43, ptr %33, align 16
  %44 = getelementptr inbounds %struct.workqueue_struct, ptr %24, i32 0, i32 9
  %45 = getelementptr inbounds %struct.workqueue_struct, ptr %24, i32 0, i32 9, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %29, ptr %45, align 4
  store ptr %44, ptr %29, align 4
  %47 = getelementptr inbounds %struct.pool_workqueue, ptr %22, i32 0, i32 10, i32 1
  store ptr %46, ptr %47, align 16
  store volatile ptr %29, ptr %46, align 4
  %48 = load ptr, ptr %25, align 4
  %49 = getelementptr inbounds %struct.worker, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @wake_up_process(ptr noundef %50) #17
  br label %52

52:                                               ; preds = %41, %28, %14
  %53 = load ptr, ptr %15, align 4
  %54 = icmp eq ptr %53, %3
  br i1 %54, label %55, label %14

55:                                               ; preds = %52, %10, %6, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %56 = load i16, ptr @wq_mayday_lock, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr @wq_mayday_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %58 = load i16, ptr %2, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = add i32 %60, 10
  %62 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %61) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

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
!12 = !{i64 494744}
!13 = !{i64 2154573438}
!14 = !{i64 580805, i64 2148070776, i64 2148070802, i64 2148070849, i64 2148070871, i64 2148070899, i64 2148070919}
!15 = !{i64 2148082988, i64 2148083014, i64 2148083043, i64 2148083077, i64 2148083108, i64 2148083131}
!16 = !{i64 2154573486}
!17 = !{i64 2149335425}
!18 = !{i64 2149331249}
!19 = !{i64 2149331324, i64 2149331351, i64 2149331398, i64 2149331420, i64 2149331448, i64 2149331468}
!20 = !{i64 476289}
!21 = !{i64 2149359569}
!22 = !{i64 2148183643}
!23 = !{i64 2148086029, i64 2148086061, i64 2148086090, i64 2148086124, i64 2148086155, i64 2148086178}
!24 = !{i64 2148183846}
!25 = !{i64 476044, i64 476105}
!26 = !{i64 479061}
!27 = !{i64 2149109226}
!28 = !{i8 0, i8 2}
!29 = !{i32 0, i32 33}
!30 = !{i64 2149358428}
!31 = !{i64 2154615521}
!32 = !{i64 2154615363}
!33 = !{i64 2153297629}
!34 = !{i64 2153297817}
!35 = !{i64 2153314298}
!36 = !{i64 2153314464}
!37 = !{i64 2149109443}
!38 = !{i64 2154602971}
!39 = !{i64 2154602813}
!40 = !{i64 476479}
!41 = !{i64 2154571501}
!42 = !{i64 2154808740}
!43 = !{i64 2154571243}
!44 = !{i64 2154571371}
!45 = !{i64 2154860658, i64 2154861142, i64 2154860695, i64 2154860751, i64 2154860785, i64 2154860809, i64 2154860850, i64 2154860871, i64 2154860899, i64 2154860933}
!46 = !{i64 2149134467}
!47 = !{!"branch_weights", i32 2146410443, i32 1073205}
!48 = !{!"branch_weights", i32 1073205, i32 2146410443}
!49 = !{i64 2155029107}
!50 = !{i64 2155030018}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.peeled.count", i32 1}
!53 = !{i64 2155394273, i64 2155394757, i64 2155394310, i64 2155394366, i64 2155394400, i64 2155394424, i64 2155394465, i64 2155394486, i64 2155394514, i64 2155394548}
!54 = !{i64 2155395363, i64 2155395847, i64 2155395400, i64 2155395456, i64 2155395490, i64 2155395514, i64 2155395555, i64 2155395576, i64 2155395604, i64 2155395638}
!55 = !{i64 2155396423, i64 2155396907, i64 2155396460, i64 2155396516, i64 2155396550, i64 2155396574, i64 2155396615, i64 2155396636, i64 2155396664, i64 2155396698}
!56 = !{i64 2155397483, i64 2155397967, i64 2155397520, i64 2155397576, i64 2155397610, i64 2155397634, i64 2155397675, i64 2155397696, i64 2155397724, i64 2155397758}
!57 = !{i64 2155401800, i64 2155402284, i64 2155401837, i64 2155401893, i64 2155401927, i64 2155401951, i64 2155401992, i64 2155402013, i64 2155402041, i64 2155402075}
!58 = !{i64 2155411138, i64 2155411622, i64 2155411175, i64 2155411231, i64 2155411265, i64 2155411289, i64 2155411330, i64 2155411351, i64 2155411379, i64 2155411413}
!59 = !{i64 2155416113, i64 2155416597, i64 2155416150, i64 2155416206, i64 2155416240, i64 2155416264, i64 2155416305, i64 2155416326, i64 2155416354, i64 2155416388}
!60 = !{i64 2154603100}
!61 = !{i64 2154873270}
!62 = !{i64 2152553390}
!63 = !{i64 2154830332}
!64 = !{i64 2154676040}
!65 = !{i64 2153330911}
!66 = !{i64 2153331077}
!67 = !{i64 2153347847}
!68 = !{i64 2153348029}
!69 = !{i64 2148085345, i64 2148085371, i64 2148085400, i64 2148085434, i64 2148085465, i64 2148085488}
