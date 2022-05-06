; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_gpu_tracepoints.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gpu_tracepoints.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.106 }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.108, %struct.trace_event, ptr, ptr, %union.anon.109, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.108 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.109 = type { ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_msm_gpu_submit = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.82] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.70, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.70 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.anon.82 = type { i32, %union.anon.83, i64 }
%union.anon.83 = type { ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.upid = type { i32, ptr }
%struct.trace_event_raw_msm_gpu_submit_flush = type { %struct.trace_entry, i32, i32, i32, i32, i64, [0 x i8] }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.trace_event_raw_msm_gpu_submit_retired = type { %struct.trace_entry, i32, i32, i32, i32, i64, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_msm_gpu_freq_change = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gmu_freq_change = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_msm_gem_purge = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gem_evict = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gem_purge_vmaps = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gpu_suspend = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gpu_resume = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_msm_gpu_submit = internal constant [15 x i8] c"msm_gpu_submit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_submit = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_submit }, align 4
@__tracepoint_msm_gpu_submit = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gpu_submit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gpu_submit, ptr null, ptr @__traceiter_msm_gpu_submit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_submit = internal constant ptr @__tracepoint_msm_gpu_submit, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_submit_flush = internal constant [21 x i8] c"msm_gpu_submit_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_submit_flush = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_submit_flush }, align 4
@__tracepoint_msm_gpu_submit_flush = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gpu_submit_flush, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gpu_submit_flush, ptr null, ptr @__traceiter_msm_gpu_submit_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_submit_flush = internal constant ptr @__tracepoint_msm_gpu_submit_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_submit_retired = internal constant [23 x i8] c"msm_gpu_submit_retired\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_submit_retired = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_submit_retired }, align 4
@__tracepoint_msm_gpu_submit_retired = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gpu_submit_retired, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gpu_submit_retired, ptr null, ptr @__traceiter_msm_gpu_submit_retired, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_submit_retired = internal constant ptr @__tracepoint_msm_gpu_submit_retired, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_freq_change = internal constant [20 x i8] c"msm_gpu_freq_change\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_freq_change = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_freq_change }, align 4
@__tracepoint_msm_gpu_freq_change = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gpu_freq_change, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gpu_freq_change, ptr null, ptr @__traceiter_msm_gpu_freq_change, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_freq_change = internal constant ptr @__tracepoint_msm_gpu_freq_change, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gmu_freq_change = internal constant [20 x i8] c"msm_gmu_freq_change\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gmu_freq_change = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gmu_freq_change }, align 4
@__tracepoint_msm_gmu_freq_change = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gmu_freq_change, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gmu_freq_change, ptr null, ptr @__traceiter_msm_gmu_freq_change, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gmu_freq_change = internal constant ptr @__tracepoint_msm_gmu_freq_change, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gem_purge = internal constant [14 x i8] c"msm_gem_purge\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gem_purge = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gem_purge }, align 4
@__tracepoint_msm_gem_purge = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gem_purge, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gem_purge, ptr null, ptr @__traceiter_msm_gem_purge, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gem_purge = internal constant ptr @__tracepoint_msm_gem_purge, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gem_evict = internal constant [14 x i8] c"msm_gem_evict\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gem_evict = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gem_evict }, align 4
@__tracepoint_msm_gem_evict = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gem_evict, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gem_evict, ptr null, ptr @__traceiter_msm_gem_evict, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gem_evict = internal constant ptr @__tracepoint_msm_gem_evict, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gem_purge_vmaps = internal constant [20 x i8] c"msm_gem_purge_vmaps\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gem_purge_vmaps = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gem_purge_vmaps }, align 4
@__tracepoint_msm_gem_purge_vmaps = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gem_purge_vmaps, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gem_purge_vmaps, ptr null, ptr @__traceiter_msm_gem_purge_vmaps, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gem_purge_vmaps = internal constant ptr @__tracepoint_msm_gem_purge_vmaps, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_suspend = internal constant [16 x i8] c"msm_gpu_suspend\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_suspend = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_suspend }, align 4
@__tracepoint_msm_gpu_suspend = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gpu_suspend, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gpu_suspend, ptr null, ptr @__traceiter_msm_gpu_suspend, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_suspend = internal constant ptr @__tracepoint_msm_gpu_suspend, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_resume = internal constant [15 x i8] c"msm_gpu_resume\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_resume = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_resume }, align 4
@__tracepoint_msm_gpu_resume = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_gpu_resume, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_gpu_resume, ptr null, ptr @__traceiter_msm_gpu_resume, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_resume = internal constant ptr @__tracepoint_msm_gpu_resume, section "__tracepoints_ptrs", align 4
@str__drm_msm_gpu__trace_system_name = internal constant [12 x i8] c"drm_msm_gpu\00", align 1
@trace_event_fields_msm_gpu_submit = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.106 { %struct.anon.107 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gpu_submit = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_submit, ptr @perf_trace_msm_gpu_submit, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_submit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_submit, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_submit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_submit = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_submit, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gpu_submit = internal global [97 x i8] c"\22id=%d pid=%d ring=%d bos=%d cmds=%d\22, REC->id, REC->pid, REC->ringid, REC->nr_bos, REC->nr_cmds\00", align 1
@event_msm_gpu_submit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_submit, %union.anon.108 { ptr @__tracepoint_msm_gpu_submit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_submit }, ptr @print_fmt_msm_gpu_submit, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gpu_submit = internal global ptr @event_msm_gpu_submit, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_submit_flush = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.106 { %struct.anon.107 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.106 { %struct.anon.107 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gpu_submit_flush = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_submit_flush, ptr @perf_trace_msm_gpu_submit_flush, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_submit_flush, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_submit_flush, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_submit_flush, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_submit_flush = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_submit_flush, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gpu_submit_flush = internal global [93 x i8] c"\22id=%d pid=%d ring=%d:%d ticks=%lld\22, REC->id, REC->pid, REC->ringid, REC->seqno, REC->ticks\00", align 1
@event_msm_gpu_submit_flush = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_submit_flush, %union.anon.108 { ptr @__tracepoint_msm_gpu_submit_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_submit_flush }, ptr @print_fmt_msm_gpu_submit_flush, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gpu_submit_flush = internal global ptr @event_msm_gpu_submit_flush, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_submit_retired = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.106 { %struct.anon.107 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.106 { %struct.anon.107 { ptr @.str.12, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.106 { %struct.anon.107 { ptr @.str.13, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.106 { %struct.anon.107 { ptr @.str.14, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.106 { %struct.anon.107 { ptr @.str.15, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gpu_submit_retired = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_submit_retired, ptr @perf_trace_msm_gpu_submit_retired, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_submit_retired, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_submit_retired, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_submit_retired, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_submit_retired = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_submit_retired, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gpu_submit_retired = internal global [175 x i8] c"\22id=%d pid=%d ring=%d:%d elapsed=%lld ns mhz=%lld start=%lld end=%lld\22, REC->id, REC->pid, REC->ringid, REC->seqno, REC->elapsed, REC->clock, REC->start_ticks, REC->end_ticks\00", align 1
@event_msm_gpu_submit_retired = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_submit_retired, %union.anon.108 { ptr @__tracepoint_msm_gpu_submit_retired }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_submit_retired }, ptr @print_fmt_msm_gpu_submit_retired, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gpu_submit_retired = internal global ptr @event_msm_gpu_submit_retired, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_freq_change = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gpu_freq_change = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_freq_change, ptr @perf_trace_msm_gpu_freq_change, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_freq_change, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_freq_change, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_freq_change, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_freq_change = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_freq_change, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gpu_freq_change = internal global [25 x i8] c"\22new_freq=%u\22, REC->freq\00", align 1
@event_msm_gpu_freq_change = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_freq_change, %union.anon.108 { ptr @__tracepoint_msm_gpu_freq_change }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_freq_change }, ptr @print_fmt_msm_gpu_freq_change, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gpu_freq_change = internal global ptr @event_msm_gpu_freq_change, section "_ftrace_events", align 4
@trace_event_fields_msm_gmu_freq_change = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gmu_freq_change = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gmu_freq_change, ptr @perf_trace_msm_gmu_freq_change, ptr @trace_event_reg, ptr @trace_event_fields_msm_gmu_freq_change, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gmu_freq_change, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gmu_freq_change, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gmu_freq_change = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gmu_freq_change, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gmu_freq_change = internal global [53 x i8] c"\22freq=%u, perf_index=%u\22, REC->freq, REC->perf_index\00", align 1
@event_msm_gmu_freq_change = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gmu_freq_change, %union.anon.108 { ptr @__tracepoint_msm_gmu_freq_change }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gmu_freq_change }, ptr @print_fmt_msm_gmu_freq_change, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gmu_freq_change = internal global ptr @event_msm_gmu_freq_change, section "_ftrace_events", align 4
@trace_event_fields_msm_gem_purge = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gem_purge = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gem_purge, ptr @perf_trace_msm_gem_purge, ptr @trace_event_reg, ptr @trace_event_fields_msm_gem_purge, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gem_purge, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gem_purge, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gem_purge = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gem_purge, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gem_purge = internal global [31 x i8] c"\22Purging %u bytes\22, REC->bytes\00", align 1
@event_msm_gem_purge = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gem_purge, %union.anon.108 { ptr @__tracepoint_msm_gem_purge }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gem_purge }, ptr @print_fmt_msm_gem_purge, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gem_purge = internal global ptr @event_msm_gem_purge, section "_ftrace_events", align 4
@trace_event_fields_msm_gem_evict = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gem_evict = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gem_evict, ptr @perf_trace_msm_gem_evict, ptr @trace_event_reg, ptr @trace_event_fields_msm_gem_evict, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gem_evict, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gem_evict, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gem_evict = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gem_evict, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gem_evict = internal global [32 x i8] c"\22Evicting %u bytes\22, REC->bytes\00", align 1
@event_msm_gem_evict = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gem_evict, %union.anon.108 { ptr @__tracepoint_msm_gem_evict }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gem_evict }, ptr @print_fmt_msm_gem_evict, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gem_evict = internal global ptr @event_msm_gem_evict, section "_ftrace_events", align 4
@trace_event_fields_msm_gem_purge_vmaps = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gem_purge_vmaps = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gem_purge_vmaps, ptr @perf_trace_msm_gem_purge_vmaps, ptr @trace_event_reg, ptr @trace_event_fields_msm_gem_purge_vmaps, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gem_purge_vmaps, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gem_purge_vmaps, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gem_purge_vmaps = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gem_purge_vmaps, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gem_purge_vmaps = internal global [34 x i8] c"\22Purging %u vmaps\22, REC->unmapped\00", align 1
@event_msm_gem_purge_vmaps = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gem_purge_vmaps, %union.anon.108 { ptr @__tracepoint_msm_gem_purge_vmaps }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gem_purge_vmaps }, ptr @print_fmt_msm_gem_purge_vmaps, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gem_purge_vmaps = internal global ptr @event_msm_gem_purge_vmaps, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_suspend = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gpu_suspend = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_suspend, ptr @perf_trace_msm_gpu_suspend, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_suspend, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_suspend, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_suspend, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_suspend = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_suspend, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gpu_suspend = internal global [17 x i8] c"\22%u\22, REC->dummy\00", align 1
@event_msm_gpu_suspend = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_suspend, %union.anon.108 { ptr @__tracepoint_msm_gpu_suspend }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_suspend }, ptr @print_fmt_msm_gpu_suspend, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gpu_suspend = internal global ptr @event_msm_gpu_suspend, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_resume = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.106 { %struct.anon.107 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_gpu_resume = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_resume, ptr @perf_trace_msm_gpu_resume, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_resume, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_resume, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_resume, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_resume = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_resume, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_gpu_resume = internal global [17 x i8] c"\22%u\22, REC->dummy\00", align 1
@event_msm_gpu_resume = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_resume, %union.anon.108 { ptr @__tracepoint_msm_gpu_resume }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_resume }, ptr @print_fmt_msm_gpu_resume, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_gpu_resume = internal global ptr @event_msm_gpu_resume, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [6 x i8] c"pid_t\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ringid\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"nr_cmds\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nr_bos\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"id=%d pid=%d ring=%d bos=%d cmds=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"seqno\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ticks\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"id=%d pid=%d ring=%d:%d ticks=%lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"elapsed\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"start_ticks\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"end_ticks\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"id=%d pid=%d ring=%d:%d elapsed=%lld ns mhz=%lld start=%lld end=%lld\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"new_freq=%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"perf_index\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"freq=%u, perf_index=%u\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Purging %u bytes\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Evicting %u bytes\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"unmapped\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Purging %u vmaps\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__event_msm_gem_evict, ptr @__event_msm_gem_purge, ptr @__event_msm_gem_purge_vmaps, ptr @__event_msm_gmu_freq_change, ptr @__event_msm_gpu_freq_change, ptr @__event_msm_gpu_resume, ptr @__event_msm_gpu_submit, ptr @__event_msm_gpu_submit_flush, ptr @__event_msm_gpu_submit_retired, ptr @__event_msm_gpu_suspend, ptr @__tracepoint_msm_gem_evict, ptr @__tracepoint_msm_gem_purge, ptr @__tracepoint_msm_gem_purge_vmaps, ptr @__tracepoint_msm_gmu_freq_change, ptr @__tracepoint_msm_gpu_freq_change, ptr @__tracepoint_msm_gpu_resume, ptr @__tracepoint_msm_gpu_submit, ptr @__tracepoint_msm_gpu_submit_flush, ptr @__tracepoint_msm_gpu_submit_retired, ptr @__tracepoint_msm_gpu_suspend, ptr @__tracepoint_ptr_msm_gem_evict, ptr @__tracepoint_ptr_msm_gem_purge, ptr @__tracepoint_ptr_msm_gem_purge_vmaps, ptr @__tracepoint_ptr_msm_gmu_freq_change, ptr @__tracepoint_ptr_msm_gpu_freq_change, ptr @__tracepoint_ptr_msm_gpu_resume, ptr @__tracepoint_ptr_msm_gpu_submit, ptr @__tracepoint_ptr_msm_gpu_submit_flush, ptr @__tracepoint_ptr_msm_gpu_submit_retired, ptr @__tracepoint_ptr_msm_gpu_suspend, ptr @event_class_msm_gem_evict, ptr @event_class_msm_gem_purge, ptr @event_class_msm_gem_purge_vmaps, ptr @event_class_msm_gmu_freq_change, ptr @event_class_msm_gpu_freq_change, ptr @event_class_msm_gpu_resume, ptr @event_class_msm_gpu_submit, ptr @event_class_msm_gpu_submit_flush, ptr @event_class_msm_gpu_submit_retired, ptr @event_class_msm_gpu_suspend, ptr @event_msm_gem_evict, ptr @event_msm_gem_purge, ptr @event_msm_gem_purge_vmaps, ptr @event_msm_gmu_freq_change, ptr @event_msm_gpu_freq_change, ptr @event_msm_gpu_resume, ptr @event_msm_gpu_submit, ptr @event_msm_gpu_submit_flush, ptr @event_msm_gpu_submit_retired, ptr @event_msm_gpu_suspend], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_submit(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #6
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_submit_flush(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_flush, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i64 noundef %2) #6
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_submit_retired(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_submit_retired, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #6
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_freq_change(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_freq_change, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gmu_freq_change(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gmu_freq_change, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #6
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gem_purge(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gem_purge, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gem_evict(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gem_evict, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gem_purge_vmaps(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gem_purge_vmaps, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_suspend(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_resume(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_submit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %18, i32 0, i32 2
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %18, i32 0, i32 3
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %18, i32 0, i32 5
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %18, i32 0, i32 4
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #6
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_submit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #4, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #6
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #6
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %24, i32 0, i32 2
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %24, i32 0, i32 3
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %24, i32 0, i32 5
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %24, i32 0, i32 4
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #6
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_submit_flush(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %13, label %39, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 32) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pid, ptr %19, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %23, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %15, i32 0, i32 1
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %15, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.msm_ringbuffer, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %15, i32 0, i32 3
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %15, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %15, i32 0, i32 5
  store i64 %2, ptr %38, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #6
  br label %39

39:                                               ; preds = %24, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_submit_flush(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #4, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #6
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #6
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.pid, ptr %35, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %23
  %41 = phi i32 [ %39, %37 ], [ 0, %23 ]
  %42 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %21, i32 0, i32 1
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 20
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %21, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 16
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.msm_ringbuffer, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %21, i32 0, i32 3
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %21, i32 0, i32 4
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %21, i32 0, i32 5
  store i64 %2, ptr %54, align 8
  %55 = load i32, ptr %5, align 4
  %56 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %13, ptr noundef null) #6
  br label %57

57:                                               ; preds = %40, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_submit_retired(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %16, label %45, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 56) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pid, ptr %22, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %26, %24 ], [ 0, %20 ]
  %29 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %18, i32 0, i32 1
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %18, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 16
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.msm_ringbuffer, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %18, i32 0, i32 3
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %18, i32 0, i32 4
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %18, i32 0, i32 5
  store i64 %2, ptr %41, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %18, i32 0, i32 6
  store i64 %3, ptr %42, align 8
  %43 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %18, i32 0, i32 7
  store i64 %4, ptr %43, align 8
  %44 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %18, i32 0, i32 8
  store i64 %5, ptr %44, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #6
  br label %45

45:                                               ; preds = %27, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_submit_retired(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #4, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %63, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #6
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #6
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.pid, ptr %38, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %26
  %44 = phi i32 [ %42, %40 ], [ 0, %26 ]
  %45 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %24, i32 0, i32 1
  store i32 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 20
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %24, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 16
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.msm_ringbuffer, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %24, i32 0, i32 3
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.msm_gem_submit, ptr %1, i32 0, i32 7
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %24, i32 0, i32 4
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %24, i32 0, i32 5
  store i64 %2, ptr %57, align 8
  %58 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %24, i32 0, i32 6
  store i64 %3, ptr %58, align 8
  %59 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %24, i32 0, i32 7
  store i64 %4, ptr %59, align 8
  %60 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %24, i32 0, i32 8
  store i64 %5, ptr %60, align 8
  %61 = load i32, ptr %8, align 4
  %62 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 60, i32 noundef %61, ptr noundef %0, i64 noundef 1, ptr noundef %62, ptr noundef %16, ptr noundef null) #6
  br label %63

63:                                               ; preds = %43, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_freq_change(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %20, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = add i32 %1, 999999
  %18 = udiv i32 %17, 1000000
  %19 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_freq_change, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %20

20:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_freq_change(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #4, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = add i32 %1, 999999
  %34 = udiv i32 %33, 1000000
  %35 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_freq_change, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %4, align 4
  %37 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %12, ptr noundef null) #6
  br label %38

38:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gmu_freq_change(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #6
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gmu_freq_change(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #4, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #6
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #6
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #6
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gem_purge(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gem_purge(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #4, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gem_evict(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_gem_evict, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gem_evict(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #4, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_gem_evict, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gem_purge_vmaps(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge_vmaps, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gem_purge_vmaps(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #4, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge_vmaps, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_suspend(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_suspend, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_suspend(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #4, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_suspend, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_resume(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_resume, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_resume(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #4, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_resume, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_submit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %5, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #6
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_submit_flush(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %5, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i64 noundef %19) #6
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_submit_retired(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %5, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %5, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %5, i32 0, i32 7
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %5, i32 0, i32 8
  %25 = load i64, ptr %24, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i64 noundef %19, i64 noundef %21, i64 noundef %23, i64 noundef %25) #6
  %26 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %27

27:                                               ; preds = %8, %3
  %28 = phi i32 [ %26, %8 ], [ %6, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_freq_change(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_freq_change, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gmu_freq_change(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %11, i32 noundef %13) #6
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gem_purge(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gem_evict(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gem_evict, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gem_purge_vmaps(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge_vmaps, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_suspend(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_suspend, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_resume(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_resume, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!12 = !{i64 588877}
