; ModuleID = '/llk/IR/mm/compaction.c_pt.bc'
source_filename = "../mm/compaction.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_PageMovable:\09\09\09\09\09"
module asm "\09.asciz \09\22PageMovable\22\09\09\09\09\09"
module asm "__kstrtabns_PageMovable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SetPageMovable:\09\09\09\09\09"
module asm "\09.asciz \09\22__SetPageMovable\22\09\09\09\09\09"
module asm "__kstrtabns___SetPageMovable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ClearPageMovable:\09\09\09\09\09"
module asm "\09.asciz \09\22__ClearPageMovable\22\09\09\09\09\09"
module asm "__kstrtabns___ClearPageMovable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.93, %struct.trace_event, ptr, ptr, %union.anon.94, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.93 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.94 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.vm_event_state = type { [71 x i32] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mm_compaction_isolate_template = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_mm_compaction_migratepages = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_compaction_begin = type { %struct.trace_entry, i32, i32, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_mm_compaction_end = type { %struct.trace_entry, i32, i32, i32, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_mm_compaction_try_to_compact_pages = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_compaction_suitable_template = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_compaction_defer_template = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_compaction_kcompactd_sleep = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_kcompactd_wake_template = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.compact_control = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.58 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.anon.70 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.alloc_context = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.capture_control = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mm_compaction_isolate_migratepages = internal constant [35 x i8] c"mm_compaction_isolate_migratepages\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_isolate_migratepages = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_isolate_migratepages }, align 4
@__tracepoint_mm_compaction_isolate_migratepages = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_isolate_migratepages, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_isolate_migratepages, ptr null, ptr @__traceiter_mm_compaction_isolate_migratepages, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_isolate_migratepages = internal constant ptr @__tracepoint_mm_compaction_isolate_migratepages, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_isolate_freepages = internal constant [32 x i8] c"mm_compaction_isolate_freepages\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_isolate_freepages = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_isolate_freepages }, align 4
@__tracepoint_mm_compaction_isolate_freepages = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_isolate_freepages, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_isolate_freepages, ptr null, ptr @__traceiter_mm_compaction_isolate_freepages, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_isolate_freepages = internal constant ptr @__tracepoint_mm_compaction_isolate_freepages, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_migratepages = internal constant [27 x i8] c"mm_compaction_migratepages\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_migratepages = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_migratepages }, align 4
@__tracepoint_mm_compaction_migratepages = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_migratepages, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_migratepages, ptr null, ptr @__traceiter_mm_compaction_migratepages, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_migratepages = internal constant ptr @__tracepoint_mm_compaction_migratepages, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_begin = internal constant [20 x i8] c"mm_compaction_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_begin = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_begin }, align 4
@__tracepoint_mm_compaction_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_begin, ptr null, ptr @__traceiter_mm_compaction_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_begin = internal constant ptr @__tracepoint_mm_compaction_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_end = internal constant [18 x i8] c"mm_compaction_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_end = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_end }, align 4
@__tracepoint_mm_compaction_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_end, ptr null, ptr @__traceiter_mm_compaction_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_end = internal constant ptr @__tracepoint_mm_compaction_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_try_to_compact_pages = internal constant [35 x i8] c"mm_compaction_try_to_compact_pages\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_try_to_compact_pages = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_try_to_compact_pages }, align 4
@__tracepoint_mm_compaction_try_to_compact_pages = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_try_to_compact_pages, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_try_to_compact_pages, ptr null, ptr @__traceiter_mm_compaction_try_to_compact_pages, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_try_to_compact_pages = internal constant ptr @__tracepoint_mm_compaction_try_to_compact_pages, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_finished = internal constant [23 x i8] c"mm_compaction_finished\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_finished = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_finished }, align 4
@__tracepoint_mm_compaction_finished = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_finished, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_finished, ptr null, ptr @__traceiter_mm_compaction_finished, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_finished = internal constant ptr @__tracepoint_mm_compaction_finished, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_suitable = internal constant [23 x i8] c"mm_compaction_suitable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_suitable = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_suitable }, align 4
@__tracepoint_mm_compaction_suitable = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_suitable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_suitable, ptr null, ptr @__traceiter_mm_compaction_suitable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_suitable = internal constant ptr @__tracepoint_mm_compaction_suitable, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_deferred = internal constant [23 x i8] c"mm_compaction_deferred\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_deferred = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_deferred }, align 4
@__tracepoint_mm_compaction_deferred = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_deferred, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_deferred, ptr null, ptr @__traceiter_mm_compaction_deferred, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_deferred = internal constant ptr @__tracepoint_mm_compaction_deferred, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_defer_compaction = internal constant [31 x i8] c"mm_compaction_defer_compaction\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_defer_compaction = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_defer_compaction }, align 4
@__tracepoint_mm_compaction_defer_compaction = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_defer_compaction, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_defer_compaction, ptr null, ptr @__traceiter_mm_compaction_defer_compaction, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_defer_compaction = internal constant ptr @__tracepoint_mm_compaction_defer_compaction, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_defer_reset = internal constant [26 x i8] c"mm_compaction_defer_reset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_defer_reset = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_defer_reset }, align 4
@__tracepoint_mm_compaction_defer_reset = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_defer_reset, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_defer_reset, ptr null, ptr @__traceiter_mm_compaction_defer_reset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_defer_reset = internal constant ptr @__tracepoint_mm_compaction_defer_reset, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_kcompactd_sleep = internal constant [30 x i8] c"mm_compaction_kcompactd_sleep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_kcompactd_sleep = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_kcompactd_sleep }, align 4
@__tracepoint_mm_compaction_kcompactd_sleep = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_kcompactd_sleep, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_kcompactd_sleep, ptr null, ptr @__traceiter_mm_compaction_kcompactd_sleep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_kcompactd_sleep = internal constant ptr @__tracepoint_mm_compaction_kcompactd_sleep, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_wakeup_kcompactd = internal constant [31 x i8] c"mm_compaction_wakeup_kcompactd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_wakeup_kcompactd = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_wakeup_kcompactd }, align 4
@__tracepoint_mm_compaction_wakeup_kcompactd = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_wakeup_kcompactd, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_wakeup_kcompactd, ptr null, ptr @__traceiter_mm_compaction_wakeup_kcompactd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_wakeup_kcompactd = internal constant ptr @__tracepoint_mm_compaction_wakeup_kcompactd, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_compaction_kcompactd_wake = internal constant [29 x i8] c"mm_compaction_kcompactd_wake\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_compaction_kcompactd_wake = dso_local global %struct.static_call_key { ptr @__traceiter_mm_compaction_kcompactd_wake }, align 4
@__tracepoint_mm_compaction_kcompactd_wake = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_compaction_kcompactd_wake, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_compaction_kcompactd_wake, ptr null, ptr @__traceiter_mm_compaction_kcompactd_wake, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_compaction_kcompactd_wake = internal constant ptr @__tracepoint_mm_compaction_kcompactd_wake, section "__tracepoints_ptrs", align 4
@str__compaction__trace_system_name = internal constant [11 x i8] c"compaction\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"COMPACT_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_SKIPPED = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"COMPACT_DEFERRED\00", align 1
@__TRACE_SYSTEM_COMPACT_DEFERRED = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.1, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_DEFERRED = internal global ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"COMPACT_CONTINUE\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTINUE = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.2, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTINUE = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"COMPACT_SUCCESS\00", align 1
@__TRACE_SYSTEM_COMPACT_SUCCESS = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.3, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SUCCESS = internal global ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"COMPACT_PARTIAL_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.4, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"COMPACT_COMPLETE\00", align 1
@__TRACE_SYSTEM_COMPACT_COMPLETE = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_COMPLETE = internal global ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"COMPACT_NO_SUITABLE_PAGE\00", align 1
@__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.6, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"COMPACT_NOT_SUITABLE_ZONE\00", align 1
@__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.7, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"COMPACT_CONTENDED\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTENDED = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.8, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTENDED = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"COMPACT_PRIO_SYNC_FULL\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.9, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, section "_ftrace_eval_map", align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"COMPACT_PRIO_SYNC_LIGHT\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.10, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, section "_ftrace_eval_map", align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"COMPACT_PRIO_ASYNC\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.11, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, section "_ftrace_eval_map", align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"ZONE_DMA\00", align 1
@__TRACE_SYSTEM_ZONE_DMA = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.12, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_DMA = internal global ptr @__TRACE_SYSTEM_ZONE_DMA, section "_ftrace_eval_map", align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"ZONE_NORMAL\00", align 1
@__TRACE_SYSTEM_ZONE_NORMAL = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.13, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_NORMAL = internal global ptr @__TRACE_SYSTEM_ZONE_NORMAL, section "_ftrace_eval_map", align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"ZONE_HIGHMEM\00", align 1
@__TRACE_SYSTEM_ZONE_HIGHMEM = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.14, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_HIGHMEM = internal global ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, section "_ftrace_eval_map", align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"ZONE_MOVABLE\00", align 1
@__TRACE_SYSTEM_ZONE_MOVABLE = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.15, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_MOVABLE = internal global ptr @__TRACE_SYSTEM_ZONE_MOVABLE, section "_ftrace_eval_map", align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.16, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.17, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.18, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.19, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"LRU_UNEVICTABLE\00", align 1
@__TRACE_SYSTEM_LRU_UNEVICTABLE = internal global %struct.trace_eval_map { ptr @str__compaction__trace_system_name, ptr @.str.20, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_UNEVICTABLE = internal global ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, section "_ftrace_eval_map", align 4
@trace_event_fields_mm_compaction_isolate_template = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_compaction_isolate_template = internal global %struct.trace_event_class { ptr @str__compaction__trace_system_name, ptr @trace_event_raw_event_mm_compaction_isolate_template, ptr @perf_trace_mm_compaction_isolate_template, ptr @trace_event_reg, ptr @trace_event_fields_mm_compaction_isolate_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_compaction_isolate_template, i64 24), ptr getelementptr (i8, ptr @event_class_mm_compaction_isolate_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_compaction_isolate_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_compaction_isolate_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_compaction_isolate_template = internal global [114 x i8] c"\22range=(0x%lx ~ 0x%lx) nr_scanned=%lu nr_taken=%lu\22, REC->start_pfn, REC->end_pfn, REC->nr_scanned, REC->nr_taken\00", align 1
@event_mm_compaction_isolate_migratepages = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_isolate_template, %union.anon.93 { ptr @__tracepoint_mm_compaction_isolate_migratepages }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_isolate_template }, ptr @print_fmt_mm_compaction_isolate_template, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_isolate_migratepages = internal global ptr @event_mm_compaction_isolate_migratepages, section "_ftrace_events", align 4
@event_mm_compaction_isolate_freepages = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_isolate_template, %union.anon.93 { ptr @__tracepoint_mm_compaction_isolate_freepages }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_isolate_template }, ptr @print_fmt_mm_compaction_isolate_template, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_isolate_freepages = internal global ptr @event_mm_compaction_isolate_freepages, section "_ftrace_events", align 4
@trace_event_fields_mm_compaction_migratepages = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_compaction_migratepages = internal global %struct.trace_event_class { ptr @str__compaction__trace_system_name, ptr @trace_event_raw_event_mm_compaction_migratepages, ptr @perf_trace_mm_compaction_migratepages, ptr @trace_event_reg, ptr @trace_event_fields_mm_compaction_migratepages, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_compaction_migratepages, i64 24), ptr getelementptr (i8, ptr @event_class_mm_compaction_migratepages, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_compaction_migratepages = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_compaction_migratepages, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_compaction_migratepages = internal global [66 x i8] c"\22nr_migrated=%lu nr_failed=%lu\22, REC->nr_migrated, REC->nr_failed\00", align 1
@event_mm_compaction_migratepages = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_migratepages, %union.anon.93 { ptr @__tracepoint_mm_compaction_migratepages }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_migratepages }, ptr @print_fmt_mm_compaction_migratepages, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_migratepages = internal global ptr @event_mm_compaction_migratepages, section "_ftrace_events", align 4
@trace_event_fields_mm_compaction_begin = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.91 { %struct.anon.92 { ptr @.str.37, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_compaction_begin = internal global %struct.trace_event_class { ptr @str__compaction__trace_system_name, ptr @trace_event_raw_event_mm_compaction_begin, ptr @perf_trace_mm_compaction_begin, ptr @trace_event_reg, ptr @trace_event_fields_mm_compaction_begin, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_compaction_begin, i64 24), ptr getelementptr (i8, ptr @event_class_mm_compaction_begin, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_compaction_begin = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_compaction_begin, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_compaction_begin = internal global [171 x i8] c"\22zone_start=0x%lx migrate_pfn=0x%lx free_pfn=0x%lx zone_end=0x%lx, mode=%s\22, REC->zone_start, REC->migrate_pfn, REC->free_pfn, REC->zone_end, REC->sync ? \22sync\22 : \22async\22\00", align 1
@event_mm_compaction_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_begin, %union.anon.93 { ptr @__tracepoint_mm_compaction_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_begin }, ptr @print_fmt_mm_compaction_begin, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_begin = internal global ptr @event_mm_compaction_begin, section "_ftrace_events", align 4
@trace_event_fields_mm_compaction_end = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.91 { %struct.anon.92 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.91 { %struct.anon.92 { ptr @.str.37, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_compaction_end = internal global %struct.trace_event_class { ptr @str__compaction__trace_system_name, ptr @trace_event_raw_event_mm_compaction_end, ptr @perf_trace_mm_compaction_end, ptr @trace_event_reg, ptr @trace_event_fields_mm_compaction_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_compaction_end, i64 24), ptr getelementptr (i8, ptr @event_class_mm_compaction_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_compaction_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_compaction_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_compaction_end = internal global [546 x i8] c"\22zone_start=0x%lx migrate_pfn=0x%lx free_pfn=0x%lx zone_end=0x%lx, mode=%s status=%s\22, REC->zone_start, REC->migrate_pfn, REC->free_pfn, REC->zone_end, REC->sync ? \22sync\22 : \22async\22, __print_symbolic(REC->status, {COMPACT_SKIPPED, \22skipped\22}, {COMPACT_DEFERRED, \22deferred\22}, {COMPACT_CONTINUE, \22continue\22}, {COMPACT_SUCCESS, \22success\22}, {COMPACT_PARTIAL_SKIPPED, \22partial_skipped\22}, {COMPACT_COMPLETE, \22complete\22}, {COMPACT_NO_SUITABLE_PAGE, \22no_suitable_page\22}, {COMPACT_NOT_SUITABLE_ZONE, \22not_suitable_zone\22}, {COMPACT_CONTENDED, \22contended\22})\00", align 1
@event_mm_compaction_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_end, %union.anon.93 { ptr @__tracepoint_mm_compaction_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_end }, ptr @print_fmt_mm_compaction_end, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_end = internal global ptr @event_mm_compaction_end, section "_ftrace_events", align 4
@trace_event_fields_mm_compaction_try_to_compact_pages = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.53, %union.anon.91 { %struct.anon.92 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_compaction_try_to_compact_pages = internal global %struct.trace_event_class { ptr @str__compaction__trace_system_name, ptr @trace_event_raw_event_mm_compaction_try_to_compact_pages, ptr @perf_trace_mm_compaction_try_to_compact_pages, ptr @trace_event_reg, ptr @trace_event_fields_mm_compaction_try_to_compact_pages, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_compaction_try_to_compact_pages, i64 24), ptr getelementptr (i8, ptr @event_class_mm_compaction_try_to_compact_pages, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_compaction_try_to_compact_pages = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_compaction_try_to_compact_pages, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_compaction_try_to_compact_pages = internal global [3033 x i8] c"\22order=%d gfp_mask=%s priority=%d\22, REC->order, (REC->gfp_mask) ? __print_flags(REC->gfp_mask, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22, REC->prio\00", align 1
@event_mm_compaction_try_to_compact_pages = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_try_to_compact_pages, %union.anon.93 { ptr @__tracepoint_mm_compaction_try_to_compact_pages }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_try_to_compact_pages }, ptr @print_fmt_mm_compaction_try_to_compact_pages, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_try_to_compact_pages = internal global ptr @event_mm_compaction_try_to_compact_pages, section "_ftrace_events", align 4
@trace_event_fields_mm_compaction_suitable_template = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.96, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.97, %union.anon.91 { %struct.anon.92 { ptr @.str.98, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.99, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_compaction_suitable_template = internal global %struct.trace_event_class { ptr @str__compaction__trace_system_name, ptr @trace_event_raw_event_mm_compaction_suitable_template, ptr @perf_trace_mm_compaction_suitable_template, ptr @trace_event_reg, ptr @trace_event_fields_mm_compaction_suitable_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_compaction_suitable_template, i64 24), ptr getelementptr (i8, ptr @event_class_mm_compaction_suitable_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_compaction_suitable_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_compaction_suitable_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_compaction_suitable_template = internal global [546 x i8] c"\22node=%d zone=%-8s order=%d ret=%s\22, REC->nid, __print_symbolic(REC->idx, {ZONE_DMA, \22DMA\22}, {ZONE_NORMAL, \22Normal\22}, {ZONE_HIGHMEM, \22HighMem\22}, {ZONE_MOVABLE, \22Movable\22}), REC->order, __print_symbolic(REC->ret, {COMPACT_SKIPPED, \22skipped\22}, {COMPACT_DEFERRED, \22deferred\22}, {COMPACT_CONTINUE, \22continue\22}, {COMPACT_SUCCESS, \22success\22}, {COMPACT_PARTIAL_SKIPPED, \22partial_skipped\22}, {COMPACT_COMPLETE, \22complete\22}, {COMPACT_NO_SUITABLE_PAGE, \22no_suitable_page\22}, {COMPACT_NOT_SUITABLE_ZONE, \22not_suitable_zone\22}, {COMPACT_CONTENDED, \22contended\22})\00", align 1
@event_mm_compaction_finished = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_suitable_template, %union.anon.93 { ptr @__tracepoint_mm_compaction_finished }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_suitable_template }, ptr @print_fmt_mm_compaction_suitable_template, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_finished = internal global ptr @event_mm_compaction_finished, section "_ftrace_events", align 4
@event_mm_compaction_suitable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_suitable_template, %union.anon.93 { ptr @__tracepoint_mm_compaction_suitable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_suitable_template }, ptr @print_fmt_mm_compaction_suitable_template, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_suitable = internal global ptr @event_mm_compaction_suitable, section "_ftrace_events", align 4
@trace_event_fields_mm_compaction_defer_template = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.96, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.97, %union.anon.91 { %struct.anon.92 { ptr @.str.98, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.106, %union.anon.91 { %struct.anon.92 { ptr @.str.107, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.106, %union.anon.91 { %struct.anon.92 { ptr @.str.108, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.109, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_compaction_defer_template = internal global %struct.trace_event_class { ptr @str__compaction__trace_system_name, ptr @trace_event_raw_event_mm_compaction_defer_template, ptr @perf_trace_mm_compaction_defer_template, ptr @trace_event_reg, ptr @trace_event_fields_mm_compaction_defer_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_compaction_defer_template, i64 24), ptr getelementptr (i8, ptr @event_class_mm_compaction_defer_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_compaction_defer_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_compaction_defer_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_compaction_defer_template = internal global [276 x i8] c"\22node=%d zone=%-8s order=%d order_failed=%d consider=%u limit=%lu\22, REC->nid, __print_symbolic(REC->idx, {ZONE_DMA, \22DMA\22}, {ZONE_NORMAL, \22Normal\22}, {ZONE_HIGHMEM, \22HighMem\22}, {ZONE_MOVABLE, \22Movable\22}), REC->order, REC->order_failed, REC->considered, 1UL << REC->defer_shift\00", align 1
@event_mm_compaction_deferred = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_defer_template, %union.anon.93 { ptr @__tracepoint_mm_compaction_deferred }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_defer_template }, ptr @print_fmt_mm_compaction_defer_template, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_deferred = internal global ptr @event_mm_compaction_deferred, section "_ftrace_events", align 4
@event_mm_compaction_defer_compaction = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_defer_template, %union.anon.93 { ptr @__tracepoint_mm_compaction_defer_compaction }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_defer_template }, ptr @print_fmt_mm_compaction_defer_template, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_defer_compaction = internal global ptr @event_mm_compaction_defer_compaction, section "_ftrace_events", align 4
@event_mm_compaction_defer_reset = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_defer_template, %union.anon.93 { ptr @__tracepoint_mm_compaction_defer_reset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_defer_template }, ptr @print_fmt_mm_compaction_defer_template, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_defer_reset = internal global ptr @event_mm_compaction_defer_reset, section "_ftrace_events", align 4
@trace_event_fields_mm_compaction_kcompactd_sleep = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.96, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_compaction_kcompactd_sleep = internal global %struct.trace_event_class { ptr @str__compaction__trace_system_name, ptr @trace_event_raw_event_mm_compaction_kcompactd_sleep, ptr @perf_trace_mm_compaction_kcompactd_sleep, ptr @trace_event_reg, ptr @trace_event_fields_mm_compaction_kcompactd_sleep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_compaction_kcompactd_sleep, i64 24), ptr getelementptr (i8, ptr @event_class_mm_compaction_kcompactd_sleep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_compaction_kcompactd_sleep = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_compaction_kcompactd_sleep, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_compaction_kcompactd_sleep = internal global [19 x i8] c"\22nid=%d\22, REC->nid\00", align 1
@event_mm_compaction_kcompactd_sleep = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_compaction_kcompactd_sleep, %union.anon.93 { ptr @__tracepoint_mm_compaction_kcompactd_sleep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_compaction_kcompactd_sleep }, ptr @print_fmt_mm_compaction_kcompactd_sleep, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_kcompactd_sleep = internal global ptr @event_mm_compaction_kcompactd_sleep, section "_ftrace_events", align 4
@trace_event_fields_kcompactd_wake_template = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.96, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.91 { %struct.anon.92 { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.97, %union.anon.91 { %struct.anon.92 { ptr @.str.112, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kcompactd_wake_template = internal global %struct.trace_event_class { ptr @str__compaction__trace_system_name, ptr @trace_event_raw_event_kcompactd_wake_template, ptr @perf_trace_kcompactd_wake_template, ptr @trace_event_reg, ptr @trace_event_fields_kcompactd_wake_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kcompactd_wake_template, i64 24), ptr getelementptr (i8, ptr @event_class_kcompactd_wake_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kcompactd_wake_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_kcompactd_wake_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_kcompactd_wake_template = internal global [197 x i8] c"\22nid=%d order=%d classzone_idx=%-8s\22, REC->nid, REC->order, __print_symbolic(REC->highest_zoneidx, {ZONE_DMA, \22DMA\22}, {ZONE_NORMAL, \22Normal\22}, {ZONE_HIGHMEM, \22HighMem\22}, {ZONE_MOVABLE, \22Movable\22})\00", align 1
@event_mm_compaction_wakeup_kcompactd = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kcompactd_wake_template, %union.anon.93 { ptr @__tracepoint_mm_compaction_wakeup_kcompactd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kcompactd_wake_template }, ptr @print_fmt_kcompactd_wake_template, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_wakeup_kcompactd = internal global ptr @event_mm_compaction_wakeup_kcompactd, section "_ftrace_events", align 4
@event_mm_compaction_kcompactd_wake = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kcompactd_wake_template, %union.anon.93 { ptr @__tracepoint_mm_compaction_kcompactd_wake }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kcompactd_wake_template }, ptr @print_fmt_kcompactd_wake_template, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_compaction_kcompactd_wake = internal global ptr @event_mm_compaction_kcompactd_wake, section "_ftrace_events", align 4
@__kstrtab_PageMovable = external dso_local constant [0 x i8], align 1
@__kstrtabns_PageMovable = external dso_local constant [0 x i8], align 1
@__ksymtab_PageMovable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @PageMovable to i32), ptr @__kstrtab_PageMovable, ptr @__kstrtabns_PageMovable }, section "___ksymtab+PageMovable", align 4
@__kstrtab___SetPageMovable = external dso_local constant [0 x i8], align 1
@__kstrtabns___SetPageMovable = external dso_local constant [0 x i8], align 1
@__ksymtab___SetPageMovable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SetPageMovable to i32), ptr @__kstrtab___SetPageMovable, ptr @__kstrtabns___SetPageMovable }, section "___ksymtab+__SetPageMovable", align 4
@__kstrtab___ClearPageMovable = external dso_local constant [0 x i8], align 1
@__kstrtabns___ClearPageMovable = external dso_local constant [0 x i8], align 1
@__ksymtab___ClearPageMovable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ClearPageMovable to i32), ptr @__kstrtab___ClearPageMovable, ptr @__kstrtabns___ClearPageMovable }, section "___ksymtab+__ClearPageMovable", align 4
@sysctl_compact_unevictable_allowed = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@sysctl_extfrag_threshold = dso_local local_unnamed_addr global i32 500, align 4
@sysctl_compaction_proactiveness = dso_local local_unnamed_addr global i32 20, section ".data..read_mostly", align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"kcompactd%d\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"\013Failed to start kcompactd on node %d\0A\00", align 1
@__initcall__kmod_compaction__375_3056_kcompactd_init4 = internal global ptr @kcompactd_init, section ".initcall4.init", align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"start_pfn\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"end_pfn\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"nr_scanned\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"nr_taken\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"range=(0x%lx ~ 0x%lx) nr_scanned=%lu nr_taken=%lu\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"nr_migrated\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"nr_failed\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"nr_migrated=%lu nr_failed=%lu\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"zone_start\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"migrate_pfn\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"free_pfn\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"zone_end\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"zone_start=0x%lx migrate_pfn=0x%lx free_pfn=0x%lx zone_end=0x%lx, mode=%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.42 = private unnamed_addr constant [85 x i8] c"zone_start=0x%lx migrate_pfn=0x%lx free_pfn=0x%lx zone_end=0x%lx, mode=%s status=%s\0A\00", align 1
@trace_raw_output_mm_compaction_end.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.43 }, %struct.trace_print_flags { i32 2, ptr @.str.44 }, %struct.trace_print_flags { i32 4, ptr @.str.45 }, %struct.trace_print_flags { i32 8, ptr @.str.46 }, %struct.trace_print_flags { i32 6, ptr @.str.47 }, %struct.trace_print_flags { i32 5, ptr @.str.48 }, %struct.trace_print_flags { i32 3, ptr @.str.49 }, %struct.trace_print_flags { i32 0, ptr @.str.50 }, %struct.trace_print_flags { i32 7, ptr @.str.51 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.43 = private unnamed_addr constant [8 x i8] c"skipped\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"deferred\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"partial_skipped\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"no_suitable_page\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"not_suitable_zone\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"contended\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"gfp_t\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"gfp_mask\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"prio\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"order=%d gfp_mask=%s priority=%d\0A\00", align 1
@trace_raw_output_mm_compaction_try_to_compact_pages.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.57 }, %struct.trace_print_flags { i32 18620618, ptr @.str.58 }, %struct.trace_print_flags { i32 17829066, ptr @.str.59 }, %struct.trace_print_flags { i32 1051842, ptr @.str.60 }, %struct.trace_print_flags { i32 1051840, ptr @.str.61 }, %struct.trace_print_flags { i32 4197568, ptr @.str.62 }, %struct.trace_print_flags { i32 3264, ptr @.str.63 }, %struct.trace_print_flags { i32 3136, ptr @.str.64 }, %struct.trace_print_flags { i32 2592, ptr @.str.65 }, %struct.trace_print_flags { i32 3072, ptr @.str.66 }, %struct.trace_print_flags { i32 2048, ptr @.str.67 }, %struct.trace_print_flags { i32 1, ptr @.str.68 }, %struct.trace_print_flags { i32 2, ptr @.str.69 }, %struct.trace_print_flags { i32 4, ptr @.str.70 }, %struct.trace_print_flags { i32 32, ptr @.str.71 }, %struct.trace_print_flags { i32 512, ptr @.str.72 }, %struct.trace_print_flags { i32 64, ptr @.str.73 }, %struct.trace_print_flags { i32 128, ptr @.str.74 }, %struct.trace_print_flags { i32 8192, ptr @.str.75 }, %struct.trace_print_flags { i32 16384, ptr @.str.76 }, %struct.trace_print_flags { i32 32768, ptr @.str.77 }, %struct.trace_print_flags { i32 65536, ptr @.str.78 }, %struct.trace_print_flags { i32 262144, ptr @.str.79 }, %struct.trace_print_flags { i32 256, ptr @.str.80 }, %struct.trace_print_flags { i32 524288, ptr @.str.81 }, %struct.trace_print_flags { i32 131072, ptr @.str.82 }, %struct.trace_print_flags { i32 1048576, ptr @.str.83 }, %struct.trace_print_flags { i32 2097152, ptr @.str.84 }, %struct.trace_print_flags { i32 16, ptr @.str.85 }, %struct.trace_print_flags { i32 8, ptr @.str.86 }, %struct.trace_print_flags { i32 4194304, ptr @.str.87 }, %struct.trace_print_flags { i32 4096, ptr @.str.88 }, %struct.trace_print_flags { i32 3072, ptr @.str.89 }, %struct.trace_print_flags { i32 1024, ptr @.str.90 }, %struct.trace_print_flags { i32 2048, ptr @.str.91 }, %struct.trace_print_flags { i32 8388608, ptr @.str.92 }, %struct.trace_print_flags { i32 16777216, ptr @.str.93 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.57 = private unnamed_addr constant [14 x i8] c"GFP_TRANSHUGE\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"GFP_TRANSHUGE_LIGHT\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"GFP_HIGHUSER_MOVABLE\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"GFP_HIGHUSER\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"GFP_USER\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"GFP_KERNEL_ACCOUNT\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"GFP_KERNEL\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"GFP_NOFS\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"GFP_ATOMIC\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"GFP_NOIO\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"GFP_NOWAIT\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"GFP_DMA\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"__GFP_HIGHMEM\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"GFP_DMA32\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"__GFP_HIGH\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"__GFP_ATOMIC\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"__GFP_IO\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"__GFP_FS\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"__GFP_NOWARN\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"__GFP_RETRY_MAYFAIL\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"__GFP_NOFAIL\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"__GFP_NORETRY\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"__GFP_COMP\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"__GFP_ZERO\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"__GFP_NOMEMALLOC\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"__GFP_MEMALLOC\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"__GFP_HARDWALL\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"__GFP_THISNODE\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"__GFP_RECLAIMABLE\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"__GFP_MOVABLE\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"__GFP_ACCOUNT\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"__GFP_WRITE\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"__GFP_RECLAIM\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"__GFP_DIRECT_RECLAIM\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"__GFP_KSWAPD_RECLAIM\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"__GFP_ZEROTAGS\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"__GFP_SKIP_KASAN_POISON\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"nid\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"enum zone_type\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.100 = private unnamed_addr constant [35 x i8] c"node=%d zone=%-8s order=%d ret=%s\0A\00", align 1
@trace_raw_output_mm_compaction_suitable_template.symbols = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.101 }, %struct.trace_print_flags { i32 1, ptr @.str.102 }, %struct.trace_print_flags { i32 2, ptr @.str.103 }, %struct.trace_print_flags { i32 3, ptr @.str.104 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.101 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"HighMem\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"Movable\00", align 1
@trace_raw_output_mm_compaction_suitable_template.symbols.105 = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.43 }, %struct.trace_print_flags { i32 2, ptr @.str.44 }, %struct.trace_print_flags { i32 4, ptr @.str.45 }, %struct.trace_print_flags { i32 8, ptr @.str.46 }, %struct.trace_print_flags { i32 6, ptr @.str.47 }, %struct.trace_print_flags { i32 5, ptr @.str.48 }, %struct.trace_print_flags { i32 3, ptr @.str.49 }, %struct.trace_print_flags { i32 0, ptr @.str.50 }, %struct.trace_print_flags { i32 7, ptr @.str.51 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.106 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"considered\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"defer_shift\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"order_failed\00", align 1
@.str.110 = private unnamed_addr constant [66 x i8] c"node=%d zone=%-8s order=%d order_failed=%d consider=%u limit=%lu\0A\00", align 1
@trace_raw_output_mm_compaction_defer_template.symbols = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.101 }, %struct.trace_print_flags { i32 1, ptr @.str.102 }, %struct.trace_print_flags { i32 2, ptr @.str.103 }, %struct.trace_print_flags { i32 3, ptr @.str.104 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.111 = private unnamed_addr constant [8 x i8] c"nid=%d\0A\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"highest_zoneidx\00", align 1
@.str.113 = private unnamed_addr constant [36 x i8] c"nid=%d order=%d classzone_idx=%-8s\0A\00", align 1
@trace_raw_output_kcompactd_wake_template.symbols = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.101 }, %struct.trace_print_flags { i32 1, ptr @.str.102 }, %struct.trace_print_flags { i32 2, ptr @.str.103 }, %struct.trace_print_flags { i32 3, ptr @.str.104 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.115 = private unnamed_addr constant [16 x i8] c"mm/compaction.c\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@page_group_by_mobility_disabled = external dso_local local_unnamed_addr global i32, align 4
@fast_isolate_freepages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.116 = private unnamed_addr constant [21 x i8] c"mm/compaction:online\00", align 1
@.str.117 = private unnamed_addr constant [52 x i8] c"\013kcompactd: failed to register hotplug callbacks.\0A\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @TRACE_SYSTEM_COMPACT_COMPLETE, ptr @TRACE_SYSTEM_COMPACT_CONTENDED, ptr @TRACE_SYSTEM_COMPACT_CONTINUE, ptr @TRACE_SYSTEM_COMPACT_DEFERRED, ptr @TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @TRACE_SYSTEM_COMPACT_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_SUCCESS, ptr @TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @TRACE_SYSTEM_ZONE_DMA, ptr @TRACE_SYSTEM_ZONE_HIGHMEM, ptr @TRACE_SYSTEM_ZONE_MOVABLE, ptr @TRACE_SYSTEM_ZONE_NORMAL, ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @__TRACE_SYSTEM_ZONE_DMA, ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, ptr @__TRACE_SYSTEM_ZONE_MOVABLE, ptr @__TRACE_SYSTEM_ZONE_NORMAL, ptr @__event_mm_compaction_begin, ptr @__event_mm_compaction_defer_compaction, ptr @__event_mm_compaction_defer_reset, ptr @__event_mm_compaction_deferred, ptr @__event_mm_compaction_end, ptr @__event_mm_compaction_finished, ptr @__event_mm_compaction_isolate_freepages, ptr @__event_mm_compaction_isolate_migratepages, ptr @__event_mm_compaction_kcompactd_sleep, ptr @__event_mm_compaction_kcompactd_wake, ptr @__event_mm_compaction_migratepages, ptr @__event_mm_compaction_suitable, ptr @__event_mm_compaction_try_to_compact_pages, ptr @__event_mm_compaction_wakeup_kcompactd, ptr @__initcall__kmod_compaction__375_3056_kcompactd_init4, ptr @__ksymtab_PageMovable, ptr @__ksymtab___ClearPageMovable, ptr @__ksymtab___SetPageMovable, ptr @__tracepoint_mm_compaction_begin, ptr @__tracepoint_mm_compaction_defer_compaction, ptr @__tracepoint_mm_compaction_defer_reset, ptr @__tracepoint_mm_compaction_deferred, ptr @__tracepoint_mm_compaction_end, ptr @__tracepoint_mm_compaction_finished, ptr @__tracepoint_mm_compaction_isolate_freepages, ptr @__tracepoint_mm_compaction_isolate_migratepages, ptr @__tracepoint_mm_compaction_kcompactd_sleep, ptr @__tracepoint_mm_compaction_kcompactd_wake, ptr @__tracepoint_mm_compaction_migratepages, ptr @__tracepoint_mm_compaction_suitable, ptr @__tracepoint_mm_compaction_try_to_compact_pages, ptr @__tracepoint_mm_compaction_wakeup_kcompactd, ptr @__tracepoint_ptr_mm_compaction_begin, ptr @__tracepoint_ptr_mm_compaction_defer_compaction, ptr @__tracepoint_ptr_mm_compaction_defer_reset, ptr @__tracepoint_ptr_mm_compaction_deferred, ptr @__tracepoint_ptr_mm_compaction_end, ptr @__tracepoint_ptr_mm_compaction_finished, ptr @__tracepoint_ptr_mm_compaction_isolate_freepages, ptr @__tracepoint_ptr_mm_compaction_isolate_migratepages, ptr @__tracepoint_ptr_mm_compaction_kcompactd_sleep, ptr @__tracepoint_ptr_mm_compaction_kcompactd_wake, ptr @__tracepoint_ptr_mm_compaction_migratepages, ptr @__tracepoint_ptr_mm_compaction_suitable, ptr @__tracepoint_ptr_mm_compaction_try_to_compact_pages, ptr @__tracepoint_ptr_mm_compaction_wakeup_kcompactd, ptr @event_class_kcompactd_wake_template, ptr @event_class_mm_compaction_begin, ptr @event_class_mm_compaction_defer_template, ptr @event_class_mm_compaction_end, ptr @event_class_mm_compaction_isolate_template, ptr @event_class_mm_compaction_kcompactd_sleep, ptr @event_class_mm_compaction_migratepages, ptr @event_class_mm_compaction_suitable_template, ptr @event_class_mm_compaction_try_to_compact_pages, ptr @event_mm_compaction_begin, ptr @event_mm_compaction_defer_compaction, ptr @event_mm_compaction_defer_reset, ptr @event_mm_compaction_deferred, ptr @event_mm_compaction_end, ptr @event_mm_compaction_finished, ptr @event_mm_compaction_isolate_freepages, ptr @event_mm_compaction_isolate_migratepages, ptr @event_mm_compaction_kcompactd_sleep, ptr @event_mm_compaction_kcompactd_wake, ptr @event_mm_compaction_migratepages, ptr @event_mm_compaction_suitable, ptr @event_mm_compaction_try_to_compact_pages, ptr @event_mm_compaction_wakeup_kcompactd], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_compaction_isolate_migratepages(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_isolate_migratepages, i32 0, i32 7), align 4
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_compaction_isolate_freepages(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_isolate_freepages, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_mm_compaction_migratepages(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_migratepages, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_mm_compaction_begin(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_begin, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) #13
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_compaction_end(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_end, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6) #13
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_compaction_try_to_compact_pages(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_try_to_compact_pages, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_mm_compaction_finished(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_finished, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_compaction_suitable(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_suitable, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_compaction_deferred(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_deferred, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_compaction_defer_compaction(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_compaction, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_compaction_defer_reset(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_reset, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_compaction_kcompactd_sleep(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_kcompactd_sleep, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_mm_compaction_wakeup_kcompactd(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_wakeup_kcompactd, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_mm_compaction_kcompactd_wake(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_kcompactd_wake, i32 0, i32 7), align 4
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
define internal void @trace_event_raw_event_mm_compaction_isolate_template(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
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
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #13
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_compaction_isolate_template(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
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
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #8, !srcloc !12
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
  %36 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %23, i32 0, i32 4
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_compaction_migratepages(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %21, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_migratepages, ptr %15, i32 0, i32 1
  store i32 %2, ptr %18, align 4
  %19 = sub i32 %1, %2
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_migratepages, ptr %15, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %21

21:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_compaction_migratepages(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

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
  %34 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_migratepages, ptr %21, i32 0, i32 1
  store i32 %2, ptr %34, align 4
  %35 = sub i32 %1, %2
  %36 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_migratepages, ptr %21, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %13, ptr noundef null) #13
  br label %39

39:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_compaction_begin(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  %8 = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %6
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %17, label %27, label %18

18:                                               ; preds = %16, %13, %6
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %19, i32 0, i32 1
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %19, i32 0, i32 2
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %19, i32 0, i32 3
  store i32 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %19, i32 0, i32 4
  store i32 %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %19, i32 0, i32 5
  store i8 %8, ptr %26, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #13
  br label %27

27:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_compaction_begin(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #8, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %21, %6
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 4
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
  %38 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %25, i32 0, i32 1
  store i32 %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %25, i32 0, i32 2
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %25, i32 0, i32 3
  store i32 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %25, i32 0, i32 4
  store i32 %4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %25, i32 0, i32 5
  store i8 %9, ptr %42, align 4
  %43 = load i32, ptr %8, align 4
  %44 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 28, i32 noundef %43, ptr noundef %0, i64 noundef 1, ptr noundef %44, ptr noundef %17, ptr noundef null) #13
  br label %45

45:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_compaction_end(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  %9 = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !10

14:                                               ; preds = %7
  %15 = and i32 %11, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #13
  br i1 %18, label %29, label %19

19:                                               ; preds = %17, %14, %7
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 32) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %20, i32 0, i32 1
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %20, i32 0, i32 2
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %20, i32 0, i32 3
  store i32 %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %20, i32 0, i32 4
  store i32 %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %20, i32 0, i32 5
  store i8 %9, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %20, i32 0, i32 6
  store i32 %6, ptr %28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #13
  br label %29

29:                                               ; preds = %22, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_compaction_end(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #8, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %22, %7
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 4
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
  %39 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %26, i32 0, i32 1
  store i32 %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %26, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %26, i32 0, i32 3
  store i32 %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %26, i32 0, i32 4
  store i32 %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %26, i32 0, i32 5
  store i8 %10, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %26, i32 0, i32 6
  store i32 %6, ptr %44, align 4
  %45 = load i32, ptr %9, align 4
  %46 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 36, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %18, ptr noundef null) #13
  br label %47

47:                                               ; preds = %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_compaction_try_to_compact_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_try_to_compact_pages, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_try_to_compact_pages, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_try_to_compact_pages, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_compaction_try_to_compact_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !12
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
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_try_to_compact_pages, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_try_to_compact_pages, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_try_to_compact_pages, ptr %22, i32 0, i32 3
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
define internal void @trace_event_raw_event_mm_compaction_suitable_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  br i1 %14, label %29, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %16, i32 0, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %1 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %22, %23
  %25 = sdiv exact i32 %24, 896
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %16, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %16, i32 0, i32 3
  store i32 %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %16, i32 0, i32 4
  store i32 %3, ptr %28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %29

29:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_compaction_suitable_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

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
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %22, i32 0, i32 1
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %1 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = sdiv exact i32 %40, 896
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %22, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %22, i32 0, i32 3
  store i32 %2, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %22, i32 0, i32 4
  store i32 %3, ptr %44, align 4
  %45 = load i32, ptr %6, align 4
  %46 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %14, ptr noundef null) #13
  br label %47

47:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_compaction_defer_template(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %36, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 32) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %15, i32 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %1 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = sdiv exact i32 %23, 896
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %15, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %15, i32 0, i32 3
  store i32 %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 30
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %15, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 31
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %15, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 32
  %34 = load i32, ptr %33, align 32
  %35 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %15, i32 0, i32 6
  store i32 %34, ptr %35, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %36

36:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_compaction_defer_template(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
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
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %54, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

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
  %34 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %21, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = ptrtoint ptr %1 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = sdiv exact i32 %39, 896
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %21, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %21, i32 0, i32 3
  store i32 %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 30
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %21, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 31
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %21, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 32
  %50 = load i32, ptr %49, align 32
  %51 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %21, i32 0, i32 6
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %5, align 4
  %53 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %52, ptr noundef %0, i64 noundef 1, ptr noundef %53, ptr noundef %13, ptr noundef null) #13
  br label %54

54:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_compaction_kcompactd_sleep(ptr noundef %0, i32 noundef %1) #0 {
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
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_kcompactd_sleep, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_compaction_kcompactd_sleep(ptr noundef %0, i32 noundef %1) #0 {
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
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #8, !srcloc !12
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
  %33 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_kcompactd_sleep, ptr %20, i32 0, i32 1
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
define internal void @trace_event_raw_event_kcompactd_wake_template(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %19 = getelementptr inbounds %struct.trace_event_raw_kcompactd_wake_template, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_kcompactd_wake_template, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_kcompactd_wake_template, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kcompactd_wake_template(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !12
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
  %35 = getelementptr inbounds %struct.trace_event_raw_kcompactd_wake_template, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_kcompactd_wake_template, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_kcompactd_wake_template, ptr %22, i32 0, i32 3
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
define dso_local i32 @PageMovable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = tail call ptr @page_mapping(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.address_space_operations, ptr %12, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10, %7
  br label %19

19:                                               ; preds = %18, %14, %1
  %20 = phi i32 [ 0, %18 ], [ 0, %1 ], [ 1, %14 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @__SetPageMovable(ptr nocapture noundef writeonly %0, ptr noundef %1) #3 {
  %3 = ptrtoint ptr %1 to i32
  %4 = or i32 %3, 2
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__ClearPageMovable(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 2
  %6 = inttoptr i32 %5 to ptr
  store ptr %6, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @compaction_defer_reset(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  br i1 %2, label %4, label %7

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 30
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 31
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 32
  %9 = load i32, ptr %8, align 32
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = add i32 %1, 1
  store i32 %12, ptr %8, align 32
  br label %13

13:                                               ; preds = %11, %7
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_reset, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_reset, i32 0, i32 7), align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %35, %30 ], [ %28, %27 ]
  %32 = load volatile ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tracepoint_func, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %32(ptr noundef %34, ptr noundef %0, i32 noundef %1) #13
  %35 = getelementptr %struct.tracepoint_func, ptr %31, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %27
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %39

39:                                               ; preds = %38, %16, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_isolation_suitable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 13
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 33
  %7 = load i8, ptr %6, align 4, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @__reset_isolation_suitable(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1
  %12 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 13
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 33
  %17 = load i8, ptr %16, align 4, !range !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call fastcc void @__reset_isolation_suitable(ptr noundef %11)
  br label %20

20:                                               ; preds = %19, %15, %10
  %21 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2
  %22 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 13
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 33
  %27 = load i8, ptr %26, align 4, !range !15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @__reset_isolation_suitable(ptr noundef %21)
  br label %30

30:                                               ; preds = %29, %25, %20
  %31 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3
  %32 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 13
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 33
  %37 = load i8, ptr %36, align 4, !range !15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @__reset_isolation_suitable(ptr noundef %31)
  br label %40

40:                                               ; preds = %39, %35, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__reset_isolation_suitable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 33
  %3 = load i8, ptr %2, align 4, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %7, -1
  %11 = add i32 %10, %9
  store i8 0, ptr %2, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 28
  %15 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 27
  %16 = getelementptr %struct.zone, ptr %0, i32 0, i32 27, i32 1
  %17 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 29
  %18 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 26
  br label %19

19:                                               ; preds = %38, %13
  %20 = phi i32 [ %9, %13 ], [ %41, %38 ]
  %21 = phi i1 [ false, %13 ], [ %40, %38 ]
  %22 = phi i1 [ false, %13 ], [ %33, %38 ]
  %23 = phi i32 [ %9, %13 ], [ %39, %38 ]
  %24 = phi i32 [ %11, %13 ], [ %32, %38 ]
  %25 = phi i32 [ %11, %13 ], [ %42, %38 ]
  %26 = tail call i32 @__cond_resched() #13
  %27 = tail call fastcc zeroext i1 @__reset_isolation_pfn(ptr noundef %0, i32 noundef %20, i1 noundef zeroext true, i1 noundef zeroext %22)
  %28 = icmp ult i32 %20, %24
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 %20, ptr %14, align 16
  store i32 %20, ptr %15, align 8
  store i32 %20, ptr %16, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = phi i32 [ %20, %30 ], [ %24, %19 ]
  %33 = phi i1 [ true, %30 ], [ %22, %19 ]
  %34 = tail call fastcc zeroext i1 @__reset_isolation_pfn(ptr noundef %0, i32 noundef %25, i1 noundef zeroext %21, i1 noundef zeroext true)
  %35 = icmp ugt i32 %25, %23
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 %25, ptr %17, align 4
  store i32 %25, ptr %18, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ %25, %37 ], [ %23, %31 ]
  %40 = phi i1 [ true, %37 ], [ %21, %31 ]
  %41 = add i32 %20, 2048
  %42 = add i32 %25, -2048
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %19, label %44

44:                                               ; preds = %38, %5
  %45 = phi i32 [ %11, %5 ], [ %42, %38 ]
  %46 = phi i32 [ %11, %5 ], [ %32, %38 ]
  %47 = phi i32 [ %9, %5 ], [ %39, %38 ]
  %48 = phi i32 [ %9, %5 ], [ %41, %38 ]
  %49 = icmp ult i32 %46, %47
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 27
  store i32 %48, ptr %51, align 8
  %52 = getelementptr %struct.zone, ptr %0, i32 0, i32 27, i32 1
  store i32 %48, ptr %52, align 4
  %53 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 26
  store i32 %45, ptr %53, align 4
  br label %54

54:                                               ; preds = %50, %44, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @isolate_freepages_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = alloca %struct.list_head, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr %6, ptr %6, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 7
  %10 = icmp ult i32 %1, %2
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %12, align 4
  br label %135

13:                                               ; preds = %3
  %14 = add i32 %1, 2048
  %15 = and i32 %14, -2048
  %16 = and i32 %1, -2048
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.zone, ptr %17, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @llvm.umax.i32(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %52, %13
  %22 = phi i32 [ %53, %52 ], [ %1, %13 ]
  %23 = phi i32 [ %33, %52 ], [ %20, %13 ]
  %24 = phi i32 [ %54, %52 ], [ %15, %13 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 %22, ptr %7, align 4
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 %2)
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = and i32 %22, -2048
  %29 = add i32 %22, 2048
  %30 = and i32 %29, -2048
  %31 = call i32 @llvm.umin.i32(i32 %30, i32 %2)
  br label %32

32:                                               ; preds = %27, %21
  %33 = phi i32 [ %31, %27 ], [ %25, %21 ]
  %34 = phi i32 [ %28, %27 ], [ %23, %21 ]
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr inbounds %struct.zone, ptr %35, i32 0, i32 34
  %37 = load i8, ptr %36, align 1, !range !15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr @mem_map, align 4
  %41 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %42 = sub i32 %34, %41
  %43 = getelementptr %struct.page, ptr %40, i32 %42
  br label %46

44:                                               ; preds = %32
  %45 = call ptr @__pageblock_pfn_to_page(i32 noundef %34, i32 noundef %33, ptr noundef %35) #13
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %43, %39 ], [ %45, %44 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = call fastcc i32 @isolate_freepages_block(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %33, ptr noundef nonnull %6, i32 noundef 0, i1 noundef zeroext true)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  %53 = add i32 %50, %22
  %54 = add i32 %33, 2048
  %55 = icmp ult i32 %53, %2
  br i1 %55, label %21, label %105

56:                                               ; preds = %49, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %5, ptr %5, align 8
  %57 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %57, align 4
  %58 = load ptr, ptr %6, align 8
  %59 = icmp eq ptr %58, %6
  br i1 %59, label %86, label %62

60:                                               ; preds = %75
  %61 = icmp eq ptr %65, %6
  br i1 %61, label %86, label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %65, %60 ], [ %58, %56 ]
  %64 = getelementptr i8, ptr %63, i32 -4
  %65 = load ptr, ptr %63, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %67, ptr %68, align 4
  store volatile ptr %65, ptr %67, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %63, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  %69 = getelementptr i8, ptr %63, i32 16
  %70 = load i32, ptr %69, align 4
  call void @post_alloc_hook(ptr noundef %64, i32 noundef %70, i32 noundef 8) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  call void @split_page(ptr noundef %64, i32 noundef %70) #13
  br label %73

73:                                               ; preds = %72, %62
  %74 = load ptr, ptr %5, align 8
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi ptr [ %74, %73 ], [ %79, %75 ]
  %77 = phi i32 [ 0, %73 ], [ %83, %75 ]
  %78 = phi ptr [ %64, %73 ], [ %82, %75 ]
  %79 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  store ptr %76, ptr %79, align 4
  %81 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %5, ptr %81, align 4
  store volatile ptr %79, ptr %5, align 8
  %82 = getelementptr %struct.page, ptr %78, i32 1
  %83 = add i32 %77, 1
  %84 = lshr i32 %83, %70
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %75, label %60

86:                                               ; preds = %60, %56
  %87 = load volatile ptr, ptr %5, align 8
  %88 = icmp eq ptr %87, %5
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %6, align 8
  %91 = load ptr, ptr %57, align 4
  %92 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %6, ptr %92, align 4
  store ptr %87, ptr %6, align 8
  store ptr %90, ptr %91, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %91, ptr %93, align 4
  br label %94

94:                                               ; preds = %89, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %95 = load ptr, ptr %6, align 8
  %96 = icmp eq ptr %95, %6
  br i1 %96, label %146, label %97

97:                                               ; preds = %97, %94
  %98 = phi ptr [ %99, %97 ], [ %95, %94 ]
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %98, i32 -4
  %101 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  store volatile ptr %99, ptr %102, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %98, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %101, align 4
  call void @__free_pages(ptr noundef %100, i32 noundef 0) #13
  %104 = icmp eq ptr %99, %6
  br i1 %104, label %146, label %97

105:                                              ; preds = %52
  %106 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  %107 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %107, align 4
  %108 = icmp eq ptr %106, %6
  br i1 %108, label %135, label %111

109:                                              ; preds = %124
  %110 = icmp eq ptr %114, %6
  br i1 %110, label %135, label %111

111:                                              ; preds = %109, %105
  %112 = phi ptr [ %114, %109 ], [ %106, %105 ]
  %113 = getelementptr i8, ptr %112, i32 -4
  %114 = load ptr, ptr %112, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %116, ptr %117, align 4
  store volatile ptr %114, ptr %116, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %112, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %115, align 4
  %118 = getelementptr i8, ptr %112, i32 16
  %119 = load i32, ptr %118, align 4
  call void @post_alloc_hook(ptr noundef %113, i32 noundef %119, i32 noundef 8) #13
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %111
  call void @split_page(ptr noundef %113, i32 noundef %119) #13
  br label %122

122:                                              ; preds = %121, %111
  %123 = load ptr, ptr %4, align 8
  br label %124

124:                                              ; preds = %124, %122
  %125 = phi ptr [ %123, %122 ], [ %128, %124 ]
  %126 = phi i32 [ 0, %122 ], [ %132, %124 ]
  %127 = phi ptr [ %113, %122 ], [ %131, %124 ]
  %128 = getelementptr inbounds %struct.page, ptr %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %128, ptr %129, align 4
  store ptr %125, ptr %128, align 4
  %130 = getelementptr inbounds %struct.page, ptr %127, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %4, ptr %130, align 4
  store volatile ptr %128, ptr %4, align 8
  %131 = getelementptr %struct.page, ptr %127, i32 1
  %132 = add i32 %126, 1
  %133 = lshr i32 %132, %119
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %124, label %109

135:                                              ; preds = %109, %105, %11
  %136 = phi ptr [ %12, %11 ], [ %107, %105 ], [ %107, %109 ]
  %137 = phi i32 [ %1, %11 ], [ %53, %105 ], [ %53, %109 ]
  %138 = load volatile ptr, ptr %4, align 8
  %139 = icmp eq ptr %138, %4
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %6, align 8
  %142 = load ptr, ptr %136, align 4
  %143 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %6, ptr %143, align 4
  store ptr %141, ptr %142, align 4
  %144 = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  store ptr %142, ptr %144, align 4
  br label %145

145:                                              ; preds = %140, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %146

146:                                              ; preds = %145, %97, %94
  %147 = phi i32 [ %137, %145 ], [ 0, %94 ], [ 0, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %147
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isolate_freepages_block(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = load i32, ptr %1, align 4
  %8 = select i1 %5, i32 1, i32 %4
  %9 = icmp ult i32 %7, %2
  br i1 %9, label %10, label %154

10:                                               ; preds = %6
  %11 = load ptr, ptr @mem_map, align 4
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %13 = sub i32 %7, %12
  %14 = getelementptr %struct.page, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 7
  %16 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 17
  %17 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 24
  %18 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 3
  br label %21

21:                                               ; preds = %132, %10
  %22 = phi i32 [ %7, %10 ], [ %138, %132 ]
  %23 = phi ptr [ %14, %10 ], [ %139, %132 ]
  %24 = phi i32 [ 0, %10 ], [ %135, %132 ]
  %25 = phi i32 [ 0, %10 ], [ %50, %132 ]
  %26 = phi i8 [ 0, %10 ], [ %136, %132 ]
  %27 = phi i32 [ 0, %10 ], [ %137, %132 ]
  %28 = and i32 %22, 31
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  %31 = icmp eq i8 %26, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %15, align 4
  %34 = getelementptr inbounds %struct.zone, ptr %33, i32 0, i32 22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %27) #13
  br label %35

35:                                               ; preds = %32, %30
  %36 = tail call ptr @llvm.thread.pointer() #13
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 98, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i8 1, ptr %17, align 2
  br label %154

46:                                               ; preds = %40, %35
  %47 = tail call i32 @__cond_resched() #13
  br label %48

48:                                               ; preds = %46, %21
  %49 = phi i8 [ 0, %46 ], [ %26, %21 ]
  %50 = add i32 %25, 1
  %51 = load volatile i32, ptr %23, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %54, %48
  %60 = load volatile i32, ptr %23, align 4
  %61 = and i32 %60, 65536
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = getelementptr %struct.page, ptr %23, i32 1, i32 1
  %65 = getelementptr inbounds %struct.anon.58, ptr %64, i32 0, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ult i8 %66, 12
  %69 = shl nsw i32 -1, %67
  %70 = xor i32 %69, -1
  br i1 %68, label %71, label %73

71:                                               ; preds = %63, %59
  %72 = phi i32 [ %70, %63 ], [ 0, %59 ]
  br label %73

73:                                               ; preds = %71, %63
  %74 = phi i32 [ %72, %71 ], [ 0, %63 ]
  %75 = getelementptr %struct.page, ptr %23, i32 %74
  %76 = add i32 %74, %22
  br label %127

77:                                               ; preds = %54
  %78 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, -268435328
  %81 = icmp eq i32 %80, -268435456
  br i1 %81, label %82, label %127

82:                                               ; preds = %77
  %83 = icmp eq i8 %49, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %82
  %85 = load ptr, ptr %15, align 4
  %86 = getelementptr inbounds %struct.zone, ptr %85, i32 0, i32 22
  %87 = load i32, ptr %16, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i8, ptr %17, align 2, !range !15
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %94 = tail call i32 @_raw_spin_trylock(ptr noundef %86) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %93) #13, !srcloc !17
  store i8 1, ptr %17, align 2
  br label %97

97:                                               ; preds = %96, %89, %84
  %98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %86) #13
  br label %99

99:                                               ; preds = %97, %92
  %100 = phi i32 [ %98, %97 ], [ %93, %92 ]
  %101 = load i32, ptr %78, align 4
  %102 = and i32 %101, -268435328
  %103 = icmp eq i32 %102, -268435456
  br i1 %103, label %104, label %127

104:                                              ; preds = %99, %82
  %105 = phi i32 [ %100, %99 ], [ %27, %82 ]
  %106 = phi i8 [ 1, %99 ], [ %49, %82 ]
  %107 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = tail call i32 @__isolate_free_page(ptr noundef %23, i32 noundef %108) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %147, label %111

111:                                              ; preds = %104
  store i32 %108, ptr %107, align 4
  %112 = add i32 %109, %24
  %113 = load i32, ptr %18, align 4
  %114 = add i32 %113, %109
  store i32 %114, ptr %18, align 4
  %115 = load ptr, ptr %19, align 4
  store ptr %55, ptr %19, align 4
  store ptr %3, ptr %55, align 4
  %116 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %115, ptr %116, align 4
  store volatile ptr %55, ptr %115, align 4
  br i1 %5, label %123, label %117

117:                                              ; preds = %111
  %118 = load i32, ptr %20, align 4
  %119 = load i32, ptr %18, align 4
  %120 = icmp ugt i32 %118, %119
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = add i32 %109, %22
  br label %147

123:                                              ; preds = %117, %111
  %124 = add i32 %109, -1
  %125 = add i32 %124, %22
  %126 = getelementptr %struct.page, ptr %23, i32 %124
  br label %132

127:                                              ; preds = %99, %77, %73
  %128 = phi i32 [ %27, %77 ], [ %100, %99 ], [ %27, %73 ]
  %129 = phi i8 [ %49, %77 ], [ 1, %99 ], [ %49, %73 ]
  %130 = phi ptr [ %23, %77 ], [ %23, %99 ], [ %75, %73 ]
  %131 = phi i32 [ %22, %77 ], [ %22, %99 ], [ %76, %73 ]
  br i1 %5, label %141, label %132

132:                                              ; preds = %127, %123
  %133 = phi i32 [ %125, %123 ], [ %131, %127 ]
  %134 = phi ptr [ %126, %123 ], [ %130, %127 ]
  %135 = phi i32 [ %112, %123 ], [ %24, %127 ]
  %136 = phi i8 [ %106, %123 ], [ %129, %127 ]
  %137 = phi i32 [ %105, %123 ], [ %128, %127 ]
  %138 = add i32 %133, %8
  %139 = getelementptr %struct.page, ptr %134, i32 %8
  %140 = icmp ult i32 %138, %2
  br i1 %140, label %21, label %141

141:                                              ; preds = %132, %127
  %142 = phi i32 [ %135, %132 ], [ %24, %127 ]
  %143 = phi i32 [ %137, %132 ], [ %128, %127 ]
  %144 = phi i8 [ %136, %132 ], [ %129, %127 ]
  %145 = phi i32 [ %138, %132 ], [ %131, %127 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %141, %121, %104
  %148 = phi i32 [ %145, %141 ], [ %122, %121 ], [ %22, %104 ]
  %149 = phi i32 [ %142, %141 ], [ %112, %121 ], [ %24, %104 ]
  %150 = phi i32 [ %143, %141 ], [ %105, %121 ], [ %105, %104 ]
  %151 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 7
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.zone, ptr %152, i32 0, i32 22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %153, i32 noundef %150) #13
  br label %154

154:                                              ; preds = %147, %141, %45, %6
  %155 = phi i32 [ %148, %147 ], [ %145, %141 ], [ %22, %45 ], [ %7, %6 ]
  %156 = phi i32 [ %149, %147 ], [ %142, %141 ], [ %24, %45 ], [ 0, %6 ]
  %157 = phi i32 [ %50, %147 ], [ %50, %141 ], [ %25, %45 ], [ 0, %6 ]
  %158 = icmp ugt i32 %155, %2
  br i1 %158, label %159, label %160, !prof !11

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159, %154
  %161 = phi i32 [ %2, %159 ], [ %155, %154 ]
  %162 = load i32, ptr %1, align 4
  %163 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_isolate_freepages, i32 0, i32 1), align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %188

165:                                              ; preds = %160
  %166 = tail call ptr @llvm.thread.pointer() #13
  %167 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %168 = load i32, ptr %167, align 8
  %169 = lshr i32 %168, 5
  %170 = getelementptr i32, ptr @__cpu_online_mask, i32 %169
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %168, 31
  %173 = shl nuw i32 1, %172
  %174 = and i32 %173, %171
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %165
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %177 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_isolate_freepages, i32 0, i32 7), align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %187, label %179

179:                                              ; preds = %179, %176
  %180 = phi ptr [ %184, %179 ], [ %177, %176 ]
  %181 = load volatile ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.tracepoint_func, ptr %180, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  tail call void %181(ptr noundef %183, i32 noundef %162, i32 noundef %161, i32 noundef %157, i32 noundef %156) #13
  %184 = getelementptr %struct.tracepoint_func, ptr %180, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %179

187:                                              ; preds = %179, %176
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %188

188:                                              ; preds = %187, %165, %160
  store i32 %161, ptr %1, align 4
  %189 = icmp ult i32 %161, %2
  %190 = and i1 %189, %5
  %191 = select i1 %190, i32 0, i32 %156
  %192 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 9
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, %157
  store i32 %194, ptr %192, align 4
  %195 = icmp eq i32 %191, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %188
  %197 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %198 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %199 = inttoptr i32 %198 to ptr
  %200 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %199) #8, !srcloc !12
  %201 = add i32 %200, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 53) to i32)
  %202 = inttoptr i32 %201 to ptr
  %203 = load i32, ptr %202, align 4
  %204 = add i32 %203, %191
  store i32 %204, ptr %202, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %197) #13, !srcloc !17
  br label %205

205:                                              ; preds = %196, %188
  ret i32 %191
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @isolate_migratepages_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 3
  %6 = icmp ult i32 %1, %2
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = add i32 %1, 2048
  %9 = and i32 %8, -2048
  %10 = and i32 %1, -2048
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.zone, ptr %11, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %44, %7
  %16 = phi ptr [ %11, %7 ], [ %46, %44 ]
  %17 = phi i32 [ %1, %7 ], [ %20, %44 ]
  %18 = phi i32 [ %14, %7 ], [ %20, %44 ]
  %19 = phi i32 [ %9, %7 ], [ %45, %44 ]
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %2)
  %21 = getelementptr inbounds %struct.zone, ptr %16, i32 0, i32 34
  %22 = load i8, ptr %21, align 1, !range !15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr @mem_map, align 4
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = sub i32 %18, %26
  %28 = getelementptr %struct.page, ptr %25, i32 %27
  br label %31

29:                                               ; preds = %15
  %30 = tail call ptr @__pageblock_pfn_to_page(i32 noundef %18, i32 noundef %20, ptr noundef %16) #13
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi ptr [ %28, %24 ], [ %30, %29 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @isolate_migratepages_block(ptr noundef %0, i32 noundef %17, i32 noundef %20, i32 noundef 8)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, ptr %5, align 4
  %39 = icmp ult i32 %38, 32
  %40 = icmp ult i32 %19, %2
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %44, label %47

42:                                               ; preds = %31
  %43 = icmp ult i32 %19, %2
  br i1 %43, label %44, label %47

44:                                               ; preds = %42, %37
  %45 = add i32 %20, 2048
  %46 = load ptr, ptr %4, align 4
  br label %15

47:                                               ; preds = %42, %37, %34, %3
  %48 = phi i32 [ 0, %3 ], [ 0, %37 ], [ %35, %34 ], [ 0, %42 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isolate_migratepages_block(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zone, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 5
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 17
  br label %12

12:                                               ; preds = %53, %4
  %13 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0) #13
  %15 = load volatile i32, ptr @vm_node_stat, align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0) #13
  %17 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0) #13
  %19 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0) #13
  %21 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 8), align 4
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0) #13
  %23 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 7), align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0) #13
  %25 = add nuw i32 %24, %22
  %26 = add nuw i32 %16, %14
  %27 = add i32 %26, %18
  %28 = add i32 %27, %20
  %29 = lshr i32 %28, 1
  %30 = icmp ugt i32 %25, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %12
  %32 = getelementptr %struct.pglist_data, ptr %8, i32 0, i32 10, i32 1, i32 1
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = getelementptr %struct.pglist_data, ptr %8, i32 0, i32 10, i32 1
  tail call void @__wake_up(ptr noundef %36, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %56

37:                                               ; preds = %12
  %38 = load i32, ptr %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %661

40:                                               ; preds = %37
  %41 = load i32, ptr %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %661, label %43

43:                                               ; preds = %40
  tail call void @reclaim_throttle(ptr noundef %8, i32 noundef 1) #13
  %44 = tail call ptr @llvm.thread.pointer() #13
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 98, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 8
  %52 = and i32 %51, 1
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ 0, %43 ], [ %52, %48 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %12, label %661

56:                                               ; preds = %35, %31
  %57 = tail call i32 @__cond_resched() #13
  %58 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 21
  %59 = load i8, ptr %58, align 1, !range !15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 13
  %66 = load i32, ptr %65, align 4
  %67 = shl nsw i32 -1, %66
  %68 = sub i32 %1, %67
  %69 = and i32 %68, %67
  br label %70

70:                                               ; preds = %64, %61, %56
  %71 = phi i1 [ true, %64 ], [ false, %61 ], [ false, %56 ]
  %72 = phi i32 [ %69, %64 ], [ 0, %61 ], [ 0, %56 ]
  %73 = icmp ult i32 %1, %2
  br i1 %73, label %74, label %526

74:                                               ; preds = %70
  %75 = xor i1 %71, true
  %76 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 13
  %77 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 18
  %78 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 26
  %79 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 12
  %80 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 24
  %81 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 19
  %82 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 1
  %83 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 25
  br label %84

84:                                               ; preds = %517, %74
  %85 = phi i32 [ %1, %74 ], [ %524, %517 ]
  %86 = phi i1 [ false, %74 ], [ %522, %517 ]
  %87 = phi i32 [ %72, %74 ], [ %521, %517 ]
  %88 = phi ptr [ null, %74 ], [ %144, %517 ]
  %89 = phi ptr [ null, %74 ], [ %520, %517 ]
  %90 = phi i32 [ 0, %74 ], [ %519, %517 ]
  %91 = phi i32 [ 0, %74 ], [ %125, %517 ]
  %92 = phi i32 [ 0, %74 ], [ %518, %517 ]
  %93 = icmp ult i32 %85, %87
  %94 = select i1 %75, i1 true, i1 %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %84
  %96 = icmp eq i32 %90, 0
  br i1 %96, label %97, label %526

97:                                               ; preds = %95
  %98 = load i32, ptr %76, align 4
  %99 = shl nsw i32 -1, %98
  %100 = sub i32 %85, %99
  %101 = and i32 %100, %99
  br label %102

102:                                              ; preds = %97, %84
  %103 = phi i32 [ %101, %97 ], [ %87, %84 ]
  %104 = and i32 %85, 31
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = icmp eq ptr %89, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.lruvec, ptr %89, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %92) #13
  br label %110

110:                                              ; preds = %108, %106
  %111 = tail call ptr @llvm.thread.pointer() #13
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 98, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 256
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  store i8 1, ptr %80, align 2
  br label %642

121:                                              ; preds = %115, %110
  %122 = tail call i32 @__cond_resched() #13
  br label %123

123:                                              ; preds = %121, %102
  %124 = phi ptr [ %89, %102 ], [ null, %121 ]
  %125 = add i32 %91, 1
  %126 = load ptr, ptr @mem_map, align 4
  %127 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %128 = sub i32 %85, %127
  %129 = getelementptr %struct.page, ptr %126, i32 %128
  %130 = icmp eq ptr %88, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %123
  %132 = and i32 %85, 2047
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i8, ptr %77, align 4, !range !15
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = shl i32 %128, 5
  %139 = ashr exact i32 %138, 5
  %140 = add i32 %139, %127
  %141 = tail call i32 @get_pfnblock_flags_mask(ptr noundef %129, i32 noundef %140, i32 noundef 8) #13
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %536

143:                                              ; preds = %137, %134, %131, %123
  %144 = phi ptr [ %88, %123 ], [ null, %131 ], [ %129, %137 ], [ %129, %134 ]
  %145 = getelementptr %struct.page, ptr %126, i32 %128, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, -268435328
  %148 = icmp eq i32 %147, -268435456
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = getelementptr %struct.page, ptr %126, i32 %128, i32 1, i32 0, i32 3
  %151 = load volatile i32, ptr %150, align 4
  %152 = add i32 %151, -1
  %153 = icmp ult i32 %152, 11
  %154 = shl nsw i32 -1, %151
  %155 = xor i32 %154, -1
  %156 = select i1 %153, i32 %155, i32 0
  %157 = add i32 %156, %85
  br label %517

158:                                              ; preds = %143
  %159 = load volatile i32, ptr %129, align 4
  %160 = and i32 %159, 65536
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = getelementptr %struct.page, ptr %126, i32 %128, i32 1
  %164 = load volatile i32, ptr %163, align 4
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %185, label %167

167:                                              ; preds = %162, %158
  %168 = load i8, ptr %78, align 4, !range !15
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %167
  %171 = load volatile i32, ptr %129, align 4
  %172 = and i32 %171, 65536
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %170
  %175 = getelementptr %struct.page, ptr %129, i32 1, i32 1
  %176 = getelementptr inbounds %struct.anon.58, ptr %175, i32 0, i32 2
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp ult i8 %177, 12
  %180 = shl nsw i32 -1, %178
  %181 = xor i32 %180, -1
  %182 = add i32 %85, %181
  br i1 %179, label %183, label %497

183:                                              ; preds = %174, %170
  %184 = phi i32 [ %182, %174 ], [ %85, %170 ]
  br label %497

185:                                              ; preds = %167, %162
  %186 = getelementptr %struct.page, ptr %126, i32 %128, i32 1
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %187, 1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190, !prof !10

190:                                              ; preds = %185
  %191 = add i32 %187, -1
  br label %194

192:                                              ; preds = %185
  %193 = ptrtoint ptr %129 to i32
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = inttoptr i32 %195 to ptr
  %197 = load volatile i32, ptr %196, align 4
  %198 = and i32 %197, 16
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %194
  %201 = getelementptr %struct.page, ptr %126, i32 %128, i32 1, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = ptrtoint ptr %202 to i32
  %204 = and i32 %203, 3
  %205 = icmp eq i32 %204, 2
  br i1 %205, label %206, label %497, !prof !11

206:                                              ; preds = %200
  %207 = load volatile i32, ptr %129, align 4
  %208 = and i32 %207, 262144
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %497

210:                                              ; preds = %206
  %211 = icmp eq ptr %124, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %210
  %213 = getelementptr inbounds %struct.lruvec, ptr %124, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %213, i32 noundef %92) #13
  br label %214

214:                                              ; preds = %212, %210
  %215 = tail call i32 @isolate_movable_page(ptr noundef %129, i32 noundef %3) #13
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %434, label %497

217:                                              ; preds = %194
  %218 = tail call ptr @page_mapping(ptr noundef %129) #13
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %248

220:                                              ; preds = %217
  %221 = load volatile i32, ptr %186, align 4
  %222 = and i32 %221, 1
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224, !prof !10

224:                                              ; preds = %220
  %225 = add i32 %221, -1
  br label %228

226:                                              ; preds = %220
  %227 = ptrtoint ptr %129 to i32
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = inttoptr i32 %229 to ptr
  %231 = getelementptr inbounds %struct.page, ptr %230, i32 0, i32 3
  %232 = load volatile i32, ptr %231, align 4
  %233 = load volatile i32, ptr %129, align 4
  %234 = and i32 %233, 65536
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %228
  %237 = load volatile i32, ptr %186, align 4
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240, !prof !10

240:                                              ; preds = %236, %228
  %241 = tail call i32 @__page_mapcount(ptr noundef %129) #13
  br label %245

242:                                              ; preds = %236
  %243 = load volatile i32, ptr %145, align 4
  %244 = add i32 %243, 1
  br label %245

245:                                              ; preds = %242, %240
  %246 = phi i32 [ %241, %240 ], [ %244, %242 ]
  %247 = icmp sgt i32 %232, %246
  br i1 %247, label %497, label %248

248:                                              ; preds = %245, %217
  %249 = load i32, ptr %79, align 4
  %250 = and i32 %249, 128
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = tail call ptr @page_mapping(ptr noundef %129) #13
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %497

255:                                              ; preds = %252, %248
  %256 = getelementptr %struct.page, ptr %126, i32 %128, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %256) #13, !srcloc !21
  %257 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %256, ptr %256, i32 0, i32 1, ptr elementtype(i32) %256) #13, !srcloc !22
  %258 = extractvalue { i32, i32, i32 } %257, 0
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %497, label %260

260:                                              ; preds = %255
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %261 = tail call zeroext i1 @__isolate_lru_page_prepare(ptr noundef %129, i32 noundef %3) #13
  br i1 %261, label %262, label %470

262:                                              ; preds = %260
  %263 = load volatile i32, ptr %186, align 4
  %264 = and i32 %263, 1
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266, !prof !10

266:                                              ; preds = %262
  %267 = add i32 %263, -1
  br label %270

268:                                              ; preds = %262
  %269 = ptrtoint ptr %129 to i32
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  %272 = inttoptr i32 %271 to ptr
  %273 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %272) #13
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %470, label %275

275:                                              ; preds = %270
  %276 = load volatile i32, ptr %186, align 4
  %277 = icmp eq ptr %124, getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24)
  br i1 %277, label %356, label %278

278:                                              ; preds = %275
  %279 = icmp eq ptr %124, null
  br i1 %279, label %282, label %280

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.lruvec, ptr %124, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %281, i32 noundef %92) #13
  br label %282

282:                                              ; preds = %280, %278
  %283 = load i32, ptr %11, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %282
  %286 = load i8, ptr %80, align 2, !range !15
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %290 = tail call i32 @_raw_spin_trylock(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #13
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %289) #13, !srcloc !17
  store i8 1, ptr %80, align 2
  br label %293

293:                                              ; preds = %292, %285, %282
  %294 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #13
  br label %295

295:                                              ; preds = %293, %288
  %296 = phi i32 [ %294, %293 ], [ %289, %288 ]
  %297 = load volatile i32, ptr %186, align 4
  br i1 %86, label %324, label %298

298:                                              ; preds = %295
  %299 = load i8, ptr %77, align 4, !range !15
  %300 = icmp eq i8 %299, 0
  %301 = and i32 %85, 2047
  %302 = icmp eq i32 %301, 0
  %303 = and i1 %302, %300
  br i1 %303, label %304, label %324

304:                                              ; preds = %298
  %305 = load ptr, ptr @mem_map, align 4
  %306 = ptrtoint ptr %129 to i32
  %307 = ptrtoint ptr %305 to i32
  %308 = sub i32 %306, %307
  %309 = ashr exact i32 %308, 5
  %310 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %311 = add i32 %309, %310
  %312 = tail call i32 @get_pfnblock_flags_mask(ptr noundef %129, i32 noundef %311, i32 noundef 8) #13
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %547

314:                                              ; preds = %304
  %315 = load i8, ptr %81, align 1, !range !15
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %324

317:                                              ; preds = %314
  %318 = load ptr, ptr @mem_map, align 4
  %319 = ptrtoint ptr %318 to i32
  %320 = sub i32 %306, %319
  %321 = ashr exact i32 %320, 5
  %322 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %323 = add i32 %321, %322
  tail call void @set_pfnblock_flags_mask(ptr noundef %129, i32 noundef 8, i32 noundef %323, i32 noundef 8) #13
  br label %324

324:                                              ; preds = %317, %314, %298, %295
  %325 = load volatile i32, ptr %129, align 4
  %326 = and i32 %325, 65536
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = load volatile i32, ptr %186, align 4
  %330 = and i32 %329, 1
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %356, label %332

332:                                              ; preds = %328, %324
  %333 = load i8, ptr %78, align 4, !range !15
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %356, !prof !11

335:                                              ; preds = %332
  %336 = load volatile i32, ptr %129, align 4
  %337 = and i32 %336, 65536
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %335
  %340 = getelementptr %struct.page, ptr %129, i32 1, i32 1, i32 0, i32 2
  %341 = load i32, ptr %340, align 4
  br label %342

342:                                              ; preds = %339, %335
  %343 = phi i32 [ %341, %339 ], [ 1, %335 ]
  %344 = add i32 %85, -1
  %345 = add i32 %344, %343
  %346 = load volatile i32, ptr %186, align 4
  %347 = and i32 %346, 1
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %351, label %349, !prof !10

349:                                              ; preds = %342
  %350 = add i32 %346, -1
  br label %353

351:                                              ; preds = %342
  %352 = ptrtoint ptr %129 to i32
  br label %353

353:                                              ; preds = %351, %349
  %354 = phi i32 [ %350, %349 ], [ %352, %351 ]
  %355 = inttoptr i32 %354 to ptr
  tail call void @_set_bit(i32 noundef 4, ptr noundef %355) #13
  br label %472

356:                                              ; preds = %332, %328, %275
  %357 = phi i32 [ %92, %275 ], [ %296, %328 ], [ %296, %332 ]
  %358 = phi i1 [ %86, %275 ], [ true, %328 ], [ true, %332 ]
  %359 = load volatile i32, ptr %129, align 4
  %360 = and i32 %359, 65536
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %356
  %363 = load volatile i32, ptr %186, align 4
  %364 = and i32 %363, 1
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %377, label %366

366:                                              ; preds = %362, %356
  %367 = load volatile i32, ptr %129, align 4
  %368 = and i32 %367, 65536
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %366
  %371 = getelementptr %struct.page, ptr %129, i32 1, i32 1, i32 0, i32 2
  %372 = load i32, ptr %371, align 4
  br label %373

373:                                              ; preds = %370, %366
  %374 = phi i32 [ %372, %370 ], [ 1, %366 ]
  %375 = add i32 %85, -1
  %376 = add i32 %375, %374
  br label %377

377:                                              ; preds = %373, %362
  %378 = phi i32 [ %376, %373 ], [ %85, %362 ]
  %379 = load volatile i32, ptr %186, align 4
  %380 = and i32 %379, 1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %384, label %382, !prof !10

382:                                              ; preds = %377
  %383 = add i32 %379, -1
  br label %386

384:                                              ; preds = %377
  %385 = ptrtoint ptr %129 to i32
  br label %386

386:                                              ; preds = %384, %382
  %387 = phi i32 [ %383, %382 ], [ %385, %384 ]
  %388 = inttoptr i32 %387 to ptr
  %389 = getelementptr inbounds %struct.anon.70, ptr %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.anon.70, ptr %388, i32 0, i32 1, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = load ptr, ptr %389, align 4
  %393 = getelementptr inbounds %struct.list_head, ptr %392, i32 0, i32 1
  store ptr %391, ptr %393, align 4
  store volatile ptr %392, ptr %391, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %389, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %390, align 4
  %394 = load volatile i32, ptr %388, align 4
  %395 = and i32 %394, 1048576
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %406

397:                                              ; preds = %386
  %398 = load volatile i32, ptr %388, align 4
  %399 = lshr i32 %398, 18
  %400 = and i32 %399, 2
  %401 = load volatile i32, ptr %388, align 4
  %402 = lshr i32 %401, 5
  %403 = and i32 %402, 1
  %404 = or i32 %403, %400
  %405 = xor i32 %404, 2
  br label %406

406:                                              ; preds = %397, %386
  %407 = phi i32 [ %405, %397 ], [ 4, %386 ]
  %408 = load volatile i32, ptr %388, align 4
  %409 = and i32 %408, 65536
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %406
  %412 = getelementptr %struct.page, ptr %388, i32 1, i32 1, i32 0, i32 2
  %413 = load i32, ptr %412, align 4
  br label %414

414:                                              ; preds = %411, %406
  %415 = phi i32 [ %413, %411 ], [ 1, %406 ]
  %416 = lshr i32 %394, 30
  %417 = sub i32 0, %415
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %407, i32 noundef %417) #13
  %418 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %416
  %419 = add nsw i32 %407, 1
  tail call void @__mod_zone_page_state(ptr noundef %418, i32 noundef %419, i32 noundef %417) #13
  %420 = load volatile i32, ptr %186, align 4
  %421 = and i32 %420, 1
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %425, label %423, !prof !10

423:                                              ; preds = %414
  %424 = add i32 %420, -1
  br label %427

425:                                              ; preds = %414
  %426 = ptrtoint ptr %129 to i32
  br label %427

427:                                              ; preds = %425, %423
  %428 = phi i32 [ %424, %423 ], [ %426, %425 ]
  %429 = inttoptr i32 %428 to ptr
  %430 = load volatile i32, ptr %429, align 4
  %431 = shl i32 %430, 12
  %432 = ashr i32 %431, 31
  %433 = add nsw i32 %432, 8
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %433, i32 noundef 1) #13
  br label %434

434:                                              ; preds = %427, %214
  %435 = phi i32 [ %92, %214 ], [ %357, %427 ]
  %436 = phi ptr [ null, %214 ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24), %427 ]
  %437 = phi i1 [ %86, %214 ], [ %358, %427 ]
  %438 = phi i32 [ %85, %214 ], [ %378, %427 ]
  %439 = load ptr, ptr %82, align 4
  %440 = getelementptr inbounds %struct.list_head, ptr %439, i32 0, i32 1
  store ptr %186, ptr %440, align 4
  store ptr %439, ptr %186, align 4
  %441 = getelementptr inbounds %struct.list_head, ptr %186, i32 0, i32 1
  store ptr %82, ptr %441, align 4
  store volatile ptr %186, ptr %82, align 4
  %442 = load volatile i32, ptr %129, align 4
  %443 = and i32 %442, 65536
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %434
  %446 = getelementptr %struct.page, ptr %129, i32 1, i32 1, i32 0, i32 2
  %447 = load i32, ptr %446, align 4
  br label %448

448:                                              ; preds = %445, %434
  %449 = phi i32 [ %447, %445 ], [ 1, %434 ]
  %450 = load i32, ptr %10, align 4
  %451 = add i32 %450, %449
  store i32 %451, ptr %10, align 4
  %452 = load volatile i32, ptr %129, align 4
  %453 = and i32 %452, 65536
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %458, label %455

455:                                              ; preds = %448
  %456 = getelementptr %struct.page, ptr %129, i32 1, i32 1, i32 0, i32 2
  %457 = load i32, ptr %456, align 4
  br label %458

458:                                              ; preds = %455, %448
  %459 = phi i32 [ %457, %455 ], [ 1, %448 ]
  %460 = add i32 %459, %90
  %461 = icmp ugt i32 %451, 31
  br i1 %461, label %462, label %517

462:                                              ; preds = %458
  %463 = load i8, ptr %83, align 1, !range !15
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %465, label %517

465:                                              ; preds = %462
  %466 = load i8, ptr %80, align 2, !range !15
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %468, label %517

468:                                              ; preds = %465
  %469 = add i32 %438, 1
  br label %526

470:                                              ; preds = %270, %260
  %471 = icmp eq ptr %124, null
  br i1 %471, label %478, label %472

472:                                              ; preds = %470, %353
  %473 = phi i32 [ %345, %353 ], [ %85, %470 ]
  %474 = phi i1 [ true, %353 ], [ %86, %470 ]
  %475 = phi ptr [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24), %353 ], [ %124, %470 ]
  %476 = phi i32 [ %296, %353 ], [ %92, %470 ]
  %477 = getelementptr inbounds %struct.lruvec, ptr %475, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %477, i32 noundef %476) #13
  br label %478

478:                                              ; preds = %472, %470
  %479 = phi i32 [ %473, %472 ], [ %85, %470 ]
  %480 = phi i1 [ %474, %472 ], [ %86, %470 ]
  %481 = phi i32 [ %476, %472 ], [ %92, %470 ]
  %482 = load volatile i32, ptr %186, align 4
  %483 = and i32 %482, 1
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %487, label %485, !prof !10

485:                                              ; preds = %478
  %486 = add i32 %482, -1
  br label %489

487:                                              ; preds = %478
  %488 = ptrtoint ptr %129 to i32
  br label %489

489:                                              ; preds = %487, %485
  %490 = phi i32 [ %486, %485 ], [ %488, %487 ]
  %491 = inttoptr i32 %490 to ptr
  %492 = getelementptr inbounds %struct.page, ptr %491, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %492) #13, !srcloc !21
  %493 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %492, ptr %492, i32 1, ptr elementtype(i32) %492) #13, !srcloc !25
  %494 = extractvalue { i32, i32 } %493, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %497

496:                                              ; preds = %489
  tail call void @__put_page(ptr noundef %491) #13
  br label %497

497:                                              ; preds = %496, %489, %255, %252, %245, %214, %206, %200, %183, %174
  %498 = phi i32 [ %92, %200 ], [ %92, %214 ], [ %92, %206 ], [ %92, %245 ], [ %92, %252 ], [ %92, %174 ], [ %92, %183 ], [ %92, %255 ], [ %481, %489 ], [ %481, %496 ]
  %499 = phi ptr [ %124, %200 ], [ null, %214 ], [ %124, %206 ], [ %124, %245 ], [ %124, %252 ], [ %124, %174 ], [ %124, %183 ], [ %124, %255 ], [ null, %489 ], [ null, %496 ]
  %500 = phi i1 [ %86, %200 ], [ %86, %214 ], [ %86, %206 ], [ %86, %245 ], [ %86, %252 ], [ %86, %174 ], [ %86, %183 ], [ %86, %255 ], [ %480, %489 ], [ %480, %496 ]
  %501 = phi i32 [ %85, %200 ], [ %85, %214 ], [ %85, %206 ], [ %85, %245 ], [ %85, %252 ], [ %85, %174 ], [ %184, %183 ], [ %85, %255 ], [ %479, %489 ], [ %479, %496 ]
  br i1 %71, label %502, label %517

502:                                              ; preds = %497
  %503 = icmp eq i32 %90, 0
  br i1 %503, label %509, label %504

504:                                              ; preds = %502
  %505 = icmp eq ptr %499, null
  br i1 %505, label %508, label %506

506:                                              ; preds = %504
  %507 = getelementptr inbounds %struct.lruvec, ptr %499, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %507, i32 noundef %498) #13
  br label %508

508:                                              ; preds = %506, %504
  tail call void @putback_movable_pages(ptr noundef %82) #13
  store i32 0, ptr %10, align 4
  br label %509

509:                                              ; preds = %508, %502
  %510 = phi ptr [ null, %508 ], [ %499, %502 ]
  %511 = icmp ult i32 %501, %103
  br i1 %511, label %512, label %517

512:                                              ; preds = %509
  %513 = add i32 %103, -1
  %514 = load i32, ptr %76, align 4
  %515 = shl nuw i32 1, %514
  %516 = add i32 %515, %103
  br label %517

517:                                              ; preds = %512, %509, %497, %465, %462, %458, %149
  %518 = phi i32 [ %498, %512 ], [ %498, %509 ], [ %498, %497 ], [ %435, %465 ], [ %435, %462 ], [ %435, %458 ], [ %92, %149 ]
  %519 = phi i32 [ 0, %512 ], [ 0, %509 ], [ %90, %497 ], [ %460, %465 ], [ %460, %462 ], [ %460, %458 ], [ %90, %149 ]
  %520 = phi ptr [ %510, %512 ], [ %510, %509 ], [ %499, %497 ], [ %436, %465 ], [ %436, %462 ], [ %436, %458 ], [ %124, %149 ]
  %521 = phi i32 [ %516, %512 ], [ %103, %509 ], [ %103, %497 ], [ %103, %465 ], [ %103, %462 ], [ %103, %458 ], [ %103, %149 ]
  %522 = phi i1 [ %500, %512 ], [ %500, %509 ], [ %500, %497 ], [ %437, %465 ], [ %437, %462 ], [ %437, %458 ], [ %86, %149 ]
  %523 = phi i32 [ %513, %512 ], [ %501, %509 ], [ %501, %497 ], [ %438, %465 ], [ %438, %462 ], [ %438, %458 ], [ %157, %149 ]
  %524 = add i32 %523, 1
  %525 = icmp ult i32 %524, %2
  br i1 %525, label %84, label %526

526:                                              ; preds = %517, %468, %95, %70
  %527 = phi i32 [ %435, %468 ], [ 0, %70 ], [ %518, %517 ], [ %92, %95 ]
  %528 = phi i32 [ %125, %468 ], [ 0, %70 ], [ %125, %517 ], [ %91, %95 ]
  %529 = phi i32 [ %460, %468 ], [ 0, %70 ], [ %519, %517 ], [ %90, %95 ]
  %530 = phi ptr [ %436, %468 ], [ null, %70 ], [ %520, %517 ], [ %89, %95 ]
  %531 = phi ptr [ %144, %468 ], [ null, %70 ], [ %144, %517 ], [ %88, %95 ]
  %532 = phi i1 [ %437, %468 ], [ false, %70 ], [ %522, %517 ], [ %86, %95 ]
  %533 = phi i32 [ %469, %468 ], [ %1, %70 ], [ %524, %517 ], [ %85, %95 ]
  %534 = icmp ugt i32 %533, %2
  br i1 %534, label %535, label %536, !prof !11

535:                                              ; preds = %526
  br label %536

536:                                              ; preds = %535, %526, %137
  %537 = phi i32 [ %527, %535 ], [ %527, %526 ], [ %92, %137 ]
  %538 = phi i32 [ %528, %535 ], [ %528, %526 ], [ %125, %137 ]
  %539 = phi i32 [ %529, %535 ], [ %529, %526 ], [ %90, %137 ]
  %540 = phi ptr [ %530, %535 ], [ %530, %526 ], [ %124, %137 ]
  %541 = phi ptr [ %531, %535 ], [ %531, %526 ], [ null, %137 ]
  %542 = phi i1 [ %532, %535 ], [ %532, %526 ], [ %86, %137 ]
  %543 = phi i32 [ %2, %535 ], [ %533, %526 ], [ %2, %137 ]
  %544 = icmp eq ptr %540, null
  br i1 %544, label %572, label %545

545:                                              ; preds = %536
  %546 = getelementptr inbounds %struct.lruvec, ptr %540, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %546, i32 noundef %537) #13
  br label %572

547:                                              ; preds = %304
  %548 = ptrtoint ptr %129 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1), i32 noundef %296) #13
  %549 = icmp eq ptr %129, null
  br i1 %549, label %572, label %550

550:                                              ; preds = %547
  %551 = load volatile i32, ptr %186, align 4
  %552 = and i32 %551, 1
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %556, label %554, !prof !10

554:                                              ; preds = %550
  %555 = add i32 %551, -1
  br label %556

556:                                              ; preds = %554, %550
  %557 = phi i32 [ %555, %554 ], [ %548, %550 ]
  %558 = inttoptr i32 %557 to ptr
  tail call void @_set_bit(i32 noundef 4, ptr noundef %558) #13
  %559 = load volatile i32, ptr %186, align 4
  %560 = and i32 %559, 1
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %564, label %562, !prof !10

562:                                              ; preds = %556
  %563 = add i32 %559, -1
  br label %564

564:                                              ; preds = %562, %556
  %565 = phi i32 [ %563, %562 ], [ %548, %556 ]
  %566 = inttoptr i32 %565 to ptr
  %567 = getelementptr inbounds %struct.page, ptr %566, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %567) #13, !srcloc !21
  %568 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %567, ptr %567, i32 1, ptr elementtype(i32) %567) #13, !srcloc !25
  %569 = extractvalue { i32, i32 } %568, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %564
  tail call void @__put_page(ptr noundef %566) #13
  br label %572

572:                                              ; preds = %571, %564, %547, %545, %536
  %573 = phi i32 [ %125, %547 ], [ %538, %545 ], [ %125, %564 ], [ %125, %571 ], [ %538, %536 ]
  %574 = phi i32 [ %90, %547 ], [ %539, %545 ], [ %90, %564 ], [ %90, %571 ], [ %539, %536 ]
  %575 = phi ptr [ %144, %547 ], [ %541, %545 ], [ %144, %564 ], [ %144, %571 ], [ %541, %536 ]
  %576 = phi i1 [ true, %547 ], [ %542, %545 ], [ true, %564 ], [ true, %571 ], [ %542, %536 ]
  %577 = phi i32 [ %85, %547 ], [ %543, %545 ], [ %85, %564 ], [ %85, %571 ], [ %543, %536 ]
  %578 = icmp eq i32 %577, %2
  br i1 %578, label %579, label %616

579:                                              ; preds = %572
  %580 = icmp eq i32 %574, 0
  br i1 %580, label %585, label %581

581:                                              ; preds = %579
  %582 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 25
  %583 = load i8, ptr %582, align 1, !range !15
  %584 = icmp eq i8 %583, 0
  br i1 %584, label %616, label %585

585:                                              ; preds = %581, %579
  %586 = icmp eq ptr %575, null
  %587 = select i1 %586, i1 true, i1 %576
  br i1 %587, label %596, label %588

588:                                              ; preds = %585
  %589 = load ptr, ptr @mem_map, align 4
  %590 = ptrtoint ptr %575 to i32
  %591 = ptrtoint ptr %589 to i32
  %592 = sub i32 %590, %591
  %593 = ashr exact i32 %592, 5
  %594 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %595 = add i32 %593, %594
  tail call void @set_pfnblock_flags_mask(ptr noundef nonnull %575, i32 noundef 8, i32 noundef %595, i32 noundef 8) #13
  br label %596

596:                                              ; preds = %588, %585
  %597 = add i32 %2, 2048
  %598 = and i32 %597, -2048
  %599 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 19
  %600 = load i8, ptr %599, align 1, !range !15
  %601 = icmp eq i8 %600, 0
  br i1 %601, label %602, label %616

602:                                              ; preds = %596
  %603 = load ptr, ptr %5, align 4
  %604 = getelementptr inbounds %struct.zone, ptr %603, i32 0, i32 27
  %605 = load i32, ptr %604, align 8
  %606 = icmp ugt i32 %598, %605
  br i1 %606, label %607, label %608

607:                                              ; preds = %602
  store i32 %598, ptr %604, align 8
  br label %608

608:                                              ; preds = %607, %602
  %609 = load i32, ptr %11, align 4
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %616, label %611

611:                                              ; preds = %608
  %612 = getelementptr %struct.zone, ptr %603, i32 0, i32 27, i32 1
  %613 = load i32, ptr %612, align 4
  %614 = icmp ugt i32 %598, %613
  br i1 %614, label %615, label %616

615:                                              ; preds = %611
  store i32 %598, ptr %612, align 4
  br label %616

616:                                              ; preds = %615, %611, %608, %596, %581, %572
  %617 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_isolate_migratepages, i32 0, i32 1), align 4
  %618 = icmp sgt i32 %617, 0
  br i1 %618, label %619, label %642

619:                                              ; preds = %616
  %620 = tail call ptr @llvm.thread.pointer() #13
  %621 = getelementptr inbounds %struct.thread_info, ptr %620, i32 0, i32 2
  %622 = load i32, ptr %621, align 8
  %623 = lshr i32 %622, 5
  %624 = getelementptr i32, ptr @__cpu_online_mask, i32 %623
  %625 = load volatile i32, ptr %624, align 4
  %626 = and i32 %622, 31
  %627 = shl nuw i32 1, %626
  %628 = and i32 %627, %625
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %642, label %630

630:                                              ; preds = %619
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %631 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_isolate_migratepages, i32 0, i32 7), align 4
  %632 = icmp eq ptr %631, null
  br i1 %632, label %641, label %633

633:                                              ; preds = %633, %630
  %634 = phi ptr [ %638, %633 ], [ %631, %630 ]
  %635 = load volatile ptr, ptr %634, align 4
  %636 = getelementptr inbounds %struct.tracepoint_func, ptr %634, i32 0, i32 1
  %637 = load ptr, ptr %636, align 4
  tail call void %635(ptr noundef %637, i32 noundef %1, i32 noundef %577, i32 noundef %573, i32 noundef %574) #13
  %638 = getelementptr %struct.tracepoint_func, ptr %634, i32 1
  %639 = load ptr, ptr %638, align 4
  %640 = icmp eq ptr %639, null
  br i1 %640, label %641, label %633

641:                                              ; preds = %633, %630
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  br label %642

642:                                              ; preds = %641, %619, %616, %120
  %643 = phi i32 [ %91, %120 ], [ %573, %616 ], [ %573, %619 ], [ %573, %641 ]
  %644 = phi i32 [ %90, %120 ], [ %574, %616 ], [ %574, %619 ], [ %574, %641 ]
  %645 = phi i32 [ -4, %120 ], [ 0, %616 ], [ 0, %619 ], [ 0, %641 ]
  %646 = phi i32 [ %85, %120 ], [ %577, %616 ], [ %577, %619 ], [ %577, %641 ]
  %647 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 8
  %648 = load i32, ptr %647, align 4
  %649 = add i32 %648, %643
  store i32 %649, ptr %647, align 4
  %650 = icmp eq i32 %644, 0
  br i1 %650, label %660, label %651

651:                                              ; preds = %642
  %652 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %653 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %654 = inttoptr i32 %653 to ptr
  %655 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %654) #8, !srcloc !12
  %656 = add i32 %655, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 53) to i32)
  %657 = inttoptr i32 %656 to ptr
  %658 = load i32, ptr %657, align 4
  %659 = add i32 %658, %644
  store i32 %659, ptr %657, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %652) #13, !srcloc !17
  br label %660

660:                                              ; preds = %651, %642
  store i32 %646, ptr %9, align 4
  br label %661

661:                                              ; preds = %660, %53, %40, %37
  %662 = phi i32 [ %645, %660 ], [ -4, %53 ], [ -11, %40 ], [ -11, %37 ]
  ret i32 %662
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @compaction_suitable(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 37
  %6 = load volatile i32, ptr %5, align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #13
  %8 = icmp eq i32 %1, -1
  br i1 %8, label %36, label %9

9:                                                ; preds = %4
  %10 = and i32 %2, 3
  %11 = getelementptr [3 x i32], ptr %0, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = tail call zeroext i1 @zone_watermark_ok(ptr noundef %0, i32 noundef %1, i32 noundef %15, i32 noundef %3, i32 noundef %2) #13
  br i1 %16, label %36, label %17

17:                                               ; preds = %9
  %18 = icmp sgt i32 %1, 3
  %19 = getelementptr [3 x i32], ptr %0, i32 0, i32 1
  %20 = select i1 %18, ptr %19, ptr %0
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %13, align 4
  %23 = shl i32 2, %1
  %24 = add i32 %21, %23
  %25 = add i32 %24, %22
  %26 = tail call zeroext i1 @__zone_watermark_ok(ptr noundef %0, i32 noundef 0, i32 noundef %25, i32 noundef %3, i32 noundef 128, i32 noundef %7) #13
  %27 = select i1 %26, i32 4, i32 1
  %28 = and i1 %18, %26
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = tail call i32 @fragmentation_index(ptr noundef %0, i32 noundef %1) #13
  %31 = icmp slt i32 %30, 0
  %32 = load i32, ptr @sysctl_extfrag_threshold, align 4
  %33 = icmp sgt i32 %30, %32
  %34 = select i1 %31, i1 true, i1 %33
  %35 = select i1 %34, i32 4, i32 0
  br label %36

36:                                               ; preds = %29, %17, %9, %4
  %37 = phi i32 [ %27, %17 ], [ %35, %29 ], [ 8, %9 ], [ 4, %4 ]
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_suitable, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %52 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_suitable, i32 0, i32 7), align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %59, %54 ], [ %52, %51 ]
  %56 = load volatile ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tracepoint_func, ptr %55, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void %56(ptr noundef %58, ptr noundef %0, i32 noundef %1, i32 noundef %37) #13
  %59 = getelementptr %struct.tracepoint_func, ptr %55, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54

62:                                               ; preds = %54, %51
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  br label %63

63:                                               ; preds = %62, %40, %36
  %64 = icmp eq i32 %37, 0
  %65 = select i1 %64, i32 1, i32 %37
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fragmentation_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @compaction_zonelist_suitable(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.alloc_context, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.alloc_context, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14, !prof !10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.zoneref, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %6
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %10, %3
  %15 = tail call ptr @__next_zones_zonelist(ptr noundef %4, i32 noundef %6, ptr noundef %8) #13
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %4, %10 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %86, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %1, -1
  %22 = and i32 %2, 3
  %23 = icmp sgt i32 %1, 3
  %24 = shl i32 2, %1
  br label %25

25:                                               ; preds = %82, %20
  %26 = phi ptr [ %18, %20 ], [ %84, %82 ]
  %27 = phi ptr [ %17, %20 ], [ %83, %82 ]
  %28 = tail call i32 @zone_reclaimable_pages(ptr noundef nonnull %26) #13
  %29 = udiv i32 %28, %1
  %30 = getelementptr inbounds %struct.zone, ptr %26, i32 0, i32 37
  %31 = load volatile i32, ptr %30, align 4
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %34 = icmp ult i32 %33, %32
  br i1 %34, label %35, label %51

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.zone, ptr %26, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi i32 [ %33, %35 ], [ %49, %39 ]
  %41 = phi i32 [ %31, %35 ], [ %48, %39 ]
  %42 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %38
  %45 = inttoptr i32 %44 to ptr
  %46 = load i8, ptr %45, align 1
  %47 = sext i8 %46 to i32
  %48 = add i32 %41, %47
  %49 = tail call i32 @cpumask_next(i32 noundef %40, ptr noundef nonnull @__cpu_online_mask) #14
  %50 = icmp ult i32 %49, %32
  br i1 %50, label %39, label %51

51:                                               ; preds = %39, %25
  %52 = phi i32 [ %31, %25 ], [ %48, %39 ]
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 0) #13
  %54 = add i32 %53, %29
  %55 = load i32, ptr %5, align 4
  br i1 %21, label %86, label %56

56:                                               ; preds = %51
  %57 = getelementptr [3 x i32], ptr %26, i32 0, i32 %22
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.zone, ptr %26, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %58
  %62 = tail call zeroext i1 @zone_watermark_ok(ptr noundef nonnull %26, i32 noundef %1, i32 noundef %61, i32 noundef %55, i32 noundef %2) #13
  br i1 %62, label %86, label %63

63:                                               ; preds = %56
  %64 = getelementptr [3 x i32], ptr %26, i32 0, i32 1
  %65 = select i1 %23, ptr %64, ptr %26
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %59, align 4
  %68 = add i32 %66, %24
  %69 = add i32 %68, %67
  %70 = tail call zeroext i1 @__zone_watermark_ok(ptr noundef nonnull %26, i32 noundef 0, i32 noundef %69, i32 noundef %55, i32 noundef 128, i32 noundef %54) #13
  br i1 %70, label %86, label %71

71:                                               ; preds = %63
  %72 = getelementptr %struct.zoneref, ptr %27, i32 1
  %73 = load i32, ptr %5, align 4
  %74 = load ptr, ptr %7, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %80, !prof !10

76:                                               ; preds = %71
  %77 = getelementptr %struct.zoneref, ptr %27, i32 1, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, %73
  br i1 %79, label %80, label %82, !prof !11

80:                                               ; preds = %76, %71
  %81 = tail call ptr @__next_zones_zonelist(ptr noundef %72, i32 noundef %73, ptr noundef %74) #13
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi ptr [ %81, %80 ], [ %72, %76 ]
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %25

86:                                               ; preds = %82, %63, %56, %51, %16
  %87 = phi i1 [ false, %16 ], [ true, %63 ], [ true, %56 ], [ true, %51 ], [ false, %82 ]
  ret i1 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zone_reclaimable_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @try_to_compact_pages(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.compact_control, align 8
  %8 = alloca %struct.capture_control, align 8
  %9 = and i32 %0, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %230, label %11

11:                                               ; preds = %6
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_try_to_compact_pages, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %26 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_try_to_compact_pages, i32 0, i32 7), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %33, %28 ], [ %26, %25 ]
  %30 = load volatile ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tracepoint_func, ptr %29, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %30(ptr noundef %32, i32 noundef %1, i32 noundef %0, i32 noundef %4) #13
  %33 = getelementptr %struct.tracepoint_func, ptr %29, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %28

36:                                               ; preds = %28, %25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %37

37:                                               ; preds = %36, %14, %11
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.alloc_context, ptr %3, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.alloc_context, ptr %3, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48, !prof !10

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.zoneref, ptr %38, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, %40
  br i1 %47, label %48, label %50, !prof !11

48:                                               ; preds = %44, %37
  %49 = tail call ptr @__next_zones_zonelist(ptr noundef %38, i32 noundef %40, ptr noundef %42) #13
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi ptr [ %49, %48 ], [ %38, %44 ]
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %230, label %54

54:                                               ; preds = %50
  %55 = icmp eq i32 %4, 0
  %56 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 7
  %57 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 11
  %58 = trunc i32 %1 to i16
  %59 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 12
  %60 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 13
  %61 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 15
  %62 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 16
  %63 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 17
  %64 = icmp ne i32 %4, 2
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 18
  %67 = zext i1 %55 to i8
  %68 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 20
  %69 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 21
  %70 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 23
  %71 = getelementptr inbounds %struct.capture_control, ptr %8, i32 0, i32 1
  %72 = icmp eq i32 %4, 2
  br label %73

73:                                               ; preds = %226, %54
  %74 = phi ptr [ %52, %54 ], [ %228, %226 ]
  %75 = phi ptr [ %51, %54 ], [ %227, %226 ]
  %76 = phi i32 [ 1, %54 ], [ %215, %226 ]
  br i1 %55, label %118, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.zone, ptr %74, i32 0, i32 31
  %79 = load i32, ptr %78, align 4
  %80 = shl nuw i32 1, %79
  %81 = getelementptr inbounds %struct.zone, ptr %74, i32 0, i32 32
  %82 = load i32, ptr %81, align 32
  %83 = icmp sgt i32 %82, %1
  br i1 %83, label %118, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.zone, ptr %74, i32 0, i32 30
  %86 = load i32, ptr %85, align 8
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 8
  %88 = icmp ult i32 %87, %80
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store i32 %80, ptr %85, align 8
  br label %118

90:                                               ; preds = %84
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_deferred, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = tail call ptr @llvm.thread.pointer() #13
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
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  %105 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_deferred, i32 0, i32 7), align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %107, %104
  %108 = phi ptr [ %112, %107 ], [ %105, %104 ]
  %109 = load volatile ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.tracepoint_func, ptr %108, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  call void %109(ptr noundef %111, ptr noundef nonnull %74, i32 noundef %1) #13
  %112 = getelementptr %struct.tracepoint_func, ptr %108, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %107

115:                                              ; preds = %107, %104
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  br label %116

116:                                              ; preds = %115, %93, %90
  %117 = call i32 @llvm.umax.i32(i32 %76, i32 2)
  br label %214

118:                                              ; preds = %89, %77, %73
  %119 = load i32, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 0, i64 88, i1 false) #13
  store ptr %74, ptr %56, align 4
  store i16 %58, ptr %57, align 2
  store i32 %0, ptr %59, align 4
  store i32 %1, ptr %60, align 8
  store i32 %2, ptr %61, align 8
  store i32 %119, ptr %62, align 4
  store i32 %65, ptr %63, align 8
  store i8 %67, ptr %66, align 4
  store i8 %67, ptr %68, align 2
  store i8 1, ptr %69, align 1
  store i8 %67, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store ptr %7, ptr %8, align 8
  store ptr null, ptr %71, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  %120 = tail call ptr @llvm.thread.pointer() #13
  %121 = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 119
  store volatile ptr %8, ptr %121, align 4
  %122 = call fastcc i32 @compact_zone(ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  store volatile ptr null, ptr %121, align 4
  %123 = load volatile ptr, ptr %71, align 4
  store ptr %123, ptr %5, align 4
  %124 = icmp eq ptr %123, null
  %125 = select i1 %124, i32 %122, i32 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #13
  %126 = call i32 @llvm.umax.i32(i32 %125, i32 %76)
  %127 = icmp eq i32 %125, 8
  br i1 %127, label %128, label %159

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.zone, ptr %74, i32 0, i32 32
  %130 = load i32, ptr %129, align 32
  %131 = icmp sgt i32 %130, %1
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = add i32 %1, 1
  store i32 %133, ptr %129, align 32
  br label %134

134:                                              ; preds = %132, %128
  %135 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_reset, i32 0, i32 1), align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %230

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 5
  %141 = getelementptr i32, ptr @__cpu_online_mask, i32 %140
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %139, 31
  %144 = shl nuw i32 1, %143
  %145 = and i32 %144, %142
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %230, label %147

147:                                              ; preds = %137
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %148 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_reset, i32 0, i32 7), align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %158, label %150

150:                                              ; preds = %150, %147
  %151 = phi ptr [ %155, %150 ], [ %148, %147 ]
  %152 = load volatile ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.tracepoint_func, ptr %151, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  call void %152(ptr noundef %154, ptr noundef nonnull %74, i32 noundef %1) #13
  %155 = getelementptr %struct.tracepoint_func, ptr %151, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %150

158:                                              ; preds = %150, %147
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %230

159:                                              ; preds = %118
  %160 = add i32 %125, -5
  %161 = icmp ult i32 %160, 2
  %162 = select i1 %64, i1 %161, i1 false
  br i1 %162, label %163, label %200

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.zone, ptr %74, i32 0, i32 30
  store i32 0, ptr %164, align 8
  %165 = getelementptr inbounds %struct.zone, ptr %74, i32 0, i32 31
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4
  %168 = getelementptr inbounds %struct.zone, ptr %74, i32 0, i32 32
  %169 = load i32, ptr %168, align 32
  %170 = icmp sgt i32 %169, %1
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  store i32 %1, ptr %168, align 32
  br label %172

172:                                              ; preds = %171, %163
  %173 = icmp ugt i32 %167, 6
  br i1 %173, label %174, label %175

174:                                              ; preds = %172
  store i32 6, ptr %165, align 4
  br label %175

175:                                              ; preds = %174, %172
  %176 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_compaction, i32 0, i32 1), align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = lshr i32 %180, 5
  %182 = getelementptr i32, ptr @__cpu_online_mask, i32 %181
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %180, 31
  %185 = shl nuw i32 1, %184
  %186 = and i32 %185, %183
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %205, label %188

188:                                              ; preds = %178
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %189 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_compaction, i32 0, i32 7), align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %199, label %191

191:                                              ; preds = %191, %188
  %192 = phi ptr [ %196, %191 ], [ %189, %188 ]
  %193 = load volatile ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.tracepoint_func, ptr %192, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  call void %193(ptr noundef %195, ptr noundef nonnull %74, i32 noundef %1) #13
  %196 = getelementptr %struct.tracepoint_func, ptr %192, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %191

199:                                              ; preds = %191, %188
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %200

200:                                              ; preds = %199, %159
  br i1 %72, label %201, label %205

201:                                              ; preds = %200
  %202 = load volatile i32, ptr %120, align 4
  %203 = and i32 %202, 2
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %230

205:                                              ; preds = %201, %200, %178, %175
  %206 = load volatile i32, ptr %120, align 4
  %207 = and i32 %206, 1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 98, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = and i32 %211, 256
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %209, %205, %116
  %215 = phi i32 [ %117, %116 ], [ %126, %205 ], [ %126, %209 ]
  %216 = getelementptr %struct.zoneref, ptr %75, i32 1
  %217 = load i32, ptr %39, align 4
  %218 = load ptr, ptr %41, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %224, !prof !10

220:                                              ; preds = %214
  %221 = getelementptr %struct.zoneref, ptr %75, i32 1, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = icmp ugt i32 %222, %217
  br i1 %223, label %224, label %226, !prof !11

224:                                              ; preds = %220, %214
  %225 = call ptr @__next_zones_zonelist(ptr noundef %216, i32 noundef %217, ptr noundef %218) #13
  br label %226

226:                                              ; preds = %224, %220
  %227 = phi ptr [ %225, %224 ], [ %216, %220 ]
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %73

230:                                              ; preds = %226, %209, %201, %158, %137, %134, %50, %6
  %231 = phi i32 [ 1, %6 ], [ %126, %134 ], [ %126, %137 ], [ %126, %158 ], [ 1, %50 ], [ %215, %226 ], [ %126, %201 ], [ %126, %209 ]
  ret i32 %231
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @compaction_proactiveness_sysctl_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = icmp ne i32 %1, 0
  %10 = load i32, ptr @sysctl_compaction_proactiveness, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  %13 = load i8, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 21), align 8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i8 1, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 21), align 8
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 19), i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %17

17:                                               ; preds = %16, %8, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysctl_compaction_handler(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  %6 = alloca %struct.compact_control, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %5
  tail call void @lru_add_drain_all() #13
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i32 88, i1 false) #13
  %9 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %6, i32 0, i32 12
  store i32 3264, ptr %9, align 4
  %10 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %6, i32 0, i32 13
  store i32 -1, ptr %10, align 4
  %11 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %6, i32 0, i32 17
  store i32 2, ptr %11, align 4
  %12 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %6, i32 0, i32 18
  store i8 1, ptr %12, align 4
  %13 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %6, i32 0, i32 23
  store i8 1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 7
  %15 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 0, i32 13), align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  store ptr @contig_page_data, ptr %14, align 4
  %18 = call fastcc i32 @compact_zone(ptr noundef nonnull %6, ptr noundef null) #13
  br label %19

19:                                               ; preds = %17, %8
  %20 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1, i32 13), align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1), ptr %14, align 4
  %23 = call fastcc i32 @compact_zone(ptr noundef nonnull %6, ptr noundef null) #13
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 13), align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2), ptr %14, align 4
  %28 = call fastcc i32 @compact_zone(ptr noundef nonnull %6, ptr noundef null) #13
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 13), align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3), ptr %14, align 4
  %33 = call fastcc i32 @compact_zone(ptr noundef nonnull %6, ptr noundef null) #13
  br label %34

34:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #13
  br label %35

35:                                               ; preds = %34, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_kcompactd(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %64, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 17
  %7 = load i32, ptr %6, align 32
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 %1, ptr %6, align 32
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %2
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 %2, ptr %11, align 4
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !38
  %17 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 19, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %64, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %11, align 4
  br label %22

22:                                               ; preds = %32, %20
  %23 = phi i32 [ 0, %20 ], [ %33, %32 ]
  %24 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %23, i32 13
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %23
  %29 = load i32, ptr %6, align 32
  %30 = tail call i32 @compaction_suitable(ptr noundef %28, i32 noundef %29, i32 noundef 0, i32 noundef %21) #13
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %22
  %33 = add i32 %23, 1
  %34 = icmp ugt i32 %33, %21
  br i1 %34, label %64, label %22

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_wakeup_kcompactd, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  %52 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_wakeup_kcompactd, i32 0, i32 7), align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %59, %54 ], [ %52, %51 ]
  %56 = load volatile ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tracepoint_func, ptr %55, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void %56(ptr noundef %58, i32 noundef %37, i32 noundef %1, i32 noundef %2) #13
  %59 = getelementptr %struct.tracepoint_func, ptr %55, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54

62:                                               ; preds = %54, %51
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  br label %63

63:                                               ; preds = %62, %40, %35
  tail call void @__wake_up(ptr noundef %16, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %64

64:                                               ; preds = %63, %32, %15, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kcompactd_run(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 20), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kcompactd, ptr noundef nonnull @contig_page_data, i32 noundef -1, ptr noundef nonnull @.str.21, i32 noundef %0) #13
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @wake_up_process(ptr noundef %5) #13
  br label %13

9:                                                ; preds = %4
  store ptr %5, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 20), align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %0) #15
  %11 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 20), align 4
  %12 = ptrtoint ptr %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %5, %7 ], [ null, %9 ]
  %15 = phi i32 [ 0, %7 ], [ %12, %9 ]
  store ptr %14, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 20), align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ 0, %1 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kcompactd(ptr noundef %0) #0 {
  %2 = alloca %struct.compact_control, align 4
  %3 = alloca %struct.compact_control, align 4
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = tail call ptr @llvm.thread.pointer() #13
  %6 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 7
  %7 = load i32, ptr @__cpu_online_mask, align 4
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %5, ptr noundef nonnull @__cpu_online_mask) #13
  br label %12

12:                                               ; preds = %10, %1
  %13 = tail call zeroext i1 @set_freezable() #13
  %14 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 17
  store i32 0, ptr %14, align 32
  %15 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -1
  %18 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 18
  store i32 %17, ptr %18, align 4
  %19 = call zeroext i1 @kthread_should_stop() #13
  br i1 %19, label %506, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %22 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 21
  %23 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 19
  %24 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %25 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 13
  %26 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %2, i32 0, i32 12
  %27 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %2, i32 0, i32 13
  %28 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %2, i32 0, i32 17
  %29 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %2, i32 0, i32 18
  %30 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %2, i32 0, i32 22
  %31 = getelementptr inbounds { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }, ptr %2, i32 0, i32 23
  %32 = getelementptr inbounds %struct.compact_control, ptr %2, i32 0, i32 7
  %33 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 13
  %34 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 13
  %35 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1
  %36 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 13
  %37 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2
  %38 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 13
  %39 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3
  %40 = getelementptr inbounds %struct.compact_control, ptr %3, i32 0, i32 11
  %41 = getelementptr inbounds %struct.compact_control, ptr %3, i32 0, i32 12
  %42 = getelementptr inbounds %struct.compact_control, ptr %3, i32 0, i32 13
  %43 = getelementptr inbounds %struct.compact_control, ptr %3, i32 0, i32 16
  %44 = getelementptr inbounds %struct.compact_control, ptr %3, i32 0, i32 17
  %45 = getelementptr inbounds %struct.compact_control, ptr %3, i32 0, i32 7
  %46 = getelementptr inbounds %struct.compact_control, ptr %3, i32 0, i32 8
  %47 = getelementptr inbounds %struct.compact_control, ptr %3, i32 0, i32 9
  %48 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 13
  %49 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 4
  %50 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1
  %51 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 13
  %52 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 4
  %53 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2
  %54 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 13
  %55 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 4
  %56 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3
  %57 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 13
  %58 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 4
  %59 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 13
  %60 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 4
  %61 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1
  %62 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 13
  %63 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 4
  %64 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2
  %65 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 13
  %66 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 4
  %67 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3
  %68 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 13
  %69 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 4
  %70 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 13
  %71 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 0, i32 4
  %72 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1
  %73 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 13
  %74 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 1, i32 4
  %75 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2
  %76 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 13
  %77 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 2, i32 4
  %78 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3
  %79 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 13
  %80 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 3, i32 4
  br label %81

81:                                               ; preds = %503, %20
  %82 = phi i32 [ 50, %20 ], [ %504, %503 ]
  %83 = load i32, ptr @sysctl_compaction_proactiveness, align 4
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 2147483647, i32 %82
  %86 = load i32, ptr %6, align 4
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_kcompactd_sleep, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %81
  %90 = load i32, ptr %21, align 8
  %91 = lshr i32 %90, 5
  %92 = getelementptr i32, ptr @__cpu_online_mask, i32 %91
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %90, 31
  %95 = shl nuw i32 1, %94
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %89
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  %99 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_kcompactd_sleep, i32 0, i32 7), align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %101, %98
  %102 = phi ptr [ %106, %101 ], [ %99, %98 ]
  %103 = load volatile ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.tracepoint_func, ptr %102, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  call void %103(ptr noundef %105, i32 noundef %86) #13
  %106 = getelementptr %struct.tracepoint_func, ptr %102, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %101

109:                                              ; preds = %101, %98
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !42
  br label %110

110:                                              ; preds = %109, %89, %81
  %111 = load i32, ptr %14, align 32
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %156, label %113

113:                                              ; preds = %110
  %114 = call zeroext i1 @kthread_should_stop() #13
  br i1 %114, label %156, label %115

115:                                              ; preds = %113
  %116 = load i8, ptr %22, align 8, !range !15
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %354

118:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #13
  %119 = call i32 @prepare_to_wait_event(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 1) #13
  %120 = load i32, ptr %14, align 32
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %154, label %122

122:                                              ; preds = %150, %118
  %123 = phi i32 [ %151, %150 ], [ %119, %118 ]
  %124 = phi i32 [ %141, %150 ], [ %85, %118 ]
  %125 = call zeroext i1 @kthread_should_stop() #13
  br i1 %125, label %154, label %126

126:                                              ; preds = %122
  %127 = load i8, ptr %22, align 8, !range !15
  %128 = icmp ne i8 %127, 0
  %129 = xor i1 %128, true
  %130 = icmp ne i32 %124, 0
  %131 = select i1 %129, i1 true, i1 %130
  %132 = select i1 %131, i32 %124, i32 1
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %128, i1 true, i1 %133
  br i1 %134, label %155, label %135

135:                                              ; preds = %126
  %136 = icmp eq i32 %123, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %135
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  br label %156

138:                                              ; preds = %135
  %139 = load i32, ptr %24, align 4
  %140 = or i32 %139, 1073741824
  store i32 %140, ptr %24, align 4
  %141 = call i32 @schedule_timeout(i32 noundef %132) #13
  %142 = load i32, ptr %24, align 4
  %143 = and i32 %142, -1073741825
  store i32 %143, ptr %24, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !43
  %144 = load volatile i32, ptr @system_freezing_cnt, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146, !prof !10

146:                                              ; preds = %138
  %147 = call zeroext i1 @freezing_slow_path(ptr noundef %5) #13
  br i1 %147, label %148, label %150, !prof !11

148:                                              ; preds = %146
  %149 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %150

150:                                              ; preds = %148, %146, %138
  %151 = call i32 @prepare_to_wait_event(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 1) #13
  %152 = load i32, ptr %14, align 32
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %122

154:                                              ; preds = %150, %122, %118
  call void @finish_wait(ptr noundef %23, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  br label %156

155:                                              ; preds = %126
  call void @finish_wait(ptr noundef %23, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  br i1 %133, label %354, label %156

156:                                              ; preds = %155, %154, %137, %113, %110
  %157 = load i8, ptr %22, align 8
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %354

159:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %3, i8 0, i64 88, i1 false) #13
  %160 = load i32, ptr %14, align 32
  %161 = trunc i32 %160 to i16
  store i16 %161, ptr %40, align 2
  store i32 3264, ptr %41, align 4
  store i32 %160, ptr %42, align 4
  %162 = load i32, ptr %18, align 4
  store i32 %162, ptr %43, align 4
  store i32 1, ptr %44, align 4
  %163 = load i32, ptr %6, align 4
  %164 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_kcompactd_wake, i32 0, i32 1), align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %159
  %167 = load i32, ptr %21, align 8
  %168 = lshr i32 %167, 5
  %169 = getelementptr i32, ptr @__cpu_online_mask, i32 %168
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %167, 31
  %172 = shl nuw i32 1, %171
  %173 = and i32 %172, %170
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %166
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !44
  %176 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_kcompactd_wake, i32 0, i32 7), align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %186, label %178

178:                                              ; preds = %178, %175
  %179 = phi ptr [ %183, %178 ], [ %176, %175 ]
  %180 = load volatile ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.tracepoint_func, ptr %179, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  call void %180(ptr noundef %182, i32 noundef %163, i32 noundef %160, i32 noundef %162) #13
  %183 = getelementptr %struct.tracepoint_func, ptr %179, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %178

186:                                              ; preds = %178, %175
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !45
  br label %187

187:                                              ; preds = %186, %166, %159
  %188 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %189 = call i32 @llvm.read_register.i32(metadata !0) #13
  %190 = inttoptr i32 %189 to ptr
  %191 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %190) #8, !srcloc !12
  %192 = add i32 %191, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 57) to i32)
  %193 = inttoptr i32 %192 to ptr
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, 1
  store i32 %195, ptr %193, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %188) #13, !srcloc !17
  %196 = load i32, ptr %43, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %341, label %198

198:                                              ; preds = %337, %187
  %199 = phi i32 [ %338, %337 ], [ 0, %187 ]
  %200 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %199
  %201 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %199, i32 13
  %202 = load i32, ptr %201, align 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %337, label %204

204:                                              ; preds = %198
  %205 = load i32, ptr %42, align 4
  %206 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %199, i32 31
  %207 = load i32, ptr %206, align 4
  %208 = shl nuw i32 1, %207
  %209 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %199, i32 32
  %210 = load i32, ptr %209, align 32
  %211 = icmp sgt i32 %210, %205
  br i1 %211, label %242, label %212

212:                                              ; preds = %204
  %213 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %199, i32 30
  %214 = load i32, ptr %213, align 8
  %215 = add i32 %214, 1
  store i32 %215, ptr %213, align 8
  %216 = icmp ult i32 %215, %208
  br i1 %216, label %218, label %217

217:                                              ; preds = %212
  store i32 %208, ptr %213, align 8
  br label %242

218:                                              ; preds = %212
  %219 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_deferred, i32 0, i32 1), align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %337

221:                                              ; preds = %218
  %222 = load i32, ptr %21, align 8
  %223 = lshr i32 %222, 5
  %224 = getelementptr i32, ptr @__cpu_online_mask, i32 %223
  %225 = load volatile i32, ptr %224, align 4
  %226 = and i32 %222, 31
  %227 = shl nuw i32 1, %226
  %228 = and i32 %227, %225
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %337, label %230

230:                                              ; preds = %221
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  %231 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_deferred, i32 0, i32 7), align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %241, label %233

233:                                              ; preds = %233, %230
  %234 = phi ptr [ %238, %233 ], [ %231, %230 ]
  %235 = load volatile ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.tracepoint_func, ptr %234, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  call void %235(ptr noundef %237, ptr noundef %200, i32 noundef %205) #13
  %238 = getelementptr %struct.tracepoint_func, ptr %234, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %233

241:                                              ; preds = %233, %230
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  br label %337

242:                                              ; preds = %217, %204
  %243 = call i32 @compaction_suitable(ptr noundef %200, i32 noundef %205, i32 noundef 0, i32 noundef %199) #13
  %244 = icmp eq i32 %243, 4
  br i1 %244, label %245, label %337

245:                                              ; preds = %242
  %246 = call zeroext i1 @kthread_should_stop() #13
  br i1 %246, label %353, label %247

247:                                              ; preds = %245
  store ptr %200, ptr %45, align 4
  %248 = call fastcc i32 @compact_zone(ptr noundef nonnull %3, ptr noundef null) #13
  %249 = icmp eq i32 %248, 8
  br i1 %249, label %250, label %280

250:                                              ; preds = %247
  %251 = load i32, ptr %42, align 4
  %252 = load i32, ptr %209, align 32
  %253 = icmp sgt i32 %252, %251
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = add i32 %251, 1
  store i32 %255, ptr %209, align 32
  br label %256

256:                                              ; preds = %254, %250
  %257 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_reset, i32 0, i32 1), align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %318

259:                                              ; preds = %256
  %260 = load i32, ptr %21, align 8
  %261 = lshr i32 %260, 5
  %262 = getelementptr i32, ptr @__cpu_online_mask, i32 %261
  %263 = load volatile i32, ptr %262, align 4
  %264 = and i32 %260, 31
  %265 = shl nuw i32 1, %264
  %266 = and i32 %265, %263
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %318, label %268

268:                                              ; preds = %259
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %269 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_reset, i32 0, i32 7), align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %279, label %271

271:                                              ; preds = %271, %268
  %272 = phi ptr [ %276, %271 ], [ %269, %268 ]
  %273 = load volatile ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.tracepoint_func, ptr %272, i32 0, i32 1
  %275 = load ptr, ptr %274, align 4
  call void %273(ptr noundef %275, ptr noundef %200, i32 noundef %251) #13
  %276 = getelementptr %struct.tracepoint_func, ptr %272, i32 1
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %271

279:                                              ; preds = %271, %268
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %318

280:                                              ; preds = %247
  %281 = add i32 %248, -5
  %282 = icmp ult i32 %281, 2
  br i1 %282, label %283, label %318

283:                                              ; preds = %280
  call void @drain_all_pages(ptr noundef %200) #13
  %284 = load i32, ptr %42, align 4
  %285 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %199, i32 30
  store i32 0, ptr %285, align 8
  %286 = load i32, ptr %206, align 4
  %287 = add i32 %286, 1
  store i32 %287, ptr %206, align 4
  %288 = load i32, ptr %209, align 32
  %289 = icmp sgt i32 %288, %284
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  store i32 %284, ptr %209, align 32
  br label %291

291:                                              ; preds = %290, %283
  %292 = icmp ugt i32 %287, 6
  br i1 %292, label %293, label %294

293:                                              ; preds = %291
  store i32 6, ptr %206, align 4
  br label %294

294:                                              ; preds = %293, %291
  %295 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_compaction, i32 0, i32 1), align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %318

297:                                              ; preds = %294
  %298 = load i32, ptr %21, align 8
  %299 = lshr i32 %298, 5
  %300 = getelementptr i32, ptr @__cpu_online_mask, i32 %299
  %301 = load volatile i32, ptr %300, align 4
  %302 = and i32 %298, 31
  %303 = shl nuw i32 1, %302
  %304 = and i32 %303, %301
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %318, label %306

306:                                              ; preds = %297
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %307 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_defer_compaction, i32 0, i32 7), align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %317, label %309

309:                                              ; preds = %309, %306
  %310 = phi ptr [ %314, %309 ], [ %307, %306 ]
  %311 = load volatile ptr, ptr %310, align 4
  %312 = getelementptr inbounds %struct.tracepoint_func, ptr %310, i32 0, i32 1
  %313 = load ptr, ptr %312, align 4
  call void %311(ptr noundef %313, ptr noundef %200, i32 noundef %284) #13
  %314 = getelementptr %struct.tracepoint_func, ptr %310, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %309

317:                                              ; preds = %309, %306
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %318

318:                                              ; preds = %317, %297, %294, %280, %279, %259, %256
  %319 = load i32, ptr %46, align 4
  %320 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %321 = call i32 @llvm.read_register.i32(metadata !0) #13
  %322 = inttoptr i32 %321 to ptr
  %323 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %322) #8, !srcloc !12
  %324 = add i32 %323, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 58) to i32)
  %325 = inttoptr i32 %324 to ptr
  %326 = load i32, ptr %325, align 4
  %327 = add i32 %326, %319
  store i32 %327, ptr %325, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %320) #13, !srcloc !17
  %328 = load i32, ptr %47, align 4
  %329 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %330 = call i32 @llvm.read_register.i32(metadata !0) #13
  %331 = inttoptr i32 %330 to ptr
  %332 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %331) #8, !srcloc !12
  %333 = add i32 %332, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 59) to i32)
  %334 = inttoptr i32 %333 to ptr
  %335 = load i32, ptr %334, align 4
  %336 = add i32 %335, %328
  store i32 %336, ptr %334, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %329) #13, !srcloc !17
  br label %337

337:                                              ; preds = %318, %242, %241, %221, %218, %198
  %338 = add i32 %199, 1
  %339 = load i32, ptr %43, align 4
  %340 = icmp sgt i32 %338, %339
  br i1 %340, label %341, label %198

341:                                              ; preds = %337, %187
  %342 = phi i32 [ %196, %187 ], [ %339, %337 ]
  %343 = load i32, ptr %14, align 32
  %344 = load i32, ptr %42, align 4
  %345 = icmp sgt i32 %343, %344
  br i1 %345, label %347, label %346

346:                                              ; preds = %341
  store i32 0, ptr %14, align 32
  br label %347

347:                                              ; preds = %346, %341
  %348 = load i32, ptr %18, align 4
  %349 = icmp ult i32 %348, %342
  br i1 %349, label %353, label %350

350:                                              ; preds = %347
  %351 = load i32, ptr %15, align 8
  %352 = add i32 %351, -1
  store i32 %352, ptr %18, align 4
  br label %353

353:                                              ; preds = %350, %347, %245
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #13
  br label %503

354:                                              ; preds = %156, %155, %115
  %355 = load i32, ptr @sysctl_compaction_proactiveness, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %498, label %357

357:                                              ; preds = %354
  %358 = load ptr, ptr %25, align 16
  %359 = icmp eq ptr %358, null
  br i1 %359, label %364, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.task_struct, ptr %358, i32 0, i32 1
  %362 = load volatile i32, ptr %361, align 8
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %498, label %364

364:                                              ; preds = %360, %357
  %365 = sub i32 100, %355
  %366 = call i32 @llvm.umax.i32(i32 %365, i32 5) #13
  %367 = load i32, ptr %48, align 8
  %368 = call i32 @extfrag_for_order(ptr noundef %0, i32 noundef 9) #13
  %369 = mul i32 %368, %367
  %370 = load ptr, ptr %49, align 4
  %371 = getelementptr inbounds %struct.pglist_data, ptr %370, i32 0, i32 5
  %372 = load i32, ptr %371, align 4
  %373 = add i32 %372, 1
  %374 = udiv i32 %369, %373
  %375 = load i32, ptr %51, align 8
  %376 = call i32 @extfrag_for_order(ptr noundef %50, i32 noundef 9) #13
  %377 = mul i32 %376, %375
  %378 = load ptr, ptr %52, align 4
  %379 = getelementptr inbounds %struct.pglist_data, ptr %378, i32 0, i32 5
  %380 = load i32, ptr %379, align 4
  %381 = add i32 %380, 1
  %382 = udiv i32 %377, %381
  %383 = add i32 %382, %374
  %384 = load i32, ptr %54, align 8
  %385 = call i32 @extfrag_for_order(ptr noundef %53, i32 noundef 9) #13
  %386 = mul i32 %385, %384
  %387 = load ptr, ptr %55, align 4
  %388 = getelementptr inbounds %struct.pglist_data, ptr %387, i32 0, i32 5
  %389 = load i32, ptr %388, align 4
  %390 = add i32 %389, 1
  %391 = udiv i32 %386, %390
  %392 = add i32 %391, %383
  %393 = load i32, ptr %57, align 8
  %394 = call i32 @extfrag_for_order(ptr noundef %56, i32 noundef 9) #13
  %395 = mul i32 %394, %393
  %396 = load ptr, ptr %58, align 4
  %397 = getelementptr inbounds %struct.pglist_data, ptr %396, i32 0, i32 5
  %398 = load i32, ptr %397, align 4
  %399 = add i32 %398, 1
  %400 = udiv i32 %395, %399
  %401 = add i32 %400, %392
  %402 = add i32 %366, 10
  %403 = call i32 @llvm.umin.i32(i32 %402, i32 100) #13
  %404 = icmp ugt i32 %401, %403
  br i1 %404, label %405, label %498

405:                                              ; preds = %364
  %406 = load i32, ptr %59, align 8
  %407 = call i32 @extfrag_for_order(ptr noundef %0, i32 noundef 9) #13
  %408 = mul i32 %407, %406
  %409 = load ptr, ptr %60, align 4
  %410 = getelementptr inbounds %struct.pglist_data, ptr %409, i32 0, i32 5
  %411 = load i32, ptr %410, align 4
  %412 = add i32 %411, 1
  %413 = udiv i32 %408, %412
  %414 = load i32, ptr %62, align 8
  %415 = call i32 @extfrag_for_order(ptr noundef %61, i32 noundef 9) #13
  %416 = mul i32 %415, %414
  %417 = load ptr, ptr %63, align 4
  %418 = getelementptr inbounds %struct.pglist_data, ptr %417, i32 0, i32 5
  %419 = load i32, ptr %418, align 4
  %420 = add i32 %419, 1
  %421 = udiv i32 %416, %420
  %422 = add i32 %421, %413
  %423 = load i32, ptr %65, align 8
  %424 = call i32 @extfrag_for_order(ptr noundef %64, i32 noundef 9) #13
  %425 = mul i32 %424, %423
  %426 = load ptr, ptr %66, align 4
  %427 = getelementptr inbounds %struct.pglist_data, ptr %426, i32 0, i32 5
  %428 = load i32, ptr %427, align 4
  %429 = add i32 %428, 1
  %430 = udiv i32 %425, %429
  %431 = add i32 %430, %422
  %432 = load i32, ptr %68, align 8
  %433 = call i32 @extfrag_for_order(ptr noundef %67, i32 noundef 9) #13
  %434 = mul i32 %433, %432
  %435 = load ptr, ptr %69, align 4
  %436 = getelementptr inbounds %struct.pglist_data, ptr %435, i32 0, i32 5
  %437 = load i32, ptr %436, align 4
  %438 = add i32 %437, 1
  %439 = udiv i32 %434, %438
  %440 = add i32 %439, %431
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %2, i8 0, i32 88, i1 false) #13
  store i32 3264, ptr %26, align 4
  store i32 -1, ptr %27, align 4
  store i32 1, ptr %28, align 4
  store i8 1, ptr %29, align 4
  store i8 1, ptr %30, align 4
  store i8 1, ptr %31, align 1
  %441 = load i32, ptr %33, align 8
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %445, label %443

443:                                              ; preds = %405
  store ptr %0, ptr %32, align 4
  %444 = call fastcc i32 @compact_zone(ptr noundef nonnull %2, ptr noundef null) #13
  br label %445

445:                                              ; preds = %443, %405
  %446 = load i32, ptr %34, align 8
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %450, label %448

448:                                              ; preds = %445
  store ptr %35, ptr %32, align 4
  %449 = call fastcc i32 @compact_zone(ptr noundef nonnull %2, ptr noundef null) #13
  br label %450

450:                                              ; preds = %448, %445
  %451 = load i32, ptr %36, align 8
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %455, label %453

453:                                              ; preds = %450
  store ptr %37, ptr %32, align 4
  %454 = call fastcc i32 @compact_zone(ptr noundef nonnull %2, ptr noundef null) #13
  br label %455

455:                                              ; preds = %453, %450
  %456 = load i32, ptr %38, align 8
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %460, label %458

458:                                              ; preds = %455
  store ptr %39, ptr %32, align 4
  %459 = call fastcc i32 @compact_zone(ptr noundef nonnull %2, ptr noundef null) #13
  br label %460

460:                                              ; preds = %458, %455
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #13
  %461 = load i32, ptr %70, align 8
  %462 = call i32 @extfrag_for_order(ptr noundef %0, i32 noundef 9) #13
  %463 = mul i32 %462, %461
  %464 = load ptr, ptr %71, align 4
  %465 = getelementptr inbounds %struct.pglist_data, ptr %464, i32 0, i32 5
  %466 = load i32, ptr %465, align 4
  %467 = add i32 %466, 1
  %468 = udiv i32 %463, %467
  %469 = load i32, ptr %73, align 8
  %470 = call i32 @extfrag_for_order(ptr noundef %72, i32 noundef 9) #13
  %471 = mul i32 %470, %469
  %472 = load ptr, ptr %74, align 4
  %473 = getelementptr inbounds %struct.pglist_data, ptr %472, i32 0, i32 5
  %474 = load i32, ptr %473, align 4
  %475 = add i32 %474, 1
  %476 = udiv i32 %471, %475
  %477 = add i32 %476, %468
  %478 = load i32, ptr %76, align 8
  %479 = call i32 @extfrag_for_order(ptr noundef %75, i32 noundef 9) #13
  %480 = mul i32 %479, %478
  %481 = load ptr, ptr %77, align 4
  %482 = getelementptr inbounds %struct.pglist_data, ptr %481, i32 0, i32 5
  %483 = load i32, ptr %482, align 4
  %484 = add i32 %483, 1
  %485 = udiv i32 %480, %484
  %486 = add i32 %485, %477
  %487 = load i32, ptr %79, align 8
  %488 = call i32 @extfrag_for_order(ptr noundef %78, i32 noundef 9) #13
  %489 = mul i32 %488, %487
  %490 = load ptr, ptr %80, align 4
  %491 = getelementptr inbounds %struct.pglist_data, ptr %490, i32 0, i32 5
  %492 = load i32, ptr %491, align 4
  %493 = add i32 %492, 1
  %494 = udiv i32 %489, %493
  %495 = add i32 %494, %486
  %496 = icmp ult i32 %495, %440
  br i1 %496, label %498, label %497, !prof !10

497:                                              ; preds = %460
  br label %498

498:                                              ; preds = %497, %460, %364, %360, %354
  %499 = phi i32 [ 50, %364 ], [ 3200, %497 ], [ 50, %460 ], [ 50, %360 ], [ 50, %354 ]
  %500 = load i8, ptr %22, align 8, !range !15
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %503, label %502, !prof !10

502:                                              ; preds = %498
  store i8 0, ptr %22, align 8
  br label %503

503:                                              ; preds = %502, %498, %353
  %504 = phi i32 [ 50, %353 ], [ %499, %502 ], [ %499, %498 ]
  %505 = call zeroext i1 @kthread_should_stop() #13
  br i1 %505, label %506, label %81

506:                                              ; preds = %503, %12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kcompactd_stop(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 20), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @kthread_stop(ptr noundef nonnull %2) #13
  store ptr null, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 20), align 4
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @kcompactd_init() #7 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.116, i1 noundef zeroext false, ptr noundef nonnull @kcompactd_cpu_online, ptr noundef null, i1 noundef zeroext false) #13
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #15
  br label %7

5:                                                ; preds = %0
  %6 = tail call i32 @kcompactd_run(i32 noundef 0)
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %1, %3 ], [ 0, %5 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_compaction_isolate_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_isolate_template, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #13
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_compaction_migratepages(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_migratepages, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_migratepages, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %11, i32 noundef %13) #13
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_compaction_begin(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_begin, ptr %5, i32 0, i32 5
  %19 = load i8, ptr %18, align 4, !range !15
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, ptr @.str.39, ptr @.str.37
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef nonnull %21) #13
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_compaction_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %5, i32 0, i32 5
  %20 = load i8, ptr %19, align 4, !range !15
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr @.str.39, ptr @.str.37
  %23 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_end, ptr %5, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %24, ptr noundef nonnull @trace_raw_output_mm_compaction_end.symbols) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, ptr noundef nonnull %22, ptr noundef %25) #13
  %26 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %27

27:                                               ; preds = %8, %3
  %28 = phi i32 [ %26, %8 ], [ %6, %3 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_compaction_try_to_compact_pages(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_try_to_compact_pages, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_try_to_compact_pages, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.94, i32 noundef %14, ptr noundef nonnull @trace_raw_output_mm_compaction_try_to_compact_pages.__flags) #13
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %17, %16 ], [ @.str.95, %10 ]
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_try_to_compact_pages, ptr %7, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %12, ptr noundef %19, i32 noundef %21) #13
  %22 = tail call i32 @trace_handle_return(ptr noundef %4) #13
  br label %23

23:                                               ; preds = %18, %3
  %24 = phi i32 [ %22, %18 ], [ %8, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_compaction_suitable_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_mm_compaction_suitable_template.symbols) #13
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_suitable_template, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %19, ptr noundef nonnull @trace_raw_output_mm_compaction_suitable_template.symbols.105) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.100, i32 noundef %12, ptr noundef %15, i32 noundef %17, ptr noundef %20) #13
  %21 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_compaction_defer_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_mm_compaction_defer_template.symbols) #13
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %5, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_defer_template, ptr %5, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = shl nuw i32 1, %23
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.110, i32 noundef %12, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %24) #13
  %25 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %26

26:                                               ; preds = %8, %3
  %27 = phi i32 [ %25, %8 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_compaction_kcompactd_sleep(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_compaction_kcompactd_sleep, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.111, i32 noundef %11) #13
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kcompactd_wake_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_kcompactd_wake_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_kcompactd_wake_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_kcompactd_wake_template, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_kcompactd_wake_template.symbols) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.113, i32 noundef %12, i32 noundef %14, ptr noundef %17) #13
  %18 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__reset_isolation_pfn(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call i32 @pfn_valid(i32 noundef %1) #13
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @mem_map, align 4
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %9 = sub i32 %1, %8
  %10 = getelementptr %struct.page, ptr %7, i32 %9
  %11 = icmp eq ptr %10, null
  %12 = select i1 %6, i1 true, i1 %11
  br i1 %12, label %133, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr %10, align 4
  %15 = lshr i32 %14, 30
  %16 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %15
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %133

18:                                               ; preds = %13
  %19 = load volatile i32, ptr %10, align 4
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr %struct.page, ptr %7, i32 %9, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22, %18
  %28 = getelementptr %struct.page, ptr %7, i32 %9, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %27
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %27
  %35 = ptrtoint ptr %10 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 65536
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = getelementptr %struct.page, ptr %38, i32 1, i32 1
  %44 = getelementptr inbounds %struct.anon.58, ptr %43, i32 0, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = icmp ugt i8 %45, 10
  br i1 %46, label %133, label %47

47:                                               ; preds = %42, %36, %22
  %48 = xor i1 %3, true
  %49 = and i1 %2, %3
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = shl i32 %9, 5
  %52 = ashr exact i32 %51, 5
  %53 = add i32 %52, %8
  %54 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %10, i32 noundef %53, i32 noundef 8) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %133, label %56

56:                                               ; preds = %50, %47
  %57 = or i1 %48, %2
  br i1 %57, label %68, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr @mem_map, align 4
  %60 = ptrtoint ptr %10 to i32
  %61 = ptrtoint ptr %59 to i32
  %62 = sub i32 %60, %61
  %63 = ashr exact i32 %62, 5
  %64 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %65 = add i32 %63, %64
  %66 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %10, i32 noundef %65, i32 noundef 7) #13
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %133

68:                                               ; preds = %58, %56
  %69 = and i32 %1, -2048
  %70 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.umax.i32(i32 %69, i32 %71)
  %73 = tail call i32 @pfn_valid(i32 noundef %72) #13
  %74 = icmp eq i32 %73, 0
  %75 = load ptr, ptr @mem_map, align 4
  %76 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %77 = sub i32 %72, %76
  %78 = getelementptr %struct.page, ptr %75, i32 %77
  %79 = select i1 %74, ptr null, ptr %78
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, i32 %1, i32 %72
  %82 = add i32 %81, 2048
  %83 = and i32 %82, -2048
  %84 = add i32 %83, -1
  %85 = load i32, ptr %70, align 4
  %86 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 12
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %85, -1
  %89 = add i32 %88, %87
  %90 = tail call i32 @llvm.umin.i32(i32 %84, i32 %89)
  %91 = tail call i32 @pfn_valid(i32 noundef %90) #13
  %92 = icmp eq i32 %91, 0
  %93 = load ptr, ptr @mem_map, align 4
  %94 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %95 = sub i32 %90, %94
  %96 = getelementptr %struct.page, ptr %93, i32 %95
  %97 = icmp eq ptr %96, null
  %98 = select i1 %92, i1 true, i1 %97
  br i1 %98, label %133, label %99

99:                                               ; preds = %68
  %100 = select i1 %80, ptr %10, ptr %79
  br label %101

101:                                              ; preds = %124, %99
  %102 = phi ptr [ %125, %124 ], [ %100, %99 ]
  br i1 %2, label %103, label %118

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 1
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !10

108:                                              ; preds = %103
  %109 = add i32 %105, -1
  br label %112

110:                                              ; preds = %103
  %111 = ptrtoint ptr %102 to i32
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = inttoptr i32 %113 to ptr
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %112, %101
  br i1 %3, label %119, label %124

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, -268435328
  %123 = icmp eq i32 %122, -268435456
  br i1 %123, label %127, label %124

124:                                              ; preds = %119, %118
  %125 = getelementptr %struct.page, ptr %102, i32 8
  %126 = icmp ugt ptr %125, %96
  br i1 %126, label %133, label %101

127:                                              ; preds = %119, %112
  %128 = ptrtoint ptr %102 to i32
  %129 = ptrtoint ptr %93 to i32
  %130 = sub i32 %128, %129
  %131 = ashr exact i32 %130, 5
  %132 = add i32 %131, %94
  tail call void @set_pfnblock_flags_mask(ptr noundef %102, i32 noundef 0, i32 noundef %132, i32 noundef 8) #13
  br label %133

133:                                              ; preds = %127, %124, %68, %58, %50, %42, %13, %4
  %134 = phi i1 [ false, %4 ], [ false, %13 ], [ false, %42 ], [ true, %50 ], [ false, %58 ], [ false, %68 ], [ true, %127 ], [ false, %124 ]
  ret i1 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pageblock_pfn_to_page(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__isolate_free_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @post_alloc_hook(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reclaim_throttle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_movable_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__isolate_lru_page_prepare(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_movable_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zone_watermark_ok(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__zone_watermark_ok(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__next_zones_zonelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @compact_zone(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.zone, ptr %8, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.zone, ptr %8, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  %17 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 8
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 9
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 3
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 2
  store i32 0, ptr %20, align 4
  store volatile ptr %0, ptr %0, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 1
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %27 = icmp eq i32 %26, 0
  %28 = lshr i32 %25, 3
  %29 = and i32 %28, 3
  %30 = select i1 %27, i32 %29, i32 0, !prof !10
  %31 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 14
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @compaction_suitable(ptr noundef %8, i32 noundef %33, i32 noundef %35, i32 noundef %37)
  switch i32 %38, label %39 [
    i32 8, label %780
    i32 1, label %780
  ]

39:                                               ; preds = %2
  %40 = load ptr, ptr %7, align 4
  %41 = load i32, ptr %32, align 4
  %42 = getelementptr inbounds %struct.zone, ptr %40, i32 0, i32 32
  %43 = load i32, ptr %42, align 32
  %44 = icmp sgt i32 %43, %41
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.zone, ptr %40, i32 0, i32 31
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.zone, ptr %40, i32 0, i32 30
  %51 = load i32, ptr %50, align 8
  %52 = icmp ugt i32 %51, 63
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call fastcc void @__reset_isolation_suitable(ptr noundef %40)
  br label %54

54:                                               ; preds = %53, %49, %45, %39
  %55 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 6
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 23
  %57 = load i8, ptr %56, align 1, !range !15
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 5
  store i32 %10, ptr %60, align 4
  %61 = add i32 %13, -1
  %62 = and i32 %61, -2048
  %63 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 4
  store i32 %62, ptr %63, align 4
  br label %99

64:                                               ; preds = %54
  %65 = load ptr, ptr %7, align 4
  %66 = zext i1 %16 to i32
  %67 = getelementptr %struct.zone, ptr %65, i32 0, i32 27, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 5
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.zone, ptr %65, i32 0, i32 26
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 4
  store i32 %71, ptr %72, align 4
  %73 = icmp uge i32 %71, %10
  %74 = icmp ult i32 %71, %13
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %80, label %76

76:                                               ; preds = %64
  %77 = add i32 %13, -1
  %78 = and i32 %77, -2048
  store i32 %78, ptr %72, align 4
  store i32 %78, ptr %70, align 4
  %79 = load i32, ptr %69, align 4
  br label %80

80:                                               ; preds = %76, %64
  %81 = phi i32 [ %68, %64 ], [ %79, %76 ]
  %82 = icmp uge i32 %81, %10
  %83 = icmp ult i32 %81, %13
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  store i32 %10, ptr %69, align 4
  %86 = load ptr, ptr %7, align 4
  %87 = getelementptr inbounds %struct.zone, ptr %86, i32 0, i32 27
  store i32 %10, ptr %87, align 8
  %88 = load i32, ptr %69, align 4
  %89 = load ptr, ptr %7, align 4
  %90 = getelementptr %struct.zone, ptr %89, i32 0, i32 27, i32 1
  store i32 %88, ptr %90, align 4
  %91 = load i32, ptr %69, align 4
  br label %92

92:                                               ; preds = %85, %80
  %93 = phi i32 [ %81, %80 ], [ %91, %85 ]
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr inbounds %struct.zone, ptr %94, i32 0, i32 28
  %96 = load i32, ptr %95, align 16
  %97 = icmp ugt i32 %93, %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  store i8 1, ptr %56, align 1
  br label %99

99:                                               ; preds = %98, %92, %59
  %100 = phi i32 [ %93, %92 ], [ %93, %98 ], [ %10, %59 ]
  br i1 %16, label %108, label %101

101:                                              ; preds = %99
  %102 = load ptr, ptr %7, align 4
  %103 = getelementptr inbounds %struct.zone, ptr %102, i32 0, i32 27
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr %struct.zone, ptr %102, i32 0, i32 27, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %104, %106
  br label %108

108:                                              ; preds = %101, %99
  %109 = phi i1 [ false, %99 ], [ %107, %101 ]
  %110 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 5
  %111 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_begin, i32 0, i32 1), align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %108
  %116 = tail call ptr @llvm.thread.pointer() #13
  %117 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %118 = load i32, ptr %117, align 8
  %119 = lshr i32 %118, 5
  %120 = getelementptr i32, ptr @__cpu_online_mask, i32 %119
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %118, 31
  %123 = shl nuw i32 1, %122
  %124 = and i32 %123, %121
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %115
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
  %127 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_begin, i32 0, i32 7), align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %129, %126
  %130 = phi ptr [ %134, %129 ], [ %127, %126 ]
  %131 = load volatile ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.tracepoint_func, ptr %130, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  tail call void %131(ptr noundef %133, i32 noundef %10, i32 noundef %100, i32 noundef %112, i32 noundef %13, i1 noundef zeroext %16) #13
  %134 = getelementptr %struct.tracepoint_func, ptr %130, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %129

137:                                              ; preds = %129, %126
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !47
  br label %138

138:                                              ; preds = %137, %115, %108
  tail call void @lru_add_drain() #13
  %139 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 21
  %140 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 22
  %141 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 24
  %142 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 25
  %143 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 10
  %144 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 18
  %145 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %146 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %147 = getelementptr inbounds %struct.compact_control, ptr %0, i32 0, i32 19
  %148 = ptrtoint ptr %0 to i32
  %149 = icmp eq ptr %1, null
  %150 = getelementptr inbounds %struct.capture_control, ptr %1, i32 0, i32 1
  br label %151

151:                                              ; preds = %698, %138
  %152 = phi i32 [ 0, %138 ], [ %697, %698 ]
  %153 = phi i1 [ %109, %138 ], [ %696, %698 ]
  %154 = load i32, ptr %31, align 4
  %155 = load i32, ptr %111, align 4
  %156 = lshr i32 %155, 11
  %157 = load i32, ptr %110, align 4
  %158 = lshr i32 %157, 11
  %159 = icmp ugt i32 %156, %158
  br i1 %159, label %181, label %160

160:                                              ; preds = %151
  %161 = load ptr, ptr %7, align 4
  %162 = getelementptr inbounds %struct.zone, ptr %161, i32 0, i32 10
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.zone, ptr %161, i32 0, i32 27
  store i32 %163, ptr %164, align 8
  %165 = getelementptr %struct.zone, ptr %161, i32 0, i32 27, i32 1
  store i32 %163, ptr %165, align 4
  %166 = getelementptr inbounds %struct.zone, ptr %161, i32 0, i32 12
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %163, -1
  %169 = add i32 %168, %167
  %170 = and i32 %169, -2048
  %171 = getelementptr inbounds %struct.zone, ptr %161, i32 0, i32 26
  store i32 %170, ptr %171, align 4
  %172 = load i8, ptr %139, align 1, !range !15
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %160
  %175 = load ptr, ptr %7, align 4
  %176 = getelementptr inbounds %struct.zone, ptr %175, i32 0, i32 33
  store i8 1, ptr %176, align 4
  br label %177

177:                                              ; preds = %174, %160
  %178 = load i8, ptr %56, align 1, !range !15
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 6, i32 5
  br label %258

181:                                              ; preds = %151
  %182 = load i8, ptr %140, align 4, !range !15
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %202, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %7, align 4
  %186 = getelementptr inbounds %struct.zone, ptr %185, i32 0, i32 4
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.pglist_data, ptr %187, i32 0, i32 13
  %189 = load ptr, ptr %188, align 16
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.task_struct, ptr %189, i32 0, i32 1
  %193 = load volatile i32, ptr %192, align 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %258, label %195

195:                                              ; preds = %191, %184
  %196 = call i32 @extfrag_for_order(ptr noundef %185, i32 noundef 9) #13
  %197 = load i32, ptr @sysctl_compaction_proactiveness, align 4
  %198 = sub i32 100, %197
  %199 = call i32 @llvm.umax.i32(i32 %198, i32 5) #13
  %200 = icmp sgt i32 %196, %199
  %201 = select i1 %200, i32 4, i32 8
  br label %243

202:                                              ; preds = %181
  %203 = load i32, ptr %32, align 4
  %204 = icmp ne i32 %203, -1
  %205 = and i32 %157, 2047
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %208, label %258

208:                                              ; preds = %202
  %209 = icmp ult i32 %203, 12
  br i1 %209, label %210, label %243

210:                                              ; preds = %208
  %211 = icmp eq i32 %154, 1
  br label %215

212:                                              ; preds = %242, %227
  %213 = add i32 %216, 1
  %214 = icmp eq i32 %213, 12
  br i1 %214, label %243, label %215

215:                                              ; preds = %212, %210
  %216 = phi i32 [ %203, %210 ], [ %213, %212 ]
  %217 = load ptr, ptr %7, align 4
  %218 = getelementptr %struct.zone, ptr %217, i32 0, i32 20, i32 %216
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !9
  %219 = getelementptr [6 x %struct.list_head], ptr %218, i32 0, i32 %154
  %220 = load volatile ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, %219
  br i1 %221, label %222, label %241

222:                                              ; preds = %215
  br i1 %211, label %223, label %230

223:                                              ; preds = %222
  %224 = getelementptr [6 x %struct.list_head], ptr %218, i32 0, i32 4
  %225 = load volatile ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, %224
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  %228 = call i32 @find_suitable_fallback(ptr noundef %218, i32 noundef %216, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull %5) #13
  %229 = icmp eq i32 %228, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br i1 %229, label %212, label %258

230:                                              ; preds = %222
  %231 = call i32 @find_suitable_fallback(ptr noundef %218, i32 noundef %216, i32 noundef %154, i1 noundef zeroext true, ptr noundef nonnull %5) #13
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %242, label %233

233:                                              ; preds = %230
  %234 = load i32, ptr %14, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %233
  %237 = load i32, ptr %110, align 4
  %238 = and i32 %237, 2047
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %236
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %243

241:                                              ; preds = %236, %233, %223, %215
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %258

242:                                              ; preds = %230
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %212

243:                                              ; preds = %240, %212, %208, %195
  %244 = phi i32 [ %201, %195 ], [ 4, %240 ], [ 3, %208 ], [ 3, %212 ]
  %245 = load i8, ptr %141, align 2, !range !15
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = tail call ptr @llvm.thread.pointer() #13
  %249 = load volatile i32, ptr %248, align 4
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.task_struct, ptr %248, i32 0, i32 98, i32 1
  %254 = load i32, ptr %253, align 4
  %255 = and i32 %254, 256
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %252, %243
  br label %258

258:                                              ; preds = %257, %252, %247, %241, %227, %202, %191, %177
  %259 = phi i32 [ %180, %177 ], [ 4, %202 ], [ 7, %257 ], [ %244, %252 ], [ 8, %241 ], [ 6, %191 ], [ %244, %247 ], [ 8, %227 ]
  %260 = load ptr, ptr %7, align 4
  %261 = load i32, ptr %32, align 4
  %262 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_finished, i32 0, i32 1), align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %287

264:                                              ; preds = %258
  %265 = tail call ptr @llvm.thread.pointer() #13
  %266 = getelementptr inbounds %struct.thread_info, ptr %265, i32 0, i32 2
  %267 = load i32, ptr %266, align 8
  %268 = lshr i32 %267, 5
  %269 = getelementptr i32, ptr @__cpu_online_mask, i32 %268
  %270 = load volatile i32, ptr %269, align 4
  %271 = and i32 %267, 31
  %272 = shl nuw i32 1, %271
  %273 = and i32 %272, %270
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %287, label %275

275:                                              ; preds = %264
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  %276 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_finished, i32 0, i32 7), align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %286, label %278

278:                                              ; preds = %278, %275
  %279 = phi ptr [ %283, %278 ], [ %276, %275 ]
  %280 = load volatile ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.tracepoint_func, ptr %279, i32 0, i32 1
  %282 = load ptr, ptr %281, align 4
  call void %280(ptr noundef %282, ptr noundef %260, i32 noundef %261, i32 noundef %259) #13
  %283 = getelementptr %struct.tracepoint_func, ptr %279, i32 1
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %278

286:                                              ; preds = %278, %275
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  br label %287

287:                                              ; preds = %286, %264, %258
  %288 = add i32 %259, -3
  %289 = icmp ult i32 %288, 2
  br i1 %289, label %290, label %702

290:                                              ; preds = %287
  %291 = load i32, ptr %110, align 4
  %292 = xor i32 %291, %152
  %293 = icmp ult i32 %292, 2048
  %294 = zext i1 %293 to i8
  store i8 %294, ptr %142, align 1
  %295 = load i32, ptr @sysctl_compact_unevictable_allowed, align 4
  %296 = icmp eq i32 %295, 0
  %297 = select i1 %296, i32 0, i32 8
  %298 = load i32, ptr %14, align 4
  %299 = icmp eq i32 %298, 2
  %300 = select i1 %299, i32 0, i32 4
  %301 = or i32 %300, %297
  %302 = load i16, ptr %143, align 4
  %303 = call i16 @llvm.umin.i16(i16 %302, i16 31) #13
  %304 = zext i16 %303 to i32
  %305 = lshr i32 32, %304
  %306 = load i8, ptr %144, align 4, !range !15
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %477

308:                                              ; preds = %290
  %309 = load ptr, ptr %7, align 4
  %310 = getelementptr inbounds %struct.zone, ptr %309, i32 0, i32 10
  %311 = load i32, ptr %310, align 4
  %312 = icmp eq i32 %291, %311
  %313 = and i32 %291, -2048
  %314 = icmp eq i32 %291, %313
  %315 = or i1 %314, %312
  br i1 %315, label %316, label %477

316:                                              ; preds = %308
  %317 = load i32, ptr %32, align 4
  %318 = icmp slt i32 %317, 4
  br i1 %318, label %477, label %319

319:                                              ; preds = %316
  %320 = load i8, ptr %139, align 1, !range !15
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load i32, ptr %31, align 4
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %325, label %477

325:                                              ; preds = %322, %319
  %326 = load i32, ptr %111, align 4
  %327 = sub i32 %326, %291
  %328 = select i1 %312, i32 1, i32 3
  %329 = lshr i32 %327, %328
  %330 = add i32 %329, %291
  %331 = and i32 %330, -2048
  %332 = add nsw i32 %317, -1
  %333 = add nuw nsw i32 %305, 1
  br label %334

334:                                              ; preds = %465, %325
  %335 = phi ptr [ %309, %325 ], [ %466, %465 ]
  %336 = phi i32 [ %332, %325 ], [ %459, %465 ]
  %337 = phi i32 [ 0, %325 ], [ %458, %465 ]
  %338 = phi i32 [ %291, %325 ], [ %457, %465 ]
  %339 = phi i1 [ false, %325 ], [ %456, %465 ]
  %340 = getelementptr %struct.zone, ptr %335, i32 0, i32 20, i32 %336, i32 1
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %455, label %343

343:                                              ; preds = %334
  %344 = getelementptr inbounds %struct.zone, ptr %335, i32 0, i32 22
  %345 = call i32 @_raw_spin_lock_irqsave(ptr noundef %344) #13
  %346 = getelementptr %struct.zone, ptr %335, i32 0, i32 20, i32 %336, i32 0, i32 1
  %347 = load ptr, ptr %346, align 4
  %348 = icmp eq ptr %347, %346
  br i1 %348, label %449, label %349

349:                                              ; preds = %343
  %350 = call i32 @llvm.umax.i32(i32 %337, i32 %333) #13
  %351 = add i32 %350, 1
  br label %352

352:                                              ; preds = %446, %349
  %353 = phi ptr [ %447, %446 ], [ %347, %349 ]
  %354 = phi i32 [ %356, %446 ], [ %337, %349 ]
  %355 = getelementptr i8, ptr %353, i32 -4
  %356 = add i32 %354, 1
  %357 = icmp ugt i32 %354, %305
  br i1 %357, label %358, label %389

358:                                              ; preds = %352
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  store ptr %4, ptr %146, align 4
  %359 = getelementptr %struct.zone, ptr %335, i32 0, i32 20, i32 %336, i32 0, i32 1, i32 1
  %360 = load ptr, ptr %359, align 4
  %361 = icmp eq ptr %360, %353
  br i1 %361, label %388, label %362

362:                                              ; preds = %358
  %363 = load volatile ptr, ptr %346, align 4
  %364 = icmp eq ptr %363, %346
  br i1 %364, label %381, label %365

365:                                              ; preds = %362
  %366 = load volatile ptr, ptr %346, align 4
  %367 = icmp eq ptr %366, %346
  %368 = icmp ne ptr %366, %360
  %369 = select i1 %367, i1 true, i1 %368
  %370 = icmp eq ptr %353, %346
  %371 = select i1 %369, i1 true, i1 %370
  br i1 %371, label %372, label %381

372:                                              ; preds = %365
  br i1 %370, label %373, label %374

373:                                              ; preds = %372
  store volatile ptr %4, ptr %4, align 8
  br label %378

374:                                              ; preds = %372
  %375 = load ptr, ptr %353, align 4
  %376 = getelementptr inbounds %struct.list_head, ptr %375, i32 0, i32 1
  store ptr %366, ptr %4, align 8
  %377 = getelementptr inbounds %struct.list_head, ptr %366, i32 0, i32 1
  store ptr %4, ptr %377, align 4
  store ptr %353, ptr %146, align 4
  store ptr %4, ptr %353, align 4
  store ptr %375, ptr %346, align 4
  br label %378

378:                                              ; preds = %374, %373
  %379 = phi ptr [ %346, %374 ], [ %4, %373 ]
  %380 = phi ptr [ %376, %374 ], [ %146, %373 ]
  store ptr %379, ptr %380, align 4
  br label %381

381:                                              ; preds = %378, %365, %362
  %382 = load volatile ptr, ptr %4, align 8
  %383 = icmp eq ptr %382, %4
  br i1 %383, label %388, label %384

384:                                              ; preds = %381
  %385 = load ptr, ptr %359, align 4
  %386 = load ptr, ptr %146, align 4
  %387 = getelementptr inbounds %struct.list_head, ptr %382, i32 0, i32 1
  store ptr %385, ptr %387, align 4
  store ptr %382, ptr %385, align 4
  store ptr %346, ptr %386, align 4
  store ptr %386, ptr %359, align 4
  br label %388

388:                                              ; preds = %384, %381, %358
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %449

389:                                              ; preds = %352
  %390 = load ptr, ptr @mem_map, align 4
  %391 = ptrtoint ptr %355 to i32
  %392 = ptrtoint ptr %390 to i32
  %393 = sub i32 %391, %392
  %394 = ashr exact i32 %393, 5
  %395 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %396 = add i32 %394, %395
  %397 = icmp ult i32 %396, %331
  br i1 %397, label %398, label %446

398:                                              ; preds = %389
  %399 = call i32 @get_pfnblock_flags_mask(ptr noundef %355, i32 noundef %396, i32 noundef 8) #13
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %446

401:                                              ; preds = %398
  %402 = ptrtoint ptr %355 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  store ptr %3, ptr %145, align 4
  %403 = getelementptr %struct.zone, ptr %335, i32 0, i32 20, i32 %336, i32 0, i32 1, i32 1
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, %353
  br i1 %405, label %432, label %406

406:                                              ; preds = %401
  %407 = load volatile ptr, ptr %346, align 4
  %408 = icmp eq ptr %407, %346
  br i1 %408, label %425, label %409

409:                                              ; preds = %406
  %410 = load volatile ptr, ptr %346, align 4
  %411 = icmp eq ptr %410, %346
  %412 = icmp ne ptr %410, %404
  %413 = select i1 %411, i1 true, i1 %412
  %414 = icmp eq ptr %353, %346
  %415 = select i1 %413, i1 true, i1 %414
  br i1 %415, label %416, label %425

416:                                              ; preds = %409
  br i1 %414, label %417, label %418

417:                                              ; preds = %416
  store volatile ptr %3, ptr %3, align 8
  br label %422

418:                                              ; preds = %416
  %419 = load ptr, ptr %353, align 4
  %420 = getelementptr inbounds %struct.list_head, ptr %419, i32 0, i32 1
  store ptr %410, ptr %3, align 8
  %421 = getelementptr inbounds %struct.list_head, ptr %410, i32 0, i32 1
  store ptr %3, ptr %421, align 4
  store ptr %353, ptr %145, align 4
  store ptr %3, ptr %353, align 4
  store ptr %419, ptr %346, align 4
  br label %422

422:                                              ; preds = %418, %417
  %423 = phi ptr [ %346, %418 ], [ %3, %417 ]
  %424 = phi ptr [ %420, %418 ], [ %145, %417 ]
  store ptr %423, ptr %424, align 4
  br label %425

425:                                              ; preds = %422, %409, %406
  %426 = load volatile ptr, ptr %3, align 8
  %427 = icmp eq ptr %426, %3
  br i1 %427, label %432, label %428

428:                                              ; preds = %425
  %429 = load ptr, ptr %403, align 4
  %430 = load ptr, ptr %145, align 4
  %431 = getelementptr inbounds %struct.list_head, ptr %426, i32 0, i32 1
  store ptr %429, ptr %431, align 4
  store ptr %426, ptr %429, align 4
  store ptr %346, ptr %430, align 4
  store ptr %430, ptr %403, align 4
  br label %432

432:                                              ; preds = %428, %425, %401
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %433 = load i32, ptr %55, align 4
  switch i32 %433, label %435 [
    i32 -1, label %438
    i32 0, label %434
  ]

434:                                              ; preds = %432
  br label %435

435:                                              ; preds = %434, %432
  %436 = phi i32 [ %433, %432 ], [ %396, %434 ]
  %437 = call i32 @llvm.umin.i32(i32 %436, i32 %396) #13
  store i32 %437, ptr %55, align 4
  br label %438

438:                                              ; preds = %435, %432
  %439 = and i32 %396, -2048
  store i16 0, ptr %143, align 4
  %440 = load ptr, ptr @mem_map, align 4
  %441 = ptrtoint ptr %440 to i32
  %442 = sub i32 %402, %441
  %443 = ashr exact i32 %442, 5
  %444 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %445 = add i32 %443, %444
  call void @set_pfnblock_flags_mask(ptr noundef %355, i32 noundef 8, i32 noundef %445, i32 noundef 8) #13
  br label %449

446:                                              ; preds = %398, %389
  %447 = load ptr, ptr %353, align 4
  %448 = icmp eq ptr %447, %346
  br i1 %448, label %449, label %352

449:                                              ; preds = %446, %438, %388, %343
  %450 = phi i1 [ true, %438 ], [ %339, %388 ], [ %339, %343 ], [ %339, %446 ]
  %451 = phi i32 [ %439, %438 ], [ %338, %388 ], [ %338, %343 ], [ %338, %446 ]
  %452 = phi i32 [ %356, %438 ], [ %351, %388 ], [ %337, %343 ], [ %356, %446 ]
  %453 = load ptr, ptr %7, align 4
  %454 = getelementptr inbounds %struct.zone, ptr %453, i32 0, i32 22
  call void @_raw_spin_unlock_irqrestore(ptr noundef %454, i32 noundef %345) #13
  br label %455

455:                                              ; preds = %449, %334
  %456 = phi i1 [ %450, %449 ], [ %339, %334 ]
  %457 = phi i32 [ %451, %449 ], [ %338, %334 ]
  %458 = phi i32 [ %452, %449 ], [ %337, %334 ]
  %459 = add i32 %336, -1
  %460 = icmp slt i32 %459, 3
  %461 = select i1 %460, i1 true, i1 %456
  %462 = xor i1 %461, true
  %463 = icmp ule i32 %458, %305
  %464 = select i1 %462, i1 %463, i1 false
  br i1 %464, label %465, label %467

465:                                              ; preds = %455
  %466 = load ptr, ptr %7, align 4
  br label %334

467:                                              ; preds = %455
  %468 = load i32, ptr %17, align 4
  %469 = add i32 %468, %458
  store i32 %469, ptr %17, align 4
  br i1 %456, label %484, label %470

470:                                              ; preds = %467
  %471 = load i16, ptr %143, align 4
  %472 = add i16 %471, 1
  store i16 %472, ptr %143, align 4
  %473 = load i32, ptr %55, align 4
  switch i32 %473, label %476 [
    i32 0, label %474
    i32 -1, label %474
  ]

474:                                              ; preds = %470, %470
  %475 = load i32, ptr %110, align 4
  br label %477

476:                                              ; preds = %470
  store i32 %473, ptr %110, align 4
  store i32 -1, ptr %55, align 4
  br label %477

477:                                              ; preds = %476, %474, %322, %316, %308, %290
  %478 = phi i32 [ %473, %476 ], [ %475, %474 ], [ %291, %322 ], [ %291, %316 ], [ %291, %308 ], [ %291, %290 ]
  %479 = and i32 %478, -2048
  %480 = load ptr, ptr %7, align 4
  %481 = getelementptr inbounds %struct.zone, ptr %480, i32 0, i32 10
  %482 = load i32, ptr %481, align 4
  %483 = call i32 @llvm.umax.i32(i32 %479, i32 %482) #13
  br label %495

484:                                              ; preds = %467
  %485 = load i32, ptr %110, align 4
  %486 = and i32 %457, -2048
  %487 = load ptr, ptr %7, align 4
  %488 = getelementptr inbounds %struct.zone, ptr %487, i32 0, i32 10
  %489 = load i32, ptr %488, align 4
  %490 = call i32 @llvm.umax.i32(i32 %486, i32 %489) #13
  %491 = icmp eq i32 %457, %485
  br i1 %491, label %495, label %492

492:                                              ; preds = %484
  %493 = load i16, ptr %143, align 4
  %494 = icmp eq i16 %493, 0
  br label %495

495:                                              ; preds = %492, %484, %477
  %496 = phi i32 [ %490, %484 ], [ %490, %492 ], [ %483, %477 ]
  %497 = phi i32 [ %457, %484 ], [ %457, %492 ], [ %478, %477 ]
  %498 = phi i1 [ false, %484 ], [ %494, %492 ], [ false, %477 ]
  %499 = add i32 %497, 2048
  %500 = and i32 %499, -2048
  %501 = load i32, ptr %111, align 4
  %502 = icmp ugt i32 %500, %501
  br i1 %502, label %618, label %503

503:                                              ; preds = %614, %495
  %504 = phi i1 [ false, %614 ], [ %498, %495 ]
  %505 = phi i32 [ %506, %614 ], [ %497, %495 ]
  %506 = phi i32 [ %615, %614 ], [ %500, %495 ]
  %507 = phi i32 [ %506, %614 ], [ %496, %495 ]
  %508 = and i32 %505, 65535
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %512

510:                                              ; preds = %503
  %511 = call i32 @__cond_resched() #13
  br label %512

512:                                              ; preds = %510, %503
  %513 = load ptr, ptr %7, align 4
  %514 = getelementptr inbounds %struct.zone, ptr %513, i32 0, i32 34
  %515 = load i8, ptr %514, align 1, !range !15
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %522, label %517

517:                                              ; preds = %512
  %518 = load ptr, ptr @mem_map, align 4
  %519 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %520 = sub i32 %507, %519
  %521 = getelementptr %struct.page, ptr %518, i32 %520
  br label %524

522:                                              ; preds = %512
  %523 = call ptr @__pageblock_pfn_to_page(i32 noundef %507, i32 noundef %506, ptr noundef %513) #13
  br label %524

524:                                              ; preds = %522, %517
  %525 = phi ptr [ %521, %517 ], [ %523, %522 ]
  %526 = icmp eq ptr %525, null
  br i1 %526, label %614, label %527

527:                                              ; preds = %524
  %528 = and i32 %505, 2047
  %529 = icmp ne i32 %528, 0
  %530 = select i1 %529, i1 true, i1 %504
  br i1 %530, label %544, label %531

531:                                              ; preds = %527
  %532 = load i8, ptr %144, align 4, !range !15
  %533 = icmp eq i8 %532, 0
  br i1 %533, label %534, label %544

534:                                              ; preds = %531
  %535 = load ptr, ptr @mem_map, align 4
  %536 = ptrtoint ptr %525 to i32
  %537 = ptrtoint ptr %535 to i32
  %538 = sub i32 %536, %537
  %539 = ashr exact i32 %538, 5
  %540 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %541 = add i32 %539, %540
  %542 = call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %525, i32 noundef %541, i32 noundef 8) #13
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %614

544:                                              ; preds = %534, %531, %527
  %545 = load volatile i32, ptr %525, align 4
  %546 = and i32 %545, 65536
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %553

548:                                              ; preds = %544
  %549 = getelementptr inbounds %struct.page, ptr %525, i32 0, i32 1
  %550 = load volatile i32, ptr %549, align 4
  %551 = and i32 %550, 1
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %573, label %553

553:                                              ; preds = %548, %544
  %554 = getelementptr inbounds %struct.page, ptr %525, i32 0, i32 1
  %555 = load volatile i32, ptr %554, align 4
  %556 = and i32 %555, 1
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %560, label %558, !prof !10

558:                                              ; preds = %553
  %559 = add i32 %555, -1
  br label %562

560:                                              ; preds = %553
  %561 = ptrtoint ptr %525 to i32
  br label %562

562:                                              ; preds = %560, %558
  %563 = phi i32 [ %559, %558 ], [ %561, %560 ]
  %564 = inttoptr i32 %563 to ptr
  %565 = load volatile i32, ptr %564, align 4
  %566 = and i32 %565, 65536
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %573, label %568

568:                                              ; preds = %562
  %569 = getelementptr %struct.page, ptr %564, i32 1, i32 1
  %570 = getelementptr inbounds %struct.anon.58, ptr %569, i32 0, i32 2
  %571 = load i8, ptr %570, align 1
  %572 = icmp ugt i8 %571, 10
  br i1 %572, label %593, label %573

573:                                              ; preds = %568, %562, %548
  %574 = load i32, ptr %14, align 4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %611

576:                                              ; preds = %573
  %577 = load i8, ptr %139, align 1, !range !15
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %611, label %579

579:                                              ; preds = %576
  %580 = load ptr, ptr @mem_map, align 4
  %581 = ptrtoint ptr %525 to i32
  %582 = ptrtoint ptr %580 to i32
  %583 = sub i32 %581, %582
  %584 = ashr exact i32 %583, 5
  %585 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %586 = add i32 %584, %585
  %587 = call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %525, i32 noundef %586, i32 noundef 7) #13
  %588 = load i32, ptr %31, align 4
  %589 = icmp eq i32 %588, 1
  br i1 %589, label %590, label %591

590:                                              ; preds = %579
  switch i32 %587, label %593 [
    i32 4, label %611
    i32 1, label %611
  ]

591:                                              ; preds = %579
  %592 = icmp eq i32 %587, %588
  br i1 %592, label %611, label %593

593:                                              ; preds = %591, %590, %568
  %594 = add i32 %506, 2048
  %595 = load i8, ptr %147, align 1, !range !15
  %596 = icmp eq i8 %595, 0
  br i1 %596, label %597, label %614

597:                                              ; preds = %593
  %598 = load ptr, ptr %7, align 4
  %599 = getelementptr inbounds %struct.zone, ptr %598, i32 0, i32 27
  %600 = load i32, ptr %599, align 8
  %601 = icmp ugt i32 %594, %600
  br i1 %601, label %602, label %603

602:                                              ; preds = %597
  store i32 %594, ptr %599, align 8
  br label %603

603:                                              ; preds = %602, %597
  %604 = load i32, ptr %14, align 4
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %614, label %606

606:                                              ; preds = %603
  %607 = getelementptr %struct.zone, ptr %598, i32 0, i32 27, i32 1
  %608 = load i32, ptr %607, align 4
  %609 = icmp ugt i32 %594, %608
  br i1 %609, label %610, label %614

610:                                              ; preds = %606
  store i32 %594, ptr %607, align 4
  br label %614

611:                                              ; preds = %591, %590, %590, %576, %573
  %612 = call fastcc i32 @isolate_migratepages_block(ptr noundef %0, i32 noundef %505, i32 noundef %506, i32 noundef %301) #13
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %618, label %621

614:                                              ; preds = %610, %606, %603, %593, %534, %524
  store i32 %506, ptr %110, align 4
  %615 = add i32 %506, 2048
  %616 = load i32, ptr %111, align 4
  %617 = icmp ugt i32 %615, %616
  br i1 %617, label %618, label %503

618:                                              ; preds = %614, %611, %495
  %619 = load i32, ptr %19, align 4
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %622, label %628

621:                                              ; preds = %611
  call void @putback_movable_pages(ptr noundef %22) #13
  store i32 0, ptr %19, align 4
  br label %702

622:                                              ; preds = %618
  br i1 %153, label %623, label %681

623:                                              ; preds = %622
  %624 = load ptr, ptr %7, align 4
  %625 = getelementptr inbounds %struct.zone, ptr %624, i32 0, i32 27
  %626 = load i32, ptr %625, align 8
  %627 = getelementptr %struct.zone, ptr %624, i32 0, i32 27, i32 1
  store i32 %626, ptr %627, align 4
  br label %681

628:                                              ; preds = %618
  %629 = load i32, ptr %14, align 4
  %630 = call i32 @migrate_pages(ptr noundef %22, ptr noundef nonnull @compaction_alloc, ptr noundef nonnull @compaction_free, i32 noundef %148, i32 noundef %629, i32 noundef 0, ptr noundef nonnull %6) #13
  %631 = load i32, ptr %19, align 4
  %632 = load i32, ptr %6, align 4
  %633 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_migratepages, i32 0, i32 1), align 4
  %634 = icmp sgt i32 %633, 0
  br i1 %634, label %635, label %658

635:                                              ; preds = %628
  %636 = tail call ptr @llvm.thread.pointer() #13
  %637 = getelementptr inbounds %struct.thread_info, ptr %636, i32 0, i32 2
  %638 = load i32, ptr %637, align 8
  %639 = lshr i32 %638, 5
  %640 = getelementptr i32, ptr @__cpu_online_mask, i32 %639
  %641 = load volatile i32, ptr %640, align 4
  %642 = and i32 %638, 31
  %643 = shl nuw i32 1, %642
  %644 = and i32 %643, %641
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %658, label %646

646:                                              ; preds = %635
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !50
  %647 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_migratepages, i32 0, i32 7), align 4
  %648 = icmp eq ptr %647, null
  br i1 %648, label %657, label %649

649:                                              ; preds = %649, %646
  %650 = phi ptr [ %654, %649 ], [ %647, %646 ]
  %651 = load volatile ptr, ptr %650, align 4
  %652 = getelementptr inbounds %struct.tracepoint_func, ptr %650, i32 0, i32 1
  %653 = load ptr, ptr %652, align 4
  call void %651(ptr noundef %653, i32 noundef %631, i32 noundef %632) #13
  %654 = getelementptr %struct.tracepoint_func, ptr %650, i32 1
  %655 = load ptr, ptr %654, align 4
  %656 = icmp eq ptr %655, null
  br i1 %656, label %657, label %649

657:                                              ; preds = %649, %646
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !51
  br label %658

658:                                              ; preds = %657, %635, %628
  store i32 0, ptr %19, align 4
  %659 = icmp eq i32 %630, 0
  br i1 %659, label %681, label %660

660:                                              ; preds = %658
  call void @putback_movable_pages(ptr noundef %22) #13
  %661 = icmp eq i32 %630, -12
  br i1 %661, label %662, label %668

662:                                              ; preds = %660
  %663 = load i32, ptr %111, align 4
  %664 = lshr i32 %663, 11
  %665 = load i32, ptr %110, align 4
  %666 = lshr i32 %665, 11
  %667 = icmp ugt i32 %664, %666
  br i1 %667, label %702, label %668

668:                                              ; preds = %662, %660
  %669 = load i8, ptr %139, align 1, !range !15
  %670 = icmp eq i8 %669, 0
  br i1 %670, label %681, label %671

671:                                              ; preds = %668
  %672 = load i32, ptr %14, align 4
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %681

674:                                              ; preds = %671
  %675 = load i32, ptr %110, align 4
  %676 = load i32, ptr %32, align 4
  %677 = shl nsw i32 -1, %676
  %678 = xor i32 %677, -1
  %679 = add i32 %675, %678
  %680 = and i32 %679, %677
  store i32 %680, ptr %110, align 4
  br label %695

681:                                              ; preds = %671, %668, %658, %623, %622
  %682 = phi i32 [ %291, %671 ], [ %291, %668 ], [ %291, %658 ], [ %152, %623 ], [ %152, %622 ]
  %683 = phi i1 [ false, %671 ], [ false, %668 ], [ false, %658 ], [ true, %623 ], [ false, %622 ]
  %684 = load i32, ptr %32, align 4
  %685 = icmp sgt i32 %684, 0
  %686 = icmp ne i32 %682, 0
  %687 = select i1 %685, i1 %686, i1 false
  br i1 %687, label %688, label %695

688:                                              ; preds = %681
  %689 = load i32, ptr %110, align 4
  %690 = shl nsw i32 -1, %684
  %691 = and i32 %689, %690
  %692 = icmp ult i32 %682, %691
  br i1 %692, label %693, label %695

693:                                              ; preds = %688
  %694 = load ptr, ptr %7, align 4
  call void @lru_add_drain_cpu_zone(ptr noundef %694) #13
  br label %695

695:                                              ; preds = %693, %688, %681, %674
  %696 = phi i1 [ %683, %681 ], [ %683, %693 ], [ %683, %688 ], [ false, %674 ]
  %697 = phi i32 [ %682, %681 ], [ 0, %693 ], [ %682, %688 ], [ 0, %674 ]
  br i1 %149, label %698, label %699

698:                                              ; preds = %699, %695
  br label %151

699:                                              ; preds = %695
  %700 = load ptr, ptr %150, align 4
  %701 = icmp eq ptr %700, null
  br i1 %701, label %698, label %702

702:                                              ; preds = %699, %662, %621, %287
  %703 = phi i32 [ 7, %621 ], [ 7, %662 ], [ 8, %699 ], [ %259, %287 ]
  %704 = load i32, ptr %20, align 4
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %734, label %706

706:                                              ; preds = %702
  %707 = load ptr, ptr %0, align 4
  %708 = icmp eq ptr %707, %0
  br i1 %708, label %709, label %710

709:                                              ; preds = %706
  store i32 0, ptr %20, align 4
  br label %734

710:                                              ; preds = %710, %706
  %711 = phi ptr [ %713, %710 ], [ %707, %706 ]
  %712 = phi i32 [ %725, %710 ], [ 0, %706 ]
  %713 = load ptr, ptr %711, align 4
  %714 = getelementptr i8, ptr %711, i32 -4
  %715 = load ptr, ptr @mem_map, align 4
  %716 = ptrtoint ptr %714 to i32
  %717 = ptrtoint ptr %715 to i32
  %718 = sub i32 %716, %717
  %719 = ashr exact i32 %718, 5
  %720 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %721 = add i32 %719, %720
  %722 = getelementptr inbounds %struct.list_head, ptr %711, i32 0, i32 1
  %723 = load ptr, ptr %722, align 4
  %724 = getelementptr inbounds %struct.list_head, ptr %713, i32 0, i32 1
  store ptr %723, ptr %724, align 4
  store volatile ptr %713, ptr %723, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %711, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %722, align 4
  call void @__free_pages(ptr noundef %714, i32 noundef 0) #13
  %725 = call i32 @llvm.umax.i32(i32 %721, i32 %712) #13
  %726 = icmp eq ptr %713, %0
  br i1 %726, label %727, label %710

727:                                              ; preds = %710
  %728 = and i32 %725, -2048
  store i32 0, ptr %20, align 4
  %729 = load ptr, ptr %7, align 4
  %730 = getelementptr inbounds %struct.zone, ptr %729, i32 0, i32 26
  %731 = load i32, ptr %730, align 4
  %732 = icmp ugt i32 %728, %731
  br i1 %732, label %733, label %734

733:                                              ; preds = %727
  store i32 %728, ptr %730, align 4
  br label %734

734:                                              ; preds = %733, %727, %709, %702
  %735 = load i32, ptr %17, align 4
  %736 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %737 = call i32 @llvm.read_register.i32(metadata !0) #13
  %738 = inttoptr i32 %737 to ptr
  %739 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %738) #8, !srcloc !12
  %740 = add i32 %739, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 51) to i32)
  %741 = inttoptr i32 %740 to ptr
  %742 = load i32, ptr %741, align 4
  %743 = add i32 %742, %735
  store i32 %743, ptr %741, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %736) #13, !srcloc !17
  %744 = load i32, ptr %18, align 4
  %745 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %746 = call i32 @llvm.read_register.i32(metadata !0) #13
  %747 = inttoptr i32 %746 to ptr
  %748 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %747) #8, !srcloc !12
  %749 = add i32 %748, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 52) to i32)
  %750 = inttoptr i32 %749 to ptr
  %751 = load i32, ptr %750, align 4
  %752 = add i32 %751, %744
  store i32 %752, ptr %750, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %745) #13, !srcloc !17
  %753 = load i32, ptr %110, align 4
  %754 = load i32, ptr %111, align 4
  %755 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_end, i32 0, i32 1), align 4
  %756 = icmp sgt i32 %755, 0
  br i1 %756, label %757, label %780

757:                                              ; preds = %734
  %758 = tail call ptr @llvm.thread.pointer() #13
  %759 = getelementptr inbounds %struct.thread_info, ptr %758, i32 0, i32 2
  %760 = load i32, ptr %759, align 8
  %761 = lshr i32 %760, 5
  %762 = getelementptr i32, ptr @__cpu_online_mask, i32 %761
  %763 = load volatile i32, ptr %762, align 4
  %764 = and i32 %760, 31
  %765 = shl nuw i32 1, %764
  %766 = and i32 %765, %763
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %780, label %768

768:                                              ; preds = %757
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !52
  %769 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_compaction_end, i32 0, i32 7), align 4
  %770 = icmp eq ptr %769, null
  br i1 %770, label %779, label %771

771:                                              ; preds = %771, %768
  %772 = phi ptr [ %776, %771 ], [ %769, %768 ]
  %773 = load volatile ptr, ptr %772, align 4
  %774 = getelementptr inbounds %struct.tracepoint_func, ptr %772, i32 0, i32 1
  %775 = load ptr, ptr %774, align 4
  call void %773(ptr noundef %775, i32 noundef %10, i32 noundef %753, i32 noundef %754, i32 noundef %13, i1 noundef zeroext %16, i32 noundef %703) #13
  %776 = getelementptr %struct.tracepoint_func, ptr %772, i32 1
  %777 = load ptr, ptr %776, align 4
  %778 = icmp eq ptr %777, null
  br i1 %778, label %779, label %771

779:                                              ; preds = %771, %768
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !53
  br label %780

780:                                              ; preds = %779, %757, %734, %2, %2
  %781 = phi i32 [ %38, %2 ], [ %38, %2 ], [ %703, %734 ], [ %703, %757 ], [ %703, %779 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %781
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @compaction_alloc(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head, align 8
  %6 = alloca i32, align 4
  %7 = inttoptr i32 %1 to ptr
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %522

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !9
  %13 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 10
  %14 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %356, label %17

17:                                               ; preds = %10
  %18 = load i16, ptr %13, align 4
  %19 = tail call i16 @llvm.umin.i16(i16 %18, i16 31) #13
  %20 = zext i16 %19 to i32
  %21 = lshr i32 32, %20
  %22 = add nuw nsw i32 %21, 1
  %23 = lshr i32 %22, 1
  %24 = icmp ugt i16 %19, 5
  %25 = select i1 %24, i32 1, i32 %23
  %26 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.zone, ptr %12, i32 0, i32 29
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %27, %29
  %31 = select i1 %30, i32 %25, i32 1024
  %32 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %27, %33
  %35 = lshr i32 %34, 2
  %36 = sub i32 %27, %35
  %37 = and i32 %36, -2048
  %38 = lshr i32 %34, 1
  %39 = sub i32 %27, %38
  %40 = and i32 %39, -2048
  %41 = icmp ugt i32 %40, %37
  %42 = load i1, ptr @fast_isolate_freepages.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %47, !prof !11

45:                                               ; preds = %17
  store i1 true, ptr @fast_isolate_freepages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.115, i32 noundef 1411, i32 noundef 9, ptr noundef null) #13
  %46 = load i32, ptr %14, align 4
  br label %47

47:                                               ; preds = %45, %17
  %48 = phi i32 [ %46, %45 ], [ %15, %17 ]
  %49 = tail call i32 @llvm.umax.i32(i32 %40, i32 %37) #13
  %50 = add i32 %48, -1
  %51 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 11
  %52 = load i16, ptr %51, align 2
  %53 = sext i16 %52 to i32
  %54 = tail call i32 @llvm.umin.i32(i32 %50, i32 %53) #13
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr %51, align 2
  %56 = shl i32 %54, 16
  %57 = icmp sgt i32 %56, -65536
  br i1 %57, label %58, label %225

58:                                               ; preds = %47
  %59 = and i32 %54, 65535
  %60 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %61 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 2
  %62 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  br label %63

63:                                               ; preds = %217, %58
  %64 = phi i32 [ %31, %58 ], [ %197, %217 ]
  %65 = phi i32 [ 0, %58 ], [ %196, %217 ]
  %66 = phi i32 [ 0, %58 ], [ %195, %217 ]
  %67 = phi i32 [ 0, %58 ], [ %194, %217 ]
  %68 = phi i32 [ %59, %58 ], [ %204, %217 ]
  %69 = load ptr, ptr %11, align 4
  %70 = getelementptr %struct.zone, ptr %69, i32 0, i32 20, i32 %68, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %191, label %73

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.zone, ptr %69, i32 0, i32 22
  %75 = call i32 @_raw_spin_lock_irqsave(ptr noundef %74) #13
  %76 = getelementptr %struct.zone, ptr %69, i32 0, i32 20, i32 %68, i32 0, i32 1
  %77 = getelementptr %struct.zone, ptr %69, i32 0, i32 20, i32 %68, i32 0, i32 1, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 -4
  %80 = icmp eq ptr %78, %76
  %81 = load ptr, ptr @mem_map, align 4
  br i1 %80, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %126

84:                                               ; preds = %73
  %85 = ptrtoint ptr %81 to i32
  %86 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %92

87:                                               ; preds = %118
  %88 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 -4
  %91 = icmp eq ptr %89, %76
  br i1 %91, label %126, label %92

92:                                               ; preds = %87, %84
  %93 = phi ptr [ %79, %84 ], [ %90, %87 ]
  %94 = phi ptr [ %78, %84 ], [ %89, %87 ]
  %95 = phi i32 [ %64, %84 ], [ %124, %87 ]
  %96 = phi i32 [ %65, %84 ], [ %101, %87 ]
  %97 = phi i32 [ %66, %84 ], [ %114, %87 ]
  %98 = phi i32 [ 0, %84 ], [ %122, %87 ]
  %99 = phi i32 [ 0, %84 ], [ %100, %87 ]
  %100 = add nuw i32 %99, 1
  %101 = add i32 %96, 1
  %102 = ptrtoint ptr %93 to i32
  %103 = sub i32 %102, %85
  %104 = ashr exact i32 %103, 5
  %105 = add i32 %104, %86
  %106 = icmp ult i32 %105, %97
  br i1 %106, label %113, label %107

107:                                              ; preds = %92
  %108 = and i32 %105, -2048
  %109 = load ptr, ptr %11, align 4
  %110 = getelementptr inbounds %struct.zone, ptr %109, i32 0, i32 10
  %111 = load i32, ptr %110, align 4
  %112 = call i32 @llvm.umax.i32(i32 %108, i32 %111) #13
  br label %113

113:                                              ; preds = %107, %92
  %114 = phi i32 [ %112, %107 ], [ %97, %92 ]
  %115 = icmp ult i32 %105, %49
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  store i16 0, ptr %13, align 4
  %117 = trunc i32 %68 to i16
  store i16 %117, ptr %51, align 2
  br label %126

118:                                              ; preds = %113
  %119 = icmp uge i32 %105, %40
  %120 = icmp ugt i32 %105, %98
  %121 = select i1 %119, i1 %120, i1 false
  %122 = select i1 %121, i32 %105, i32 %98
  %123 = zext i1 %121 to i32
  %124 = lshr i32 %95, %123
  %125 = icmp ult i32 %100, %124
  br i1 %125, label %87, label %126

126:                                              ; preds = %118, %116, %87, %82
  %127 = phi i32 [ %86, %116 ], [ %83, %82 ], [ %86, %87 ], [ %86, %118 ]
  %128 = phi ptr [ %93, %116 ], [ %79, %82 ], [ %93, %118 ], [ %90, %87 ]
  %129 = phi i32 [ %100, %116 ], [ 0, %82 ], [ %100, %87 ], [ %100, %118 ]
  %130 = phi i32 [ %98, %116 ], [ 0, %82 ], [ %122, %87 ], [ %122, %118 ]
  %131 = phi ptr [ %93, %116 ], [ null, %82 ], [ null, %87 ], [ null, %118 ]
  %132 = phi i32 [ %114, %116 ], [ %66, %82 ], [ %114, %87 ], [ %114, %118 ]
  %133 = phi i32 [ %101, %116 ], [ %65, %82 ], [ %101, %87 ], [ %101, %118 ]
  %134 = phi i32 [ %95, %116 ], [ %64, %82 ], [ %124, %87 ], [ %124, %118 ]
  %135 = icmp eq ptr %131, null
  %136 = icmp ne i32 %130, 0
  %137 = select i1 %135, i1 %136, i1 false
  %138 = sub i32 %130, %127
  %139 = getelementptr %struct.page, ptr %81, i32 %138
  %140 = select i1 %137, ptr %139, ptr %128
  %141 = select i1 %137, ptr %139, ptr %131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %142 = getelementptr inbounds %struct.page, ptr %140, i32 0, i32 1
  %143 = load ptr, ptr %76, align 4
  %144 = icmp eq ptr %143, %142
  br i1 %144, label %155, label %145

145:                                              ; preds = %126
  store ptr %143, ptr %5, align 8
  %146 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  store ptr %5, ptr %146, align 4
  %147 = getelementptr inbounds %struct.page, ptr %140, i32 0, i32 1, i32 0, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  store ptr %148, ptr %60, align 4
  store ptr %5, ptr %148, align 4
  store ptr %142, ptr %76, align 4
  store ptr %76, ptr %147, align 4
  %149 = load volatile ptr, ptr %5, align 8
  %150 = icmp eq ptr %149, %5
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %77, align 4
  %153 = load ptr, ptr %60, align 4
  %154 = getelementptr inbounds %struct.list_head, ptr %149, i32 0, i32 1
  store ptr %152, ptr %154, align 4
  store ptr %149, ptr %152, align 4
  store ptr %76, ptr %153, align 4
  store ptr %153, ptr %77, align 4
  br label %155

155:                                              ; preds = %151, %145, %126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %156 = icmp eq ptr %141, null
  br i1 %156, label %180, label %157

157:                                              ; preds = %155
  %158 = call i32 @__isolate_free_page(ptr noundef nonnull %141, i32 noundef %68) #13
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %176, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.page, ptr %141, i32 0, i32 1, i32 0, i32 3
  store i32 %68, ptr %161, align 4
  %162 = shl nuw i32 1, %68
  %163 = load i32, ptr %61, align 4
  %164 = add i32 %163, %162
  store i32 %164, ptr %61, align 4
  %165 = getelementptr inbounds %struct.page, ptr %141, i32 0, i32 1
  %166 = load ptr, ptr %62, align 4
  store ptr %165, ptr %62, align 4
  store ptr %7, ptr %165, align 4
  %167 = getelementptr inbounds %struct.page, ptr %141, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %166, ptr %167, align 4
  store volatile ptr %165, ptr %166, align 4
  %168 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !16
  %169 = call i32 @llvm.read_register.i32(metadata !0) #13
  %170 = inttoptr i32 %169 to ptr
  %171 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %170) #8, !srcloc !12
  %172 = add i32 %171, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 53) to i32)
  %173 = inttoptr i32 %172 to ptr
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %174, %162
  store i32 %175, ptr %173, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %168) #13, !srcloc !17
  br label %180

176:                                              ; preds = %157
  %177 = load i16, ptr %51, align 2
  %178 = sext i16 %177 to i32
  %179 = add nsw i32 %178, 1
  br label %180

180:                                              ; preds = %176, %160, %155
  %181 = phi i32 [ %68, %160 ], [ %179, %176 ], [ %68, %155 ]
  %182 = phi ptr [ %141, %160 ], [ null, %176 ], [ null, %155 ]
  %183 = phi i32 [ %162, %160 ], [ %67, %176 ], [ %67, %155 ]
  %184 = load ptr, ptr %11, align 4
  %185 = getelementptr inbounds %struct.zone, ptr %184, i32 0, i32 22
  call void @_raw_spin_unlock_irqrestore(ptr noundef %185, i32 noundef %75) #13
  %186 = icmp ult i32 %129, %134
  %187 = lshr i32 %134, 1
  %188 = icmp ugt i32 %134, 1
  %189 = select i1 %188, i32 %187, i32 1
  %190 = select i1 %186, i32 %134, i32 %189
  br label %191

191:                                              ; preds = %180, %63
  %192 = phi i32 [ %181, %180 ], [ %68, %63 ]
  %193 = phi ptr [ %182, %180 ], [ null, %63 ]
  %194 = phi i32 [ %183, %180 ], [ %67, %63 ]
  %195 = phi i32 [ %132, %180 ], [ %66, %63 ]
  %196 = phi i32 [ %133, %180 ], [ %65, %63 ]
  %197 = phi i32 [ %190, %180 ], [ %64, %63 ]
  %198 = add i32 %192, -1
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %191
  %201 = load i32, ptr %14, align 4
  %202 = add i32 %201, -1
  br label %203

203:                                              ; preds = %200, %191
  %204 = phi i32 [ %202, %200 ], [ %198, %191 ]
  %205 = load i16, ptr %51, align 2
  %206 = sext i16 %205 to i32
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = add i16 %205, -1
  store i16 %209, ptr %51, align 2
  %210 = icmp slt i16 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i32, ptr %14, align 4
  %213 = trunc i32 %212 to i16
  %214 = add i16 %213, -1
  store i16 %214, ptr %51, align 2
  br label %215

215:                                              ; preds = %211, %208
  %216 = icmp eq ptr %193, null
  br i1 %216, label %222, label %265

217:                                              ; preds = %203
  %218 = icmp eq ptr %193, null
  %219 = icmp sgt i32 %204, -1
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %63, label %221

221:                                              ; preds = %217
  br i1 %218, label %222, label %265

222:                                              ; preds = %221, %215
  %223 = load i16, ptr %13, align 4
  %224 = add i16 %223, 1
  store i16 %224, ptr %13, align 4
  br i1 %30, label %265, label %228

225:                                              ; preds = %47
  %226 = load i16, ptr %13, align 4
  %227 = add i16 %226, 1
  store i16 %227, ptr %13, align 4
  br i1 %30, label %356, label %235

228:                                              ; preds = %222
  %229 = icmp eq i32 %195, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %228
  %231 = load ptr, ptr @mem_map, align 4
  %232 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %233 = sub i32 %195, %232
  %234 = getelementptr %struct.page, ptr %231, i32 %233
  store i32 %195, ptr %26, align 4
  br label %267

235:                                              ; preds = %228, %225
  %236 = phi i32 [ %196, %228 ], [ 0, %225 ]
  %237 = phi i32 [ %194, %228 ], [ 0, %225 ]
  %238 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 21
  %239 = load i8, ptr %238, align 1, !range !15
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %275, label %241

241:                                              ; preds = %235
  %242 = call i32 @pfn_valid(i32 noundef %40) #13
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %275, label %244

244:                                              ; preds = %241
  %245 = load ptr, ptr %11, align 4
  %246 = getelementptr inbounds %struct.zone, ptr %245, i32 0, i32 34
  %247 = load i8, ptr %246, align 1, !range !15
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load ptr, ptr @mem_map, align 4
  %251 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %252 = sub i32 %40, %251
  %253 = getelementptr %struct.page, ptr %250, i32 %252
  br label %263

254:                                              ; preds = %244
  %255 = add i32 %40, 2048
  %256 = getelementptr inbounds %struct.zone, ptr %245, i32 0, i32 12
  %257 = load i32, ptr %256, align 4
  %258 = getelementptr inbounds %struct.zone, ptr %245, i32 0, i32 10
  %259 = load i32, ptr %258, align 4
  %260 = add i32 %259, %257
  %261 = call i32 @llvm.umin.i32(i32 %255, i32 %260) #13
  %262 = call ptr @__pageblock_pfn_to_page(i32 noundef %40, i32 noundef %261, ptr noundef %245) #13
  br label %263

263:                                              ; preds = %254, %249
  %264 = phi ptr [ %253, %249 ], [ %262, %254 ]
  store i32 %40, ptr %26, align 4
  br label %279

265:                                              ; preds = %222, %221, %215
  %266 = icmp eq i32 %195, 0
  br i1 %266, label %279, label %267

267:                                              ; preds = %265, %230
  %268 = phi ptr [ %234, %230 ], [ %193, %265 ]
  %269 = load ptr, ptr %11, align 4
  %270 = getelementptr inbounds %struct.zone, ptr %269, i32 0, i32 26
  %271 = load i32, ptr %270, align 4
  %272 = icmp ult i32 %195, %271
  br i1 %272, label %279, label %273

273:                                              ; preds = %267
  %274 = add i32 %195, -2048
  store i32 %274, ptr %270, align 4
  br label %279

275:                                              ; preds = %241, %235
  %276 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 9
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, %236
  store i32 %278, ptr %276, align 4
  br label %356

279:                                              ; preds = %273, %267, %265, %263
  %280 = phi i32 [ %196, %273 ], [ %196, %267 ], [ %196, %265 ], [ %236, %263 ]
  %281 = phi i32 [ %194, %273 ], [ %194, %267 ], [ %194, %265 ], [ %237, %263 ]
  %282 = phi ptr [ %268, %273 ], [ %268, %267 ], [ %193, %265 ], [ %264, %263 ]
  %283 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 9
  %284 = load i32, ptr %283, align 4
  %285 = add i32 %284, %280
  store i32 %285, ptr %283, align 4
  %286 = icmp eq ptr %282, null
  br i1 %286, label %356, label %287

287:                                              ; preds = %279
  %288 = load ptr, ptr @mem_map, align 4
  %289 = ptrtoint ptr %282 to i32
  %290 = ptrtoint ptr %288 to i32
  %291 = sub i32 %289, %290
  %292 = ashr exact i32 %291, 5
  %293 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %294 = add i32 %292, %293
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %295 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 2
  %296 = load i32, ptr %295, align 4
  %297 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 3
  %298 = load i32, ptr %297, align 4
  %299 = icmp ult i32 %296, %298
  br i1 %299, label %300, label %355

300:                                              ; preds = %287
  %301 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 21
  %302 = load i8, ptr %301, align 1, !range !15
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 17
  %306 = load i32, ptr %305, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %355, label %308

308:                                              ; preds = %304, %300
  %309 = and i32 %294, -2048
  %310 = load ptr, ptr %11, align 4
  %311 = getelementptr inbounds %struct.zone, ptr %310, i32 0, i32 10
  %312 = load i32, ptr %311, align 4
  %313 = call i32 @llvm.umax.i32(i32 %309, i32 %312) #13
  store i32 %313, ptr %4, align 4
  %314 = add i32 %294, 2048
  %315 = and i32 %314, -2048
  %316 = getelementptr inbounds %struct.zone, ptr %310, i32 0, i32 12
  %317 = load i32, ptr %316, align 4
  %318 = add i32 %317, %312
  %319 = call i32 @llvm.umin.i32(i32 %315, i32 %318) #13
  %320 = getelementptr inbounds %struct.zone, ptr %310, i32 0, i32 34
  %321 = load i8, ptr %320, align 1, !range !15
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %308
  %324 = sub i32 %313, %293
  %325 = getelementptr %struct.page, ptr %288, i32 %324
  br label %328

326:                                              ; preds = %308
  %327 = call ptr @__pageblock_pfn_to_page(i32 noundef %313, i32 noundef %319, ptr noundef %310) #13
  br label %328

328:                                              ; preds = %326, %323
  %329 = phi ptr [ %325, %323 ], [ %327, %326 ]
  %330 = icmp eq ptr %329, null
  br i1 %330, label %355, label %331

331:                                              ; preds = %328
  %332 = icmp eq i32 %313, %294
  br i1 %332, label %338, label %333

333:                                              ; preds = %331
  %334 = call fastcc i32 @isolate_freepages_block(ptr noundef %7, ptr noundef nonnull %4, i32 noundef %294, ptr noundef %7, i32 noundef 1, i1 noundef zeroext false) #13
  %335 = load i32, ptr %295, align 4
  %336 = load i32, ptr %297, align 4
  %337 = icmp ult i32 %335, %336
  br i1 %337, label %338, label %355

338:                                              ; preds = %333, %331
  %339 = add i32 %294, %281
  store i32 %339, ptr %4, align 4
  %340 = icmp ult i32 %339, %319
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = call fastcc i32 @isolate_freepages_block(ptr noundef %7, ptr noundef nonnull %4, i32 noundef %319, ptr noundef %7, i32 noundef 1, i1 noundef zeroext false) #13
  br label %343

343:                                              ; preds = %341, %338
  %344 = load i32, ptr %295, align 4
  %345 = load i32, ptr %297, align 4
  %346 = icmp ult i32 %344, %345
  br i1 %346, label %347, label %355

347:                                              ; preds = %343
  %348 = load ptr, ptr @mem_map, align 4
  %349 = ptrtoint ptr %329 to i32
  %350 = ptrtoint ptr %348 to i32
  %351 = sub i32 %349, %350
  %352 = ashr exact i32 %351, 5
  %353 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %354 = add i32 %352, %353
  call void @set_pfnblock_flags_mask(ptr noundef nonnull %329, i32 noundef 8, i32 noundef %354, i32 noundef 8) #13
  br label %355

355:                                              ; preds = %347, %343, %333, %328, %304, %287
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %356

356:                                              ; preds = %355, %279, %275, %225, %10
  %357 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 2
  %358 = load i32, ptr %357, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %481

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 4
  %362 = load i32, ptr %361, align 4
  store i32 %362, ptr %6, align 4
  %363 = and i32 %362, -2048
  %364 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 5
  %365 = load i32, ptr %364, align 4
  %366 = add i32 %365, 2048
  %367 = and i32 %366, -2048
  %368 = icmp ult i32 %363, %367
  br i1 %368, label %479, label %369

369:                                              ; preds = %360
  %370 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 17
  %371 = load i32, ptr %370, align 4
  %372 = icmp eq i32 %371, 0
  %373 = select i1 %372, i32 32, i32 1
  %374 = add i32 %363, 2048
  %375 = getelementptr inbounds %struct.zone, ptr %12, i32 0, i32 12
  %376 = load i32, ptr %375, align 4
  %377 = getelementptr inbounds %struct.zone, ptr %12, i32 0, i32 10
  %378 = load i32, ptr %377, align 4
  %379 = add i32 %378, %376
  %380 = call i32 @llvm.umin.i32(i32 %374, i32 %379) #13
  %381 = getelementptr inbounds %struct.zone, ptr %12, i32 0, i32 34
  %382 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 20
  %383 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 18
  %384 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 19
  %385 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 3
  br label %386

386:                                              ; preds = %475, %369
  %387 = phi i32 [ %363, %369 ], [ %477, %475 ]
  %388 = phi i32 [ %380, %369 ], [ %387, %475 ]
  %389 = phi i32 [ %373, %369 ], [ %476, %475 ]
  %390 = and i32 %387, 63488
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %386
  %393 = call i32 @__cond_resched() #13
  br label %394

394:                                              ; preds = %392, %386
  %395 = load i8, ptr %381, align 1, !range !15
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %402, label %397

397:                                              ; preds = %394
  %398 = load ptr, ptr @mem_map, align 4
  %399 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %400 = sub i32 %387, %399
  %401 = getelementptr %struct.page, ptr %398, i32 %400
  br label %404

402:                                              ; preds = %394
  %403 = call ptr @__pageblock_pfn_to_page(i32 noundef %387, i32 noundef %388, ptr noundef %12) #13
  br label %404

404:                                              ; preds = %402, %397
  %405 = phi ptr [ %401, %397 ], [ %403, %402 ]
  %406 = icmp eq ptr %405, null
  br i1 %406, label %475, label %407

407:                                              ; preds = %404
  %408 = getelementptr inbounds %struct.page, ptr %405, i32 0, i32 2
  %409 = load i32, ptr %408, align 4
  %410 = and i32 %409, -268435328
  %411 = icmp eq i32 %410, -268435456
  br i1 %411, label %412, label %416

412:                                              ; preds = %407
  %413 = getelementptr inbounds %struct.page, ptr %405, i32 0, i32 1, i32 0, i32 3
  %414 = load volatile i32, ptr %413, align 4
  %415 = icmp ugt i32 %414, 10
  br i1 %415, label %475, label %416

416:                                              ; preds = %412, %407
  %417 = load i8, ptr %382, align 2, !range !15
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %419, label %428

419:                                              ; preds = %416
  %420 = load ptr, ptr @mem_map, align 4
  %421 = ptrtoint ptr %405 to i32
  %422 = ptrtoint ptr %420 to i32
  %423 = sub i32 %421, %422
  %424 = ashr exact i32 %423, 5
  %425 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %426 = add i32 %424, %425
  %427 = call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %405, i32 noundef %426, i32 noundef 7) #13
  switch i32 %427, label %475 [
    i32 4, label %428
    i32 1, label %428
  ]

428:                                              ; preds = %419, %419, %416
  %429 = load i8, ptr %383, align 4, !range !15
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %431, label %441

431:                                              ; preds = %428
  %432 = load ptr, ptr @mem_map, align 4
  %433 = ptrtoint ptr %405 to i32
  %434 = ptrtoint ptr %432 to i32
  %435 = sub i32 %433, %434
  %436 = ashr exact i32 %435, 5
  %437 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %438 = add i32 %436, %437
  %439 = call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %405, i32 noundef %438, i32 noundef 8) #13
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %475

441:                                              ; preds = %431, %428
  %442 = call fastcc i32 @isolate_freepages_block(ptr noundef %7, ptr noundef nonnull %6, i32 noundef %388, ptr noundef %7, i32 noundef %389, i1 noundef zeroext false) #13
  %443 = load i32, ptr %6, align 4
  %444 = icmp eq i32 %443, %388
  br i1 %444, label %445, label %461

445:                                              ; preds = %441
  %446 = load i8, ptr %384, align 1, !range !15
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %448, label %461

448:                                              ; preds = %445
  %449 = load ptr, ptr %11, align 4
  %450 = load ptr, ptr @mem_map, align 4
  %451 = ptrtoint ptr %405 to i32
  %452 = ptrtoint ptr %450 to i32
  %453 = sub i32 %451, %452
  %454 = ashr exact i32 %453, 5
  %455 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %456 = add i32 %454, %455
  call void @set_pfnblock_flags_mask(ptr noundef nonnull %405, i32 noundef 8, i32 noundef %456, i32 noundef 8) #13
  %457 = getelementptr inbounds %struct.zone, ptr %449, i32 0, i32 26
  %458 = load i32, ptr %457, align 4
  %459 = icmp ugt i32 %458, %387
  br i1 %459, label %460, label %461

460:                                              ; preds = %448
  store i32 %387, ptr %457, align 4
  br label %461

461:                                              ; preds = %460, %448, %445, %441
  %462 = load i32, ptr %357, align 4
  %463 = load i32, ptr %385, align 4
  %464 = icmp ult i32 %462, %463
  %465 = icmp ult i32 %443, %388
  br i1 %464, label %469, label %466

466:                                              ; preds = %461
  br i1 %465, label %479, label %467

467:                                              ; preds = %466
  %468 = add i32 %387, -2048
  store i32 %468, ptr %6, align 4
  br label %479

469:                                              ; preds = %461
  br i1 %465, label %479, label %470

470:                                              ; preds = %469
  %471 = icmp eq i32 %442, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %470
  %473 = shl i32 %389, 1
  %474 = call i32 @llvm.umin.i32(i32 %473, i32 32) #13
  br label %475

475:                                              ; preds = %472, %470, %431, %419, %412, %404
  %476 = phi i32 [ 1, %470 ], [ %389, %431 ], [ %389, %419 ], [ %389, %404 ], [ %474, %472 ], [ %389, %412 ]
  %477 = add i32 %387, -2048
  store i32 %477, ptr %6, align 4
  %478 = icmp ult i32 %477, %367
  br i1 %478, label %479, label %386

479:                                              ; preds = %475, %469, %467, %466, %360
  %480 = phi i32 [ %362, %360 ], [ %468, %467 ], [ %443, %466 ], [ %443, %469 ], [ %477, %475 ]
  store i32 %480, ptr %361, align 4
  br label %481

481:                                              ; preds = %479, %356
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  %482 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %482, align 4
  %483 = load ptr, ptr %7, align 4
  %484 = icmp eq ptr %483, %7
  br i1 %484, label %511, label %487

485:                                              ; preds = %500
  %486 = icmp eq ptr %490, %7
  br i1 %486, label %511, label %487

487:                                              ; preds = %485, %481
  %488 = phi ptr [ %490, %485 ], [ %483, %481 ]
  %489 = getelementptr i8, ptr %488, i32 -4
  %490 = load ptr, ptr %488, align 4
  %491 = getelementptr inbounds %struct.list_head, ptr %488, i32 0, i32 1
  %492 = load ptr, ptr %491, align 4
  %493 = getelementptr inbounds %struct.list_head, ptr %490, i32 0, i32 1
  store ptr %492, ptr %493, align 4
  store volatile ptr %490, ptr %492, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %488, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %491, align 4
  %494 = getelementptr i8, ptr %488, i32 16
  %495 = load i32, ptr %494, align 4
  call void @post_alloc_hook(ptr noundef %489, i32 noundef %495, i32 noundef 8) #13
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %498, label %497

497:                                              ; preds = %487
  call void @split_page(ptr noundef %489, i32 noundef %495) #13
  br label %498

498:                                              ; preds = %497, %487
  %499 = load ptr, ptr %3, align 8
  br label %500

500:                                              ; preds = %500, %498
  %501 = phi ptr [ %499, %498 ], [ %504, %500 ]
  %502 = phi i32 [ 0, %498 ], [ %508, %500 ]
  %503 = phi ptr [ %489, %498 ], [ %507, %500 ]
  %504 = getelementptr inbounds %struct.page, ptr %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.list_head, ptr %501, i32 0, i32 1
  store ptr %504, ptr %505, align 4
  store ptr %501, ptr %504, align 4
  %506 = getelementptr inbounds %struct.page, ptr %503, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %3, ptr %506, align 4
  store volatile ptr %504, ptr %3, align 8
  %507 = getelementptr %struct.page, ptr %503, i32 1
  %508 = add i32 %502, 1
  %509 = lshr i32 %508, %495
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %500, label %485

511:                                              ; preds = %485, %481
  %512 = load volatile ptr, ptr %3, align 8
  %513 = icmp eq ptr %512, %3
  br i1 %513, label %519, label %514

514:                                              ; preds = %511
  %515 = load ptr, ptr %7, align 4
  %516 = load ptr, ptr %482, align 4
  %517 = getelementptr inbounds %struct.list_head, ptr %512, i32 0, i32 1
  store ptr %7, ptr %517, align 4
  store ptr %512, ptr %7, align 4
  store ptr %515, ptr %516, align 4
  %518 = getelementptr inbounds %struct.list_head, ptr %515, i32 0, i32 1
  store ptr %516, ptr %518, align 4
  br label %519

519:                                              ; preds = %514, %511
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %520 = load volatile ptr, ptr %7, align 4
  %521 = icmp eq ptr %520, %7
  br i1 %521, label %532, label %522

522:                                              ; preds = %519, %2
  %523 = phi ptr [ %520, %519 ], [ %8, %2 ]
  %524 = getelementptr i8, ptr %523, i32 -4
  %525 = getelementptr inbounds %struct.list_head, ptr %523, i32 0, i32 1
  %526 = load ptr, ptr %525, align 4
  %527 = load ptr, ptr %523, align 4
  %528 = getelementptr inbounds %struct.list_head, ptr %527, i32 0, i32 1
  store ptr %526, ptr %528, align 4
  store volatile ptr %527, ptr %526, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %523, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %525, align 4
  %529 = getelementptr inbounds %struct.compact_control, ptr %7, i32 0, i32 2
  %530 = load i32, ptr %529, align 4
  %531 = add i32 %530, -1
  store i32 %531, ptr %529, align 4
  br label %532

532:                                              ; preds = %522, %519
  %533 = phi ptr [ %524, %522 ], [ null, %519 ]
  ret ptr %533
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @compaction_free(ptr noundef %0, i32 noundef %1) #11 {
  %3 = inttoptr i32 %1 to ptr
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store ptr %5, ptr %4, align 4
  %7 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %3, ptr %7, align 4
  store volatile ptr %4, ptr %3, align 4
  %8 = getelementptr inbounds %struct.compact_control, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_cpu_zone(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_suitable_fallback(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extfrag_for_order(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_all_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kcompactd_cpu_online(i32 noundef %0) #0 {
  %2 = load i32, ptr @__cpu_online_mask, align 4
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #13, !range !54
  %6 = select i1 %4, i32 16, i32 %5
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 20), align 4
  %11 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %10, ptr noundef nonnull @__cpu_online_mask) #13
  br label %12

12:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly willreturn }
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
!12 = !{i64 704615}
!13 = !{i64 2153874369}
!14 = !{i64 2153874553}
!15 = !{i8 0, i8 2}
!16 = !{i64 697510, i64 697571}
!17 = !{i64 700527}
!18 = !{i64 2153703604}
!19 = !{i64 2153703858}
!20 = !{i64 2148233098}
!21 = !{i64 668763, i64 2148170329, i64 2148170355, i64 2148170402, i64 2148170424, i64 2148170452, i64 2148170472}
!22 = !{i64 655332, i64 655357, i64 655379, i64 655395, i64 655407, i64 655427, i64 655451, i64 655467, i64 655479}
!23 = !{i64 2148233224}
!24 = !{i64 2148334270}
!25 = !{i64 2148236632, i64 2148236664, i64 2148236693, i64 2148236727, i64 2148236758, i64 2148236781}
!26 = !{i64 2148334473}
!27 = !{i64 2153684231}
!28 = !{i64 2153684491}
!29 = !{i64 2153819268}
!30 = !{i64 2153819456}
!31 = !{i64 2153780521}
!32 = !{i64 2153780743}
!33 = !{i64 2153836042}
!34 = !{i64 2153836220}
!35 = !{i64 2155513531}
!36 = !{i64 2153853054}
!37 = !{i64 2153853248}
!38 = !{i64 2149360679}
!39 = !{i64 2153908875}
!40 = !{i64 2153909101}
!41 = !{i64 2153891139}
!42 = !{i64 2153891315}
!43 = !{i64 2153555573}
!44 = !{i64 2153930928}
!45 = !{i64 2153931150}
!46 = !{i64 2153744205}
!47 = !{i64 2153744453}
!48 = !{i64 2153802267}
!49 = !{i64 2153802455}
!50 = !{i64 2153721703}
!51 = !{i64 2153721907}
!52 = !{i64 2153762819}
!53 = !{i64 2153763079}
!54 = !{i32 0, i32 33}
