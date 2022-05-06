; ModuleID = '/llk/IR/arch/arm/kernel/smp.c_pt.bc'
source_filename = "../arch/arm/kernel/smp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.secondary_data = type { %union.anon.94, i32, ptr, ptr }
%union.anon.94 = type { i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mm_struct = type { %struct.anon.12, [0 x i32] }
%struct.anon.12 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpuinfo_arm = type { %struct.cpu, i32, i32 }
%struct.cpu = type { i32, i32, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.irq_cpustat_t = type { i32, [60 x i8] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.lockdep_map = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_ipi_raise = type { %struct.trace_entry, i32, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_ipi_handler = type { %struct.trace_entry, ptr, [0 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.cpufreq_freqs = type { ptr, i32, i32, i8 }

@__tpstrtab_ipi_raise = internal constant [10 x i8] c"ipi_raise\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ipi_raise = dso_local global %struct.static_call_key { ptr @__traceiter_ipi_raise }, align 4
@__tracepoint_ipi_raise = dso_local global %struct.tracepoint { ptr @__tpstrtab_ipi_raise, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ipi_raise, ptr null, ptr @__traceiter_ipi_raise, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ipi_raise = internal constant ptr @__tracepoint_ipi_raise, section "__tracepoints_ptrs", align 4
@__tpstrtab_ipi_entry = internal constant [10 x i8] c"ipi_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ipi_entry = dso_local global %struct.static_call_key { ptr @__traceiter_ipi_entry }, align 4
@__tracepoint_ipi_entry = dso_local global %struct.tracepoint { ptr @__tpstrtab_ipi_entry, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ipi_entry, ptr null, ptr @__traceiter_ipi_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ipi_entry = internal constant ptr @__tracepoint_ipi_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_ipi_exit = internal constant [9 x i8] c"ipi_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ipi_exit = dso_local global %struct.static_call_key { ptr @__traceiter_ipi_exit }, align 4
@__tracepoint_ipi_exit = dso_local global %struct.tracepoint { ptr @__tpstrtab_ipi_exit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ipi_exit, ptr null, ptr @__traceiter_ipi_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ipi_exit = internal constant ptr @__tracepoint_ipi_exit, section "__tracepoints_ptrs", align 4
@str__ipi__trace_system_name = internal constant [4 x i8] c"ipi\00", align 1
@trace_event_fields_ipi_raise = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ipi_raise = internal global %struct.trace_event_class { ptr @str__ipi__trace_system_name, ptr @trace_event_raw_event_ipi_raise, ptr @perf_trace_ipi_raise, ptr @trace_event_reg, ptr @trace_event_fields_ipi_raise, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ipi_raise, i64 24), ptr getelementptr (i8, ptr @event_class_ipi_raise, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ipi_raise = internal global %struct.trace_event_functions { ptr @trace_raw_output_ipi_raise, ptr null, ptr null, ptr null }, align 4
@print_fmt_ipi_raise = internal global [63 x i8] c"\22target_mask=%s (%s)\22, __get_bitmask(target_cpus), REC->reason\00", align 1
@event_ipi_raise = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ipi_raise, %union.anon.0 { ptr @__tracepoint_ipi_raise }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ipi_raise }, ptr @print_fmt_ipi_raise, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ipi_raise = internal global ptr @event_ipi_raise, section "_ftrace_events", align 4
@trace_event_fields_ipi_handler = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ipi_handler = internal global %struct.trace_event_class { ptr @str__ipi__trace_system_name, ptr @trace_event_raw_event_ipi_handler, ptr @perf_trace_ipi_handler, ptr @trace_event_reg, ptr @trace_event_fields_ipi_handler, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ipi_handler, i64 24), ptr getelementptr (i8, ptr @event_class_ipi_handler, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ipi_handler = internal global %struct.trace_event_functions { ptr @trace_raw_output_ipi_handler, ptr null, ptr null, ptr null }, align 4
@print_fmt_ipi_handler = internal global [20 x i8] c"\22(%s)\22, REC->reason\00", align 1
@event_ipi_entry = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ipi_handler, %union.anon.0 { ptr @__tracepoint_ipi_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ipi_handler }, ptr @print_fmt_ipi_handler, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ipi_entry = internal global ptr @event_ipi_entry, section "_ftrace_events", align 4
@event_ipi_exit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ipi_handler, %union.anon.0 { ptr @__tracepoint_ipi_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ipi_handler }, ptr @print_fmt_ipi_handler, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ipi_exit = internal global ptr @event_ipi_exit, section "_ftrace_events", align 4
@smp_ops = internal unnamed_addr global %struct.smp_operations zeroinitializer, section ".data..ro_after_init", align 4
@secondary_data = dso_local global %struct.secondary_data zeroinitializer, align 8
@idmap_pgd = external dso_local local_unnamed_addr global ptr, align 4
@swapper_pg_dir = external dso_local global [2048 x [2 x i32]], align 4
@cpu_running = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpu_running, i64 8), ptr getelementptr (i8, ptr @cpu_running, i64 8) } } }, align 4
@.str = private unnamed_addr constant [32 x i8] c"\012CPU%u: failed to come online\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\013CPU%u: failed to boot: %d\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"\013CPU%u: cpu didn't die\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\013CPU%u: unable to kill\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"\014CPU%u: smp_ops.cpu_die() returned, trying to resuscitate\0A\00", align 1
@init_mm = external dso_local global %struct.mm_struct, align 8
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_data = external dso_local global %struct.cpuinfo_arm, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"\016SMP: Total of %d processors activated (%lu.%02lu BogoMIPS).\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"CPU wakeup interrupts\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Timer broadcast interrupts\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Rescheduling interrupts\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Function call interrupts\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"CPU stop interrupts\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"IRQ work interrupts\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"completion interrupts\00", align 1
@ipi_types = internal global [7 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "__tracepoint_str", align 4
@ipi_desc = internal unnamed_addr global [8 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"%*s%u: \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"IPI\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%10u \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@cpu_completion = internal global ptr null, section ".data..percpu", align 4
@.str.17 = private unnamed_addr constant [22 x i8] c"arch/arm/kernel/smp.c\00", align 1
@nr_ipi = internal unnamed_addr global i32 7, section ".data..read_mostly", align 4
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 64
@ipi_irq_base = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = private unnamed_addr constant [38 x i8] c"\014SMP: failed to stop secondary CPUs\0A\00", align 1
@__initcall__kmod_smp__272_851_register_cpufreq_notifier1 = internal global ptr @register_cpufreq_notifier, section ".initcall1.init", align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"__data_loc unsigned long[]\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"target_cpus\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"const char *\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"target_mask=%s (%s)\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@ipi_teardown.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@.str.27 = private unnamed_addr constant [35 x i8] c"\012CPU%u: Unknown IPI message 0x%x\0A\00", align 1
@trace_ipi_entry_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"include/trace/events/ipi.h\00", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@stop_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@.str.29 = private unnamed_addr constant [19 x i8] c"\012CPU%u: stopping\0A\00", align 1
@trace_ipi_exit_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_ipi_raise_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipi_setup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpufreq_notifier = internal global %struct.notifier_block { ptr @cpufreq_callback, ptr null, i32 0 }, align 4
@l_p_j_ref = internal global i32 0, section ".data..percpu", align 4
@l_p_j_ref_freq = internal global i32 0, section ".data..percpu", align 4
@global_l_p_j_ref = internal unnamed_addr global i32 0, align 4
@global_l_p_j_ref_freq = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__event_ipi_entry, ptr @__event_ipi_exit, ptr @__event_ipi_raise, ptr @__initcall__kmod_smp__272_851_register_cpufreq_notifier1, ptr @__tracepoint_ipi_entry, ptr @__tracepoint_ipi_exit, ptr @__tracepoint_ipi_raise, ptr @__tracepoint_ptr_ipi_entry, ptr @__tracepoint_ptr_ipi_exit, ptr @__tracepoint_ptr_ipi_raise, ptr @event_class_ipi_handler, ptr @event_class_ipi_raise, ptr @event_ipi_entry, ptr @event_ipi_exit, ptr @event_ipi_raise, ptr @ipi_types], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ipi_raise(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_raise, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #16
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
define dso_local i32 @__traceiter_ipi_entry(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_entry, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ipi_exit(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_exit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ipi_raise(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %22, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 20) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %15, i32 0, i32 1
  store i32 262160, ptr %18, align 4
  %19 = getelementptr i8, ptr %15, i32 16
  %20 = load i32, ptr %1, align 4
  store i32 %20, ptr %19, align 1
  %21 = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %15, i32 0, i32 2
  store ptr %2, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %22

22:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ipi_raise(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
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
  br i1 %19, label %40, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %21, i32 0, i32 1
  store i32 262160, ptr %34, align 4
  %35 = getelementptr i8, ptr %21, i32 16
  %36 = load i32, ptr %1, align 4
  store i32 %36, ptr %35, align 1
  %37 = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %21, i32 0, i32 2
  store ptr %2, ptr %37, align 4
  %38 = load i32, ptr %5, align 4
  %39 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %13, ptr noundef null) #16
  br label %40

40:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ipi_handler(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_ipi_handler, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #16
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ipi_handler(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #16
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #16
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #16
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_ipi_handler, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #16
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @smp_set_ops(ptr noundef readonly %0) local_unnamed_addr #3 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) @smp_ops, ptr noundef nonnull align 4 dereferenceable(32) %0, i32 32, i1 false)
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cpu_up(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 3), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8184
  store ptr %8, ptr getelementptr inbounds (%struct.secondary_data, ptr @secondary_data, i32 0, i32 2), align 4
  %9 = load ptr, ptr @idmap_pgd, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %10, i32 -2130706432, i32 8454144) #17, !srcloc !13
  %12 = zext i32 %11 to i64
  store i64 %12, ptr @secondary_data, align 8
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @swapper_pg_dir to i32), i32 -2130706432, i32 8454144) #17, !srcloc !13
  store i32 %13, ptr getelementptr inbounds (%struct.secondary_data, ptr @secondary_data, i32 0, i32 1), align 8
  store ptr %1, ptr getelementptr inbounds (%struct.secondary_data, ptr @secondary_data, i32 0, i32 3), align 8
  %14 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %14(ptr noundef nonnull @secondary_data, i32 noundef 24) #16
  %15 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_data to i32), i32 -2130706432, i32 8454144) #17, !srcloc !13
  %16 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (%struct.secondary_data, ptr @secondary_data, i32 1, i32 0, i32 0) to i32), i32 -2130706432, i32 8454144) #17, !srcloc !13
  %17 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  tail call void %17(i32 noundef %15, i32 noundef %16) #16
  br label %20

20:                                               ; preds = %19, %5
  %21 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 3), align 4
  %22 = tail call i32 %21(i32 noundef %0, ptr noundef %1) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = tail call i32 @wait_for_completion_timeout(ptr noundef nonnull @cpu_running, i32 noundef 100) #16
  %26 = lshr i32 %0, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %0, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #18
  br label %37

35:                                               ; preds = %20
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %22) #18
  br label %37

37:                                               ; preds = %35, %33, %24
  %38 = phi i32 [ 0, %24 ], [ -5, %33 ], [ %22, %35 ]
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) @secondary_data, i8 0, i32 24, i1 false)
  br label %39

39:                                               ; preds = %37, %2
  %40 = phi i32 [ %38, %37 ], [ -38, %2 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @smp_init_cpus() local_unnamed_addr #7 section ".init.text" {
  %1 = load ptr, ptr @smp_ops, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #16
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @platform_can_secondary_boot() local_unnamed_addr #8 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 3), align 4
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @platform_can_cpu_hotplug() local_unnamed_addr #8 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 4), align 4
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_can_hotplug_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 5), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 6), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call zeroext i1 %5(i32 noundef %0) #16
  br label %11

9:                                                ; preds = %4
  %10 = icmp ne i32 %0, 0
  br label %11

11:                                               ; preds = %9, %7, %1
  %12 = phi i1 [ %8, %7 ], [ %10, %9 ], [ false, %1 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cpu_disable() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = tail call i32 %4(i32 noundef %3) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %6, %0
  tail call void @remove_cpu_topology(i32 noundef %3) #16
  tail call void @set_cpu_online(i32 noundef %3, i1 noundef zeroext false) #16
  %10 = load i32, ptr @ipi_irq_base, align 4
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @ipi_teardown.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !11

15:                                               ; preds = %9
  store i1 true, ptr @ipi_teardown.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 243, i32 noundef 9, ptr noundef null) #16
  br label %16

16:                                               ; preds = %15, %9
  %17 = xor i1 %11, true
  %18 = load i32, ptr @nr_ipi, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %28

21:                                               ; preds = %21, %16
  %22 = phi i32 [ %25, %21 ], [ 0, %16 ]
  %23 = load i32, ptr @ipi_irq_base, align 4
  %24 = add i32 %23, %22
  tail call void @disable_percpu_irq(i32 noundef %24) #16
  %25 = add nuw nsw i32 %22, 1
  %26 = load i32, ptr @nr_ipi, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %21, label %28

28:                                               ; preds = %21, %16
  tail call void @irq_migrate_all_off_this_cpu() #16
  %29 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %29() #16
  %30 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #16, !srcloc !14
  %31 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %31, i32 4608) #16, !srcloc !15
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %30, i32 2097152) #16, !srcloc !16
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !18
  br label %32

32:                                               ; preds = %28, %6
  %33 = phi i32 [ 0, %28 ], [ %7, %6 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_cpu_topology(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpu_online(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_migrate_all_off_this_cpu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cpu_die(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @cpu_wait_death(i32 noundef %0, i32 noundef 5) #16
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  tail call void @clear_tasks_mm_cpumask(i32 noundef %0) #16
  %4 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 4), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 %4(i32 noundef %0) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %1
  %10 = phi ptr [ @.str.2, %1 ], [ @.str.3, %6 ]
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %10, i32 noundef %0) #18
  br label %12

12:                                               ; preds = %9, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_wait_death(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_tasks_mm_cpumask(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle_dead() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  tail call void @idle_task_exit() #16
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #16, !srcloc !19
  %4 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %4() #16
  %5 = tail call zeroext i1 @cpu_report_death() #16
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %6() #16
  %7 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 5), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  tail call void %7(i32 noundef %3) #16
  br label %10

10:                                               ; preds = %9, %0
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %3) #18
  %12 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8184
  tail call void asm sideeffect "mov\09sp, $0\0A\09mov\09fp, #0\0A\09mov\09r0, $1\0A\09b\09secondary_start_kernel", "r,r,~{r0}"(ptr %14, ptr %1) #16, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_task_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_report_death() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @secondary_start_kernel(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "mcr p15, 0, $0, c13, c0, 3", "r,~{memory}"(ptr %0) #16, !srcloc !21
  %2 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 8), align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %4, i32 -2130706432, i32 8454144) #17, !srcloc !13
  tail call void %2(i32 noundef %5, ptr noundef nonnull @init_mm) #16
  %6 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #16, !srcloc !22
  br label %10

10:                                               ; preds = %9, %1
  %11 = and i32 %6, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #16, !srcloc !23
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #16, !srcloc !14
  %16 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %16, i32 4608) #16, !srcloc !15
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %15, i32 2097152) #16, !srcloc !16
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !18
  %17 = tail call ptr @llvm.thread.pointer() #16
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11)) #16, !srcloc !24
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11), ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11)) #16, !srcloc !25
  %21 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 38
  store ptr @init_mm, ptr %21, align 8
  tail call void @_set_bit(i32 noundef %19, ptr noundef getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 1, i32 0, i32 0)) #16
  tail call void @cpu_init() #16
  %22 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 2), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  tail call void %22(i32 noundef %19) #16
  br label %25

25:                                               ; preds = %24, %14
  tail call void @notify_cpu_starting(i32 noundef %19) #16
  %26 = load i32, ptr @ipi_irq_base, align 4
  %27 = icmp eq i32 %26, 0
  %28 = load i1, ptr @ipi_setup.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32, !prof !11

31:                                               ; preds = %25
  store i1 true, ptr @ipi_setup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 719, i32 noundef 9, ptr noundef null) #16
  br label %32

32:                                               ; preds = %31, %25
  %33 = xor i1 %27, true
  %34 = load i32, ptr @nr_ipi, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %44

37:                                               ; preds = %37, %32
  %38 = phi i32 [ %41, %37 ], [ 0, %32 ]
  %39 = load i32, ptr @ipi_irq_base, align 4
  %40 = add i32 %39, %38
  tail call void @enable_percpu_irq(i32 noundef %40, i32 noundef 0) #16
  %41 = add nuw nsw i32 %38, 1
  %42 = load i32, ptr @nr_ipi, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %37, label %44

44:                                               ; preds = %37, %32
  tail call void @calibrate_delay() #16
  %45 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, ptrtoint (ptr @cpu_data to i32)
  %48 = inttoptr i32 %47 to ptr
  %49 = load i32, ptr @loops_per_jiffy, align 4
  %50 = getelementptr inbounds %struct.cpuinfo_arm, ptr %48, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #17, !srcloc !26
  %52 = getelementptr inbounds %struct.cpuinfo_arm, ptr %48, i32 0, i32 1
  store i32 %51, ptr %52, align 8
  tail call void @store_cpu_topology(i32 noundef %19) #16
  tail call void @set_cpu_online(i32 noundef %19, i1 noundef zeroext true) #16
  tail call void @check_other_bugs() #16
  tail call void @complete(ptr noundef nonnull @cpu_running) #16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !27
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #16, !srcloc !28
  tail call void asm sideeffect "cpsie a\09@ __sta", "~{memory},~{cc}"() #16, !srcloc !29
  tail call void @cpu_startup_entry(i32 noundef 151) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @notify_cpu_starting(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @calibrate_delay() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_other_bugs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_startup_entry(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @smp_cpus_done(i32 noundef %0) local_unnamed_addr #7 section ".init.text" {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  %4 = icmp ult i32 %3, %2
  br i1 %4, label %5, label %17

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %15, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %14, %5 ], [ 0, %1 ]
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @cpu_data to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.cpuinfo_arm, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %7
  %15 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_online_mask) #19
  %16 = icmp ult i32 %15, %2
  br i1 %16, label %5, label %17

17:                                               ; preds = %5, %1
  %18 = phi i32 [ 0, %1 ], [ %14, %5 ]
  %19 = load volatile i32, ptr @__num_online_cpus, align 4
  %20 = udiv i32 %18, 5000
  %21 = udiv i32 %18, 50
  %22 = urem i32 %21, 100
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %20, i32 noundef %22) #18
  tail call void @hyp_mode_check() #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @hyp_mode_check() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @smp_prepare_boot_cpu() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c13, c0, 4", "r,~{memory}"(i32 %5) #16, !srcloc !30
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @smp_prepare_cpus(i32 noundef %0) local_unnamed_addr #7 section ".init.text" {
  %2 = load i32, ptr @__cpu_possible_mask, align 4
  %3 = and i32 %2, 65535
  %4 = tail call i32 @__sw_hweight32(i32 noundef %3) #16
  tail call void @init_cpu_topology() #16
  %5 = tail call ptr @llvm.thread.pointer() #16
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @cpu_data to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr @loops_per_jiffy, align 4
  %13 = getelementptr inbounds %struct.cpuinfo_arm, ptr %11, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #17, !srcloc !26
  %15 = getelementptr inbounds %struct.cpuinfo_arm, ptr %11, i32 0, i32 1
  store i32 %14, ptr %15, align 8
  tail call void @store_cpu_topology(i32 noundef %7) #16
  %16 = tail call i32 @llvm.umin.i32(i32 %4, i32 %0)
  %17 = icmp ugt i32 %4, 1
  %18 = icmp ne i32 %16, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  tail call void @init_cpu_present(ptr noundef nonnull @__cpu_possible_mask) #16
  %21 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 1), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void %21(i32 noundef %16) #16
  br label %24

24:                                               ; preds = %23, %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cpu_topology() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cpu_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_ipi_list(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -1
  br label %4

4:                                                ; preds = %34, %2
  %5 = phi i32 [ 0, %2 ], [ %35, %34 ]
  %6 = getelementptr [8 x ptr], ptr @ipi_desc, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull @.str.14, i32 noundef %5) #16
  %10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %26, %9
  %14 = phi i32 [ %28, %26 ], [ %10, %9 ]
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.irq_desc, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = ptrtoint ptr %17 to i32
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %19, %13
  %27 = phi i32 [ %25, %19 ], [ 0, %13 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %27) #16
  %28 = tail call i32 @cpumask_next(i32 noundef %14, ptr noundef nonnull @__cpu_online_mask) #19
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %13, label %31

31:                                               ; preds = %26, %9
  %32 = getelementptr [7 x ptr], ptr @ipi_types, i32 0, i32 %5
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %33) #16
  br label %34

34:                                               ; preds = %31, %4
  %35 = add nuw nsw i32 %5, 1
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %37, label %4

37:                                               ; preds = %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_send_call_function_ipi_mask(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @smp_cross_call(ptr noundef %0, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smp_cross_call(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr [7 x ptr], ptr @ipi_types, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_raise, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 15728640
  %22 = icmp ne i32 %21, 0
  %23 = load i1, ptr @trace_ipi_raise_rcuidle.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %18
  store i1 true, ptr @trace_ipi_raise_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 36, i32 noundef 9, ptr noundef null) #16
  br label %27

27:                                               ; preds = %26, %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %28 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #16
  tail call void @rcu_irq_enter_irqson() #16
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_raise, i32 0, i32 7), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %36, %31 ], [ %29, %27 ]
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tracepoint_func, ptr %32, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void %33(ptr noundef %35, ptr noundef %0, ptr noundef %4) #16
  %36 = getelementptr %struct.tracepoint_func, ptr %32, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %27
  tail call void @rcu_irq_exit_irqson() #16
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %28) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  br label %40

40:                                               ; preds = %39, %7, %2
  %41 = getelementptr [8 x ptr], ptr @ipi_desc, i32 0, i32 %1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @__ipi_send_mask(ptr noundef %42, ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_send_wakeup_ipi_mask(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @smp_cross_call(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_send_call_function_single_ipi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 31
  %3 = add nuw nsw i32 %2, 1
  %4 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %3
  %5 = lshr i32 %0, 5
  %6 = sub nsw i32 0, %5
  %7 = getelementptr i32, ptr %4, i32 %6
  tail call fastcc void @smp_cross_call(ptr noundef %7, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_irq_work_raise() local_unnamed_addr #0 {
  %1 = load i32, ptr @smp_on_up, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @llvm.thread.pointer() #16
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 31
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %8
  %10 = lshr i32 %6, 5
  %11 = sub nsw i32 0, %10
  %12 = getelementptr i32, ptr %9, i32 %11
  tail call fastcc void @smp_cross_call(ptr noundef %12, i32 noundef 5)
  br label %13

13:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_broadcast(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @smp_cross_call(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @register_ipi_completion(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @cpu_completion to i32)
  %6 = inttoptr i32 %5 to ptr
  store ptr %0, ptr %6, align 4
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_IPI(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #13, !srcloc !12
  %6 = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  store ptr %1, ptr %7, align 4
  tail call void @irq_enter() #16
  tail call fastcc void @do_handle_IPI(i32 noundef %0) #16
  tail call void @irq_exit() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #13, !srcloc !12
  %12 = add i32 %11, ptrtoint (ptr @__irq_regs to i32)
  %13 = inttoptr i32 %12 to ptr
  store ptr %8, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_IPI(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #13, !srcloc !12
  %6 = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  store ptr %1, ptr %7, align 4
  tail call void @irq_enter() #16
  tail call fastcc void @do_handle_IPI(i32 noundef %0)
  tail call void @irq_exit() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #13, !srcloc !12
  %12 = add i32 %11, ptrtoint (ptr @__irq_regs to i32)
  %13 = inttoptr i32 %12 to ptr
  store ptr %8, ptr %13, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_enter() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_handle_IPI(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %0, 7
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = getelementptr [7 x ptr], ptr @ipi_types, i32 0, i32 %0
  %8 = load ptr, ptr %7, align 4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_entry, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = lshr i32 %4, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %4, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 15728640
  %23 = icmp ne i32 %22, 0
  %24 = load i1, ptr @trace_ipi_entry_rcuidle.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !11

27:                                               ; preds = %19
  store i1 true, ptr @trace_ipi_entry_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 69, i32 noundef 9, ptr noundef null) #16
  br label %28

28:                                               ; preds = %27, %19
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %29 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #16
  tail call void @rcu_irq_enter_irqson() #16
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_entry, i32 0, i32 7), align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %32, %28
  %33 = phi ptr [ %37, %32 ], [ %30, %28 ]
  %34 = load volatile ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tracepoint_func, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void %34(ptr noundef %36, ptr noundef %8) #16
  %37 = getelementptr %struct.tracepoint_func, ptr %33, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32

40:                                               ; preds = %32, %28
  tail call void @rcu_irq_exit_irqson() #16
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %29) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %41

41:                                               ; preds = %40, %11, %6, %1
  switch i32 %0, label %71 [
    i32 0, label %73
    i32 1, label %42
    i32 2, label %44
    i32 3, label %46
    i32 4, label %47
    i32 5, label %56
    i32 6, label %57
    i32 7, label %63
  ]

42:                                               ; preds = %41
  %43 = tail call i32 @tick_receive_broadcast() #16
  br label %73

44:                                               ; preds = %41
  %45 = load volatile i32, ptr %2, align 4
  br label %73

46:                                               ; preds = %41
  tail call void @generic_smp_call_function_single_interrupt() #16
  br label %73

47:                                               ; preds = %41
  %48 = load i32, ptr @system_state, align 4
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  tail call void @_raw_spin_lock(ptr noundef nonnull @stop_lock) #16
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %4) #18
  tail call void @dump_stack() #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %52 = load i16, ptr @stop_lock, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr @stop_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  br label %54

54:                                               ; preds = %50, %47
  tail call void @set_cpu_online(i32 noundef %4, i1 noundef zeroext false) #16
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #16, !srcloc !39
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #16, !srcloc !19
  br label %55

55:                                               ; preds = %55, %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !41
  tail call void asm sideeffect "wfe", "~{memory}"() #16, !srcloc !42
  br label %55

56:                                               ; preds = %41
  tail call void @irq_work_run() #16
  br label %73

57:                                               ; preds = %41
  %58 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, ptrtoint (ptr @cpu_completion to i32)
  %61 = inttoptr i32 %60 to ptr
  %62 = load ptr, ptr %61, align 4
  tail call void @complete(ptr noundef %62) #16
  br label %73

63:                                               ; preds = %41
  tail call void @__printk_safe_enter() #16
  %64 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %65 = inttoptr i32 %64 to ptr
  %66 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %65) #13, !srcloc !12
  %67 = add i32 %66, ptrtoint (ptr @__irq_regs to i32)
  %68 = inttoptr i32 %67 to ptr
  %69 = load ptr, ptr %68, align 4
  %70 = tail call zeroext i1 @nmi_cpu_backtrace(ptr noundef %69) #16
  tail call void @__printk_safe_exit() #16
  br label %73

71:                                               ; preds = %41
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %4, i32 noundef %0) #18
  br label %73

73:                                               ; preds = %71, %63, %57, %56, %46, %44, %42, %41
  br i1 %5, label %74, label %110

74:                                               ; preds = %73
  %75 = getelementptr [7 x ptr], ptr @ipi_types, i32 0, i32 %0
  %76 = load ptr, ptr %75, align 4
  %77 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_exit, i32 0, i32 1), align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %74
  %80 = load i32, ptr %3, align 8
  %81 = lshr i32 %80, 5
  %82 = getelementptr i32, ptr @__cpu_online_mask, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %80, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %110, label %88

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 15728640
  %92 = icmp ne i32 %91, 0
  %93 = load i1, ptr @trace_ipi_exit_rcuidle.__already_done, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %97, !prof !11

96:                                               ; preds = %88
  store i1 true, ptr @trace_ipi_exit_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 85, i32 noundef 9, ptr noundef null) #16
  br label %97

97:                                               ; preds = %96, %88
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !43
  %98 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #16
  tail call void @rcu_irq_enter_irqson() #16
  %99 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ipi_exit, i32 0, i32 7), align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %101, %97
  %102 = phi ptr [ %106, %101 ], [ %99, %97 ]
  %103 = load volatile ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.tracepoint_func, ptr %102, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  tail call void %103(ptr noundef %105, ptr noundef %76) #16
  %106 = getelementptr %struct.tracepoint_func, ptr %102, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %101

109:                                              ; preds = %101, %97
  tail call void @rcu_irq_exit_irqson() #16
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %98) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  br label %110

110:                                              ; preds = %109, %79, %74, %73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @set_smp_ipi_range(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 section ".init.text" {
  %3 = icmp slt i32 %1, 8
  br i1 %3, label %5, label %4, !prof !11

4:                                                ; preds = %2
  store i32 8, ptr @nr_ipi, align 4
  br label %7

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 730, i32 noundef 9, ptr noundef null) #16
  store i32 %1, ptr @nr_ipi, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %5, %4
  br label %8

8:                                                ; preds = %14, %7
  %9 = phi i32 [ %17, %14 ], [ 0, %7 ]
  %10 = add i32 %9, %0
  %11 = tail call i32 @__request_percpu_irq(i32 noundef %10, ptr noundef nonnull @ipi_handler, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @irq_stat) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !10

13:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 738, i32 noundef 9, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %8
  %15 = tail call ptr @irq_to_desc(i32 noundef %10) #16
  %16 = getelementptr [8 x ptr], ptr @ipi_desc, i32 0, i32 %9
  store ptr %15, ptr %16, align 4
  tail call void @irq_modify_status(i32 noundef %10, i32 noundef 0, i32 noundef 1048576) #16
  %17 = add nuw nsw i32 %9, 1
  %18 = load i32, ptr @nr_ipi, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %8, label %20

20:                                               ; preds = %14, %5
  %21 = phi i32 [ %1, %5 ], [ %18, %14 ]
  store i32 %0, ptr @ipi_irq_base, align 4
  %22 = icmp eq i32 %0, 0
  %23 = load i1, ptr @ipi_setup.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %20
  store i1 true, ptr @ipi_setup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 719, i32 noundef 9, ptr noundef null) #16
  %27 = load i32, ptr @nr_ipi, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i32 [ %27, %26 ], [ %21, %20 ]
  %30 = xor i1 %22, true
  %31 = icmp sgt i32 %29, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %40

33:                                               ; preds = %33, %28
  %34 = phi i32 [ %37, %33 ], [ 0, %28 ]
  %35 = load i32, ptr @ipi_irq_base, align 4
  %36 = add i32 %35, %34
  tail call void @enable_percpu_irq(i32 noundef %36, i32 noundef 0) #16
  %37 = add nuw nsw i32 %34, 1
  %38 = load i32, ptr @nr_ipi, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %33, label %40

40:                                               ; preds = %33, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipi_handler(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr @ipi_irq_base, align 4
  %4 = sub i32 %0, %3
  tail call fastcc void @do_handle_IPI(i32 noundef %4)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @smp_send_reschedule(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 31
  %3 = add nuw nsw i32 %2, 1
  %4 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %3
  %5 = lshr i32 %0, 5
  %6 = sub nsw i32 0, %5
  %7 = getelementptr i32, ptr %4, i32 %6
  tail call fastcc void @smp_cross_call(ptr noundef %7, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @smp_send_stop() local_unnamed_addr #0 {
  %1 = alloca %struct.cpumask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #16
  %2 = load i32, ptr @__cpu_online_mask, align 4
  store i32 %2, ptr %1, align 4
  %3 = tail call ptr @llvm.thread.pointer() #16
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  call void @_clear_bit(i32 noundef %5, ptr noundef nonnull %1) #16
  %6 = load i32, ptr %1, align 4
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  call fastcc void @smp_cross_call(ptr noundef nonnull %1, i32 noundef 4)
  br label %10

10:                                               ; preds = %9, %0
  %11 = load volatile i32, ptr @__num_online_cpus, align 4
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %21, label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ %15, %13 ], [ 1000000, %10 ]
  %15 = add nsw i32 %14, -1
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748) #16
  %17 = load volatile i32, ptr @__num_online_cpus, align 4
  %18 = icmp ult i32 %17, 2
  %19 = icmp eq i32 %15, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %13

21:                                               ; preds = %13, %10
  %22 = load volatile i32, ptr @__num_online_cpus, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #18
  br label %26

26:                                               ; preds = %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #16
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panic_smp_self_stop() local_unnamed_addr #11 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  tail call void @set_cpu_online(i32 noundef %3, i1 noundef zeroext false) #16
  br label %4

4:                                                ; preds = %4, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !45
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !46
  br label %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @setup_profiling_timer(i32 noundef %0) local_unnamed_addr #12 {
  ret i32 -22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @register_cpufreq_notifier() #7 section ".init.text" {
  %1 = tail call i32 @cpufreq_register_notifier(ptr noundef nonnull @cpufreq_notifier, i32 noundef 0) #16
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_trigger_cpumask_backtrace(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  tail call void @nmi_trigger_cpumask_backtrace(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull @raise_nmi) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nmi_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @raise_nmi(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ipi_desc, i32 0, i32 7), align 4
  %3 = tail call i32 @__ipi_send_mask(ptr noundef %2, ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ipi_raise(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = lshr i32 %12, 16
  %16 = tail call ptr @trace_print_bitmask_seq(ptr noundef %9, ptr noundef %14, i32 noundef %15) #16
  %17 = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %5, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %16, ptr noundef %18) #16
  %19 = tail call i32 @trace_handle_return(ptr noundef %10) #16
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_bitmask_seq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ipi_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_ipi_handler, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %11) #16
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #16
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
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @store_cpu_topology(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_receive_broadcast() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_smp_call_function_single_interrupt() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_run() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nmi_cpu_backtrace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipi_send_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpufreq_callback(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = tail call i32 @_find_first_bit_le(ptr noundef %4, i32 noundef 16) #16
  %6 = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %108

10:                                               ; preds = %3
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @l_p_j_ref to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %10
  %18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %4) #19
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 1
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %18, %21 ], [ %37, %23 ]
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, ptrtoint (ptr @cpu_data to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.cpuinfo_arm, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %26, ptrtoint (ptr @l_p_j_ref to i32)
  %32 = inttoptr i32 %31 to ptr
  store i32 %30, ptr %32, align 4
  %33 = load i32, ptr %22, align 4
  %34 = load i32, ptr %25, align 4
  %35 = add i32 %34, ptrtoint (ptr @l_p_j_ref_freq to i32)
  %36 = inttoptr i32 %35 to ptr
  store i32 %33, ptr %36, align 4
  %37 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef %4) #19
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %23, label %40

40:                                               ; preds = %23, %17
  %41 = load i32, ptr @global_l_p_j_ref, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, ptr @loops_per_jiffy, align 4
  store i32 %44, ptr @global_l_p_j_ref, align 4
  %45 = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr @global_l_p_j_ref_freq, align 4
  br label %47

47:                                               ; preds = %43, %40, %10
  switch i32 %1, label %108 [
    i32 0, label %48
    i32 1, label %54
  ]

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %60, label %108

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %56, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %54, %48
  %61 = phi i32 [ %58, %54 ], [ %52, %48 ]
  %62 = load i32, ptr @global_l_p_j_ref, align 4
  %63 = load i32, ptr @global_l_p_j_ref_freq, align 4
  %64 = zext i32 %62 to i64
  %65 = zext i32 %61 to i64
  %66 = mul nuw i64 %65, %64
  %67 = icmp ult i64 %66, 4294967296
  br i1 %67, label %68, label %71, !prof !10

68:                                               ; preds = %60
  %69 = trunc i64 %66 to i32
  %70 = udiv i32 %69, %63
  br label %75

71:                                               ; preds = %60
  %72 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %63, i64 %66) #17, !srcloc !47
  %73 = extractvalue { i64, i64 } %72, 1
  %74 = trunc i64 %73 to i32
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i32 [ %70, %68 ], [ %74, %71 ]
  store i32 %76, ptr @loops_per_jiffy, align 4
  %77 = load i32, ptr %11, align 4
  %78 = add i32 %77, ptrtoint (ptr @l_p_j_ref to i32)
  %79 = inttoptr i32 %78 to ptr
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %77, ptrtoint (ptr @l_p_j_ref_freq to i32)
  %82 = inttoptr i32 %81 to ptr
  %83 = load i32, ptr %82, align 4
  %84 = zext i32 %80 to i64
  %85 = mul nuw i64 %84, %65
  %86 = icmp ult i64 %85, 4294967296
  br i1 %86, label %87, label %90, !prof !10

87:                                               ; preds = %75
  %88 = trunc i64 %85 to i32
  %89 = udiv i32 %88, %83
  br label %94

90:                                               ; preds = %75
  %91 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %83, i64 %85) #17, !srcloc !47
  %92 = extractvalue { i64, i64 } %91, 1
  %93 = trunc i64 %92 to i32
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i32 [ %89, %87 ], [ %93, %90 ]
  %96 = load i32, ptr @nr_cpu_ids, align 4
  %97 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %4) #19
  %98 = icmp ult i32 %97, %96
  br i1 %98, label %99, label %108

99:                                               ; preds = %99, %94
  %100 = phi i32 [ %106, %99 ], [ %97, %94 ]
  %101 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %100
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, ptrtoint (ptr @cpu_data to i32)
  %104 = inttoptr i32 %103 to ptr
  %105 = getelementptr inbounds %struct.cpuinfo_arm, ptr %104, i32 0, i32 2
  store i32 %95, ptr %105, align 4
  %106 = tail call i32 @cpumask_next(i32 noundef %100, ptr noundef %4) #19
  %107 = icmp ult i32 %106, %96
  br i1 %107, label %99, label %108

108:                                              ; preds = %99, %94, %54, %48, %47, %3
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }

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
!12 = !{i64 483646}
!13 = !{i64 2148799863, i64 2148799886, i64 2148799918, i64 2148799950, i64 2148799988, i64 2148800018}
!14 = !{i64 2151612873}
!15 = !{i64 2151606440, i64 2151606453}
!16 = !{i64 2151613145, i64 2151613158}
!17 = !{i64 2151615906}
!18 = !{i64 2151615965}
!19 = !{i64 465381}
!20 = !{i64 8865, i64 8882, i64 8899, i64 8916}
!21 = !{i64 1366791}
!22 = !{i64 4117234}
!23 = !{i64 4117461}
!24 = !{i64 559268, i64 2148049239, i64 2148049265, i64 2148049312, i64 2148049334, i64 2148049362, i64 2148049382}
!25 = !{i64 2148060654, i64 2148060680, i64 2148060709, i64 2148060743, i64 2148060774, i64 2148060797}
!26 = !{i64 2153209579}
!27 = !{i64 465191}
!28 = !{i64 2154334917}
!29 = !{i64 2154334965}
!30 = !{i64 483350}
!31 = !{i64 2153332051}
!32 = !{i64 2153332205}
!33 = !{i64 2153347314}
!34 = !{i64 2153347456}
!35 = !{i64 2148943793}
!36 = !{i64 2148939617}
!37 = !{i64 2148939692, i64 2148939719, i64 2148939766, i64 2148939788, i64 2148939816, i64 2148939836}
!38 = !{i64 2148966796}
!39 = !{i64 2154339043}
!40 = !{i64 2154339385}
!41 = !{i64 2154339227}
!42 = !{i64 2154339444}
!43 = !{i64 2153362484}
!44 = !{i64 2153362624}
!45 = !{i64 2154348188}
!46 = !{i64 2154348030}
!47 = !{i64 2147907670, i64 2147907950, i64 2147908284, i64 2147908618}
