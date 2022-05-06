; ModuleID = '/llk/IR/mm/migrate.c_pt.bc'
source_filename = "../mm/migrate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_migrate_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_migrate_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_folio_migrate_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_migrate_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_migrate_flags\22\09\09\09\09\09"
module asm "__kstrtabns_folio_migrate_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_migrate_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_migrate_copy\22\09\09\09\09\09"
module asm "__kstrtabns_folio_migrate_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_page\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_buffer_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22buffer_migrate_page\22\09\09\09\09\09"
module asm "__kstrtabns_buffer_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.2, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.2 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.vm_event_state = type { [71 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mm_migrate_pages = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_mm_migrate_pages_start = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.page = type { i32, %union.anon.4, %union.anon.70, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmap_walk_control = type { ptr, ptr, ptr, ptr, ptr }
%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.13, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.97 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.12 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.anon_vma = type { ptr, %struct.rw_semaphore, %struct.atomic_t, i32, ptr, %struct.rb_root_cached }
%struct.migration_target_control = type { i32, ptr, i32 }
%struct.demotion_nodes = type { i16, [0 x i16] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }

@__tpstrtab_mm_migrate_pages = internal constant [17 x i8] c"mm_migrate_pages\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_migrate_pages = dso_local global %struct.static_call_key { ptr @__traceiter_mm_migrate_pages }, align 4
@__tracepoint_mm_migrate_pages = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_migrate_pages, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_migrate_pages, ptr null, ptr @__traceiter_mm_migrate_pages, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_migrate_pages = internal constant ptr @__tracepoint_mm_migrate_pages, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_migrate_pages_start = internal constant [23 x i8] c"mm_migrate_pages_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_migrate_pages_start = dso_local global %struct.static_call_key { ptr @__traceiter_mm_migrate_pages_start }, align 4
@__tracepoint_mm_migrate_pages_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_migrate_pages_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_migrate_pages_start, ptr null, ptr @__traceiter_mm_migrate_pages_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_migrate_pages_start = internal constant ptr @__tracepoint_mm_migrate_pages_start, section "__tracepoints_ptrs", align 4
@str__migrate__trace_system_name = internal constant [8 x i8] c"migrate\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"MIGRATE_ASYNC\00", align 1
@__TRACE_SYSTEM_MIGRATE_ASYNC = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_MIGRATE_ASYNC = internal global ptr @__TRACE_SYSTEM_MIGRATE_ASYNC, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"MIGRATE_SYNC_LIGHT\00", align 1
@__TRACE_SYSTEM_MIGRATE_SYNC_LIGHT = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_MIGRATE_SYNC_LIGHT = internal global ptr @__TRACE_SYSTEM_MIGRATE_SYNC_LIGHT, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"MIGRATE_SYNC\00", align 1
@__TRACE_SYSTEM_MIGRATE_SYNC = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_MIGRATE_SYNC = internal global ptr @__TRACE_SYSTEM_MIGRATE_SYNC, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"MR_COMPACTION\00", align 1
@__TRACE_SYSTEM_MR_COMPACTION = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.3, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_COMPACTION = internal global ptr @__TRACE_SYSTEM_MR_COMPACTION, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"MR_MEMORY_FAILURE\00", align 1
@__TRACE_SYSTEM_MR_MEMORY_FAILURE = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.4, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_MEMORY_FAILURE = internal global ptr @__TRACE_SYSTEM_MR_MEMORY_FAILURE, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"MR_MEMORY_HOTPLUG\00", align 1
@__TRACE_SYSTEM_MR_MEMORY_HOTPLUG = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.5, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_MEMORY_HOTPLUG = internal global ptr @__TRACE_SYSTEM_MR_MEMORY_HOTPLUG, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"MR_SYSCALL\00", align 1
@__TRACE_SYSTEM_MR_SYSCALL = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.6, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_SYSCALL = internal global ptr @__TRACE_SYSTEM_MR_SYSCALL, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"MR_MEMPOLICY_MBIND\00", align 1
@__TRACE_SYSTEM_MR_MEMPOLICY_MBIND = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.7, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_MEMPOLICY_MBIND = internal global ptr @__TRACE_SYSTEM_MR_MEMPOLICY_MBIND, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"MR_NUMA_MISPLACED\00", align 1
@__TRACE_SYSTEM_MR_NUMA_MISPLACED = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.8, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_NUMA_MISPLACED = internal global ptr @__TRACE_SYSTEM_MR_NUMA_MISPLACED, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"MR_CONTIG_RANGE\00", align 1
@__TRACE_SYSTEM_MR_CONTIG_RANGE = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.9, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_CONTIG_RANGE = internal global ptr @__TRACE_SYSTEM_MR_CONTIG_RANGE, section "_ftrace_eval_map", align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"MR_LONGTERM_PIN\00", align 1
@__TRACE_SYSTEM_MR_LONGTERM_PIN = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.10, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_LONGTERM_PIN = internal global ptr @__TRACE_SYSTEM_MR_LONGTERM_PIN, section "_ftrace_eval_map", align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"MR_DEMOTION\00", align 1
@__TRACE_SYSTEM_MR_DEMOTION = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.11, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_DEMOTION = internal global ptr @__TRACE_SYSTEM_MR_DEMOTION, section "_ftrace_eval_map", align 4
@trace_event_fields_mm_migrate_pages = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon { %struct.anon { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon { %struct.anon { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_migrate_pages = internal global %struct.trace_event_class { ptr @str__migrate__trace_system_name, ptr @trace_event_raw_event_mm_migrate_pages, ptr @perf_trace_mm_migrate_pages, ptr @trace_event_reg, ptr @trace_event_fields_mm_migrate_pages, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_migrate_pages, i64 24), ptr getelementptr (i8, ptr @event_class_mm_migrate_pages, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_migrate_pages = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_migrate_pages, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_migrate_pages = internal global [680 x i8] c"\22nr_succeeded=%lu nr_failed=%lu nr_thp_succeeded=%lu nr_thp_failed=%lu nr_thp_split=%lu mode=%s reason=%s\22, REC->succeeded, REC->failed, REC->thp_succeeded, REC->thp_failed, REC->thp_split, __print_symbolic(REC->mode, {MIGRATE_ASYNC, \22MIGRATE_ASYNC\22}, {MIGRATE_SYNC_LIGHT, \22MIGRATE_SYNC_LIGHT\22}, {MIGRATE_SYNC, \22MIGRATE_SYNC\22}), __print_symbolic(REC->reason, {MR_COMPACTION, \22compaction\22}, {MR_MEMORY_FAILURE, \22memory_failure\22}, {MR_MEMORY_HOTPLUG, \22memory_hotplug\22}, {MR_SYSCALL, \22syscall_or_cpuset\22}, {MR_MEMPOLICY_MBIND, \22mempolicy_mbind\22}, {MR_NUMA_MISPLACED, \22numa_misplaced\22}, {MR_CONTIG_RANGE, \22contig_range\22}, {MR_LONGTERM_PIN, \22longterm_pin\22}, {MR_DEMOTION, \22demotion\22})\00", align 1
@event_mm_migrate_pages = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_migrate_pages, %union.anon.0 { ptr @__tracepoint_mm_migrate_pages }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_migrate_pages }, ptr @print_fmt_mm_migrate_pages, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_migrate_pages = internal global ptr @event_mm_migrate_pages, section "_ftrace_events", align 4
@trace_event_fields_mm_migrate_pages_start = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_migrate_pages_start = internal global %struct.trace_event_class { ptr @str__migrate__trace_system_name, ptr @trace_event_raw_event_mm_migrate_pages_start, ptr @perf_trace_mm_migrate_pages_start, ptr @trace_event_reg, ptr @trace_event_fields_mm_migrate_pages_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_migrate_pages_start, i64 24), ptr getelementptr (i8, ptr @event_class_mm_migrate_pages_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_migrate_pages_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_migrate_pages_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_migrate_pages_start = internal global [511 x i8] c"\22mode=%s reason=%s\22, __print_symbolic(REC->mode, {MIGRATE_ASYNC, \22MIGRATE_ASYNC\22}, {MIGRATE_SYNC_LIGHT, \22MIGRATE_SYNC_LIGHT\22}, {MIGRATE_SYNC, \22MIGRATE_SYNC\22}), __print_symbolic(REC->reason, {MR_COMPACTION, \22compaction\22}, {MR_MEMORY_FAILURE, \22memory_failure\22}, {MR_MEMORY_HOTPLUG, \22memory_hotplug\22}, {MR_SYSCALL, \22syscall_or_cpuset\22}, {MR_MEMPOLICY_MBIND, \22mempolicy_mbind\22}, {MR_NUMA_MISPLACED, \22numa_misplaced\22}, {MR_CONTIG_RANGE, \22contig_range\22}, {MR_LONGTERM_PIN, \22longterm_pin\22}, {MR_DEMOTION, \22demotion\22})\00", align 1
@event_mm_migrate_pages_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_migrate_pages_start, %union.anon.0 { ptr @__tracepoint_mm_migrate_pages_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_migrate_pages_start }, ptr @print_fmt_mm_migrate_pages_start, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_migrate_pages_start = internal global ptr @event_mm_migrate_pages_start, section "_ftrace_events", align 4
@isolate_movable_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"mm/migrate.c\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_folio_migrate_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_migrate_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_migrate_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_migrate_mapping to i32), ptr @__kstrtab_folio_migrate_mapping, ptr @__kstrtabns_folio_migrate_mapping }, section "___ksymtab+folio_migrate_mapping", align 4
@__kstrtab_folio_migrate_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_migrate_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_migrate_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_migrate_flags to i32), ptr @__kstrtab_folio_migrate_flags, ptr @__kstrtabns_folio_migrate_flags }, section "___ksymtab+folio_migrate_flags", align 4
@__kstrtab_folio_migrate_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_migrate_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_migrate_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_migrate_copy to i32), ptr @__kstrtab_folio_migrate_copy, ptr @__kstrtabns_folio_migrate_copy }, section "___ksymtab+folio_migrate_copy", align 4
@__kstrtab_migrate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_page to i32), ptr @__kstrtab_migrate_page, ptr @__kstrtabns_migrate_page }, section "___ksymtab+migrate_page", align 4
@__kstrtab_buffer_migrate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_buffer_migrate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_buffer_migrate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @buffer_migrate_page to i32), ptr @__kstrtab_buffer_migrate_page, ptr @__kstrtabns_buffer_migrate_page }, section "___ksymtab+buffer_migrate_page", align 4
@node_demotion = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_migrate__281_3301_migrate_on_reclaim_init7 = internal global ptr @migrate_on_reclaim_init, section ".initcall7.init", align 4
@numa_demotion_enabled = dso_local local_unnamed_addr global i8 0, align 1
@__initcall__kmod_migrate__282_3362_numa_init_sysfs4 = internal global ptr @numa_init_sysfs, section ".initcall4.init", align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"thp_succeeded\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"thp_failed\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"thp_split\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"enum migrate_mode\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.23 = private unnamed_addr constant [106 x i8] c"nr_succeeded=%lu nr_failed=%lu nr_thp_succeeded=%lu nr_thp_failed=%lu nr_thp_split=%lu mode=%s reason=%s\0A\00", align 1
@trace_raw_output_mm_migrate_pages.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str }, %struct.trace_print_flags { i32 1, ptr @.str.1 }, %struct.trace_print_flags { i32 2, ptr @.str.2 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_mm_migrate_pages.symbols.24 = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.25 }, %struct.trace_print_flags { i32 1, ptr @.str.26 }, %struct.trace_print_flags { i32 2, ptr @.str.27 }, %struct.trace_print_flags { i32 3, ptr @.str.28 }, %struct.trace_print_flags { i32 4, ptr @.str.29 }, %struct.trace_print_flags { i32 5, ptr @.str.30 }, %struct.trace_print_flags { i32 6, ptr @.str.31 }, %struct.trace_print_flags { i32 7, ptr @.str.32 }, %struct.trace_print_flags { i32 8, ptr @.str.33 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"compaction\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"memory_failure\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"memory_hotplug\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"syscall_or_cpuset\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"mempolicy_mbind\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"numa_misplaced\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"contig_range\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"longterm_pin\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"demotion\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"mode=%s reason=%s\0A\00", align 1
@trace_raw_output_mm_migrate_pages_start.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str }, %struct.trace_print_flags { i32 1, ptr @.str.1 }, %struct.trace_print_flags { i32 2, ptr @.str.2 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_mm_migrate_pages_start.symbols.35 = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.25 }, %struct.trace_print_flags { i32 1, ptr @.str.26 }, %struct.trace_print_flags { i32 2, ptr @.str.27 }, %struct.trace_print_flags { i32 3, ptr @.str.28 }, %struct.trace_print_flags { i32 4, ptr @.str.29 }, %struct.trace_print_flags { i32 5, ptr @.str.30 }, %struct.trace_print_flags { i32 6, ptr @.str.31 }, %struct.trace_print_flags { i32 7, ptr @.str.32 }, %struct.trace_print_flags { i32 8, ptr @.str.33 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@move_to_new_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.writeout.wbc = private unnamed_addr constant { i32, i32, i64, i64, i32, i8, i8, [2 x i8] } { i32 1, i32 0, i64 0, i64 9223372036854775807, i32 0, i8 8, i8 0, [2 x i8] zeroinitializer }, align 8
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.37 = private unnamed_addr constant [20 x i8] c"mm/demotion:offline\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"mm/demotion:online\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.40 = private unnamed_addr constant [5 x i8] c"numa\00", align 1
@mm_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.41 = private unnamed_addr constant [33 x i8] c"\013failed to create numa kobject\0A\00", align 1
@numa_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @numa_attrs, ptr null }, align 4
@.str.42 = private unnamed_addr constant [33 x i8] c"\013failed to register numa group\0A\00", align 1
@numa_attrs = internal global [2 x ptr] [ptr @numa_demotion_enabled_attr, ptr null], align 4
@numa_demotion_enabled_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.43, i16 420 }, ptr @numa_demotion_enabled_show, ptr @numa_demotion_enabled_store }, align 4
@.str.43 = private unnamed_addr constant [17 x i8] c"demotion_enabled\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @TRACE_SYSTEM_MIGRATE_ASYNC, ptr @TRACE_SYSTEM_MIGRATE_SYNC, ptr @TRACE_SYSTEM_MIGRATE_SYNC_LIGHT, ptr @TRACE_SYSTEM_MR_COMPACTION, ptr @TRACE_SYSTEM_MR_CONTIG_RANGE, ptr @TRACE_SYSTEM_MR_DEMOTION, ptr @TRACE_SYSTEM_MR_LONGTERM_PIN, ptr @TRACE_SYSTEM_MR_MEMORY_FAILURE, ptr @TRACE_SYSTEM_MR_MEMORY_HOTPLUG, ptr @TRACE_SYSTEM_MR_MEMPOLICY_MBIND, ptr @TRACE_SYSTEM_MR_NUMA_MISPLACED, ptr @TRACE_SYSTEM_MR_SYSCALL, ptr @__TRACE_SYSTEM_MIGRATE_ASYNC, ptr @__TRACE_SYSTEM_MIGRATE_SYNC, ptr @__TRACE_SYSTEM_MIGRATE_SYNC_LIGHT, ptr @__TRACE_SYSTEM_MR_COMPACTION, ptr @__TRACE_SYSTEM_MR_CONTIG_RANGE, ptr @__TRACE_SYSTEM_MR_DEMOTION, ptr @__TRACE_SYSTEM_MR_LONGTERM_PIN, ptr @__TRACE_SYSTEM_MR_MEMORY_FAILURE, ptr @__TRACE_SYSTEM_MR_MEMORY_HOTPLUG, ptr @__TRACE_SYSTEM_MR_MEMPOLICY_MBIND, ptr @__TRACE_SYSTEM_MR_NUMA_MISPLACED, ptr @__TRACE_SYSTEM_MR_SYSCALL, ptr @__event_mm_migrate_pages, ptr @__event_mm_migrate_pages_start, ptr @__initcall__kmod_migrate__281_3301_migrate_on_reclaim_init7, ptr @__initcall__kmod_migrate__282_3362_numa_init_sysfs4, ptr @__ksymtab_buffer_migrate_page, ptr @__ksymtab_folio_migrate_copy, ptr @__ksymtab_folio_migrate_flags, ptr @__ksymtab_folio_migrate_mapping, ptr @__ksymtab_migrate_page, ptr @__tracepoint_mm_migrate_pages, ptr @__tracepoint_mm_migrate_pages_start, ptr @__tracepoint_ptr_mm_migrate_pages, ptr @__tracepoint_ptr_mm_migrate_pages_start, ptr @event_class_mm_migrate_pages, ptr @event_class_mm_migrate_pages_start, ptr @event_mm_migrate_pages, ptr @event_mm_migrate_pages_start], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_migrate_pages(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_migrate_pages, i32 0, i32 7), align 4
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_migrate_pages_start(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_migrate_pages_start, i32 0, i32 7), align 4
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
define internal void @trace_event_raw_event_mm_migrate_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
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
  br i1 %18, label %30, label %19

19:                                               ; preds = %17, %14, %8
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 36) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %20, i32 0, i32 1
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %20, i32 0, i32 2
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %20, i32 0, i32 3
  store i32 %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %20, i32 0, i32 4
  store i32 %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %20, i32 0, i32 5
  store i32 %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %20, i32 0, i32 6
  store i32 %6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %20, i32 0, i32 7
  store i32 %7, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #13
  br label %30

30:                                               ; preds = %22, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_migrate_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
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
  br i1 %24, label %48, label %25

25:                                               ; preds = %22, %8
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

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
  %39 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %26, i32 0, i32 1
  store i32 %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %26, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %26, i32 0, i32 3
  store i32 %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %26, i32 0, i32 4
  store i32 %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %26, i32 0, i32 5
  store i32 %5, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %26, i32 0, i32 6
  store i32 %6, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %26, i32 0, i32 7
  store i32 %7, ptr %45, align 4
  %46 = load i32, ptr %10, align 4
  %47 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 36, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %18, ptr noundef null) #13
  br label %48

48:                                               ; preds = %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_migrate_pages_start(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_migrate_pages_start(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %34 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %21, i32 0, i32 2
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
define dso_local i32 @isolate_movable_page(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #13, !srcloc !14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 0, i32 1, ptr elementtype(i32) %3) #13, !srcloc !15
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %77, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %8 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %60, !prof !10

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !10

18:                                               ; preds = %13
  %19 = add i32 %15, -1
  br label %22

20:                                               ; preds = %13
  %21 = ptrtoint ptr %0 to i32
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = inttoptr i32 %23 to ptr
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #13, !srcloc !14
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #13, !srcloc !17
  %30 = extractvalue { i32, i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60, !prof !10

33:                                               ; preds = %28
  %34 = tail call i32 @PageMovable(ptr noundef %0) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = load volatile i32, ptr %0, align 4
  %38 = and i32 %37, 262144
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = tail call ptr @page_mapping(ptr noundef %0) #13
  %42 = getelementptr inbounds %struct.address_space, ptr %41, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.address_space_operations, ptr %43, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = tail call zeroext i1 %45(ptr noundef %0, i32 noundef %1) #13
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load volatile i32, ptr %0, align 4
  %49 = and i32 %48, 262144
  %50 = icmp ne i32 %49, 0
  %51 = load i1, ptr @isolate_movable_page.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %56, !prof !11

54:                                               ; preds = %47
  store i1 true, ptr @isolate_movable_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 109, i32 noundef 9, ptr noundef null) #13
  %55 = load i32, ptr %0, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = phi i32 [ %55, %54 ], [ %48, %47 ]
  %58 = or i32 %57, 262144
  store i32 %58, ptr %0, align 4
  tail call void @unlock_page(ptr noundef %0) #13
  br label %77

59:                                               ; preds = %40, %36, %33
  tail call void @unlock_page(ptr noundef %0) #13
  br label %60

60:                                               ; preds = %59, %28, %22, %7
  %61 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65, !prof !10

65:                                               ; preds = %60
  %66 = add i32 %62, -1
  br label %69

67:                                               ; preds = %60
  %68 = ptrtoint ptr %0 to i32
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = inttoptr i32 %70 to ptr
  %72 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #13, !srcloc !14
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #13, !srcloc !20
  %74 = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  tail call void @__put_page(ptr noundef %71) #13
  br label %77

77:                                               ; preds = %76, %69, %56, %2
  %78 = phi i32 [ 0, %56 ], [ -16, %2 ], [ -16, %69 ], [ -16, %76 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PageMovable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %0) unnamed_addr #3 {
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
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !20
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #13
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @putback_movable_pages(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %45, label %4

4:                                                ; preds = %43, %1
  %5 = phi ptr [ %7, %43 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %11 = getelementptr i8, ptr %5, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %28, !prof !11

16:                                               ; preds = %4
  tail call fastcc void @lock_page(ptr noundef %6)
  %17 = tail call i32 @PageMovable(ptr noundef %6) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @page_mapping(ptr noundef %6) #13
  %21 = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.address_space_operations, ptr %22, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %6) #13
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, ptr %6, align 4
  %27 = and i32 %26, -262145
  store i32 %27, ptr %6, align 4
  tail call void @unlock_page(ptr noundef %6) #13
  tail call fastcc void @put_page(ptr noundef %6)
  br label %43

28:                                               ; preds = %4
  %29 = load volatile i32, ptr %5, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %28
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %28
  %35 = ptrtoint ptr %6 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = load volatile i32, ptr %38, align 4
  %40 = shl i32 %39, 12
  %41 = ashr i32 %40, 31
  %42 = add nsw i32 %41, 8
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %42, i32 noundef -1) #13
  tail call void @putback_lru_page(ptr noundef %6) #13
  br label %43

43:                                               ; preds = %36, %25
  %44 = icmp eq ptr %7, %0
  br i1 %44, label %45, label %4

45:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %0) unnamed_addr #3 {
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
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !14
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #13, !srcloc !17
  %18 = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %10
  tail call void @__folio_lock(ptr noundef %12) #13
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_lru_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @remove_migration_ptes(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rmap_walk_control, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rmap_walk_control, ptr %4, i32 0, i32 1
  store ptr @remove_migration_pte, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rmap_walk_control, ptr %4, i32 0, i32 2
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rmap_walk_control, ptr %4, i32 0, i32 3
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rmap_walk_control, ptr %4, i32 0, i32 4
  store ptr null, ptr %8, align 4
  br i1 %2, label %9, label %10

9:                                                ; preds = %3
  call void @rmap_walk_locked(ptr noundef %1, ptr noundef nonnull %4) #13
  br label %11

10:                                               ; preds = %3
  call void @rmap_walk(ptr noundef %1, ptr noundef nonnull %4) #13
  br label %11

11:                                               ; preds = %10, %9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @remove_migration_pte(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.page_vma_mapped_walk, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 2
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 4
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 5
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 6
  store i32 3, ptr %11, align 4
  %12 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #13
  br i1 %12, label %13, label %94

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  br label %18

18:                                               ; preds = %92, %13
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 0, %21
  %23 = getelementptr %struct.page, ptr %0, i32 %22
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %1, align 4
  %26 = sub i32 %24, %25
  %27 = lshr i32 %26, 12
  %28 = load i32, ptr %14, align 4
  %29 = add i32 %27, %28
  %30 = getelementptr %struct.page, ptr %23, i32 %29
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35, !prof !10

35:                                               ; preds = %18
  %36 = add i32 %32, -1
  %37 = ptrtoint ptr %30 to i32
  br label %40

38:                                               ; preds = %18
  %39 = ptrtoint ptr %30 to i32
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %37, %35 ], [ %39, %38 ]
  %42 = phi i32 [ %36, %35 ], [ %39, %38 ]
  %43 = inttoptr i32 %42 to ptr
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #13, !srcloc !14
  %45 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #13, !srcloc !22
  %46 = load ptr, ptr @mem_map, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = sub i32 %41, %47
  %49 = lshr exact i32 %48, 5
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %51 = add i32 %49, %50
  %52 = shl i32 %51, 12
  %53 = load volatile i32, ptr %15, align 4
  %54 = and i32 %53, -3
  %55 = or i32 %52, %54
  %56 = load ptr, ptr %9, align 4
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 124
  %59 = icmp eq i32 %58, 124
  br i1 %59, label %60, label %66

60:                                               ; preds = %40
  %61 = load i32, ptr %16, align 4
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %55, -131
  %65 = select i1 %63, i32 %55, i32 %64, !prof !11
  br label %66

66:                                               ; preds = %60, %40
  %67 = phi i32 [ %65, %60 ], [ %55, %40 ]
  %68 = load volatile i32, ptr %31, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !10

71:                                               ; preds = %66
  %72 = add i32 %68, -1
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi i32 [ %72, %71 ], [ %41, %66 ]
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr inbounds %struct.anon.97, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = load i32, ptr %7, align 4
  call void @page_add_anon_rmap(ptr noundef %30, ptr noundef %1, i32 noundef %82, i1 noundef zeroext false) #13
  br label %84

83:                                               ; preds = %73
  call void @page_add_file_rmap(ptr noundef %30, i1 noundef zeroext false) #13
  br label %84

84:                                               ; preds = %83, %81
  %85 = load ptr, ptr %17, align 4
  %86 = load i32, ptr %7, align 4
  %87 = load ptr, ptr %9, align 4
  call void @set_pte_at(ptr noundef %85, i32 noundef %86, ptr noundef %87, i32 noundef %67) #13
  %88 = load i32, ptr %16, align 4
  %89 = and i32 %88, 8192
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  call void @mlock_vma_page(ptr noundef %30) #13
  br label %92

92:                                               ; preds = %91, %84
  %93 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #13
  br i1 %93, label %18, label %94

94:                                               ; preds = %92, %4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmap_walk_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmap_walk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__migration_entry_wait(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef %2) #13
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 121
  %6 = icmp eq i32 %5, 120
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = shl i32 %4, 24
  %9 = and i32 %8, 2080374784
  %10 = lshr i32 %4, 7
  %11 = or i32 %9, %10
  %12 = insertvalue [1 x i32] poison, i32 %11, 0
  tail call void @migration_entry_wait_on_locked([1 x i32] %12, ptr noundef %1, ptr noundef %2) #13
  br label %20

13:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %14 = load i16, ptr %2, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  tail call void @kunmap_local_indexed(ptr noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %16 = tail call ptr @llvm.thread.pointer() #13
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 149
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  br label %20

20:                                               ; preds = %13, %7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @migration_entry_wait_on_locked([1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @migration_entry_wait(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @mem_map, align 4
  %5 = load i32, ptr %1, align 4
  %6 = lshr i32 %5, 12
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %8 = sub i32 %6, %7
  %9 = getelementptr %struct.page, ptr %4, i32 %8, i32 1, i32 0, i32 3
  %10 = getelementptr %struct.page, ptr %4, i32 %8
  %11 = load i32, ptr @pgprot_kernel, align 4
  %12 = or i32 %11, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %13 = tail call ptr @llvm.thread.pointer() #13
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 149
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %17 = tail call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %12) #13
  %18 = lshr i32 %2, 12
  %19 = and i32 %18, 511
  %20 = getelementptr i32, ptr %17, i32 %19
  tail call void @_raw_spin_lock(ptr noundef %9) #13
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 121
  %23 = icmp eq i32 %22, 120
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = shl i32 %21, 24
  %26 = and i32 %25, 2080374784
  %27 = lshr i32 %21, 7
  %28 = or i32 %26, %27
  %29 = insertvalue [1 x i32] poison, i32 %28, 0
  tail call void @migration_entry_wait_on_locked([1 x i32] %29, ptr noundef %20, ptr noundef %9) #13
  br label %35

30:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %31 = load i16, ptr %9, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  tail call void @kunmap_local_indexed(ptr noundef %20) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %33 = load i32, ptr %14, align 8
  %34 = add i32 %33, -1
  store i32 %34, ptr %14, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  br label %35

35:                                               ; preds = %30, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @migration_entry_wait_huge(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.anon.12, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %4) #13
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 121
  %7 = icmp eq i32 %6, 120
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = shl i32 %5, 24
  %10 = and i32 %9, 2080374784
  %11 = lshr i32 %5, 7
  %12 = or i32 %10, %11
  %13 = insertvalue [1 x i32] poison, i32 %12, 0
  tail call void @migration_entry_wait_on_locked([1 x i32] %13, ptr noundef %2, ptr noundef %4) #13
  br label %21

14:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %15 = load i16, ptr %4, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  tail call void @kunmap_local_indexed(ptr noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %17 = tail call ptr @llvm.thread.pointer() #13
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 149
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  br label %21

21:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @folio_migrate_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = load volatile i32, ptr %2, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !10

15:                                               ; preds = %11
  %16 = tail call i32 @__page_file_index(ptr noundef %2) #13
  br label %20

17:                                               ; preds = %11, %4
  %18 = getelementptr inbounds %struct.anon.97, ptr %2, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  store i32 %21, ptr %7, align 4
  %22 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %22, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %23, align 4
  %24 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %25, align 4
  %26 = icmp eq ptr %0, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %20
  %28 = load volatile i32, ptr %2, align 4
  %29 = and i32 %28, 65536
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr %struct.page, ptr %2, i32 1, i32 1, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ 1, %27 ]
  %36 = and i32 %28, 24576
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 2
  %39 = add i32 %35, %38
  br label %40

40:                                               ; preds = %34, %20
  %41 = phi i32 [ %39, %34 ], [ 1, %20 ]
  %42 = add i32 %41, %3
  %43 = load volatile i32, ptr %2, align 4
  %44 = and i32 %43, 65536
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = getelementptr %struct.page, ptr %2, i32 1, i32 1, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi i32 [ %48, %46 ], [ 1, %40 ]
  br i1 %26, label %51, label %68

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 3
  %53 = load volatile i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %42
  br i1 %54, label %55, label %160

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.anon.97, ptr %2, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.anon.97, ptr %1, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.anon.97, ptr %2, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.anon.97, ptr %1, i32 0, i32 2
  store ptr %60, ptr %61, align 4
  %62 = load volatile i32, ptr %2, align 4
  %63 = and i32 %62, 524288
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %160, label %65

65:                                               ; preds = %55
  %66 = load i32, ptr %1, align 4
  %67 = or i32 %66, 524288
  store i32 %67, ptr %1, align 4
  br label %160

68:                                               ; preds = %49
  %69 = lshr i32 %43, 30
  %70 = load i32, ptr %1, align 4
  %71 = lshr i32 %70, 30
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #13
  %72 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #13, !srcloc !14
  br label %73

73:                                               ; preds = %73, %68
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 %42, i32 0, ptr elementtype(i32) %72) #13, !srcloc !32
  %75 = extractvalue { i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %73

77:                                               ; preds = %73
  %78 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %69
  %79 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %71
  %80 = extractvalue { i32, i32 } %74, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %81 = icmp eq i32 %80, %42
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %83 = load i16, ptr %6, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %160

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.anon.97, ptr %2, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.anon.97, ptr %1, i32 0, i32 3
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.anon.97, ptr %2, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.anon.97, ptr %1, i32 0, i32 2
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #13, !srcloc !14
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 %50, ptr elementtype(i32) %92) #13, !srcloc !22
  %94 = load volatile i32, ptr %2, align 4
  %95 = and i32 %94, 524288
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %85
  %98 = load i32, ptr %1, align 4
  %99 = or i32 %98, 524288
  store i32 %99, ptr %1, align 4
  %100 = load volatile i32, ptr %2, align 4
  %101 = and i32 %100, 524288
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %97
  %104 = load volatile i32, ptr %2, align 4
  %105 = and i32 %104, 1024
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  tail call void @_set_bit(i32 noundef 10, ptr noundef %1) #13
  %108 = getelementptr inbounds %struct.anon.97, ptr %2, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.anon.97, ptr %1, i32 0, i32 4
  store ptr %109, ptr %110, align 4
  br label %111

111:                                              ; preds = %107, %103, %97, %85
  %112 = load volatile i32, ptr %2, align 4
  %113 = and i32 %112, 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %1) #13
  br label %116

116:                                              ; preds = %115, %111
  %117 = call ptr @xas_store(ptr noundef nonnull %5, ptr noundef %1) #13
  %118 = sub i32 %42, %50
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !36
  store volatile i32 %118, ptr %72, align 4
  %119 = load ptr, ptr %5, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %120 = load i16, ptr %119, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr %119, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %122 = icmp eq ptr %79, %78
  br i1 %122, label %159, label %123

123:                                              ; preds = %116
  %124 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %69, i32 4
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %71, i32 4
  %127 = load ptr, ptr %126, align 4
  %128 = sub i32 0, %50
  call void @__mod_node_page_state(ptr noundef %125, i32 noundef 19, i32 noundef %128) #13
  call void @__mod_node_page_state(ptr noundef %127, i32 noundef 19, i32 noundef %50) #13
  %129 = load volatile i32, ptr %2, align 4
  %130 = and i32 %129, 524288
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %123
  %133 = load volatile i32, ptr %2, align 4
  %134 = and i32 %133, 524288
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load volatile i32, ptr %2, align 4
  %138 = and i32 %137, 1024
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %132
  call void @__mod_node_page_state(ptr noundef %125, i32 noundef 23, i32 noundef %128) #13
  call void @__mod_node_page_state(ptr noundef %127, i32 noundef 23, i32 noundef %50) #13
  br label %141

141:                                              ; preds = %140, %136, %123
  %142 = load volatile i32, ptr %2, align 4
  %143 = and i32 %142, 524288
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = load volatile i32, ptr %2, align 4
  %147 = and i32 %146, 1024
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @__mod_node_page_state(ptr noundef %125, i32 noundef 39, i32 noundef %128) #13
  call void @__mod_node_page_state(ptr noundef %127, i32 noundef 39, i32 noundef %50) #13
  br label %150

150:                                              ; preds = %149, %145, %141
  br i1 %114, label %159, label %151

151:                                              ; preds = %150
  %152 = load ptr, ptr %0, align 4
  %153 = call ptr @inode_to_bdi(ptr noundef %152) #13
  %154 = getelementptr inbounds %struct.backing_dev_info, ptr %153, i32 0, i32 6
  %155 = load i32, ptr %154, align 8
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %151
  call void @__mod_node_page_state(ptr noundef %125, i32 noundef 20, i32 noundef %128) #13
  call void @__mod_zone_page_state(ptr noundef %78, i32 noundef 6, i32 noundef %128) #13
  call void @__mod_node_page_state(ptr noundef %127, i32 noundef 20, i32 noundef %50) #13
  call void @__mod_zone_page_state(ptr noundef %79, i32 noundef 6, i32 noundef %50) #13
  br label %159

159:                                              ; preds = %158, %151, %150, %116
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !34
  br label %160

160:                                              ; preds = %159, %82, %65, %55, %51
  %161 = phi i32 [ 0, %159 ], [ -11, %82 ], [ -11, %51 ], [ 0, %65 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret i32 %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @migrate_huge_page_move_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !10

11:                                               ; preds = %3
  %12 = add i32 %8, -1
  br label %15

13:                                               ; preds = %3
  %14 = ptrtoint ptr %2 to i32
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = inttoptr i32 %16 to ptr
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 524288
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load volatile i32, ptr %17, align 4
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !10

25:                                               ; preds = %21
  %26 = tail call i32 @__page_file_index(ptr noundef %2) #13
  br label %30

27:                                               ; preds = %21, %15
  %28 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  store i32 %31, ptr %6, align 4
  %32 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %33 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %32, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %33, align 4
  %34 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %35, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #13
  %36 = load i32, ptr %2, align 4
  %37 = and i32 %36, 24576
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 2, i32 3
  %40 = load volatile i32, ptr %7, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !10

43:                                               ; preds = %30
  %44 = add i32 %40, -1
  br label %47

45:                                               ; preds = %30
  %46 = ptrtoint ptr %2 to i32
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = inttoptr i32 %48 to ptr
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 3
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %39
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = call ptr @xas_load(ptr noundef nonnull %4) #13
  %55 = icmp eq ptr %54, %2
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %4, align 4
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi ptr [ %57, %56 ], [ %5, %47 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %60 = load i16, ptr %59, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %59, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %100

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #13, !srcloc !14
  br label %64

64:                                               ; preds = %64, %62
  %65 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 %39, i32 0, ptr elementtype(i32) %63) #13, !srcloc !32
  %66 = extractvalue { i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %64

68:                                               ; preds = %64
  %69 = extractvalue { i32, i32 } %65, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %70 = icmp eq i32 %69, %39
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %73 = load i16, ptr %72, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %100

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  store ptr %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86, !prof !10

86:                                               ; preds = %75
  %87 = add i32 %83, -1
  br label %90

88:                                               ; preds = %75
  %89 = ptrtoint ptr %1 to i32
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = inttoptr i32 %91 to ptr
  %93 = getelementptr inbounds %struct.page, ptr %92, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #13, !srcloc !14
  %94 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #13, !srcloc !22
  %95 = call ptr @xas_store(ptr noundef nonnull %4, ptr noundef %1) #13
  %96 = select i1 %38, i32 1, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !36
  store volatile i32 %96, ptr %63, align 4
  %97 = load ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %98 = load i16, ptr %97, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %97, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %100

100:                                              ; preds = %90, %71, %58
  %101 = phi i32 [ -11, %58 ], [ 0, %90 ], [ -11, %71 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_migrate_flags(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef 8, ptr noundef %0) #13
  br label %7

7:                                                ; preds = %6, %2
  %8 = load volatile i32, ptr %1, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %0) #13
  br label %12

12:                                               ; preds = %11, %7
  %13 = load volatile i32, ptr %1, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !38
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #13
  br label %17

17:                                               ; preds = %16, %12
  %18 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %1) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %1) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ 5, %17 ], [ 20, %20 ]
  tail call void @_set_bit(i32 noundef %24, ptr noundef %0) #13
  br label %25

25:                                               ; preds = %23, %20
  %26 = load volatile i32, ptr %1, align 4
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @_set_bit(i32 noundef 6, ptr noundef %0) #13
  br label %30

30:                                               ; preds = %29, %25
  %31 = load volatile i32, ptr %1, align 4
  %32 = and i32 %31, 1024
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @_set_bit(i32 noundef 10, ptr noundef %0) #13
  br label %35

35:                                               ; preds = %34, %30
  %36 = load volatile i32, ptr %1, align 4
  %37 = and i32 %36, 131072
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @_set_bit(i32 noundef 17, ptr noundef %0) #13
  br label %40

40:                                               ; preds = %39, %35
  %41 = load volatile i32, ptr %1, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @_set_bit(i32 noundef 3, ptr noundef %0) #13
  br label %45

45:                                               ; preds = %44, %40
  %46 = load volatile i32, ptr %1, align 4
  %47 = and i32 %46, 524288
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load volatile i32, ptr %1, align 4
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %1) #13
  br label %54

54:                                               ; preds = %53, %49, %45
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %1) #13
  %55 = getelementptr inbounds %struct.anon.97, ptr %1, i32 0, i32 4
  store ptr null, ptr %55, align 4
  %56 = load volatile i32, ptr %0, align 4
  %57 = and i32 %56, 32768
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void @folio_end_writeback(ptr noundef %0) #13
  br label %60

60:                                               ; preds = %59, %54
  %61 = load volatile i32, ptr %1, align 4
  %62 = and i32 %61, 262144
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @_set_bit(i32 noundef 18, ptr noundef %0) #13
  br label %65

65:                                               ; preds = %64, %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_end_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_migrate_copy(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @folio_copy(ptr noundef %0, ptr noundef %1) #13
  tail call void @folio_migrate_flags(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @migrate_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
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
  %16 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !10

20:                                               ; preds = %13
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %13
  %23 = ptrtoint ptr %2 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 32768
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !10

30:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #13, !srcloc !39
  unreachable

31:                                               ; preds = %24
  %32 = tail call i32 @folio_migrate_mapping(ptr noundef %0, ptr noundef %15, ptr noundef %26, i32 noundef 0)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = icmp eq i32 %3, 3
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call void @folio_copy(ptr noundef %15, ptr noundef %26) #13
  tail call void @folio_migrate_flags(ptr noundef %15, ptr noundef %26) #13
  br label %38

37:                                               ; preds = %34
  tail call void @folio_migrate_flags(ptr noundef %15, ptr noundef %26)
  br label %38

38:                                               ; preds = %37, %36, %31
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @buffer_migrate_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @__buffer_migrate_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__buffer_migrate_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = load volatile i32, ptr %2, align 4
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !10

14:                                               ; preds = %9
  %15 = add i32 %11, -1
  br label %18

16:                                               ; preds = %9
  %17 = ptrtoint ptr %1 to i32
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !10

25:                                               ; preds = %18
  %26 = add i32 %22, -1
  br label %29

27:                                               ; preds = %18
  %28 = ptrtoint ptr %2 to i32
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = inttoptr i32 %30 to ptr
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 32768
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !10

35:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #13, !srcloc !39
  unreachable

36:                                               ; preds = %29
  %37 = tail call i32 @folio_migrate_mapping(ptr noundef %0, ptr noundef %20, ptr noundef %31, i32 noundef 0) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %210

39:                                               ; preds = %36
  %40 = icmp eq i32 %3, 3
  br i1 %40, label %209, label %41

41:                                               ; preds = %39
  tail call void @folio_copy(ptr noundef %20, ptr noundef %31) #13
  br label %209

42:                                               ; preds = %5
  %43 = icmp eq ptr %0, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %42
  %45 = load volatile i32, ptr %2, align 4
  %46 = and i32 %45, 65536
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr %struct.page, ptr %2, i32 1, i32 1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i32 [ %50, %48 ], [ 1, %44 ]
  %53 = and i32 %45, 24576
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 1, i32 2
  %56 = add i32 %52, %55
  br label %57

57:                                               ; preds = %51, %42
  %58 = phi i32 [ %56, %51 ], [ 1, %42 ]
  %59 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !10

63:                                               ; preds = %57
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %57
  %66 = ptrtoint ptr %2 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  %71 = load volatile i32, ptr %70, align 4
  %72 = icmp eq i32 %71, %58
  br i1 %72, label %73, label %210

73:                                               ; preds = %67
  %74 = load volatile i32, ptr %2, align 4
  %75 = and i32 %74, 8192
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78, !prof !11

77:                                               ; preds = %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 681, 0\0A.popsection", ""() #13, !srcloc !40
  unreachable

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = inttoptr i32 %80 to ptr
  %82 = icmp eq i32 %3, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %94, %78
  %84 = phi ptr [ %96, %94 ], [ %81, %78 ]
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #13, !srcloc !14
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 4, ptr elementtype(i32) %84) #13, !srcloc !17
  %90 = extractvalue { i32, i32, i32 } %89, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %91 = and i32 %90, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88, %83
  tail call void @__lock_buffer(ptr noundef %84) #13
  br label %94

94:                                               ; preds = %93, %88
  %95 = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %81
  br i1 %97, label %119, label %83

98:                                               ; preds = %115, %78
  %99 = phi ptr [ %117, %115 ], [ %81, %78 ]
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %100, 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #13, !srcloc !14
  %104 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 4, ptr elementtype(i32) %99) #13, !srcloc !17
  %105 = extractvalue { i32, i32, i32 } %104, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %103, %98
  %109 = icmp eq ptr %99, %81
  br i1 %109, label %210, label %110

110:                                              ; preds = %110, %108
  %111 = phi ptr [ %113, %110 ], [ %81, %108 ]
  tail call void @unlock_buffer(ptr noundef %111) #13
  %112 = getelementptr inbounds %struct.buffer_head, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %99
  br i1 %114, label %210, label %110

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.buffer_head, ptr %99, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, %81
  br i1 %118, label %119, label %98

119:                                              ; preds = %115, %94
  br i1 %4, label %120, label %143

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %121) #13
  br label %122

122:                                              ; preds = %127, %120
  %123 = phi ptr [ %81, %120 ], [ %129, %127 ]
  %124 = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 11
  %125 = load volatile i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, %81
  br i1 %130, label %143, label %122

131:                                              ; preds = %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %132 = load i16, ptr %121, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %121, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  tail call void @invalidate_bh_lrus() #13
  tail call void @_raw_spin_lock(ptr noundef %121) #13
  br label %134

134:                                              ; preds = %139, %131
  %135 = phi ptr [ %81, %131 ], [ %141, %139 ]
  %136 = getelementptr inbounds %struct.buffer_head, ptr %135, i32 0, i32 11
  %137 = load volatile i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %197

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.buffer_head, ptr %135, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %81
  br i1 %142, label %143, label %134

143:                                              ; preds = %139, %127, %119
  %144 = tail call i32 @migrate_page_move_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %197

146:                                              ; preds = %143
  %147 = load volatile i32, ptr %59, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150, !prof !10

150:                                              ; preds = %146
  %151 = add i32 %147, -1
  br label %154

152:                                              ; preds = %146
  %153 = ptrtoint ptr %2 to i32
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = inttoptr i32 %155 to ptr
  %157 = getelementptr inbounds %struct.anon.97, ptr %156, i32 0, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = load volatile i32, ptr %156, align 4
  %160 = and i32 %159, 8192
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %154
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %156) #13
  store ptr null, ptr %157, align 4
  %163 = getelementptr inbounds %struct.page, ptr %156, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %163) #13, !srcloc !14
  %164 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %163, ptr %163, i32 1, ptr elementtype(i32) %163) #13, !srcloc !20
  %165 = extractvalue { i32, i32 } %164, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  tail call void @__put_page(ptr noundef %156) #13
  br label %168

168:                                              ; preds = %167, %162, %154
  %169 = phi ptr [ null, %154 ], [ %158, %162 ], [ %158, %167 ]
  %170 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174, !prof !10

174:                                              ; preds = %168
  %175 = add i32 %171, -1
  br label %178

176:                                              ; preds = %168
  %177 = ptrtoint ptr %1 to i32
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = inttoptr i32 %179 to ptr
  %181 = getelementptr inbounds %struct.page, ptr %180, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %181) #13, !srcloc !14
  %182 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %181, ptr %181, i32 1, ptr elementtype(i32) %181) #13, !srcloc !22
  %183 = getelementptr inbounds %struct.anon.97, ptr %180, i32 0, i32 4
  store ptr %169, ptr %183, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %180) #13
  br label %184

184:                                              ; preds = %184, %178
  %185 = phi ptr [ %81, %178 ], [ %191, %184 ]
  %186 = getelementptr inbounds %struct.buffer_head, ptr %185, i32 0, i32 5
  %187 = load ptr, ptr %186, align 4
  %188 = ptrtoint ptr %187 to i32
  %189 = and i32 %188, 4095
  tail call void @set_bh_page(ptr noundef %185, ptr noundef %1, i32 noundef %189) #13
  %190 = getelementptr inbounds %struct.buffer_head, ptr %185, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, %81
  br i1 %192, label %193, label %184

193:                                              ; preds = %184
  %194 = icmp eq i32 %3, 3
  br i1 %194, label %196, label %195

195:                                              ; preds = %193
  tail call void @migrate_page_copy(ptr noundef %1, ptr noundef %2) #13
  br label %197

196:                                              ; preds = %193
  tail call void @migrate_page_states(ptr noundef %1, ptr noundef %2) #13
  br label %197

197:                                              ; preds = %196, %195, %143, %134
  %198 = phi i32 [ %144, %143 ], [ 0, %196 ], [ 0, %195 ], [ -11, %134 ]
  br i1 %4, label %199, label %203

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %201 = load i16, ptr %200, align 4
  %202 = add i16 %201, 1
  store i16 %202, ptr %200, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %203

203:                                              ; preds = %199, %197
  br label %204

204:                                              ; preds = %204, %203
  %205 = phi ptr [ %207, %204 ], [ %81, %203 ]
  tail call void @unlock_buffer(ptr noundef %205) #13
  %206 = getelementptr inbounds %struct.buffer_head, ptr %205, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, %81
  br i1 %208, label %210, label %204

209:                                              ; preds = %41, %39
  tail call void @folio_migrate_flags(ptr noundef %20, ptr noundef %31) #13
  br label %210

210:                                              ; preds = %209, %204, %110, %108, %67, %36
  %211 = phi i32 [ -11, %67 ], [ %37, %36 ], [ -11, %108 ], [ 0, %209 ], [ %198, %204 ], [ -11, %110 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @buffer_migrate_page_norefs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @__buffer_migrate_page(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @migrate_pages(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.rmap_walk_control, align 4
  %9 = alloca %struct.list_head, align 8
  %10 = alloca %struct.list_head, align 8
  %11 = tail call ptr @llvm.thread.pointer() #13
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 8388608
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store ptr %9, ptr %9, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  store ptr %10, ptr %10, align 8
  %16 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %10, ptr %16, align 4
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_migrate_pages_start, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_migrate_pages_start, i32 0, i32 7), align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %32, %29
  %33 = phi ptr [ %37, %32 ], [ %30, %29 ]
  %34 = load volatile ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tracepoint_func, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  call void %34(ptr noundef %36, i32 noundef %4, i32 noundef %5) #13
  %37 = getelementptr %struct.tracepoint_func, ptr %33, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32

40:                                               ; preds = %32, %29
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !42
  br label %41

41:                                               ; preds = %40, %19, %7
  %42 = icmp eq i32 %14, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, ptr %12, align 4
  %45 = or i32 %44, 8388608
  store i32 %45, ptr %12, align 4
  br label %46

46:                                               ; preds = %43, %41
  %47 = icmp ne i32 %4, 0
  %48 = and i32 %4, -2
  %49 = icmp ne i32 %48, 2
  %50 = select i1 %49, i32 -16, i32 -11
  %51 = getelementptr inbounds %struct.rmap_walk_control, ptr %8, i32 0, i32 1
  %52 = getelementptr inbounds %struct.rmap_walk_control, ptr %8, i32 0, i32 2
  %53 = getelementptr inbounds %struct.rmap_walk_control, ptr %8, i32 0, i32 3
  %54 = getelementptr inbounds %struct.rmap_walk_control, ptr %8, i32 0, i32 4
  %55 = icmp eq ptr %2, null
  %56 = icmp eq i32 %5, 1
  %57 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  br label %58

58:                                               ; preds = %429, %46
  %59 = phi i32 [ 1, %46 ], [ 0, %429 ]
  %60 = phi i32 [ 0, %46 ], [ %411, %429 ]
  %61 = phi i32 [ 0, %46 ], [ %412, %429 ]
  %62 = phi i32 [ 0, %46 ], [ %415, %429 ]
  br label %63

63:                                               ; preds = %403, %58
  %64 = phi i32 [ 1, %58 ], [ %407, %403 ]
  %65 = phi i32 [ %59, %58 ], [ 0, %403 ]
  %66 = phi i32 [ %62, %58 ], [ %406, %403 ]
  %67 = phi i32 [ %61, %58 ], [ %405, %403 ]
  %68 = phi i32 [ %60, %58 ], [ %404, %403 ]
  %69 = phi i32 [ 0, %58 ], [ %408, %403 ]
  %70 = or i32 %64, %65
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %410, label %72

72:                                               ; preds = %63
  %73 = load ptr, ptr %0, align 4
  %74 = icmp eq ptr %73, %0
  br i1 %74, label %403, label %75

75:                                               ; preds = %72
  %76 = icmp ugt i32 %69, 2
  %77 = and i1 %47, %76
  %78 = xor i1 %76, true
  %79 = select i1 %49, i1 true, i1 %78
  br label %80

80:                                               ; preds = %397, %75
  %81 = phi i32 [ 0, %75 ], [ %401, %397 ]
  %82 = phi i32 [ %66, %75 ], [ %400, %397 ]
  %83 = phi i32 [ %67, %75 ], [ %399, %397 ]
  %84 = phi i32 [ %68, %75 ], [ %398, %397 ]
  %85 = phi ptr [ %73, %75 ], [ %87, %397 ]
  %86 = getelementptr i8, ptr %85, i32 -4
  %87 = load ptr, ptr %85, align 4
  %88 = load volatile i32, ptr %86, align 4
  %89 = and i32 %88, 65536
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %80
  %92 = getelementptr i8, ptr %85, i32 44
  %93 = load i32, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %80
  %95 = phi i32 [ %93, %91 ], [ 1, %80 ]
  %96 = call i32 @__cond_resched() #13
  %97 = load volatile i32, ptr %85, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100, !prof !10

100:                                              ; preds = %94
  %101 = add i32 %97, -1
  br label %104

102:                                              ; preds = %94
  %103 = ptrtoint ptr %86 to i32
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = inttoptr i32 %105 to ptr
  %107 = getelementptr inbounds %struct.page, ptr %106, i32 0, i32 3
  %108 = load volatile i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %163

110:                                              ; preds = %104
  %111 = load volatile i32, ptr %85, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114, !prof !10

114:                                              ; preds = %110
  %115 = add i32 %111, -1
  br label %118

116:                                              ; preds = %110
  %117 = ptrtoint ptr %86 to i32
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = inttoptr i32 %119 to ptr
  call void @_clear_bit(i32 noundef 5, ptr noundef %120) #13
  %121 = load volatile i32, ptr %85, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124, !prof !10

124:                                              ; preds = %118
  %125 = add i32 %121, -1
  br label %128

126:                                              ; preds = %118
  %127 = ptrtoint ptr %86 to i32
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = inttoptr i32 %129 to ptr
  call void @_clear_bit(i32 noundef 20, ptr noundef %130) #13
  %131 = getelementptr i8, ptr %85, i32 8
  %132 = load ptr, ptr %131, align 4
  %133 = ptrtoint ptr %132 to i32
  %134 = and i32 %133, 3
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %315, !prof !11

136:                                              ; preds = %128
  %137 = load volatile i32, ptr %85, align 4
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140, !prof !10

140:                                              ; preds = %136
  %141 = add i32 %137, -1
  br label %144

142:                                              ; preds = %136
  %143 = ptrtoint ptr %86 to i32
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = inttoptr i32 %145 to ptr
  %147 = load volatile i32, ptr %146, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %146) #13, !srcloc !14
  %151 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %146, ptr %146, i32 1, ptr elementtype(i32) %146) #13, !srcloc !17
  %152 = extractvalue { i32, i32, i32 } %151, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150, %144
  call void @__folio_lock(ptr noundef %146) #13
  br label %156

156:                                              ; preds = %155, %150
  %157 = call i32 @PageMovable(ptr noundef %86) #13
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, ptr %86, align 4
  %161 = and i32 %160, -262145
  store i32 %161, ptr %86, align 4
  br label %162

162:                                              ; preds = %159, %156
  call void @unlock_page(ptr noundef %86) #13
  br label %315

163:                                              ; preds = %104
  %164 = call ptr %1(ptr noundef %86, i32 noundef %3) #13
  %165 = icmp eq ptr %164, null
  br i1 %165, label %388, label %166

166:                                              ; preds = %163
  %167 = getelementptr i8, ptr %85, i32 8
  %168 = load ptr, ptr %167, align 4
  %169 = ptrtoint ptr %168 to i32
  %170 = and i32 %169, 3
  %171 = icmp eq i32 %170, 2
  %172 = load volatile i32, ptr %85, align 4
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175, !prof !10

175:                                              ; preds = %166
  %176 = add i32 %172, -1
  br label %179

177:                                              ; preds = %166
  %178 = ptrtoint ptr %86 to i32
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = inttoptr i32 %180 to ptr
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %181) #13, !srcloc !14
  %186 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %181, ptr %181, i32 1, ptr elementtype(i32) %181) #13, !srcloc !17
  %187 = extractvalue { i32, i32, i32 } %186, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %188 = and i32 %187, 1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %215, label %190

190:                                              ; preds = %185, %179
  br i1 %77, label %191, label %363

191:                                              ; preds = %190
  %192 = load i32, ptr %12, align 4
  %193 = and i32 %192, 2048
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %363

195:                                              ; preds = %191
  %196 = load volatile i32, ptr %85, align 4
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199, !prof !10

199:                                              ; preds = %195
  %200 = add i32 %196, -1
  br label %203

201:                                              ; preds = %195
  %202 = ptrtoint ptr %86 to i32
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  %205 = inttoptr i32 %204 to ptr
  %206 = load volatile i32, ptr %205, align 4
  %207 = and i32 %206, 1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %205) #13, !srcloc !14
  %210 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %205, ptr %205, i32 1, ptr elementtype(i32) %205) #13, !srcloc !17
  %211 = extractvalue { i32, i32, i32 } %210, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %209, %203
  call void @__folio_lock(ptr noundef %205) #13
  br label %215

215:                                              ; preds = %214, %209, %185
  %216 = load volatile i32, ptr %85, align 4
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219, !prof !10

219:                                              ; preds = %215
  %220 = add i32 %216, -1
  br label %223

221:                                              ; preds = %215
  %222 = ptrtoint ptr %86 to i32
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i32 [ %220, %219 ], [ %222, %221 ]
  %225 = inttoptr i32 %224 to ptr
  %226 = load volatile i32, ptr %225, align 4
  %227 = and i32 %226, 32768
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %223
  br i1 %79, label %297, label %230

230:                                              ; preds = %229
  call void @wait_on_page_writeback(ptr noundef %86) #13
  br label %231

231:                                              ; preds = %230, %223
  %232 = load volatile i32, ptr %85, align 4
  %233 = and i32 %232, 1
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235, !prof !10

235:                                              ; preds = %231
  %236 = add i32 %232, -1
  br label %239

237:                                              ; preds = %231
  %238 = ptrtoint ptr %86 to i32
  br label %239

239:                                              ; preds = %237, %235
  %240 = phi i32 [ %236, %235 ], [ %238, %237 ]
  %241 = inttoptr i32 %240 to ptr
  %242 = getelementptr inbounds %struct.anon.97, ptr %241, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  %244 = ptrtoint ptr %243 to i32
  %245 = and i32 %244, 1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %239
  %248 = call ptr @page_get_anon_vma(ptr noundef %86) #13
  br label %249

249:                                              ; preds = %247, %239
  %250 = phi ptr [ %248, %247 ], [ null, %239 ]
  %251 = getelementptr inbounds %struct.page, ptr %164, i32 0, i32 1
  %252 = load volatile i32, ptr %251, align 4
  %253 = and i32 %252, 1
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255, !prof !10

255:                                              ; preds = %249
  %256 = add i32 %252, -1
  br label %259

257:                                              ; preds = %249
  %258 = ptrtoint ptr %164 to i32
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i32 [ %256, %255 ], [ %258, %257 ]
  %261 = inttoptr i32 %260 to ptr
  %262 = load volatile i32, ptr %261, align 4
  %263 = and i32 %262, 1
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %298

265:                                              ; preds = %259
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %261) #13, !srcloc !14
  %266 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %261, ptr %261, i32 1, ptr elementtype(i32) %261) #13, !srcloc !17
  %267 = extractvalue { i32, i32, i32 } %266, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %268 = and i32 %267, 1
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %298, !prof !10

270:                                              ; preds = %265
  br i1 %171, label %271, label %273, !prof !11

271:                                              ; preds = %270
  %272 = call fastcc i32 @move_to_new_page(ptr noundef nonnull %164, ptr noundef %86, i32 noundef %4) #13
  br label %295

273:                                              ; preds = %270
  %274 = load ptr, ptr %167, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %282

276:                                              ; preds = %273
  %277 = load i32, ptr %86, align 4
  %278 = and i32 %277, 24576
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %276
  %281 = call i32 @try_to_free_buffers(ptr noundef %86) #13
  br label %295

282:                                              ; preds = %273
  %283 = call zeroext i1 @page_mapped(ptr noundef %86) #13
  br i1 %283, label %284, label %285

284:                                              ; preds = %282
  call void @try_to_migrate(ptr noundef %86, i32 noundef 0) #13
  br label %285

285:                                              ; preds = %284, %282, %276
  %286 = phi i1 [ true, %284 ], [ false, %282 ], [ false, %276 ]
  %287 = call zeroext i1 @page_mapped(ptr noundef %86) #13
  br i1 %287, label %290, label %288

288:                                              ; preds = %285
  %289 = call fastcc i32 @move_to_new_page(ptr noundef nonnull %164, ptr noundef %86, i32 noundef %4) #13
  br label %290

290:                                              ; preds = %288, %285
  %291 = phi i32 [ -11, %285 ], [ %289, %288 ]
  br i1 %286, label %292, label %295

292:                                              ; preds = %290
  %293 = icmp eq i32 %291, 0
  %294 = select i1 %293, ptr %164, ptr %86
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #13
  store ptr %86, ptr %8, align 4
  store ptr @remove_migration_pte, ptr %51, align 4
  store ptr null, ptr %52, align 4
  store ptr null, ptr %53, align 4
  store ptr null, ptr %54, align 4
  call void @rmap_walk(ptr noundef %294, ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #13
  br label %295

295:                                              ; preds = %292, %290, %280, %271
  %296 = phi i32 [ %272, %271 ], [ %291, %292 ], [ %291, %290 ], [ -11, %280 ]
  call void @unlock_page(ptr noundef nonnull %164) #13
  br label %298

297:                                              ; preds = %229
  call void @unlock_page(ptr noundef %86) #13
  br label %312

298:                                              ; preds = %295, %265, %259
  %299 = phi i32 [ -11, %265 ], [ %296, %295 ], [ -11, %259 ]
  %300 = icmp eq ptr %250, null
  br i1 %300, label %307, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.anon_vma, ptr %250, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %302) #13, !srcloc !14
  %303 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %302, ptr %302, i32 1, ptr elementtype(i32) %302) #13, !srcloc !20
  %304 = extractvalue { i32, i32 } %303, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  call void @__put_anon_vma(ptr noundef nonnull %250) #13
  br label %307

307:                                              ; preds = %306, %301, %298
  call void @unlock_page(ptr noundef %86) #13
  %308 = icmp eq i32 %299, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %307
  br i1 %171, label %310, label %311, !prof !11

310:                                              ; preds = %309
  call fastcc void @put_page(ptr noundef nonnull %164) #13
  br label %315

311:                                              ; preds = %309
  call void @putback_lru_page(ptr noundef nonnull %164) #13
  br label %315

312:                                              ; preds = %307, %297
  %313 = phi i32 [ %50, %297 ], [ %299, %307 ]
  %314 = icmp eq i32 %313, -11
  br i1 %314, label %363, label %315

315:                                              ; preds = %312, %311, %310, %162, %128
  %316 = phi ptr [ %164, %312 ], [ %164, %310 ], [ %164, %311 ], [ null, %128 ], [ null, %162 ]
  %317 = phi i32 [ %313, %312 ], [ 0, %310 ], [ 0, %311 ], [ 0, %128 ], [ 0, %162 ]
  %318 = getelementptr i8, ptr %85, i32 4
  %319 = load ptr, ptr %318, align 4
  %320 = load ptr, ptr %85, align 4
  %321 = getelementptr inbounds %struct.list_head, ptr %320, i32 0, i32 1
  store ptr %319, ptr %321, align 4
  store volatile ptr %320, ptr %319, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %85, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %318, align 4
  %322 = icmp eq i32 %317, 0
  br i1 %322, label %323, label %361

323:                                              ; preds = %315
  %324 = getelementptr i8, ptr %85, i32 8
  %325 = load ptr, ptr %324, align 4
  %326 = ptrtoint ptr %325 to i32
  %327 = and i32 %326, 3
  %328 = icmp eq i32 %327, 2
  br i1 %328, label %344, label %329, !prof !11

329:                                              ; preds = %323
  %330 = load volatile i32, ptr %85, align 4
  %331 = and i32 %330, 1
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %335, label %333, !prof !10

333:                                              ; preds = %329
  %334 = add i32 %330, -1
  br label %337

335:                                              ; preds = %329
  %336 = ptrtoint ptr %86 to i32
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi i32 [ %334, %333 ], [ %336, %335 ]
  %339 = inttoptr i32 %338 to ptr
  %340 = load volatile i32, ptr %339, align 4
  %341 = shl i32 %340, 12
  %342 = ashr i32 %341, 31
  %343 = add nsw i32 %342, 8
  call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %343, i32 noundef -1) #13
  br label %344

344:                                              ; preds = %337, %323
  br i1 %56, label %392, label %345

345:                                              ; preds = %344
  %346 = load volatile i32, ptr %85, align 4
  %347 = and i32 %346, 1
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %351, label %349, !prof !10

349:                                              ; preds = %345
  %350 = add i32 %346, -1
  br label %353

351:                                              ; preds = %345
  %352 = ptrtoint ptr %86 to i32
  br label %353

353:                                              ; preds = %351, %349
  %354 = phi i32 [ %350, %349 ], [ %352, %351 ]
  %355 = inttoptr i32 %354 to ptr
  %356 = getelementptr inbounds %struct.page, ptr %355, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %356) #13, !srcloc !14
  %357 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %356, ptr %356, i32 1, ptr elementtype(i32) %356) #13, !srcloc !20
  %358 = extractvalue { i32, i32 } %357, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %392

360:                                              ; preds = %353
  call void @__put_page(ptr noundef %355) #13
  br label %392

361:                                              ; preds = %315
  %362 = load ptr, ptr %15, align 4
  store ptr %85, ptr %15, align 4
  store ptr %9, ptr %85, align 4
  store ptr %362, ptr %318, align 4
  store volatile ptr %85, ptr %362, align 4
  br label %363

363:                                              ; preds = %361, %312, %191, %190
  %364 = phi ptr [ %316, %361 ], [ %164, %190 ], [ %164, %191 ], [ %164, %312 ]
  %365 = phi i32 [ %317, %361 ], [ -11, %190 ], [ -11, %191 ], [ -11, %312 ]
  br i1 %55, label %367, label %366

366:                                              ; preds = %363
  call void %2(ptr noundef %364, i32 noundef %3) #13
  br label %384

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.page, ptr %364, i32 0, i32 1
  %369 = load volatile i32, ptr %368, align 4
  %370 = and i32 %369, 1
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %374, label %372, !prof !10

372:                                              ; preds = %367
  %373 = add i32 %369, -1
  br label %376

374:                                              ; preds = %367
  %375 = ptrtoint ptr %364 to i32
  br label %376

376:                                              ; preds = %374, %372
  %377 = phi i32 [ %373, %372 ], [ %375, %374 ]
  %378 = inttoptr i32 %377 to ptr
  %379 = getelementptr inbounds %struct.page, ptr %378, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %379) #13, !srcloc !14
  %380 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %379, ptr %379, i32 1, ptr elementtype(i32) %379) #13, !srcloc !20
  %381 = extractvalue { i32, i32 } %380, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %376
  call void @__put_page(ptr noundef %378) #13
  br label %384

384:                                              ; preds = %383, %376, %366
  switch i32 %365, label %394 [
    i32 -38, label %385
    i32 -12, label %388
    i32 -11, label %390
  ]

385:                                              ; preds = %384
  %386 = add i32 %82, %59
  %387 = add i32 %95, %83
  br label %397

388:                                              ; preds = %384, %163
  %389 = add i32 %95, %83
  br label %433

390:                                              ; preds = %384
  %391 = add i32 %81, 1
  br label %397

392:                                              ; preds = %360, %353, %344
  %393 = add i32 %95, %84
  br label %397

394:                                              ; preds = %384
  %395 = add i32 %82, %59
  %396 = add i32 %95, %83
  br label %397

397:                                              ; preds = %394, %392, %390, %385
  %398 = phi i32 [ %84, %394 ], [ %393, %392 ], [ %84, %390 ], [ %84, %385 ]
  %399 = phi i32 [ %396, %394 ], [ %83, %392 ], [ %83, %390 ], [ %387, %385 ]
  %400 = phi i32 [ %395, %394 ], [ %82, %392 ], [ %82, %390 ], [ %386, %385 ]
  %401 = phi i32 [ %81, %394 ], [ %81, %392 ], [ %391, %390 ], [ %81, %385 ]
  %402 = icmp eq ptr %87, %0
  br i1 %402, label %403, label %80

403:                                              ; preds = %397, %72
  %404 = phi i32 [ %68, %72 ], [ %398, %397 ]
  %405 = phi i32 [ %67, %72 ], [ %399, %397 ]
  %406 = phi i32 [ %66, %72 ], [ %400, %397 ]
  %407 = phi i32 [ 0, %72 ], [ %401, %397 ]
  %408 = add nuw nsw i32 %69, 1
  %409 = icmp eq i32 %408, 10
  br i1 %409, label %410, label %63

410:                                              ; preds = %403, %63
  %411 = phi i32 [ %404, %403 ], [ %68, %63 ]
  %412 = phi i32 [ %405, %403 ], [ %67, %63 ]
  %413 = phi i32 [ %406, %403 ], [ %66, %63 ]
  %414 = phi i32 [ %407, %403 ], [ 0, %63 ]
  %415 = add i32 %414, %413
  %416 = load volatile ptr, ptr %10, align 8
  %417 = icmp eq ptr %416, %10
  br i1 %417, label %433, label %418

418:                                              ; preds = %410
  %419 = load volatile ptr, ptr %0, align 4
  %420 = icmp eq ptr %419, %0
  br i1 %420, label %426, label %421

421:                                              ; preds = %418
  %422 = load ptr, ptr %9, align 8
  %423 = load ptr, ptr %57, align 4
  %424 = getelementptr inbounds %struct.list_head, ptr %419, i32 0, i32 1
  store ptr %9, ptr %424, align 4
  store ptr %419, ptr %9, align 8
  store ptr %422, ptr %423, align 4
  %425 = getelementptr inbounds %struct.list_head, ptr %422, i32 0, i32 1
  store ptr %423, ptr %425, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %57, align 4
  br label %426

426:                                              ; preds = %421, %418
  %427 = load volatile ptr, ptr %10, align 8
  %428 = icmp eq ptr %427, %10
  br i1 %428, label %429, label %430

429:                                              ; preds = %430, %426
  br label %58

430:                                              ; preds = %426
  %431 = load ptr, ptr %16, align 4
  %432 = getelementptr inbounds %struct.list_head, ptr %427, i32 0, i32 1
  store ptr %0, ptr %432, align 4
  store ptr %427, ptr %0, align 4
  store ptr %0, ptr %431, align 4
  store ptr %431, ptr %57, align 4
  store volatile ptr %10, ptr %10, align 8
  store ptr %10, ptr %16, align 4
  br label %429

433:                                              ; preds = %410, %388
  %434 = phi i32 [ -12, %388 ], [ %415, %410 ]
  %435 = phi i32 [ %84, %388 ], [ %411, %410 ]
  %436 = phi i32 [ %389, %388 ], [ %412, %410 ]
  %437 = load volatile ptr, ptr %9, align 8
  %438 = icmp eq ptr %437, %9
  br i1 %438, label %444, label %439

439:                                              ; preds = %433
  %440 = load ptr, ptr %0, align 4
  %441 = load ptr, ptr %15, align 4
  %442 = getelementptr inbounds %struct.list_head, ptr %437, i32 0, i32 1
  store ptr %0, ptr %442, align 4
  store ptr %437, ptr %0, align 4
  store ptr %440, ptr %441, align 4
  %443 = getelementptr inbounds %struct.list_head, ptr %440, i32 0, i32 1
  store ptr %441, ptr %443, align 4
  br label %444

444:                                              ; preds = %439, %433
  %445 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %446 = call i32 @llvm.read_register.i32(metadata !0) #13
  %447 = inttoptr i32 %446 to ptr
  %448 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %447) #7, !srcloc !12
  %449 = add i32 %448, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 46) to i32)
  %450 = inttoptr i32 %449 to ptr
  %451 = load i32, ptr %450, align 4
  %452 = add i32 %451, %435
  store i32 %452, ptr %450, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %445) #13, !srcloc !44
  %453 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %454 = call i32 @llvm.read_register.i32(metadata !0) #13
  %455 = inttoptr i32 %454 to ptr
  %456 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %455) #7, !srcloc !12
  %457 = add i32 %456, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 47) to i32)
  %458 = inttoptr i32 %457 to ptr
  %459 = load i32, ptr %458, align 4
  %460 = add i32 %459, %436
  store i32 %460, ptr %458, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %453) #13, !srcloc !44
  %461 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %462 = call i32 @llvm.read_register.i32(metadata !0) #13
  %463 = inttoptr i32 %462 to ptr
  %464 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %463) #7, !srcloc !12
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %461) #13, !srcloc !44
  %465 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %466 = call i32 @llvm.read_register.i32(metadata !0) #13
  %467 = inttoptr i32 %466 to ptr
  %468 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %467) #7, !srcloc !12
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %465) #13, !srcloc !44
  %469 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !43
  %470 = call i32 @llvm.read_register.i32(metadata !0) #13
  %471 = inttoptr i32 %470 to ptr
  %472 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %471) #7, !srcloc !12
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %469) #13, !srcloc !44
  %473 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_migrate_pages, i32 0, i32 1), align 4
  %474 = icmp sgt i32 %473, 0
  br i1 %474, label %475, label %497

475:                                              ; preds = %444
  %476 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %477 = load i32, ptr %476, align 8
  %478 = lshr i32 %477, 5
  %479 = getelementptr i32, ptr @__cpu_online_mask, i32 %478
  %480 = load volatile i32, ptr %479, align 4
  %481 = and i32 %477, 31
  %482 = shl nuw i32 1, %481
  %483 = and i32 %482, %480
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %497, label %485

485:                                              ; preds = %475
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !45
  %486 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_migrate_pages, i32 0, i32 7), align 4
  %487 = icmp eq ptr %486, null
  br i1 %487, label %496, label %488

488:                                              ; preds = %488, %485
  %489 = phi ptr [ %493, %488 ], [ %486, %485 ]
  %490 = load volatile ptr, ptr %489, align 4
  %491 = getelementptr inbounds %struct.tracepoint_func, ptr %489, i32 0, i32 1
  %492 = load ptr, ptr %491, align 4
  call void %490(ptr noundef %492, i32 noundef %435, i32 noundef %436, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #13
  %493 = getelementptr %struct.tracepoint_func, ptr %489, i32 1
  %494 = load ptr, ptr %493, align 4
  %495 = icmp eq ptr %494, null
  br i1 %495, label %496, label %488

496:                                              ; preds = %488, %485
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
  br label %497

497:                                              ; preds = %496, %475, %444
  br i1 %42, label %498, label %501

498:                                              ; preds = %497
  %499 = load i32, ptr %12, align 4
  %500 = and i32 %499, -8388609
  store i32 %500, ptr %12, align 4
  br label %501

501:                                              ; preds = %498, %497
  %502 = icmp eq ptr %6, null
  br i1 %502, label %504, label %503

503:                                              ; preds = %501
  store i32 %435, ptr %6, align 4
  br label %504

504:                                              ; preds = %503, %501
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  ret i32 %434
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_migration_target(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = inttoptr i32 %1 to ptr
  %4 = getelementptr inbounds %struct.migration_target_control, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr %0, align 4
  %8 = lshr i32 %7, 30
  %9 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %8
  %10 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %8, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = icmp eq i32 %14, 1792
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = icmp eq i32 %14, 2688
  %18 = load i32, ptr @movable_zone, align 4
  %19 = icmp eq i32 %18, 2
  %20 = select i1 %17, i1 %19, i1 false
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ true, %2 ], [ %20, %16 ]
  %23 = icmp eq i32 %6, -1
  %24 = select i1 %23, i32 0, i32 %6
  %25 = icmp eq i32 %14, 2688
  %26 = select i1 %22, i1 true, i1 %25
  %27 = or i32 %5, 2
  %28 = select i1 %26, i32 %27, i32 %5
  %29 = getelementptr inbounds %struct.migration_target_control, ptr %3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call ptr @__alloc_pages(i32 noundef %28, i32 noundef 0, i32 noundef %24, ptr noundef %30) #13
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @next_demotion_node(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @node_demotion, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr %struct.demotion_nodes, ptr %2, i32 %0
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !47
  %6 = load volatile i16, ptr %5, align 2
  switch i16 %6, label %7 [
    i16 0, label %16
    i16 1, label %11
  ]

7:                                                ; preds = %4
  %8 = zext i16 %6 to i32
  %9 = tail call i32 @get_random_u32() #13
  %10 = urem i32 %9, %8
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %10, %7 ], [ 0, %4 ]
  %13 = getelementptr %struct.demotion_nodes, ptr %2, i32 %0, i32 1, i32 %12
  %14 = load volatile i16, ptr %13, align 2
  %15 = sext i16 %14 to i32
  br label %16

16:                                               ; preds = %11, %4
  %17 = phi i32 [ %15, %11 ], [ -1, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i32 [ %17, %16 ], [ -1, %1 ]
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @migrate_on_reclaim_init() #6 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 2) #14
  store ptr %2, ptr @node_demotion, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !11

4:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3283, i32 noundef 9, ptr noundef null) #13
  br label %5

5:                                                ; preds = %4, %0
  %6 = tail call i32 @__cpuhp_setup_state(i32 noundef 14, ptr noundef nonnull @.str.37, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @migration_offline_cpu, i1 noundef zeroext false) #13
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3293, i32 noundef 9, ptr noundef null) #13
  br label %9

9:                                                ; preds = %8, %5
  %10 = tail call i32 @__cpuhp_setup_state(i32 noundef 225, ptr noundef nonnull @.str.38, i1 noundef zeroext true, ptr noundef nonnull @migration_online_cpu, ptr noundef null, i1 noundef zeroext false) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3296, i32 noundef 9, ptr noundef null) #13
  br label %13

13:                                               ; preds = %12, %9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @numa_init_sysfs() #6 section ".init.text" {
  %1 = load ptr, ptr @mm_kobj, align 4
  %2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.40, ptr noundef %1) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #15
  br label %11

6:                                                ; preds = %0
  %7 = tail call i32 @sysfs_create_group(ptr noundef nonnull %2, ptr noundef nonnull @numa_attr_group) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #15
  tail call void @kobject_put(ptr noundef nonnull %2) #13
  br label %11

11:                                               ; preds = %9, %6, %4
  %12 = phi i32 [ %7, %9 ], [ -12, %4 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_migrate_pages(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %22, ptr noundef nonnull @trace_raw_output_mm_migrate_pages.symbols) #13
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %5, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %25, ptr noundef nonnull @trace_raw_output_mm_migrate_pages.symbols.24) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef %23, ptr noundef %26) #13
  %27 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %28

28:                                               ; preds = %8, %3
  %29 = phi i32 [ %27, %8 ], [ %6, %3 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_migrate_pages_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %12, ptr noundef nonnull @trace_raw_output_mm_migrate_pages_start.symbols) #13
  %14 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %15, ptr noundef nonnull @trace_raw_output_mm_migrate_pages_start.symbols.35) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %13, ptr noundef %16) #13
  %17 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_file_rmap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlock_vma_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bh_lrus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page_move_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_bh_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_states(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @try_to_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @move_to_new_page(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.rmap_walk_control, align 4
  %5 = alloca %struct.writeback_control, align 8
  %6 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 2
  %11 = tail call ptr @page_mapping(ptr noundef %1) #13
  br i1 %10, label %179, label %12, !prof !11

12:                                               ; preds = %3
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %73

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !10

19:                                               ; preds = %14
  %20 = add i32 %16, -1
  br label %23

21:                                               ; preds = %14
  %22 = ptrtoint ptr %0 to i32
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !10

30:                                               ; preds = %23
  %31 = add i32 %27, -1
  br label %34

32:                                               ; preds = %23
  %33 = ptrtoint ptr %1 to i32
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = inttoptr i32 %35 to ptr
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 32768
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !10

40:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #13, !srcloc !39
  unreachable

41:                                               ; preds = %34
  %42 = load volatile i32, ptr %36, align 4
  %43 = and i32 %42, 524288
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load volatile i32, ptr %36, align 4
  %47 = and i32 %46, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !10

49:                                               ; preds = %45
  %50 = tail call i32 @__page_file_index(ptr noundef %36) #13
  br label %51

51:                                               ; preds = %49, %45, %41
  %52 = load volatile i32, ptr %36, align 4
  %53 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %54 = load volatile i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %212

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.anon.97, ptr %36, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.anon.97, ptr %25, i32 0, i32 3
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.anon.97, ptr %36, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.anon.97, ptr %25, i32 0, i32 2
  store ptr %61, ptr %62, align 4
  %63 = load volatile i32, ptr %36, align 4
  %64 = and i32 %63, 524288
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i32, ptr %25, align 4
  %68 = or i32 %67, 524288
  store i32 %68, ptr %25, align 4
  br label %69

69:                                               ; preds = %66, %56
  %70 = icmp eq i32 %2, 3
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  tail call void @folio_copy(ptr noundef %25, ptr noundef %36) #13
  tail call void @folio_migrate_flags(ptr noundef %25, ptr noundef %36) #13
  br label %203

72:                                               ; preds = %69
  tail call void @folio_migrate_flags(ptr noundef %25, ptr noundef %36) #13
  br label %203

73:                                               ; preds = %12
  %74 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.address_space_operations, ptr %75, i32 0, i32 13
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %200

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84, !prof !10

84:                                               ; preds = %79
  %85 = add i32 %81, -1
  br label %88

86:                                               ; preds = %79
  %87 = ptrtoint ptr %1 to i32
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = inttoptr i32 %89 to ptr
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %91, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %136, label %94

94:                                               ; preds = %88
  %95 = and i32 %2, -2
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %212

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @__const.writeout.wbc, i32 32, i1 false) #13
  %98 = load ptr, ptr %75, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %134, label %100

100:                                              ; preds = %97
  %101 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %1) #13
  br i1 %101, label %102, label %134

102:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  store ptr %1, ptr %4, align 4
  %103 = getelementptr inbounds %struct.rmap_walk_control, ptr %4, i32 0, i32 1
  store ptr @remove_migration_pte, ptr %103, align 4
  %104 = getelementptr inbounds %struct.rmap_walk_control, ptr %4, i32 0, i32 2
  store ptr null, ptr %104, align 4
  %105 = getelementptr inbounds %struct.rmap_walk_control, ptr %4, i32 0, i32 3
  store ptr null, ptr %105, align 4
  %106 = getelementptr inbounds %struct.rmap_walk_control, ptr %4, i32 0, i32 4
  store ptr null, ptr %106, align 4
  call void @rmap_walk(ptr noundef %1, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  %107 = load ptr, ptr %74, align 4
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 %108(ptr noundef %1, ptr noundef nonnull %5) #13
  %110 = icmp eq i32 %109, 524288
  br i1 %110, label %131, label %111

111:                                              ; preds = %102
  %112 = load volatile i32, ptr %80, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115, !prof !10

115:                                              ; preds = %111
  %116 = add i32 %112, -1
  br label %119

117:                                              ; preds = %111
  %118 = ptrtoint ptr %1 to i32
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = inttoptr i32 %120 to ptr
  %122 = load volatile i32, ptr %121, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #13, !srcloc !14
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #13, !srcloc !17
  %127 = extractvalue { i32, i32, i32 } %126, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125, %119
  call void @__folio_lock(ptr noundef %121) #13
  br label %131

131:                                              ; preds = %130, %125, %102
  %132 = icmp slt i32 %109, 0
  %133 = select i1 %132, i32 -5, i32 -11
  br label %134

134:                                              ; preds = %131, %100, %97
  %135 = phi i32 [ %133, %131 ], [ -22, %97 ], [ -11, %100 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %212

136:                                              ; preds = %88
  %137 = load i32, ptr %1, align 4
  %138 = and i32 %137, 24576
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %136
  %141 = tail call i32 @try_to_release_page(ptr noundef %1, i32 noundef 3264) #13
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = icmp eq i32 %2, 2
  %145 = select i1 %144, i32 -11, i32 -16
  br label %212

146:                                              ; preds = %140, %136
  %147 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151, !prof !10

151:                                              ; preds = %146
  %152 = add i32 %148, -1
  br label %155

153:                                              ; preds = %146
  %154 = ptrtoint ptr %0 to i32
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  %157 = inttoptr i32 %156 to ptr
  %158 = load volatile i32, ptr %80, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161, !prof !10

161:                                              ; preds = %155
  %162 = add i32 %158, -1
  br label %165

163:                                              ; preds = %155
  %164 = ptrtoint ptr %1 to i32
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = inttoptr i32 %166 to ptr
  %168 = load volatile i32, ptr %167, align 4
  %169 = and i32 %168, 32768
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171, !prof !10

171:                                              ; preds = %165
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #13, !srcloc !39
  unreachable

172:                                              ; preds = %165
  %173 = tail call i32 @folio_migrate_mapping(ptr noundef nonnull %11, ptr noundef %157, ptr noundef %167, i32 noundef 0) #13
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %212

175:                                              ; preds = %172
  %176 = icmp eq i32 %2, 3
  br i1 %176, label %178, label %177

177:                                              ; preds = %175
  tail call void @folio_copy(ptr noundef %157, ptr noundef %167) #13
  tail call void @folio_migrate_flags(ptr noundef %157, ptr noundef %167) #13
  br label %203

178:                                              ; preds = %175
  tail call void @folio_migrate_flags(ptr noundef %157, ptr noundef %167) #13
  br label %203

179:                                              ; preds = %3
  %180 = tail call i32 @PageMovable(ptr noundef %1) #13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, ptr %1, align 4
  %184 = and i32 %183, -262145
  store i32 %184, ptr %1, align 4
  br label %212

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 9
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.address_space_operations, ptr %187, i32 0, i32 13
  %189 = load ptr, ptr %188, align 4
  %190 = tail call i32 %189(ptr noundef %11, ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %212

192:                                              ; preds = %185
  %193 = load volatile i32, ptr %1, align 4
  %194 = and i32 %193, 262144
  %195 = icmp eq i32 %194, 0
  %196 = load i1, ptr @move_to_new_page.__already_done, align 1
  %197 = xor i1 %196, true
  %198 = select i1 %195, i1 %197, i1 false
  br i1 %198, label %199, label %203, !prof !11

199:                                              ; preds = %192
  store i1 true, ptr @move_to_new_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 893, i32 noundef 9, ptr noundef null) #13
  br label %203

200:                                              ; preds = %73
  %201 = tail call i32 %77(ptr noundef nonnull %11, ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %200, %199, %192, %178, %177, %72, %71
  %204 = load ptr, ptr %6, align 4
  %205 = ptrtoint ptr %204 to i32
  %206 = and i32 %205, 3
  switch i32 %206, label %211 [
    i32 2, label %207
    i32 0, label %210
  ]

207:                                              ; preds = %203
  %208 = load i32, ptr %1, align 4
  %209 = and i32 %208, -262145
  store i32 %209, ptr %1, align 4
  br label %211

210:                                              ; preds = %203
  store ptr null, ptr %6, align 4
  br label %211

211:                                              ; preds = %210, %207, %203
  tail call void @flush_dcache_page(ptr noundef %0) #13
  br label %212

212:                                              ; preds = %211, %200, %185, %182, %172, %143, %134, %94, %51
  %213 = phi i32 [ 0, %211 ], [ %201, %200 ], [ 0, %182 ], [ %173, %172 ], [ -16, %94 ], [ %145, %143 ], [ %135, %134 ], [ -11, %51 ], [ %190, %185 ]
  ret i32 %213
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @migration_offline_cpu(i32 noundef %0) #0 {
  %2 = load ptr, ptr @node_demotion, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  store i16 0, ptr %2, align 2
  br label %5

5:                                                ; preds = %4, %1
  tail call void @synchronize_rcu() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @migration_online_cpu(i32 noundef %0) #0 {
  %2 = load ptr, ptr @node_demotion, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  store i16 0, ptr %2, align 2
  br label %5

5:                                                ; preds = %4, %1
  tail call void @synchronize_rcu() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @numa_demotion_enabled_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load i8, ptr @numa_demotion_enabled, align 1, !range !49
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @.str.46, ptr @.str.45
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.44, ptr noundef nonnull %6) #13
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @numa_demotion_enabled_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #11 {
  %5 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.45, i32 noundef 4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr %2, align 1
  %9 = icmp eq i8 %8, 49
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.46, i32 noundef 5)
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i8 %8, 48
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %7, %4
  %16 = phi i8 [ 1, %7 ], [ 1, %4 ], [ 0, %10 ]
  store i8 %16, ptr @numa_demotion_enabled, align 1
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %3, %15 ], [ -22, %10 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!12 = !{i64 858380}
!13 = !{i64 2148434895}
!14 = !{i64 934002, i64 2148423973, i64 2148423999, i64 2148424046, i64 2148424068, i64 2148424096, i64 2148424116}
!15 = !{i64 920571, i64 920596, i64 920618, i64 920634, i64 920646, i64 920666, i64 920690, i64 920706, i64 920718}
!16 = !{i64 2148435021}
!17 = !{i64 2148443850, i64 2148443882, i64 2148443911, i64 2148443945, i64 2148443976, i64 2148443999}
!18 = !{i64 2148545190}
!19 = !{i64 2148536067}
!20 = !{i64 2148438429, i64 2148438461, i64 2148438490, i64 2148438524, i64 2148438555, i64 2148438578}
!21 = !{i64 2148536270}
!22 = !{i64 2148435388, i64 2148435414, i64 2148435443, i64 2148435477, i64 2148435508, i64 2148435531}
!23 = !{i64 2149101068}
!24 = !{i64 2149096892}
!25 = !{i64 2149096967, i64 2149096994, i64 2149097041, i64 2149097063, i64 2149097091, i64 2149097111}
!26 = !{i64 2149124071}
!27 = !{i64 2151597944}
!28 = !{i64 2152514683}
!29 = !{i64 2152512058}
!30 = !{i64 2151597737}
!31 = !{i64 2148548814}
!32 = !{i64 920065, i64 920089, i64 920110, i64 920127, i64 920144}
!33 = !{i64 2148549014}
!34 = !{i64 839925}
!35 = !{i64 2149125212}
!36 = !{i64 2148529862}
!37 = !{i64 2149932171}
!38 = !{i64 2149933192}
!39 = !{i64 2155014690, i64 2155015167, i64 2155014727, i64 2155014783, i64 2155014817, i64 2155014841, i64 2155014882, i64 2155014903, i64 2155014931, i64 2155014965}
!40 = !{i64 2155016973, i64 2155017450, i64 2155017010, i64 2155017066, i64 2155017100, i64 2155017124, i64 2155017165, i64 2155017186, i64 2155017214, i64 2155017248}
!41 = !{i64 2154518299}
!42 = !{i64 2154518479}
!43 = !{i64 839680, i64 839741}
!44 = !{i64 842697}
!45 = !{i64 2154497010}
!46 = !{i64 2154497296}
!47 = !{i64 2149499840}
!48 = !{i64 2149500057}
!49 = !{i8 0, i8 2}
