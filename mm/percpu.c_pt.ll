; ModuleID = '/llk/IR/mm/percpu.c_pt.bc'
source_filename = "../mm/percpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_percpu_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_percpu_gfp\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_percpu_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_percpu\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22free_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___per_cpu_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22__per_cpu_offset\22\09\09\09\09\09"
module asm "__kstrtabns___per_cpu_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_percpu_alloc_percpu = type { %struct.trace_entry, i8, i8, i32, i32, ptr, i32, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_percpu_free_percpu = type { %struct.trace_entry, ptr, i32, ptr, [0 x i8] }
%struct.trace_event_raw_percpu_alloc_percpu_fail = type { %struct.trace_entry, i8, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_percpu_create_chunk = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_percpu_destroy_chunk = type { %struct.trace_entry, ptr, [0 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pcpu_chunk = type { %struct.list_head, i32, %struct.pcpu_block_md, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, [0 x i32] }
%struct.pcpu_block_md = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.67, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.pcpu_alloc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.pcpu_group_info] }
%struct.pcpu_group_info = type { i32, i32, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }

@__tpstrtab_percpu_alloc_percpu = internal constant [20 x i8] c"percpu_alloc_percpu\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_alloc_percpu = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_alloc_percpu }, align 4
@__tracepoint_percpu_alloc_percpu = dso_local global %struct.tracepoint { ptr @__tpstrtab_percpu_alloc_percpu, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_percpu_alloc_percpu, ptr null, ptr @__traceiter_percpu_alloc_percpu, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_alloc_percpu = internal constant ptr @__tracepoint_percpu_alloc_percpu, section "__tracepoints_ptrs", align 4
@__tpstrtab_percpu_free_percpu = internal constant [19 x i8] c"percpu_free_percpu\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_free_percpu = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_free_percpu }, align 4
@__tracepoint_percpu_free_percpu = dso_local global %struct.tracepoint { ptr @__tpstrtab_percpu_free_percpu, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_percpu_free_percpu, ptr null, ptr @__traceiter_percpu_free_percpu, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_free_percpu = internal constant ptr @__tracepoint_percpu_free_percpu, section "__tracepoints_ptrs", align 4
@__tpstrtab_percpu_alloc_percpu_fail = internal constant [25 x i8] c"percpu_alloc_percpu_fail\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_alloc_percpu_fail = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_alloc_percpu_fail }, align 4
@__tracepoint_percpu_alloc_percpu_fail = dso_local global %struct.tracepoint { ptr @__tpstrtab_percpu_alloc_percpu_fail, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_percpu_alloc_percpu_fail, ptr null, ptr @__traceiter_percpu_alloc_percpu_fail, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_alloc_percpu_fail = internal constant ptr @__tracepoint_percpu_alloc_percpu_fail, section "__tracepoints_ptrs", align 4
@__tpstrtab_percpu_create_chunk = internal constant [20 x i8] c"percpu_create_chunk\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_create_chunk = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_create_chunk }, align 4
@__tracepoint_percpu_create_chunk = dso_local global %struct.tracepoint { ptr @__tpstrtab_percpu_create_chunk, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_percpu_create_chunk, ptr null, ptr @__traceiter_percpu_create_chunk, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_create_chunk = internal constant ptr @__tracepoint_percpu_create_chunk, section "__tracepoints_ptrs", align 4
@__tpstrtab_percpu_destroy_chunk = internal constant [21 x i8] c"percpu_destroy_chunk\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_destroy_chunk = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_destroy_chunk }, align 4
@__tracepoint_percpu_destroy_chunk = dso_local global %struct.tracepoint { ptr @__tpstrtab_percpu_destroy_chunk, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_percpu_destroy_chunk, ptr null, ptr @__traceiter_percpu_destroy_chunk, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_destroy_chunk = internal constant ptr @__tracepoint_percpu_destroy_chunk, section "__tracepoints_ptrs", align 4
@str__percpu__trace_system_name = internal constant [7 x i8] c"percpu\00", align 1
@trace_event_fields_percpu_alloc_percpu = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.28, %union.anon { %struct.anon { ptr @.str.29, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon { %struct.anon { ptr @.str.30, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon { %struct.anon { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon { %struct.anon { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_percpu_alloc_percpu = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_alloc_percpu, ptr @perf_trace_percpu_alloc_percpu, ptr @trace_event_reg, ptr @trace_event_fields_percpu_alloc_percpu, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_alloc_percpu, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_alloc_percpu, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_alloc_percpu = internal global %struct.trace_event_functions { ptr @trace_raw_output_percpu_alloc_percpu, ptr null, ptr null, ptr null }, align 4
@print_fmt_percpu_alloc_percpu = internal global [163 x i8] c"\22reserved=%d is_atomic=%d size=%zu align=%zu base_addr=%p off=%d ptr=%p\22, REC->reserved, REC->is_atomic, REC->size, REC->align, REC->base_addr, REC->off, REC->ptr\00", align 1
@event_percpu_alloc_percpu = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_alloc_percpu, %union.anon.0 { ptr @__tracepoint_percpu_alloc_percpu }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_alloc_percpu }, ptr @print_fmt_percpu_alloc_percpu, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_percpu_alloc_percpu = internal global ptr @event_percpu_alloc_percpu, section "_ftrace_events", align 4
@trace_event_fields_percpu_free_percpu = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon { %struct.anon { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_percpu_free_percpu = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_free_percpu, ptr @perf_trace_percpu_free_percpu, ptr @trace_event_reg, ptr @trace_event_fields_percpu_free_percpu, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_free_percpu, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_free_percpu, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_free_percpu = internal global %struct.trace_event_functions { ptr @trace_raw_output_percpu_free_percpu, ptr null, ptr null, ptr null }, align 4
@print_fmt_percpu_free_percpu = internal global [65 x i8] c"\22base_addr=%p off=%d ptr=%p\22, REC->base_addr, REC->off, REC->ptr\00", align 1
@event_percpu_free_percpu = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_free_percpu, %union.anon.0 { ptr @__tracepoint_percpu_free_percpu }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_free_percpu }, ptr @print_fmt_percpu_free_percpu, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_percpu_free_percpu = internal global ptr @event_percpu_free_percpu, section "_ftrace_events", align 4
@trace_event_fields_percpu_alloc_percpu_fail = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.28, %union.anon { %struct.anon { ptr @.str.29, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon { %struct.anon { ptr @.str.30, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon { %struct.anon { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_percpu_alloc_percpu_fail = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_alloc_percpu_fail, ptr @perf_trace_percpu_alloc_percpu_fail, ptr @trace_event_reg, ptr @trace_event_fields_percpu_alloc_percpu_fail, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_alloc_percpu_fail, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_alloc_percpu_fail, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_alloc_percpu_fail = internal global %struct.trace_event_functions { ptr @trace_raw_output_percpu_alloc_percpu_fail, ptr null, ptr null, ptr null }, align 4
@print_fmt_percpu_alloc_percpu_fail = internal global [100 x i8] c"\22reserved=%d is_atomic=%d size=%zu align=%zu\22, REC->reserved, REC->is_atomic, REC->size, REC->align\00", align 1
@event_percpu_alloc_percpu_fail = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_alloc_percpu_fail, %union.anon.0 { ptr @__tracepoint_percpu_alloc_percpu_fail }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_alloc_percpu_fail }, ptr @print_fmt_percpu_alloc_percpu_fail, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_percpu_alloc_percpu_fail = internal global ptr @event_percpu_alloc_percpu_fail, section "_ftrace_events", align 4
@trace_event_fields_percpu_create_chunk = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_percpu_create_chunk = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_create_chunk, ptr @perf_trace_percpu_create_chunk, ptr @trace_event_reg, ptr @trace_event_fields_percpu_create_chunk, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_create_chunk, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_create_chunk, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_create_chunk = internal global %struct.trace_event_functions { ptr @trace_raw_output_percpu_create_chunk, ptr null, ptr null, ptr null }, align 4
@print_fmt_percpu_create_chunk = internal global [31 x i8] c"\22base_addr=%p\22, REC->base_addr\00", align 1
@event_percpu_create_chunk = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_create_chunk, %union.anon.0 { ptr @__tracepoint_percpu_create_chunk }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_create_chunk }, ptr @print_fmt_percpu_create_chunk, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_percpu_create_chunk = internal global ptr @event_percpu_create_chunk, section "_ftrace_events", align 4
@trace_event_fields_percpu_destroy_chunk = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_percpu_destroy_chunk = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_destroy_chunk, ptr @perf_trace_percpu_destroy_chunk, ptr @trace_event_reg, ptr @trace_event_fields_percpu_destroy_chunk, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_destroy_chunk, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_destroy_chunk, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_destroy_chunk = internal global %struct.trace_event_functions { ptr @trace_raw_output_percpu_destroy_chunk, ptr null, ptr null, ptr null }, align 4
@print_fmt_percpu_destroy_chunk = internal global [31 x i8] c"\22base_addr=%p\22, REC->base_addr\00", align 1
@event_percpu_destroy_chunk = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_destroy_chunk, %union.anon.0 { ptr @__tracepoint_percpu_destroy_chunk }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_destroy_chunk }, ptr @print_fmt_percpu_destroy_chunk, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_percpu_destroy_chunk = internal global ptr @event_percpu_destroy_chunk, section "_ftrace_events", align 4
@pcpu_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@__kstrtab___alloc_percpu_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_percpu_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_percpu_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_percpu_gfp to i32), ptr @__kstrtab___alloc_percpu_gfp, ptr @__kstrtabns___alloc_percpu_gfp }, section "___ksymtab_gpl+__alloc_percpu_gfp", align 4
@__kstrtab___alloc_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_percpu to i32), ptr @__kstrtab___alloc_percpu, ptr @__kstrtabns___alloc_percpu }, section "___ksymtab_gpl+__alloc_percpu", align 4
@pcpu_base_addr = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@__per_cpu_start = external dso_local global [0 x i8], align 1
@pcpu_unit_size = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_chunk_lists = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_free_slot = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@__kstrtab_free_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_free_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_percpu to i32), ptr @__kstrtab_free_percpu, ptr @__kstrtabns_free_percpu }, section "___ksymtab_gpl+free_percpu", align 4
@__per_cpu_end = external dso_local global [0 x i8], align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = dso_local global [16 x i32] zeroinitializer, section ".data..read_mostly", align 4
@pcpu_low_unit_cpu = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_high_unit_cpu = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_unit_pages = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [36 x i8] c"\010percpu: failed to initialize, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ai->nr_groups <= 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\010percpu: cpu_possible_mask=%*pb\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\010\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"!ai->static_size\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"offset_in_page(__per_cpu_start)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"!base_addr\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"offset_in_page(base_addr)\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ai->unit_size < size_sum\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"offset_in_page(ai->unit_size)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"ai->unit_size < PCPU_MIN_UNIT_SIZE\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"ai->dyn_size < PERCPU_DYNAMIC_EARLY_SIZE\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"!IS_ALIGNED(ai->reserved_size, PCPU_MIN_ALLOC_SIZE)\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.pcpu_setup_first_chunk = private unnamed_addr constant [23 x i8] c"pcpu_setup_first_chunk\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"cpu >= nr_cpu_ids\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"!cpu_possible(cpu)\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"unit_map[cpu] != UINT_MAX\00", align 1
@pcpu_nr_units = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"unit_map[cpu] == UINT_MAX\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@pcpu_nr_groups = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_group_offsets = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_group_sizes = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_unit_map = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_unit_offsets = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_atom_size = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_chunk_struct_size = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_sidelined_slot = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_to_depopulate_slot = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_nr_slots = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_reserved_chunk = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_first_chunk = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_nr_empty_pop_pages = dso_local local_unnamed_addr global i32 0, align 4
@pcpu_nr_populated = internal unnamed_addr global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"embed\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@pcpu_fc_names = dso_local local_unnamed_addr constant [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], section ".init.rodata", align 4
@pcpu_chosen_fc = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@__setup_str_percpu_alloc_setup = internal constant [13 x i8] c"percpu_alloc\00", section ".init.rodata", align 1
@__setup_percpu_alloc_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_percpu_alloc_setup, ptr @percpu_alloc_setup, i32 1 }, section ".init.setup", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@.str.25 = private unnamed_addr constant [64 x i8] c"\014percpu: max_distance=0x%lx too large for vmalloc space 0x%lx\0A\00", align 1
@__per_cpu_load = external dso_local local_unnamed_addr global [0 x i8], align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"\016percpu: Embedded %zu pages/cpu s%zu r%zu d%zu u%zu\0A\00", align 1
@__kstrtab___per_cpu_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns___per_cpu_offset = external dso_local constant [0 x i8], align 1
@__ksymtab___per_cpu_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__per_cpu_offset to i32), ptr @__kstrtab___per_cpu_offset, ptr @__kstrtabns___per_cpu_offset }, section "___ksymtab+__per_cpu_offset", align 4
@.str.27 = private unnamed_addr constant [35 x i8] c"Failed to initialize percpu areas.\00", align 1
@__initcall__kmod_percpu__319_3460_percpu_enable_async4 = internal global ptr @percpu_enable_async, section ".initcall4.init", align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"is_atomic\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"base_addr\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.39 = private unnamed_addr constant [72 x i8] c"reserved=%d is_atomic=%d size=%zu align=%zu base_addr=%p off=%d ptr=%p\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"base_addr=%p off=%d ptr=%p\0A\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"reserved=%d is_atomic=%d size=%zu align=%zu\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"base_addr=%p\0A\00", align 1
@pcpu_alloc.warn_limit = internal unnamed_addr global i32 10, align 4
@.str.43 = private unnamed_addr constant [12 x i8] c"mm/percpu.c\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"illegal size (%zu) or align (%zu) for percpu allocation\0A\00", align 1
@pcpu_alloc_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pcpu_alloc_mutex, i64 12), ptr getelementptr (i8, ptr @pcpu_alloc_mutex, i64 12) } }, align 4
@.str.45 = private unnamed_addr constant [33 x i8] c"alloc from reserved chunk failed\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"atomic alloc failed, no space left\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"failed to allocate new chunk\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"failed to populate\00", align 1
@.str.49 = private unnamed_addr constant [63 x i8] c"\014percpu: allocation failed, size=%zu align=%zu atomic=%d, %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"\016percpu: limit reached, disable warning\0A\00", align 1
@pcpu_atomic_alloc_failed = internal unnamed_addr global i1 false, align 1
@pcpu_mem_zalloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pcpu_get_pages.pages = internal unnamed_addr global ptr null, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@pcpu_async_enabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@pcpu_balance_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @pcpu_balance_work, i64 4), ptr getelementptr (i8, ptr @pcpu_balance_work, i64 4) }, ptr @pcpu_balance_workfn }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.52 = private unnamed_addr constant [15 x i8] c"mm/percpu-vm.c\00", align 1
@__boot_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@__const.pcpu_dump_alloc_info.empty_str = private unnamed_addr constant [9 x i8] c"--------\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"%spcpu-alloc: s%zu r%zu d%zu u%zu alloc=%zu*%zu\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"%spcpu-alloc: \00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"\01c[%0*d] \00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"\01c%0*d \00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"\01c%s \00", align 1
@__func__.pcpu_alloc_first_chunk = private unnamed_addr constant [23 x i8] c"pcpu_alloc_first_chunk\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"\014percpu: unknown allocator %s specified\0A\00", align 1
@pcpu_build_alloc_info.group_map = internal unnamed_addr global [16 x i32] zeroinitializer, section ".init.data", align 4
@pcpu_build_alloc_info.group_cnt = internal unnamed_addr global [16 x i32] zeroinitializer, section ".init.data", align 4
@pcpu_build_alloc_info.mask = internal global %struct.cpumask zeroinitializer, section ".init.data", align 4
@arm_dma_zone_size = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [31 x ptr] [ptr @__event_percpu_alloc_percpu, ptr @__event_percpu_alloc_percpu_fail, ptr @__event_percpu_create_chunk, ptr @__event_percpu_destroy_chunk, ptr @__event_percpu_free_percpu, ptr @__initcall__kmod_percpu__319_3460_percpu_enable_async4, ptr @__ksymtab___alloc_percpu, ptr @__ksymtab___alloc_percpu_gfp, ptr @__ksymtab___per_cpu_offset, ptr @__ksymtab_free_percpu, ptr @__setup_percpu_alloc_setup, ptr @__tracepoint_percpu_alloc_percpu, ptr @__tracepoint_percpu_alloc_percpu_fail, ptr @__tracepoint_percpu_create_chunk, ptr @__tracepoint_percpu_destroy_chunk, ptr @__tracepoint_percpu_free_percpu, ptr @__tracepoint_ptr_percpu_alloc_percpu, ptr @__tracepoint_ptr_percpu_alloc_percpu_fail, ptr @__tracepoint_ptr_percpu_create_chunk, ptr @__tracepoint_ptr_percpu_destroy_chunk, ptr @__tracepoint_ptr_percpu_free_percpu, ptr @event_class_percpu_alloc_percpu, ptr @event_class_percpu_alloc_percpu_fail, ptr @event_class_percpu_create_chunk, ptr @event_class_percpu_destroy_chunk, ptr @event_class_percpu_free_percpu, ptr @event_percpu_alloc_percpu, ptr @event_percpu_alloc_percpu_fail, ptr @event_percpu_create_chunk, ptr @event_percpu_destroy_chunk, ptr @event_percpu_free_percpu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_percpu_alloc_percpu(ptr nocapture readnone %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_alloc_percpu, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #22
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
define dso_local i32 @__traceiter_percpu_free_percpu(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, ptr noundef %3) #22
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_percpu_alloc_percpu_fail(ptr nocapture readnone %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_alloc_percpu_fail, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #22
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_percpu_create_chunk(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_create_chunk, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_percpu_destroy_chunk(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_destroy_chunk, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_alloc_percpu(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = alloca %struct.trace_event_buffer, align 4
  %10 = zext i1 %1 to i8
  %11 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false), !annotation !9
  %12 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 704
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16, !prof !10

16:                                               ; preds = %8
  %17 = and i32 %13, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21, !prof !11

19:                                               ; preds = %16
  %20 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %20, label %32, label %21

21:                                               ; preds = %19, %16, %8
  %22 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 32) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %22, i32 0, i32 1
  store i8 %10, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %22, i32 0, i32 2
  store i8 %11, ptr %26, align 1
  %27 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %22, i32 0, i32 3
  store i32 %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %22, i32 0, i32 4
  store i32 %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %22, i32 0, i32 5
  store ptr %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %22, i32 0, i32 6
  store i32 %6, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %22, i32 0, i32 7
  store ptr %7, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #22
  br label %32

32:                                               ; preds = %24, %21, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_percpu_alloc_percpu(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = zext i1 %1 to i8
  %12 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store ptr null, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  store i32 0, ptr %10, align 4, !annotation !9
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #14, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %24, %8
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %9, ptr noundef nonnull %10) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %9, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #22
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #22
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %28, i32 0, i32 1
  store i8 %11, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %28, i32 0, i32 2
  store i8 %12, ptr %42, align 1
  %43 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %28, i32 0, i32 3
  store i32 %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %28, i32 0, i32 4
  store i32 %4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %28, i32 0, i32 5
  store ptr %5, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %28, i32 0, i32 6
  store i32 %6, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %28, i32 0, i32 7
  store ptr %7, ptr %47, align 4
  %48 = load i32, ptr %10, align 4
  %49 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef 36, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %20, ptr noundef null) #22
  br label %50

50:                                               ; preds = %30, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_free_percpu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %16, i32 0, i32 3
  store ptr %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #22
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_percpu_free_percpu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #14, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #22
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #22
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %22, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #22
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_alloc_percpu_fail(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  %7 = zext i1 %1 to i8
  %8 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %5
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %17, label %26, label %18

18:                                               ; preds = %16, %13, %5
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 20) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %19, i32 0, i32 1
  store i8 %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %19, i32 0, i32 2
  store i8 %8, ptr %23, align 1
  %24 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %19, i32 0, i32 3
  store i32 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %19, i32 0, i32 4
  store i32 %4, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #22
  br label %26

26:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_percpu_alloc_percpu_fail(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = zext i1 %1 to i8
  %9 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #14, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %21, %5
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #22
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #22
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %25, i32 0, i32 1
  store i8 %8, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %25, i32 0, i32 2
  store i8 %9, ptr %39, align 1
  %40 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %25, i32 0, i32 3
  store i32 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %25, i32 0, i32 4
  store i32 %4, ptr %41, align 4
  %42 = load i32, ptr %7, align 4
  %43 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 20, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %17, ptr noundef null) #22
  br label %44

44:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_create_chunk(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_percpu_create_chunk, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #22
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_percpu_create_chunk(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #14, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #22
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #22
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_percpu_create_chunk, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #22
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_destroy_chunk(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_percpu_destroy_chunk, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #22
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_percpu_destroy_chunk(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #14, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #22
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #22
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_percpu_destroy_chunk, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #22
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = tail call fastcc ptr @pcpu_alloc(i32 noundef %0, i32 noundef %1, i1 noundef zeroext false, i32 noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_alloc(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @llvm.thread.pointer() #22
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 269221888
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 524288
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = and i32 %3, -193
  br label %20

15:                                               ; preds = %10
  %16 = and i32 %7, 262144
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %3, -129
  %19 = select i1 %17, i32 %3, i32 %18
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %15 ]
  %22 = and i32 %7, 268435456
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %21, -9
  %25 = select i1 %23, i32 %21, i32 %24
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi i32 [ %3, %4 ], [ %25, %20 ]
  %28 = and i32 %27, 76992
  %29 = and i32 %27, 3264
  %30 = icmp ne i32 %29, 3264
  %31 = and i32 %27, 8192
  %32 = icmp eq i32 %31, 0
  %33 = icmp ult i32 %1, 4
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %26
  %36 = phi i32 [ 4, %34 ], [ %1, %26 ]
  %37 = add i32 %0, 3
  %38 = and i32 %37, -4
  %39 = lshr i32 %37, 2
  %40 = lshr i32 %36, 2
  %41 = add i32 %38, -32769
  %42 = icmp ult i32 %41, -32768
  %43 = icmp ugt i32 %36, 4096
  %44 = or i1 %42, %43
  %45 = tail call i32 @llvm.ctpop.i32(i32 %36) #22, !range !13
  %46 = icmp ugt i32 %45, 1
  %47 = or i1 %44, %46
  br i1 %47, label %48, label %50, !prof !14

48:                                               ; preds = %35
  br i1 %32, label %49, label %398, !prof !11

49:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1759, i32 noundef 9, ptr noundef nonnull @.str.44, i32 noundef %38, i32 noundef %36) #22
  br label %398

50:                                               ; preds = %35
  br i1 %30, label %58, label %51

51:                                               ; preds = %50
  %52 = and i32 %27, 32768
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @mutex_lock(ptr noundef nonnull @pcpu_alloc_mutex) #22
  br label %58

55:                                               ; preds = %51
  %56 = tail call i32 @mutex_lock_killable(ptr noundef nonnull @pcpu_alloc_mutex) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %398

58:                                               ; preds = %55, %54, %50
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  %60 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %61 = icmp ne ptr %60, null
  %62 = select i1 %2, i1 %61, i1 false
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 false) #22, !range !13
  %65 = sub nsw i32 29, %64
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 1) #22
  br label %73

67:                                               ; preds = %58
  %68 = tail call fastcc i32 @pcpu_find_block_fit(ptr noundef nonnull %60, i32 noundef %39, i32 noundef %40, i1 noundef zeroext %30)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %351, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc i32 @pcpu_alloc_area(ptr noundef nonnull %60, i32 noundef %39, i32 noundef %40, i32 noundef %68)
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %237, label %351

73:                                               ; preds = %233, %63
  %74 = phi i32 [ %59, %63 ], [ %234, %233 ]
  %75 = load i32, ptr @pcpu_unit_size, align 4
  %76 = icmp eq i32 %75, %38
  %77 = load i32, ptr @pcpu_free_slot, align 4
  %78 = select i1 %76, i32 %77, i32 %66
  %79 = icmp sgt i32 %78, %77
  br i1 %79, label %174, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr @pcpu_chunk_lists, align 4
  br label %82

82:                                               ; preds = %169, %80
  %83 = phi i32 [ %170, %169 ], [ %77, %80 ]
  %84 = phi ptr [ %171, %169 ], [ %81, %80 ]
  %85 = phi i32 [ %172, %169 ], [ %78, %80 ]
  %86 = getelementptr %struct.list_head, ptr %84, i32 %85
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %169, label %89

89:                                               ; preds = %82
  %90 = icmp sgt i32 %85, 2
  br label %91

91:                                               ; preds = %163, %89
  %92 = phi ptr [ %87, %89 ], [ %93, %163 ]
  %93 = load ptr, ptr %92, align 4
  %94 = tail call fastcc i32 @pcpu_find_block_fit(ptr noundef %92, i32 noundef %39, i32 noundef %40, i1 noundef zeroext %30)
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %98 = icmp eq ptr %97, %92
  %99 = select i1 %90, i1 true, i1 %98
  br i1 %99, label %163, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr @pcpu_chunk_lists, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %92, align 4
  %105 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  store ptr %103, ptr %105, align 4
  store volatile ptr %104, ptr %103, align 4
  %106 = load ptr, ptr %101, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %92, ptr %107, align 4
  store ptr %106, ptr %92, align 4
  store ptr %101, ptr %102, align 4
  store volatile ptr %92, ptr %101, align 4
  br label %163

108:                                              ; preds = %91
  %109 = tail call fastcc i32 @pcpu_alloc_area(ptr noundef %92, i32 noundef %39, i32 noundef %40, i32 noundef %94)
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %163

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.pcpu_chunk, ptr %92, i32 0, i32 9
  %113 = load i8, ptr %112, align 1, !range !15
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %237, label %115

115:                                              ; preds = %111
  store i8 0, ptr %112, align 1
  %116 = getelementptr inbounds %struct.pcpu_chunk, ptr %92, i32 0, i32 14
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %119 = add i32 %118, %117
  store i32 %119, ptr @pcpu_nr_empty_pop_pages, align 4
  %120 = getelementptr inbounds %struct.pcpu_chunk, ptr %92, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %139, label %123

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.pcpu_chunk, ptr %92, i32 0, i32 2, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = shl i32 %125, 2
  %129 = load i32, ptr @pcpu_unit_size, align 4
  %130 = icmp eq i32 %129, %128
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, ptr @pcpu_free_slot, align 4
  br label %139

133:                                              ; preds = %127
  %134 = icmp eq i32 %128, 0
  %135 = tail call i32 @llvm.ctlz.i32(i32 %128, i1 false) #22, !range !13
  %136 = sub nsw i32 29, %135
  %137 = tail call i32 @llvm.smax.i32(i32 %136, i32 1) #22
  %138 = select i1 %134, i32 1, i32 %137
  br label %139

139:                                              ; preds = %133, %131, %123, %115
  %140 = phi i32 [ 0, %123 ], [ 0, %115 ], [ %132, %131 ], [ %138, %133 ]
  %141 = icmp eq i32 %140, -1
  %142 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %143 = icmp eq ptr %142, %92
  %144 = select i1 %141, i1 true, i1 %143
  br i1 %144, label %237, label %145

145:                                              ; preds = %139
  %146 = icmp sgt i32 %140, -1
  %147 = load ptr, ptr @pcpu_chunk_lists, align 4
  %148 = getelementptr %struct.list_head, ptr %147, i32 %140
  %149 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = load ptr, ptr %92, align 4
  %152 = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  store ptr %150, ptr %152, align 4
  store volatile ptr %151, ptr %150, align 4
  br i1 %146, label %153, label %156

153:                                              ; preds = %145
  %154 = load ptr, ptr %148, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  br label %159

156:                                              ; preds = %145
  %157 = getelementptr %struct.list_head, ptr %147, i32 %140, i32 1
  %158 = load ptr, ptr %157, align 4
  br label %159

159:                                              ; preds = %156, %153
  %160 = phi ptr [ %155, %153 ], [ %157, %156 ]
  %161 = phi ptr [ %154, %153 ], [ %148, %156 ]
  %162 = phi ptr [ %148, %153 ], [ %158, %156 ]
  store ptr %92, ptr %160, align 4
  store ptr %161, ptr %92, align 4
  store ptr %162, ptr %149, align 4
  store volatile ptr %92, ptr %162, align 4
  br label %237

163:                                              ; preds = %108, %100, %96
  %164 = load ptr, ptr @pcpu_chunk_lists, align 4
  %165 = getelementptr %struct.list_head, ptr %164, i32 %85
  %166 = icmp eq ptr %93, %165
  br i1 %166, label %167, label %91

167:                                              ; preds = %163
  %168 = load i32, ptr @pcpu_free_slot, align 4
  br label %169

169:                                              ; preds = %167, %82
  %170 = phi i32 [ %168, %167 ], [ %83, %82 ]
  %171 = phi ptr [ %164, %167 ], [ %84, %82 ]
  %172 = add i32 %85, 1
  %173 = icmp sgt i32 %172, %170
  br i1 %173, label %174, label %82

174:                                              ; preds = %169, %73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %74) #22
  br i1 %30, label %354, label %175

175:                                              ; preds = %174
  %176 = load ptr, ptr @pcpu_chunk_lists, align 4
  %177 = load i32, ptr @pcpu_free_slot, align 4
  %178 = getelementptr %struct.list_head, ptr %176, i32 %177
  %179 = load volatile ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, %178
  br i1 %180, label %181, label %235

181:                                              ; preds = %175
  %182 = tail call fastcc ptr @pcpu_create_chunk(i32 noundef %28)
  %183 = icmp eq ptr %182, null
  br i1 %183, label %354, label %184

184:                                              ; preds = %181
  %185 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  %186 = getelementptr inbounds %struct.pcpu_chunk, ptr %182, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = icmp slt i32 %187, 4
  br i1 %188, label %205, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.pcpu_chunk, ptr %182, i32 0, i32 2, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %205, label %193

193:                                              ; preds = %189
  %194 = shl i32 %191, 2
  %195 = load i32, ptr @pcpu_unit_size, align 4
  %196 = icmp eq i32 %195, %194
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, ptr @pcpu_free_slot, align 4
  br label %205

199:                                              ; preds = %193
  %200 = icmp eq i32 %194, 0
  %201 = tail call i32 @llvm.ctlz.i32(i32 %194, i1 false) #22, !range !13
  %202 = sub nsw i32 29, %201
  %203 = tail call i32 @llvm.smax.i32(i32 %202, i32 1) #22
  %204 = select i1 %200, i32 1, i32 %203
  br label %205

205:                                              ; preds = %199, %197, %189, %184
  %206 = phi i32 [ 0, %189 ], [ 0, %184 ], [ %198, %197 ], [ %204, %199 ]
  %207 = getelementptr inbounds %struct.pcpu_chunk, ptr %182, i32 0, i32 9
  %208 = load i8, ptr %207, align 1, !range !15
  %209 = icmp ne i8 %208, 0
  %210 = icmp eq i32 %206, -1
  %211 = select i1 %209, i1 true, i1 %210
  %212 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %213 = icmp eq ptr %212, %182
  %214 = select i1 %211, i1 true, i1 %213
  br i1 %214, label %233, label %215

215:                                              ; preds = %205
  %216 = icmp sgt i32 %206, -1
  %217 = load ptr, ptr @pcpu_chunk_lists, align 4
  %218 = getelementptr %struct.list_head, ptr %217, i32 %206
  %219 = getelementptr inbounds %struct.list_head, ptr %182, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = load ptr, ptr %182, align 4
  %222 = getelementptr inbounds %struct.list_head, ptr %221, i32 0, i32 1
  store ptr %220, ptr %222, align 4
  store volatile ptr %221, ptr %220, align 4
  br i1 %216, label %223, label %226

223:                                              ; preds = %215
  %224 = load ptr, ptr %218, align 4
  %225 = getelementptr inbounds %struct.list_head, ptr %224, i32 0, i32 1
  br label %229

226:                                              ; preds = %215
  %227 = getelementptr %struct.list_head, ptr %217, i32 %206, i32 1
  %228 = load ptr, ptr %227, align 4
  br label %229

229:                                              ; preds = %226, %223
  %230 = phi ptr [ %225, %223 ], [ %227, %226 ]
  %231 = phi ptr [ %224, %223 ], [ %218, %226 ]
  %232 = phi ptr [ %218, %223 ], [ %228, %226 ]
  store ptr %182, ptr %230, align 4
  store ptr %231, ptr %182, align 4
  store ptr %232, ptr %219, align 4
  store volatile ptr %182, ptr %232, align 4
  br label %233

233:                                              ; preds = %235, %229, %205
  %234 = phi i32 [ %236, %235 ], [ %185, %205 ], [ %185, %229 ]
  br label %73

235:                                              ; preds = %175
  %236 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  br label %233

237:                                              ; preds = %159, %139, %111, %70
  %238 = phi i32 [ %59, %70 ], [ %74, %111 ], [ %74, %139 ], [ %74, %159 ]
  %239 = phi i32 [ %71, %70 ], [ %109, %111 ], [ %109, %139 ], [ %109, %159 ]
  %240 = phi ptr [ %60, %70 ], [ %92, %111 ], [ %92, %139 ], [ %92, %159 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %238) #22
  br i1 %30, label %290, label %241

241:                                              ; preds = %237
  %242 = lshr i32 %239, 12
  %243 = add i32 %38, 4095
  %244 = add i32 %243, %239
  %245 = lshr i32 %244, 12
  %246 = getelementptr inbounds %struct.pcpu_chunk, ptr %240, i32 0, i32 15
  %247 = tail call i32 @_find_next_zero_bit_le(ptr noundef %246, i32 noundef %245, i32 noundef %242) #22
  %248 = add i32 %247, 1
  %249 = tail call i32 @_find_next_bit_le(ptr noundef %246, i32 noundef %245, i32 noundef %248) #22
  %250 = icmp ult i32 %247, %245
  br i1 %250, label %251, label %288

251:                                              ; preds = %241
  %252 = getelementptr inbounds %struct.pcpu_chunk, ptr %240, i32 0, i32 8
  %253 = getelementptr inbounds %struct.pcpu_chunk, ptr %240, i32 0, i32 13
  %254 = getelementptr inbounds %struct.pcpu_chunk, ptr %240, i32 0, i32 14
  %255 = getelementptr inbounds %struct.pcpu_chunk, ptr %240, i32 0, i32 9
  br label %256

256:                                              ; preds = %282, %251
  %257 = phi i32 [ %249, %251 ], [ %286, %282 ]
  %258 = phi i32 [ %247, %251 ], [ %284, %282 ]
  %259 = load i8, ptr %252, align 4, !range !15
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %262, label %261, !prof !10

261:                                              ; preds = %256
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1860, i32 noundef 9, ptr noundef null) #22
  br label %262

262:                                              ; preds = %261, %256
  %263 = tail call fastcc i32 @pcpu_populate_chunk(ptr noundef %240, i32 noundef %258, i32 noundef %257, i32 noundef %28)
  %264 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  %265 = icmp eq i32 %263, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %262
  %267 = sub i32 %257, %258
  tail call void @__bitmap_set(ptr noundef %246, i32 noundef %258, i32 noundef %267) #22
  %268 = load i32, ptr %253, align 4
  %269 = add i32 %268, %267
  store i32 %269, ptr %253, align 4
  %270 = load i32, ptr @pcpu_nr_populated, align 4
  %271 = add i32 %270, %267
  store i32 %271, ptr @pcpu_nr_populated, align 4
  %272 = load i32, ptr %254, align 4
  %273 = add i32 %272, %267
  store i32 %273, ptr %254, align 4
  %274 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %275 = icmp eq ptr %274, %240
  br i1 %275, label %282, label %276

276:                                              ; preds = %266
  %277 = load i8, ptr %255, align 1, !range !15
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %281 = add i32 %280, %267
  store i32 %281, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %282

282:                                              ; preds = %279, %276, %266
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %264) #22
  %283 = add i32 %257, 1
  %284 = tail call i32 @_find_next_zero_bit_le(ptr noundef %246, i32 noundef %245, i32 noundef %283) #22
  %285 = add i32 %284, 1
  %286 = tail call i32 @_find_next_bit_le(ptr noundef %246, i32 noundef %245, i32 noundef %285) #22
  %287 = icmp ult i32 %284, %245
  br i1 %287, label %256, label %288

288:                                              ; preds = %282, %241
  tail call void @mutex_unlock(ptr noundef nonnull @pcpu_alloc_mutex) #22
  br label %290

289:                                              ; preds = %262
  tail call fastcc void @pcpu_free_area(ptr noundef %240, i32 noundef %239)
  br label %351

290:                                              ; preds = %288, %237
  %291 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %292 = icmp slt i32 %291, 2
  br i1 %292, label %293, label %298

293:                                              ; preds = %290
  %294 = load i1, ptr @pcpu_async_enabled, align 1
  br i1 %294, label %295, label %298

295:                                              ; preds = %293
  %296 = load ptr, ptr @system_wq, align 4
  %297 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %296, ptr noundef nonnull @pcpu_balance_work) #22
  br label %298

298:                                              ; preds = %295, %293, %290
  %299 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %300 = load i32, ptr @nr_cpu_ids, align 4
  %301 = icmp ult i32 %299, %300
  br i1 %301, label %302, label %317

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.pcpu_chunk, ptr %240, i32 0, i32 3
  br label %304

304:                                              ; preds = %304, %302
  %305 = phi i32 [ %299, %302 ], [ %314, %304 ]
  %306 = load ptr, ptr %303, align 4
  %307 = ptrtoint ptr %306 to i32
  %308 = load ptr, ptr @pcpu_unit_offsets, align 4
  %309 = getelementptr i32, ptr %308, i32 %305
  %310 = load i32, ptr %309, align 4
  %311 = add i32 %310, %307
  %312 = inttoptr i32 %311 to ptr
  %313 = getelementptr i8, ptr %312, i32 %239
  tail call void @llvm.memset.p0.i32(ptr align 1 %313, i8 0, i32 %38, i1 false)
  %314 = tail call i32 @cpumask_next(i32 noundef %305, ptr noundef nonnull @__cpu_possible_mask) #23
  %315 = load i32, ptr @nr_cpu_ids, align 4
  %316 = icmp ult i32 %314, %315
  br i1 %316, label %304, label %317

317:                                              ; preds = %304, %298
  %318 = getelementptr inbounds %struct.pcpu_chunk, ptr %240, i32 0, i32 3
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr i8, ptr %319, i32 %239
  %321 = ptrtoint ptr %320 to i32
  %322 = load ptr, ptr @pcpu_base_addr, align 4
  %323 = ptrtoint ptr %322 to i32
  %324 = sub i32 ptrtoint (ptr @__per_cpu_start to i32), %323
  %325 = add i32 %324, %321
  %326 = inttoptr i32 %325 to ptr
  %327 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_alloc_percpu, i32 0, i32 1), align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %398

329:                                              ; preds = %317
  %330 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %331 = load i32, ptr %330, align 8
  %332 = lshr i32 %331, 5
  %333 = getelementptr i32, ptr @__cpu_online_mask, i32 %332
  %334 = load volatile i32, ptr %333, align 4
  %335 = and i32 %331, 31
  %336 = shl nuw i32 1, %335
  %337 = and i32 %336, %334
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %398, label %339

339:                                              ; preds = %329
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %340 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_alloc_percpu, i32 0, i32 7), align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %350, label %342

342:                                              ; preds = %342, %339
  %343 = phi ptr [ %347, %342 ], [ %340, %339 ]
  %344 = load volatile ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.tracepoint_func, ptr %343, i32 0, i32 1
  %346 = load ptr, ptr %345, align 4
  tail call void %344(ptr noundef %346, i1 noundef zeroext %2, i1 noundef zeroext %30, i32 noundef %38, i32 noundef %36, ptr noundef %319, i32 noundef %239, ptr noundef %326) #22
  %347 = getelementptr %struct.tracepoint_func, ptr %343, i32 1
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %342

350:                                              ; preds = %342, %339
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %398

351:                                              ; preds = %289, %70, %67
  %352 = phi i32 [ %264, %289 ], [ %59, %67 ], [ %59, %70 ]
  %353 = phi ptr [ @.str.48, %289 ], [ @.str.45, %67 ], [ @.str.45, %70 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %352) #22
  br label %354

354:                                              ; preds = %351, %181, %174
  %355 = phi ptr [ %353, %351 ], [ @.str.47, %181 ], [ @.str.46, %174 ]
  %356 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_alloc_percpu_fail, i32 0, i32 1), align 4
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %380

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %360 = load i32, ptr %359, align 8
  %361 = lshr i32 %360, 5
  %362 = getelementptr i32, ptr @__cpu_online_mask, i32 %361
  %363 = load volatile i32, ptr %362, align 4
  %364 = and i32 %360, 31
  %365 = shl nuw i32 1, %364
  %366 = and i32 %365, %363
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %380, label %368

368:                                              ; preds = %358
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %369 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_alloc_percpu_fail, i32 0, i32 7), align 4
  %370 = icmp eq ptr %369, null
  br i1 %370, label %379, label %371

371:                                              ; preds = %371, %368
  %372 = phi ptr [ %376, %371 ], [ %369, %368 ]
  %373 = load volatile ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.tracepoint_func, ptr %372, i32 0, i32 1
  %375 = load ptr, ptr %374, align 4
  tail call void %373(ptr noundef %375, i1 noundef zeroext %2, i1 noundef zeroext %30, i32 noundef %38, i32 noundef %36) #22
  %376 = getelementptr %struct.tracepoint_func, ptr %372, i32 1
  %377 = load ptr, ptr %376, align 4
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %371

379:                                              ; preds = %371, %368
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %380

380:                                              ; preds = %379, %358, %354
  br i1 %30, label %392, label %381

381:                                              ; preds = %380
  %382 = load i32, ptr @pcpu_alloc.warn_limit, align 4
  %383 = icmp ne i32 %382, 0
  %384 = select i1 %32, i1 %383, i1 false
  br i1 %384, label %385, label %397

385:                                              ; preds = %381
  %386 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %38, i32 noundef %36, i32 noundef 0, ptr noundef nonnull %355) #24
  tail call void @dump_stack() #24
  %387 = load i32, ptr @pcpu_alloc.warn_limit, align 4
  %388 = add i32 %387, -1
  store i32 %388, ptr @pcpu_alloc.warn_limit, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %397

390:                                              ; preds = %385
  %391 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #24
  br label %397

392:                                              ; preds = %380
  store i1 true, ptr @pcpu_atomic_alloc_failed, align 1
  %393 = load i1, ptr @pcpu_async_enabled, align 1
  br i1 %393, label %394, label %398

394:                                              ; preds = %392
  %395 = load ptr, ptr @system_wq, align 4
  %396 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %395, ptr noundef nonnull @pcpu_balance_work) #22
  br label %398

397:                                              ; preds = %390, %385, %381
  tail call void @mutex_unlock(ptr noundef nonnull @pcpu_alloc_mutex) #22
  br label %398

398:                                              ; preds = %397, %394, %392, %350, %329, %317, %55, %49, %48
  %399 = phi ptr [ null, %49 ], [ null, %48 ], [ null, %55 ], [ %326, %317 ], [ %326, %329 ], [ %326, %350 ], [ null, %394 ], [ null, %392 ], [ null, %397 ]
  ret ptr %399
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__alloc_percpu(i32 noundef %0, i32 noundef %1) #3 {
  %3 = tail call fastcc ptr @pcpu_alloc(i32 noundef %0, i32 noundef %1, i1 noundef zeroext false, i32 noundef 3264)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__alloc_reserved_percpu(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc ptr @pcpu_alloc(i32 noundef %0, i32 noundef %1, i1 noundef zeroext true, i32 noundef 3264)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_percpu(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %244, label %3

3:                                                ; preds = %1
  %4 = ptrtoint ptr %0 to i32
  %5 = load ptr, ptr @pcpu_base_addr, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = sub i32 %4, ptrtoint (ptr @__per_cpu_start to i32)
  %8 = add i32 %7, %6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  %11 = load ptr, ptr @pcpu_first_chunk, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.pcpu_chunk, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pcpu_chunk, ptr %11, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = getelementptr inbounds %struct.pcpu_chunk, ptr %11, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 12
  %22 = getelementptr i8, ptr %15, i32 %21
  %23 = getelementptr inbounds %struct.pcpu_chunk, ptr %11, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 0, %24
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = icmp ule ptr %18, %9
  %28 = icmp ugt ptr %26, %9
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %64, label %30

30:                                               ; preds = %13, %3
  %31 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.pcpu_chunk, ptr %31, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pcpu_chunk, ptr %31, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr inbounds %struct.pcpu_chunk, ptr %31, i32 0, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 %40, 12
  %42 = getelementptr i8, ptr %35, i32 %41
  %43 = getelementptr inbounds %struct.pcpu_chunk, ptr %31, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 0, %44
  %46 = getelementptr i8, ptr %42, i32 %45
  %47 = icmp ule ptr %38, %9
  %48 = icmp ugt ptr %46, %9
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %64, label %50

50:                                               ; preds = %33, %30
  %51 = load ptr, ptr @pcpu_unit_offsets, align 4
  %52 = tail call ptr @llvm.thread.pointer() #22
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr i32, ptr %51, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %9, i32 %56
  %58 = tail call ptr @vmalloc_to_page(ptr noundef %57) #22
  %59 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 1, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = inttoptr i32 %60 to ptr
  %62 = getelementptr inbounds %struct.pcpu_chunk, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %50, %33, %13
  %65 = phi ptr [ %63, %50 ], [ %15, %13 ], [ %35, %33 ]
  %66 = phi ptr [ %61, %50 ], [ %11, %13 ], [ %31, %33 ]
  %67 = getelementptr inbounds %struct.pcpu_chunk, ptr %66, i32 0, i32 3
  %68 = ptrtoint ptr %65 to i32
  %69 = sub i32 %8, %68
  tail call fastcc void @pcpu_free_area(ptr noundef %66, i32 noundef %69)
  %70 = getelementptr inbounds %struct.pcpu_chunk, ptr %66, i32 0, i32 9
  %71 = load i8, ptr %70, align 1, !range !15
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.pcpu_chunk, ptr %66, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr @pcpu_unit_size, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load ptr, ptr @pcpu_chunk_lists, align 4
  %80 = load i32, ptr @pcpu_free_slot, align 4
  %81 = getelementptr %struct.list_head, ptr %79, i32 %80
  br label %82

82:                                               ; preds = %86, %78
  %83 = phi ptr [ %81, %78 ], [ %66, %86 ]
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %81
  br i1 %85, label %216, label %86

86:                                               ; preds = %82
  %87 = icmp eq ptr %84, %66
  br i1 %87, label %82, label %156

88:                                               ; preds = %73
  %89 = load ptr, ptr @pcpu_first_chunk, align 4
  %90 = icmp eq ptr %89, %66
  %91 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %92 = icmp eq ptr %91, %66
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %188, label %100

94:                                               ; preds = %64
  %95 = load ptr, ptr @pcpu_first_chunk, align 4
  %96 = icmp eq ptr %95, %66
  %97 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %98 = icmp eq ptr %97, %66
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %188, label %103

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.pcpu_chunk, ptr %66, i32 0, i32 14
  %102 = load i32, ptr %101, align 4
  br label %107

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.pcpu_chunk, ptr %66, i32 0, i32 14
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103, %100
  %108 = phi i32 [ 0, %103 ], [ %102, %100 ]
  %109 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %110 = add i32 %108, 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %188

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.pcpu_chunk, ptr %66, i32 0, i32 12
  %114 = load i32, ptr %113, align 4
  %115 = sdiv i32 %114, 4
  %116 = icmp slt i32 %108, %115
  br i1 %116, label %188, label %117

117:                                              ; preds = %112
  br i1 %72, label %118, label %120

118:                                              ; preds = %117
  store i8 1, ptr %70, align 1
  %119 = sub i32 %109, %108
  store i32 %119, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %120

120:                                              ; preds = %118, %117, %103
  %121 = load ptr, ptr @pcpu_chunk_lists, align 4
  %122 = load i32, ptr @pcpu_to_depopulate_slot, align 4
  %123 = getelementptr %struct.list_head, ptr %121, i32 %122
  %124 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %66, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %125, ptr %127, align 4
  store volatile ptr %126, ptr %125, align 4
  %128 = load ptr, ptr %123, align 4
  %129 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  store ptr %66, ptr %129, align 4
  store ptr %128, ptr %66, align 4
  store ptr %123, ptr %124, align 4
  store volatile ptr %66, ptr %123, align 4
  %130 = load ptr, ptr %67, align 4
  %131 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 1), align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %183

133:                                              ; preds = %120
  %134 = tail call ptr @llvm.thread.pointer() #22
  %135 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %136 = load i32, ptr %135, align 8
  %137 = lshr i32 %136, 5
  %138 = getelementptr i32, ptr @__cpu_online_mask, i32 %137
  %139 = load volatile i32, ptr %138, align 4
  %140 = and i32 %136, 31
  %141 = shl nuw i32 1, %140
  %142 = and i32 %141, %139
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %183, label %144

144:                                              ; preds = %133
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  %145 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 7), align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %155, label %147

147:                                              ; preds = %147, %144
  %148 = phi ptr [ %152, %147 ], [ %145, %144 ]
  %149 = load volatile ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.tracepoint_func, ptr %148, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  tail call void %149(ptr noundef %151, ptr noundef %130, i32 noundef %69, ptr noundef nonnull %0) #22
  %152 = getelementptr %struct.tracepoint_func, ptr %148, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %147

155:                                              ; preds = %147, %144
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !21
  br label %183

156:                                              ; preds = %86
  %157 = load ptr, ptr %67, align 4
  %158 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 1), align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %156
  %161 = tail call ptr @llvm.thread.pointer() #22
  %162 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 2
  %163 = load i32, ptr %162, align 8
  %164 = lshr i32 %163, 5
  %165 = getelementptr i32, ptr @__cpu_online_mask, i32 %164
  %166 = load volatile i32, ptr %165, align 4
  %167 = and i32 %163, 31
  %168 = shl nuw i32 1, %167
  %169 = and i32 %168, %166
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %183, label %171

171:                                              ; preds = %160
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  %172 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 7), align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %182, label %174

174:                                              ; preds = %174, %171
  %175 = phi ptr [ %179, %174 ], [ %172, %171 ]
  %176 = load volatile ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.tracepoint_func, ptr %175, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  tail call void %176(ptr noundef %178, ptr noundef %157, i32 noundef %69, ptr noundef nonnull %0) #22
  %179 = getelementptr %struct.tracepoint_func, ptr %175, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %174

182:                                              ; preds = %174, %171
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !21
  br label %183

183:                                              ; preds = %182, %160, %156, %155, %133, %120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %10) #22
  %184 = load i1, ptr @pcpu_async_enabled, align 1
  br i1 %184, label %185, label %244

185:                                              ; preds = %183
  %186 = load ptr, ptr @system_wq, align 4
  %187 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %186, ptr noundef nonnull @pcpu_balance_work) #22
  br label %244

188:                                              ; preds = %112, %107, %94, %88
  %189 = load ptr, ptr %67, align 4
  %190 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 1), align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %215

192:                                              ; preds = %188
  %193 = tail call ptr @llvm.thread.pointer() #22
  %194 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 2
  %195 = load i32, ptr %194, align 8
  %196 = lshr i32 %195, 5
  %197 = getelementptr i32, ptr @__cpu_online_mask, i32 %196
  %198 = load volatile i32, ptr %197, align 4
  %199 = and i32 %195, 31
  %200 = shl nuw i32 1, %199
  %201 = and i32 %200, %198
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %192
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  %204 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 7), align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %214, label %206

206:                                              ; preds = %206, %203
  %207 = phi ptr [ %211, %206 ], [ %204, %203 ]
  %208 = load volatile ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.tracepoint_func, ptr %207, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  tail call void %208(ptr noundef %210, ptr noundef %189, i32 noundef %69, ptr noundef nonnull %0) #22
  %211 = getelementptr %struct.tracepoint_func, ptr %207, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %206

214:                                              ; preds = %206, %203
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !21
  br label %215

215:                                              ; preds = %214, %192, %188
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %10) #22
  br label %244

216:                                              ; preds = %82
  %217 = load ptr, ptr %67, align 4
  %218 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 1), align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %243

220:                                              ; preds = %216
  %221 = tail call ptr @llvm.thread.pointer() #22
  %222 = getelementptr inbounds %struct.thread_info, ptr %221, i32 0, i32 2
  %223 = load i32, ptr %222, align 8
  %224 = lshr i32 %223, 5
  %225 = getelementptr i32, ptr @__cpu_online_mask, i32 %224
  %226 = load volatile i32, ptr %225, align 4
  %227 = and i32 %223, 31
  %228 = shl nuw i32 1, %227
  %229 = and i32 %228, %226
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %243, label %231

231:                                              ; preds = %220
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  %232 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 7), align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %242, label %234

234:                                              ; preds = %234, %231
  %235 = phi ptr [ %239, %234 ], [ %232, %231 ]
  %236 = load volatile ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.tracepoint_func, ptr %235, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  tail call void %236(ptr noundef %238, ptr noundef %217, i32 noundef %69, ptr noundef nonnull %0) #22
  %239 = getelementptr %struct.tracepoint_func, ptr %235, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %234

242:                                              ; preds = %234, %231
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !21
  br label %243

243:                                              ; preds = %242, %220, %216
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %10) #22
  br label %244

244:                                              ; preds = %243, %215, %185, %183, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcpu_free_area(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 4
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = shl i32 %8, 2
  %12 = load i32, ptr @pcpu_unit_size, align 4
  %13 = icmp eq i32 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, ptr @pcpu_free_slot, align 4
  br label %22

16:                                               ; preds = %10
  %17 = icmp eq i32 %11, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #22, !range !13
  %19 = sub nsw i32 29, %18
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 1) #22
  %21 = select i1 %17, i32 1, i32 %20
  br label %22

22:                                               ; preds = %16, %14, %6, %2
  %23 = phi i32 [ 0, %6 ], [ 0, %2 ], [ %15, %14 ], [ %21, %16 ]
  %24 = sdiv i32 %1, 4
  %25 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 10
  %30 = and i32 %29, 1073740800
  %31 = add nsw i32 %24, 1
  %32 = tail call i32 @_find_next_bit_le(ptr noundef %26, i32 noundef %30, i32 noundef %31) #22
  %33 = sub i32 %32, %24
  %34 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  tail call void @__bitmap_clear(ptr noundef %35, i32 noundef %24, i32 noundef %33) #22
  %36 = shl i32 %33, 2
  %37 = load i32, ptr %3, align 4
  %38 = add i32 %37, %36
  store i32 %38, ptr %3, align 4
  %39 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 %24)
  store i32 %41, ptr %39, align 4
  %42 = lshr i32 %24, 10
  %43 = add i32 %32, -1
  %44 = lshr i32 %43, 10
  %45 = and i32 %24, 1023
  %46 = and i32 %43, 1023
  %47 = add nuw nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.pcpu_block_md, ptr %49, i32 %42
  %51 = getelementptr %struct.pcpu_block_md, ptr %49, i32 %44
  %52 = getelementptr %struct.pcpu_block_md, ptr %49, i32 %42, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr %struct.pcpu_block_md, ptr %49, i32 %42, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  %57 = icmp eq i32 %45, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %22
  %59 = load ptr, ptr %34, align 4
  %60 = shl nuw nsw i32 %42, 5
  %61 = getelementptr i32, ptr %59, i32 %60
  %62 = tail call i32 @_find_last_bit(ptr noundef %61, i32 noundef %45) #22
  %63 = icmp eq i32 %45, %62
  %64 = add i32 %62, 1
  %65 = select i1 %63, i32 0, i32 %64
  br label %66

66:                                               ; preds = %58, %22
  %67 = phi i32 [ %65, %58 ], [ %55, %22 ]
  %68 = getelementptr %struct.pcpu_block_md, ptr %49, i32 %44, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %47, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = getelementptr %struct.pcpu_block_md, ptr %49, i32 %44, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %47
  br label %80

75:                                               ; preds = %66
  %76 = load ptr, ptr %34, align 4
  %77 = shl nuw nsw i32 %44, 5
  %78 = getelementptr i32, ptr %76, i32 %77
  %79 = tail call i32 @_find_next_bit_le(ptr noundef %78, i32 noundef 1024, i32 noundef %47) #22
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi i32 [ %74, %71 ], [ %79, %75 ]
  %82 = icmp eq i32 %44, %42
  %83 = select i1 %82, i32 %81, i32 1024
  %84 = icmp eq i32 %67, 0
  %85 = icmp eq i32 %83, 1024
  %86 = and i1 %84, %85
  %87 = zext i1 %86 to i32
  tail call fastcc void @pcpu_block_update(ptr noundef %50, i32 noundef %67, i32 noundef %83) #22
  br i1 %82, label %107, label %88

88:                                               ; preds = %80
  %89 = icmp eq i32 %81, 1024
  %90 = select i1 %86, i32 2, i32 1
  %91 = select i1 %89, i32 %90, i32 %87
  tail call fastcc void @pcpu_block_update(ptr noundef %51, i32 noundef 0, i32 noundef %81) #22
  %92 = xor i32 %42, -1
  %93 = add nsw i32 %44, %92
  %94 = add nsw i32 %93, %91
  %95 = getelementptr %struct.pcpu_block_md, ptr %50, i32 1
  %96 = icmp ult ptr %95, %51
  br i1 %96, label %97, label %107

97:                                               ; preds = %97, %88
  %98 = phi ptr [ %105, %97 ], [ %95, %88 ]
  %99 = phi ptr [ %98, %97 ], [ %50, %88 ]
  %100 = getelementptr %struct.pcpu_block_md, ptr %99, i32 1, i32 6
  store i32 0, ptr %100, align 4
  store i32 0, ptr %98, align 4
  %101 = getelementptr %struct.pcpu_block_md, ptr %99, i32 1, i32 3
  store i32 0, ptr %101, align 4
  %102 = getelementptr %struct.pcpu_block_md, ptr %99, i32 1, i32 2
  store i32 1024, ptr %102, align 4
  %103 = getelementptr %struct.pcpu_block_md, ptr %99, i32 1, i32 4
  store i32 1024, ptr %103, align 4
  %104 = getelementptr %struct.pcpu_block_md, ptr %99, i32 1, i32 5
  store i32 1024, ptr %104, align 4
  %105 = getelementptr %struct.pcpu_block_md, ptr %98, i32 1
  %106 = icmp ult ptr %105, %51
  br i1 %106, label %97, label %107

107:                                              ; preds = %97, %88, %80
  %108 = phi i32 [ %87, %80 ], [ %94, %88 ], [ %94, %97 ]
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 14
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, %108
  store i32 %113, ptr %111, align 4
  %114 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %115 = icmp eq ptr %114, %0
  br i1 %115, label %123, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 9
  %118 = load i8, ptr %117, align 1, !range !15
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %122 = add i32 %121, %108
  store i32 %122, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %123

123:                                              ; preds = %120, %116, %110, %107
  %124 = sub i32 %81, %67
  %125 = icmp ult i32 %124, 1024
  %126 = and i1 %82, %125
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  tail call fastcc void @pcpu_chunk_refresh_hint(ptr noundef %0, i1 noundef zeroext true) #22
  br label %132

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2
  %130 = and i32 %24, -1024
  %131 = add i32 %67, %130
  tail call fastcc void @pcpu_block_update(ptr noundef %129, i32 noundef %131, i32 noundef %81) #22
  br label %132

132:                                              ; preds = %128, %127
  %133 = load i32, ptr %3, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %151, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %135
  %140 = shl i32 %137, 2
  %141 = load i32, ptr @pcpu_unit_size, align 4
  %142 = icmp eq i32 %141, %140
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, ptr @pcpu_free_slot, align 4
  br label %151

145:                                              ; preds = %139
  %146 = icmp eq i32 %140, 0
  %147 = tail call i32 @llvm.ctlz.i32(i32 %140, i1 false) #22, !range !13
  %148 = sub nsw i32 29, %147
  %149 = tail call i32 @llvm.smax.i32(i32 %148, i32 1) #22
  %150 = select i1 %146, i32 1, i32 %149
  br label %151

151:                                              ; preds = %145, %143, %135, %132
  %152 = phi i32 [ 0, %135 ], [ 0, %132 ], [ %144, %143 ], [ %150, %145 ]
  %153 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 9
  %154 = load i8, ptr %153, align 1, !range !15
  %155 = icmp ne i8 %154, 0
  %156 = icmp eq i32 %152, %23
  %157 = select i1 %155, i1 true, i1 %156
  %158 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %159 = icmp eq ptr %158, %0
  %160 = select i1 %157, i1 true, i1 %159
  br i1 %160, label %179, label %161

161:                                              ; preds = %151
  %162 = icmp sgt i32 %152, %23
  %163 = load ptr, ptr @pcpu_chunk_lists, align 4
  %164 = getelementptr %struct.list_head, ptr %163, i32 %152
  %165 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %0, align 4
  %168 = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  store ptr %166, ptr %168, align 4
  store volatile ptr %167, ptr %166, align 4
  br i1 %162, label %169, label %172

169:                                              ; preds = %161
  %170 = load ptr, ptr %164, align 4
  %171 = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  br label %175

172:                                              ; preds = %161
  %173 = getelementptr %struct.list_head, ptr %163, i32 %152, i32 1
  %174 = load ptr, ptr %173, align 4
  br label %175

175:                                              ; preds = %172, %169
  %176 = phi ptr [ %171, %169 ], [ %173, %172 ]
  %177 = phi ptr [ %170, %169 ], [ %164, %172 ]
  %178 = phi ptr [ %164, %169 ], [ %174, %172 ]
  store ptr %0, ptr %176, align 4
  store ptr %177, ptr %0, align 4
  store ptr %178, ptr %165, align 4
  store volatile ptr %0, ptr %178, align 4
  br label %179

179:                                              ; preds = %175, %151
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__is_kernel_percpu_address(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = inttoptr i32 %0 to ptr
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i32 [ -1, %2 ], [ %7, %9 ]
  %7 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_possible_mask) #23
  %8 = icmp ult i32 %7, %3
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @__per_cpu_start to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp uge ptr %4, %13
  %15 = getelementptr i8, ptr %13, i32 sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32))
  %16 = icmp ugt ptr %15, %4
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %5

18:                                               ; preds = %9
  %19 = icmp eq ptr %1, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = sub i32 %0, %12
  store i32 %21, ptr %1, align 4
  %22 = load i32, ptr @__boot_cpu_id, align 4
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %21, ptrtoint (ptr @__per_cpu_start to i32)
  %26 = add i32 %25, %24
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %20, %18, %5
  ret i1 %8
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @is_kernel_percpu_address(i32 noundef %0) local_unnamed_addr #6 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = inttoptr i32 %0 to ptr
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi i32 [ -1, %1 ], [ %6, %8 ]
  %6 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #23
  %7 = icmp ult i32 %6, %2
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @__per_cpu_start to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = icmp uge ptr %3, %12
  %14 = getelementptr i8, ptr %12, i32 sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32))
  %15 = icmp ugt ptr %14, %3
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %4

17:                                               ; preds = %8, %4
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @per_cpu_ptr_to_phys(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @pcpu_base_addr, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = load i32, ptr @pcpu_low_unit_cpu, align 4
  %5 = load ptr, ptr @pcpu_unit_offsets, align 4
  %6 = getelementptr i32, ptr %5, i32 %4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %3
  %9 = load i32, ptr @pcpu_high_unit_cpu, align 4
  %10 = load i32, ptr @pcpu_unit_pages, align 4
  %11 = getelementptr i32, ptr %5, i32 %9
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %10, 12
  %14 = ptrtoint ptr %0 to i32
  %15 = icmp ule i32 %8, %14
  %16 = add i32 %13, %3
  %17 = add i32 %16, %12
  %18 = icmp ugt i32 %17, %14
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %20, label %52

20:                                               ; preds = %1
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = load i32, ptr @pcpu_unit_size, align 4
  br label %23

23:                                               ; preds = %27, %20
  %24 = phi i32 [ %25, %27 ], [ -1, %20 ]
  %25 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull @__cpu_possible_mask) #23
  %26 = icmp ult i32 %25, %21
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, ptrtoint (ptr @__per_cpu_start to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = icmp ule ptr %31, %0
  %33 = getelementptr i8, ptr %31, i32 %22
  %34 = icmp ugt ptr %33, %0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %23

36:                                               ; preds = %27
  %37 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %0) #22
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %14, i32 -2130706432, i32 8454144) #25, !srcloc !22
  br label %64

40:                                               ; preds = %36
  %41 = tail call ptr @vmalloc_to_page(ptr noundef %0) #22
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %41 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %43, %44
  %46 = lshr exact i32 %45, 5
  %47 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %48 = add i32 %46, %47
  %49 = shl i32 %48, 12
  %50 = and i32 %14, 4095
  %51 = or i32 %49, %50
  br label %64

52:                                               ; preds = %23, %1
  %53 = tail call ptr @vmalloc_to_page(ptr noundef %0) #22
  %54 = load ptr, ptr @mem_map, align 4
  %55 = ptrtoint ptr %53 to i32
  %56 = ptrtoint ptr %54 to i32
  %57 = sub i32 %55, %56
  %58 = lshr exact i32 %57, 5
  %59 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %60 = add i32 %58, %59
  %61 = shl i32 %60, 12
  %62 = and i32 %14, 4095
  %63 = or i32 %61, %62
  br label %64

64:                                               ; preds = %52, %40, %38
  %65 = phi i32 [ %51, %40 ], [ %39, %38 ], [ %63, %52 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @pcpu_alloc_alloc_info(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 section ".init.text" {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 12) #22
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 32) #22
  %7 = add i32 %6, 3
  %8 = and i32 %7, -4
  %9 = select i1 %4, i32 0, i32 %8
  %10 = shl i32 %1, 2
  %11 = add i32 %10, 4095
  %12 = add i32 %11, %9
  %13 = and i32 %12, -4096
  %14 = tail call ptr @memblock_alloc_try_nid(i32 noundef %13, i32 noundef 4096, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %14, i32 %9
  %18 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %14, i32 1, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp sgt i32 %1, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  store i32 16, ptr %17, align 4
  %21 = icmp eq i32 %1, 1
  br i1 %21, label %28, label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %26, %22 ], [ 1, %20 ]
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr i32, ptr %24, i32 %23
  store i32 16, ptr %25, align 4
  %26 = add nuw nsw i32 %23, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %22

28:                                               ; preds = %22, %20, %16
  %29 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %14, i32 0, i32 7
  store i32 %0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %14, i32 0, i32 6
  store i32 %13, ptr %30, align 4
  br label %31

31:                                               ; preds = %28, %2
  ret ptr %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @pcpu_free_alloc_info(ptr noundef %0) local_unnamed_addr #7 section ".init.text" {
  %2 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  tail call void @memblock_free(ptr noundef %0, i32 noundef %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @pcpu_setup_first_chunk(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #7 section ".init.text" {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, %8
  %10 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %17, !prof !11

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #24
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %15, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2613, 0\0A.popsection", ""() #22, !srcloc !23
  unreachable

17:                                               ; preds = %2
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %19, label %23, !prof !11

19:                                               ; preds = %17
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #24
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %21, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2615, 0\0A.popsection", ""() #22, !srcloc !24
  unreachable

23:                                               ; preds = %17
  br i1 icmp ne (i32 and (i32 ptrtoint (ptr @__per_cpu_start to i32), i32 4095), i32 0), label %24, label %28, !prof !11

24:                                               ; preds = %23
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #24
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %26, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2616, 0\0A.popsection", ""() #22, !srcloc !25
  unreachable

28:                                               ; preds = %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %30, label %34, !prof !11

30:                                               ; preds = %28
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #24
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %32, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2618, 0\0A.popsection", ""() #22, !srcloc !26
  unreachable

34:                                               ; preds = %28
  %35 = ptrtoint ptr %1 to i32
  %36 = and i32 %35, 4095
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !10

38:                                               ; preds = %34
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #24
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %40, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2619, 0\0A.popsection", ""() #22, !srcloc !27
  unreachable

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %0, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %44, %9
  br i1 %45, label %46, label %50, !prof !11

46:                                               ; preds = %42
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #24
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %48, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2620, 0\0A.popsection", ""() #22, !srcloc !28
  unreachable

50:                                               ; preds = %42
  %51 = and i32 %44, 4095
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !10

53:                                               ; preds = %50
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #24
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %55, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2621, 0\0A.popsection", ""() #22, !srcloc !29
  unreachable

57:                                               ; preds = %50
  %58 = icmp ult i32 %44, 32768
  br i1 %58, label %59, label %63, !prof !11

59:                                               ; preds = %57
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #24
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %61, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2622, 0\0A.popsection", ""() #22, !srcloc !30
  unreachable

63:                                               ; preds = %57
  %64 = icmp ult i32 %8, 12288
  br i1 %64, label %65, label %69, !prof !11

65:                                               ; preds = %63
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #24
  %67 = load i32, ptr @nr_cpu_ids, align 4
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %67, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2624, 0\0A.popsection", ""() #22, !srcloc !31
  unreachable

69:                                               ; preds = %63
  %70 = and i32 %5, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72, !prof !10

72:                                               ; preds = %69
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #24
  %74 = load i32, ptr @nr_cpu_ids, align 4
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %74, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2626, 0\0A.popsection", ""() #22, !srcloc !32
  unreachable

76:                                               ; preds = %69
  %77 = shl i32 %11, 2
  %78 = tail call ptr @memblock_alloc_try_nid(i32 noundef %77, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pcpu_setup_first_chunk, i32 noundef %77) #26
  unreachable

81:                                               ; preds = %76
  %82 = load i32, ptr %10, align 4
  %83 = shl i32 %82, 2
  %84 = tail call ptr @memblock_alloc_try_nid(i32 noundef %83, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pcpu_setup_first_chunk, i32 noundef %83) #26
  unreachable

87:                                               ; preds = %81
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %89 = shl i32 %88, 2
  %90 = tail call ptr @memblock_alloc_try_nid(i32 noundef %89, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pcpu_setup_first_chunk, i32 noundef %89) #26
  unreachable

93:                                               ; preds = %87
  %94 = load i32, ptr @nr_cpu_ids, align 4
  %95 = shl i32 %94, 2
  %96 = tail call ptr @memblock_alloc_try_nid(i32 noundef %95, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, ptr @nr_cpu_ids, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %108, label %102

101:                                              ; preds = %93
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pcpu_setup_first_chunk, i32 noundef %95) #26
  unreachable

102:                                              ; preds = %102, %98
  %103 = phi i32 [ %105, %102 ], [ 0, %98 ]
  %104 = getelementptr i32, ptr %90, i32 %103
  store i32 -1, ptr %104, align 4
  %105 = add nuw i32 %103, 1
  %106 = load i32, ptr @nr_cpu_ids, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %102, label %108

108:                                              ; preds = %102, %98
  %109 = phi i32 [ 0, %98 ], [ %106, %102 ]
  store i32 16, ptr @pcpu_low_unit_cpu, align 4
  store i32 16, ptr @pcpu_high_unit_cpu, align 4
  %110 = load i32, ptr %10, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %206

112:                                              ; preds = %196, %108
  %113 = phi i32 [ %200, %196 ], [ 0, %108 ]
  %114 = phi i32 [ %201, %196 ], [ 0, %108 ]
  %115 = phi i32 [ %198, %196 ], [ 16, %108 ]
  %116 = phi i32 [ %197, %196 ], [ 16, %108 ]
  %117 = getelementptr %struct.pcpu_alloc_info, ptr %0, i32 0, i32 8, i32 %113
  %118 = getelementptr %struct.pcpu_alloc_info, ptr %0, i32 0, i32 8, i32 %113, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i32, ptr %78, i32 %113
  store i32 %119, ptr %120, align 4
  %121 = load i32, ptr %117, align 4
  %122 = load i32, ptr %43, align 4
  %123 = mul i32 %122, %121
  %124 = getelementptr i32, ptr %84, i32 %113
  store i32 %123, ptr %124, align 4
  %125 = load i32, ptr %117, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %196

127:                                              ; preds = %112
  %128 = getelementptr %struct.pcpu_alloc_info, ptr %0, i32 0, i32 8, i32 %113, i32 2
  br label %129

129:                                              ; preds = %188, %127
  %130 = phi i32 [ %116, %127 ], [ %189, %188 ]
  %131 = phi i32 [ %115, %127 ], [ %190, %188 ]
  %132 = phi i32 [ 0, %127 ], [ %193, %188 ]
  %133 = phi i32 [ %115, %127 ], [ %192, %188 ]
  %134 = phi i32 [ %116, %127 ], [ %191, %188 ]
  %135 = load ptr, ptr %128, align 4
  %136 = getelementptr i32, ptr %135, i32 %132
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 16
  br i1 %138, label %188, label %139

139:                                              ; preds = %129
  %140 = load i32, ptr @nr_cpu_ids, align 4
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %146, label %142, !prof !10

142:                                              ; preds = %139
  %143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #24
  %144 = load i32, ptr @nr_cpu_ids, align 4
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %144, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2673, 0\0A.popsection", ""() #22, !srcloc !33
  unreachable

146:                                              ; preds = %139
  %147 = lshr i32 %137, 5
  %148 = getelementptr i32, ptr @__cpu_possible_mask, i32 %147
  %149 = load volatile i32, ptr %148, align 4
  %150 = and i32 %137, 31
  %151 = shl nuw i32 1, %150
  %152 = and i32 %149, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158, !prof !11

154:                                              ; preds = %146
  %155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #24
  %156 = load i32, ptr @nr_cpu_ids, align 4
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %156, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2674, 0\0A.popsection", ""() #22, !srcloc !34
  unreachable

158:                                              ; preds = %146
  %159 = getelementptr i32, ptr %90, i32 %137
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %166, label %162, !prof !10

162:                                              ; preds = %158
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #24
  %164 = load i32, ptr @nr_cpu_ids, align 4
  %165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %164, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2675, 0\0A.popsection", ""() #22, !srcloc !35
  unreachable

166:                                              ; preds = %158
  %167 = add i32 %132, %114
  store i32 %167, ptr %159, align 4
  %168 = load i32, ptr %118, align 4
  %169 = load i32, ptr %43, align 4
  %170 = mul i32 %169, %132
  %171 = add i32 %170, %168
  %172 = getelementptr i32, ptr %96, i32 %137
  store i32 %171, ptr %172, align 4
  %173 = icmp eq i32 %133, 16
  br i1 %173, label %178, label %174

174:                                              ; preds = %166
  %175 = getelementptr i32, ptr %96, i32 %133
  %176 = load i32, ptr %175, align 4
  %177 = icmp ult i32 %171, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174, %166
  store i32 %137, ptr @pcpu_low_unit_cpu, align 4
  br label %179

179:                                              ; preds = %178, %174
  %180 = phi i32 [ %137, %178 ], [ %131, %174 ]
  %181 = phi i32 [ %137, %178 ], [ %133, %174 ]
  %182 = icmp eq i32 %134, 16
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = getelementptr i32, ptr %96, i32 %134
  %185 = load i32, ptr %184, align 4
  %186 = icmp ugt i32 %171, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183, %179
  store i32 %137, ptr @pcpu_high_unit_cpu, align 4
  br label %188

188:                                              ; preds = %187, %183, %129
  %189 = phi i32 [ %130, %183 ], [ %137, %187 ], [ %130, %129 ]
  %190 = phi i32 [ %180, %183 ], [ %180, %187 ], [ %131, %129 ]
  %191 = phi i32 [ %134, %183 ], [ %137, %187 ], [ %134, %129 ]
  %192 = phi i32 [ %181, %183 ], [ %181, %187 ], [ %133, %129 ]
  %193 = add nuw nsw i32 %132, 1
  %194 = load i32, ptr %117, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %129, label %196

196:                                              ; preds = %188, %112
  %197 = phi i32 [ %116, %112 ], [ %189, %188 ]
  %198 = phi i32 [ %115, %112 ], [ %190, %188 ]
  %199 = phi i32 [ 0, %112 ], [ %193, %188 ]
  %200 = add nuw nsw i32 %113, 1
  %201 = add i32 %199, %114
  %202 = load i32, ptr %10, align 4
  %203 = icmp slt i32 %200, %202
  br i1 %203, label %112, label %204

204:                                              ; preds = %196
  %205 = load i32, ptr @nr_cpu_ids, align 4
  br label %206

206:                                              ; preds = %204, %108
  %207 = phi i32 [ %109, %108 ], [ %205, %204 ]
  %208 = phi i32 [ 0, %108 ], [ %201, %204 ]
  store i32 %208, ptr @pcpu_nr_units, align 4
  br label %209

209:                                              ; preds = %213, %206
  %210 = phi i32 [ -1, %206 ], [ %211, %213 ]
  %211 = tail call i32 @cpumask_next(i32 noundef %210, ptr noundef nonnull @__cpu_possible_mask) #23
  %212 = icmp ult i32 %211, %207
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  %214 = getelementptr i32, ptr %90, i32 %211
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %209, !prof !11

217:                                              ; preds = %213
  %218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #24
  %219 = load i32, ptr @nr_cpu_ids, align 4
  %220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %219, ptr noundef nonnull @__cpu_possible_mask) #24
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.3, ptr noundef %0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2692, 0\0A.popsection", ""() #22, !srcloc !36
  unreachable

221:                                              ; preds = %209
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.21, ptr noundef %0)
  %222 = load i32, ptr %10, align 4
  store i32 %222, ptr @pcpu_nr_groups, align 4
  store ptr %78, ptr @pcpu_group_offsets, align 4
  store ptr %84, ptr @pcpu_group_sizes, align 4
  store ptr %90, ptr @pcpu_unit_map, align 4
  store ptr %96, ptr @pcpu_unit_offsets, align 4
  %223 = load i32, ptr %43, align 4
  %224 = lshr i32 %223, 12
  store i32 %224, ptr @pcpu_unit_pages, align 4
  %225 = and i32 %223, -4096
  store i32 %225, ptr @pcpu_unit_size, align 4
  %226 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %0, i32 0, i32 4
  %227 = load i32, ptr %226, align 4
  store i32 %227, ptr @pcpu_atom_size, align 4
  %228 = add nuw nsw i32 %224, 31
  %229 = lshr i32 %228, 3
  %230 = and i32 %229, 262140
  %231 = add nuw nsw i32 %230, 88
  store i32 %231, ptr @pcpu_chunk_struct_size, align 4
  %232 = icmp eq i32 %225, 0
  %233 = tail call i32 @llvm.ctlz.i32(i32 %225, i1 false) #22, !range !13
  %234 = sub nsw i32 29, %233
  %235 = tail call i32 @llvm.smax.i32(i32 %234, i32 1) #22
  %236 = select i1 %232, i32 1, i32 %235
  %237 = add nuw nsw i32 %236, 1
  store i32 %237, ptr @pcpu_sidelined_slot, align 4
  %238 = add nuw nsw i32 %236, 2
  store i32 %238, ptr @pcpu_free_slot, align 4
  %239 = add nuw nsw i32 %236, 3
  store i32 %239, ptr @pcpu_to_depopulate_slot, align 4
  %240 = add nuw nsw i32 %236, 4
  store i32 %240, ptr @pcpu_nr_slots, align 4
  %241 = shl nuw nsw i32 %240, 3
  %242 = tail call ptr @memblock_alloc_try_nid(i32 noundef %241, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  store ptr %242, ptr @pcpu_chunk_lists, align 4
  %243 = icmp eq ptr %242, null
  %244 = load i32, ptr @pcpu_nr_slots, align 4
  br i1 %243, label %251, label %245

245:                                              ; preds = %221
  %246 = icmp sgt i32 %244, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %245
  store volatile ptr %242, ptr %242, align 4
  %248 = getelementptr %struct.list_head, ptr %242, i32 0, i32 1
  store ptr %242, ptr %248, align 4
  %249 = load i32, ptr @pcpu_nr_slots, align 4
  %250 = icmp sgt i32 %249, 1
  br i1 %250, label %253, label %261

251:                                              ; preds = %221
  %252 = shl i32 %244, 3
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pcpu_setup_first_chunk, i32 noundef %252) #26
  unreachable

253:                                              ; preds = %253, %247
  %254 = phi i32 [ %258, %253 ], [ 1, %247 ]
  %255 = load ptr, ptr @pcpu_chunk_lists, align 4
  %256 = getelementptr %struct.list_head, ptr %255, i32 %254
  store volatile ptr %256, ptr %256, align 4
  %257 = getelementptr %struct.list_head, ptr %255, i32 %254, i32 1
  store ptr %256, ptr %257, align 4
  %258 = add nuw nsw i32 %254, 1
  %259 = load i32, ptr @pcpu_nr_slots, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %253, label %261

261:                                              ; preds = %253, %247, %245
  %262 = load i32, ptr %0, align 4
  %263 = add i32 %262, 3
  %264 = and i32 %263, -4
  %265 = load i32, ptr %7, align 4
  %266 = sub i32 %262, %264
  %267 = add i32 %266, %265
  %268 = add i32 %264, %35
  %269 = load i32, ptr %4, align 4
  %270 = icmp eq i32 %269, 0
  %271 = select i1 %270, i32 %267, i32 %269
  %272 = tail call fastcc ptr @pcpu_alloc_first_chunk(i32 noundef %268, i32 noundef %271) #27
  %273 = load i32, ptr %4, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %261
  store ptr %272, ptr @pcpu_reserved_chunk, align 4
  %276 = add i32 %273, %268
  %277 = tail call fastcc ptr @pcpu_alloc_first_chunk(i32 noundef %276, i32 noundef %267) #27
  br label %278

278:                                              ; preds = %275, %261
  %279 = phi ptr [ %277, %275 ], [ %272, %261 ]
  store ptr %279, ptr @pcpu_first_chunk, align 4
  %280 = getelementptr inbounds %struct.pcpu_chunk, ptr %279, i32 0, i32 14
  %281 = load i32, ptr %280, align 4
  store i32 %281, ptr @pcpu_nr_empty_pop_pages, align 4
  %282 = getelementptr inbounds %struct.pcpu_chunk, ptr %279, i32 0, i32 1
  %283 = load i32, ptr %282, align 4
  %284 = icmp slt i32 %283, 4
  br i1 %284, label %301, label %285

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.pcpu_chunk, ptr %279, i32 0, i32 2, i32 2
  %287 = load i32, ptr %286, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %301, label %289

289:                                              ; preds = %285
  %290 = shl i32 %287, 2
  %291 = load i32, ptr @pcpu_unit_size, align 4
  %292 = icmp eq i32 %291, %290
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = load i32, ptr @pcpu_free_slot, align 4
  br label %301

295:                                              ; preds = %289
  %296 = icmp eq i32 %290, 0
  %297 = tail call i32 @llvm.ctlz.i32(i32 %290, i1 false) #22, !range !13
  %298 = sub nsw i32 29, %297
  %299 = tail call i32 @llvm.smax.i32(i32 %298, i32 1) #22
  %300 = select i1 %296, i32 1, i32 %299
  br label %301

301:                                              ; preds = %295, %293, %285, %278
  %302 = phi i32 [ 0, %285 ], [ 0, %278 ], [ %294, %293 ], [ %300, %295 ]
  %303 = getelementptr inbounds %struct.pcpu_chunk, ptr %279, i32 0, i32 9
  %304 = load i8, ptr %303, align 1, !range !15
  %305 = icmp ne i8 %304, 0
  %306 = icmp eq i32 %302, -1
  %307 = select i1 %305, i1 true, i1 %306
  %308 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %309 = icmp eq ptr %308, %279
  %310 = select i1 %307, i1 true, i1 %309
  br i1 %310, label %329, label %311

311:                                              ; preds = %301
  %312 = icmp sgt i32 %302, -1
  %313 = load ptr, ptr @pcpu_chunk_lists, align 4
  %314 = getelementptr %struct.list_head, ptr %313, i32 %302
  %315 = getelementptr inbounds %struct.list_head, ptr %279, i32 0, i32 1
  %316 = load ptr, ptr %315, align 4
  %317 = load ptr, ptr %279, align 4
  %318 = getelementptr inbounds %struct.list_head, ptr %317, i32 0, i32 1
  store ptr %316, ptr %318, align 4
  store volatile ptr %317, ptr %316, align 4
  br i1 %312, label %319, label %322

319:                                              ; preds = %311
  %320 = load ptr, ptr %314, align 4
  %321 = getelementptr inbounds %struct.list_head, ptr %320, i32 0, i32 1
  br label %325

322:                                              ; preds = %311
  %323 = getelementptr %struct.list_head, ptr %313, i32 %302, i32 1
  %324 = load ptr, ptr %323, align 4
  br label %325

325:                                              ; preds = %322, %319
  %326 = phi ptr [ %321, %319 ], [ %323, %322 ]
  %327 = phi ptr [ %320, %319 ], [ %314, %322 ]
  %328 = phi ptr [ %314, %319 ], [ %324, %322 ]
  store ptr %279, ptr %326, align 4
  store ptr %327, ptr %279, align 4
  store ptr %328, ptr %315, align 4
  store volatile ptr %279, ptr %328, align 4
  br label %329

329:                                              ; preds = %325, %301
  %330 = lshr i32 %9, 12
  %331 = load i32, ptr @pcpu_nr_populated, align 4
  %332 = add i32 %331, %330
  store i32 %332, ptr @pcpu_nr_populated, align 4
  %333 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_create_chunk, i32 0, i32 1), align 4
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %358

335:                                              ; preds = %329
  %336 = tail call ptr @llvm.thread.pointer() #22
  %337 = getelementptr inbounds %struct.thread_info, ptr %336, i32 0, i32 2
  %338 = load i32, ptr %337, align 8
  %339 = lshr i32 %338, 5
  %340 = getelementptr i32, ptr @__cpu_online_mask, i32 %339
  %341 = load volatile i32, ptr %340, align 4
  %342 = and i32 %338, 31
  %343 = shl nuw i32 1, %342
  %344 = and i32 %343, %341
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %358, label %346

346:                                              ; preds = %335
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !37
  %347 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_create_chunk, i32 0, i32 7), align 4
  %348 = icmp eq ptr %347, null
  br i1 %348, label %357, label %349

349:                                              ; preds = %349, %346
  %350 = phi ptr [ %354, %349 ], [ %347, %346 ]
  %351 = load volatile ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.tracepoint_func, ptr %350, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  tail call void %351(ptr noundef %353, ptr noundef nonnull %1) #22
  %354 = getelementptr %struct.tracepoint_func, ptr %350, i32 1
  %355 = load ptr, ptr %354, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %349

357:                                              ; preds = %349, %346
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !38
  br label %358

358:                                              ; preds = %357, %335, %329
  store ptr %1, ptr @pcpu_base_addr, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcpu_dump_alloc_info(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 1 dereferenceable(9) @__const.pcpu_dump_alloc_info.empty_str, i32 9, i1 false)
  %4 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 9
  %7 = icmp ult i32 %6, 19
  br i1 %7, label %15, label %8

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %12, %8 ], [ 1, %2 ]
  %10 = phi i32 [ %11, %8 ], [ %5, %2 ]
  %11 = sdiv i32 %10, 10
  %12 = add i32 %9, 1
  %13 = add nsw i32 %11, 9
  %14 = icmp ult i32 %13, 19
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %2
  %16 = phi i32 [ 1, %2 ], [ %12, %8 ]
  %17 = load i32, ptr @__cpu_possible_mask, align 4
  %18 = and i32 %17, 65535
  %19 = tail call i32 @__sw_hweight32(i32 noundef %18) #22
  %20 = add i32 %19, 9
  %21 = icmp ult i32 %20, 19
  br i1 %21, label %29, label %22

22:                                               ; preds = %22, %15
  %23 = phi i32 [ %26, %22 ], [ 1, %15 ]
  %24 = phi i32 [ %25, %22 ], [ %19, %15 ]
  %25 = sdiv i32 %24, 10
  %26 = add i32 %23, 1
  %27 = add nsw i32 %25, 9
  %28 = icmp ult i32 %27, 19
  br i1 %28, label %29, label %22

29:                                               ; preds = %22, %15
  %30 = phi i32 [ 1, %15 ], [ %26, %22 ]
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 8)
  %32 = getelementptr [9 x i8], ptr %3, i32 0, i32 %31
  store i8 0, ptr %32, align 1
  %33 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %1, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = udiv i32 %34, %36
  %38 = add i32 %16, 3
  %39 = add i32 %30, 1
  %40 = mul i32 %37, %39
  %41 = add i32 %38, %40
  %42 = sdiv i32 60, %41
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 1)
  %44 = tail call i32 @llvm.ctlz.i32(i32 %43, i1 false) #22, !range !13
  %45 = lshr exact i32 -2147483648, %44
  %46 = load i32, ptr %1, align 4
  %47 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %1, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %1, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = udiv i32 %34, %52
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %0, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %36, i32 noundef %53, i32 noundef %52) #24
  %55 = load i32, ptr %4, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %115

57:                                               ; preds = %29
  %58 = add i32 %45, -1
  br label %59

59:                                               ; preds = %110, %57
  %60 = phi i32 [ %111, %110 ], [ %55, %57 ]
  %61 = phi i32 [ %112, %110 ], [ 0, %57 ]
  %62 = phi i32 [ %74, %110 ], [ 0, %57 ]
  %63 = phi i32 [ %113, %110 ], [ 0, %57 ]
  %64 = getelementptr %struct.pcpu_alloc_info, ptr %1, i32 0, i32 8, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = freeze i32 %65
  %67 = freeze i32 %37
  %68 = sdiv i32 %66, %67
  %69 = mul i32 %68, %67
  %70 = sub i32 %66, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !10

72:                                               ; preds = %59
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2512, 0\0A.popsection", ""() #22, !srcloc !39
  unreachable

73:                                               ; preds = %59
  %74 = add i32 %68, %62
  %75 = icmp slt i32 %61, %74
  br i1 %75, label %76, label %110

76:                                               ; preds = %73
  %77 = getelementptr %struct.pcpu_alloc_info, ptr %1, i32 0, i32 8, i32 %63, i32 2
  br label %78

78:                                               ; preds = %104, %76
  %79 = phi i32 [ %61, %76 ], [ %106, %104 ]
  %80 = phi i32 [ 0, %76 ], [ %89, %104 ]
  %81 = phi i32 [ 0, %76 ], [ %105, %104 ]
  %82 = and i32 %79, %58
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #24
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %0) #24
  br label %87

87:                                               ; preds = %84, %78
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %16, i32 noundef %63) #24
  %89 = add i32 %80, %37
  %90 = icmp slt i32 %81, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %101, %87
  %92 = phi i32 [ %102, %101 ], [ %81, %87 ]
  %93 = load ptr, ptr %77, align 4
  %94 = getelementptr i32, ptr %93, i32 %92
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 16
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %30, i32 noundef %95) #24
  br label %101

99:                                               ; preds = %91
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull %3) #24
  br label %101

101:                                              ; preds = %99, %97
  %102 = add nsw i32 %92, 1
  %103 = icmp slt i32 %102, %89
  br i1 %103, label %91, label %104

104:                                              ; preds = %101, %87
  %105 = phi i32 [ %81, %87 ], [ %102, %101 ]
  %106 = add nsw i32 %79, 1
  %107 = icmp eq i32 %106, %74
  br i1 %107, label %108, label %78

108:                                              ; preds = %104
  %109 = load i32, ptr %4, align 4
  br label %110

110:                                              ; preds = %108, %73
  %111 = phi i32 [ %60, %73 ], [ %109, %108 ]
  %112 = phi i32 [ %61, %73 ], [ %74, %108 ]
  %113 = add nuw nsw i32 %63, 1
  %114 = icmp slt i32 %113, %111
  br i1 %114, label %59, label %115

115:                                              ; preds = %110, %29
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #24
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_alloc_first_chunk(i32 noundef %0, i32 noundef %1) unnamed_addr #7 section ".init.text" {
  %3 = and i32 %0, 4095
  %4 = tail call i32 @lcm(i32 noundef 4096, i32 noundef 4096) #28
  %5 = add i32 %3, %1
  %6 = add i32 %5, -1
  %7 = add i32 %6, %4
  %8 = sub i32 0, %4
  %9 = and i32 %7, %8
  %10 = ashr i32 %9, 12
  %11 = add nsw i32 %10, 31
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 536870908
  %14 = add nuw nsw i32 %13, 88
  %15 = tail call ptr @memblock_alloc_try_nid(i32 noundef %14, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk, i32 noundef %14) #26
  unreachable

18:                                               ; preds = %2
  %19 = and i32 %0, -4096
  store volatile ptr %15, ptr %15, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %15, ptr %20, align 4
  %21 = inttoptr i32 %19 to ptr
  %22 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 10
  store i32 %3, ptr %23, align 4
  %24 = sub i32 %9, %5
  %25 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 11
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 12
  store i32 %10, ptr %26, align 4
  %27 = shl nsw i32 %10, 10
  %28 = and i32 %27, 1073740800
  %29 = lshr exact i32 %28, 3
  %30 = tail call ptr @memblock_alloc_try_nid(i32 noundef %29, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %31 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 4
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk, i32 noundef %29) #26
  unreachable

34:                                               ; preds = %18
  %35 = or i32 %29, 4
  %36 = tail call ptr @memblock_alloc_try_nid(i32 noundef %35, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %37 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 5
  store ptr %36, ptr %37, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk, i32 noundef %35) #26
  unreachable

40:                                               ; preds = %34
  %41 = load i32, ptr %26, align 4
  %42 = shl i32 %41, 5
  %43 = and i32 %42, 33554400
  %44 = tail call ptr @memblock_alloc_try_nid(i32 noundef %43, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %45 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 6
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk, i32 noundef %43) #26
  unreachable

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 2
  %50 = load i32, ptr %26, align 4
  %51 = shl i32 %50, 10
  %52 = and i32 %51, 1073740800
  store i32 0, ptr %49, align 4
  %53 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 2, i32 2
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 2, i32 4
  store i32 %52, ptr %54, align 4
  %55 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 2, i32 5
  store i32 %52, ptr %55, align 4
  %56 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 2, i32 6
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 2, i32 7
  store i32 %52, ptr %57, align 4
  %58 = and i32 %50, 1048575
  %59 = getelementptr %struct.pcpu_block_md, ptr %44, i32 %58
  %60 = icmp eq ptr %44, %59
  br i1 %60, label %74, label %61

61:                                               ; preds = %61, %48
  %62 = phi ptr [ %68, %61 ], [ %44, %48 ]
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.pcpu_block_md, ptr %62, i32 0, i32 2
  store i32 1024, ptr %63, align 4
  %64 = getelementptr inbounds %struct.pcpu_block_md, ptr %62, i32 0, i32 4
  store i32 1024, ptr %64, align 4
  %65 = getelementptr inbounds %struct.pcpu_block_md, ptr %62, i32 0, i32 5
  store i32 1024, ptr %65, align 4
  %66 = getelementptr inbounds %struct.pcpu_block_md, ptr %62, i32 0, i32 6
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.pcpu_block_md, ptr %62, i32 0, i32 7
  store i32 1024, ptr %67, align 4
  %68 = getelementptr %struct.pcpu_block_md, ptr %62, i32 1
  %69 = load ptr, ptr %45, align 4
  %70 = load i32, ptr %26, align 4
  %71 = and i32 %70, 1048575
  %72 = getelementptr %struct.pcpu_block_md, ptr %69, i32 %71
  %73 = icmp eq ptr %68, %72
  br i1 %73, label %74, label %61

74:                                               ; preds = %61, %48
  %75 = phi i32 [ %50, %48 ], [ %70, %61 ]
  %76 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 8
  store i8 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 15
  %78 = add i32 %75, 31
  %79 = lshr i32 %78, 3
  %80 = and i32 %79, 536870908
  tail call void @llvm.memset.p0.i32(ptr align 4 %77, i8 -1, i32 %80, i1 false) #22
  %81 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 13
  store i32 %75, ptr %81, align 4
  %82 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 14
  store i32 %75, ptr %82, align 4
  %83 = getelementptr inbounds %struct.pcpu_chunk, ptr %15, i32 0, i32 1
  store i32 %1, ptr %83, align 4
  %84 = load i32, ptr %23, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %74
  %87 = sdiv i32 %84, 4
  %88 = load ptr, ptr %31, align 4
  tail call void @__bitmap_set(ptr noundef %88, i32 noundef 0, i32 noundef %87) #22
  %89 = load ptr, ptr %37, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %89) #22
  %90 = load ptr, ptr %37, align 4
  tail call void @_set_bit(i32 noundef %87, ptr noundef %90) #22
  store i32 %87, ptr %56, align 4
  tail call fastcc void @pcpu_block_update_hint_alloc(ptr noundef nonnull %15, i32 noundef 0, i32 noundef %87)
  br label %91

91:                                               ; preds = %86, %74
  %92 = load i32, ptr %25, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %91
  %95 = sdiv i32 %92, 4
  %96 = load ptr, ptr %31, align 4
  %97 = load i32, ptr %26, align 4
  %98 = shl i32 %97, 10
  %99 = and i32 %98, 1073740800
  %100 = sub nsw i32 %99, %95
  tail call void @__bitmap_set(ptr noundef %96, i32 noundef %100, i32 noundef %95) #22
  %101 = sdiv i32 %5, 4
  %102 = load ptr, ptr %37, align 4
  tail call void @_set_bit(i32 noundef %101, ptr noundef %102) #22
  %103 = load ptr, ptr %37, align 4
  tail call void @_set_bit(i32 noundef %28, ptr noundef %103) #22
  %104 = load i32, ptr %26, align 4
  %105 = shl i32 %104, 10
  %106 = and i32 %105, 1073740800
  %107 = sub nsw i32 %106, %95
  tail call fastcc void @pcpu_block_update_hint_alloc(ptr noundef nonnull %15, i32 noundef %107, i32 noundef %95)
  br label %108

108:                                              ; preds = %94, %91
  ret ptr %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @percpu_alloc_setup(ptr noundef %0) #7 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull %0) #24
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ 0, %3 ], [ -22, %1 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @pcpu_embed_first_chunk(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture readnone %4) local_unnamed_addr #7 section ".init.text" {
  %6 = tail call fastcc ptr @pcpu_build_alloc_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #27
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %175

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 4
  %12 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %6, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %14, %16
  %18 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %6, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 2
  %21 = add i32 %20, 4095
  %22 = and i32 %21, -4096
  %23 = tail call ptr @memblock_alloc_try_nid(i32 noundef %22, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %10
  %26 = load i32, ptr %18, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %6, i32 0, i32 3
  br label %33

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %6, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  tail call void @memblock_free(ptr noundef %6, i32 noundef %32) #22
  br label %175

33:                                               ; preds = %61, %28
  %34 = phi ptr [ inttoptr (i32 -1 to ptr), %28 ], [ %64, %61 ]
  %35 = phi i32 [ 0, %28 ], [ %68, %61 ]
  %36 = phi i32 [ 0, %28 ], [ %69, %61 ]
  %37 = getelementptr %struct.pcpu_alloc_info, ptr %6, i32 0, i32 8, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = getelementptr %struct.pcpu_alloc_info, ptr %6, i32 0, i32 8, i32 %36, i32 2
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi i32 [ 0, %40 ], [ %47, %43 ]
  %45 = getelementptr i32, ptr %42, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = add nuw nsw i32 %44, 1
  %48 = icmp slt i32 %47, %38
  %49 = icmp eq i32 %46, 16
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %43, label %51

51:                                               ; preds = %43
  br i1 %49, label %52, label %53, !prof !11

52:                                               ; preds = %51, %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3097, 0\0A.popsection", ""() #22, !srcloc !40
  unreachable

53:                                               ; preds = %51
  %54 = load i32, ptr %29, align 4
  %55 = mul i32 %54, %38
  %56 = tail call fastcc ptr @pcpu_fc_alloc(i32 noundef %55, i32 noundef %2) #27
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, ptr %18, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %155, label %171

61:                                               ; preds = %53
  %62 = getelementptr ptr, ptr %23, i32 %36
  store ptr %56, ptr %62, align 4
  %63 = icmp ult ptr %56, %34
  %64 = select i1 %63, ptr %56, ptr %34
  %65 = getelementptr ptr, ptr %23, i32 %35
  %66 = load ptr, ptr %65, align 4
  %67 = icmp ugt ptr %56, %66
  %68 = select i1 %67, i32 %36, i32 %35
  %69 = add nuw nsw i32 %36, 1
  %70 = load i32, ptr %18, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %33, label %72

72:                                               ; preds = %61, %25
  %73 = phi i32 [ %26, %25 ], [ %70, %61 ]
  %74 = phi i32 [ 0, %25 ], [ %68, %61 ]
  %75 = phi ptr [ inttoptr (i32 -1 to ptr), %25 ], [ %64, %61 ]
  %76 = getelementptr ptr, ptr %23, i32 %74
  %77 = load ptr, ptr %76, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = ptrtoint ptr %75 to i32
  %80 = sub i32 %78, %79
  %81 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %6, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr %struct.pcpu_alloc_info, ptr %6, i32 0, i32 8, i32 %74
  %84 = load i32, ptr %83, align 4
  %85 = mul i32 %84, %82
  %86 = add i32 %85, %80
  %87 = load ptr, ptr @high_memory, align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = sub i32 -8388609, %88
  %90 = and i32 %89, -8388608
  %91 = mul i32 %90, 3
  %92 = lshr exact i32 %91, 2
  %93 = icmp ugt i32 %86, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %72
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %86, i32 noundef %90) #24
  %96 = load i32, ptr %18, align 4
  br label %97

97:                                               ; preds = %94, %72
  %98 = phi i32 [ %96, %94 ], [ %73, %72 ]
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %102, label %148

100:                                              ; preds = %134
  %101 = icmp sgt i32 %135, 0
  br i1 %101, label %138, label %148

102:                                              ; preds = %134, %97
  %103 = phi i32 [ %135, %134 ], [ %98, %97 ]
  %104 = phi i32 [ %136, %134 ], [ 0, %97 ]
  %105 = getelementptr %struct.pcpu_alloc_info, ptr %6, i32 0, i32 8, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %102
  %109 = getelementptr ptr, ptr %23, i32 %104
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr %struct.pcpu_alloc_info, ptr %6, i32 0, i32 8, i32 %104, i32 2
  br label %112

112:                                              ; preds = %126, %108
  %113 = phi ptr [ %110, %108 ], [ %129, %126 ]
  %114 = phi i32 [ 0, %108 ], [ %127, %126 ]
  %115 = load ptr, ptr %111, align 4
  %116 = getelementptr i32, ptr %115, i32 %114
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 16
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, ptr %81, align 4
  tail call void @memblock_free(ptr noundef %113, i32 noundef %120) #22
  br label %126

121:                                              ; preds = %112
  %122 = load i32, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %113, ptr nonnull align 1 @__per_cpu_load, i32 %122, i1 false)
  %123 = getelementptr i8, ptr %113, i32 %17
  %124 = load i32, ptr %81, align 4
  %125 = sub i32 %124, %17
  tail call void @memblock_free(ptr noundef %123, i32 noundef %125) #22
  br label %126

126:                                              ; preds = %121, %119
  %127 = add nuw nsw i32 %114, 1
  %128 = load i32, ptr %81, align 4
  %129 = getelementptr i8, ptr %113, i32 %128
  %130 = load i32, ptr %105, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %112, label %132

132:                                              ; preds = %126
  %133 = load i32, ptr %18, align 4
  br label %134

134:                                              ; preds = %132, %102
  %135 = phi i32 [ %133, %132 ], [ %103, %102 ]
  %136 = add nuw nsw i32 %104, 1
  %137 = icmp slt i32 %136, %135
  br i1 %137, label %102, label %100

138:                                              ; preds = %138, %100
  %139 = phi i32 [ %145, %138 ], [ 0, %100 ]
  %140 = getelementptr ptr, ptr %23, i32 %139
  %141 = load ptr, ptr %140, align 4
  %142 = ptrtoint ptr %141 to i32
  %143 = sub i32 %142, %79
  %144 = getelementptr %struct.pcpu_alloc_info, ptr %6, i32 0, i32 8, i32 %139, i32 1
  store i32 %143, ptr %144, align 4
  %145 = add nuw nsw i32 %139, 1
  %146 = load i32, ptr %18, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %138, label %148

148:                                              ; preds = %138, %100, %97
  %149 = lshr i32 %17, 12
  %150 = load i32, ptr %6, align 4
  %151 = load i32, ptr %12, align 4
  %152 = load i32, ptr %15, align 4
  %153 = load i32, ptr %81, align 4
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %149, i32 noundef %150, i32 noundef %151, i32 noundef %152, i32 noundef %153) #24
  tail call void @pcpu_setup_first_chunk(ptr noundef %6, ptr noundef %75) #27
  br label %171

155:                                              ; preds = %167, %58
  %156 = phi i32 [ %168, %167 ], [ %59, %58 ]
  %157 = phi i32 [ %169, %167 ], [ 0, %58 ]
  %158 = getelementptr ptr, ptr %23, i32 %157
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = getelementptr %struct.pcpu_alloc_info, ptr %6, i32 0, i32 8, i32 %157
  %163 = load i32, ptr %162, align 4
  %164 = load i32, ptr %29, align 4
  %165 = mul i32 %164, %163
  tail call void @memblock_free(ptr noundef nonnull %159, i32 noundef %165) #22
  %166 = load i32, ptr %18, align 4
  br label %167

167:                                              ; preds = %161, %155
  %168 = phi i32 [ %156, %155 ], [ %166, %161 ]
  %169 = add nuw nsw i32 %157, 1
  %170 = icmp slt i32 %169, %168
  br i1 %170, label %155, label %171

171:                                              ; preds = %167, %148, %58
  %172 = phi i32 [ 0, %148 ], [ -12, %58 ], [ -12, %167 ]
  %173 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %6, i32 0, i32 6
  %174 = load i32, ptr %173, align 4
  tail call void @memblock_free(ptr noundef %6, i32 noundef %174) #22
  tail call void @memblock_free(ptr noundef nonnull %23, i32 noundef %22) #22
  br label %175

175:                                              ; preds = %171, %30, %8
  %176 = phi i32 [ %9, %8 ], [ %172, %171 ], [ -12, %30 ]
  ret i32 %176
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_build_alloc_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #7 section ".init.text" {
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) @pcpu_build_alloc_info.group_map, i8 0, i32 64, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) @pcpu_build_alloc_info.group_cnt, i8 0, i32 64, i1 false)
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 12288)
  %6 = add i32 %0, add (i32 sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32)), i32 4095)
  %7 = add i32 %6, %5
  %8 = and i32 %7, -4096
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 32768)
  %10 = add i32 %2, -1
  %11 = add i32 %10, %9
  %12 = urem i32 %11, %2
  %13 = sub i32 %11, %12
  %14 = udiv i32 %13, %9
  br label %15

15:                                               ; preds = %26, %4
  %16 = phi i32 [ %14, %4 ], [ %27, %26 ]
  %17 = freeze i32 %13
  %18 = freeze i32 %16
  %19 = udiv i32 %17, %18
  %20 = mul i32 %19, %18
  %21 = sub i32 %17, %20
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %19, 4095
  %24 = icmp eq i32 %23, 0
  %25 = and i1 %22, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = add i32 %16, -1
  br label %15

28:                                               ; preds = %15
  %29 = add i32 %0, sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32))
  %30 = sub i32 %8, %29
  %31 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %31, ptr @pcpu_build_alloc_info.mask, align 4
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = icmp eq ptr %3, null
  br label %41

36:                                               ; preds = %67, %28
  %37 = phi i32 [ 0, %28 ], [ %68, %67 ]
  %38 = icmp eq i32 %16, 0
  br i1 %38, label %125, label %39

39:                                               ; preds = %36
  %40 = icmp sgt i32 %37, 0
  br label %72

41:                                               ; preds = %67, %34
  %42 = phi i32 [ 0, %34 ], [ %68, %67 ]
  %43 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @pcpu_build_alloc_info.mask, i32 noundef 16) #22
  %44 = getelementptr [16 x i32], ptr @pcpu_build_alloc_info.group_map, i32 0, i32 %43
  store i32 %42, ptr %44, align 4
  %45 = getelementptr [16 x i32], ptr @pcpu_build_alloc_info.group_cnt, i32 0, i32 %42
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  tail call void @_clear_bit(i32 noundef %43, ptr noundef nonnull @pcpu_build_alloc_info.mask) #22
  %48 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @pcpu_build_alloc_info.mask) #29
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %63, %41
  %52 = phi i32 [ %64, %63 ], [ %48, %41 ]
  br i1 %35, label %59, label %53

53:                                               ; preds = %51
  %54 = tail call i32 %3(i32 noundef %43, i32 noundef %52) #30
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = tail call i32 %3(i32 noundef %52, i32 noundef %43) #30
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %51
  %60 = getelementptr [16 x i32], ptr @pcpu_build_alloc_info.group_map, i32 0, i32 %52
  store i32 %42, ptr %60, align 4
  %61 = load i32, ptr %45, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %45, align 4
  tail call void @_clear_bit(i32 noundef %52, ptr noundef nonnull @pcpu_build_alloc_info.mask) #22
  br label %63

63:                                               ; preds = %59, %56, %53
  %64 = tail call i32 @cpumask_next(i32 noundef %52, ptr noundef nonnull @pcpu_build_alloc_info.mask) #29
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %51, label %67

67:                                               ; preds = %63, %41
  %68 = add i32 %42, 1
  %69 = load i32, ptr @pcpu_build_alloc_info.mask, align 4
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %36, label %41

72:                                               ; preds = %113, %39
  %73 = phi i32 [ %16, %39 ], [ %116, %113 ]
  %74 = phi i32 [ 0, %39 ], [ %114, %113 ]
  %75 = phi i32 [ 2147483647, %39 ], [ %115, %113 ]
  %76 = freeze i32 %13
  %77 = freeze i32 %73
  %78 = udiv i32 %76, %77
  %79 = mul i32 %78, %77
  %80 = sub i32 %76, %79
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %78, 4095
  %83 = icmp eq i32 %82, 0
  %84 = and i1 %81, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %72
  br i1 %40, label %86, label %102

86:                                               ; preds = %85
  %87 = add i32 %73, -1
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i32 [ 0, %86 ], [ %99, %88 ]
  %90 = phi i32 [ 0, %86 ], [ %96, %88 ]
  %91 = phi i32 [ 0, %86 ], [ %100, %88 ]
  %92 = getelementptr [16 x i32], ptr @pcpu_build_alloc_info.group_cnt, i32 0, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %87, %93
  %95 = sdiv i32 %94, %73
  %96 = add i32 %95, %90
  %97 = mul i32 %95, %73
  %98 = sub i32 %89, %93
  %99 = add i32 %98, %97
  %100 = add nuw nsw i32 %91, 1
  %101 = icmp eq i32 %100, %37
  br i1 %101, label %102, label %88

102:                                              ; preds = %88, %85
  %103 = phi i32 [ 0, %85 ], [ %96, %88 ]
  %104 = phi i32 [ 0, %85 ], [ %99, %88 ]
  %105 = load i32, ptr @__cpu_possible_mask, align 4
  %106 = and i32 %105, 65535
  %107 = tail call i32 @__sw_hweight32(i32 noundef %106) #22
  %108 = udiv i32 %107, 3
  %109 = icmp ugt i32 %104, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = icmp sgt i32 %103, %75
  %112 = tail call i32 @llvm.smin.i32(i32 %103, i32 %75)
  br i1 %111, label %118, label %113

113:                                              ; preds = %110, %102, %72
  %114 = phi i32 [ %73, %110 ], [ %74, %72 ], [ %74, %102 ]
  %115 = phi i32 [ %112, %110 ], [ %75, %72 ], [ %75, %102 ]
  %116 = add i32 %73, -1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %72

118:                                              ; preds = %113, %110
  %119 = phi i32 [ %114, %113 ], [ %74, %110 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121, !prof !11

121:                                              ; preds = %118
  %122 = icmp sgt i32 %37, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %121
  %124 = add i32 %119, -1
  br label %126

125:                                              ; preds = %118, %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2948, 0\0A.popsection", ""() #22, !srcloc !41
  unreachable

126:                                              ; preds = %126, %123
  %127 = phi i32 [ 0, %123 ], [ %134, %126 ]
  %128 = phi i32 [ 0, %123 ], [ %135, %126 ]
  %129 = getelementptr [16 x i32], ptr @pcpu_build_alloc_info.group_cnt, i32 0, i32 %128
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %124, %130
  %132 = srem i32 %131, %119
  %133 = sub i32 %127, %132
  %134 = add i32 %133, %131
  %135 = add nuw nsw i32 %128, 1
  %136 = icmp eq i32 %135, %37
  br i1 %136, label %137, label %126

137:                                              ; preds = %126, %121
  %138 = phi i32 [ 0, %121 ], [ %134, %126 ]
  %139 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 12) #22
  %140 = extractvalue { i32, i1 } %139, 1
  %141 = extractvalue { i32, i1 } %139, 0
  %142 = tail call i32 @llvm.uadd.sat.i32(i32 %141, i32 32) #22
  %143 = add i32 %142, 3
  %144 = and i32 %143, -4
  %145 = select i1 %140, i32 0, i32 %144
  %146 = shl i32 %138, 2
  %147 = add i32 %145, 4095
  %148 = add i32 %147, %146
  %149 = and i32 %148, -4096
  %150 = tail call ptr @memblock_alloc_try_nid(i32 noundef %149, i32 noundef 4096, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %151 = icmp eq ptr %150, null
  br i1 %151, label %233, label %152

152:                                              ; preds = %137
  %153 = getelementptr i8, ptr %150, i32 %145
  %154 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %150, i32 1, i32 2
  store ptr %153, ptr %154, align 4
  %155 = icmp sgt i32 %138, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  store i32 16, ptr %153, align 4
  %157 = icmp eq i32 %138, 1
  br i1 %157, label %164, label %158

158:                                              ; preds = %158, %156
  %159 = phi i32 [ %162, %158 ], [ 1, %156 ]
  %160 = load ptr, ptr %154, align 4
  %161 = getelementptr i32, ptr %160, i32 %159
  store i32 16, ptr %161, align 4
  %162 = add nuw nsw i32 %159, 1
  %163 = icmp eq i32 %162, %138
  br i1 %163, label %164, label %158

164:                                              ; preds = %158, %156, %152
  %165 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %150, i32 0, i32 7
  store i32 %37, ptr %165, align 4
  %166 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %150, i32 0, i32 6
  store i32 %149, ptr %166, align 4
  br i1 %122, label %167, label %182

167:                                              ; preds = %164
  %168 = load ptr, ptr %154, align 4
  %169 = add i32 %119, -1
  br label %170

170:                                              ; preds = %170, %167
  %171 = phi i32 [ 0, %167 ], [ %180, %170 ]
  %172 = phi ptr [ %168, %167 ], [ %179, %170 ]
  %173 = getelementptr %struct.pcpu_alloc_info, ptr %150, i32 0, i32 8, i32 %171, i32 2
  store ptr %172, ptr %173, align 4
  %174 = getelementptr [16 x i32], ptr @pcpu_build_alloc_info.group_cnt, i32 0, i32 %171
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %169, %175
  %177 = srem i32 %176, %119
  %178 = sub i32 %176, %177
  %179 = getelementptr i32, ptr %172, i32 %178
  %180 = add nuw nsw i32 %171, 1
  %181 = icmp eq i32 %180, %37
  br i1 %181, label %182, label %170

182:                                              ; preds = %170, %164
  store i32 sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32)), ptr %150, align 4
  %183 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %150, i32 0, i32 1
  store i32 %0, ptr %183, align 4
  %184 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %150, i32 0, i32 2
  store i32 %30, ptr %184, align 4
  %185 = udiv i32 %13, %119
  %186 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %150, i32 0, i32 3
  store i32 %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %150, i32 0, i32 4
  store i32 %2, ptr %187, align 4
  %188 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %150, i32 0, i32 5
  store i32 %13, ptr %188, align 4
  br i1 %122, label %189, label %229

189:                                              ; preds = %182
  %190 = add i32 %119, -1
  br label %191

191:                                              ; preds = %227, %189
  %192 = phi i32 [ %185, %189 ], [ %228, %227 ]
  %193 = phi i32 [ 0, %189 ], [ %225, %227 ]
  %194 = phi i32 [ 0, %189 ], [ %224, %227 ]
  %195 = getelementptr %struct.pcpu_alloc_info, ptr %150, i32 0, i32 8, i32 %193
  %196 = mul i32 %192, %194
  %197 = getelementptr %struct.pcpu_alloc_info, ptr %150, i32 0, i32 8, i32 %193, i32 1
  store i32 %196, ptr %197, align 4
  %198 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #29
  %199 = load i32, ptr @nr_cpu_ids, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %191
  %202 = getelementptr %struct.pcpu_alloc_info, ptr %150, i32 0, i32 8, i32 %193, i32 2
  br label %203

203:                                              ; preds = %215, %201
  %204 = phi i32 [ %199, %201 ], [ %216, %215 ]
  %205 = phi i32 [ %198, %201 ], [ %217, %215 ]
  %206 = getelementptr [16 x i32], ptr @pcpu_build_alloc_info.group_map, i32 0, i32 %205
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, %193
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load ptr, ptr %202, align 4
  %211 = load i32, ptr %195, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %195, align 4
  %213 = getelementptr i32, ptr %210, i32 %211
  store i32 %205, ptr %213, align 4
  %214 = load i32, ptr @nr_cpu_ids, align 4
  br label %215

215:                                              ; preds = %209, %203
  %216 = phi i32 [ %214, %209 ], [ %204, %203 ]
  %217 = tail call i32 @cpumask_next(i32 noundef %205, ptr noundef nonnull @__cpu_possible_mask) #29
  %218 = icmp ult i32 %217, %216
  br i1 %218, label %203, label %219

219:                                              ; preds = %215, %191
  %220 = load i32, ptr %195, align 4
  %221 = add i32 %190, %220
  %222 = srem i32 %221, %119
  %223 = sub i32 %221, %222
  store i32 %223, ptr %195, align 4
  %224 = add i32 %223, %194
  %225 = add nuw nsw i32 %193, 1
  %226 = icmp eq i32 %225, %37
  br i1 %226, label %229, label %227

227:                                              ; preds = %219
  %228 = load i32, ptr %186, align 4
  br label %191

229:                                              ; preds = %219, %182
  %230 = phi i32 [ 0, %182 ], [ %224, %219 ]
  %231 = icmp eq i32 %230, %138
  br i1 %231, label %233, label %232, !prof !10

232:                                              ; preds = %229
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2988, 0\0A.popsection", ""() #22, !srcloc !42
  unreachable

233:                                              ; preds = %229, %137
  %234 = phi ptr [ %150, %229 ], [ inttoptr (i32 -12 to ptr), %137 ]
  ret ptr %234
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_fc_alloc(i32 noundef %0, i32 noundef %1) unnamed_addr #7 section ".init.text" {
  %3 = load i32, ptr @arm_dma_zone_size, align 4
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 1342177279
  %6 = add i32 %3, -1073741824
  %7 = select i1 %5, i32 %6, i32 -1
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %7, i32 -2130706432, i32 8454144) #25, !srcloc !22
  %9 = tail call ptr @memblock_alloc_try_nid(i32 noundef %0, i32 noundef %1, i32 noundef %8, i32 noundef 0, i32 noundef -1) #22
  ret ptr %9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @setup_per_cpu_areas() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @pcpu_embed_first_chunk(i32 noundef 8192, i32 noundef 20480, i32 noundef 4096, ptr noundef null, ptr undef) #27
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.27) #26
  unreachable

4:                                                ; preds = %0
  %5 = load ptr, ptr @pcpu_base_addr, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = sub i32 %6, ptrtoint (ptr @__per_cpu_start to i32)
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %10 = icmp ult i32 %9, %8
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = load ptr, ptr @pcpu_unit_offsets, align 4
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ %9, %11 ], [ %19, %13 ]
  %15 = getelementptr i32, ptr %12, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %7, %16
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  store i32 %17, ptr %18, align 4
  %19 = tail call i32 @cpumask_next(i32 noundef %14, ptr noundef nonnull @__cpu_possible_mask) #23
  %20 = icmp ult i32 %19, %8
  br i1 %20, label %13, label %21

21:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pcpu_nr_pages() local_unnamed_addr #11 {
  %1 = load i32, ptr @pcpu_nr_populated, align 4
  %2 = load i32, ptr @pcpu_nr_units, align 4
  %3 = mul i32 %2, %1
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @percpu_enable_async() #12 section ".init.text" {
  store i1 true, ptr @pcpu_async_enabled, align 1
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_alloc_percpu(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !15
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 1, !range !15
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %5, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %5, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23, ptr noundef %25) #22
  %26 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %27

27:                                               ; preds = %8, %3
  %28 = phi i32 [ %26, %8 ], [ %6, %3 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_free_percpu(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %11, i32 noundef %13, ptr noundef %15) #22
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_alloc_percpu_fail(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !15
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 1, !range !15
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %19) #22
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_create_chunk(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_percpu_create_chunk, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %11) #22
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_destroy_chunk(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_percpu_destroy_chunk, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %11) #22
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pcpu_find_block_fit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %2, -1
  %10 = add i32 %9, %8
  %11 = sub i32 0, %2
  %12 = and i32 %10, %11
  %13 = sub i32 %1, %8
  %14 = add i32 %13, %12
  %15 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %74, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %8, %24
  %26 = icmp slt i32 %20, %1
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = add i32 %24, %20
  br label %33

30:                                               ; preds = %22, %18
  %31 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 6
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %32, %30 ]
  store i32 %34, ptr %5, align 4
  store i32 0, ptr %6, align 4
  call fastcc void @pcpu_next_fit_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %35 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 12
  %36 = load i32, ptr %5, align 4
  %37 = load i32, ptr %35, align 4
  %38 = shl i32 %37, 10
  %39 = and i32 %38, 1073740800
  %40 = icmp slt i32 %36, %39
  %41 = and i1 %40, %3
  br i1 %41, label %42, label %69

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 15
  br label %44

44:                                               ; preds = %59, %42
  %45 = phi i32 [ %36, %42 ], [ %64, %59 ]
  %46 = load i32, ptr %6, align 4
  %47 = shl i32 %45, 2
  %48 = ashr i32 %47, 12
  %49 = add i32 %46, %45
  %50 = shl i32 %49, 2
  %51 = add i32 %50, 4095
  %52 = lshr i32 %51, 12
  %53 = tail call i32 @_find_next_zero_bit_le(ptr noundef %43, i32 noundef %52, i32 noundef %48) #22
  %54 = icmp ult i32 %53, %52
  br i1 %54, label %59, label %55

55:                                               ; preds = %44
  %56 = load i32, ptr %35, align 4
  %57 = shl i32 %56, 10
  %58 = and i32 %57, 1073740800
  br label %69

59:                                               ; preds = %44
  %60 = add nuw i32 %53, 1
  %61 = tail call i32 @_find_next_bit_le(ptr noundef %43, i32 noundef %52, i32 noundef %60) #22
  %62 = shl i32 %61, 10
  %63 = and i32 %62, 1073740800
  store i32 %63, ptr %5, align 4
  store i32 0, ptr %6, align 4
  call fastcc void @pcpu_next_fit_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %64 = load i32, ptr %5, align 4
  %65 = load i32, ptr %35, align 4
  %66 = shl i32 %65, 10
  %67 = and i32 %66, 1073740800
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %44, label %69

69:                                               ; preds = %59, %55, %33
  %70 = phi i32 [ %39, %33 ], [ %58, %55 ], [ %67, %59 ]
  %71 = phi i32 [ %36, %33 ], [ %45, %55 ], [ %64, %59 ]
  %72 = icmp eq i32 %71, %70
  %73 = select i1 %72, i32 -1, i32 %71
  br label %74

74:                                               ; preds = %69, %4
  %75 = phi i32 [ -1, %4 ], [ %73, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pcpu_alloc_area(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = add i32 %2, -1
  %6 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = shl i32 %11, 2
  %15 = load i32, ptr @pcpu_unit_size, align 4
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, ptr @pcpu_free_slot, align 4
  br label %25

19:                                               ; preds = %13
  %20 = icmp eq i32 %14, 0
  %21 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #22, !range !13
  %22 = sub nsw i32 29, %21
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 1) #22
  %24 = select i1 %20, i32 1, i32 %23
  br label %25

25:                                               ; preds = %19, %17, %9, %4
  %26 = phi i32 [ 0, %9 ], [ 0, %4 ], [ %18, %17 ], [ %24, %19 ]
  %27 = add i32 %1, 1024
  %28 = add i32 %27, %3
  %29 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 10
  %32 = and i32 %31, 1073740800
  %33 = tail call i32 @llvm.smin.i32(i32 %28, i32 %32)
  %34 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @_find_next_zero_bit_le(ptr noundef %35, i32 noundef %33, i32 noundef %3) #22
  %37 = add i32 %36, %5
  %38 = sub i32 0, %2
  %39 = and i32 %37, %38
  %40 = add i32 %39, %1
  %41 = icmp ugt i32 %40, %33
  br i1 %41, label %77, label %42

42:                                               ; preds = %63, %25
  %43 = phi i32 [ %64, %63 ], [ 0, %25 ]
  %44 = phi i32 [ %65, %63 ], [ 0, %25 ]
  %45 = phi i32 [ %70, %63 ], [ %40, %25 ]
  %46 = phi i32 [ %69, %63 ], [ %39, %25 ]
  %47 = tail call i32 @_find_next_bit_le(ptr noundef %35, i32 noundef %45, i32 noundef %46) #22
  %48 = icmp ult i32 %47, %45
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = sub i32 %47, %46
  %51 = icmp ugt i32 %50, %44
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = icmp eq i32 %50, %44
  br i1 %53, label %54, label %63

54:                                               ; preds = %52
  %55 = icmp eq i32 %43, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %54
  %57 = icmp eq i32 %46, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = tail call i32 @llvm.cttz.i32(i32 %46, i1 true) #22, !range !13
  %60 = tail call i32 @llvm.cttz.i32(i32 %43, i1 true) #22, !range !13
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %56, %49
  br label %63

63:                                               ; preds = %62, %58, %54, %52
  %64 = phi i32 [ %46, %62 ], [ 0, %54 ], [ %43, %58 ], [ %43, %52 ]
  %65 = phi i32 [ %50, %62 ], [ %44, %54 ], [ %44, %58 ], [ %44, %52 ]
  %66 = add nuw i32 %47, 1
  %67 = tail call i32 @_find_next_zero_bit_le(ptr noundef %35, i32 noundef %33, i32 noundef %66) #22
  %68 = add i32 %67, %5
  %69 = and i32 %68, %38
  %70 = add i32 %69, %1
  %71 = icmp ugt i32 %70, %33
  br i1 %71, label %72, label %42

72:                                               ; preds = %63, %42
  %73 = phi i32 [ %64, %63 ], [ %43, %42 ]
  %74 = phi i32 [ %65, %63 ], [ %44, %42 ]
  %75 = phi i32 [ %70, %63 ], [ %46, %42 ]
  %76 = icmp slt i32 %75, %33
  br i1 %76, label %79, label %168

77:                                               ; preds = %25
  %78 = icmp slt i32 %40, %33
  br i1 %78, label %97, label %168

79:                                               ; preds = %72
  %80 = icmp eq i32 %74, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %79
  %82 = and i32 %73, 1023
  %83 = add i32 %82, %74
  %84 = icmp ugt i32 %83, 1024
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = lshr i32 %73, 10
  %87 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 6
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr %struct.pcpu_block_md, ptr %88, i32 %86
  %90 = load ptr, ptr %34, align 4
  %91 = shl nuw nsw i32 %86, 5
  %92 = getelementptr i32, ptr %90, i32 %91
  %93 = tail call i32 @_find_last_bit(ptr noundef %92, i32 noundef %82) #22
  %94 = icmp eq i32 %82, %93
  %95 = add i32 %93, 1
  %96 = select i1 %94, i32 0, i32 %95
  tail call fastcc void @pcpu_block_update(ptr noundef %89, i32 noundef %96, i32 noundef %83) #22
  br label %97

97:                                               ; preds = %85, %81, %79, %77
  %98 = phi i32 [ %75, %79 ], [ %75, %81 ], [ %75, %85 ], [ %40, %77 ]
  %99 = load ptr, ptr %34, align 4
  tail call void @__bitmap_set(ptr noundef %99, i32 noundef %98, i32 noundef %1) #22
  %100 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  tail call void @_set_bit(i32 noundef %98, ptr noundef %101) #22
  %102 = load ptr, ptr %100, align 4
  %103 = add i32 %98, 1
  %104 = add i32 %1, -1
  tail call void @__bitmap_clear(ptr noundef %102, i32 noundef %103, i32 noundef %104) #22
  %105 = add i32 %98, %1
  %106 = load ptr, ptr %100, align 4
  tail call void @_set_bit(i32 noundef %105, ptr noundef %106) #22
  %107 = mul i32 %1, -4
  %108 = load i32, ptr %6, align 4
  %109 = add i32 %108, %107
  store i32 %109, ptr %6, align 4
  %110 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %98, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %97
  %114 = load ptr, ptr %34, align 4
  %115 = load i32, ptr %29, align 4
  %116 = shl i32 %115, 10
  %117 = and i32 %116, 1073740800
  %118 = tail call i32 @_find_next_zero_bit_le(ptr noundef %114, i32 noundef %117, i32 noundef %105) #22
  store i32 %118, ptr %110, align 4
  br label %119

119:                                              ; preds = %113, %97
  tail call fastcc void @pcpu_block_update_hint_alloc(ptr noundef %0, i32 noundef %98, i32 noundef %1)
  %120 = load i32, ptr %6, align 4
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %138, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %122
  %127 = shl i32 %124, 2
  %128 = load i32, ptr @pcpu_unit_size, align 4
  %129 = icmp eq i32 %128, %127
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, ptr @pcpu_free_slot, align 4
  br label %138

132:                                              ; preds = %126
  %133 = icmp eq i32 %127, 0
  %134 = tail call i32 @llvm.ctlz.i32(i32 %127, i1 false) #22, !range !13
  %135 = sub nsw i32 29, %134
  %136 = tail call i32 @llvm.smax.i32(i32 %135, i32 1) #22
  %137 = select i1 %133, i32 1, i32 %136
  br label %138

138:                                              ; preds = %132, %130, %122, %119
  %139 = phi i32 [ 0, %122 ], [ 0, %119 ], [ %131, %130 ], [ %137, %132 ]
  %140 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 9
  %141 = load i8, ptr %140, align 1, !range !15
  %142 = icmp ne i8 %141, 0
  %143 = icmp eq i32 %139, %26
  %144 = select i1 %142, i1 true, i1 %143
  %145 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %146 = icmp eq ptr %145, %0
  %147 = select i1 %144, i1 true, i1 %146
  br i1 %147, label %166, label %148

148:                                              ; preds = %138
  %149 = icmp sgt i32 %139, %26
  %150 = load ptr, ptr @pcpu_chunk_lists, align 4
  %151 = getelementptr %struct.list_head, ptr %150, i32 %139
  %152 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %0, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %153, ptr %155, align 4
  store volatile ptr %154, ptr %153, align 4
  br i1 %149, label %156, label %159

156:                                              ; preds = %148
  %157 = load ptr, ptr %151, align 4
  %158 = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  br label %162

159:                                              ; preds = %148
  %160 = getelementptr %struct.list_head, ptr %150, i32 %139, i32 1
  %161 = load ptr, ptr %160, align 4
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi ptr [ %158, %156 ], [ %160, %159 ]
  %164 = phi ptr [ %157, %156 ], [ %151, %159 ]
  %165 = phi ptr [ %151, %156 ], [ %161, %159 ]
  store ptr %0, ptr %163, align 4
  store ptr %164, ptr %0, align 4
  store ptr %165, ptr %152, align 4
  store volatile ptr %0, ptr %165, align 4
  br label %166

166:                                              ; preds = %162, %138
  %167 = shl i32 %98, 2
  br label %168

168:                                              ; preds = %166, %77, %72
  %169 = phi i32 [ %167, %166 ], [ -1, %72 ], [ -1, %77 ]
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_create_chunk(i32 noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @pcpu_chunk_struct_size, align 4
  %3 = tail call zeroext i1 @slab_is_available() #22
  %4 = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %1
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %7

7:                                                ; preds = %6, %1
  br i1 %3, label %8, label %166

8:                                                ; preds = %7
  %9 = icmp ult i32 %2, 4097
  %10 = or i32 %0, 256
  br i1 %9, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef %10) #31
  br label %15

13:                                               ; preds = %8
  %14 = tail call noalias ptr @__vmalloc(i32 noundef %2, i32 noundef %10) #31
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %166, label %18

18:                                               ; preds = %15
  store volatile ptr %16, ptr %16, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %16, ptr %19, align 4
  %20 = load i32, ptr @pcpu_unit_pages, align 4
  %21 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 12
  store i32 %20, ptr %21, align 4
  %22 = shl i32 %20, 10
  %23 = and i32 %22, 1073740800
  %24 = lshr exact i32 %23, 3
  %25 = tail call zeroext i1 @slab_is_available() #22
  %26 = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %29, label %28, !prof !10

28:                                               ; preds = %18
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %29

29:                                               ; preds = %28, %18
  br i1 %25, label %32, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 4
  store ptr null, ptr %31, align 4
  br label %112

32:                                               ; preds = %29
  %33 = icmp ult i32 %23, 32776
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef %10) #31
  br label %38

36:                                               ; preds = %32
  %37 = tail call noalias ptr @__vmalloc(i32 noundef %24, i32 noundef %10) #31
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %37, %36 ], [ %35, %34 ]
  %40 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 4
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %112, label %42

42:                                               ; preds = %38
  %43 = or i32 %24, 4
  %44 = tail call zeroext i1 @slab_is_available() #22
  %45 = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %48, label %47, !prof !10

47:                                               ; preds = %42
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %48

48:                                               ; preds = %47, %42
  br i1 %44, label %51, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 5
  store ptr null, ptr %50, align 4
  br label %110

51:                                               ; preds = %48
  %52 = icmp ult i32 %43, 4097
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef %10) #31
  br label %57

55:                                               ; preds = %51
  %56 = tail call noalias ptr @__vmalloc(i32 noundef %43, i32 noundef %10) #31
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %56, %55 ], [ %54, %53 ]
  %59 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 5
  store ptr %58, ptr %59, align 4
  %60 = icmp eq ptr %58, null
  br i1 %60, label %110, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %21, align 4
  %63 = shl i32 %62, 5
  %64 = and i32 %63, 33554400
  %65 = tail call zeroext i1 @slab_is_available() #22
  %66 = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %69, label %68, !prof !10

68:                                               ; preds = %61
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %69

69:                                               ; preds = %68, %61
  br i1 %65, label %72, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 6
  store ptr null, ptr %71, align 4
  br label %108

72:                                               ; preds = %69
  %73 = icmp ult i32 %64, 4097
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %64, i32 noundef %10) #31
  br label %78

76:                                               ; preds = %72
  %77 = tail call noalias ptr @__vmalloc(i32 noundef %64, i32 noundef %10) #31
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi ptr [ %77, %76 ], [ %75, %74 ]
  %80 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 6
  store ptr %79, ptr %80, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %108, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 2
  %84 = load i32, ptr %21, align 4
  %85 = shl i32 %84, 10
  %86 = and i32 %85, 1073740800
  store i32 0, ptr %83, align 4
  %87 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 2, i32 2
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 2, i32 4
  store i32 %86, ptr %88, align 4
  %89 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 2, i32 5
  store i32 %86, ptr %89, align 4
  %90 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 2, i32 6
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 2, i32 7
  store i32 %86, ptr %91, align 4
  %92 = and i32 %84, 1048575
  %93 = getelementptr %struct.pcpu_block_md, ptr %79, i32 %92
  %94 = icmp eq ptr %79, %93
  br i1 %94, label %113, label %95

95:                                               ; preds = %95, %82
  %96 = phi ptr [ %102, %95 ], [ %79, %82 ]
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.pcpu_block_md, ptr %96, i32 0, i32 2
  store i32 1024, ptr %97, align 4
  %98 = getelementptr inbounds %struct.pcpu_block_md, ptr %96, i32 0, i32 4
  store i32 1024, ptr %98, align 4
  %99 = getelementptr inbounds %struct.pcpu_block_md, ptr %96, i32 0, i32 5
  store i32 1024, ptr %99, align 4
  %100 = getelementptr inbounds %struct.pcpu_block_md, ptr %96, i32 0, i32 6
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.pcpu_block_md, ptr %96, i32 0, i32 7
  store i32 1024, ptr %101, align 4
  %102 = getelementptr %struct.pcpu_block_md, ptr %96, i32 1
  %103 = load ptr, ptr %80, align 4
  %104 = load i32, ptr %21, align 4
  %105 = and i32 %104, 1048575
  %106 = getelementptr %struct.pcpu_block_md, ptr %103, i32 %105
  %107 = icmp eq ptr %102, %106
  br i1 %107, label %113, label %95

108:                                              ; preds = %78, %70
  %109 = load ptr, ptr %59, align 4
  tail call void @kvfree(ptr noundef %109) #22
  br label %110

110:                                              ; preds = %108, %57, %49
  %111 = load ptr, ptr %40, align 4
  tail call void @kvfree(ptr noundef %111) #22
  br label %112

112:                                              ; preds = %110, %38, %30
  tail call void @kvfree(ptr noundef %16) #22
  br label %166

113:                                              ; preds = %95, %82
  %114 = phi i32 [ %84, %82 ], [ %104, %95 ]
  %115 = shl i32 %114, 12
  %116 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 1
  store i32 %115, ptr %116, align 4
  %117 = icmp eq ptr %16, null
  br i1 %117, label %166, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr @pcpu_group_offsets, align 4
  %120 = load ptr, ptr @pcpu_group_sizes, align 4
  %121 = load i32, ptr @pcpu_nr_groups, align 4
  %122 = load i32, ptr @pcpu_atom_size, align 4
  %123 = tail call ptr @pcpu_get_vm_areas(ptr noundef %119, ptr noundef %120, i32 noundef %121, i32 noundef %122) #22
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 6
  %127 = load ptr, ptr %126, align 4
  tail call void @kvfree(ptr noundef %127) #22
  %128 = load ptr, ptr %59, align 4
  tail call void @kvfree(ptr noundef %128) #22
  %129 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 4
  %130 = load ptr, ptr %129, align 4
  tail call void @kvfree(ptr noundef %130) #22
  tail call void @kvfree(ptr noundef nonnull %16) #22
  br label %166

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 7
  store ptr %123, ptr %132, align 4
  %133 = load ptr, ptr %123, align 4
  %134 = getelementptr inbounds %struct.vm_struct, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = load ptr, ptr @pcpu_group_offsets, align 4
  %137 = load i32, ptr %136, align 4
  %138 = sub i32 0, %137
  %139 = getelementptr i8, ptr %135, i32 %138
  %140 = getelementptr inbounds %struct.pcpu_chunk, ptr %16, i32 0, i32 3
  store ptr %139, ptr %140, align 4
  %141 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_create_chunk, i32 0, i32 1), align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %131
  %144 = tail call ptr @llvm.thread.pointer() #22
  %145 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 2
  %146 = load i32, ptr %145, align 8
  %147 = lshr i32 %146, 5
  %148 = getelementptr i32, ptr @__cpu_online_mask, i32 %147
  %149 = load volatile i32, ptr %148, align 4
  %150 = and i32 %146, 31
  %151 = shl nuw i32 1, %150
  %152 = and i32 %151, %149
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %143
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !37
  %155 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_create_chunk, i32 0, i32 7), align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %157, %154
  %158 = phi ptr [ %162, %157 ], [ %155, %154 ]
  %159 = load volatile ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.tracepoint_func, ptr %158, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  tail call void %159(ptr noundef %161, ptr noundef %139) #22
  %162 = getelementptr %struct.tracepoint_func, ptr %158, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %157

165:                                              ; preds = %157, %154
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !38
  br label %166

166:                                              ; preds = %165, %143, %131, %125, %113, %112, %15, %7
  %167 = phi ptr [ null, %125 ], [ null, %113 ], [ %16, %131 ], [ %16, %143 ], [ %16, %165 ], [ null, %112 ], [ null, %15 ], [ null, %7 ]
  ret ptr %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pcpu_populate_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @pcpu_get_pages.pages, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %4
  %8 = load i32, ptr @pcpu_nr_units, align 4
  %9 = load i32, ptr @pcpu_unit_pages, align 4
  %10 = shl i32 %8, 2
  %11 = mul i32 %10, %9
  %12 = tail call zeroext i1 @slab_is_available() #22
  %13 = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %16, label %15, !prof !10

15:                                               ; preds = %7
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %16

16:                                               ; preds = %15, %7
  br i1 %12, label %18, label %17

17:                                               ; preds = %16
  store ptr null, ptr @pcpu_get_pages.pages, align 4
  br label %227

18:                                               ; preds = %16
  %19 = icmp ult i32 %11, 4097
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #31
  br label %24

22:                                               ; preds = %18
  %23 = tail call noalias ptr @__vmalloc(i32 noundef %11, i32 noundef 3520) #31
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %23, %22 ], [ %21, %20 ]
  store ptr %25, ptr @pcpu_get_pages.pages, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %227, label %27

27:                                               ; preds = %24, %4
  %28 = phi ptr [ %25, %24 ], [ %5, %4 ]
  %29 = or i32 %3, 2
  %30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %27
  %34 = icmp sgt i32 %2, %1
  br label %41

35:                                               ; preds = %58
  %36 = load i32, ptr @nr_cpu_ids, align 4
  br label %37

37:                                               ; preds = %41, %35
  %38 = phi i32 [ %36, %35 ], [ %42, %41 ]
  %39 = tail call i32 @cpumask_next(i32 noundef %43, ptr noundef nonnull @__cpu_possible_mask) #23
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %41, label %99

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %31, %33 ], [ %38, %37 ]
  %43 = phi i32 [ %30, %33 ], [ %39, %37 ]
  br i1 %34, label %44, label %37

44:                                               ; preds = %58, %41
  %45 = phi i32 [ %59, %58 ], [ %1, %41 ]
  %46 = load ptr, ptr @pcpu_unit_map, align 4
  %47 = getelementptr i32, ptr %46, i32 %43
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr @pcpu_unit_pages, align 4
  %50 = mul i32 %49, %48
  %51 = add i32 %50, %45
  %52 = getelementptr ptr, ptr %28, i32 %51
  %53 = tail call ptr @__alloc_pages(i32 noundef %29, i32 noundef 0, i32 noundef 0, ptr noundef null) #22
  store ptr %53, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = add i32 %45, -1
  %57 = icmp slt i32 %56, %1
  br i1 %57, label %61, label %67

58:                                               ; preds = %44
  %59 = add i32 %45, 1
  %60 = icmp eq i32 %59, %2
  br i1 %60, label %35, label %44

61:                                               ; preds = %67, %55
  %62 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %64 = icmp uge i32 %62, %63
  %65 = icmp eq i32 %62, %43
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %227, label %85

67:                                               ; preds = %67, %55
  %68 = phi i32 [ %77, %67 ], [ %56, %55 ]
  %69 = load ptr, ptr @pcpu_unit_map, align 4
  %70 = getelementptr i32, ptr %69, i32 %43
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr @pcpu_unit_pages, align 4
  %73 = mul i32 %72, %71
  %74 = add i32 %73, %68
  %75 = getelementptr ptr, ptr %28, i32 %74
  %76 = load ptr, ptr %75, align 4
  tail call void @__free_pages(ptr noundef %76, i32 noundef 0) #22
  %77 = add i32 %68, -1
  %78 = icmp slt i32 %77, %1
  br i1 %78, label %61, label %67

79:                                               ; preds = %87
  %80 = load i32, ptr @nr_cpu_ids, align 4
  %81 = tail call i32 @cpumask_next(i32 noundef %86, ptr noundef nonnull @__cpu_possible_mask) #23
  %82 = icmp uge i32 %81, %80
  %83 = icmp eq i32 %81, %43
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %227, label %85

85:                                               ; preds = %79, %61
  %86 = phi i32 [ %81, %79 ], [ %62, %61 ]
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i32 [ %97, %87 ], [ %1, %85 ]
  %89 = load ptr, ptr @pcpu_unit_map, align 4
  %90 = getelementptr i32, ptr %89, i32 %86
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr @pcpu_unit_pages, align 4
  %93 = mul i32 %92, %91
  %94 = add i32 %93, %88
  %95 = getelementptr ptr, ptr %28, i32 %94
  %96 = load ptr, ptr %95, align 4
  tail call void @__free_pages(ptr noundef %96, i32 noundef 0) #22
  %97 = add i32 %88, 1
  %98 = icmp eq i32 %97, %2
  br i1 %98, label %79, label %87

99:                                               ; preds = %37, %27
  %100 = phi i32 [ %31, %27 ], [ %38, %37 ]
  %101 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %102 = icmp ult i32 %101, %100
  br i1 %102, label %103, label %220

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 3
  %105 = shl i32 %1, 12
  %106 = sub i32 %2, %1
  %107 = shl i32 %106, 12
  %108 = icmp sgt i32 %2, %1
  %109 = ptrtoint ptr %0 to i32
  br label %114

110:                                              ; preds = %146, %135
  %111 = tail call i32 @cpumask_next(i32 noundef %115, ptr noundef nonnull @__cpu_possible_mask) #23
  %112 = load i32, ptr @nr_cpu_ids, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %220

114:                                              ; preds = %110, %103
  %115 = phi i32 [ %101, %103 ], [ %111, %110 ]
  %116 = load ptr, ptr %104, align 4
  %117 = ptrtoint ptr %116 to i32
  %118 = load ptr, ptr @pcpu_unit_offsets, align 4
  %119 = getelementptr i32, ptr %118, i32 %115
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %105, %117
  %122 = add i32 %121, %120
  %123 = load ptr, ptr @pcpu_unit_map, align 4
  %124 = getelementptr i32, ptr %123, i32 %115
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr @pcpu_unit_pages, align 4
  %127 = mul i32 %126, %125
  %128 = add i32 %127, %1
  %129 = getelementptr ptr, ptr %28, i32 %128
  %130 = add i32 %122, %107
  %131 = load i32, ptr @pgprot_kernel, align 4
  %132 = or i32 %131, 512
  %133 = tail call i32 @vmap_pages_range_noflush(i32 noundef %122, i32 noundef %130, i32 noundef %132, ptr noundef %129, i32 noundef 12) #22
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %114
  br i1 %108, label %136, label %110

136:                                              ; preds = %135
  %137 = load ptr, ptr @pcpu_unit_map, align 4
  %138 = getelementptr i32, ptr %137, i32 %115
  %139 = load i32, ptr @pcpu_unit_pages, align 4
  br label %146

140:                                              ; preds = %114
  %141 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %142 = load i32, ptr @nr_cpu_ids, align 4
  %143 = icmp uge i32 %141, %142
  %144 = icmp eq i32 %141, %115
  %145 = select i1 %143, i1 true, i1 %144
  br i1 %145, label %171, label %156

146:                                              ; preds = %146, %136
  %147 = phi i32 [ %1, %136 ], [ %154, %146 ]
  %148 = load i32, ptr %138, align 4
  %149 = mul i32 %148, %139
  %150 = add i32 %149, %147
  %151 = getelementptr ptr, ptr %28, i32 %150
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 1, i32 0, i32 2
  store i32 %109, ptr %153, align 4
  %154 = add nsw i32 %147, 1
  %155 = icmp eq i32 %154, %2
  br i1 %155, label %110, label %146

156:                                              ; preds = %156, %140
  %157 = phi i32 [ %166, %156 ], [ %141, %140 ]
  %158 = load ptr, ptr %104, align 4
  %159 = ptrtoint ptr %158 to i32
  %160 = load ptr, ptr @pcpu_unit_offsets, align 4
  %161 = getelementptr i32, ptr %160, i32 %157
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %105, %159
  %164 = add i32 %163, %162
  %165 = add i32 %164, %107
  tail call void @vunmap_range_noflush(i32 noundef %164, i32 noundef %165) #22
  %166 = tail call i32 @cpumask_next(i32 noundef %157, ptr noundef nonnull @__cpu_possible_mask) #23
  %167 = load i32, ptr @nr_cpu_ids, align 4
  %168 = icmp uge i32 %166, %167
  %169 = icmp eq i32 %166, %115
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %171, label %156

171:                                              ; preds = %156, %140
  %172 = load i32, ptr @pcpu_low_unit_cpu, align 4
  %173 = load ptr, ptr %104, align 4
  %174 = ptrtoint ptr %173 to i32
  %175 = load ptr, ptr @pcpu_unit_offsets, align 4
  %176 = getelementptr i32, ptr %175, i32 %172
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %105, %174
  %179 = add i32 %178, %177
  %180 = load i32, ptr @pcpu_high_unit_cpu, align 4
  %181 = getelementptr i32, ptr %175, i32 %180
  %182 = load i32, ptr %181, align 4
  %183 = shl i32 %2, 12
  %184 = add i32 %183, %174
  %185 = add i32 %184, %182
  tail call void @flush_tlb_kernel_range(i32 noundef %179, i32 noundef %185) #22
  %186 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %187 = load i32, ptr @nr_cpu_ids, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %195, label %227

189:                                              ; preds = %215
  %190 = load i32, ptr @nr_cpu_ids, align 4
  br label %191

191:                                              ; preds = %195, %189
  %192 = phi i32 [ %190, %189 ], [ %196, %195 ]
  %193 = tail call i32 @cpumask_next(i32 noundef %197, ptr noundef nonnull @__cpu_possible_mask) #23
  %194 = icmp ult i32 %193, %192
  br i1 %194, label %195, label %227

195:                                              ; preds = %191, %171
  %196 = phi i32 [ %192, %191 ], [ %187, %171 ]
  %197 = phi i32 [ %193, %191 ], [ %186, %171 ]
  br i1 %108, label %198, label %191

198:                                              ; preds = %195
  %199 = load ptr, ptr @pcpu_unit_map, align 4
  %200 = load i32, ptr @pcpu_unit_pages, align 4
  br label %201

201:                                              ; preds = %215, %198
  %202 = phi i32 [ %216, %215 ], [ %200, %198 ]
  %203 = phi ptr [ %217, %215 ], [ %199, %198 ]
  %204 = phi i32 [ %218, %215 ], [ %1, %198 ]
  %205 = getelementptr i32, ptr %203, i32 %197
  %206 = load i32, ptr %205, align 4
  %207 = mul i32 %206, %202
  %208 = add i32 %207, %204
  %209 = getelementptr ptr, ptr %28, i32 %208
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %201
  tail call void @__free_pages(ptr noundef nonnull %210, i32 noundef 0) #22
  %213 = load ptr, ptr @pcpu_unit_map, align 4
  %214 = load i32, ptr @pcpu_unit_pages, align 4
  br label %215

215:                                              ; preds = %212, %201
  %216 = phi i32 [ %214, %212 ], [ %202, %201 ]
  %217 = phi ptr [ %213, %212 ], [ %203, %201 ]
  %218 = add i32 %204, 1
  %219 = icmp eq i32 %218, %2
  br i1 %219, label %189, label %201

220:                                              ; preds = %110, %99
  %221 = load i32, ptr @cacheid, align 4
  %222 = and i32 %221, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %225() #22
  br label %227

226:                                              ; preds = %220
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  br label %227

227:                                              ; preds = %226, %224, %191, %171, %79, %61, %24, %17
  %228 = phi i32 [ -12, %24 ], [ -12, %17 ], [ -12, %61 ], [ -12, %171 ], [ 0, %224 ], [ 0, %226 ], [ -12, %79 ], [ -12, %191 ]
  ret i32 %228
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcpu_next_fit_region(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #16 {
  %6 = load i32, ptr %3, align 4
  %7 = lshr i32 %6, 10
  store i32 0, ptr %4, align 4
  %8 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1048575
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %88

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.pcpu_block_md, ptr %14, i32 %7
  %16 = and i32 %6, 1023
  %17 = add i32 %2, -1
  %18 = sub i32 0, %2
  %19 = add i32 %2, 1023
  br label %20

20:                                               ; preds = %80, %12
  %21 = phi i32 [ 0, %12 ], [ %81, %80 ]
  %22 = phi i32 [ %7, %12 ], [ %84, %80 ]
  %23 = phi ptr [ %15, %12 ], [ %83, %80 ]
  %24 = phi i32 [ %16, %12 ], [ %82, %80 ]
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.pcpu_block_md, ptr %23, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %21
  store i32 %29, ptr %4, align 4
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %31, label %94

31:                                               ; preds = %26
  %32 = load i32, ptr %27, align 4
  %33 = icmp eq i32 %32, 1024
  br i1 %33, label %80, label %34

34:                                               ; preds = %31, %20
  %35 = getelementptr inbounds %struct.pcpu_block_md, ptr %23, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %17, %36
  %38 = and i32 %37, %18
  %39 = sub i32 %38, %36
  store i32 %39, ptr %4, align 4
  %40 = getelementptr inbounds %struct.pcpu_block_md, ptr %23, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %34
  %44 = load i32, ptr %35, align 4
  %45 = icmp slt i32 %44, %24
  %46 = add i32 %39, %1
  %47 = icmp slt i32 %41, %46
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %69, label %49

49:                                               ; preds = %43
  %50 = load i32, ptr %23, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.pcpu_block_md, ptr %23, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %44, %54
  %56 = icmp slt i32 %50, %1
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = add i32 %54, %50
  br label %63

60:                                               ; preds = %52, %49
  %61 = getelementptr inbounds %struct.pcpu_block_md, ptr %23, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %60 ]
  %65 = add i32 %46, %44
  %66 = sub i32 %65, %64
  store i32 %66, ptr %4, align 4
  %67 = shl i32 %22, 10
  %68 = add i32 %64, %67
  br label %92

69:                                               ; preds = %43, %34
  %70 = getelementptr inbounds %struct.pcpu_block_md, ptr %23, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %19, %71
  %73 = and i32 %72, %18
  store i32 %73, ptr %3, align 4
  %74 = sub i32 1024, %73
  store i32 %74, ptr %4, align 4
  %75 = load i32, ptr %3, align 4
  %76 = shl i32 %22, 10
  %77 = add i32 %75, %76
  store i32 %77, ptr %3, align 4
  %78 = load i32, ptr %4, align 4
  %79 = icmp slt i32 %78, %1
  br i1 %79, label %80, label %94

80:                                               ; preds = %69, %31
  %81 = phi i32 [ %29, %31 ], [ %78, %69 ]
  %82 = phi i32 [ %24, %31 ], [ 0, %69 ]
  %83 = getelementptr %struct.pcpu_block_md, ptr %23, i32 1
  %84 = add nuw nsw i32 %22, 1
  %85 = load i32, ptr %8, align 4
  %86 = and i32 %85, 1048575
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %20, label %88

88:                                               ; preds = %80, %5
  %89 = phi i32 [ %9, %5 ], [ %85, %80 ]
  %90 = shl i32 %89, 10
  %91 = and i32 %90, 1073740800
  br label %92

92:                                               ; preds = %88, %63
  %93 = phi i32 [ %91, %88 ], [ %68, %63 ]
  store i32 %93, ptr %3, align 4
  br label %94

94:                                               ; preds = %92, %69, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcpu_block_update_hint_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2
  %5 = lshr i32 %1, 10
  %6 = add i32 %2, %1
  %7 = add i32 %6, -1
  %8 = lshr i32 %7, 10
  %9 = and i32 %1, 1023
  %10 = and i32 %7, 1023
  %11 = add nuw nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %5
  %15 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %8
  %16 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %5, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1024
  %19 = zext i1 %18 to i32
  %20 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %5, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %9, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = add i32 %9, %2
  br label %32

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = shl nuw nsw i32 %5, 5
  %29 = getelementptr i32, ptr %27, i32 %28
  %30 = add i32 %9, %2
  %31 = tail call i32 @_find_next_zero_bit_le(ptr noundef %29, i32 noundef 1024, i32 noundef %30) #22
  store i32 %31, ptr %20, align 4
  br label %32

32:                                               ; preds = %25, %23
  %33 = phi i32 [ %24, %23 ], [ %30, %25 ]
  %34 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %5, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %14, align 4
  %37 = add i32 %36, %35
  %38 = icmp slt i32 %35, %33
  %39 = icmp slt i32 %9, %37
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 0, ptr %14, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %5, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %16, align 4
  %46 = add i32 %45, %44
  %47 = icmp slt i32 %44, %33
  %48 = icmp slt i32 %9, %46
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = icmp eq i32 %9, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %5, i32 4
  store i32 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %50
  tail call fastcc void @pcpu_block_refresh_hint(ptr noundef %0, i32 noundef %5)
  br label %66

55:                                               ; preds = %42
  %56 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %5, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 %9)
  store i32 %58, ptr %56, align 4
  %59 = icmp eq i32 %8, %5
  %60 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %5, i32 5
  br i1 %59, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, ptr %60, align 4
  %63 = xor i32 %10, 1023
  %64 = tail call i32 @llvm.smin.i32(i32 %62, i32 %63)
  store i32 %64, ptr %60, align 4
  br label %66

65:                                               ; preds = %55
  store i32 0, ptr %60, align 4
  br label %66

66:                                               ; preds = %65, %61, %54
  %67 = icmp eq i32 %8, %5
  br i1 %67, label %114, label %68

68:                                               ; preds = %66
  %69 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %8, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 1024
  %72 = select i1 %18, i32 2, i32 1
  %73 = select i1 %71, i32 %72, i32 %19
  %74 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = shl nuw nsw i32 %8, 5
  %77 = getelementptr i32, ptr %75, i32 %76
  %78 = tail call i32 @_find_next_zero_bit_le(ptr noundef %77, i32 noundef 1024, i32 noundef %11) #22
  %79 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %8, i32 6
  store i32 %78, ptr %79, align 4
  %80 = icmp eq i32 %11, 1024
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = getelementptr %struct.pcpu_block_md, ptr %15, i32 1
  br label %99

83:                                               ; preds = %68
  %84 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %8, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp slt i32 %10, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 0, ptr %15, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %8, i32 4
  store i32 0, ptr %89, align 4
  %90 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %8, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp slt i32 %10, %91
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call fastcc void @pcpu_block_refresh_hint(ptr noundef %0, i32 noundef %8)
  br label %99

94:                                               ; preds = %88
  %95 = getelementptr %struct.pcpu_block_md, ptr %13, i32 %8, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = xor i32 %10, 1023
  %98 = tail call i32 @llvm.smin.i32(i32 %96, i32 %97)
  store i32 %98, ptr %95, align 4
  br label %99

99:                                               ; preds = %94, %93, %81
  %100 = phi ptr [ %82, %81 ], [ %15, %93 ], [ %15, %94 ]
  %101 = xor i32 %5, -1
  %102 = add nsw i32 %8, %101
  %103 = add nsw i32 %102, %73
  %104 = getelementptr %struct.pcpu_block_md, ptr %14, i32 1
  %105 = icmp ult ptr %104, %100
  br i1 %105, label %106, label %114

106:                                              ; preds = %106, %99
  %107 = phi ptr [ %112, %106 ], [ %104, %99 ]
  %108 = phi ptr [ %107, %106 ], [ %14, %99 ]
  store i32 0, ptr %107, align 4
  %109 = getelementptr %struct.pcpu_block_md, ptr %108, i32 1, i32 2
  store i32 0, ptr %109, align 4
  %110 = getelementptr %struct.pcpu_block_md, ptr %108, i32 1, i32 4
  store i32 0, ptr %110, align 4
  %111 = getelementptr %struct.pcpu_block_md, ptr %108, i32 1, i32 5
  store i32 0, ptr %111, align 4
  %112 = getelementptr %struct.pcpu_block_md, ptr %107, i32 1
  %113 = icmp ult ptr %112, %100
  br i1 %113, label %106, label %114

114:                                              ; preds = %106, %99, %66
  %115 = phi i32 [ %19, %66 ], [ %103, %99 ], [ %103, %106 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %130, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 14
  %119 = load i32, ptr %118, align 4
  %120 = sub i32 %119, %115
  store i32 %120, ptr %118, align 4
  %121 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %122 = icmp eq ptr %121, %0
  br i1 %122, label %130, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 9
  %125 = load i8, ptr %124, align 1, !range !15
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %129 = sub i32 %128, %115
  store i32 %129, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %130

130:                                              ; preds = %127, %123, %117, %114
  %131 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %4, align 4
  %134 = add i32 %133, %132
  %135 = icmp slt i32 %132, %6
  %136 = icmp sgt i32 %134, %1
  %137 = and i1 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 0, ptr %4, align 4
  br label %139

139:                                              ; preds = %138, %130
  %140 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, %141
  %145 = icmp slt i32 %141, %6
  %146 = icmp sgt i32 %144, %1
  %147 = and i1 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  tail call fastcc void @pcpu_chunk_refresh_hint(ptr noundef %0, i1 noundef zeroext false)
  br label %149

149:                                              ; preds = %148, %139
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @pcpu_block_update(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #18 {
  %4 = sub i32 %2, %1
  %5 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %1)
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 4
  store i32 %4, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 5
  store i32 %4, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %4, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, %1
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, ptr %0, align 4
  %27 = icmp sgt i32 %19, %26
  %28 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 1
  br i1 %27, label %29, label %30

29:                                               ; preds = %25
  store i32 %23, ptr %28, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32, ptr %28, align 4
  %32 = icmp sgt i32 %31, %1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %29, %21
  %34 = phi i32 [ %19, %29 ], [ 0, %30 ], [ 0, %21 ]
  store i32 %34, ptr %0, align 4
  br label %35

35:                                               ; preds = %33, %30
  store i32 %1, ptr %22, align 4
  store i32 %4, ptr %18, align 4
  br label %76

36:                                               ; preds = %17
  %37 = icmp eq i32 %4, %19
  %38 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  br i1 %37, label %40, label %63

40:                                               ; preds = %36
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %40
  br i1 %8, label %47, label %43

43:                                               ; preds = %42
  %44 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true) #22, !range !13
  %45 = tail call i32 @llvm.cttz.i32(i32 %39, i1 true) #22, !range !13
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %42
  store i32 %1, ptr %38, align 4
  %48 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %49, %1
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load i32, ptr %0, align 4
  %53 = icmp sgt i32 %4, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  store i32 0, ptr %0, align 4
  br label %76

55:                                               ; preds = %43, %40
  %56 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %57, %1
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %0, align 4
  %61 = icmp sgt i32 %4, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %59, %55
  store i32 %1, ptr %56, align 4
  store i32 %4, ptr %0, align 4
  br label %76

63:                                               ; preds = %36
  %64 = icmp sgt i32 %39, %1
  br i1 %64, label %65, label %76

65:                                               ; preds = %63
  %66 = load i32, ptr %0, align 4
  %67 = icmp sgt i32 %4, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = icmp eq i32 %4, %66
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp slt i32 %72, %1
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %65
  %75 = getelementptr inbounds %struct.pcpu_block_md, ptr %0, i32 0, i32 1
  store i32 %1, ptr %75, align 4
  store i32 %4, ptr %0, align 4
  br label %76

76:                                               ; preds = %74, %70, %68, %63, %62, %59, %54, %51, %47, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcpu_block_refresh_hint(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.pcpu_block_md, ptr %4, i32 %1
  %6 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 5
  %9 = and i32 %8, 134217696
  %10 = getelementptr i32, ptr %7, i32 %9
  %11 = load i32, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = getelementptr %struct.pcpu_block_md, ptr %4, i32 %1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %11
  %17 = getelementptr %struct.pcpu_block_md, ptr %4, i32 %1, i32 3
  store i32 %15, ptr %17, align 4
  store i32 0, ptr %5, align 4
  br label %21

18:                                               ; preds = %2
  %19 = getelementptr %struct.pcpu_block_md, ptr %4, i32 %1, i32 6
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %20, %18 ], [ %16, %13 ]
  %23 = getelementptr %struct.pcpu_block_md, ptr %4, i32 %1, i32 2
  store i32 %11, ptr %23, align 4
  %24 = getelementptr %struct.pcpu_block_md, ptr %4, i32 %1, i32 5
  store i32 0, ptr %24, align 4
  %25 = tail call i32 @_find_next_zero_bit_le(ptr noundef %10, i32 noundef 1024, i32 noundef %22) #22
  %26 = add i32 %25, 1
  %27 = tail call i32 @_find_next_bit_le(ptr noundef %10, i32 noundef 1024, i32 noundef %26) #22
  %28 = icmp ult i32 %25, 1024
  br i1 %28, label %29, label %37

29:                                               ; preds = %29, %21
  %30 = phi i32 [ %35, %29 ], [ %27, %21 ]
  %31 = phi i32 [ %33, %29 ], [ %25, %21 ]
  tail call fastcc void @pcpu_block_update(ptr noundef %5, i32 noundef %31, i32 noundef %30)
  %32 = add i32 %30, 1
  %33 = tail call i32 @_find_next_zero_bit_le(ptr noundef %10, i32 noundef 1024, i32 noundef %32) #22
  %34 = add i32 %33, 1
  %35 = tail call i32 @_find_next_bit_le(ptr noundef %10, i32 noundef 1024, i32 noundef %34) #22
  %36 = icmp ult i32 %33, 1024
  br i1 %36, label %29, label %37

37:                                               ; preds = %29, %21
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcpu_chunk_refresh_hint(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #19 {
  %3 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2
  br i1 %1, label %13, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %5
  %11 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 3
  store i32 %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 2
  store i32 %5, ptr %12, align 4
  br label %17

13:                                               ; preds = %4, %2
  %14 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 2, i32 2
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %16, %13 ], [ %3, %7 ]
  %19 = phi i32 [ %15, %13 ], [ %10, %7 ]
  store i32 0, ptr %18, align 4
  %20 = lshr i32 %19, 10
  %21 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1048575
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.pcpu_block_md, ptr %27, i32 %20
  %29 = and i32 %19, 1023
  br label %30

30:                                               ; preds = %62, %25
  %31 = phi i32 [ %19, %25 ], [ %63, %62 ]
  %32 = phi i32 [ 0, %25 ], [ %64, %62 ]
  %33 = phi ptr [ %28, %25 ], [ %66, %62 ]
  %34 = phi i32 [ %29, %25 ], [ %65, %62 ]
  %35 = phi i32 [ %20, %25 ], [ %67, %62 ]
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.pcpu_block_md, ptr %33, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %32
  %41 = icmp eq i32 %39, 1024
  br i1 %41, label %62, label %69

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.pcpu_block_md, ptr %33, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.pcpu_block_md, ptr %33, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp sge i32 %48, %34
  %50 = add i32 %48, %44
  %51 = icmp ult i32 %50, 1024
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = shl i32 %35, 10
  %55 = add i32 %48, %54
  br label %69

56:                                               ; preds = %46, %42
  %57 = getelementptr inbounds %struct.pcpu_block_md, ptr %33, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 %35, 10
  %60 = add i32 %59, 1024
  %61 = sub i32 %60, %58
  br label %62

62:                                               ; preds = %56, %37
  %63 = phi i32 [ %61, %56 ], [ %31, %37 ]
  %64 = phi i32 [ %58, %56 ], [ %40, %37 ]
  %65 = phi i32 [ 0, %56 ], [ %34, %37 ]
  %66 = getelementptr %struct.pcpu_block_md, ptr %33, i32 1
  %67 = add nuw nsw i32 %35, 1
  %68 = icmp eq i32 %67, %23
  br i1 %68, label %69, label %30

69:                                               ; preds = %62, %53, %37, %17
  %70 = phi i32 [ %55, %53 ], [ %19, %17 ], [ %31, %37 ], [ %63, %62 ]
  %71 = phi i32 [ %44, %53 ], [ 0, %17 ], [ %40, %37 ], [ %64, %62 ]
  %72 = shl i32 %22, 10
  %73 = and i32 %72, 1073740800
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %135

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 6
  br label %77

77:                                               ; preds = %129, %75
  %78 = phi i32 [ %71, %75 ], [ %131, %129 ]
  %79 = phi i32 [ %70, %75 ], [ %130, %129 ]
  %80 = add i32 %78, %79
  tail call fastcc void @pcpu_block_update(ptr noundef %3, i32 noundef %79, i32 noundef %80)
  %81 = add i32 %80, 1
  %82 = lshr i32 %81, 10
  %83 = load i32, ptr %21, align 4
  %84 = and i32 %83, 1048575
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %86, label %129

86:                                               ; preds = %77
  %87 = load ptr, ptr %76, align 4
  %88 = getelementptr %struct.pcpu_block_md, ptr %87, i32 %82
  %89 = and i32 %81, 1023
  br label %90

90:                                               ; preds = %122, %86
  %91 = phi i32 [ %81, %86 ], [ %123, %122 ]
  %92 = phi i32 [ 0, %86 ], [ %124, %122 ]
  %93 = phi ptr [ %88, %86 ], [ %126, %122 ]
  %94 = phi i32 [ %89, %86 ], [ %125, %122 ]
  %95 = phi i32 [ %82, %86 ], [ %127, %122 ]
  %96 = icmp eq i32 %92, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.pcpu_block_md, ptr %93, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, %92
  %101 = icmp eq i32 %99, 1024
  br i1 %101, label %122, label %129

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.pcpu_block_md, ptr %93, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.pcpu_block_md, ptr %93, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = icmp sge i32 %108, %94
  %110 = add i32 %108, %104
  %111 = icmp ult i32 %110, 1024
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = shl i32 %95, 10
  %115 = add i32 %108, %114
  br label %129

116:                                              ; preds = %106, %102
  %117 = getelementptr inbounds %struct.pcpu_block_md, ptr %93, i32 0, i32 5
  %118 = load i32, ptr %117, align 4
  %119 = shl i32 %95, 10
  %120 = add i32 %119, 1024
  %121 = sub i32 %120, %118
  br label %122

122:                                              ; preds = %116, %97
  %123 = phi i32 [ %121, %116 ], [ %91, %97 ]
  %124 = phi i32 [ %118, %116 ], [ %100, %97 ]
  %125 = phi i32 [ 0, %116 ], [ %94, %97 ]
  %126 = getelementptr %struct.pcpu_block_md, ptr %93, i32 1
  %127 = add nuw nsw i32 %95, 1
  %128 = icmp eq i32 %127, %84
  br i1 %128, label %129, label %90

129:                                              ; preds = %122, %113, %97, %77
  %130 = phi i32 [ %115, %113 ], [ %81, %77 ], [ %91, %97 ], [ %123, %122 ]
  %131 = phi i32 [ %104, %113 ], [ 0, %77 ], [ %100, %97 ], [ %124, %122 ]
  %132 = shl i32 %83, 10
  %133 = and i32 %132, 1073740800
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %77, label %135

135:                                              ; preds = %129, %69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcpu_get_vm_areas(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @slab_is_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmap_pages_range_noflush(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap_range_noflush(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcpu_balance_workfn(ptr nocapture noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pcpu_alloc_mutex) #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  tail call fastcc void @pcpu_balance_free(i1 noundef zeroext false)
  %2 = load ptr, ptr @pcpu_chunk_lists, align 4
  %3 = load i32, ptr @pcpu_to_depopulate_slot, align 4
  %4 = getelementptr %struct.list_head, ptr %2, i32 %3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %188, label %7

7:                                                ; preds = %182, %1
  %8 = phi ptr [ %186, %182 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 8
  %10 = load i8, ptr %9, align 4, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 2151, i32 noundef 9, ptr noundef null) #22
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 14
  %17 = add i32 %15, -1
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %88

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 6
  %21 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 15
  %22 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 13
  %23 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 9
  %24 = load i32, ptr %16, align 4
  br label %25

25:                                               ; preds = %80, %19
  %26 = phi i32 [ %24, %19 ], [ %81, %80 ]
  %27 = phi i32 [ %17, %19 ], [ %86, %80 ]
  %28 = phi i32 [ %15, %19 ], [ %85, %80 ]
  %29 = phi i32 [ 0, %19 ], [ %84, %80 ]
  %30 = phi i32 [ -1, %19 ], [ %82, %80 ]
  %31 = icmp eq i32 %26, 0
  br i1 %31, label %88, label %32

32:                                               ; preds = %25
  %33 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %88, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %20, align 4
  %37 = getelementptr %struct.pcpu_block_md, ptr %36, i32 %27, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 1024
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = lshr i32 %27, 5
  %42 = getelementptr i32, ptr %21, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %27, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = icmp eq i32 %30, -1
  %50 = select i1 %49, i32 %27, i32 %30
  %51 = icmp eq i32 %27, 0
  br i1 %51, label %54, label %80

52:                                               ; preds = %40, %35
  %53 = icmp eq i32 %30, -1
  br i1 %53, label %80, label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %27, %52 ], [ -1, %48 ]
  %56 = phi i32 [ %30, %52 ], [ %50, %48 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !44
  %57 = load i16, ptr @pcpu_lock, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr @pcpu_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !45
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !46
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !47
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !48
  %59 = add i32 %55, 1
  %60 = add nuw i32 %56, 1
  tail call fastcc void @pcpu_depopulate_chunk(ptr noundef %8, i32 noundef %59, i32 noundef %60) #22
  %61 = tail call i32 @__cond_resched() #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  %62 = sub i32 %60, %59
  tail call void @__bitmap_clear(ptr noundef %21, i32 noundef %59, i32 noundef %62) #22
  %63 = load i32, ptr %22, align 4
  %64 = sub i32 %63, %62
  store i32 %64, ptr %22, align 4
  %65 = load i32, ptr @pcpu_nr_populated, align 4
  %66 = sub i32 %65, %62
  store i32 %66, ptr @pcpu_nr_populated, align 4
  %67 = load i32, ptr %16, align 4
  %68 = sub i32 %67, %62
  store i32 %68, ptr %16, align 4
  %69 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %70 = icmp eq ptr %69, %8
  br i1 %70, label %77, label %71

71:                                               ; preds = %54
  %72 = load i8, ptr %23, align 1, !range !15
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %76 = sub i32 %75, %62
  store i32 %76, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %77

77:                                               ; preds = %74, %71, %54
  %78 = tail call i32 @llvm.smin.i32(i32 %28, i32 %59) #22
  %79 = tail call i32 @llvm.smax.i32(i32 %29, i32 %60) #22
  br label %80

80:                                               ; preds = %77, %52, %48
  %81 = phi i32 [ %26, %48 ], [ %26, %52 ], [ %68, %77 ]
  %82 = phi i32 [ %50, %48 ], [ -1, %52 ], [ -1, %77 ]
  %83 = phi i32 [ %27, %48 ], [ %27, %52 ], [ %55, %77 ]
  %84 = phi i32 [ %29, %48 ], [ %29, %52 ], [ %79, %77 ]
  %85 = phi i32 [ %28, %48 ], [ %28, %52 ], [ %78, %77 ]
  %86 = add i32 %83, -1
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %25, label %88

88:                                               ; preds = %80, %32, %25, %13
  %89 = phi i32 [ 0, %13 ], [ %29, %25 ], [ %84, %80 ], [ %29, %32 ]
  %90 = phi i32 [ %15, %13 ], [ %28, %25 ], [ %85, %80 ], [ %28, %32 ]
  %91 = phi i1 [ false, %13 ], [ false, %25 ], [ false, %80 ], [ true, %32 ]
  %92 = icmp slt i32 %90, %89
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !44
  %94 = load i16, ptr @pcpu_lock, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr @pcpu_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !45
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !46
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !47
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !48
  %96 = load i32, ptr @pcpu_low_unit_cpu, align 4
  %97 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = ptrtoint ptr %98 to i32
  %100 = load ptr, ptr @pcpu_unit_offsets, align 4
  %101 = getelementptr i32, ptr %100, i32 %96
  %102 = load i32, ptr %101, align 4
  %103 = shl i32 %90, 12
  %104 = add i32 %103, %99
  %105 = add i32 %104, %102
  %106 = load i32, ptr @pcpu_high_unit_cpu, align 4
  %107 = getelementptr i32, ptr %100, i32 %106
  %108 = load i32, ptr %107, align 4
  %109 = shl i32 %89, 12
  %110 = add i32 %109, %99
  %111 = add i32 %110, %108
  tail call void @flush_tlb_kernel_range(i32 noundef %105, i32 noundef %111) #22
  %112 = tail call i32 @__cond_resched() #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  br label %113

113:                                              ; preds = %93, %88
  br i1 %91, label %119, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr @pcpu_unit_size, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %170

119:                                              ; preds = %114, %113
  %120 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 9
  %121 = load i8, ptr %120, align 1, !range !15
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %182, label %123

123:                                              ; preds = %119
  store i8 0, ptr %120, align 1
  %124 = load i32, ptr %16, align 4
  %125 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %126 = add i32 %125, %124
  store i32 %126, ptr @pcpu_nr_empty_pop_pages, align 4
  %127 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %146, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.pcpu_chunk, ptr %8, i32 0, i32 2, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = shl i32 %132, 2
  %136 = load i32, ptr @pcpu_unit_size, align 4
  %137 = icmp eq i32 %136, %135
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, ptr @pcpu_free_slot, align 4
  br label %146

140:                                              ; preds = %134
  %141 = icmp eq i32 %135, 0
  %142 = tail call i32 @llvm.ctlz.i32(i32 %135, i1 false) #22, !range !13
  %143 = sub nsw i32 29, %142
  %144 = tail call i32 @llvm.smax.i32(i32 %143, i32 1) #22
  %145 = select i1 %141, i32 1, i32 %144
  br label %146

146:                                              ; preds = %140, %138, %130, %123
  %147 = phi i32 [ 0, %130 ], [ 0, %123 ], [ %139, %138 ], [ %145, %140 ]
  %148 = icmp eq i32 %147, -1
  %149 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %150 = icmp eq ptr %149, %8
  %151 = select i1 %148, i1 true, i1 %150
  br i1 %151, label %182, label %152

152:                                              ; preds = %146
  %153 = icmp sgt i32 %147, -1
  %154 = load ptr, ptr @pcpu_chunk_lists, align 4
  %155 = getelementptr %struct.list_head, ptr %154, i32 %147
  %156 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %8, align 4
  %159 = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  store ptr %157, ptr %159, align 4
  store volatile ptr %158, ptr %157, align 4
  br i1 %153, label %160, label %163

160:                                              ; preds = %152
  %161 = load ptr, ptr %155, align 4
  %162 = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  br label %166

163:                                              ; preds = %152
  %164 = getelementptr %struct.list_head, ptr %154, i32 %147, i32 1
  %165 = load ptr, ptr %164, align 4
  br label %166

166:                                              ; preds = %163, %160
  %167 = phi ptr [ %162, %160 ], [ %164, %163 ]
  %168 = phi ptr [ %161, %160 ], [ %155, %163 ]
  %169 = phi ptr [ %155, %160 ], [ %165, %163 ]
  store ptr %8, ptr %167, align 4
  store ptr %168, ptr %8, align 4
  store ptr %169, ptr %156, align 4
  br label %180

170:                                              ; preds = %114
  %171 = load ptr, ptr @pcpu_chunk_lists, align 4
  %172 = load i32, ptr @pcpu_sidelined_slot, align 4
  %173 = getelementptr %struct.list_head, ptr %171, i32 %172
  %174 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = load ptr, ptr %8, align 4
  %177 = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  store ptr %175, ptr %177, align 4
  store volatile ptr %176, ptr %175, align 4
  %178 = getelementptr %struct.list_head, ptr %171, i32 %172, i32 1
  %179 = load ptr, ptr %178, align 4
  store ptr %8, ptr %178, align 4
  store ptr %173, ptr %8, align 4
  store ptr %179, ptr %174, align 4
  br label %180

180:                                              ; preds = %170, %166
  %181 = phi ptr [ %169, %166 ], [ %179, %170 ]
  store volatile ptr %8, ptr %181, align 4
  br label %182

182:                                              ; preds = %180, %146, %119
  %183 = load ptr, ptr @pcpu_chunk_lists, align 4
  %184 = load i32, ptr @pcpu_to_depopulate_slot, align 4
  %185 = getelementptr %struct.list_head, ptr %183, i32 %184
  %186 = load volatile ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, %185
  br i1 %187, label %188, label %7

188:                                              ; preds = %182, %1
  br label %189

189:                                              ; preds = %335, %188
  %190 = load i1, ptr @pcpu_atomic_alloc_failed, align 1
  br i1 %190, label %191, label %192

191:                                              ; preds = %189
  store i1 false, ptr @pcpu_atomic_alloc_failed, align 1
  br label %197

192:                                              ; preds = %189
  %193 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %194 = sub i32 4, %193
  %195 = tail call i32 @llvm.smax.i32(i32 %194, i32 0) #22
  %196 = tail call i32 @llvm.umin.i32(i32 %195, i32 4) #22
  br label %197

197:                                              ; preds = %192, %191
  %198 = phi i32 [ 4, %191 ], [ %196, %192 ]
  %199 = load i32, ptr @pcpu_unit_size, align 4
  %200 = icmp eq i32 %199, 4096
  %201 = load i32, ptr @pcpu_free_slot, align 4
  %202 = select i1 %200, i32 %201, i32 10
  %203 = icmp sgt i32 %202, %201
  br i1 %203, label %278, label %204

204:                                              ; preds = %273, %197
  %205 = phi i32 [ %275, %273 ], [ %202, %197 ]
  %206 = phi i32 [ %274, %273 ], [ %198, %197 ]
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %336, label %208

208:                                              ; preds = %204
  %209 = load ptr, ptr @pcpu_chunk_lists, align 4
  %210 = getelementptr %struct.list_head, ptr %209, i32 %205
  br label %211

211:                                              ; preds = %215, %208
  %212 = phi ptr [ %210, %208 ], [ %213, %215 ]
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, %210
  br i1 %214, label %273, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.pcpu_chunk, ptr %213, i32 0, i32 12
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.pcpu_chunk, ptr %213, i32 0, i32 13
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %211, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.pcpu_chunk, ptr %213, i32 0, i32 12
  %223 = getelementptr inbounds %struct.pcpu_chunk, ptr %213, i32 0, i32 13
  %224 = getelementptr inbounds %struct.pcpu_chunk, ptr %213, i32 0, i32 15
  %225 = tail call i32 @_find_next_zero_bit_le(ptr noundef %224, i32 noundef %217, i32 noundef 0) #22
  %226 = load i32, ptr %222, align 4
  %227 = add i32 %225, 1
  %228 = tail call i32 @_find_next_bit_le(ptr noundef %224, i32 noundef %226, i32 noundef %227) #22
  %229 = load i32, ptr %222, align 4
  %230 = icmp ult i32 %225, %229
  br i1 %230, label %231, label %273

231:                                              ; preds = %221
  %232 = getelementptr inbounds %struct.pcpu_chunk, ptr %213, i32 0, i32 14
  %233 = getelementptr inbounds %struct.pcpu_chunk, ptr %213, i32 0, i32 9
  br label %234

234:                                              ; preds = %264, %231
  %235 = phi i32 [ %206, %231 ], [ %247, %264 ]
  %236 = phi i32 [ %225, %231 ], [ %267, %264 ]
  %237 = phi i32 [ %228, %231 ], [ %270, %264 ]
  %238 = sub i32 %237, %236
  %239 = tail call i32 @llvm.smin.i32(i32 %238, i32 %235) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !44
  %240 = load i16, ptr @pcpu_lock, align 4
  %241 = add i16 %240, 1
  store i16 %241, ptr @pcpu_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !45
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !46
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !47
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !48
  %242 = add i32 %239, %236
  %243 = tail call fastcc i32 @pcpu_populate_chunk(ptr noundef %213, i32 noundef %236, i32 noundef %242, i32 noundef 76992) #22
  %244 = tail call i32 @__cond_resched() #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  %245 = icmp eq i32 %243, 0
  br i1 %245, label %246, label %273

246:                                              ; preds = %234
  %247 = sub i32 %235, %239
  tail call void @__bitmap_set(ptr noundef %224, i32 noundef %236, i32 noundef %239) #22
  %248 = load i32, ptr %223, align 4
  %249 = add i32 %248, %239
  store i32 %249, ptr %223, align 4
  %250 = load i32, ptr @pcpu_nr_populated, align 4
  %251 = add i32 %250, %239
  store i32 %251, ptr @pcpu_nr_populated, align 4
  %252 = load i32, ptr %232, align 4
  %253 = add i32 %252, %239
  store i32 %253, ptr %232, align 4
  %254 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %255 = icmp eq ptr %254, %213
  br i1 %255, label %262, label %256

256:                                              ; preds = %246
  %257 = load i8, ptr %233, align 1, !range !15
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %261 = add i32 %260, %239
  store i32 %261, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %262

262:                                              ; preds = %259, %256, %246
  %263 = icmp eq i32 %247, 0
  br i1 %263, label %273, label %264

264:                                              ; preds = %262
  %265 = load i32, ptr %222, align 4
  %266 = add i32 %237, 1
  %267 = tail call i32 @_find_next_zero_bit_le(ptr noundef %224, i32 noundef %265, i32 noundef %266) #22
  %268 = load i32, ptr %222, align 4
  %269 = add i32 %267, 1
  %270 = tail call i32 @_find_next_bit_le(ptr noundef %224, i32 noundef %268, i32 noundef %269) #22
  %271 = load i32, ptr %222, align 4
  %272 = icmp ult i32 %267, %271
  br i1 %272, label %234, label %273

273:                                              ; preds = %264, %262, %234, %221, %211
  %274 = phi i32 [ %206, %221 ], [ 0, %234 ], [ 0, %262 ], [ %247, %264 ], [ %206, %211 ]
  %275 = add i32 %205, 1
  %276 = load i32, ptr @pcpu_free_slot, align 4
  %277 = icmp sgt i32 %275, %276
  br i1 %277, label %278, label %204

278:                                              ; preds = %273, %197
  %279 = phi i32 [ %198, %197 ], [ %274, %273 ]
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %336, label %281

281:                                              ; preds = %278
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !44
  %282 = load i16, ptr @pcpu_lock, align 4
  %283 = add i16 %282, 1
  store i16 %283, ptr @pcpu_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !45
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !46
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !47
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !48
  %284 = tail call fastcc ptr @pcpu_create_chunk(i32 noundef 76992) #22
  %285 = tail call i32 @__cond_resched() #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  %286 = icmp eq ptr %284, null
  br i1 %286, label %336, label %287

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.pcpu_chunk, ptr %284, i32 0, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = icmp slt i32 %289, 4
  br i1 %290, label %307, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.pcpu_chunk, ptr %284, i32 0, i32 2, i32 2
  %293 = load i32, ptr %292, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %307, label %295

295:                                              ; preds = %291
  %296 = shl i32 %293, 2
  %297 = load i32, ptr @pcpu_unit_size, align 4
  %298 = icmp eq i32 %297, %296
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = load i32, ptr @pcpu_free_slot, align 4
  br label %307

301:                                              ; preds = %295
  %302 = icmp eq i32 %296, 0
  %303 = tail call i32 @llvm.ctlz.i32(i32 %296, i1 false) #22, !range !13
  %304 = sub nsw i32 29, %303
  %305 = tail call i32 @llvm.smax.i32(i32 %304, i32 1) #22
  %306 = select i1 %302, i32 1, i32 %305
  br label %307

307:                                              ; preds = %301, %299, %291, %287
  %308 = phi i32 [ 0, %291 ], [ 0, %287 ], [ %300, %299 ], [ %306, %301 ]
  %309 = getelementptr inbounds %struct.pcpu_chunk, ptr %284, i32 0, i32 9
  %310 = load i8, ptr %309, align 1, !range !15
  %311 = icmp ne i8 %310, 0
  %312 = icmp eq i32 %308, -1
  %313 = select i1 %311, i1 true, i1 %312
  %314 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %315 = icmp eq ptr %314, %284
  %316 = select i1 %313, i1 true, i1 %315
  br i1 %316, label %335, label %317

317:                                              ; preds = %307
  %318 = icmp sgt i32 %308, -1
  %319 = load ptr, ptr @pcpu_chunk_lists, align 4
  %320 = getelementptr %struct.list_head, ptr %319, i32 %308
  %321 = getelementptr inbounds %struct.list_head, ptr %284, i32 0, i32 1
  %322 = load ptr, ptr %321, align 4
  %323 = load ptr, ptr %284, align 4
  %324 = getelementptr inbounds %struct.list_head, ptr %323, i32 0, i32 1
  store ptr %322, ptr %324, align 4
  store volatile ptr %323, ptr %322, align 4
  br i1 %318, label %325, label %328

325:                                              ; preds = %317
  %326 = load ptr, ptr %320, align 4
  %327 = getelementptr inbounds %struct.list_head, ptr %326, i32 0, i32 1
  br label %331

328:                                              ; preds = %317
  %329 = getelementptr %struct.list_head, ptr %319, i32 %308, i32 1
  %330 = load ptr, ptr %329, align 4
  br label %331

331:                                              ; preds = %328, %325
  %332 = phi ptr [ %327, %325 ], [ %329, %328 ]
  %333 = phi ptr [ %326, %325 ], [ %320, %328 ]
  %334 = phi ptr [ %320, %325 ], [ %330, %328 ]
  store ptr %284, ptr %332, align 4
  store ptr %333, ptr %284, align 4
  store ptr %334, ptr %321, align 4
  store volatile ptr %284, ptr %334, align 4
  br label %335

335:                                              ; preds = %331, %307
  br label %189

336:                                              ; preds = %281, %278, %204
  tail call fastcc void @pcpu_balance_free(i1 noundef zeroext true)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !44
  %337 = load i16, ptr @pcpu_lock, align 4
  %338 = add i16 %337, 1
  store i16 %338, ptr @pcpu_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !45
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !46
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !47
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !48
  tail call void @mutex_unlock(ptr noundef nonnull @pcpu_alloc_mutex) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcpu_balance_free(i1 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = load ptr, ptr @pcpu_chunk_lists, align 4
  %5 = load i32, ptr @pcpu_free_slot, align 4
  %6 = getelementptr %struct.list_head, ptr %4, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %33, label %9

9:                                                ; preds = %31, %1
  %10 = phi ptr [ %11, %31 ], [ %7, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pcpu_chunk, ptr %10, i32 0, i32 8
  %13 = load i8, ptr %12, align 4, !range !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !10

15:                                               ; preds = %9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1998, i32 noundef 9, ptr noundef null) #22
  br label %16

16:                                               ; preds = %15, %9
  %17 = load ptr, ptr %6, align 4
  %18 = icmp eq ptr %10, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  br i1 %0, label %20, label %24

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.pcpu_chunk, ptr %10, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20, %19
  %25 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %10, ptr %30, align 4
  store ptr %29, ptr %10, align 4
  store ptr %2, ptr %25, align 4
  store volatile ptr %10, ptr %2, align 8
  br label %31

31:                                               ; preds = %24, %20, %16
  %32 = icmp eq ptr %11, %6
  br i1 %32, label %33, label %9

33:                                               ; preds = %31, %1
  %34 = load volatile ptr, ptr %2, align 8
  %35 = icmp eq ptr %34, %2
  br i1 %35, label %133, label %36

36:                                               ; preds = %33
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !44
  %37 = load i16, ptr @pcpu_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @pcpu_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !45
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !46
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !47
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !48
  %39 = load ptr, ptr %2, align 8
  %40 = icmp eq ptr %39, %2
  br i1 %40, label %132, label %41

41:                                               ; preds = %129, %36
  %42 = phi ptr [ %43, %129 ], [ %39, %36 ]
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 15
  %45 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 12
  %46 = load i32, ptr %45, align 4
  %47 = call i32 @_find_next_bit_le(ptr noundef %44, i32 noundef %46, i32 noundef 0) #22
  %48 = load i32, ptr %45, align 4
  %49 = add i32 %47, 1
  %50 = call i32 @_find_next_zero_bit_le(ptr noundef %44, i32 noundef %48, i32 noundef %49) #22
  %51 = load i32, ptr %45, align 4
  %52 = icmp ult i32 %47, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 13
  %55 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 14
  %56 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 9
  br label %57

57:                                               ; preds = %75, %53
  %58 = phi i32 [ %50, %53 ], [ %83, %75 ]
  %59 = phi i32 [ %47, %53 ], [ %80, %75 ]
  call fastcc void @pcpu_depopulate_chunk(ptr noundef %42, i32 noundef %59, i32 noundef %58)
  call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  %60 = sub i32 %58, %59
  call void @__bitmap_clear(ptr noundef %44, i32 noundef %59, i32 noundef %60) #22
  %61 = load i32, ptr %54, align 4
  %62 = sub i32 %61, %60
  store i32 %62, ptr %54, align 4
  %63 = load i32, ptr @pcpu_nr_populated, align 4
  %64 = sub i32 %63, %60
  store i32 %64, ptr @pcpu_nr_populated, align 4
  %65 = load i32, ptr %55, align 4
  %66 = sub i32 %65, %60
  store i32 %66, ptr %55, align 4
  %67 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %68 = icmp eq ptr %67, %42
  br i1 %68, label %75, label %69

69:                                               ; preds = %57
  %70 = load i8, ptr %56, align 1, !range !15
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %74 = sub i32 %73, %60
  store i32 %74, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %75

75:                                               ; preds = %72, %69, %57
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !44
  %76 = load i16, ptr @pcpu_lock, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr @pcpu_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !45
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !46
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !47
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !48
  %78 = load i32, ptr %45, align 4
  %79 = add i32 %58, 1
  %80 = call i32 @_find_next_bit_le(ptr noundef %44, i32 noundef %78, i32 noundef %79) #22
  %81 = load i32, ptr %45, align 4
  %82 = add i32 %80, 1
  %83 = call i32 @_find_next_zero_bit_le(ptr noundef %44, i32 noundef %81, i32 noundef %82) #22
  %84 = load i32, ptr %45, align 4
  %85 = icmp ult i32 %80, %84
  br i1 %85, label %57, label %86

86:                                               ; preds = %75, %41
  %87 = icmp eq ptr %42, null
  br i1 %87, label %129, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_destroy_chunk, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %88
  %94 = tail call ptr @llvm.thread.pointer() #22
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
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !49
  %105 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_percpu_destroy_chunk, i32 0, i32 7), align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %107, %104
  %108 = phi ptr [ %112, %107 ], [ %105, %104 ]
  %109 = load volatile ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.tracepoint_func, ptr %108, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  call void %109(ptr noundef %111, ptr noundef %90) #22
  %112 = getelementptr %struct.tracepoint_func, ptr %108, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %107

115:                                              ; preds = %107, %104
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !50
  br label %116

116:                                              ; preds = %115, %93, %88
  %117 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 7
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr @pcpu_nr_groups, align 4
  call void @pcpu_free_vm_areas(ptr noundef nonnull %118, i32 noundef %121) #22
  br label %122

122:                                              ; preds = %120, %116
  %123 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 6
  %124 = load ptr, ptr %123, align 4
  call void @kvfree(ptr noundef %124) #22
  %125 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 5
  %126 = load ptr, ptr %125, align 4
  call void @kvfree(ptr noundef %126) #22
  %127 = getelementptr inbounds %struct.pcpu_chunk, ptr %42, i32 0, i32 4
  %128 = load ptr, ptr %127, align 4
  call void @kvfree(ptr noundef %128) #22
  call void @kvfree(ptr noundef nonnull %42) #22
  br label %129

129:                                              ; preds = %122, %86
  %130 = call i32 @__cond_resched() #22
  %131 = icmp eq ptr %43, %2
  br i1 %131, label %132, label %41

132:                                              ; preds = %129, %36
  call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  br label %133

133:                                              ; preds = %132, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcpu_depopulate_chunk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @pcpu_get_pages.pages, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load i32, ptr @pcpu_nr_units, align 4
  %8 = load i32, ptr @pcpu_unit_pages, align 4
  %9 = shl i32 %7, 2
  %10 = mul i32 %9, %8
  %11 = tail call zeroext i1 @slab_is_available() #22
  %12 = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %15, label %14, !prof !10

14:                                               ; preds = %6
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %15

15:                                               ; preds = %14, %6
  br i1 %11, label %17, label %16

16:                                               ; preds = %15
  store ptr null, ptr @pcpu_get_pages.pages, align 4
  br label %26

17:                                               ; preds = %15
  %18 = icmp ult i32 %10, 4097
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #31
  br label %23

21:                                               ; preds = %17
  %22 = tail call noalias ptr @__vmalloc(i32 noundef %10, i32 noundef 3520) #31
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %22, %21 ], [ %20, %19 ]
  store ptr %24, ptr @pcpu_get_pages.pages, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %23, %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu-vm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 323, 0\0A.popsection", ""() #22, !srcloc !51
  unreachable

27:                                               ; preds = %23, %3
  %28 = phi ptr [ %24, %23 ], [ %4, %3 ]
  %29 = load i32, ptr @cacheid, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %33() #22
  br label %34

34:                                               ; preds = %32, %27
  %35 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %87

38:                                               ; preds = %34
  %39 = icmp sgt i32 %2, %1
  %40 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 8
  %41 = getelementptr inbounds %struct.pcpu_chunk, ptr %0, i32 0, i32 3
  %42 = shl i32 %1, 12
  %43 = sub i32 %2, %1
  %44 = shl i32 %43, 12
  br label %45

45:                                               ; preds = %75, %38
  %46 = phi i32 [ %35, %38 ], [ %84, %75 ]
  br i1 %39, label %47, label %75

47:                                               ; preds = %65, %45
  %48 = phi i32 [ %73, %65 ], [ %1, %45 ]
  %49 = load i8, ptr %40, align 4, !range !15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51, !prof !10

51:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 17, i32 noundef 9, ptr noundef null) #22
  br label %52

52:                                               ; preds = %51, %47
  %53 = load ptr, ptr %41, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = load ptr, ptr @pcpu_unit_offsets, align 4
  %56 = getelementptr i32, ptr %55, i32 %46
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %48, 12
  %59 = add i32 %58, %54
  %60 = add i32 %59, %57
  %61 = inttoptr i32 %60 to ptr
  %62 = tail call ptr @vmalloc_to_page(ptr noundef %61) #22
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65, !prof !11

64:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 164, i32 noundef 9, ptr noundef null) #22
  br label %65

65:                                               ; preds = %64, %52
  %66 = load ptr, ptr @pcpu_unit_map, align 4
  %67 = getelementptr i32, ptr %66, i32 %46
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr @pcpu_unit_pages, align 4
  %70 = mul i32 %69, %68
  %71 = add i32 %70, %48
  %72 = getelementptr ptr, ptr %28, i32 %71
  store ptr %62, ptr %72, align 4
  %73 = add i32 %48, 1
  %74 = icmp eq i32 %73, %2
  br i1 %74, label %75, label %47

75:                                               ; preds = %65, %45
  %76 = load ptr, ptr %41, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = load ptr, ptr @pcpu_unit_offsets, align 4
  %79 = getelementptr i32, ptr %78, i32 %46
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %42, %77
  %82 = add i32 %81, %80
  %83 = add i32 %82, %44
  tail call void @vunmap_range_noflush(i32 noundef %82, i32 noundef %83) #22
  %84 = tail call i32 @cpumask_next(i32 noundef %46, ptr noundef nonnull @__cpu_possible_mask) #23
  %85 = load i32, ptr @nr_cpu_ids, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %45, label %87

87:                                               ; preds = %75, %34
  %88 = phi i32 [ %36, %34 ], [ %85, %75 ]
  %89 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %90 = icmp ult i32 %89, %88
  br i1 %90, label %91, label %124

91:                                               ; preds = %87
  %92 = icmp sgt i32 %2, %1
  br label %99

93:                                               ; preds = %119
  %94 = load i32, ptr @nr_cpu_ids, align 4
  br label %95

95:                                               ; preds = %99, %93
  %96 = phi i32 [ %94, %93 ], [ %100, %99 ]
  %97 = tail call i32 @cpumask_next(i32 noundef %101, ptr noundef nonnull @__cpu_possible_mask) #23
  %98 = icmp ult i32 %97, %96
  br i1 %98, label %99, label %124

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %88, %91 ], [ %96, %95 ]
  %101 = phi i32 [ %89, %91 ], [ %97, %95 ]
  br i1 %92, label %102, label %95

102:                                              ; preds = %99
  %103 = load ptr, ptr @pcpu_unit_map, align 4
  %104 = load i32, ptr @pcpu_unit_pages, align 4
  br label %105

105:                                              ; preds = %119, %102
  %106 = phi i32 [ %120, %119 ], [ %104, %102 ]
  %107 = phi ptr [ %121, %119 ], [ %103, %102 ]
  %108 = phi i32 [ %122, %119 ], [ %1, %102 ]
  %109 = getelementptr i32, ptr %107, i32 %101
  %110 = load i32, ptr %109, align 4
  %111 = mul i32 %110, %106
  %112 = add i32 %111, %108
  %113 = getelementptr ptr, ptr %28, i32 %112
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %105
  tail call void @__free_pages(ptr noundef nonnull %114, i32 noundef 0) #22
  %117 = load ptr, ptr @pcpu_unit_map, align 4
  %118 = load i32, ptr @pcpu_unit_pages, align 4
  br label %119

119:                                              ; preds = %116, %105
  %120 = phi i32 [ %118, %116 ], [ %106, %105 ]
  %121 = phi ptr [ %117, %116 ], [ %107, %105 ]
  %122 = add i32 %108, 1
  %123 = icmp eq i32 %122, %2
  br i1 %123, label %93, label %105

124:                                              ; preds = %95, %87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcpu_free_vm_areas(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @lcm(i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #17

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nounwind }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind readnone }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { cold }
attributes #28 = { nounwind readnone willreturn }
attributes #29 = { alwaysinline nounwind readonly willreturn }
attributes #30 = { alwaysinline nounwind }
attributes #31 = { nounwind allocsize(0) }

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
!12 = !{i64 401535}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 7818360, i32 -388717296}
!15 = !{i8 0, i8 2}
!16 = !{i64 2153447952}
!17 = !{i64 2153448208}
!18 = !{i64 2153486418}
!19 = !{i64 2153486642}
!20 = !{i64 2153465122}
!21 = !{i64 2153465308}
!22 = !{i64 2149039127, i64 2149039150, i64 2149039182, i64 2149039214, i64 2149039252, i64 2149039282}
!23 = !{i64 2154676507, i64 2154676984, i64 2154676544, i64 2154676600, i64 2154676634, i64 2154676658, i64 2154676699, i64 2154676720, i64 2154676748, i64 2154676782}
!24 = !{i64 2154679082, i64 2154679559, i64 2154679119, i64 2154679175, i64 2154679209, i64 2154679233, i64 2154679274, i64 2154679295, i64 2154679323, i64 2154679357}
!25 = !{i64 2154681887, i64 2154682364, i64 2154681924, i64 2154681980, i64 2154682014, i64 2154682038, i64 2154682079, i64 2154682100, i64 2154682128, i64 2154682162}
!26 = !{i64 2154684426, i64 2154684903, i64 2154684463, i64 2154684519, i64 2154684553, i64 2154684577, i64 2154684618, i64 2154684639, i64 2154684667, i64 2154684701}
!27 = !{i64 2154687189, i64 2154687666, i64 2154687226, i64 2154687282, i64 2154687316, i64 2154687340, i64 2154687381, i64 2154687402, i64 2154687430, i64 2154687464}
!28 = !{i64 2154689812, i64 2154690289, i64 2154689849, i64 2154689905, i64 2154689939, i64 2154689963, i64 2154690004, i64 2154690025, i64 2154690053, i64 2154690087}
!29 = !{i64 2154692603, i64 2154693080, i64 2154692640, i64 2154692696, i64 2154692730, i64 2154692754, i64 2154692795, i64 2154692816, i64 2154692844, i64 2154692878}
!30 = !{i64 2154695584, i64 2154696061, i64 2154695621, i64 2154695677, i64 2154695711, i64 2154695735, i64 2154695776, i64 2154695797, i64 2154695825, i64 2154695859}
!31 = !{i64 2154701281, i64 2154701758, i64 2154701318, i64 2154701374, i64 2154701408, i64 2154701432, i64 2154701473, i64 2154701494, i64 2154701522, i64 2154701556}
!32 = !{i64 2154706799, i64 2154707276, i64 2154706836, i64 2154706892, i64 2154706926, i64 2154706950, i64 2154706991, i64 2154707012, i64 2154707040, i64 2154707074}
!33 = !{i64 2154716040, i64 2154716517, i64 2154716077, i64 2154716133, i64 2154716167, i64 2154716191, i64 2154716232, i64 2154716253, i64 2154716281, i64 2154716315}
!34 = !{i64 2154718627, i64 2154719104, i64 2154718664, i64 2154718720, i64 2154718754, i64 2154718778, i64 2154718819, i64 2154718840, i64 2154718868, i64 2154718902}
!35 = !{i64 2154721256, i64 2154721733, i64 2154721293, i64 2154721349, i64 2154721383, i64 2154721407, i64 2154721448, i64 2154721469, i64 2154721497, i64 2154721531}
!36 = !{i64 2154724176, i64 2154724653, i64 2154724213, i64 2154724269, i64 2154724303, i64 2154724327, i64 2154724368, i64 2154724389, i64 2154724417, i64 2154724451}
!37 = !{i64 2153503135}
!38 = !{i64 2153503303}
!39 = !{i64 2154671877, i64 2154672354, i64 2154671914, i64 2154671970, i64 2154672004, i64 2154672028, i64 2154672069, i64 2154672090, i64 2154672118, i64 2154672152}
!40 = !{i64 2154739142, i64 2154739619, i64 2154739179, i64 2154739235, i64 2154739269, i64 2154739293, i64 2154739334, i64 2154739355, i64 2154739383, i64 2154739417}
!41 = !{i64 2154734724, i64 2154735201, i64 2154734761, i64 2154734817, i64 2154734851, i64 2154734875, i64 2154734916, i64 2154734937, i64 2154734965, i64 2154734999}
!42 = !{i64 2154736332, i64 2154736809, i64 2154736369, i64 2154736425, i64 2154736459, i64 2154736483, i64 2154736524, i64 2154736545, i64 2154736573, i64 2154736607}
!43 = !{i64 2153079440}
!44 = !{i64 2149131437}
!45 = !{i64 2149127261}
!46 = !{i64 2149127336, i64 2149127363, i64 2149127410, i64 2149127432, i64 2149127460, i64 2149127480}
!47 = !{i64 383080}
!48 = !{i64 2149155581}
!49 = !{i64 2153519355}
!50 = !{i64 2153519525}
!51 = !{i64 2154594774, i64 2154595253, i64 2154594811, i64 2154594867, i64 2154594901, i64 2154594925, i64 2154594966, i64 2154594987, i64 2154595015, i64 2154595049}
