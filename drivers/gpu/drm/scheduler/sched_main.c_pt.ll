; ModuleID = '/llk/IR/drivers/gpu/drm/scheduler/sched_main.c_pt.bc'
source_filename = "../drivers/gpu/drm/scheduler/sched_main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_dependency_optimized:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_dependency_optimized\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_dependency_optimized:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_fault\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_suspend_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_suspend_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_suspend_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_resume_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_resume_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_resume_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_increase_karma:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_increase_karma\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_increase_karma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_reset_karma:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_reset_karma\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_reset_karma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_stop\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_start:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_start\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_resubmit_jobs:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_resubmit_jobs\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_resubmit_jobs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_resubmit_jobs_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_resubmit_jobs_ext\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_resubmit_jobs_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_arm:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_arm\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_arm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_add_dependency:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_add_dependency\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_add_dependency:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_add_implicit_dependencies:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_add_implicit_dependencies\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_add_implicit_dependencies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_pick_best:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_pick_best\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_pick_best:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_fini\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_increase_karma_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_increase_karma_ext\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_increase_karma_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_drm_sched_job = type { %struct.trace_entry, ptr, ptr, ptr, i64, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.62, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.62 = type { %struct.irq_work }
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
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.trace_event_raw_drm_run_job = type { %struct.trace_entry, ptr, ptr, ptr, i64, i32, i32, [0 x i8] }
%struct.trace_event_raw_drm_sched_process_job = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_drm_sched_job_wait_dep = type { %struct.trace_entry, ptr, i64, ptr, i64, i32, [0 x i8] }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_drm_sched_job = internal constant [14 x i8] c"drm_sched_job\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_drm_sched_job = dso_local global %struct.static_call_key { ptr @__traceiter_drm_sched_job }, align 4
@__tracepoint_drm_sched_job = dso_local global %struct.tracepoint { ptr @__tpstrtab_drm_sched_job, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_drm_sched_job, ptr null, ptr @__traceiter_drm_sched_job, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_drm_sched_job = internal constant ptr @__tracepoint_drm_sched_job, section "__tracepoints_ptrs", align 4
@__tpstrtab_drm_run_job = internal constant [12 x i8] c"drm_run_job\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_drm_run_job = dso_local global %struct.static_call_key { ptr @__traceiter_drm_run_job }, align 4
@__tracepoint_drm_run_job = dso_local global %struct.tracepoint { ptr @__tpstrtab_drm_run_job, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_drm_run_job, ptr null, ptr @__traceiter_drm_run_job, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_drm_run_job = internal constant ptr @__tracepoint_drm_run_job, section "__tracepoints_ptrs", align 4
@__tpstrtab_drm_sched_process_job = internal constant [22 x i8] c"drm_sched_process_job\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_drm_sched_process_job = dso_local global %struct.static_call_key { ptr @__traceiter_drm_sched_process_job }, align 4
@__tracepoint_drm_sched_process_job = dso_local global %struct.tracepoint { ptr @__tpstrtab_drm_sched_process_job, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_drm_sched_process_job, ptr null, ptr @__traceiter_drm_sched_process_job, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_drm_sched_process_job = internal constant ptr @__tracepoint_drm_sched_process_job, section "__tracepoints_ptrs", align 4
@__tpstrtab_drm_sched_job_wait_dep = internal constant [23 x i8] c"drm_sched_job_wait_dep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_drm_sched_job_wait_dep = dso_local global %struct.static_call_key { ptr @__traceiter_drm_sched_job_wait_dep }, align 4
@__tracepoint_drm_sched_job_wait_dep = dso_local global %struct.tracepoint { ptr @__tpstrtab_drm_sched_job_wait_dep, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_drm_sched_job_wait_dep, ptr null, ptr @__traceiter_drm_sched_job_wait_dep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_drm_sched_job_wait_dep = internal constant ptr @__tracepoint_drm_sched_job_wait_dep, section "__tracepoints_ptrs", align 4
@str__gpu_scheduler__trace_system_name = internal constant [14 x i8] c"gpu_scheduler\00", align 1
@trace_event_fields_drm_sched_job = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.91 { %struct.anon.92 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.91 { %struct.anon.92 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.91 { %struct.anon.92 { ptr @.str.13, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.91 { %struct.anon.92 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.91 { %struct.anon.92 { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_drm_sched_job = internal global %struct.trace_event_class { ptr @str__gpu_scheduler__trace_system_name, ptr @trace_event_raw_event_drm_sched_job, ptr @perf_trace_drm_sched_job, ptr @trace_event_reg, ptr @trace_event_fields_drm_sched_job, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_sched_job, i64 24), ptr getelementptr (i8, ptr @event_class_drm_sched_job, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_drm_sched_job = internal global %struct.trace_event_functions { ptr @trace_raw_output_drm_sched_job, ptr null, ptr null, ptr null }, align 4
@print_fmt_drm_sched_job = internal global [151 x i8] c"\22entity=%p, id=%llu, fence=%p, ring=%s, job count:%u, hw job count:%d\22, REC->entity, REC->id, REC->fence, REC->name, REC->job_count, REC->hw_job_count\00", align 1
@event_drm_sched_job = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_sched_job, %union.anon.93 { ptr @__tracepoint_drm_sched_job }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_sched_job }, ptr @print_fmt_drm_sched_job, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_drm_sched_job = internal global ptr @event_drm_sched_job, section "_ftrace_events", align 4
@trace_event_fields_drm_run_job = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.91 { %struct.anon.92 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.91 { %struct.anon.92 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.91 { %struct.anon.92 { ptr @.str.13, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.91 { %struct.anon.92 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.91 { %struct.anon.92 { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_drm_run_job = internal global %struct.trace_event_class { ptr @str__gpu_scheduler__trace_system_name, ptr @trace_event_raw_event_drm_run_job, ptr @perf_trace_drm_run_job, ptr @trace_event_reg, ptr @trace_event_fields_drm_run_job, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_run_job, i64 24), ptr getelementptr (i8, ptr @event_class_drm_run_job, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_drm_run_job = internal global %struct.trace_event_functions { ptr @trace_raw_output_drm_run_job, ptr null, ptr null, ptr null }, align 4
@print_fmt_drm_run_job = internal global [151 x i8] c"\22entity=%p, id=%llu, fence=%p, ring=%s, job count:%u, hw job count:%d\22, REC->entity, REC->id, REC->fence, REC->name, REC->job_count, REC->hw_job_count\00", align 1
@event_drm_run_job = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_run_job, %union.anon.93 { ptr @__tracepoint_drm_run_job }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_run_job }, ptr @print_fmt_drm_run_job, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_drm_run_job = internal global ptr @event_drm_run_job, section "_ftrace_events", align 4
@trace_event_fields_drm_sched_process_job = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_drm_sched_process_job = internal global %struct.trace_event_class { ptr @str__gpu_scheduler__trace_system_name, ptr @trace_event_raw_event_drm_sched_process_job, ptr @perf_trace_drm_sched_process_job, ptr @trace_event_reg, ptr @trace_event_fields_drm_sched_process_job, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_sched_process_job, i64 24), ptr getelementptr (i8, ptr @event_class_drm_sched_process_job, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_drm_sched_process_job = internal global %struct.trace_event_functions { ptr @trace_raw_output_drm_sched_process_job, ptr null, ptr null, ptr null }, align 4
@print_fmt_drm_sched_process_job = internal global [32 x i8] c"\22fence=%p signaled\22, REC->fence\00", align 1
@event_drm_sched_process_job = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_sched_process_job, %union.anon.93 { ptr @__tracepoint_drm_sched_process_job }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_sched_process_job }, ptr @print_fmt_drm_sched_process_job, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_drm_sched_process_job = internal global ptr @event_drm_sched_process_job, section "_ftrace_events", align 4
@trace_event_fields_drm_sched_job_wait_dep = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.91 { %struct.anon.92 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.91 { %struct.anon.92 { ptr @.str.13, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.91 { %struct.anon.92 { ptr @.str.20, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.91 { %struct.anon.92 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_drm_sched_job_wait_dep = internal global %struct.trace_event_class { ptr @str__gpu_scheduler__trace_system_name, ptr @trace_event_raw_event_drm_sched_job_wait_dep, ptr @perf_trace_drm_sched_job_wait_dep, ptr @trace_event_reg, ptr @trace_event_fields_drm_sched_job_wait_dep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_sched_job_wait_dep, i64 24), ptr getelementptr (i8, ptr @event_class_drm_sched_job_wait_dep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_drm_sched_job_wait_dep = internal global %struct.trace_event_functions { ptr @trace_raw_output_drm_sched_job_wait_dep, ptr null, ptr null, ptr null }, align 4
@print_fmt_drm_sched_job_wait_dep = internal global [117 x i8] c"\22job ring=%s, id=%llu, depends fence=%p, context=%llu, seq=%u\22, REC->name, REC->id, REC->fence, REC->ctx, REC->seqno\00", align 1
@event_drm_sched_job_wait_dep = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_sched_job_wait_dep, %union.anon.93 { ptr @__tracepoint_drm_sched_job_wait_dep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_sched_job_wait_dep }, ptr @print_fmt_drm_sched_job_wait_dep, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_drm_sched_job_wait_dep = internal global ptr @event_drm_sched_job_wait_dep, section "_ftrace_events", align 4
@__kstrtab_drm_sched_dependency_optimized = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_dependency_optimized = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_dependency_optimized = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_dependency_optimized to i32), ptr @__kstrtab_drm_sched_dependency_optimized, ptr @__kstrtabns_drm_sched_dependency_optimized }, section "___ksymtab+drm_sched_dependency_optimized", align 4
@__kstrtab_drm_sched_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_fault to i32), ptr @__kstrtab_drm_sched_fault, ptr @__kstrtabns_drm_sched_fault }, section "___ksymtab+drm_sched_fault", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_drm_sched_suspend_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_suspend_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_suspend_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_suspend_timeout to i32), ptr @__kstrtab_drm_sched_suspend_timeout, ptr @__kstrtabns_drm_sched_suspend_timeout }, section "___ksymtab+drm_sched_suspend_timeout", align 4
@__kstrtab_drm_sched_resume_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_resume_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_resume_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_resume_timeout to i32), ptr @__kstrtab_drm_sched_resume_timeout, ptr @__kstrtabns_drm_sched_resume_timeout }, section "___ksymtab+drm_sched_resume_timeout", align 4
@__kstrtab_drm_sched_increase_karma = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_increase_karma = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_increase_karma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_increase_karma to i32), ptr @__kstrtab_drm_sched_increase_karma, ptr @__kstrtabns_drm_sched_increase_karma }, section "___ksymtab+drm_sched_increase_karma", align 4
@__kstrtab_drm_sched_reset_karma = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_reset_karma = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_reset_karma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_reset_karma to i32), ptr @__kstrtab_drm_sched_reset_karma, ptr @__kstrtabns_drm_sched_reset_karma }, section "___ksymtab+drm_sched_reset_karma", align 4
@__kstrtab_drm_sched_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_stop to i32), ptr @__kstrtab_drm_sched_stop, ptr @__kstrtabns_drm_sched_stop }, section "___ksymtab+drm_sched_stop", align 4
@.str = private unnamed_addr constant [32 x i8] c"fence add callback failed (%d)\0A\00", align 1
@__kstrtab_drm_sched_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_start = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_start to i32), ptr @__kstrtab_drm_sched_start, ptr @__kstrtabns_drm_sched_start }, section "___ksymtab+drm_sched_start", align 4
@__kstrtab_drm_sched_resubmit_jobs = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_resubmit_jobs = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_resubmit_jobs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_resubmit_jobs to i32), ptr @__kstrtab_drm_sched_resubmit_jobs, ptr @__kstrtabns_drm_sched_resubmit_jobs }, section "___ksymtab+drm_sched_resubmit_jobs", align 4
@__kstrtab_drm_sched_resubmit_jobs_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_resubmit_jobs_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_resubmit_jobs_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_resubmit_jobs_ext to i32), ptr @__kstrtab_drm_sched_resubmit_jobs_ext, ptr @__kstrtabns_drm_sched_resubmit_jobs_ext }, section "___ksymtab+drm_sched_resubmit_jobs_ext", align 4
@__kstrtab_drm_sched_job_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_init to i32), ptr @__kstrtab_drm_sched_job_init, ptr @__kstrtabns_drm_sched_job_init }, section "___ksymtab+drm_sched_job_init", align 4
@__kstrtab_drm_sched_job_arm = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_arm = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_arm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_arm to i32), ptr @__kstrtab_drm_sched_job_arm, ptr @__kstrtabns_drm_sched_job_arm }, section "___ksymtab+drm_sched_job_arm", align 4
@__kstrtab_drm_sched_job_add_dependency = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_add_dependency = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_add_dependency = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_add_dependency to i32), ptr @__kstrtab_drm_sched_job_add_dependency, ptr @__kstrtabns_drm_sched_job_add_dependency }, section "___ksymtab+drm_sched_job_add_dependency", align 4
@__kstrtab_drm_sched_job_add_implicit_dependencies = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_add_implicit_dependencies = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_add_implicit_dependencies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_add_implicit_dependencies to i32), ptr @__kstrtab_drm_sched_job_add_implicit_dependencies, ptr @__kstrtabns_drm_sched_job_add_implicit_dependencies }, section "___ksymtab+drm_sched_job_add_implicit_dependencies", align 4
@__kstrtab_drm_sched_job_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_cleanup to i32), ptr @__kstrtab_drm_sched_job_cleanup, ptr @__kstrtabns_drm_sched_job_cleanup }, section "___ksymtab+drm_sched_job_cleanup", align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\014[drm] scheduler %s is not ready, skipping\00", align 1
@__kstrtab_drm_sched_pick_best = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_pick_best = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_pick_best = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_pick_best to i32), ptr @__kstrtab_drm_sched_pick_best, ptr @__kstrtabns_drm_sched_pick_best }, section "___ksymtab+drm_sched_pick_best", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@drm_sched_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"&sched->wake_up_worker\00", align 1
@drm_sched_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"&sched->job_scheduled\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to create scheduler for %s.\0A\00", align 1
@__kstrtab_drm_sched_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_init to i32), ptr @__kstrtab_drm_sched_init, ptr @__kstrtabns_drm_sched_init }, section "___ksymtab+drm_sched_init", align 4
@__kstrtab_drm_sched_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_fini to i32), ptr @__kstrtab_drm_sched_fini, ptr @__kstrtabns_drm_sched_fini }, section "___ksymtab+drm_sched_fini", align 4
@__kstrtab_drm_sched_increase_karma_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_increase_karma_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_increase_karma_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_increase_karma_ext to i32), ptr @__kstrtab_drm_sched_increase_karma_ext, ptr @__kstrtabns_drm_sched_increase_karma_ext }, section "___ksymtab+drm_sched_increase_karma_ext", align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"struct drm_sched_entity *\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"entity\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"struct dma_fence *\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fence\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"const char *\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"job_count\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"hw_job_count\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"entity=%p, id=%llu, fence=%p, ring=%s, job count:%u, hw job count:%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"fence=%p signaled\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"seqno\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"job ring=%s, id=%llu, depends fence=%p, context=%llu, seq=%u\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__event_drm_run_job, ptr @__event_drm_sched_job, ptr @__event_drm_sched_job_wait_dep, ptr @__event_drm_sched_process_job, ptr @__ksymtab_drm_sched_dependency_optimized, ptr @__ksymtab_drm_sched_fault, ptr @__ksymtab_drm_sched_fini, ptr @__ksymtab_drm_sched_increase_karma, ptr @__ksymtab_drm_sched_increase_karma_ext, ptr @__ksymtab_drm_sched_init, ptr @__ksymtab_drm_sched_job_add_dependency, ptr @__ksymtab_drm_sched_job_add_implicit_dependencies, ptr @__ksymtab_drm_sched_job_arm, ptr @__ksymtab_drm_sched_job_cleanup, ptr @__ksymtab_drm_sched_job_init, ptr @__ksymtab_drm_sched_pick_best, ptr @__ksymtab_drm_sched_reset_karma, ptr @__ksymtab_drm_sched_resubmit_jobs, ptr @__ksymtab_drm_sched_resubmit_jobs_ext, ptr @__ksymtab_drm_sched_resume_timeout, ptr @__ksymtab_drm_sched_start, ptr @__ksymtab_drm_sched_stop, ptr @__ksymtab_drm_sched_suspend_timeout, ptr @__tracepoint_drm_run_job, ptr @__tracepoint_drm_sched_job, ptr @__tracepoint_drm_sched_job_wait_dep, ptr @__tracepoint_drm_sched_process_job, ptr @__tracepoint_ptr_drm_run_job, ptr @__tracepoint_ptr_drm_sched_job, ptr @__tracepoint_ptr_drm_sched_job_wait_dep, ptr @__tracepoint_ptr_drm_sched_process_job, ptr @event_class_drm_run_job, ptr @event_class_drm_sched_job, ptr @event_class_drm_sched_job_wait_dep, ptr @event_class_drm_sched_process_job, ptr @event_drm_run_job, ptr @event_drm_sched_job, ptr @event_drm_sched_job_wait_dep, ptr @event_drm_sched_process_job], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_drm_sched_job(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_sched_job, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
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
define dso_local i32 @__traceiter_drm_run_job(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_run_job, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_drm_sched_process_job(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_sched_process_job, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_drm_sched_job_wait_dep(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_sched_job_wait_dep, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_drm_sched_job(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %13, label %38, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 40) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %15, i32 0, i32 1
  store ptr %2, ptr %18, align 8
  %19 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %15, i32 0, i32 4
  store i64 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.drm_sched_fence, ptr %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %15, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %15, i32 0, i32 3
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.drm_sched_entity, ptr %2, i32 0, i32 6, i32 2
  %32 = load volatile i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %15, i32 0, i32 5
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %34, i32 0, i32 7
  %36 = load volatile i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %15, i32 0, i32 6
  store i32 %36, ptr %37, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #8
  br label %38

38:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_drm_sched_job(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #8
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %21, i32 0, i32 1
  store ptr %2, ptr %34, align 8
  %35 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 5
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %21, i32 0, i32 4
  store i64 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.drm_sched_fence, ptr %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %21, i32 0, i32 2
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %21, i32 0, i32 3
  store ptr %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.drm_sched_entity, ptr %2, i32 0, i32 6, i32 2
  %48 = load volatile i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %21, i32 0, i32 5
  store i32 %48, ptr %49, align 8
  %50 = load ptr, ptr %42, align 4
  %51 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %50, i32 0, i32 7
  %52 = load volatile i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %21, i32 0, i32 6
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %5, align 4
  %55 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 44, i32 noundef %54, ptr noundef %0, i64 noundef 1, ptr noundef %55, ptr noundef %13, ptr noundef null) #8
  br label %56

56:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_drm_run_job(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %13, label %38, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 40) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %15, i32 0, i32 1
  store ptr %2, ptr %18, align 8
  %19 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %15, i32 0, i32 4
  store i64 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.drm_sched_fence, ptr %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %15, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %15, i32 0, i32 3
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.drm_sched_entity, ptr %2, i32 0, i32 6, i32 2
  %32 = load volatile i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %15, i32 0, i32 5
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %34, i32 0, i32 7
  %36 = load volatile i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %15, i32 0, i32 6
  store i32 %36, ptr %37, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #8
  br label %38

38:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_drm_run_job(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #8
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %21, i32 0, i32 1
  store ptr %2, ptr %34, align 8
  %35 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 5
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %21, i32 0, i32 4
  store i64 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.drm_sched_fence, ptr %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %21, i32 0, i32 2
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %21, i32 0, i32 3
  store ptr %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.drm_sched_entity, ptr %2, i32 0, i32 6, i32 2
  %48 = load volatile i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %21, i32 0, i32 5
  store i32 %48, ptr %49, align 8
  %50 = load ptr, ptr %42, align 4
  %51 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %50, i32 0, i32 7
  %52 = load volatile i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %21, i32 0, i32 6
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %5, align 4
  %55 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 44, i32 noundef %54, ptr noundef %0, i64 noundef 1, ptr noundef %55, ptr noundef %13, ptr noundef null) #8
  br label %56

56:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_drm_sched_process_job(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %19, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.trace_event_raw_drm_sched_process_job, ptr %14, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %19

19:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_drm_sched_process_job(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.trace_event_raw_drm_sched_process_job, ptr %20, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = load i32, ptr %4, align 4
  %36 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %35, ptr noundef %0, i64 noundef 1, ptr noundef %36, ptr noundef %12, ptr noundef null) #8
  br label %37

37:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_drm_sched_job_wait_dep(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %13, label %34, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 48) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %15, i32 0, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 5
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %15, i32 0, i32 2
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %15, i32 0, i32 3
  store ptr %2, ptr %26, align 8
  %27 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 3
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %15, i32 0, i32 4
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 4
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %15, i32 0, i32 5
  store i32 %32, ptr %33, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #8
  br label %34

34:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_drm_sched_job_wait_dep(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #8
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %21, i32 0, i32 1
  store ptr %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 5
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %21, i32 0, i32 2
  store i64 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %21, i32 0, i32 3
  store ptr %2, ptr %42, align 8
  %43 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 3
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %21, i32 0, i32 4
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 4
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %21, i32 0, i32 5
  store i32 %48, ptr %49, align 8
  %50 = load i32, ptr %5, align 4
  %51 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 52, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %13, ptr noundef null) #8
  br label %52

52:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_rq_add_entity(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.drm_sched_rq, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #8, !srcloc !14
  %11 = getelementptr inbounds %struct.drm_sched_rq, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.drm_sched_rq, ptr %0, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %1, ptr %12, align 4
  store ptr %11, ptr %1, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %1, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %15 = load i16, ptr %0, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %17

17:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_rq_remove_entity(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.drm_sched_rq, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #8, !srcloc !19
  %11 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.drm_sched_rq, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store ptr null, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %20 = load i16, ptr %0, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %22

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_sched_dependency_optimized(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_sched_entity, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_sched_rq, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_fence_ops, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = tail call zeroext i1 %17(ptr noundef nonnull %0) #8
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = tail call i32 @dma_fence_signal(ptr noundef nonnull %0) #8
  br label %37

23:                                               ; preds = %19, %13
  %24 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 3
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.drm_sched_entity, ptr %1, i32 0, i32 8
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @to_drm_sched_fence(ptr noundef nonnull %0) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.drm_sched_fence, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %6
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %32, %23, %21, %8, %2
  %38 = phi i1 [ false, %36 ], [ false, %2 ], [ true, %23 ], [ true, %32 ], [ false, %21 ], [ false, %8 ]
  ret i1 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_drm_sched_fence(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_fault(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10
  %5 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %4, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_sched_suspend_timeout(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10
  %4 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10, i32 1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %3, i32 noundef 2147483647) #8
  %9 = sub i32 %2, %5
  %10 = icmp slt i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = sub i32 %5, %2
  br label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_resume_timeout(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 12
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10
  %9 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %8) #8
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10
  %14 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %13, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %16 = load i16, ptr %3, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_increase_karma(ptr noundef %0) #0 {
  tail call void @drm_sched_increase_karma_ext(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_increase_karma_ext(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %76, label %8

8:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 0, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 6
  store volatile i32 0, ptr %10, align 4
  br label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #8, !srcloc !13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #8, !srcloc !14
  br label %14

14:                                               ; preds = %11, %9, %8
  %15 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  %16 = getelementptr %struct.drm_gpu_scheduler, ptr %4, i32 0, i32 4, i32 0
  tail call void @_raw_spin_lock(ptr noundef %16) #8
  %17 = getelementptr %struct.drm_gpu_scheduler, ptr %4, i32 0, i32 4, i32 0, i32 2
  br label %18

18:                                               ; preds = %22, %14
  %19 = phi ptr [ %17, %14 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %15, align 8
  %24 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 3
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.drm_sched_entity, ptr %20, i32 0, i32 8
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %18

29:                                               ; preds = %63, %47, %22
  %30 = phi ptr [ %57, %63 ], [ %41, %47 ], [ %16, %22 ]
  %31 = phi ptr [ %61, %63 ], [ %45, %47 ], [ %20, %22 ]
  %32 = getelementptr inbounds %struct.drm_sched_entity, ptr %31, i32 0, i32 11
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %73, label %35

35:                                               ; preds = %29
  store volatile i32 %1, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %36 = load i16, ptr %30, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %76

38:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %39 = load i16, ptr %16, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %41 = getelementptr %struct.drm_gpu_scheduler, ptr %4, i32 0, i32 4, i32 1
  tail call void @_raw_spin_lock(ptr noundef %41) #8
  %42 = getelementptr %struct.drm_gpu_scheduler, ptr %4, i32 0, i32 4, i32 1, i32 2
  br label %43

43:                                               ; preds = %47, %38
  %44 = phi ptr [ %42, %38 ], [ %45, %47 ]
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %42
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %15, align 8
  %49 = getelementptr inbounds %struct.dma_fence, ptr %48, i32 0, i32 3
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.drm_sched_entity, ptr %45, i32 0, i32 8
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %29, label %43

54:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %55 = load i16, ptr %41, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %57 = getelementptr %struct.drm_gpu_scheduler, ptr %4, i32 0, i32 4, i32 2
  tail call void @_raw_spin_lock(ptr noundef %57) #8
  %58 = getelementptr %struct.drm_gpu_scheduler, ptr %4, i32 0, i32 4, i32 2, i32 2
  br label %59

59:                                               ; preds = %63, %54
  %60 = phi ptr [ %58, %54 ], [ %61, %63 ]
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %58
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %15, align 8
  %65 = getelementptr inbounds %struct.dma_fence, ptr %64, i32 0, i32 3
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds %struct.drm_sched_entity, ptr %61, i32 0, i32 8
  %68 = load i64, ptr %67, align 8
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %29, label %59

70:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %71 = load i16, ptr %57, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %76

73:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %74 = load i16, ptr %30, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %76

76:                                               ; preds = %73, %70, %35, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_reset_karma(ptr noundef %0) #0 {
  tail call void @drm_sched_increase_karma_ext(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_stop(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @kthread_park(ptr noundef %4) #8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  store ptr %14, ptr %12, align 4
  %16 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 1, i32 1
  store ptr %13, ptr %16, align 4
  store volatile ptr %12, ptr %13, align 4
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 12
  %19 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 12, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %18
  br i1 %21, label %58, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 7
  %24 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 13
  %25 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 18
  br label %26

26:                                               ; preds = %56, %22
  %27 = phi ptr [ %20, %22 ], [ %30, %56 ]
  %28 = getelementptr i8, ptr %27, i32 -4
  %29 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %27, i32 12
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.drm_sched_fence, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %27, i32 56
  %38 = tail call zeroext i1 @dma_fence_remove_callback(ptr noundef nonnull %34, ptr noundef %37) #8
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #8, !srcloc !13
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #8, !srcloc !19
  br label %56

41:                                               ; preds = %36, %26
  tail call void @_raw_spin_lock(ptr noundef %24) #8
  %42 = load ptr, ptr %29, align 4
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store volatile ptr %27, ptr %27, align 4
  store ptr %27, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %45 = load i16, ptr %24, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %47 = load ptr, ptr %31, align 8
  %48 = getelementptr inbounds %struct.drm_sched_fence, ptr %47, i32 0, i32 1
  %49 = tail call i32 @dma_fence_wait_timeout(ptr noundef %48, i1 noundef zeroext false, i32 noundef 2147483647) #8
  %50 = icmp eq ptr %28, %1
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %28) #8
  br label %56

55:                                               ; preds = %41
  store i8 1, ptr %25, align 1
  br label %56

56:                                               ; preds = %55, %51, %39
  %57 = icmp eq ptr %30, %18
  br i1 %57, label %58, label %26

58:                                               ; preds = %56, %17
  %59 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10
  %60 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %59) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_start(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 7
  br label %8

8:                                                ; preds = %25, %6
  %9 = phi ptr [ %4, %6 ], [ %11, %25 ]
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr i8, ptr %9, i32 12
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_sched_fence, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !13
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !14
  br i1 %1, label %17, label %25

17:                                               ; preds = %8
  %18 = icmp eq ptr %15, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %9, i32 56
  %21 = tail call i32 @dma_fence_add_callback(ptr noundef nonnull %15, ptr noundef %20, ptr noundef nonnull @drm_sched_job_done_cb) #8
  switch i32 %21, label %23 [
    i32 -2, label %22
    i32 0, label %25
  ]

22:                                               ; preds = %19
  tail call fastcc void @drm_sched_job_done(ptr noundef %10)
  br label %25

23:                                               ; preds = %19
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %21) #8
  br label %25

24:                                               ; preds = %17
  tail call fastcc void @drm_sched_job_done(ptr noundef %10)
  br label %25

25:                                               ; preds = %24, %23, %22, %19, %8
  %26 = icmp eq ptr %11, %3
  br i1 %26, label %27, label %8

27:                                               ; preds = %25, %2
  br i1 %1, label %28, label %44

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %29) #8
  %30 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 2147483647
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load volatile ptr, ptr %3, align 4
  %35 = icmp eq ptr %34, %3
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 9
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10
  %40 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %39, i32 noundef %31) #8
  br label %41

41:                                               ; preds = %36, %33, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %42 = load i16, ptr %29, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %44

44:                                               ; preds = %41, %27
  %45 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 11
  %46 = load ptr, ptr %45, align 8
  tail call void @kthread_unpark(ptr noundef %46) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sched_job_done_cb(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -60
  tail call fastcc void @drm_sched_job_done(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_sched_job_done(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %5, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #8, !srcloc !13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #8, !srcloc !19
  %8 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #8, !srcloc !19
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_sched_process_job, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = tail call ptr @llvm.thread.pointer() #8
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %25 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_sched_process_job, i32 0, i32 7), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %32, %27 ], [ %25, %24 ]
  %29 = load volatile ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tracepoint_func, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %29(ptr noundef %31, ptr noundef %3) #8
  %32 = getelementptr %struct.tracepoint_func, ptr %28, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %27

35:                                               ; preds = %27, %24
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  br label %36

36:                                               ; preds = %35, %13, %1
  %37 = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #8, !srcloc !13
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #8, !srcloc !22
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !11

44:                                               ; preds = %39
  %45 = add i32 %42, 1
  %46 = or i32 %45, %42
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %51, label %48, !prof !10

48:                                               ; preds = %44, %39
  %49 = phi i32 [ 2, %39 ], [ 1, %44 ]
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef %49) #8
  br label %51

50:                                               ; preds = %36
  tail call void @drm_sched_fence_finished(ptr noundef %3) #8
  br label %59

51:                                               ; preds = %48, %44
  tail call void @drm_sched_fence_finished(ptr noundef %3) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #8, !srcloc !13
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #8, !srcloc !24
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = icmp sgt i32 %53, 0
  br i1 %56, label %59, label %57, !prof !10

57:                                               ; preds = %55
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 3) #8
  br label %59

58:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  tail call void @dma_fence_release(ptr noundef %40) #8
  br label %59

59:                                               ; preds = %58, %57, %55, %50
  %60 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %5, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %60, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_resubmit_jobs(ptr noundef %0) #0 {
  tail call void @drm_sched_resubmit_jobs_ext(ptr noundef %0, i32 noundef 2147483647)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_resubmit_jobs_ext(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %85, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 14
  %8 = call i32 @llvm.smax.i32(i32 %1, i32 0)
  br label %9

9:                                                ; preds = %80, %6
  %10 = phi ptr [ %4, %6 ], [ %15, %80 ]
  %11 = phi i64 [ 0, %6 ], [ %44, %80 ]
  %12 = phi i1 [ false, %6 ], [ %45, %80 ]
  %13 = phi i32 [ 0, %6 ], [ %63, %80 ]
  %14 = getelementptr i8, ptr %10, i32 -4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %10, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq i32 %13, %8
  br i1 %18, label %85, label %19

19:                                               ; preds = %9
  br i1 %12, label %28, label %20

20:                                               ; preds = %19
  %21 = getelementptr i8, ptr %10, i32 44
  %22 = load volatile i32, ptr %21, align 4
  %23 = load i32, ptr %7, align 8
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 3
  %27 = load i64, ptr %26, align 8
  br label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 3
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %32, label %42

32:                                               ; preds = %28, %25
  %33 = phi i64 [ %27, %25 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.drm_sched_fence, ptr %17, i32 0, i32 1, i32 5
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !10

38:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 545, i32 noundef 9, ptr noundef null) #8
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct.drm_sched_fence, ptr %17, i32 0, i32 1, i32 7
  store i32 -125, ptr %40, align 8
  %41 = load ptr, ptr %16, align 8
  br label %42

42:                                               ; preds = %39, %28, %20
  %43 = phi ptr [ %41, %39 ], [ %17, %28 ], [ %17, %20 ]
  %44 = phi i64 [ %33, %39 ], [ %11, %28 ], [ %11, %20 ]
  %45 = phi i1 [ true, %39 ], [ true, %28 ], [ false, %20 ]
  %46 = getelementptr inbounds %struct.drm_sched_fence, ptr %43, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #8, !srcloc !13
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #8, !srcloc !24
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %58, label %56, !prof !10

56:                                               ; preds = %54
  tail call void @refcount_warn_saturate(ptr noundef %50, i32 noundef 3) #8
  br label %58

57:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  tail call void @dma_fence_release(ptr noundef %50) #8
  br label %58

58:                                               ; preds = %57, %56, %54, %42
  %59 = load ptr, ptr %0, align 8
  %60 = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call ptr %61(ptr noundef %14) #8
  %63 = add nuw i32 %13, 1
  %64 = icmp eq ptr %62, null
  %65 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  %66 = or i1 %64, %65
  %67 = select i1 %66, ptr null, ptr %62
  br i1 %65, label %68, label %80

68:                                               ; preds = %58
  %69 = ptrtoint ptr %62 to i32
  %70 = getelementptr inbounds %struct.drm_sched_fence, ptr %17, i32 0, i32 1, i32 5
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74, !prof !10

74:                                               ; preds = %68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 545, i32 noundef 9, ptr noundef null) #8
  br label %75

75:                                               ; preds = %74, %68
  %76 = icmp ult ptr %62, inttoptr (i32 -4095 to ptr)
  br i1 %76, label %77, label %78, !prof !11

77:                                               ; preds = %75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 546, i32 noundef 9, ptr noundef null) #8
  br label %78

78:                                               ; preds = %77, %75
  %79 = getelementptr inbounds %struct.drm_sched_fence, ptr %17, i32 0, i32 1, i32 7
  store i32 %69, ptr %79, align 8
  br label %80

80:                                               ; preds = %78, %58
  %81 = phi ptr [ null, %78 ], [ %67, %58 ]
  %82 = load ptr, ptr %16, align 8
  %83 = getelementptr inbounds %struct.drm_sched_fence, ptr %82, i32 0, i32 2
  store ptr %81, ptr %83, align 8
  %84 = icmp eq ptr %15, %3
  br i1 %84, label %85, label %9

85:                                               ; preds = %80, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_sched_job_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @drm_sched_entity_select_rq(ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.drm_sched_entity, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 8
  store ptr %1, ptr %8, align 8
  %9 = tail call ptr @drm_sched_fence_alloc(ptr noundef %1, ptr noundef %2) #8
  %10 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  store ptr %9, ptr %10, align 8
  %11 = icmp eq ptr %9, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 10
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 10, i32 1
  store i32 33554436, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 10, i32 2
  store ptr null, ptr %17, align 4
  br label %18

18:                                               ; preds = %12, %7, %3
  %19 = phi i32 [ 0, %12 ], [ -2, %3 ], [ -12, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_select_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_sched_fence_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_job_arm(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/scheduler/sched_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 625, 0\0A.popsection", ""() #8, !srcloc !26
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_sched_entity, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_sched_rq, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %10, i32 0, i32 4
  %14 = ptrtoint ptr %12 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = sdiv exact i32 %16, 20
  %18 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 7
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %10, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #8, !srcloc !13
  %20 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %19, ptr %19, i64 1, ptr elementtype(i64) %19) #8, !srcloc !28
  %21 = extractvalue { i64, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !29
  %22 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 5
  store i64 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %2, align 8
  tail call void @drm_sched_fence_init(ptr noundef %24, ptr noundef %25) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_sched_job_add_dependency(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  store i32 0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 10
  %8 = call ptr @xa_find(ptr noundef %7, ptr noundef nonnull %3, i32 noundef -1, i32 noundef 8) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 3
  br label %12

12:                                               ; preds = %54, %10
  %13 = phi ptr [ %8, %10 ], [ %55, %54 ]
  %14 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = load i64, ptr %11, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 4
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 4, !range !30
  %26 = icmp eq i8 %25, 0
  %27 = icmp ugt i64 %20, %22
  %28 = trunc i64 %20 to i32
  %29 = trunc i64 %22 to i32
  %30 = sub i32 %28, %29
  %31 = icmp sgt i32 %30, 0
  %32 = select i1 %26, i1 %31, i1 %27
  br i1 %32, label %33, label %45

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #8, !srcloc !13
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #8, !srcloc !24
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %42, label %40, !prof !10

40:                                               ; preds = %38
  call void @refcount_warn_saturate(ptr noundef %34, i32 noundef 3) #8
  br label %42

41:                                               ; preds = %33
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  call void @dma_fence_release(ptr noundef %34) #8
  br label %42

42:                                               ; preds = %41, %40, %38
  %43 = load i32, ptr %3, align 4
  %44 = call ptr @xa_store(ptr noundef %7, i32 noundef %43, ptr noundef nonnull %1, i32 noundef 3264) #8
  br label %71

45:                                               ; preds = %18
  %46 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #8, !srcloc !13
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #8, !srcloc !24
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %71, label %52, !prof !10

52:                                               ; preds = %50
  call void @refcount_warn_saturate(ptr noundef %46, i32 noundef 3) #8
  br label %71

53:                                               ; preds = %45
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  call void @dma_fence_release(ptr noundef %46) #8
  br label %71

54:                                               ; preds = %12
  %55 = call ptr @xa_find_after(ptr noundef %7, ptr noundef nonnull %3, i32 noundef -1, i32 noundef 8) #8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %12

57:                                               ; preds = %54, %6
  call void @_raw_spin_lock(ptr noundef %7) #8
  %58 = call i32 @__xa_alloc(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %1, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %59 = load i16, ptr %7, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #8, !srcloc !13
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #8, !srcloc !24
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = icmp sgt i32 %65, 0
  br i1 %68, label %71, label %69, !prof !10

69:                                               ; preds = %67
  call void @refcount_warn_saturate(ptr noundef %63, i32 noundef 3) #8
  br label %71

70:                                               ; preds = %62
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  call void @dma_fence_release(ptr noundef %63) #8
  br label %71

71:                                               ; preds = %70, %69, %67, %57, %53, %52, %50, %42, %2
  %72 = phi i32 [ 0, %2 ], [ 0, %42 ], [ 0, %57 ], [ 0, %50 ], [ 0, %52 ], [ 0, %53 ], [ %58, %67 ], [ %58, %69 ], [ %58, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.dma_resv_iter, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 28, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = zext i1 %2 to i8
  store ptr %7, ptr %4, align 4
  %9 = getelementptr inbounds %struct.dma_resv_iter, ptr %4, i32 0, i32 1
  store i8 %8, ptr %9, align 4
  %10 = call ptr @dma_resv_iter_first(ptr noundef nonnull %4) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %35, %3
  %13 = phi ptr [ %36, %35 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !13
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #8, !srcloc !22
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !11

18:                                               ; preds = %12
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %18, %12
  %23 = phi i32 [ 2, %12 ], [ 1, %18 ]
  call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #8
  br label %24

24:                                               ; preds = %22, %18
  %25 = call i32 @drm_sched_job_add_dependency(ptr noundef %0, ptr noundef nonnull %13)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !13
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #8, !srcloc !24
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %38, label %33, !prof !10

33:                                               ; preds = %31
  call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #8
  br label %38

34:                                               ; preds = %27
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  call void @dma_fence_release(ptr noundef %14) #8
  br label %38

35:                                               ; preds = %24
  %36 = call ptr @dma_resv_iter_next(ptr noundef nonnull %4) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %12

38:                                               ; preds = %35, %34, %33, %31, %3
  %39 = phi i32 [ %25, %31 ], [ %25, %33 ], [ %25, %34 ], [ 0, %3 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_job_cleanup(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #8, !srcloc !24
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %20, label %17, !prof !10

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #8
  br label %20

18:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  tail call void @dma_fence_release(ptr noundef %5) #8
  br label %20

19:                                               ; preds = %1
  tail call void @drm_sched_fence_free(ptr noundef %4) #8
  br label %20

20:                                               ; preds = %19, %18, %17, %15, %8
  store ptr null, ptr %3, align 8
  store i32 0, ptr %2, align 4
  %21 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 10
  %22 = call ptr @xa_find(ptr noundef %21, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %34, %20
  %25 = phi ptr [ %35, %34 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.dma_fence, ptr %25, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #8, !srcloc !13
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #8, !srcloc !24
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %30
  call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #8
  br label %34

33:                                               ; preds = %24
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  call void @dma_fence_release(ptr noundef %26) #8
  br label %34

34:                                               ; preds = %33, %32, %30
  %35 = call ptr @xa_find_after(ptr noundef %21, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %24

37:                                               ; preds = %34, %20
  call void @xa_destroy(ptr noundef %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_wakeup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 7
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %8, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_sched_pick_best(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %24, %2
  %5 = phi i32 [ %26, %24 ], [ -1, %2 ]
  %6 = phi i32 [ %27, %24 ], [ 0, %2 ]
  %7 = phi ptr [ %25, %24 ], [ null, %2 ]
  %8 = getelementptr ptr, ptr %0, i32 %6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %9, i32 0, i32 17
  %11 = load i8, ptr %10, align 4, !range !30
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %15) #9
  br label %24

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %9, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp ult i32 %20, %5
  %22 = select i1 %21, ptr %9, ptr %7
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %5)
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi ptr [ %7, %13 ], [ %22, %17 ]
  %26 = phi i32 [ %5, %13 ], [ %23, %17 ]
  %27 = add nuw i32 %6, 1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %4

29:                                               ; preds = %24, %2
  %30 = phi ptr [ null, %2 ], [ %25, %24 ]
  ret ptr %30
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_sched_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  store ptr %1, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 1
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 3
  store ptr %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 2
  store i32 %4, ptr %11, align 8
  %12 = icmp eq ptr %5, null
  %13 = load ptr, ptr @system_wq, align 4
  %14 = select i1 %12, ptr %13, ptr %5
  %15 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 9
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 14
  store i32 %3, ptr %16, align 8
  %17 = icmp eq ptr %6, null
  %18 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 16
  %19 = select i1 %17, ptr %18, ptr %6
  %20 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 15
  store ptr %19, ptr %20, align 4
  %21 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 0
  store i32 0, ptr %21, align 4
  %22 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 0, i32 2
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 0, i32 2, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 0, i32 3
  store ptr null, ptr %24, align 4
  %25 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr %0, ptr %25, align 4
  %26 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 1, i32 2
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 1, i32 2, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 1, i32 3
  store ptr null, ptr %29, align 4
  %30 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 1, i32 1
  store ptr %0, ptr %30, align 4
  %31 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 2
  store i32 0, ptr %31, align 4
  %32 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 2, i32 2
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 2, i32 2, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 2, i32 3
  store ptr null, ptr %34, align 4
  %35 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 2, i32 1
  store ptr %0, ptr %35, align 4
  %36 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 3
  store i32 0, ptr %36, align 4
  %37 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 3, i32 2
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 3, i32 2, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 3, i32 3
  store ptr null, ptr %39, align 4
  %40 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 3, i32 1
  store ptr %0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %41, ptr noundef nonnull @.str.2, ptr noundef nonnull @drm_sched_init.__key) #8
  %42 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %42, ptr noundef nonnull @.str.4, ptr noundef nonnull @drm_sched_init.__key.3) #8
  %43 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 12
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 12, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 13
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 7
  store volatile i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10
  store i32 -32, ptr %47, align 4
  %48 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10, i32 0, i32 1
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10, i32 0, i32 1, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10, i32 0, i32 2
  store ptr @drm_sched_job_timedout, ptr %50, align 4
  %51 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %51, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  store volatile i32 0, ptr %18, align 4
  %52 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #8, !srcloc !13
  %53 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %52, ptr %52, i64 0) #8, !srcloc !31
  %54 = load ptr, ptr %10, align 4
  %55 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @drm_sched_main, ptr noundef %0, i32 noundef -1, ptr noundef %54) #8
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %60

57:                                               ; preds = %8
  %58 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 11
  %59 = ptrtoint ptr %55 to i32
  store ptr null, ptr %58, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, ptr noundef %7) #8
  br label %64

60:                                               ; preds = %8
  %61 = tail call i32 @wake_up_process(ptr noundef %55) #8
  %62 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 11
  store ptr %55, ptr %62, align 8
  %63 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 17
  store i8 1, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i32 [ %59, %57 ], [ 0, %60 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sched_job_timedout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 56
  tail call void @_raw_spin_lock(ptr noundef %2) #8
  %3 = getelementptr i8, ptr %0, i32 48
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = getelementptr i8, ptr %4, i32 -4
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %14 = load i16, ptr %2, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %16 = getelementptr i8, ptr %4, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef nonnull %6) #8
  %22 = getelementptr i8, ptr %0, i32 73
  %23 = load i8, ptr %22, align 1, !range !30
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %9
  %26 = load ptr, ptr %16, align 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef nonnull %6) #8
  store i8 0, ptr %22, align 1
  br label %33

30:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %31 = load i16, ptr %2, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %35

33:                                               ; preds = %25, %9
  %34 = icmp eq i32 %21, 2
  br i1 %34, label %49, label %35

35:                                               ; preds = %33, %30
  tail call void @_raw_spin_lock(ptr noundef %2) #8
  %36 = getelementptr i8, ptr %0, i32 -132
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 2147483647
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load volatile ptr, ptr %3, align 4
  %41 = icmp eq ptr %40, %3
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %0, i32 -4
  %44 = load ptr, ptr %43, align 8
  %45 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %0, i32 noundef %37) #8
  br label %46

46:                                               ; preds = %42, %39, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %47 = load i16, ptr %2, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %49

49:                                               ; preds = %46, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_sched_main(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = tail call ptr @llvm.thread.pointer() #8
  tail call void @sched_set_fifo_low(ptr noundef %3) #8
  %4 = call zeroext i1 @kthread_should_stop() #8
  br i1 %4, label %156, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 6
  br label %10

10:                                               ; preds = %154, %5
  %11 = call fastcc ptr @drm_sched_get_cleanup_job(ptr noundef %0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = call zeroext i1 @kthread_should_park() #8
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @kthread_parkme() #8
  br label %19

16:                                               ; preds = %13
  %17 = call fastcc ptr @drm_sched_select_entity(ptr noundef %0)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %16, %15
  %20 = call zeroext i1 @kthread_should_stop() #8
  br i1 %20, label %154, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #8
  %22 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 1) #8
  %23 = call fastcc ptr @drm_sched_get_cleanup_job(ptr noundef %0)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %38, %21
  %26 = phi i32 [ %39, %38 ], [ %22, %21 ]
  %27 = call zeroext i1 @kthread_should_park() #8
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @kthread_parkme() #8
  br label %32

29:                                               ; preds = %25
  %30 = call fastcc ptr @drm_sched_select_entity(ptr noundef %0)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %29, %28
  %33 = call zeroext i1 @kthread_should_stop() #8
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  call void @finish_wait(ptr noundef %6, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br label %154

35:                                               ; preds = %32
  %36 = icmp eq i32 %26, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br label %154

38:                                               ; preds = %35
  call void @schedule() #8
  %39 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 1) #8
  %40 = call fastcc ptr @drm_sched_get_cleanup_job(ptr noundef %0)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %25, label %42

42:                                               ; preds = %38, %21
  %43 = phi ptr [ %23, %21 ], [ %40, %38 ]
  call void @finish_wait(ptr noundef %6, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br label %44

44:                                               ; preds = %42, %10
  %45 = phi ptr [ %43, %42 ], [ %11, %10 ]
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  call void %48(ptr noundef nonnull %45) #8
  br label %154

49:                                               ; preds = %29
  call void @finish_wait(ptr noundef %6, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br label %50

50:                                               ; preds = %49, %16
  %51 = phi ptr [ %30, %49 ], [ %17, %16 ]
  %52 = call ptr @drm_sched_entity_pop_job(ptr noundef nonnull %51) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.drm_sched_entity, ptr %51, i32 0, i32 15
  call void @complete(ptr noundef %55) #8
  br label %154

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.drm_sched_job, ptr %52, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !13
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !14
  %60 = getelementptr inbounds %struct.drm_sched_job, ptr %52, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %61, i32 0, i32 13
  call void @_raw_spin_lock(ptr noundef %62) #8
  %63 = getelementptr inbounds %struct.drm_sched_job, ptr %52, i32 0, i32 1
  %64 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %61, i32 0, i32 12
  %65 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %61, i32 0, i32 12, i32 1
  %66 = load ptr, ptr %65, align 4
  store ptr %63, ptr %65, align 4
  store ptr %64, ptr %63, align 4
  %67 = getelementptr inbounds %struct.drm_sched_job, ptr %52, i32 0, i32 1, i32 1
  store ptr %66, ptr %67, align 4
  store volatile ptr %63, ptr %66, align 4
  %68 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %61, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 2147483647
  br i1 %70, label %79, label %71

71:                                               ; preds = %56
  %72 = load volatile ptr, ptr %64, align 4
  %73 = icmp eq ptr %72, %64
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %61, i32 0, i32 9
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %61, i32 0, i32 10
  %78 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %77, i32 noundef %69) #8
  br label %79

79:                                               ; preds = %74, %71, %56
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %80 = load i16, ptr %62, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %62, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_run_job, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %79
  %85 = load i32, ptr %8, align 8
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @__cpu_online_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %84
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !32
  %94 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drm_run_job, i32 0, i32 7), align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %96, %93
  %97 = phi ptr [ %101, %96 ], [ %94, %93 ]
  %98 = load volatile ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.tracepoint_func, ptr %97, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  call void %98(ptr noundef %100, ptr noundef nonnull %52, ptr noundef %51) #8
  %101 = getelementptr %struct.tracepoint_func, ptr %97, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %96

104:                                              ; preds = %96, %93
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !33
  br label %105

105:                                              ; preds = %104, %84, %79
  %106 = load ptr, ptr %0, align 8
  %107 = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = call ptr %108(ptr noundef nonnull %52) #8
  %110 = getelementptr inbounds %struct.drm_sched_entity, ptr %51, i32 0, i32 15
  call void @complete(ptr noundef %110) #8
  call void @drm_sched_fence_scheduled(ptr noundef %58) #8
  %111 = icmp eq ptr %109, null
  %112 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  %113 = or i1 %111, %112
  br i1 %113, label %139, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.dma_fence, ptr %109, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #8, !srcloc !13
  %116 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #8, !srcloc !22
  %117 = extractvalue { i32, i32, i32 } %116, 0
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119, !prof !11

119:                                              ; preds = %114
  %120 = add i32 %117, 1
  %121 = or i32 %120, %117
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %125, label %123, !prof !10

123:                                              ; preds = %119, %114
  %124 = phi i32 [ 2, %114 ], [ 1, %119 ]
  call void @refcount_warn_saturate(ptr noundef %115, i32 noundef %124) #8
  br label %125

125:                                              ; preds = %123, %119
  %126 = getelementptr inbounds %struct.drm_sched_fence, ptr %58, i32 0, i32 2
  store ptr %109, ptr %126, align 8
  %127 = getelementptr inbounds %struct.drm_sched_job, ptr %52, i32 0, i32 9
  %128 = call i32 @dma_fence_add_callback(ptr noundef nonnull %109, ptr noundef %127, ptr noundef nonnull @drm_sched_job_done_cb) #8
  switch i32 %128, label %130 [
    i32 -2, label %129
    i32 0, label %131
  ]

129:                                              ; preds = %125
  call fastcc void @drm_sched_job_done(ptr noundef nonnull %52)
  br label %131

130:                                              ; preds = %125
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %128) #8
  br label %131

131:                                              ; preds = %130, %129, %125
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #8, !srcloc !13
  %132 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #8, !srcloc !24
  %133 = extractvalue { i32, i32, i32 } %132, 0
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = icmp sgt i32 %133, 0
  br i1 %136, label %153, label %137, !prof !10

137:                                              ; preds = %135
  call void @refcount_warn_saturate(ptr noundef %115, i32 noundef 3) #8
  br label %153

138:                                              ; preds = %131
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  call void @dma_fence_release(ptr noundef %115) #8
  br label %153

139:                                              ; preds = %105
  br i1 %112, label %140, label %152

140:                                              ; preds = %139
  %141 = ptrtoint ptr %109 to i32
  %142 = getelementptr inbounds %struct.drm_sched_fence, ptr %58, i32 0, i32 1, i32 5
  %143 = load volatile i32, ptr %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146, !prof !10

146:                                              ; preds = %140
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 545, i32 noundef 9, ptr noundef null) #8
  br label %147

147:                                              ; preds = %146, %140
  %148 = icmp ult ptr %109, inttoptr (i32 -4095 to ptr)
  br i1 %148, label %149, label %150, !prof !11

149:                                              ; preds = %147
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 546, i32 noundef 9, ptr noundef null) #8
  br label %150

150:                                              ; preds = %149, %147
  %151 = getelementptr inbounds %struct.drm_sched_fence, ptr %58, i32 0, i32 1, i32 7
  store i32 %141, ptr %151, align 8
  br label %152

152:                                              ; preds = %150, %139
  call fastcc void @drm_sched_job_done(ptr noundef nonnull %52)
  br label %153

153:                                              ; preds = %152, %138, %137, %135
  call void @__wake_up(ptr noundef %9, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %154

154:                                              ; preds = %153, %54, %44, %37, %34, %19
  %155 = call zeroext i1 @kthread_should_stop() #8
  br i1 %155, label %156, label %10

156:                                              ; preds = %154, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @kthread_stop(ptr noundef nonnull %3) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  tail call void @_raw_spin_lock(ptr noundef nonnull %8) #8
  %11 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 3, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %19, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.drm_sched_entity, ptr %15, i32 0, i32 14
  store i8 1, ptr %16, align 4
  %17 = load ptr, ptr %15, align 4
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %19, label %14

19:                                               ; preds = %14, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %20 = load i16, ptr %8, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %22

22:                                               ; preds = %19, %7
  %23 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 2
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  tail call void @_raw_spin_lock(ptr noundef nonnull %23) #8
  %26 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 2, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %34, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %32, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.drm_sched_entity, ptr %30, i32 0, i32 14
  store i8 1, ptr %31, align 4
  %32 = load ptr, ptr %30, align 4
  %33 = icmp eq ptr %32, %26
  br i1 %33, label %34, label %29

34:                                               ; preds = %29, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %35 = load i16, ptr %23, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %37

37:                                               ; preds = %34, %22
  %38 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 1
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  tail call void @_raw_spin_lock(ptr noundef nonnull %38) #8
  %41 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 1, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %49, label %44

44:                                               ; preds = %44, %40
  %45 = phi ptr [ %47, %44 ], [ %42, %40 ]
  %46 = getelementptr inbounds %struct.drm_sched_entity, ptr %45, i32 0, i32 14
  store i8 1, ptr %46, align 4
  %47 = load ptr, ptr %45, align 4
  %48 = icmp eq ptr %47, %41
  br i1 %48, label %49, label %44

49:                                               ; preds = %44, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %50 = load i16, ptr %38, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %52

52:                                               ; preds = %49, %37
  %53 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 0
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  tail call void @_raw_spin_lock(ptr noundef nonnull %53) #8
  %56 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %64, label %59

59:                                               ; preds = %59, %55
  %60 = phi ptr [ %62, %59 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.drm_sched_entity, ptr %60, i32 0, i32 14
  store i8 1, ptr %61, align 4
  %62 = load ptr, ptr %60, align 4
  %63 = icmp eq ptr %62, %56
  br i1 %63, label %64, label %59

64:                                               ; preds = %59, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %65 = load i16, ptr %53, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %67

67:                                               ; preds = %64, %52
  %68 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %68, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  %69 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10
  %70 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %69) #8
  %71 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 17
  store i8 0, ptr %71, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_drm_sched_job(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %5, i32 0, i32 4
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %11, i64 noundef %13, ptr noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef %21) #8
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #8
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
define internal i32 @trace_raw_output_drm_run_job(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %5, i32 0, i32 4
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %11, i64 noundef %13, ptr noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef %21) #8
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_drm_sched_process_job(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_drm_sched_process_job, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %11) #8
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_drm_sched_job_wait_dep(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %5, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %5, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %11, i64 noundef %13, ptr noundef %15, i64 noundef %17, i32 noundef %19) #8
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_finished(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @drm_sched_get_cleanup_job(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 12
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = getelementptr i8, ptr %4, i32 -4
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %56, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %4, i32 12
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_sched_fence, ptr %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.drm_sched_fence, ptr %11, i32 0, i32 1, i32 5
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.drm_sched_fence, ptr %11, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_fence_ops, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %17
  %24 = tail call zeroext i1 %21(ptr noundef %12) #8
  br i1 %24, label %25, label %56

25:                                               ; preds = %23
  %26 = tail call i32 @dma_fence_signal(ptr noundef %12) #8
  br label %27

27:                                               ; preds = %25, %9
  %28 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %28, align 4
  %32 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 10
  %33 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %32) #8
  %34 = load volatile ptr, ptr %3, align 4
  %35 = icmp eq ptr %34, %3
  %36 = getelementptr i8, ptr %34, i32 -4
  %37 = icmp eq ptr %36, null
  %38 = or i1 %35, %37
  br i1 %38, label %56, label %39

39:                                               ; preds = %27
  %40 = load ptr, ptr %10, align 8
  %41 = getelementptr inbounds %struct.drm_sched_fence, ptr %40, i32 0, i32 1, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr i8, ptr %34, i32 12
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.dma_fence, ptr %44, i32 0, i32 2
  store i64 %42, ptr %45, align 8
  %46 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 2147483647
  br i1 %48, label %56, label %49

49:                                               ; preds = %39
  %50 = load volatile ptr, ptr %3, align 4
  %51 = icmp eq ptr %50, %3
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 9
  %54 = load ptr, ptr %53, align 8
  %55 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %54, ptr noundef %32, i32 noundef %47) #8
  br label %56

56:                                               ; preds = %52, %49, %39, %27, %23, %17, %1
  %57 = phi ptr [ %6, %27 ], [ null, %1 ], [ null, %17 ], [ null, %23 ], [ %6, %39 ], [ %6, %49 ], [ %6, %52 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %58 = load i16, ptr %2, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  ret ptr %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @drm_sched_select_entity(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 7
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %49

7:                                                ; preds = %46, %1
  %8 = phi i32 [ %47, %46 ], [ 3, %1 ]
  %9 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 %8
  tail call void @_raw_spin_lock(ptr noundef %9) #8
  %10 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 %8, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 %8, i32 2
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi ptr [ %17, %19 ], [ %11, %13 ]
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = tail call zeroext i1 @drm_sched_entity_is_ready(ptr noundef %17) #8
  br i1 %20, label %21, label %15

21:                                               ; preds = %19
  store ptr %17, ptr %10, align 4
  %22 = getelementptr inbounds %struct.drm_sched_entity, ptr %17, i32 0, i32 15
  store i32 0, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %23 = load i16, ptr %9, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %43

25:                                               ; preds = %15, %7
  %26 = getelementptr %struct.drm_gpu_scheduler, ptr %0, i32 0, i32 4, i32 %8, i32 2
  br label %27

27:                                               ; preds = %37, %25
  %28 = phi ptr [ %26, %25 ], [ %29, %37 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = tail call zeroext i1 @drm_sched_entity_is_ready(ptr noundef %29) #8
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  store ptr %29, ptr %10, align 4
  %34 = getelementptr inbounds %struct.drm_sched_entity, ptr %29, i32 0, i32 15
  store i32 0, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %35 = load i16, ptr %9, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %43

37:                                               ; preds = %31
  %38 = load ptr, ptr %10, align 4
  %39 = icmp eq ptr %29, %38
  br i1 %39, label %40, label %27

40:                                               ; preds = %37, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %41 = load i16, ptr %9, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %46

43:                                               ; preds = %33, %21
  %44 = phi ptr [ %17, %21 ], [ %29, %33 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40
  %47 = add nsw i32 %8, -1
  %48 = icmp sgt i32 %8, 0
  br i1 %48, label %7, label %49

49:                                               ; preds = %46, %43, %1
  %50 = phi ptr [ null, %1 ], [ null, %46 ], [ %44, %43 ]
  ret ptr %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_sched_entity_pop_job(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_scheduled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_park() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_parkme() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_sched_entity_is_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!12 = !{i64 588895}
!13 = !{i64 553043, i64 2148054609, i64 2148054635, i64 2148054682, i64 2148054704, i64 2148054732, i64 2148054752}
!14 = !{i64 2148117871, i64 2148117897, i64 2148117926, i64 2148117960, i64 2148117991, i64 2148118014}
!15 = !{i64 2149200872}
!16 = !{i64 2149196696}
!17 = !{i64 2149196771, i64 2149196798, i64 2149196845, i64 2149196867, i64 2149196895, i64 2149196915}
!18 = !{i64 2149223875}
!19 = !{i64 2148120228, i64 2148120254, i64 2148120283, i64 2148120317, i64 2148120348, i64 2148120371}
!20 = !{i64 2152921118}
!21 = !{i64 2152921282}
!22 = !{i64 2148119329, i64 2148119361, i64 2148119390, i64 2148119424, i64 2148119455, i64 2148119478}
!23 = !{i64 2148219551}
!24 = !{i64 2148121686, i64 2148121718, i64 2148121747, i64 2148121781, i64 2148121812, i64 2148121835}
!25 = !{i64 2149274787}
!26 = !{i64 2154375938, i64 2154376441, i64 2154375975, i64 2154376031, i64 2154376065, i64 2154376089, i64 2154376130, i64 2154376151, i64 2154376179, i64 2154376213}
!27 = !{i64 2148255189}
!28 = !{i64 2148129854, i64 2148129888, i64 2148129922, i64 2148129956, i64 2148129990, i64 2148130026, i64 2148130049}
!29 = !{i64 2148255394}
!30 = !{i8 0, i8 2}
!31 = !{i64 542902, i64 542922, i64 542950, i64 542980, i64 542996}
!32 = !{i64 2152908286}
!33 = !{i64 2152908454}
